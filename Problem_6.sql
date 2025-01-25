-- # Replace Employee ID With The Unique Identifier
-- ## LeetCode Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
-- 
----

SELECT EmployeeUNI.unique_id , Employees.name
FROM  Employees
LEFT JOIN EmployeeUNI  
ON EmployeeUNI.id = Employees.id ;
