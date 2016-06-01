CREATE TABLE if not exists recipes (
    id serial primary key,
    name text not null,
    tags text not null
);
-- select pizzas.name, toppings.name from pizzas join pizzas_toppings on pizzas_toppings.pizza_id = pizzas.id join toppings on pizzas_toppings.topping_id = toppings.id where pizzas.name='hawaiian';
