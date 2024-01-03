CREATE DATABASE IF NOT EXISTS youtube;
USE youtube;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(60) UNIQUE,
    password VARCHAR(60),
    user_name VARCHAR(60),
    birthdate DATE,
    gender VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(20)
);
CREATE TABLE videos (
    video_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(30),
    description TEXT,
    size FLOAT,
    file_name VARCHAR(60),
    duration FLOAT,
    thumbnail VARCHAR(60),
    views INT,
    likes INT,
    dislikes INT,
    status ENUM('public', 'hidden', 'private'),
    upload_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30)
);
CREATE TABLE video_tags (
    video_id INT,
    tag_id INT,
    PRIMARY KEY (video_id, tag_id),
    FOREIGN KEY (video_id) REFERENCES videos(video_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id)
);
CREATE TABLE channels (
    channel_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    channel_name VARCHAR(60),
    description TEXT,
    creation_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE subscriptions (
    user_id INT,
    channel_id INT,
    subscription_date DATETIME,
    PRIMARY KEY (user_id, channel_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (channel_id) REFERENCES channels(channel_id)
);
CREATE TABLE video_likes_dislikes (
    user_id INT,
    video_id INT,
    type ENUM('like', 'dislike'),
    action_date DATETIME,
    PRIMARY KEY (user_id, video_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
CREATE TABLE playlists (
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(60),
    creation_date DATE,
    status ENUM('public', 'private'),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    video_id INT,
    comment_text TEXT,
    comment_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
CREATE TABLE comment_likes_dislikes (
    user_id INT,
    comment_id INT,
    type ENUM('like', 'dislike'),
    action_date DATETIME,
    PRIMARY KEY (user_id, comment_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id)
);