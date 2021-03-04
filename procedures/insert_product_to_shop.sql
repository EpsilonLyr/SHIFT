

create or replace procedure shop.insert_product_to_shop(
    p_group_id in integer,
    p_price in money,
    p_quantity_type_id in integer,
    p_name in varchar(30)
)
as
$$
begin
	INSERT INTO shop.products(
	id, group_id, price, quantity_type_id, name)
	VALUES (DEFAULT, p_group_id, p_price, p_quantity_type_id, p_name);
end;
$$ language plpgsql;