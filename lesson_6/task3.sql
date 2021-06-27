/*
 * Подсчитать общее количество лайков, которые получили 10
 * самых молодых пользователей.
 */

SELECT count(*) AS 'Сумма лайков которые получили 10 самых молодых пользователей'
FROM likes
WHERE media_id IN (
	SELECT id FROM media 
	WHERE user_id IN (
		SELECT user_id FROM (
			SELECT user_id FROM profiles
	  		ORDER BY birthday DESC
	  		LIMIT 10	
		) AS wrapper
	)
);


