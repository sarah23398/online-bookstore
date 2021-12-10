let express = require('express');
let router = express.Router();
const OWNER_EMAIL = 'owner@nook.ca';
const OWNER_PASSWORD = 'youshallnotpass';

/* GET login page. */
router.get('/', function(req, res, next) {
    res.render('login', { title: 'Login' });
  });

router.post('/owner', function(req, res, next) {
  console.log(req.body);
    if(req.body.email === OWNER_EMAIL && req.body.password === OWNER_PASSWORD){
      res.status(200);
    }
    else{
      console.log(req.body.email)
      console.log(req.body.password)
      res.status(401).send('Incorrect email and/or password');
    }
  });
module.exports = router;