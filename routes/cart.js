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
      req.app.locals.client.query('SELECT credit_card, address from customer where id=$1;', [req.session.userId], (err, users)=>{
        if(err){
          console.log(err);
          return res.status(500).send();
        }
        res.status(200).render('cart', { books: result.rows, user:users.rows[0] });
      })
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

router.delete('/:isbn', function(req, res, next){
  if(req.session.cart && req.session.cart[req.params.isbn])
    delete req.session.cart[req.params.isbn];
  res.status(204).send();
})

module.exports = router;
