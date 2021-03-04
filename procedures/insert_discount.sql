create or replace procedure shop.insert_discount(
    p_type_id in integer,
    p_product_id in integer,
    p_group_id in integer,
    p_discounts_from in timestamp,
    p_discaunts_to in timestamp,
    p_percent in double precision,
    p_fixed_sum in money
)
as
$$
begin
    INSERT INTO shop.discounts(
	id, type_id, product_id, group_id, discounts_from, discounts_to, percent, fixed_sum)
    VALUES (DEFAULT, p_type_id, p_product_id, p_group_id, p_discounts_from, p_discaunts_to, p_percent, p_fixed_sum);
end
$$ language plpgsql