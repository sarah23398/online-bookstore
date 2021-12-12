let express = require('express');
let router = express.Router();
const OWNER_EMAIL = 'owner@nook.ca';
const OWNER_PASSWORD = 'youshallnotpass';

/* GET login page. */
router.get('/', function(req, res, next) {
  req.session.destroy();
  res.redirect('/');
});

module.exports = router;