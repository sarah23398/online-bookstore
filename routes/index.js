var express = require('express');
var router = express.Router();

// Gets the home page
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Nook' });
});

module.exports = router;
