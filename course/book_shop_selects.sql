SELECT * FROM users;
SELECT * FROM genres; 
SELECT * FROM collections; 
SELECT * FROM publishing_houses;
SELECT * FROM authors;
SELECT * FROM age_limits;
SELECT * FROM covers;
SELECT * FROM books;
SELECT * FROM orders;
SELECT * FROM orders_books;
SELECT * FROM storehouses;
SELECT * FROM storehouses_books;
SELECT * FROM disconts;

SELECT b.id, b.name, a.lastname, al.age_limit 
FROM books b 
JOIN authors a ON b.autor_id = a.id 
JOIN age_limits al ON b.age_limit_id = al.id