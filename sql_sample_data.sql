-- Insert data into post table

INSERT INTO post (post_id, user_id, platform_id, post_content, post_date)
VALUES 
  (1, 1, 1, 'Just had an amazing workout at the gym!', '2022-01-01'),
  (2, 2, 2, 'Excited to announce the launch of our new product!', '2022-01-02'),
  (3, 3, 3, 'Happy New Year everyone! Here’s to a great 2022', '2022-01-03'),
  (4, 4, 1, 'I love spending time outdoors', '2022-01-04'),
  (5, 5, 2, 'Had a great meeting with the team today', '2022-01-05'),
  (6, 6, 3, 'Who else is excited for the weekend?', '2022-01-06'),
  (7, 7, 1, 'Enjoying a relaxing day at the beach', '2022-01-07'),
  (8, 8, 2, 'Proud to announce that we’ve hit 1 million subscribers!', '2022-01-08'),
  (9, 9, 3, 'I can’t believe it’s already February!', '2022-02-01'),
  (10, 10, 1, 'Spent the day exploring a new city', '2022-02-02'),
  (11, 11, 2, 'Excited to be partnering with a great organization for our next project', '2022-02-03'),
  (12, 12, 3, 'Celebrating Valentine’s Day with my loved ones', '2022-02-14'),
  (13, 13, 1, 'Just finished a great book, any recommendations?', '2022-02-15'),
  (14, 14, 2, 'Had an amazing time at the concert last night', '2022-02-16'),
  (15, 15, 3, 'Looking forward to the warmer weather', '2022-02-17'),
  (16, 16, 1, 'Enjoying a relaxing day at home', '2022-02-18'),
  (17, 17, 2, 'Feeling grateful for all the support from our community', '2022-02-19'),
  (18, 18, 3, 'Just booked a trip to Europe, any travel tips?', '2022-02-20'),
  (19, 19, 1, 'Had a great time at the game last night', '2022-02-21'),
  (20, 20, 2, 'Thrilled to be featured in this month’s issue of the magazine', '2022-02-22');



  -- Insert into comments table
INSERT INTO comment (comment_id, post_id, user_id, comment_content, comment_date)
VALUES
  (1, 1, 1, 'Great post!', '2022-01-01'),
  (2, 1, 2, 'Thanks for sharing!', '2022-01-02'),
  (3, 2, 3, 'I completely agree!', '2022-01-03'),
  (4, 2, 4, 'Nice work!', '2022-01-04'),
  (5, 3, 5, 'This is really helpful!', '2022-01-05'),
  (6, 3, 1, 'Glad you found it useful!', '2022-01-06'),
  (7, 4, 2, 'Could you clarify this part?', '2022-01-07'),
  (8, 4, 3, 'Sure! What specifically are you confused about?', '2022-01-08'),
  (9, 5, 4, 'I never thought of it that way!', '2022-01-09'),
  (10, 5, 5, 'Glad I could provide a new perspective!', '2022-01-10'),
  (11, 6, 1, 'This is amazing!', '2022-01-11'),
  (12, 6, 2, 'Thank you! I worked really hard on it.', '2022-01-12'),
  (13, 7, 3, 'Interesting article!', '2022-01-13'),
  (14, 7, 4, 'Glad you enjoyed it!', '2022-01-14'),
  (15, 8, 5, 'This is so helpful, thank you!', '2022-01-15'),
  (16, 8, 1, 'You''re welcome!', '2022-01-16'),
  (17, 9, 2, 'I love this idea!', '2022-01-17'),
  (18, 9, 3, 'Thanks! I think it has a lot of potential.', '2022-01-18'),
  (19, 10, 4, 'This is great information, thank you for sharing!', '2022-01-19'),
  (20, 10, 5, 'Glad you found it helpful!', '2022-01-20');

  -- Insert data into like table
  INSERT INTO [like] (like_id, post_id, user_id, like_date)
VALUES (1, 1, 1, '2022-02-01'),
       (2, 2, 2, '2022-02-02'),
       (3, 3, 3, '2022-02-03'),
       (4, 4, 4, '2022-02-04'),
       (5, 5, 5, '2022-02-05'),
       (6, 6, 6, '2022-02-06'),
       (7, 7, 7, '2022-02-07'),
       (8, 8, 8, '2022-02-08'),
       (9, 9, 9, '2022-02-09'),
       (10, 10, 10, '2022-02-10'),
       (11, 11, 11, '2022-02-11'),
       (12, 12, 12, '2022-02-12'),
       (13, 13, 13, '2022-02-13'),
       (14, 14, 14, '2022-02-14'),
       (15, 15, 15, '2022-02-15'),
       (16, 16, 16, '2022-02-16'),
       (17, 17, 17, '2022-02-17'),
       (18, 18, 18, '2022-02-18'),
       (19, 19, 19, '2022-02-19'),
       (20, 20, 20, '2022-02-20');

	   -- Share Table

	   INSERT INTO share (share_id, post_id, user_id, share_date)
VALUES (1, 3, 4, '2022-01-01'),
       (2, 6, 1, '2022-01-02'),
       (3, 2, 7, '2022-01-03'),
       (4, 5, 9, '2022-01-04'),
       (5, 1, 3, '2022-01-05'),
       (6, 3, 2, '2022-01-06'),
       (7, 4, 5, '2022-01-07'),
       (8, 2, 8, '2022-01-08'),
       (9, 6, 10, '2022-01-09'),
       (10, 1, 6, '2022-01-10'),
       (11, 4, 7, '2022-01-11'),
       (12, 2, 3, '2022-01-12'),
       (13, 5, 9, '2022-01-13'),
       (14, 1, 4, '2022-01-14'),
       (15, 6, 2, '2022-01-15'),
       (16, 3, 8, '2022-01-16'),
       (17, 4, 10, '2022-01-17'),
       (18, 2, 5, '2022-01-18'),
       (19, 5, 1, '2022-01-19'),
       (20, 1, 9, '2022-01-20');

	   -- Followers table


 
 INSERT INTO follower (follower_id, user_id, follower_name, follow_date) 
VALUES (1, 4, 'John Doe', '2022-01-01'),
       (2, 2, 'Jane Smith', '2022-02-10'),
       (3, 5, 'Alex Johnson', '2022-02-15'),
       (4, 1, 'Bob Brown', '2022-03-05'),
       (5, 3, 'Emily Davis', '2022-03-10'),
       (6, 6, 'David Wilson', '2022-04-20'),
       (7, 4, 'Sarah Lee', '2022-05-01'),
       (8, 2, 'Tom Anderson', '2022-05-05'),
       (9, 1, 'Chris Martin', '2022-06-10'),
       (10, 5, 'Lisa Thompson', '2022-06-25'),
       (11, 3, 'Steven Johnson', '2022-07-10'),
       (12, 6, 'Samantha White', '2022-07-15'),
       (13, 4, 'Michael Wilson', '2022-08-01'),
       (14, 2, 'Rachel Lee', '2022-08-10'),
       (15, 1, 'Jenny Davis', '2022-09-01'),
       (16, 5, 'Samuel Kim', '2022-09-05'),
       (17, 3, 'Olivia Lee', '2022-10-01'),
       (18, 6, 'George Anderson', '2022-10-10'),
       (19, 4, 'Jessica Brown', '2022-11-01'),
       (20, 2, 'Kevin Martin', '2022-11-15');
