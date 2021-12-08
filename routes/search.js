var express = require('express');
var router = express.Router();

/* GET search page. */
router.get('/', function(req, res, next) {
  res.render('search', { title: 'Search Books' });
});

module.exports = router;