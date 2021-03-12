do $$
declare
    p_id integer[];
begin
call shop.get_all_discounts_for_period(TIMESTAMP '2020-10-25 10:23:54+02',TIMESTAMP '2020-10-28 10:23:54+02',p_id);
for i in 1..cardinality(p_id) loop
      raise notice 'p_id[(%)] = (%)', i, p_id[i];
	  end loop;
end $$;
