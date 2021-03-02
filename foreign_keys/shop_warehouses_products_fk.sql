alter table shop.shop_warehouses
add constraint products_shop_warehouses_fk foreign key (product_id)
references shop.products (id)