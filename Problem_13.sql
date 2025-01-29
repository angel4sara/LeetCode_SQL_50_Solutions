-- # Problem Name: Managers with at Least 5 Direct Reports
-- ## LeetCode Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT e.name 
FROM Employee e 
JOIN Employee m
ON e.id = m.managerId 
GROUP BY m.managerId 
HAVING COUNT(*) >= 5;
