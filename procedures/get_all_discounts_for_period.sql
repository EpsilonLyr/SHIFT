create or replace procedure shop.get_all_discounts_for_period(
	p_from in timestamp,
	p_to in timestamp,
    p_id inout integer[]
	
)
as
$$
begin
    select array_agg(se.id)
      into p_id
      from shop.discounts se
	  where se.discounts_from <= p_from and se.discounts_to >= p_to;
end;
$$ language plpgsql;
