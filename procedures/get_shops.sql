create or replace procedure shop.get_shops(
    p_name inout varchar(30)[]
)
as
$$
begin
    select array_agg(se.name)
      into p_name
      from shop.shops se;
end;
$$ language plpgsql;