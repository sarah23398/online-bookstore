var express = require('express');
var pgf = require('pg-format');
var router = express.Router();

// Gets the /orders page
router.get('/', function(req, res, next) {
  // Runs an SQL query to select all orders from the logged in customer
  req.app.locals.client.query('SELECT * from "order" where customer_id = $1 order by order_date desc;', [parseInt(req.session.userId)], (err, result)=>{
    console.log(result);
    res.render('orders', { orders: result.rows });
  })
});

// Add a customer's order to the database upon checking out
router.post('/', function(req, res, next){
  let ord = new Date();
  // Create a new order in SQL and populate it
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
        // Create a new finance in SQL and populate it (order ID, ISBN, quantity)
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
              // Create a new shipment in SQL and populate it (shipping information)
              req.app.locals.client.query(`INSERT INTO public.shipment(
                shipment_date, shipping_status, estimated_arrival, current_address, order_id)
                VALUES ($1, $2, $3, $4, $5);`, [sd, 'ORDERED', eta, 'Nook Warehouse, 123 Nook Rd. Ottawa, ON. K2P6U8', result.rows[0].id], (err, ship)=>{
                  if(err){
                    console.log(err);
                    res.status(500);
                  }
                  else{
                    delete req.session.cart;
                    res.status(201).send(`${result.rows[0].id}`);
                  }
                })
            }
          })
      }

    });
})

// Get the /orders/:id page
router.get('/:id', function(req, res, next) {
  // Run an SQL query to fetch all order and shipment information
  req.app.locals.client.query('SELECT "order".*, shipment.* from "order" inner join shipment on shipment.order_id = "order".id where "order".id = $1;', [req.params.id], (err, result)=>{
    // Creates arrays to contain certain order information that contain at least one value
    let order = {}
    if(result.rows.length == 0){
      return res.status(404).send('That order cannot be found!');
    }
    Object.assign(order, result.rows[0]);
    console.log(order);
    order["quantities"] = [];
    order["books"] = [];
    order["prices"] = [];
    order["isbn"] = [];
    // Run an SQL query to fetch order quantities, book titles, book prices, and book ISBNs
    req.app.locals.client.query('SELECT finances.quantity, book.title, book.price, book.isbn from "order" inner join finances on finances.order_id = "order".id inner join book on finances.isbn = book.isbn where "order".id = $1;', [req.params.id], (err, quantities)=>{
      for (let quantity of quantities.rows){
        order.quantities.push(quantity.quantity);
        order.books.push(quantity.title);
        order.prices.push(quantity.price);
        order.isbn.push(quantity.isbn);
      }
      res.render('order', {title: 'Order', order: order });
    })
  })
});

router.get('/track/:id', function(req, res, next) {
  req.app.locals.client.query('SELECT EXISTS(SELECT 1 FROM "order" WHERE id = $1 AND customer_id= $2);', [req.params.id, req.session.userId], (err, result) => {
    if (result.rows[0].exists) {
      res.status(200).send();
    } else {
      res.status(404).send();
    }
  })
})

module.exports = router;
