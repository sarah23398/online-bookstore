var express = require('express');
var router = express.Router();

// Allows a customer to register for Nook
router.post('/', function(req, res, next) {
    // Runs SQL query to add the customer to the database
    req.app.locals.client.query(`INSERT INTO public.customer(
        name, email, password, phone, address, credit_card)
        VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;`, [req.body.name, req.body.email, req.body.password, req.body.phone, req.body.address, req.body.credit_card], (err, result)=>{
            if(err){
                console.log(err);
                return res.status(500).send();
            }
            req.session.loggedIn = true;
            // Saves this information to req.session so that it can be used throughout the application
            // For example, we only give customers access to add to cart functionality
            // We also use their name when welcoming them to Nook
            req.session.loggedInType = "customer";
            req.session.name = req.body.name;
            req.session.userId = result.rows[0].id;
            return res.status(201).send();
        });
});

module.exports = router;