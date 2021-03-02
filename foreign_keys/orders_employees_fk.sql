alter table shop.orders
add constraint employees_orders_fk foreign key (employee_id)
references shop.employees (id)