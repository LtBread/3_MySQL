#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('101', 'Franco', 'Littel', 'fritsch.mya@example.org', '766da9e0db63c880fd0b99778bf2a5dc2611904a', '457');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('102', 'Mayra', 'Kozey', 'priscilla.strosin@example.com', '22d366228c43355e0237339536e5d9c3a41f9292', '815835');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('103', 'Henriette', 'Bins', 'jules09@example.net', '8c77be65675f3f682cdd9d5ab4cc3f66867bb279', '873');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('104', 'Libby', 'Jacobson', 'belle.mohr@example.com', 'f9438e9b26967ac2ac1cb331d97c65f6525eeb53', '598');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('105', 'Lela', 'Stamm', 'braden59@example.net', '84fd036ce58467581f62faa37a65440f087bfa18', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('106', 'Verner', 'Boyer', 'myah53@example.com', 'bd8db163d1e3d0aeeeff4e29d20222155ce657cc', '863');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('107', 'Mercedes', 'Fadel', 'robyn.kulas@example.org', 'fd90ff761fae2f6cfc9188b639f7e41d20512884', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('108', 'Lauriane', 'Witting', 'fcummerata@example.org', 'b51db2cd826bfda8f11935530639a5f650e7b1f7', '758');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('112', 'Geovany', 'Greenfelder', 'apowlowski@example.com', '2cb31fba618332ce6463f4960b1ca7a1d3c6c1a7', '313578');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('119', 'Krista', 'Hessel', 'lmarks@example.net', '1d40e5b775c6e8a1cf151cafe74cf3324eb15230', '923125');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('120', 'Kaleb', 'Turner', 'isabella.kuhn@example.org', '5b9b5aa724d1f08ad02d9aa84536eec099aa8baa', '555713');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('122', 'Heath', 'Kub', 'sschneider@example.org', '0cdcef8bd95d54e3e65ba1c0f231a7497fcef965', '119681852');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('124', 'Domenick', 'Parisian', 'bria.hartmann@example.net', '961f17466212922e7d9c65e6b2280733c3b116a2', '144');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('125', 'Maybelle', 'Gulgowski', 'rod.aufderhar@example.com', '842f108759d6bc97a96e39024d6e6e7b3f79aac2', '196041');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('127', 'Jedediah', 'Ondricka', 'bria22@example.org', '798195bff91d42beec417479040fc1546f513610', '798558');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('129', 'Jaron', 'Dietrich', 'hills.carlee@example.com', '62ea1db1432e4fa270a5b088fb5bf8089d91c723', '242791');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('130', 'Trinity', 'Stoltenberg', 'medhurst.ena@example.com', 'dfcf389d5014ad47765a8a64f87be4dc6d6ce55d', '408520');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('134', 'Edgardo', 'Conn', 'teagan.doyle@example.net', '35df4b4dec66d7362b46f0e956c1c1f252fb71d4', '585290');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('135', 'Anne', 'Williamson', 'ortiz.arielle@example.org', '27b4d6ad69ba5db9b3b76d623ca9a61c5fca7f13', '571831');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('136', 'Rosemarie', 'Herzog', 'daron.huels@example.org', '0f5e577fa15c857d7fc43dc1d097bed97800edee', '959');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('138', 'Rosendo', 'Abbott', 'trantow.brandon@example.org', 'b29dc342219261eeae5a2848a52bec6c9d1088ad', '572037');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('139', 'Eriberto', 'Maggio', 'cassin.albertha@example.org', '81f2874ef80cb4b55361057c638f04834f6ecb01', '169');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('140', 'Harry', 'Bogan', 'tianna.hegmann@example.net', 'bea50ed58e24a5ff7e0e09e53ce0ed42034db7d8', '306');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('141', 'Matt', 'Pfeffer', 'abergnaum@example.org', '4672dc9745bd226f8335cebc0a675d840eceb3b4', '870371');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('142', 'Kelsi', 'Lebsack', 'janis.gerhold@example.com', '3308e891175923e1ebdfd5acb60c0171fa09dce1', '80');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('143', 'Freddy', 'King', 'mckenzie.chelsey@example.net', '7cbdacdee8adca5cc52addd65ff020d3da1ecfd7', '9179532976');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('146', 'Ollie', 'Graham', 'uskiles@example.com', '1ed9460ba3f0f718a07795c23876afaeb342318a', '8141847306');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('147', 'Eladio', 'Murphy', 'wschamberger@example.com', '5c245971882ff19e4fb9bb978ff6a0cf179467cb', '711');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('151', 'Emily', 'Howell', 'roy.gutmann@example.net', 'ec731db48da7bf2cd3330b908048a46bd230c787', '87');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('152', 'Genoveva', 'Kreiger', 'orn.madison@example.com', '8698ab9f84ba1db2999a68165ccdd60fc1f466a3', '150');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('154', 'Brady', 'Bednar', 'hilda.dickinson@example.net', '7c83c9d8a5449d73a421760203a8a2d68995f430', '658');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('160', 'Rashad', 'Gusikowski', 'camden85@example.com', '5f6d059db8ef82d38d3863f200543c742554c171', '924');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('162', 'Wilhelmine', 'Grimes', 'zhowell@example.com', 'f061a2af9d1c3f48bed6a205d13a6817ca6b6db6', '844');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('164', 'Martine', 'Bahringer', 'o\'kon.lesly@example.org', '60506c2b71beb6f93f877bb6db040813e71568f7', '910');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('166', 'Christopher', 'Ward', 'monty.armstrong@example.com', '96599d4fea26828936594687ea854c22fc3dbed5', '956');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('167', 'Jacynthe', 'Schimmel', 'kschumm@example.net', '335b88017435dab74d2fd1eb857946e2c2cd7a81', '83');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('168', 'Jake', 'Mueller', 'kuhic.lilian@example.net', 'a297b07f979c4564786ac471a5f76dc309866cd1', '646');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('170', 'Cullen', 'Rippin', 'iweissnat@example.net', '3969475adbfc340428f63dae82ab569599984670', '172');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('172', 'Zoie', 'Bosco', 'ohayes@example.net', '06a3fe4d5be3552414b25e6ce7f9c2d367bbc4b9', '467134');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('174', 'Paige', 'Zieme', 'pfeffer.lelah@example.org', '49bb29753676430411e800734d3b63c8e87e87de', '803');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('175', 'Eunice', 'Kunze', 'caitlyn30@example.org', '2d48af7c97b5a1b7d0e893cdf0c5c50b73ec305f', '4773205412');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('176', 'Isaac', 'Lind', 'wunsch.henriette@example.org', '47ba8f85bfa9f8f0029f1ad3355711827c082e7c', '4883929131');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('177', 'Webster', 'Haley', 'dwaters@example.net', '5b56f294af7abf2b0a96f4eb60b0ba3160e08878', '43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('179', 'Lessie', 'Murray', 'rlang@example.com', '53989a3c455d506484d8c6237efb0fa01199c9a8', '343955');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('182', 'Angus', 'Balistreri', 'zraynor@example.org', '169a20249e54b7db5b963a193ec35e86191f0873', '9179381421');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('185', 'Melody', 'Mills', 'ucruickshank@example.net', 'efa9420685db551053a97d10f7d29dd2b6a4011d', '724');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('186', 'Deanna', 'Parisian', 'zmcglynn@example.com', '10c055261c28d28ca89cbddf2fd14d3d0d6f5b11', '315749');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('187', 'Devonte', 'Rice', 'vesta02@example.com', '0e95b08bf3346fa7a7ae2751cc1f923ab5fb6260', '384742224');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('188', 'Geovanny', 'Deckow', 'marjorie.jast@example.net', 'cc78e7361382f868f95cf98b8e8636b4940052fb', '992237');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('189', 'Misty', 'Kuhn', 'bessie.nader@example.com', 'e5fb232a89e91f4c303032b860371d257898d68f', '749');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('191', 'Elias', 'Zulauf', 'marcelino.fritsch@example.net', '00eed625f53f5e16070a595b6951e991e84558eb', '388119675');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('193', 'Laura', 'McClure', 'edward01@example.com', '033cf3333d75354e115ef177d1245e643963f21f', '90412');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('194', 'Octavia', 'Mohr', 'eldridge08@example.net', 'bdd38c5c5efc190d8c52abd9d718a829af61d14e', '945');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('195', 'Amaya', 'Jakubowski', 'easton24@example.net', 'ae67542693188f47aaf38dceb05a633c527e6cd0', '690460');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('197', 'Oceane', 'Powlowski', 'ydooley@example.net', '28bda74be644de293f32de0afe5f041d401235ee', '771');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('198', 'Gisselle', 'Reichert', 'armani.bailey@example.org', 'd243e95368d40ac8cb809932c97ca6d412497058', '713770535');


