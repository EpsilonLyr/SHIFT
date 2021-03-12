create or replace procedure shop.get_discount_type(
	p_discount_id in integer,
    p_type inout varchar
	
)
as
$$
begin
    SELECT type into p_type 
	FROM shop.discount_types
	WHERE id = p_discount_id;
end;
$$ language plpgsql;
