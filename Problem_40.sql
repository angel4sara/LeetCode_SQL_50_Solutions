-- # Problem Name: Restaurant Growth
-- ## LeetCode Link: https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50
----
WITH daily AS (
  SELECT
    visited_on,
    SUM(amount) AS amount
  FROM Customer
  GROUP BY visited_on
),
windowed AS (
  SELECT
    visited_on,
    amount,
    SUM(amount) OVER (
      ORDER BY visited_on
      ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS total_7_days,
    COUNT(*) OVER (
      ORDER BY visited_on
      ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS cnt
  FROM daily
)
SELECT
  visited_on,
  total_7_days AS amount,
  ROUND(total_7_days / cnt, 2) AS average_amount
FROM windowed
WHERE cnt = 7
ORDER BY visited_on;
