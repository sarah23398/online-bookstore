var express = require('express');
var router = express.Router();

router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-author');
})

module.exports = router;