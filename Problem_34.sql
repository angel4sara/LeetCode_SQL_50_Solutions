-- # Problem Name: Product Price at a Given Date
-- ## LeetCode Link: https://leetcode.com/problems/product-price-at-a-given-date/?envType=study-plan-v2&envId=top-sql-50
----
SELECT
  p.product_id,
  COALESCE(pr.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN Products pr
  ON pr.product_id = p.product_id
 AND pr.change_date = (
      SELECT MAX(change_date)
      FROM Products
      WHERE product_id = p.product_id
        AND change_date <= '2019-08-16'
 )
ORDER BY p.product_id;
