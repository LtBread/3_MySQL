/* 
 * (по желанию) Пусть имеется таблица accounts содержащая три столбца 
 * id, name, password, содержащие первичный ключ, имя пользователя и 
 * его пароль. Создайте представление username таблицы accounts, 
 * предоставляющий доступ к столбца id и name. Создайте пользователя 
 * user_read, который бы не имел доступа к таблице accounts, однако, 
 * мог бы извлекать записи из представления username.
 */

CREATE TABLE accounts (
	id serial PRIMARY KEY,
	name varchar(255),
	'password' varchar(100)
);

INSERT INTO accounts (name) VALUES ('Kuzma'), ('Makar');

-- SELECT * FROM accounts;

CREATE VIEW username AS 
SELECT id, name FROM accounts;

-- SELECT * FROM username;

CREATE USER user_read;
GRANT SELECT ON aviaflot.username TO user_read;

/*
 * Команды, которые я набирал в консоли: 
 */

mysql -u user_read -p
USE aviaflot; -- таблица username у меня в базе aviaflot
SELECT * FROM username;

SELECT * FROM accounts; 
-- Запрос не проходит, ошибка
-- SELECT command denied to user 'user_read'@'localhost' for table 'accounts'
-- как и должно быть 



