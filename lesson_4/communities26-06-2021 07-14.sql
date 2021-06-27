#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'est', '101');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'animi', '102');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'reprehenderit', '103');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'maxime', '104');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'mollitia', '105');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'architecto', '106');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'vel', '107');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'sint', '108');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'qui', '112');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'expedita', '119');


