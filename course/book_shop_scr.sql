-- DROP DATABASE IF exists book_shop;
-- CREATE DATABASE book_shop;
-- USE book_shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	login VARCHAR(100) NOT NULL UNIQUE,
	password_hash VARCHAR(100),
	email VARCHAR(100) NOT NULL UNIQUE,	
	phone VARCHAR(100) NOT NULL UNIQUE,
	firstname VARCHAR(100),
	lastname VARCHAR(100),
	gender CHAR(1),
	birthday_at DATE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Зарегистрированные пользователи';

DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)	 
) COMMENT 'Жанры';

DROP TABLE IF EXISTS collections;
CREATE TABLE collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
) COMMENT 'Подборки';

DROP TABLE IF EXISTS publishing_houses;
CREATE TABLE publishing_houses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
) COMMENT 'Издательства';

DROP TABLE IF EXISTS authors;
CREATE TABLE autors (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(100),
	lastname VARCHAR(100)
) COMMENT 'Авторы';

-- Может быть лишнее
DROP TABLE IF EXISTS age_limits;
CREATE TABLE age_limits (
	id SERIAL PRIMARY KEY,
	age_limit TINYINT,
	description TEXT
) COMMENT 'Возрастные ограничения';

-- Может быть лишнее
DROP TABLE IF EXISTS covers;
CREATE TABLE covers (
	id SERIAL PRIMARY KEY,
	filename VARCHAR(255),
	size INT,
	metadata JSON
) COMMENT 'Обложки книг';

DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id SERIAL PRIMARY KEY,	
	genre_id BIGINT UNSIGNED,
  	collection_id BIGINT UNSIGNED,
  	publishing_house_id BIGINT UNSIGNED,
  	autor_id BIGINT UNSIGNED,
  	age_limit_id BIGINT UNSIGNED,
  	cover_id BIGINT UNSIGNED,
  	name VARCHAR(255),
	description tinytext,
	price DECIMAL (11,2),
-- 	age_limit tinyint,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	  	
  	FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE SET NULL,
  	FOREIGN KEY (collection_id) REFERENCES collections(id) ON DELETE SET NULL,
  	FOREIGN KEY (publishing_house_id) REFERENCES publishing_houses(id) ON DELETE SET NULL,
  	FOREIGN KEY (autor_id) REFERENCES autors(id) ON DELETE SET NULL,
  	FOREIGN KEY (age_limit_id) REFERENCES age_limits(id) ON DELETE SET NULL,
  	FOREIGN KEY (cover_id) REFERENCES covers(id) ON DELETE SET NULL  	
) COMMENT 'Книги';

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
-- 	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
		
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
) COMMENT 'Заказы';

DROP TABLE IF EXISTS orders_books;
CREATE TABLE orders_books (
	id SERIAL PRIMARY KEY,	
	order_id BIGINT UNSIGNED,
	book_id BIGINT UNSIGNED,
	total INT DEFAULT 1,
-- 	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
		
	FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE SET NULL,
	FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE SET NULL
) COMMENT 'Состав заказа';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	address VARCHAR(255)
-- 	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Склады';

DROP TABLE IF EXISTS storehouses_books;
CREATE TABLE storehouses_books (
	id SERIAL PRIMARY KEY,	
	storehouse_id BIGINT UNSIGNED,
	book_id BIGINT UNSIGNED,
	value BIGINT UNSIGNED,
-- 	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (storehouse_id) REFERENCES storehouses(id) ON DELETE SET NULL,
	FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE SET NULL
) COMMENT 'Запасы на складе';

DROP TABLE IF EXISTS disconts;
CREATE TABLE disconts (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	book_id BIGINT UNSIGNED,
	discont FLOAT UNSIGNED,
	started_at DATETIME,
	finished_at DATETIME,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	
  	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
  	FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE SET NULL
) COMMENT 'Скидки';























