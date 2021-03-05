do $$
declare
    p_fio varchar(50);
	p_position varchar(30);
    p_manager_id integer;
	p_shop_id integer;
begin
call shop.insert_new_employee('fio', 'pos', null, 1);
end $$;
