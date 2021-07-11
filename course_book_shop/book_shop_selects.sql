-- Запрос именинников
SELECT firstname, lastname, birthday_at AS birthday
FROM users
WHERE
	DATE_FORMAT(birthday_at, '%m-%d') 
	BETWEEN	DATE_FORMAT(NOW() - INTERVAL 1 WEEK, '%m-%d') 
	AND DATE_FORMAT(NOW() + INTERVAL 1 WEEK, '%m-%d');

-- Запрос авторов жанра 'Фантастика. Фэнтези'
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

-- Запрос книг, которых нет в подборках
SELECT name, concat(a.firstname, ' ', a.lastname)
FROM books b 
JOIN authors a ON a.id = b.author_id 
WHERE collection_id IS NULL
ORDER BY name;

-- Запрос по остаткам книг повсем складам
SELECT b.name, sum(sb.value) AS remainder  
FROM books b 
JOIN storehouses_books sb ON sb.book_id = b.id
GROUP BY sb.book_id
ORDER BY remainder DESC;

-- Запрос книг по акции
SELECT b.name, b.price, d.discont, (b.price*d.discont) AS `result`
FROM books b 
JOIN disconts d ON d.book_id = b.id;

-- Запрос покупателей и книг, которые нельзя им продать из-за возраста
SELECT 
	concat(u.firstname, ' ', u.lastname) AS `user`,
	(
		(YEAR(CURRENT_DATE) - YEAR(u.birthday_at)) -                             
		(DATE_FORMAT(CURRENT_DATE, '%m-%d') < DATE_FORMAT(u.birthday_at, '%m-%d'))
	) AS `age`,
	b.name,
	al.age_limit
FROM users u 
JOIN books b
JOIN age_limits al ON al.id = b.age_limit_id 
WHERE 
	(YEAR(CURRENT_DATE) - YEAR(u.birthday_at)) -                             
	(DATE_FORMAT(CURRENT_DATE, '%m-%d')
	<
	DATE_FORMAT(u.birthday_at, '%m-%d')) < al.age_limit
ORDER BY age DESC;

