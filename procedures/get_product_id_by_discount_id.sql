
create or replace procedure shop.get_product_id_by_discount_id(
	p_discount_id in integer,
    p_product_id inout integer
	
)
as
$$
begin
    SELECT product_id into p_product_id 
	FROM shop.discounts
	WHERE id = p_discount_id;
end;
$$ language plpgsql;
