/* 
 * Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы
 * на чтение данных, второму пользователю shop — любые операции в пределах 
 * базы данных shop.
 */

CREATE USER 'user1'@'localhost' IDENTIFIED WITH sha256_password BY '123';
GRANT SELECT ON shop.* TO 'user1'@'localhost';

CREATE USER 'user2'@'localhost' IDENTIFIED WITH sha256_password BY '456';
GRANT ALL ON shop.* TO 'user2'@'localhost';

-- SELECT user();
-- SHOW grants;