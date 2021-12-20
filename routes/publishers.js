var express = require('express');
var router = express.Router();

// Get the /publishers/add page
router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-publisher');
})

// Allows the owner to create a new publisher
router.post('/', function(req, res, next) {
  // Runs an SQL query to create a new publisher in the database
  req.app.locals.client.query('INSERT INTO publisher(name, email, phone, address, bank_account) VALUES ($1, $2, $3, $4, $5);',
    [req.body.name, req.body.email, req.body.phone, req.body.address, req.body.bankAccount])
    .then(() => {
      res.status(201).send();
    })
    .catch((error) => {
      console.log(error);
      return res.status(500).json({success: false, data: error});
    });
})

module.exports = router;