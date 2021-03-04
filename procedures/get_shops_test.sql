do $$
declare
    p_name varchar(30)[];
begin
call shop.get_shops(p_name);
for i in 1..cardinality(p_name) loop
      raise notice 'p_name[(%)] = (%)', i, p_name[i];
	  end loop;
end $$;