-- # Problem Name: The Number of Employees Which Report to Each Employee
-- ## LeetCode Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50
----
SELECT
    m.employee_id,
    m.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age))AS average_age
FROM Employees m
JOIN Employees e
    ON e.reports_to = m.employee_id
GROUP BY m.employee_id,m.name
ORDER BY m.employee_id;
