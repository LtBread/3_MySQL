
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (	
	row_created_at DATETIME DEFAULT NOW(),
	table_name VARCHAR(255),	
	row_primary_key_id BIGINT UNSIGNED,
	row_name VARCHAR(255)
) ENGINE=Archive;

INSERT INTO users (name, birthday_at) VALUES
  ('Максим', '1990-11-05'),
  ('Игнат', '1985-11-12');
 
 INSERT INTO catalogs (name)  VALUES
  ('Клавиатуры'),
  ('Кулеры');
 
INSERT INTO products (name, description, price, catalog_id)
VALUES
  ('example processor 1', 'Процессор', 6890.00, 1),
  ('example processor 2', 'Процессор', 6890.00, 1);
  

 
DELETE FROM users
 ORDER BY id DESC 
 LIMIT 2;
DELETE FROM catalogs 
 ORDER BY id DESC 
 LIMIT 2;
DELETE FROM products
 ORDER BY id DESC 
 LIMIT 2;

 SELECT * FROM users;
 SELECT * FROM catalogs;
 SELECT * FROM products;
 
 SELECT * FROM logs
 
 
