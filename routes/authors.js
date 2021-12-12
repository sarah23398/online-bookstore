var express = require('express');
const { response } = require('../app');
var router = express.Router();

router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-author');
})

router.post('/add', function(req, res, next) {
  const id = '6';
  req.app.locals.client.query('INSERT INTO author(id, name, email, bio, website) VALUES ($1, $2, $3, $4, $5);', 
    [id, req.body.name, req.body.email, req.body.bio, req.body.website], (error, results) => {
    if (error) {
      console.log(error);
      res.status(500).json({success: false, data: error});
    }
    res.status(201).send(`Author added with ID: ${results.insertId}`)
  })
})

module.exports = router;