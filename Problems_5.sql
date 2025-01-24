-- # Problem Name: Invalid Tweets
-- ## LeetCode Link: https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
-- 
----
SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content) > 15;
