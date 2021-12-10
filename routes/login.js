var express = require('express');
var router = express.Router();

/* GET login page. */
router.get('/', function(req, res, next) {
    res.render('login', { title: 'Login' });
  });

router.post('/auth', function(req, res, next) {
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    req.body = {
      'email': email,
      'password': password
    }
    if (res.status === 200) {
      console.log('nice');
    }
  });
module.exports = router;