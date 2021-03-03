alter table shop.products
add constraint product_groups_products_fk foreign key (group_id)
references shop.product_groups (id)