create table shop.employees(
    id serial primary key,
    fio varchar(50),
    position varchar(50),
    manager_id integer,
    shop_id integer
);