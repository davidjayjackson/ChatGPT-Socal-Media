USE socialmedia
GO 


SELECT * FROM comment;
SELECT * FROM [like];
SELECT * FROM platform;
SELECT * FROM share;
SELECT * FROM [user] ;
SELECT * FROM post
SELECT * FROM follower;


-- 1.	What are the top five posts by number of likes?
SELECT TOP 5 p.post_id, p.post_content, COUNT(l.like_id) as like_count
FROM post p
INNER JOIN [like] l ON p.post_id = l.post_id
GROUP BY p.post_id, p.post_content
ORDER BY like_count DESC;

-- 2.	Which users have the most followers?
SELECT top 5 u.user_id, u.username, COUNT(*) as num_followers
FROM [user] u
INNER JOIN follower f ON u.user_id = f.user_id
GROUP BY u.user_id, u.username
ORDER BY num_followers DESC
;

-- 3.	What is the average age of users on the platform?
SELECT AVG(age) AS average_age
FROM [user];

-- 3A Average for each platform in platform table

SELECT platform_name, AVG(age) AS average_age
FROM [user]
JOIN platform ON [user].platform_id = platform.platform_id
GROUP BY platform_name;

-- 4.	How many comments were made on each post in the last week?
-- Note: not enough date ranges
SELECT post.post_id, COUNT(comment.comment_id) AS comment_count
FROM post
LEFT JOIN comment ON post.post_id = comment.post_id
WHERE comment.comment_date >= DATEADD(WEEK, -1, GETDATE())
GROUP BY post.post_id;
-- Using 2022-01-20 minus 7 days

WITH recent_comments AS (
  SELECT comment.post_id, COUNT(comment.comment_id) AS comment_count, MAX(comment.comment_date) AS max_comment_date
  FROM comment
  WHERE comment.comment_date >= '2022-01-13'
  GROUP BY comment.post_id
)

SELECT post.post_id, post.post_content, recent_comments.comment_count, recent_comments.max_comment_date, comment.comment_content
FROM post
LEFT JOIN recent_comments ON post.post_id = recent_comments.post_id
LEFT JOIN comment ON recent_comments.post_id = comment.post_id AND recent_comments.max_comment_date = comment.comment_date;

-- 5.	Which posts have been shared the most?

SELECT post.post_id, post.post_content, COUNT(share.share_id) AS share_count
FROM post
LEFT JOIN share ON post.post_id = share.post_id
GROUP BY post.post_id, post.post_content
ORDER BY share_count DESC;


-- 6.	How many posts did each user make last month?
SELECT u.username, COUNT(p.post_id) AS post_count
FROM [user] u
JOIN post p ON u.user_id = p.user_id
WHERE p.post_date >= '2022-01-01'
GROUP BY u.username
ORDER BY post_count DESC ;

-- 7.	Which users have not made any posts since  2022-07-20?
SELECT u.username
FROM [user] u
WHERE NOT EXISTS (
    SELECT 1
    FROM post p
    WHERE p.user_id = u.user_id
    AND p.post_date >= '2022-07-20'
);
 -- Last post date for users who have posted in the last month
 SELECT u.username, MAX(p.post_date) AS last_post_date
FROM [user] u
LEFT JOIN post p ON u.user_id = p.user_id
WHERE p.post_date IS NULL OR p.post_date < '2022-07-20'
GROUP BY u.username;

-- 8.	What is the total number of likes, comments, and shares for each post?
SELECT 
    post.post_id, 
    post.post_content, 
    COALESCE(like_count.like_count, 0) AS like_count, 
    COALESCE(comment_count.comment_count, 0) AS comment_count, 
    COALESCE(share_count.share_count, 0) AS share_count
FROM 
    post
    LEFT JOIN (SELECT post_id, COUNT(like_id) AS like_count FROM "like" GROUP BY post_id) AS like_count ON post.post_id = like_count.post_id
    LEFT JOIN (SELECT post_id, COUNT(comment_id) AS comment_count FROM comment GROUP BY post_id) AS comment_count ON post.post_id = comment_count.post_id
    LEFT JOIN (SELECT post_id, COUNT(share_id) AS share_count FROM share GROUP BY post_id) AS share_count ON post.post_id = share_count.post_id


-- 9.	Which posts were made by users from a specific location?
SELECT post.post_id, post.post_content,[user].location
FROM post
JOIN [user]ON post.user_id = [user].user_id
ORDER BY [user].location


-- 10.	What is the most common gender among users on the platform?

SELECT  gender, COUNT(*) AS gender_count
FROM [user]
GROUP BY gender
ORDER BY gender_count DESC;
