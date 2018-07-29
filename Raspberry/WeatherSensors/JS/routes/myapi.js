var http = require('http');
var express = require('express');

var app = express();
app.use(express['static'](__dirname));

app.get('*', function(req, res) {
	res.status(404).send('Unrecognized api call')
});

app.use(function(err, req, res) {
	if (req.xhr) {
		res.status(500).send('Oops error!')
	}  else {
		next(err)
	}
});

app.listen(3000)
console.log('App listening port 3000')
