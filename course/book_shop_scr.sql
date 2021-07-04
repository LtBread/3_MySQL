DROP DATABASE book_shop IF exists;
CREATE DATABASE book_shop;
USE book_shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id serial PRIMARY KEY,
	login varchar(100) NOT NULL UNIQUE,
	password_hash varchar(100),
	email varchar(100) NOT NULL UNIQUE,	
	phone BIGINT UNSIGNED NOT NULL UNIQUE,
	firstname varchar(100),
	lastname varchar(100),	
	birthday_at DATE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Зарегистрированные пользователи';


DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
	id serial PRIMARY KEY,
	name VARCHAR(100)	 
)COMMENT 'Каталоги книг';

DROP TABLE IF EXISTS collections;
CREATE TABLE collections (
	id serial PRIMARY KEY,
	name VARCHAR(100)
) COMMENT 'Подборки';

DROP TABLE IF EXISTS publishing_houses;
CREATE TABLE publishing_houses (
	id serial PRIMARY KEY,
	name VARCHAR(100)
) COMMENT 'Издательства';

DROP TABLE IF EXISTS autors;
CREATE TABLE autors (
	id serial PRIMARY KEY,
	firstname varchar(100),
	lastname varchar(100)
) COMMENT 'Авторы';

-- Может быть лишнее
--DROP TABLE IF EXISTS age_limits;
--CREATE TABLE age_limits (
--	id serial PRIMARY KEY,
--	age_limit tinyint,
--	description varchar(255)
--) COMMENT 'Возрастные ограничения';

-- Может быть лишнее
DROP TABLE IF EXISTS covers;
CREATE TABLE covers (
	id serial PRIMARY KEY,
	filename varchar(255),
	SIZE INT,
	metadata JSON
) COMMENT 'Обложки книг';

DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id serial PRIMARY KEY,
	name varchar(255),
	description tinytext,
	price decimal (11,2),
	age_limit tinyint,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  	genre_id BIGINT UNSIGNED NOT NULL,
  	collection_id BIGINT UNSIGNED NOT NULL,
  	publishing_house_id BIGINT UNSIGNED NOT NULL,
  	autor_id BIGINT UNSIGNED NOT NULL,
  	cover_id BIGINT UNSIGNED NOT NULL,
  	
  	FOREIGN KEY (genre_id) REFERENCES genres(id),
  	FOREIGN KEY (collection_id) REFERENCES collections(id),
  	FOREIGN KEY (publishing_house_id) REFERENCES publishing_houses(id),
  	FOREIGN KEY (autor_id) REFERENCES autors(id),
  	FOREIGN KEY (cover_id) REFERENCES covers(id),
  	
) COMMENT 'Книги';























