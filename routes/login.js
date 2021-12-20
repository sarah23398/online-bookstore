let express = require('express');
let router = express.Router();
const OWNER_EMAIL = 'owner@nook.ca';
const OWNER_PASSWORD = 'youshallnotpass';

// Gets the login page
router.get('/', function(req, res, next) {
  // Doesn't let them log in if they're already logged in
  if(req.session.loggedIn)
    res.status(400).send("Yo you're already logged in.");
  else
    res.render('login', { title: 'Login' });
  });

// Allows the owner to log in
router.post('/owner', function(req, res, next) {
    // Checks if the input is equal to the stored owner email and owner password information
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

// Allows a customer to log in
router.post('/customer', function(req, res, next) {
  // Writes an SQL query to check if the email and corresponding password are in the database
  req.app.locals.client.query(`SELECT id, name from customer where email = $1 and password = $2`, [req.body.email, req.body.password], (err, result)=>{
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