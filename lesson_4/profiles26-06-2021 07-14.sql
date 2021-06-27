#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birhday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('101', 'm', '1982-09-16', '1', '2004-12-04 22:50:12', 'West Perry');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('102', 'f', '2006-04-14', '2', '1983-06-03 22:05:28', 'Lennyshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('103', 'f', '1971-08-10', '3', '2006-05-01 19:45:48', 'Adellabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('104', 'm', '1976-09-01', '4', '2000-04-30 11:57:22', 'West Abelshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('105', 'f', '2016-03-01', '5', '2014-05-14 01:19:22', 'New Alvistown');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('106', 'm', '1974-02-13', '6', '2018-01-10 18:36:45', 'Demarcofurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('107', 'm', '1971-08-21', '7', '1985-04-09 23:04:48', 'Sigmundville');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('108', 'm', '2003-10-25', '8', '1972-11-23 14:30:46', 'Lake Zacharymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('112', 'm', '1999-04-21', '12', '1987-05-08 14:01:19', 'North Lee');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('119', 'f', '2000-04-26', '19', '2006-05-23 02:42:15', 'New Harrison');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('120', 'f', '1991-12-16', '20', '1992-08-08 06:02:33', 'Adelineburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('122', 'm', '1988-11-07', '22', '2015-11-17 01:29:24', 'Collierborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('124', 'm', '2016-04-23', '24', '1987-05-11 01:24:30', 'Port Isobel');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('125', 'f', '1982-12-22', '25', '2003-08-26 15:57:08', 'Walkerport');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('127', 'm', '1977-05-28', '27', '2007-04-29 19:39:11', 'Port Johnathonmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('129', 'f', '1985-04-19', '29', '1972-04-04 07:56:04', 'Mireyaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('130', 'm', '1980-10-31', '30', '2020-02-27 13:44:44', 'McKenziefurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('134', 'f', '2008-01-06', '34', '1988-12-29 11:09:47', 'Wilkinsonburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('135', 'm', '2000-07-06', '35', '2013-09-08 00:34:10', 'South Pinkie');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('136', 'm', '2009-02-12', '36', '1971-11-24 18:29:06', 'New Titus');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('138', 'f', '2008-08-29', '38', '2018-12-24 02:37:17', 'Lake Estevan');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('139', 'm', '1996-03-16', '39', '2009-11-10 07:40:41', 'Brannonland');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('140', 'm', '1972-02-25', '40', '2012-10-06 09:14:35', 'Morarstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('141', 'm', '1976-04-24', '41', '1972-10-17 06:20:07', 'Aliyatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('142', 'f', '2017-12-17', '42', '2005-07-04 15:16:55', 'New Vanport');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('143', 'f', '1988-01-02', '43', '1975-11-02 01:39:01', 'New Daphney');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('146', 'f', '1996-11-30', '46', '1977-09-13 13:51:29', 'Ubaldoberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('147', 'f', '2011-09-15', '47', '2002-04-08 20:45:56', 'Hermanhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('151', 'f', '2017-03-19', '51', '1983-04-10 04:51:10', 'New Diego');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('152', 'f', '2000-10-22', '52', '1971-05-02 17:25:02', 'Kuphalmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('154', 'f', '1982-07-26', '54', '1996-08-12 16:58:00', 'Breitenbergside');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('160', 'f', '2001-05-05', '60', '1977-08-12 05:58:33', 'Runteborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('162', 'm', '1983-05-21', '62', '2002-06-22 06:58:21', 'East Dale');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('164', 'f', '1999-06-23', '64', '1979-12-01 01:52:13', 'South Brice');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('166', 'm', '1970-01-24', '66', '2018-11-25 17:41:06', 'Rohanview');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('167', 'm', '2007-07-04', '67', '1970-02-23 00:15:59', 'Tylerberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('168', 'f', '1988-06-18', '68', '2006-04-14 16:57:12', 'Rennerburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('170', 'f', '2016-03-19', '70', '1993-05-08 15:34:39', 'East Aracely');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('172', 'm', '1974-05-02', '72', '2012-04-18 09:47:14', 'Mohrton');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('174', 'm', '1999-04-18', '74', '1979-11-10 16:38:56', 'South Nyah');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('175', 'm', '1971-01-15', '75', '1998-01-09 08:26:48', 'Millsland');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('176', 'm', '2007-06-30', '76', '1995-09-08 14:20:14', 'Blandafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('177', 'm', '1981-08-10', '77', '1990-12-17 19:08:29', 'Tatyanaview');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('179', 'f', '1996-01-14', '79', '1992-11-24 12:24:50', 'Schowaltertown');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('182', 'f', '2021-06-03', '82', '2006-05-21 18:02:29', 'Theresechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('185', 'm', '2005-12-10', '85', '2014-07-07 23:27:04', 'Port Keven');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('186', 'm', '2004-09-16', '86', '2009-04-15 20:45:05', 'West Lynnview');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('187', 'm', '1978-05-01', '87', '2001-08-08 11:05:22', 'Predovictown');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('188', 'm', '2001-10-25', '88', '2009-11-03 04:40:02', 'Port Jazmin');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('189', 'm', '1987-09-29', '89', '1991-11-11 23:13:14', 'Mitchellchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('191', 'f', '1975-09-23', '91', '2010-04-24 02:06:29', 'Port Hubertview');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('193', 'm', '1996-09-25', '93', '1995-10-10 22:16:11', 'Lake Alison');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('194', 'm', '2008-07-03', '94', '1985-05-03 14:08:48', 'New Molliemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('195', 'm', '1980-11-28', '95', '1994-10-25 05:14:50', 'New Dashawn');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('197', 'm', '2020-06-14', '97', '2013-09-15 03:53:01', 'Bashirianfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birhday`, `photo_id`, `created_at`, `hometown`) VALUES ('198', 'm', '1994-03-23', '98', '1986-10-10 04:42:59', 'West Darrell');


