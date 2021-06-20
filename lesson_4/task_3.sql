/*
 * В таблице складских запасов storehouses_products в поле value могут 
 * встречаться самые разные цифры: 0, если товар закончился и выше нуля, 
 * если на складе имеются запасы. Необходимо отсортировать записи таким 
 * образом, чтобы они выводились в порядке увеличения значения value. 
 * Однако нулевые запасы должны выводиться в конце, после всех записей.
 */

INSERT INTO storehouses_products 
	(storehouse_id,  product_id, value)
VALUES
  (1, 1, 24),
  (1, 2, 15),
  (2, 1, 0),
  (2, 2, 2),
  (3, 1, 0),
  (3, 2, 0);
 
SELECT storehouse_id, product_id, value FROM storehouses_products ORDER BY value;
