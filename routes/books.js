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
        req.app.locals.client.query('SELECT * from author;', (error, authors) => {
          console.log('hello');
          res.render('add-book', {genres: genres.rows, publishers: publishers.rows, authors: authors.rows});
        })
      })
    })
  })

router.get('/:isbn', function(req, res, next){
  req.app.locals.client.query('SELECT * from book where isbn = $1', [req.params.isbn], (err, result)=>{
    console.log(result.rows);
    res.render('book');
  })  
})

module.exports = router;