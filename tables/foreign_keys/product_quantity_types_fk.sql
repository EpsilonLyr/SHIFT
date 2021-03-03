alter table shop.products
add constraint quantity_types_products_fk foreign key (quantity_type_id)
references shop.quantity_types (id)