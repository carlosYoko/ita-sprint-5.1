CREATE DATABASE IF NOT EXISTS spotify;
USE spotify;
CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(60) UNIQUE,
  password VARCHAR(60),
  username VARCHAR(60),
  birth_date DATE,
  gender CHAR,
  country VARCHAR(60),
  postal_code INT
);
CREATE TABLE subscriptions (
  subscription_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  start_date DATE,
  renewal_date DATE,
  payment_method VARCHAR(50)
);
CREATE TABLE credit_cards (
  credit_card_id INT AUTO_INCREMENT PRIMARY KEY,
  card_number VARCHAR(20) UNIQUE,
  expiration_month INT,
  expiration_year INT,
  security_code INT
);
CREATE TABLE paypal_accounts (
  paypal_account_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  paypal_username VARCHAR(60)
);
CREATE TABLE payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  subscription_id INT,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id),
  payment_date DATE,
  order_number VARCHAR(60) UNIQUE,
  total_amount FLOAT
);
CREATE TABLE playlists (
  playlist_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(60),
  number_of_songs INT,
  playlist_identifier VARCHAR(60) UNIQUE,
  creation_date DATE,
  is_deleted BOOLEAN,
  deletion_date DATE
);
CREATE TABLE shared_playlists (
  shared_playlist_id INT AUTO_INCREMENT PRIMARY KEY,
  playlist_id INT,
  user_id INT,
  song_added_date DATE,
  FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE albums (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(60),
  release_year INT,
  cover_image VARCHAR(60)
);
CREATE TABLE songs (
  song_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(60),
  duration INT,
  play_count INT,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
CREATE TABLE artists (
  artist_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(60),
  artist_image VARCHAR(60)
);
CREATE TABLE user_follows_artist (
  user_id INT,
  artist_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
CREATE TABLE related_artists (
  related_artists_id INT AUTO_INCREMENT PRIMARY KEY,
  artist_id INT,
  related_artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (related_artist_id) REFERENCES artists(artist_id)
);
CREATE TABLE user_favorites (
  user_favorites_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  song_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
);