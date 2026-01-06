-- # Problem Name: Primary Department for Each Employee
-- ## LeetCode Link: https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
    OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(*) = 1
   );;
