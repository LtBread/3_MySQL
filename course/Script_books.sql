-- CREATE DATABASE book_shop;
-- USE book_shop;
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (id INT  UNSIGNED NOT NULL, name VARCHAR(255));

DROP TABLE IF EXISTS users;
CREATE TABLE users (id INT UNSIGNED NOT NULL, name VARCHAR(255));

DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
	id INT UNSIGNED NOT NULL,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
	id INT UNSIGNED NOT NULL,
	surname VARCHAR(255),
	name VARCHAR(255)
);

DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id INT UNSIGNED NOT NULL,
	name VARCHAR(255),
	description TEXT,
	price DECIMAL(10,2),
	catalog_id INT UNSIGNED,
	genre_id INT UNSIGNED,
	author_id INT UNSIGNED
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (id INT UNSIGNED NOT NULL, user_id INT UNSIGNED);

DROP TABLE IF EXISTS order_books;
CREATE TABLE order_books (
	id INT UNSIGNED NOT NULL,
	order_id INT UNSIGNED,
	book_id INT UNSIGNED,
	total INT UNSIGNED DEFAULT 1
);

