create table shop.orders(
    id serial primary key,
    shop_id integer,
    total_sum money,
    date timestamp,
    employee_id integer
);