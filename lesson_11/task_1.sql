/*
 * Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
 * users, catalogs и products в таблицу logs помещается время и дата создания записи, 
 * название таблицы, идентификатор первичного ключа и содержимое поля name.
 */

/*
 * Вроде нельзя сделать 1 триггер на 3 таблицы, поэтому 3 триггера/
 * Не сообразил, как вернуть название таблицы, для которой применяется триггер,
 * поэтому прописал вручную.
 */

DROP TRIGGER IF EXISTS add_log_users_after_insert;
DROP TRIGGER IF EXISTS add_log_catalogs_after_insert;
DROP TRIGGER IF EXISTS add_log_products_after_insert;

delimiter //

CREATE TRIGGER add_log_users_after_insert AFTER INSERT 
	ON users
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (
		table_name, 		
		row_primary_key_id, 
		row_name)
	value(
		'users',		
		NEW.id,
		NEW.name
	);
	END//
	
	CREATE TRIGGER add_log_catalogs_after_insert AFTER INSERT 
	ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (
		table_name, 
		row_primary_key_id, 
		row_name)
	value(
		'catalogs',		
		NEW.id,
		NEW.name
	);
	END//
	
	CREATE TRIGGER add_log_products_after_insert AFTER INSERT 
	ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (
		table_name, 
		row_primary_key_id, 
		row_name)
	value(
		'products',
		NEW.id,
		NEW.name
	);
	END//

delimiter ;
