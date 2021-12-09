var express = require('express');
var router = express.Router();

/* GET reports page. */
router.get('/', function(req, res, next) {
  res.render('reports', { title: 'Finance Reports' });
});

router.get('/:id', function(req, res, next){
  let id = req.params.id;
  res.render('report');
})

module.exports = router;