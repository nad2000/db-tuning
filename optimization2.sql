SELECT 
item_id, title, shop_id, is_dod, reg_price, sale_price, shipping, 
per_off, added, ending, shop_name, shop_url, shop_can_ok, 
hot_score, sizing, sku 
FROM items 
WHERE ( cat1_id IN ( 2,11,9,12,13 ) OR cat2_id IN ( 2,11,9,12,13 ) ) 
ORDER BY inverse_is_dod, inverse_added, title
LIMIT 0, 25;

select distinct added from items;