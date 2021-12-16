var express = require('express');
var router = express.Router();

/* GET orders page. */
router.get('/', function(req, res, next) {
  req.app.locals.client.query('SELECT * from "order" where customer_id = $1;', [parseInt(req.session.userId)], (err, result)=>{
    console.log(result);
    res.render('orders', { title: 'Orders', orders: result.rows });
  })
});

router.get('/:id', function(req, res, next) {
  req.app.locals.client.query('SELECT "order".*, shipment.tracking_no from "order" inner join shipment on shipment.order_id = "order".id where "order".id = $1;', [req.params.id], (err, result)=>{
    let order = {}
    Object.assign(order, result.rows[0]);
    console.log(order);
    order["quantities"] = [];
    order["books"] = [];
    order["prices"] = [];
    req.app.locals.client.query('SELECT finances.quantity, book.title, book.price from "order" inner join finances on finances.order_id = "order".id inner join book on finances.isbn = book.isbn where "order".id = 2;', (err, quantities)=>{
      for (let quantity of quantities.rows){
        order.quantities.push(quantity.quantity);
        order.books.push(quantity.title);
        order.prices.push(quantity.price);
      }
      res.render('order', {title: 'Order', order: order });
    })
  })
});

module.exports = router;
