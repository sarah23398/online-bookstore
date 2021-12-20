var express = require('express');
const { response } = require('../app');
var router = express.Router();

// Creates the /author/add page
router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-author');
})

// Allows the owner to add a new author to the database
router.post('/', function(req, res, next) {
  // Ensures that customers can't access this functionality
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  // Adds the book information
  req.app.locals.client.query('INSERT INTO author (name, email, bio, website) VALUES ($1, $2, $3, $4);',
    [req.body.name, req.body.email, req.body.bio, req.body.website])
    .then(() => {
      res.status(201).send();
    })
    .catch((error) => {
      console.log(error);
      return res.status(500).json({success: false, data: error});
    });
})

module.exports = router;