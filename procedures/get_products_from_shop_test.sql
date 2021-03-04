do $$
declare
    p_products_id integer[];
    p_quantities double precision[];
begin
    call shop.get_products_from_shop(2, p_products_id, p_quantities); -- здесь вместо 100 указать id вашего магазина
    for i in 1..cardinality(p_products_id) loop
      raise notice 'product_id[(%)] = (%)', i, p_products_id[i];
      raise notice 'p_quantities[(%)] = (%)', i, p_quantities[i];
    end loop;
end $$;