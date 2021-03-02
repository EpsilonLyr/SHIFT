alter table shop.discounts
add constraint products_discounts_fk foreign key (product_id)
references shop.products (id)