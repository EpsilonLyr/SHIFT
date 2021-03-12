create or replace procedure shop.check_product_discount(
	p_time in timestamp,
	p_product_id in integer,
    p_status inout boolean
	
)
as
$$
declare
    v_discounts_id integer[];
	v_discount_type varchar;
	v_product_id integer;
begin
    call shop.get_all_discounts_for_period(p_time, p_time, v_discounts_id);
	for i in 1..cardinality(v_discounts_id) loop
	  call shop.get_discount_type(v_discounts_id[i], v_discount_type);
	  if 
	  	v_discount_type = 'все товары'
	  then 
	  	p_status = true;
	  elseif
	  	v_discount_type = 'товар'
	  then
	  	call shop.get_product_id_by_discount_id(v_discounts_id[i],v_product_id);
		if 
			v_product_id = p_product_id
		then
			p_status = true;
		 end if;
	   elseif
	   	v_discount_type = 'группа товаров'
	   then
	   	call shop.get_product_group_id_by_discount_id(v_discounts_id[i],v_product_id);
		if 
		v_product_id is not null
		then 
		p_status = true;
		end if;
	  end if;
	  end loop;
	  
	
	  
end;
$$ language plpgsql;
