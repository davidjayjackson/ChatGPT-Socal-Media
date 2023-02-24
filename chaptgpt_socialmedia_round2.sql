USE socialmedia
GO

CREATE TABLE platform (
  platform_id INT PRIMARY KEY,
  platform_name VARCHAR(50) NOT NULL
);

CREATE TABLE user (
  user_id INT PRIMARY KEY,
  platform_id INT NOT NULL,
  username VARCHAR(50) NOT NULL,
  age INT,
  gender VARCHAR(10),
  location VARCHAR(50),
  FOREIGN KEY (platform_id) REFERENCES platform (platform_id)
);

CREATE TABLE post (
  post_id INT PRIMARY KEY,
  user_id INT NOT NULL,
  platform_id INT NOT NULL,
  post_content VARCHAR(500) NOT NULL,
  post_date DATE NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (user_id),
  FOREIGN KEY (platform_id) REFERENCES platform (platform_id)
);

CREATE TABLE like (
  like_id INT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  like_date DATE NOT NULL,
  FOREIGN KEY (post_id) REFERENCES post (post_id),
  FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE comment (
  comment_id INT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  comment_content VARCHAR(500) NOT NULL,
  comment_date DATE NOT NULL,
  FOREIGN KEY (post_id) REFERENCES post (post_id),
  FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE share (
  share_id INT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  share_date DATE NOT NULL,
  FOREIGN KEY (post_id) REFERENCES post (post_id),
  FOREIGN KEY (user_id) REFERENCES user (user_id)
);

-- Added table for followers

CREATE TABLE follower (
  follower_id INT PRIMARY KEY,
  user_id INT NOT NULL,
  follower_name VARCHAR(50) NOT NULL,
  follow_date DATE NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (user_id)
);




