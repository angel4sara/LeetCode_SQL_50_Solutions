-- # Problem Name: Employees Whose Manager Left the Company
-- ## LeetCode Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT e.employee_id
FROM Employees e
LEFT JOIN Employees m
    ON e.manager_id = m.employee_id
WHERE e.salary < 30000
    AND e.manager_id IS NOT NULL
    AND m.employee_id IS NULL
ORDER BY employee_id;;
