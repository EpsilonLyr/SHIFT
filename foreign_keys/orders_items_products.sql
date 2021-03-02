alter table shop.orders_items
add constraint orders_items_products_fk foreign key (product_id)
references shop.products (id)