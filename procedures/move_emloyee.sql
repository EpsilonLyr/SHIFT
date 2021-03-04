create or replace procedure shop.move_employee(
    p_employee_id in integer,
    p_new_shop_id in integer
)
as
$$
begin
	update shop.employees
    set shop_id = p_new_shop_id
    where id = p_employee_id;
end;
$$ language plpgsql;