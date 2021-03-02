alter table shop.orders_items
add constraint orders_items_quantity_types_fk foreign key (quantity_type_id)
references shop.quantity_types (id)