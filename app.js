const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const session = require('express-session');
const { Pool, Client } = require("pg");
require('dotenv').config()

const indexRouter = require('./routes/index');
const registerRouter = require('./routes/register');
const loginRouter = require('./routes/login');
const logoutRouter = require('./routes/logout');
const searchRouter = require('./routes/search');
const booksRouter = require('./routes/books');
const ordersRouter = require('./routes/orders');
const publishersRouter = require('./routes/publishers');
const reportsRouter = require('./routes/reports');
const cartRouter = require('./routes/cart');
const authorsRouter = require('./routes/authors');
const customersRouter = require('./routes/customers');
const { reset } = require('nodemon');

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// Creating sessions for logged in users
app.use(session({
  name: 'nook-session',
  secret: 'booknook',
  cookie:{
    maxAge: 1000*60*60*3 // 3 hrs
  },
  resave: true,
  saveUninitialized: false
}));

// PostgreSQL credentials
const credentials = {
  user: process.env.PGUSER,
  host: process.env.PGHOST,
  database: process.env.DATABASE,
  password: process.env.PASSWORD,
  port: process.env.PGPORT
};

// Connect with a connection pool.
app.locals.pool = new Pool(credentials);

// Connect with a client.
app.locals.client = new Client(credentials);
app.locals.client.connect();

// Check if user is logged in
function auth(req, res, next){
  if(!req.session.loggedIn){
    res.status(401).redirect('/login');
  }
  else{
    next();
  }
}

// Verify if logged in user is owner
function verifyOwner(req, res, next){
  if(req.session.loggedInType != 'owner'){
    res.status(403).send('Sorry buddy, this area is off limits...');
  }
  else{
    next();
  }
}

// Verify if logged in user is customer
function verifyCustomer(req, res, next){
  if(req.session.loggedInType == 'owner'){
    res.status(403).send('Sorry, you can\'t access this resource as the owner...');
  }
  else{
    next();
  }
}

app.use((req, res, next)=>{
  if(req.session){
    res.locals.session = req.session;
  }
  next();
})

app.use('/', indexRouter);
app.use('/register', registerRouter);
app.use('/login', loginRouter);
app.use('/logout', logoutRouter);
app.use('/search', auth, searchRouter);
app.use('/books', auth, booksRouter);
app.use('/orders', auth, verifyCustomer, ordersRouter);
app.use('/publishers', auth, verifyOwner, publishersRouter);
app.use('/reports', auth, verifyOwner, reportsRouter);
app.use('/cart', auth, verifyCustomer, cartRouter);
app.use('/authors', auth, verifyOwner, authorsRouter);
app.use('/customers', customersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;