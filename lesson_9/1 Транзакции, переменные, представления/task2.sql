/*
 * Создайте представление, которое выводит название name товарной позиции 
 * из таблицы products и соответствующее название каталога name из таблицы 
 * catalogs.
 */

CREATE VIEW prod_cat as
SELECT p.name product, c.name category 
FROM products p 
JOIN catalogs c 
WHERE p.catalog_id = c.id;

SELECT * FROM prod_cat;





