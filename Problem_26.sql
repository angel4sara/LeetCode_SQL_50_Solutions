-- # Problem Name: Classes With at Least 5 Students
-- ## LeetCode Link: https://leetcode.com/problems/classes-with-at-least-5-students/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
