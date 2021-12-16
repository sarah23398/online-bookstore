var express = require('express');
var router = express.Router();

/* GET reports page. */
router.get('/', function(req, res, next) {
  res.render('reports', { title: 'Finance Reports' });
});

router.get('/:id', function(req, res, next){
  let id = req.params.id;

  req.app.locals.client.query(`SELECT author_id, SUM(price*quantity) 
  FROM written_by 
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  WHERE book.ISBN = written_by.ISBN 
  GROUP BY author_id`, [], (err, result)=>{
    let report = {}
    Object.assign(report, result.rows[0]);
    console.log(report);
    report["authors"] = [];
    report["sales"] = [];

    for (let author of result.rows){
      report.authors.push(author.author_id);
      console.log(author.author_id);
      report.sales.push(author.sum);
      console.log(author.sum);
    }
    res.render('report', {title: 'Report', report: report })
  })
})

module.exports = router;