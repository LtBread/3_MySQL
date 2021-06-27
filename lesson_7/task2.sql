/*
 * Выведите список товаров products и разделов catalogs, 
 * который соответствует товару.
 */

SELECT p.name `product`, c.name `catalog` 
FROM products p
JOIN
catalogs c
WHERE p.catalog_id = c.id;

