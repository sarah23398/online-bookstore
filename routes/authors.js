var express = require('express');
const { response } = require('../app');
var router = express.Router();

router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-author');
})

router.post('/add', function(req, res, next) {
  req.app.locals.client.query('INSERT INTO author (name, email, bio, website) VALUES ($1, $2, $3, $4);', 
    [req.body.name, req.body.email, req.body.bio, req.body.website], (error) => {
      if (error){
        throw error;
      }
      res.status(201).send();
    });
})

module.exports = router;