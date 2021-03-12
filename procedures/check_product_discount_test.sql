do $$
declare
    p_status boolean;
begin
call shop.check_product_discount(TIMESTAMP '2020-11-01 10:23:54+02', 2 ,p_status);
raise notice 'p_status = (%)',  p_status;
end $$;
