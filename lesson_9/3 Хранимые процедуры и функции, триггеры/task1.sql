/*
 * Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 * в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна * возвращать фразу "Доброе утро", 
 * с 12:00 до 18:00 функция должна возвращать * фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
 */

DELIMITER//

DROP FUNCTION IF EXISTS hello();

CREATE FUNCTION hello() 
RETURNS varchar(20)READS SQL DATA
BEGIN
	
	DECLARE `phrase` varchar(20);
	DECLARE HOUR int;
	SET hour = HOUR(NOW());
	
	CASE
		WHEN hour BETWEEN 6 AND 11
			THEN SET phrase = 'Доброе утро';
		WHEN hour BETWEEN 12 AND 17
			THEN SET phrase = 'Добрый день';
		WHEN hour BETWEEN 18 AND 23
			THEN SET phrase = 'Добрый вечер';	
		WHEN hour BETWEEN 0 AND 5
			THEN SET phrase = 'Доброй ночи';
	END CASE;
	RETURN phrase;
	
END

DELIMITER;



