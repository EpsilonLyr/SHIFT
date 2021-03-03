alter table shop.shop_warehouses
add constraint shops_shop_warehouses_fk foreign key (shop_id)
references shop.shops (id)