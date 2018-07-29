const express = require('express');
const app = express();

const port = 3000;

require('./routes')(app, {});

app.listen(port);
console.log('App listening port 3000')
