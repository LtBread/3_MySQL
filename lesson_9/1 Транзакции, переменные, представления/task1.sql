/*
 * В базе данных shop и sample присутствуют одни и те же таблицы, 
 * учебной базы данных. Переместите запись id = 1 из таблицы shop.users 
 * в таблицу sample.users. Используйте транзакции. 
 */

START TRANSACTION;
INSERT INTO example.users SELECT * FROM shop.users u WHERE u.id = 2;
DELETE FROM shop.users u WHERE u.id = 2;
COMMIT;

SELECT * FROM shop.orders;



