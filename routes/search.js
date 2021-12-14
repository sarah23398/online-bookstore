var express = require('express');
var router = express.Router();

/* GET search page. */
router.get('/', function(req, res, next) {
  req.app.locals.client.query('SELECT * from genre;', (err, genres) => {
        res.render('search', {genres: genres.rows});
  })
});

module.exports = router;