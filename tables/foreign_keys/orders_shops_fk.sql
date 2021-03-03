alter table shop.orders
add constraint shops_orders_fk foreign key (shop_id)
references shop.shops (id)