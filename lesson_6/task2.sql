/*
 * 2. Пусть задан некоторый пользователь. 
 * Из всех друзей этого пользователя найдите человека, который больше 
 * всех общался с нашим пользователем.
*/

-- задан id = 101

SELECT
count(from_user_id) AS `count messages`,
to_user_id AS `friend`
FROM messages WHERE from_user_id = 101 
AND to_user_id IN (
	SELECT initiator_user_id FROM friend_requests
	WHERE target_user_id = 101 AND status = 'approved'
	UNION ALL 
	SELECT target_user_id FROM friend_requests
	WHERE initiator_user_id = 101 AND status = 'approved'
)
GROUP BY to_user_id
UNION ALL
SELECT
count(to_user_id) AS `count messages`,
from_user_id AS `friend`
FROM messages WHERE to_user_id = 101 
AND from_user_id IN (
	SELECT initiator_user_id FROM friend_requests
	WHERE target_user_id = 101 AND status = 'approved'
	UNION ALL 
	SELECT target_user_id FROM friend_requests
	WHERE initiator_user_id = 101 AND status = 'approved'
)
GROUP BY from_user_id
ORDER BY `count messages` DESC 
LIMIT 1;