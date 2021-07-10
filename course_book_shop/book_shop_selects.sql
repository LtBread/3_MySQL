-- Выборка жанровых предпочтений покупателей (на основе книг в корзине)
SELECT 
	concat(firstname, ' ', lastname) AS `user`, 
	(
		(YEAR(CURRENT_DATE) - YEAR(birthday_at)) -                             
		(DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday_at, '%m%d'))
	) AS `age`,
	(
		SELECT name
		FROM genres
		ORDER BY id DESC 
		LIMIT 1
	) AS `genre`
FROM users;

-- Выборка именинников
SELECT firstname, lastname 
FROM users
WHERE
	DATE_FORMAT(birthday_at, '%m-%d') 
	BETWEEN	(DATE_FORMAT(NOW(), '%m-%d')  - INTERVAL 4 WEEK) 
	AND (DATE_FORMAT(NOW(), '%m-%d') + INTERVAL 4 WEEK);

SELECT DATE_FORMAT(NOW(), '%m-%d'), DATE_FORMAT(NOW(), '%m-%d') - INTERVAL 1 DAY;

SELECT DATE_FORMAT(birthday_at, '%m-%d') 
FROM users
WHERE id = 1;

-- Выбрка авторов в жанре 'Фантастика. Фэнтези'
SELECT firstname, lastname 
FROM authors
WHERE id IN (
	SELECT  author_id
	FROM books
	WHERE genre_id = (
	SELECT id
	FROM genres
	WHERE name = 'Фантастика. Фэнтези'
	)
);

-- Как бы написать select на именинника с id = 3, чтобы результат возвращался со скидкой?
-- Выбрка корзины покупателя с id = 8
SELECT 
	concat(u.firstname, ' ', u.lastname), 
	b.name, 
	concat(a.firstname, ' ', a.lastname) AS 'authors',
	concat(b.price, ' руб.')
FROM users u 
JOIN orders o ON o.user_id = u.id 
JOIN orders_books ob ON ob.order_id = o.id
JOIN books b ON b.id = ob.book_id 
JOIN authors a ON b.autor_id = a.id
WHERE u.id = 8;

-- Выбрка по остаткам книг повсем складам
SELECT b.name, sum(sb.value) AS remainder  
FROM books b 
JOIN storehouses_books sb ON sb.book_id = b.id
GROUP BY sb.book_id
ORDER BY remainder;

