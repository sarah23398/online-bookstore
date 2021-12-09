var express = require('express');
var router = express.Router();

/* GET orders page. */
router.get('/', function(req, res, next) {
  res.render('orders', { title: 'Orders' });
});

router.get('/:id', function(req, res, next) {
  let id = req.params.id;
  res.render('order');
});

module.exports = router;
