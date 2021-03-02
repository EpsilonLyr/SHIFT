create table shop.product_groups(
    id serial primary key,
    group_name varchar(50),
    parent_group_id integer
);