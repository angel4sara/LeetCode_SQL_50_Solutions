-- # Problem Name: Immediate Food Delivery II
-- ## LeetCode Link: https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
----
WITH first_orders AS (
    SELECT
        customer_id,
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
)
SELECT
    ROUND(
        100.0 * AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END),
        2
    ) AS immediate_percentage
FROM first_orders
WHERE rn = 1;
