create or replace procedure shop.get_all_products(
	p_price inout money[],
    p_name inout varchar(30)[]
)
as
$$
begin
    select array_agg(se.price),
		   array_agg(se.name)
      into p_price,
	       p_name
      from shop.products se;
end;
$$ language plpgsql;