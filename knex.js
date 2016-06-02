var knex = require('knex')({
    client: 'pg',
    connection: {
        database: 'recipes'
    },
});

// var data = {
//     name: 'Khichidi Kadhi',
//     steps: [
//         'Cook rice and lentils',
//         'Thicken yogurt with gram flour, cooking over a low heat',
//         'Add tadka to yogurt'
//     ],
//     tags: ['curry', 'vegetarian']
// };
knex.insert({
    name: 'Khichidi Kadhi',
    description: 'Rice and lentils with a yoghurt gravy'
}).into('recipes')
.returning('id')
.then(function(myRecipeId) {
    console.log(myRecipeId);
    return knex.insert({
        description: 'Cook rice and lentils',
        recipe_id: myRecipeId
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
    return knex.select('recipes.name')
        .from('recipes')
        .join('steps', 'steps.recipe_id', 'recipes.id')
}).then(function(rows){
    console.log(rows);
});
