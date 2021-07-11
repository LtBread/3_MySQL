SELECT * FROM users;
SELECT * FROM genres; 
SELECT * FROM collections; 
SELECT * FROM publishing_houses;
SELECT * FROM authors;
SELECT * FROM age_limits;
SELECT * FROM books;
SELECT * FROM orders;
SELECT * FROM orders_books;
SELECT * FROM storehouses;
SELECT * FROM storehouses_books;
SELECT * FROM disconts;

-- Выбрка 
SELECT id, name
FROM books;

-- Выбрка 
SELECT b.id, b.name, a.lastname, al.age_limit 
FROM books b 
JOIN authors a ON b.autor_id = a.id 
JOIN age_limits al ON b.age_limit_id = al.id;

-- Выбрка 
SELECT o.id , o.user_id, u.login 
FROM orders o
JOIN users u ON o.user_id = u.id;

-- Выбрка корзины покупателя с id = 3
SELECT 
	concat(u.firstname, ' ', u.lastname)  AS `user`, 
	b.name, 
	concat(a.firstname, ' ', a.lastname) AS 'authors',
	ob.total,
	concat(b.price, ' руб.') AS `cost`
FROM users u 
JOIN orders o ON o.user_id = u.id 
JOIN orders_books ob ON ob.order_id = o.id
JOIN books b ON b.id = ob.book_id 
JOIN authors a ON b.author_id = a.id
WHERE u.id = 3;

-- Выбрка по остаткам книг повсем складам, как бы запросить остатки по всем складам?
SELECT b.name, sb.value 
FROM books b 
JOIN storehouses_books sb ON sb.book_id = b.id
WHERE sb.storehouse_id = 1;

-- Как бы написать select на именинника с id = 3, чтобы врезультат возвращался со скидкой?

