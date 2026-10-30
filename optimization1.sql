 SELECT 
    item_id, title, shop_id, is_dod, reg_price, 
    sale_price, shipping, per_off, added, ending, 
    shop_name, shop_url, shop_can_ok, hot_score, 
    sizing, sku 
FROM items
ORDER BY inverse_is_dod, inverse_added, title
LIMIT 25, 25;

-- analyze table items;
-- create schema salecamel;fulltext_index

delimiter $$


CREATE INDEX  items_inverse_is_dod_inverse_added_title_idx ON 
items( inverse_is_dod, inverse_added, title) USING BTREE;

ALTER TABLE items ADD COLUMN inverse_is_dod tinyint NULL;
ALTER TABLE items ADD COLUMN inverse_added int;

UPDATE items 
SET inverse_is_dod = NOT(is_dod), inverse_added=added;

SELECT DISTINCT inverse_is_dod, is_dod FROM items;
