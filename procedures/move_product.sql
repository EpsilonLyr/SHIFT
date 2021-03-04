create or replace procedure shop.move_product(
    p_product_id in integer,
    p_new_warehouse_id in integer
)
as
$$
begin
	update shop.shop_warehouses
    set id = p_new_warehouse_id
    where product_id = p_product_id;
end;
$$ language plpgsql;