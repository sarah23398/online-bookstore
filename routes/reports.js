var express = require('express');
var router = express.Router();

/* GET reports page. */
router.get('/', function(req, res, next) {
  res.render('reports', { title: 'Finance Reports' });
});

router.get('/:id', function(req, res, next){
  let id = req.params.id;

  // req.app.locals.client.query('SELECT author_id, SUM(price*quantity) FROM book, written_by, finances WHERE book.ISBN = written_by.ISBN AND written_by.ISBN = finances.ISBN GROUP BY author_id;', [], (err, result)=>{
  //   let report = {}
  //   Object.assign(report, result.rows[0]);
  //   console.log(report);
  //   report["authors"] = [];
  //   report["sales"] = [];

  //   for (let author of result.rows){
  //     report.authors.push(author.author);
  //     console.log(author.author);
  //     report.sales.push(author.sale);
  //     console.log(author.sale);
  //   }
  //   res.render('report', {title: 'Report', report: report })
  // })
  res.render('report', {title: 'Report', report: report })
})

module.exports = router;