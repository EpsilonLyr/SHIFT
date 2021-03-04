create or replace procedure shop.insert_new_employee(
    p_fio     in    varchar(50),
    p_position in varchar(30),
    p_manager_id  in integer,
	p_shop_id in integer
)
as
$$
begin
	INSERT INTO shop.employees(
	id, fio, "position", manager_id, shop_id)
	VALUES (DEFAULT, p_fio, p_position, p_manager_id, p_shop_id);
end;
$$ language plpgsql;