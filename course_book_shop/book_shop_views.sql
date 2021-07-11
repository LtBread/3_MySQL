-- Представление, которое выводит книги в заданной подбрке 'Постапокалипсис'
CREATE OR REPLACE ALGORITHM = TEMPTABLE VIEW books_collection AS
SELECT c.name collection, b.name book
FROM collections c
JOIN books b ON b.collection_id = c.id 
WHERE c.name = 'Постапокалипсис'
ORDER BY collection;

SELECT * FROM books_collection;

-- Представление, которое выводит стоимость корзины покупателя с логином 'valerka_78'
CREATE OR REPLACE ALGORITHM = TEMPTABLE VIEW total_cost AS
SELECT 
	u.login,
	concat(u.firstname, ' ', u.lastname) AS `user`,
	SUM(b.price) AS `total cost`
FROM users u
JOIN orders o ON o.user_id = u.id 
JOIN orders_books ob ON ob.order_id = o.id 
JOIN books b ON b.id = ob.book_id 
WHERE u.login = 'valerka_78';

SELECT * FROM total_cost;

-- Представление, которое выводит корзину покупателя с с логином 'valerka_78'
CREATE OR REPLACE ALGORITHM = TEMPTABLE VIEW user_order AS
SELECT 
	concat(u.firstname, ' ', u.lastname) AS `user`, 
	b.name, 
	concat(a.firstname, ' ', a.lastname) AS 'authors',
	ob.total,
	concat(b.price, ' руб.') AS `cost`
FROM users u 
JOIN orders o ON o.user_id = u.id 
JOIN orders_books ob ON ob.order_id = o.id
JOIN books b ON b.id = ob.book_id 
JOIN authors a ON b.author_id = a.id
WHERE u.login = 'valerka_78';

SELECT * FROM user_order;

-- DROP VIEW IF EXISTS books_collection;
-- DROP VIEW IF EXISTS total_cost;
-- DROP VIEW IF EXISTS user_order;