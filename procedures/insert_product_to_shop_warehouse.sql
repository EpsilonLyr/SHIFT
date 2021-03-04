create or replace procedure shop.insert_product_to_shop_warehouse(
    p_shop_id     in    integer,
    p_product_id in integer,
    p_quantitie  in double precision
)
as
$$
begin
	INSERT INTO shop.shop_warehouses(
	id, shop_id, product_id, quantity)
	VALUES (DEFAULT, p_shop_id, p_product_id, p_quantitie);
end;
$$ language plpgsql;