var express = require('express');
const pgf = require('pg-format');
var router = express.Router();

/* GET orders page. */
router.get('/', function(req, res, next) {
  req.app.locals.client.query('SELECT * from "order" where customer_id = $1;', [parseInt(req.session.userId)], (err, result)=>{
    console.log(result);
    res.render('orders', { title: 'Orders', orders: result.rows });
  })
});

router.post('/', function(req, res, next){
  let ord = new Date();
  req.app.locals.client.query(`INSERT INTO public."order"(
    customer_id, order_date, credit_card, billing_address, destination, status)
    VALUES ($1, $2, $3, $4, $5, $6) RETURNING id; `, [req.session.userId, ord, req.body.credit_card, req.body.billing_address, req.body.destination, 'PROCESSED'], (err, result)=>{
      if(err){
        console.log(err);
        return res.status(500).send();
      }
      else{
        let vals = [];
        console.log(req.body);
        for(let i in req.session.cart){
          vals.push([result.rows[0].id, i, req.session.cart[i]]);
        }
        req.app.locals.client.query(pgf(`INSERT INTO public.finances(
          order_id, isbn, quantity)
          VALUES %L`, vals), [], (err, fin)=>{
            if(err){
              console.log(err);
              return res.status(500).send();
            }
            else{
              let eta = new Date();
              let sd = new Date();
              eta.setDate(ord.getDate() + 4);
              sd.setDate(ord.getDate() + 1);
              req.app.locals.client.query(`INSERT INTO public.shipment(
                shipment_date, shipping_status, estimated_arrival, current_address, order_id)
                VALUES ($1, $2, $3, $4, $5);`, [sd, 'ORDERED', eta, 'Nook Warehouse, 123 Nook Rd. Ottawa, ON. K2P6U8', result.rows[0].id], (err, ship)=>{
                  if(err){
                    console.log(err);
                    res.status(500);
                  }
                  else{
                    res.status(201).send(`${result.rows[0].id}`);
                  }
                })
            }
          })
      }

    });
})

router.get('/:id', function(req, res, next) {
  req.app.locals.client.query('SELECT "order".*, shipment.* from "order" inner join shipment on shipment.order_id = "order".id where "order".id = $1;', [req.params.id], (err, result)=>{
    let order = {}
    if(result.rows.length == 0){
      return res.status(404).send('That order cannot be found!');
    }
    Object.assign(order, result.rows[0]);
    console.log(order);
    order["quantities"] = [];
    order["books"] = [];
    order["prices"] = [];
    req.app.locals.client.query('SELECT finances.quantity, book.title, book.price from "order" inner join finances on finances.order_id = "order".id inner join book on finances.isbn = book.isbn where "order".id = $1;', [req.params.id], (err, quantities)=>{
      for (let quantity of quantities.rows){
        order.quantities.push(quantity.quantity);
        order.books.push(quantity.title);
        order.prices.push(quantity.price);
      }
      res.render('order', {title: 'Order', order: order });
    })
  })
});

router.get('/track/:id', function(req, res, next) {
  req.app.locals.client.query('SELECT EXISTS(SELECT 1 FROM "order" WHERE id = $1);', [req.params.id], (err, result) => {
    if (result.rows[0].exists) {
      res.status(200).send();
    } else {
      res.status(404).send();
    }
  })
})

module.exports = router;
