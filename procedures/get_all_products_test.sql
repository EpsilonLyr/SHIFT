do $$
declare
p_price  money[];
    p_name varchar(30)[];
begin
call shop.get_all_products(p_price, p_name);
for i in 1..cardinality(p_name) loop
      raise notice 'p_name[(%)] = (%), p_price = (%)', i, p_name[i], p_price[i];
	  end loop;
end $$;