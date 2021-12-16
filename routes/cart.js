var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  if(req.session.cart)
    req.app.locals.client.query('SELECT isbn, title, price from book where isbn = ANY($1);', [Object.keys(req.session.cart)], (err, result)=>{
      if(err){
        console.log(err);
        return res.status(500).send();
      }
      res.render('cart', { books: result.rows });
    })
  else
    res.render('cart')
});

router.post('/', function(req, res, next){
  if(!req.session.cart)
    req.session.cart = {};
  req.session.cart[req.body.isbn] = req.body.quantity;
  res.status(200).send();
})

module.exports = router;
