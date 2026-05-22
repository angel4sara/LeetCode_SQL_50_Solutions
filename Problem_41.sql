-- # Problem Name: Friend Requests II: Who Has the Most Friends
-- ## LeetCode Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50
----

SELECT id, num
FROM (
    SELECT id, COUNT(*) AS num
    FROM (
        SELECT requester_id AS id
        FROM RequestAccepted

        UNION ALL

        SELECT accepter_id AS id
        FROM RequestAccepted
    ) AS friends
    GROUP BY id
) AS friend_count
ORDER BY num DESC
LIMIT 1;
