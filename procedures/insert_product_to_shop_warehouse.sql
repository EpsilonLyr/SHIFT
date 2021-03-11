create or replace procedure shop.insert_product_to_shop_warehouse(
    p_shop_id     in    integer,
    p_product_id in integer,
    p_quantitie  in double precision
)
as
$$
declare
    p_count integer;
begin
 	select count(*)
    into p_count
    from shop.shop_warehouses
    where product_id=p_product_id and shop_id=p_shop_id;
	if p_count > 0 then
        update shop.shop_warehouses
        set quantity = (quantity + p_quantity)
        where product_id = p_product_id and shop_id = p_shop_id;
    else
        INSERT INTO shop.shop_warehouses(
		id, shop_id, product_id, quantity)
		VALUES (DEFAULT, p_shop_id, p_product_id, p_quantitie);
    end if;
	
	
end;
$$ language plpgsql;
