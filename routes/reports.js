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
    res.render('report', {report: report, report_title: 'Sales per Author Report', headers: ['Author', 'Sales'] })
  })
});

router.get('/expenditures', function(req, res, next){
  req.app.locals.client.query(`SELECT publisher_name as publisher, SUM(publisher_earnings) as publisher_earnings, SUM(sales) as sales ,SUM(revenue) as net_revenue FROM (SELECT 
    publisher.name as publisher_name, 
    ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2) AS publisher_earnings, 
    SUM(book.price*finances.quantity) AS sales,
    SUM(book.price*finances.quantity)-(ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2)) AS revenue
    FROM publisher
    INNER JOIN book on publisher.id = book.publisher_id
    INNER JOIN finances on finances.ISBN = book.ISBN 
    GROUP BY publisher.name, 
    book.publisher_fee) as earnings_per_book group by publisher_name;`, [], (err, result)=>{
    let report = [];
    for (let res of result.rows){
      report.push([res.publisher, `$${res.sales}`, `$${res.publisher_earnings}`, `$${res.net_revenue}`])
    }
    console.log(report)
    res.render('report', {report: report, report_title: 'Sales vs. Expenditures Report', headers: ['Publisher', 'Total Sales', 'Total Publisher Earnings (paid to publisher)', 'Net Revenue'] })
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
    res.render('report', {report: report, report_title: 'Sales per Genre Report', headers: ['Genre', 'Sales'] })
  })
});

module.exports = router;

