create table products 
select distinct sku from items ;

create unique index products_sku_idx on products(sku);

select i1.sku, i1.title, i2.title from items as i1 join items as i2 on i2.sku=i1.sku
and i1.title!=i2.title and i1.item_id<i2.item_id
where trim(ifnull(i1.sku,'')) != ''
order by sku, i1.title, i2.title;