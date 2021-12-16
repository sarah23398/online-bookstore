var express = require('express');
var router = express.Router();

/* GET reports page. */
router.get('/', function(req, res, next) {
  res.render('reports', { title: 'Finance Reports' });
});

router.get('/author', function(req, res, next){
  req.app.locals.client.query(`SELECT author_id, SUM(price*quantity)
  FROM written_by
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  WHERE book.ISBN = written_by.ISBN
  GROUP BY author_id`, [], (err, result)=>{
    let report = [];
    for (let author of result.rows){
      report.push([author.author_id, `$${author.sum}`])
    }
    console.log(report)
    res.render('report', {title: 'Report', report: report, report_title: 'Sales per Author Report', headers: ['Author', 'Sales'] })
  })
});

router.get('/expenditures', function(req, res, next){
  req.app.locals.client.query(`SELECT author_id, SUM(price*quantity)
  FROM written_by
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  WHERE book.ISBN = written_by.ISBN
  GROUP BY author_id`, [], (err, result)=>{
    let report = [];
    for (let author of result.rows){
      report.push([author.author_id, `$${author.sum}`])
    }
    console.log(report)
    res.render('report', {title: 'Report', report: report, report_title: 'Sales per Author Report', headers: ['Author', 'Sales'] })
  })
});

router.get('/genre', function(req, res, next){
  req.app.locals.client.query(`SELECT author_id, SUM(price*quantity)
  FROM written_by
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  WHERE book.ISBN = written_by.ISBN
  GROUP BY author_id`, [], (err, result)=>{
    let report = [];
    for (let author of result.rows){
      report.push([author.author_id, `$${author.sum}`])
    }
    console.log(report)
    res.render('report', {title: 'Report', report: report, report_title: 'Sales per Author Report', headers: ['Author', 'Sales'] })
  })
});

router.get('/genre', function(req, res, next){
  req.app.locals.client.query(`SELECT genre.name, SUM(book.price*finances.quantity)
  FROM genre
  INNER JOIN "contains" ON "contains".genre_id = genre.id
  INNER JOIN book on "contains".ISBN = book.ISBN
  INNER JOIN finances ON finances.ISBN = book.ISBN
  GROUP BY genre.name`, [], (err, result)=>{
    let report = [];

    for (let genre of result.rows){
      report.push([genre.name, `$${genre.sum}`])
    }
    console.log(report)
    res.render('report', {title: 'Report', report: report, report_title: 'Sales per Genre Report', headers: ['Genre', 'Sales'] })
  })
});

router.get('/expenditure', function(req, res, next){
  req.app.locals.client.query(`SELECT genre.name, SUM(book.price*finances.quantity)
  FROM genre
  INNER JOIN "contains" ON "contains".genre_id = genre.id
  INNER JOIN book on "contains".ISBN = book.ISBN
  INNER JOIN finances ON finances.ISBN = book.ISBN
  GROUP BY genre.name`, [], (err, result)=>{
    let report = [];

    for (let expenditure of result.rows){
      report.push([expenditure.name, `$${expenditure.round}`])
    }
    console.log(report)
    res.render('report', {title: 'Report', report: report, report_title: 'Sales per Expenditure Report', headers: ['Expenditure', 'Sales'] })
  })
});

module.exports = router;

