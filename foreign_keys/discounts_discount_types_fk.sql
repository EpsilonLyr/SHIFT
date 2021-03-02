alter table shop.discounts
add constraint discount_types_discounts_fk foreign key (type_id)
references shop.discount_types (id)