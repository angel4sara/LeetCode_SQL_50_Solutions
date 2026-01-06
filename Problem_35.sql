-- # Problem Name: Last Person to Fit in the Bus
-- ## LeetCode Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT person_name
FROM (
  SELECT
    person_name,
    turn,
    SUM(weight) OVER (ORDER BY turn) AS total_weight
  FROM Queue
) t
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
