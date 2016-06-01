CREATE TABLE if not exists recipes (
    id serial primary key,
    name text not null,
    description text not null
);
