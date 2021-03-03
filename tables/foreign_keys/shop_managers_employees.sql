alter table shop.shop_managers
add constraint shops_manager_employees_fk foreign key (manager_id)
references shop.employees (id)