-- # Problem Name: Game Play Analysis IV
-- ## LeetCode Link: https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50
----
WITH first_login AS (
  SELECT
    player_id,
    MIN(event_date) AS first_date
  FROM Activity
  GROUP BY player_id
)
SELECT
  ROUND(
    SUM(CASE WHEN a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY) THEN 1 ELSE 0 END)
    / COUNT(DISTINCT f.player_id),
    2
  ) AS fraction
FROM first_login f
LEFT JOIN Activity a
  ON a.player_id = f.player_id
  AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);
