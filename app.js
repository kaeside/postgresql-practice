var express = require('express');
var app = express();
var knex = require('knex')({
    client: 'pg',
    connection: {
        database: 'recipes'
    },
});

app.get('/recipes', function(req, res) {
    //TODO: Should return a list of recipes in the same format
    req.json( /*list of recipes*/ );
});

app.post('/recipes', function(req, res) {
    var postData = {
        name: 'Khichidi Kadhi',
        steps: [
            'Cook rice and lentils',
            'Thicken yogurt with gram flour, cooking over a low heat',
            'Add tadka to yogurt'
        ],
        tags: ['curry', 'vegetarian']
    }
    //TODO: Should add a new recipe
    knex.insert({
        name: postData.name
    }).into('recipes')
    .then(function() {
        return knex.insert({
            description: postData.steps,
            recipe_id: postData.steps.recipe_id
        }).into('steps');
    }).then(function(){
        return knex.insert({
            description: 'Thicken yogurt with gram flour, cooking over a low heat',
            recipe_id: 1
        }).into('steps')
    }).then(function (){
        return knex.insert({
            description: 'Add tadka to yogurt',
            recipe_id: 1
        }).into('steps')
    }).then(function (){
        return knex.insert(
            [{name: 'curry'}, {name: 'vegetarian'}]
        ).into('tags')
    }).then(function(){
        return knex.select('recipes.name', 'recipes.description')
            .from('recipes')
            .join('steps', 'steps.recipe_id', 'recipes.id')
    }).then(function(rows){
        res.send(rows);
    });
});


app.listen(8080, function() {
    console.log('LISTENING ON PORT 8080');
});
