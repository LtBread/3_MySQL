/*
 * Определить кто больше поставил лайков (всего) - мужчины или женщины?
 */

SELECT count(id)
FROM likes
WHERE user_id IN (
	SELECT user_id FROM profiles
	WHERE gender = 'm'
);

SELECT count(id)
FROM likes
WHERE user_id IN (
	SELECT user_id FROM profiles
	WHERE gender = 'f'
);



