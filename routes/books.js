var express = require('express');
var router = express.Router();
var pgf = require('pg-format');

// Calculates the average value within the passed in array
function average(array) {
  sum = 0;
  for (a in array) {
    sum += a;
  }
  return sum / array.length;
}

// Generates search results for the customer
router.get('/', function(req, res, next) {
  query = '';
  extra = '';
  filters = [];
  if(Object.keys(req.query).length > 0){
    // If they were searching for the author
    if(req.query.author){
      extra += "INNER JOIN written_by on book.isbn = written_by.isbn INNER JOIN author on written_by.author_id = author.id WHERE author.name ilike '%' || $1 || '%' "
      filters.push(req.query.author);
    }
    // Or the title
    if(req.query.title){
      if(!extra){
        extra += "WHERE book.TITLE ILIKE '%' || $1 || '%' "
      }
      else{
        extra += "AND book.TITLE ILIKE '%' || $2 || '%' "
      }
      filters.push(req.query.title);
    }
    // Or the ISBN
    if(req.query.ISBN){
      if(!extra){
        extra += "WHERE book.ISBN ILIKE '%' || $1 || '%' "
      }
      else{
        extra += `AND book.ISBN ILIKE '%' || $${filters.length+1} || '%' `;
      }
      filters.push(req.query.ISBN);
    }
    // Or the genre
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
    // Or the publisher
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
  // Generates the query for the search results
  query = `SELECT DISTINCT book.* from book ${extra};`;
  req.app.locals.client.query(query, filters, (err, result)=>{
    // Ensures that only the customer can access recommended books
    if (req.session.loggedInType == 'customer') {
      // Generates the query to determine books to recommend
      // There can only be a maximum of 4 recommended books
      req.app.locals.client.query(`SELECT DISTINCT book.* from book
      INNER JOIN "contains" ON book.isbn = "contains".isbn
      INNER JOIN genre ON "contains".genre_id = genre.id
      WHERE genre.name IN
      (SELECT DISTINCT genre.name from rating
      INNER JOIN book ON rating.isbn = book.isbn
      INNER JOIN "contains" ON book.isbn = "contains".isbn
      INNER JOIN genre on "contains".genre_id = genre.id
      WHERE rating > 3
      AND customer_id = $1)
      AND book.isbn NOT IN
      (SELECT isbn FROM rating
      WHERE customer_id = $1) LIMIT 4;`, [req.session.userId], (err, recommended) => {
        res.render('books', { title: 'Books', books: result.rows, recommended: recommended.rows, search: !!extra });
      });
    } else {
        // If it's the owner who's logged in instead, do not include recommended books
        res.render('books', { title: 'Books', books: result.rows, search: !!extra });
    }
  })
});

// Creates the /books/add page
router.get('/add', function(req, res, next){
  // Ensures that this is off limits for customers
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  // Fetches genre(s), publisher(s), and author(s) information for the dropdown lists in the add book form
  req.app.locals.client.query('SELECT * from genre;', (err, genres) => {
    req.app.locals.client.query('SELECT * from publisher;', (error, publishers) => {
      req.app.locals.client.query('SELECT * from author;', (error, authors) => {
        res.render('add-book', {genres: genres.rows, publishers: publishers.rows, authors: authors.rows});
      })
    })
  })
})

// Generates the /book/:isbn page
router.get('/:isbn', function(req, res, next){
  // Fetches all book information and the publisher name
  req.app.locals.client.query(`SELECT book.*, publisher.name as "publisher" from book inner join publisher on book.publisher_id = publisher.id where isbn = $1`, [req.params.isbn], (err, result)=>{
    // Creates arrays to contain certain book information (there can be more than one author, for example)
    let book = {};
    Object.assign(book, result.rows[0]);
    book["authors"] = [];
    book["genres"] = [];
    book["ratings"] = [];
    book["ratingCounts"] = [0, 0, 0, 0, 0];
    // Fetches authors
    req.app.locals.client.query(`SELECT * from written_by inner join author on written_by.author_id = author.id
    where written_by.isbn = $1`, [req.params.isbn], (error, authors)=>{
      // Adds each author to book["authors"]
      for (let a of authors.rows){
        book.authors.push(a);
      }
      // Fetches book genres
      req.app.locals.client.query(`SELECT * from "contains" inner join genre on "contains".genre_id = genre.id
        where "contains".isbn = $1`, [req.params.isbn], (error, genres)=>{
        for (let g of genres.rows){
          book.genres.push(g);
        }
        // Fetches book ratings
        req.app.locals.client.query(`SELECT rating.*, customer.name as "customer" from rating
        INNER JOIN customer on rating.customer_id = customer.id
        WHERE isbn = $1 ORDER BY rating.review_date desc`, [req.params.isbn], (error, ratings)=> {
          sum = 0;
          for (let r of ratings.rows) {
            book.ratings.push(r);
            // Calculates sum of all ratings
            sum += Number(r.rating);
            // Calculates the number of ratings per kind of rating (1 to 5 stars)
            book.ratingCounts[r.rating - 1] += 1;
          }
          book.countRatings = book.ratings.length;
          book.avgRating = (sum / book.countRatings).toFixed(2);
          res.render('book', {book: book});
        })
      })
    })
  })
})

// Allows the owner to add a new book to the database
router.post('/', function(req, res, next) {
  // Ensures that customers can't access this functionality
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  // Adds the book information which only contains a maximum of one value
  req.app.locals.client.query('INSERT INTO book (isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10);',
    [req.body.isbn, req.body.publisher, req.body.title, req.body.publishDate, req.body.edition, req.body.description, req.body.price, req.body.printLength, req.body.stock, req.body.publisherFee])
    .then(() => {
      let authors = [];
      for(let a of req.body.authors){
        authors.push([a, req.body.isbn]);
      }
      // Adds author(s)
      req.app.locals.client.query(pgf('INSERT INTO written_by (author_id, isbn) VALUES %L', authors),
        [])
    })
    .then(() => {
      let gen = [];
      for(let g of req.body.genres){
        gen.push([g, req.body.isbn]);
      }
      // Adds genre(s)
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

// Allows the customer to add a rating/review to the database
router.post('/:isbn/ratings', function(req, res, next){
  // Runs an SQl query to add the rating
  req.app.locals.client.query('INSERT INTO rating(customer_id, isbn, rating, review, review_date) VALUES ($1, $2, $3, $4, NOW());',
  [req.session.userId, req.params.isbn, req.body.rating, req.body.review])
  .then(() => {
    res.status(201).send();
  })
  .catch((error) => {
    console.log(error);
    return res.status(500).json({success: false, data: error});
  });
})

// Allows owner to delete a book from the database
router.delete('/:isbn', function(req, res, next) {
  // Ensures that only the owner can access this functionality
  if(req.session.loggedInType != 'owner'){
    return res.status(403).send('Sorry buddy, this area is off limits...');
  }
  // Runs an SQL query to delete the book
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