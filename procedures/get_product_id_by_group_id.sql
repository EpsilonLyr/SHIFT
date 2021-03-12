create or replace procedure shop.get_product_id_by_group_id(
    p_product_group_id in integer,
	p_product_id in integer
	
)
as
$$
begin
    SELECT product_id into p_product_id 
	FROM shop.products
	WHERE group_id = p_product_group_id;
end;
$$ language plpgsql;
