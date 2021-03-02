create table shop.orders_items(
    id serial primary key,
    order_id integer,
    product_id integer,
    quantity double precision,
    discount money,
    total_amount money,
    quantity_type_id integer
);