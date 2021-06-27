DROP DATABASE vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	firstname varchar(50),
	lastname varchar(50),
	email varchar(120) UNIQUE,
	password_hash varchar(100),
	phone BIGINT UNSIGNED UNIQUE,
	
	INDEX users_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	user_id serial,
	gender char(1),
	birthday date,
	photo_id BIGINT UNSIGNED NULL,
	created_at datetime DEFAULT now(),
	hometown varchar(100)	
);

ALTER TABLE profiles ADD CONSTRAINT fk_user_id
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON UPDATE CASCADE	-- (значение по умолчанию)
	ON DELETE RESTRICT;	-- (значение по умолчанию)
	
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id serial,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	created_at datetime DEFAULT now(),
	
	FOREIGN KEY (from_user_id) REFERENCES users(id),
	FOREIGN KEY (to_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	id serial,
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	status enum('requested', 'approved', 'declined','unfriended'),
	requested_at datetime DEFAULT now(),
	updated_at datetime ON UPDATE current_timestamp,
	
	-- PRIMARY KEY (initiator_user_id, target_user_id),
	FOREIGN KEY (initiator_user_id) REFERENCES users(id),
	FOREIGN KEY (target_user_id) REFERENCES users(id)
);

ALTER TABLE friend_requests
ADD CHECK (initiator_user_id <> target_user_id);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities (
	id serial,
	name varchar(150),
	admin_user_id BIGINT UNSIGNED NOT NULL,
	
	INDEX communities_name_idx(name),
	FOREIGN KEY (admin_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities (
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (user_id, community_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (community_id) REFERENCES communities(id)
);

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
	id serial,
	name varchar(255),
	created_at datetime DEFAULT now(),
	updated_at datetime ON UPDATE current_timestamp
);

DROP TABLE IF EXISTS media;
CREATE TABLE media (
	id serial,
	media_type_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	body text,
	filename varchar(255),
	SIZE INT,
	metadata JSON,
	created_at datetime DEFAULT now(),
	updated_at datetime ON UPDATE current_timestamp,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
	id serial,
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	created_at datetime DEFAULT now(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS photo_albums;
CREATE TABLE photo_albums (
	id serial,
	name varchar(255) DEFAULT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id serial,
	album_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

/*ALTER TABLE vk.likes
ADD CONSTRAINT likes_fk
FOREIGN KEY (media_id) REFERENCES vk.media(id);

ALTER TABLE vk.likes
ADD CONSTRAINT likes_fk_1
FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE vk.profiles 
ADD CONSTRAINT profiles_fk_1
FOREIGN KEY (photo_id) REFERENCES media(id);*/