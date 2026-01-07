-- # Problem Name: Exchange Seats
-- ## LeetCode Link: https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50
----
SELECT
  CASE
    WHEN id % 2 = 1 AND id < (SELECT MAX(id) FROM Seat) THEN id + 1
    WHEN id % 2 = 0 THEN id - 1
    ELSE id
  END AS id,
  student
FROM Seat
ORDER BY id;
