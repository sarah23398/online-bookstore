var express = require('express');
var router = express.Router();
var pgf = require('pg-format');

function average(array) {
  sum = 0;
  for (a in array) {
    sum += a;
  }
  return sum / array.length;
}

/* GET books page. */
router.get('/', function(req, res, next) {
  query = '';
  extra = '';
  filters = [];
  if(Object.keys(req.query).length > 0){
    if(req.query.author){
      extra += "INNER JOIN written_by on book.isbn = written_by.isbn INNER JOIN author on written_by.author_id = author.id WHERE author.name ilike '%' || $1 || '%' "
      filters.push(req.query.author);
    }
    if(req.query.title){
      if(!extra){
        extra += "WHERE book.TITLE ILIKE '%' || $1 || '%' "
      }
      else{
        extra += "AND book.TITLE ILIKE '%' || $2 || '%' "
      }
      filters.push(req.query.title);
    }
    if(req.query.ISBN){
      if(!extra){
        extra += "WHERE book.ISBN ILIKE '%' || $1 || '%' "
      }
      else{
        extra += `AND book.ISBN ILIKE '%' || $${filters.length+1} || '%' `;
      }
      filters.push(req.query.ISBN);
    }
    if(req.query.genre){
      filters.push(req.query.genre);
      extra = `INNER JOIN "contains" ON book.ISBN = "contains".ISBN ${extra}`;
      if(filters.length == 1){
        extra += ' WHERE ';
      }
      else{
        extra += ' AND ';
      }
      extra += ` "contains".genre_id = $${filters.length} `
      
    }
    if(req.query.publisher){
      filters.push(req.query.publisher);
      extra = `INNER JOIN publisher ON book.publisher_id = publisher.id ${extra}`;
      if(filters.length == 1){
        extra += ' WHERE ';
      }
      else{
        extra += ' AND ';
      }
      extra += ` publisher.name ILIKE '%' || $${filters.length} || '%' `
      
    }

  }
    query = `SELECT DISTINCT book.* from book ${extra};`;
    console.log(query)
    console.log(filters)
    req.app.locals.client.query(query, filters, (err, result)=>{
      res.render('books', { title: 'Books', books: result.rows, search: !!extra });
    })
  });

  router.get('/add', function(req, res, next){
    if(req.session.loggedInType != 'owner'){
      return res.status(403).send('Sorry buddy, this area is off limits...');
    }
    req.app.locals.client.query('SELECT * from genre;', (err, genres) => {
      req.app.locals.client.query('SELECT * from publisher;', (error, publishers) => {
        req.app.locals.client.query('SELECT * from author;', (error, authors) => {
          res.render('add-book', {genres: genres.rows, publishers: publishers.rows, authors: authors.rows});
        })
      })
    })
  })

router.get('/:isbn', function(req, res, next){
  req.app.locals.client.query(`SELECT book.*, publisher.name as "publisher" from book inner join publisher on book.publisher_id = publisher.id where isbn = $1`, [req.params.isbn], (err, result)=>{
    let book = {};
    Object.assign(book, result.rows[0]);
    console.log(book)
    book["authors"] = [];
    book["genres"] = [];
    book["ratings"] = [];
    req.app.locals.client.query(`SELECT * from written_by inner join author on written_by.author_id = author.id
    where written_by.isbn = $1`, [req.params.isbn], (error, authors)=>{
      for (let a of authors.rows){
        book.authors.push(a);
      }
      req.app.locals.client.query(`SELECT * from "contains" inner join genre on "contains".genre_id = genre.id
        where "contains".isbn = $1`, [req.params.isbn], (error, genres)=>{
        for (let g of genres.rows){
          book.genres.push(g);
        }
        req.app.locals.client.query(`SELECT rating, review, review_date from rating
        WHERE isbn = $1`, [req.params.isbn], (error, ratings)=> {
          for (let r of ratings.rows) {
            book.ratings.push(r);
          }
          book.countRatings = book["ratings"].length;
          book.avgRating = average(book["ratings"]);
          res.render('book', {book: book});
        })
      })
    })
  })
})

router.post('/', function(req, res, next) {
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  req.app.locals.client.query('INSERT INTO book (isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10);', 
    [req.body.isbn, req.body.publisher, req.body.title, req.body.publishDate, req.body.edition, req.body.description, req.body.price, req.body.printLength, req.body.stock, req.body.publisherFee])
    .then(() => {
      let authors = [];
      for(let a of req.body.authors){
        authors.push([a, req.body.isbn]);
      }
      req.app.locals.client.query(pgf('INSERT INTO written_by (author_id, isbn) VALUES %L', authors), 
        [])
    })
    .then(() => {
      let gen = [];
      for(let g of req.body.genres){
        gen.push([g, req.body.isbn]);
      }
      req.app.locals.client.query(pgf('INSERT INTO "contains" (genre_id, isbn) VALUES %L', gen), 
        [])
    })
    .then(() => {
      res.status(201).send();
    })
    .catch((error) => {
      console.log(error);
      return res.status(500).json({success: false, data: error});
    });
});

router.post('/:isbn/ratings', function(req, res, next){
  req.app.locals.client.query('INSERT INTO rating(customer_id, isbn, rating, review) VALUES ($1, $2, $3, $4);', 
  [req.session.userId, req.params.isbn, req.body.rating, req.body.review])
  .then(() => {
    res.status(201).send();
  })
  .catch((error) => {
    console.log(error);
    return res.status(500).json({success: false, data: error});
  });
})
    

router.delete('/:isbn', function(req, res, next) {
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  console.log(req.params);
  req.app.locals.client.query('DELETE FROM book WHERE isbn = $1;', [req.params.isbn])
    .then(() => {
      res.status(204).send();
    })
    .catch((error) => {
      console.error(error.stack);
      res.status(500).json({success: false, data: error}).send();
    });
})

module.exports = router;