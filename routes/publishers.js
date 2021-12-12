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
  const id = '5';
  req.app.locals.client.query('INSERT INTO publisher(id, name, email, phone, address, bank_account) VALUES ($1, $2, $3, $4, $5, $6);', 
    [id, req.body.name, req.body.email, req.body.phone, req.body.address, req.body.bankAccount], (error, results) => {
    if (error) {
      console.log(err);
      res.status(500).json({success: false, data: err});
    }
    res.status(201).send(`Publisher added with ID: ${results.insertId}`)
  })
})

module.exports = router;