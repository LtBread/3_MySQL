-- Представление, которое выводит кники и соответствующие подборки
CREATE VIEW books_collection AS
SELECT c.name collection, b.name book
FROM collections c
JOIN books b
WHERE b.collection_id = c.id
ORDER BY collection;

-- DROP VIEW books_collection;

SELECT * FROM books_collection;

-- Представление, которое