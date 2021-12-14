let express = require('express');
let router = express.Router();
const OWNER_EMAIL = 'owner@nook.ca';
const OWNER_PASSWORD = 'youshallnotpass';

/* GET login page. */
router.get('/', function(req, res, next) {
  if(req.session.loggedIn)
    res.status(400).send("Yo you're already logged in.");
  else
    res.render('login', { title: 'Login' });
  });

router.post('/owner', function(req, res, next) {
    if(req.body.email === OWNER_EMAIL && req.body.password === OWNER_PASSWORD){
      req.session.loggedIn = true;
      req.session.loggedInType = "owner";
      req.session.name = "Nook Owner"
      res.status(200).send();
    }
    else{
      res.status(401).send('Incorrect email and/or password');
    }
  });

router.post('/customer', function(req, res, next) {
  req.app.locals.client.query(`SELECT id, name from customer where email = $1 and password = $2`, [req.body.email, req.body.password], (err, result)=>{
    console.log(result);
    if(result.rowCount == 1){
      req.session.loggedIn = true;
      req.session.loggedInType = "customer";
      req.session.name = result.rows[0].name;
      req.session.userId = result.rows[0].id;
      res.status(200).send();
    }
    else{
      res.status(401).send('Incorrect email and/or password');
    }
  })
});
module.exports = router;