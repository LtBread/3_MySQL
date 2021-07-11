-- Проверяет, что покупатель не моложе ограничения по возрасту книги 
DROP TRIGGER IF EXISTS check_user_age_before_insert;

delimiter //

CREATE TRIGGER check_user_age_before_insert
	BEFORE INSERT ON orders_books
FOR EACH ROW
BEGIN 
	DECLARE age INT;
	DECLARE a_limit INT;
	SET age = (
		SELECT 
			(YEAR(CURRENT_DATE) - YEAR(u.birthday_at)) -                             
			(DATE_FORMAT(CURRENT_DATE, '%m-%d') < DATE_FORMAT(u.birthday_at, '%m-%d'))
		FROM users u 
		JOIN orders o ON o.user_id = u.id 
		WHERE o.id = NEW.order_id
	);	
	SET a_limit = (
		SELECT age_limit
		FROM age_limits al
		JOIN books b ON b.age_limit_id = al.id 
		WHERE b.id = NEW.book_id
	);	
	IF age < a_limit THEN 
		SIGNAL SQLSTATE '45000' 
		SET message_text = 'The age of the user does not match the age limit of the book';
	END IF;
END//

delimiter ;

-- При добавлении в корзину такой же книги триггер не добавляет запись, а увеличивает total на 1
-- Не работает
DROP TRIGGER IF EXISTS check_book_before_insert;

delimiter //

CREATE TRIGGER check_book_before_insert 
	BEFORE INSERT ON orders_books
FOR EACH ROW
BEGIN
	DECLARE `check` INT;
	SET `check` = 0;
 	IF NEW.book_id IN (
 		SELECT book_id 
 		FROM orders_books
 	) THEN
 		SET `check` = 1 + (
 			SELECT total
 			FROM orders_books
 			WHERE NEW.book_id = book_id
 			ORDER BY total DESC 
 			LIMIT 1
 		);
--  	SET NEW.total = `check` + 1;
 	UPDATE orders_books SET total = `check`
	WHERE book_id = NEW.book_id;

	SIGNAL SQLSTATE '45000' 
	SET message_text = 'total + 1';
 	END IF;
END//

delimiter ;

-- SHOW triggers;