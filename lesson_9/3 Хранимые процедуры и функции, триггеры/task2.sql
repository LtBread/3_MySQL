/*
 * В таблице products есть два текстовых поля: name с названием товара и 
 * description с его описанием. Допустимо присутствие обоих полей или одно 
 * из них. Ситуация, когда оба поля принимают неопределенное значение NULL 
 * неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей 
 * или оба поля были заполнены. При попытке присвоить полям NULL-значение 
 * необходимо отменить операцию.
 */

DROP TRIGGER  IF EXISTS check_name_and_description_null_before_insert;

delimiter //

CREATE TRIGGER check_name_and_description_null_before_insert
	BEFORE INSERT ON products
FOR EACH ROW
BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' 
		SET message_text = 'Update canselled.
			NULL for both \'name\' and \'description\' is not allowed.';
	END IF;
END//

delimiter ;

DROP TRIGGER  IF EXISTS check_name_and_description_null_before_update;

delimiter //

CREATE TRIGGER check_name_and_description_null_before_update
	BEFORE UPDATE ON products
FOR EACH ROW
BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' 
		SET message_text = 'Update canselled.
			NULL for both \'name\' and \'description\' is not allowed.';
	END IF;
END//

delimiter ;

-- INSERT INTO products(name, description, price, catalog_id)
-- VALUES
-- 	(NULL, NULL, 1000, 1);
-- 
-- INSERT INTO products(name, description, price, catalog_id)
-- VALUES
-- 	('Intel Core i5-10400F', NULL, 1000, 1);
-- 
-- INSERT INTO products(name, description, price, catalog_id)
-- VALUES
-- 	(NULL, 'Процессор для настольных персональных компьютеров, основанных на платформе Intel', 1000, 1);
-- 
-- INSERT INTO products(name, description, price, catalog_id)
-- VALUES
-- 	('Intel Core i5-10400F', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel', 1000, 1);
-- 
-- SELECT * FROM products;


