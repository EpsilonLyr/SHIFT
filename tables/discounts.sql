create table shop.discounts(
    id serial primary key,
    type_id integer,
    product_id integer,
    group_id integer,
    discounts_from timestamp,
    discounts_to timestamp,
    percent double precision,
    fixed_sum money
)