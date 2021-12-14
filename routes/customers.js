var express = require('express');
var router = express.Router();

/* register user. */
router.post('/', function(req, res, next) {
    req.app.locals.client.query(`INSERT INTO public.customer(
        name, email, password, phone, address, bank_account)
        VALUES ($1, $2, $3, $4, $5, $6);`, [req.body.name, req.body.email, req.body.password, req.body.phone, req.body.address. req.body.bank_address], (err, res)=>{
            if(err){
                console.log(err);
                return res.status(500).send();
            }
            return res.status(201).send();
        });
});

module.exports = router;