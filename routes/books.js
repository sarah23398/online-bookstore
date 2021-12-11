var express = require('express');
var router = express.Router();

/* GET books page. */
router.get('/', function(req, res, next) {
  if(req.query){
    // do stuff here with your query variables, e.g. to access title you do "req.query.title"
  }
    res.render('books', { title: 'Books' });
  });

router.get('/add', function(req, res, next){
  req.app.locals.client.query('SELECT * from genre; ', (err, result) => {  
    console.log(result);
    res.render('add-book', {genres: result.rows});
  })
})

router.get('/:id', function(req, res, next){
  let id = req.params.id;
  res.render('book');
})

module.exports = router;