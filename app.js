const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const { Pool, Client } = require("pg");
require('dotenv').config()

const indexRouter = require('./routes/index');
const registerRouter = require('./routes/register');
const loginRouter = require('./routes/login');
const searchRouter = require('./routes/search');
const booksRouter = require('./routes/books');
const ordersRouter = require('./routes/orders');
const publishersRouter = require('./routes/publishers');
const reportsRouter = require('./routes/reports');
const cartRouter = require('./routes/cart');
const authorsRouter = require('./routes/authors');
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

app.locals.pool.query('SELECT NOW()', (err, res) => {
  console.log(err, res)
  app.locals.pool.end()
})
app.locals.client.query('SELECT NOW()', (err, res) => {
  console.log(err, res)
})

app.use('/', indexRouter);
app.use('/register', registerRouter);
app.use('/login', loginRouter);
app.use('/search', searchRouter);
app.use('/books', booksRouter);
app.use('/orders', ordersRouter);
app.use('/publishers', publishersRouter);
app.use('/reports', reportsRouter);
app.use('/cart', cartRouter);
app.use('/authors', authorsRouter);

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