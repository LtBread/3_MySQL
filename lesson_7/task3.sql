/*
 * (по желанию) Пусть имеется таблица рейсов flights (id, from, to) 
 * и таблица городов cities (label, name). Поля from, to и label 
 * содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.
 */

-- CREATE DATABASE aviaflot;
-- USE aviaflot;

DROP TABLE IF EXISTS fights;
CREATE TABLE flights (
	id serial,
	`from` varchar(20),
	`to` varchar(20)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	label varchar(20),
	name varchar (20)
);

INSERT INTO flights (`from`, `to`)
VALUES
	('Krasnoyarsk', 'Irkutsk'),
	('Krasnoyarsk', 'Moskow'),
	('Krasnoyarsk', 'Tymen'),
	('Moskow', 'Krasnoyarsk'),
	('Moskow', 'Ekaterinburg'),
	('Moskow', 'Krasnodar'),
	('Moskow', 'Novosibirsk'),
	('Irkutsk', 'Krasnoyarsk'),
	('Irkutsk', 'Vladivostok');

INSERT INTO cities (label, name)
VALUES
	('Krasnoyarsk', 'Красноярск'),
	('Irkutsk','Иркутск'),
	('Moskow','Москва'),
	('Tymen','Тюмень'),
	('Ekaterinburg','Екатеринбург'),
	('Krasnodar','Краснодар'),
	('Novosibirsk','Новосибирск'),
	('Vladivostok', 'Владивосток');

-- Запрос
SELECT f.id AS `id`, c_from.name AS `from`, c_to.name AS `to`
FROM cities c_from 
JOIN cities c_to
JOIN flights f 
WHERE f.`from` = c_from.label 
AND f.`to` = c_to.label
ORDER BY `id`;

