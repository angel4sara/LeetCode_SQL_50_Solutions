-- # Problem Name: Percentage of Users Attended a Contest
-- ## LeetCode Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50
----
SELECT
    contest_id,
    ROUND(COUNT(DISTINCT r.user_id)*100.0/ (SELECT COUNT(*) FROM Users),2) AS percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC, r.contest_id ASC;
