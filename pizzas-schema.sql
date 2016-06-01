create table if not exists pizzas (
    id serial primary key,
    name text not null
);

create table if not exists batches (
    id serial primary key,
    pizza_id integer references pizzas,
    quantity integer not null
);

create table if not exists toppings (
    id serial primary key,
    name text not null
);

create table if not exists pizzas_toppings (
    pizza_id integer references pizzas,
    topping_id integer references toppings,
    primary key (pizza_id, topping_id)
);

create table if not exists recipes (
    id serial primary key,
    name text not null,
    pizza_id integer references pizzas
);

create table if not exists steps (
    id serial primary key,
    description text not null,
    recipe_id integer references recipes
);

create table if not exists tags (
    id serial primary key,
    name text not null
);

create table if not exists recipes_tags (
    recipe_id integer references recipes,
    tag_id integer references tags,
    primary key (recipe_id, tag_id)
);
