-- # Problem Name: Find Customer Referee
-- ## LeetCode Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;
