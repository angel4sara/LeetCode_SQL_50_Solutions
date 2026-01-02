-- # Problem Name: Queries Quality and Percentage
-- ## LeetCode Link: https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT 
    query_name,
    ROUND(AVG(1.0 * rating / position), 2) AS quality,
    ROUND(100.0 * SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
