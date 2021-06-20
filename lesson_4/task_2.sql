/* Таблица users была неудачно спроектирована. Записи created_at и updated_at 
 * были заданы типом VARCHAR и в них долгое время помещались значения 
 * в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, 
 * сохранив введённые ранее значения. 
 */
USE shop; 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:11', '20.12.2019 9:10'),
  ('Наталья', '1984-11-12', '20.10.2017 8:11', '20.12.2019 9:10'),
  ('Александр', '1985-05-20', '10.01.2007 8:11', '20.12.2019 9:10'),
  ('Сергей', '1988-02-14', '20.10.2017 8:11', '24.12.2019 9:10'),
  ('Иван', '1998-01-12', '20.10.2017 8:11', '20.12.2019 9:10'),
  ('Мария', '1992-08-29', '20.10.2017 8:11', '20.12.2019 9:10');
 
SELECT * FROM users;

UPDATE users SET created_at DATETIME;

SELECT STR_TO_DATE(created_at, '%Y/%m/%d%h%m%s') FROM users;
SELECT unix_timestamp(created_at) FROM users;
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
SELECT CONVERT(DATE, created_at, 106);