var express = require('express');
var router = express.Router();

/* GET publishers page. */
router.get('/', function(req, res, next) {
  res.render('publishers', { title: 'Publishers' });
});

module.exports = router;