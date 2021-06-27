/*
 * Составьте список пользователей users, которые осуществили хотя бы один
 * заказ orders в интернет магазине.
 */

SELECT u.name
FROM users u 
JOIN orders o 
WHERE u.id = o.user_id;

-- SELECT * FROM users;
-- SELECT * FROM catalogs;
-- SELECT * FROM products;
-- SELECT * FROM orders;
-- SELECT * FROM orders_products;

