/*
 * Найти 10 пользователей, которые проявляют наименьшую активность
 * в использовании социальной сети.
 */


SELECT concat(firstname, ' ', lastname) AS `user`
FROM users
WHERE id IN (
	SELECT user_id FROM (
		SELECT user_id, count(*) AS `count` 
		FROM (
			SELECT user_id FROM likes
			UNION ALL
			SELECT user_id FROM media
		) AS active
		GROUP BY user_id
		ORDER BY `count`
		LIMIT 10
	) AS 10_users	
);




