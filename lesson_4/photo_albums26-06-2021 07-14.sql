#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'deleniti', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'enim', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'laboriosam', '103');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'optio', '104');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'consequuntur', '105');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'veniam', '106');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'exercitationem', '107');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'beatae', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'culpa', '112');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'consequatur', '119');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'qui', '120');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'aut', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'repudiandae', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'maiores', '125');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'voluptatibus', '127');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'officia', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'consequatur', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'consectetur', '134');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'tenetur', '135');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'optio', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quaerat', '138');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'aut', '139');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'dolorum', '140');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'facere', '141');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'dolorem', '142');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'voluptatem', '143');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'sit', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'et', '147');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'quibusdam', '151');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'aut', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'maxime', '154');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'et', '160');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'rerum', '162');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'eaque', '164');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'est', '166');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'doloremque', '167');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'facilis', '168');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'eaque', '170');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'voluptatem', '172');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'aut', '174');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'voluptatum', '175');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'sed', '176');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'repellat', '177');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'fuga', '179');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'maiores', '182');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'et', '185');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'dolorem', '186');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'soluta', '187');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'facilis', '188');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'ipsum', '189');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'nostrum', '191');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'mollitia', '193');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'cumque', '194');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'et', '195');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'est', '197');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'aspernatur', '198');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'et', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'possimus', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'consequatur', '103');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'omnis', '104');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'soluta', '105');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'laborum', '106');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'nam', '107');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'sit', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'at', '112');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'corrupti', '119');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'sint', '120');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'non', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'voluptatem', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'et', '125');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'quia', '127');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'ut', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'error', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'exercitationem', '134');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'voluptatibus', '135');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'qui', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'eius', '138');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'quam', '139');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'aut', '140');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'repellendus', '141');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'et', '142');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'omnis', '143');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'qui', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'placeat', '147');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'rerum', '151');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'dicta', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'consequuntur', '154');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'et', '160');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'dolorem', '162');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'et', '164');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'magnam', '166');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'autem', '167');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'odit', '168');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'quia', '170');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'magni', '172');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'sint', '174');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'nulla', '175');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'quis', '176');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'assumenda', '177');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'sit', '179');


