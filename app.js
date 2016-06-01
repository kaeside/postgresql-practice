var express = require('express');
var app = express();
var knex = require('./knex.js');

app.get('/recipes', function(req, res) {
    //TODO: Should return a list of recipes in the same format
    req.json( /*list of recipes*/ );
});

app.post('/recipes', function(req, res) {
    //TODO: Should add a new recipe
    res.json( /*add a new recipe*/ );
});


app.listen(8080, function() {
    console.log('LISTENING ON PORT 8080');
});
