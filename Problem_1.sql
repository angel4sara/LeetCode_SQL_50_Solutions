-- # Problem Name: Recyclable and Low Fat Product
-- ## LeetCode Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
-- 
----
SELECT product_id 
FROM Products
WHERE LOW_FATS = 'Y' AND RECYCLABLE = 'Y';

