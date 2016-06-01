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
}).into('recipes').then();

knex.insert({
    steps: 'Cook rice and lentils'
}).into('steps').then();

knex.insert({
    steps: 'Thicken yogurt with gram flour, cooking over a low heat'
}).into('steps').then();

knex.insert({
    steps: 'Add tadka to yogurt'
}).into('steps').then();

knex.insert({
    name: 'curry'
}).into('tags').then();

knex.insert({
    name: 'vegetarian'
}).into('tags').then();

// knex.select('recipes.name', 'steps.description')
//     .from('recipes')
//     .join('steps', steps.recipe_id, recipe.id)
//     .then(function(rows){
//         console.log(rows);
//     });
