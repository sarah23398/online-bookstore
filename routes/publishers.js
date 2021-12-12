var express = require('express');
var router = express.Router();

/* GET publishers page. */
router.get('/', function(req, res, next) {
  res.render('publishers', { title: 'Publishers' });
});

router.get('/add', function(req, res, next){
  let id = req.params.id;
  res.render('add-publisher');
})

router.post('/add', function(req, res, next) {
  const id = '6';
  req.app.locals.client.query('INSERT INTO author(id, name, email, bio, website) VALUES ($1, $2, $3, $4, $5);', 
    [id, req.body.name, req.body.email, req.body.bio, req.body.website], (error, results) => {
    if (error) {
      console.log(err);
      res.status(500).json({success: false, data: err});
    }
    res.status(201).send(`Author added with ID: ${results.insertId}`)
  })
})

module.exports = router;