var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var countriesRouter = require('./routes/countries');
var holidaysRouter = require('./routes/holidays');

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use('/api/v1/countries', countriesRouter);
app.use('/api/v1/holidays', holidaysRouter);

module.exports = app;
