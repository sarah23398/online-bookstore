var express = require('express');
var router = express.Router();

/* GET publishers page. */
router.get('/', function(req, res, next) {
  res.render('publishers', { title: 'Publishers' });
});

router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-publisher');
})

router.post('/add', function(req, res, next) {
  req.app.locals.client.query('INSERT INTO publisher(name, email, phone, address, bank_account) VALUES ($1, $2, $3, $4, $5);', 
    [req.body.name, req.body.email, req.body.phone, req.body.address, req.body.bankAccount], (error) => {
      if (error) {
        throw error;
      }
      res.status(201).send();
    });
})

module.exports = router;