var knex = require('knex')({
    client: 'pg',
    connection: {
        database: 'recipes'
    },
});

knex.insert({
    name: 'Khichidi Kadhi',
    description: 'Rice and lentils with a yoghurt gravy'
}).into('recipes').then();

knex.select('name', 'description').from('recipes').then(function(recipes) {
    console.log('ALL OF LE RECIPES',recipes);
});

knex.select('description').from('recipes').where({
    name: 'Khichidi Kadhi'
}).then(function(recipes){
    console.log('THIS IS THE RECIPE',recipes[0]);
});

// Update one of the recipes
knex('recipes').update({
    description: 'Scrumptious rice and lentils with a yoghurt gravy'
}).where({
    name: 'Khichidi Kadhi'
}).then();

knex.del().from('recipes').where({
    name: 'Khichidi Kadhi'
}).then();
