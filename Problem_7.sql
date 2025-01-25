-- # Problem Name: Product Sales Analysis I
-- ## LeetCode Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
-- 
----
SELECT Product.product_name, Sales.year, Sales.price
FROM  Sales
LEFT JOIN Product
ON Sales.product_id = Product.product_id;
