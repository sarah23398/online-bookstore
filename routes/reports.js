var express = require('express');
var router = express.Router();

// All routes follow a similar structure, in that they set the report page's title and  as well as table headers

// Get the /reports page
router.get('/', function(req, res, next) {
  res.render('reports', { title: 'Finance Reports' });
});

// Get the /reports/author page for the sales per author report
router.get('/author', function(req, res, next){
  let extra = 'WHERE';
  let title = 'Sales per Author Report';
  // this adds a specific start date and end date for custom reports
  // extra will be only have WHERE if there is no start and end date defined, which would mean that the report is default
  params = [];
  if(req.query.start && req.query.end){
    extra = `INNER JOIN "order" on finances.order_id = "order".id
    WHERE "order".order_date BETWEEN $1 AND $2 AND`;
    params = [req.query.start, req.query.end];
    title += ` (custom from ${req.query.start} to ${req.query.end})`
  }
  req.app.locals.client.query(`SELECT author.name, SUM(book.price*finances.quantity)
  FROM written_by
  INNER JOIN author ON written_by.author_id = author.id
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  ${extra}
  book.ISBN = written_by.ISBN
  GROUP BY author.name;`, params, (err, result)=>{
    let report = [];
    for (let author of result.rows){
      report.push([author.name, `$${author.sum}`])
    }
    console.log(report);
    res.render('report', {report: report, report_title: title, headers: ['Author', 'Sales'] })
  })
});

// Get the /reports/expenditures page for the sales vs expenditures report
router.get('/expenditures', function(req, res, next){
  let extra = '';
  let title = 'Sales vs. Expenditures Report';
  params = [];
  // this adds a specific start date and end date for custom reports
  // extra will be empty if there is no start and end date defined, which would mean that the report is default
  if(req.query.start && req.query.end){
    extra = `INNER JOIN "order" on finances.order_id = "order".id
    WHERE "order".order_date BETWEEN $1 AND $2`;
    params = [req.query.start, req.query.end];
    title += ` (custom from ${req.query.start} to ${req.query.end})`;
  }
  req.app.locals.client.query(`SELECT publisher_name as publisher, SUM(publisher_earnings) as publisher_earnings, SUM(sales) as sales ,SUM(revenue) as net_revenue FROM (SELECT
    publisher.name as publisher_name,
    ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2) AS publisher_earnings,
    SUM(book.price*finances.quantity) AS sales,
    SUM(book.price*finances.quantity)-(ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2)) AS revenue
    FROM publisher
    INNER JOIN book on publisher.id = book.publisher_id
    INNER JOIN finances on finances.ISBN = book.ISBN
    ${extra}
    GROUP BY publisher.name,
    book.publisher_fee) as earnings_per_book group by publisher_name;`, params, (err, result)=>{
    let report = [];
    for (let r of result.rows){
      report.push([r.publisher, `$${r.sales}`, `$${r.publisher_earnings}`, `$${r.net_revenue}`])
    }
    console.log(report)
    res.render('report', {report: report, report_title: title, headers: ['Publisher', 'Total Sales', 'Total Publisher Earnings (paid to publisher)', 'Net Revenue'] })
  })
});

// Get the /reports/genre page for the sales per genre report
router.get('/genre', function(req, res, next){
  let extra = '';
  let title = 'Sales per Genre Report';
  params = [];
  // this adds a specific start date and end date for custom reports
  // extra will be empty if there is no start and end date defined, which would mean that the report is default
  if(req.query.start && req.query.end){
    extra = `INNER JOIN "order" on finances.order_id = "order".id
    WHERE "order".order_date BETWEEN $1 AND $2`;
    params = [req.query.start, req.query.end];
    title += ` (custom from ${req.query.start} to ${req.query.end})`;
  }
  req.app.locals.client.query(`SELECT genre.name, SUM(book.price*finances.quantity)
  FROM genre
  INNER JOIN "contains" ON "contains".genre_id = genre.id
  INNER JOIN book on "contains".ISBN = book.ISBN
  INNER JOIN finances ON finances.ISBN = book.ISBN
  ${extra}
  GROUP BY genre.name`, params, (err, result)=>{
    let report = [];

    for (let genre of result.rows){
      report.push([genre.name, `$${genre.sum}`])
    }
    console.log(report)
    res.render('report', {report: report, report_title: title, headers: ['Genre', 'Sales'] })
  })
});


module.exports = router;

