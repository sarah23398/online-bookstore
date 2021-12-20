let express = require('express');
let router = express.Router();
const OWNER_EMAIL = 'owner@nook.ca';
const OWNER_PASSWORD = 'youshallnotpass';

// Gets the log out page
router.get('/', function(req, res, next) {
  // Destroys the session
  req.session.destroy();
  // Returns the user to the / page
  res.redirect('/');
});

module.exports = router;