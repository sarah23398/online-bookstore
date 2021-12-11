var express = require('express');
var router = express.Router();

/* GET books page. */
router.get('/', function(req, res, next) {
  query = '';
  if(req.query){
    query = 'SELECT * from book;'
  }
    req.app.locals.client.query(query, (err, result)=>{
      res.render('books', { title: 'Books', books: result.rows });
    })
  });

  router.get('/add', function(req, res, next){
    req.app.locals.client.query('SELECT * from genre;', (err, genres) => {
      req.app.locals.client.query('SELECT * from publisher;', (error, publishers) => {
        console.log('hello');
        res.render('add-book', {genres: genres.rows, publishers: publishers.rows});
      })
    })
  })

router.get('/:id', function(req, res, next){
  let id = req.params.id;
  res.render('book');
})

module.exports = router;