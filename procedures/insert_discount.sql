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

    if ((p_product_id is null and p_group_id is not null) or (p_product_id is not null and p_group_id is null) and
       (p_percent is null and p_fixed_sum is not null or p_percent is not null and p_fixed_sum is null) or
       (p_type_id = 1)) and
       (discounts_to is not null and discounts_from is not null and discounts_from < discounts_to)
    then 
	INSERT INTO shop.discounts(
	id, type_id, product_id, group_id, discounts_from, discounts_to, percent, fixed_sum)
   	VALUES (DEFAULT, p_type_id, p_product_id, p_group_id, p_discounts_from, p_discaunts_to, p_percent, p_fixed_sum);
    else
        raise exception 'Wrong arguments passed';
    end if;
	

    
end
$$ language plpgsql
