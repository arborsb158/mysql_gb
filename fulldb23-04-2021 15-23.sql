#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'autem', '2016-01-04 08:39:40', '2013-04-05 20:44:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'excepturi', '2019-07-16 17:26:27', '2019-01-12 17:55:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'odio', '2013-07-13 15:17:44', '2019-11-24 07:14:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'aspernatur', '2014-09-13 21:31:21', '2020-07-26 19:49:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'consequuntur', '2017-03-10 22:25:45', '2020-05-31 11:06:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'quam', '2017-03-31 06:50:58', '2016-10-29 10:09:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'est', '2012-01-11 16:35:24', '2016-04-17 17:43:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'provident', '2014-07-06 22:18:06', '2020-02-07 04:03:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'non', '2011-11-04 20:23:38', '2013-12-10 15:05:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'eaque', '2013-08-01 03:52:13', '2013-09-07 22:08:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'neque', '2014-06-26 12:48:39', '2012-08-07 16:52:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'adipisci', '2019-11-25 17:26:47', '2014-08-08 16:35:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'ex', '2016-07-26 19:32:04', '2012-06-30 21:54:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'quae', '2016-10-01 07:50:43', '2014-11-20 11:06:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'qui', '2014-07-28 08:49:30', '2016-10-13 03:51:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'et', '2013-08-09 22:00:49', '2016-07-30 17:21:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'consequatur', '2017-05-28 17:51:38', '2016-07-27 13:49:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'ab', '2012-07-03 09:22:39', '2014-03-15 12:08:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'placeat', '2011-07-06 06:28:50', '2015-10-24 12:03:05');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 9, '2016-05-18 04:08:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 32, '2020-10-27 17:47:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 60, '2011-05-23 03:29:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 81, '2019-10-25 07:07:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 2, '2012-06-05 19:53:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 18, '2015-11-28 17:02:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 90, '2014-10-20 22:53:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 41, '2018-11-08 18:50:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 51, '2012-10-08 22:13:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 90, '2016-02-19 23:19:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 94, '2013-12-05 13:20:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 1, '2016-05-04 09:19:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 34, '2017-12-06 13:24:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 39, '2014-06-05 13:23:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 65, '2012-07-31 23:17:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 80, '2017-09-18 10:10:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 82, '2018-09-25 09:24:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 98, '2017-09-10 05:51:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 15, '2015-09-05 01:10:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 69, '2012-05-23 04:33:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 77, '2013-06-26 23:36:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 90, '2020-04-16 08:55:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 94, '2014-02-07 22:06:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 100, '2019-05-18 03:29:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 23, '2015-11-28 13:23:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 49, '2020-01-15 03:56:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 51, '2013-08-01 14:24:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 67, '2019-09-29 05:02:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 13, '2012-06-23 17:26:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 25, '2012-12-25 05:24:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2015-11-13 22:03:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 45, '2013-07-29 11:01:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 53, '2017-09-08 01:52:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 64, '2019-02-05 01:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 67, '2015-08-24 00:01:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 7, '2018-01-06 09:02:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 31, '2015-10-31 20:05:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 49, '2017-10-21 13:57:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 57, '2016-09-30 12:21:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 78, '2019-08-02 08:19:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 4, '2017-11-21 22:40:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 8, '2019-02-13 07:27:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 22, '2014-10-06 09:44:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 25, '2013-05-17 05:05:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 56, '2011-12-23 20:48:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 70, '2021-03-07 18:55:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 85, '2017-02-09 00:48:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 93, '2020-08-16 19:27:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 4, '2016-05-02 12:25:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 69, '2011-12-26 14:36:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 82, '2014-01-25 01:20:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 12, '2020-03-26 08:07:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 31, '2020-07-26 09:22:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 44, '2020-06-15 12:14:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 58, '2019-10-04 02:52:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 22, '2017-09-01 09:23:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 95, '2019-02-12 16:59:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 7, '2012-04-02 13:50:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 44, '2016-07-15 10:27:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 45, '2019-05-28 05:53:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 50, '2013-01-23 00:26:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 56, '2014-09-03 10:10:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 9, '2013-07-08 20:29:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 19, '2018-11-10 05:38:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 23, '2015-04-05 17:11:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 43, '2017-07-02 19:08:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 78, '2019-10-27 16:35:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 95, '2011-06-21 15:08:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 58, '2014-10-12 03:33:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 68, '2019-01-16 10:33:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 75, '2012-01-19 14:48:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 9, '2012-05-30 13:01:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 23, '2011-05-01 23:56:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 52, '2018-08-13 08:16:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 58, '2012-03-29 07:33:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 62, '2011-10-04 08:21:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 85, '2016-03-22 07:16:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 100, '2018-01-16 00:14:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 28, '2012-05-20 22:11:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 30, '2012-07-12 14:34:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 32, '2014-06-20 11:15:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 58, '2020-10-16 11:56:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 86, '2011-09-05 04:47:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 9, '2012-01-08 14:20:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 17, '2018-03-26 08:46:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 23, '2014-03-24 18:10:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 32, '2013-05-03 23:33:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 36, '2020-11-24 19:59:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 73, '2018-05-31 17:56:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 81, '2012-04-13 17:00:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 19, '2020-09-29 17:10:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 20, '2011-10-14 23:36:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 24, '2016-06-06 04:10:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 38, '2013-04-13 03:18:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 47, '2020-12-01 20:17:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 78, '2016-07-13 11:40:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 82, '2012-05-05 07:11:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 91, '2014-06-11 19:49:15');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 2, 0, '2012-02-04 04:33:25', '2012-10-10 01:32:32', '2016-12-10 17:02:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 9, 0, '2020-01-23 06:16:21', '2017-05-13 09:51:39', '2020-05-18 21:40:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 11, 0, '2016-11-11 05:34:19', '2019-02-01 16:13:21', '2020-08-17 06:33:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 59, 1, '2014-12-12 19:34:24', '2012-12-26 12:39:49', '2020-08-25 10:22:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 48, 0, '2020-02-07 19:29:54', '2016-03-17 00:27:33', '2019-10-07 19:22:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 80, 1, '2016-02-19 22:31:05', '2020-07-07 10:39:02', '2017-03-21 23:59:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 89, 0, '2017-12-03 06:24:08', '2017-05-24 04:49:24', '2013-04-28 06:39:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 5, 0, '2018-11-20 23:07:02', '2020-01-28 07:47:26', '2018-01-23 18:49:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 48, 1, '2012-06-19 08:07:09', '2019-10-16 22:11:15', '2018-01-28 22:07:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 26, 0, '2014-01-28 08:40:30', '2016-06-24 12:50:30', '2015-03-17 16:04:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 86, 0, '2016-04-12 23:12:22', '2017-02-12 10:46:32', '2020-08-26 07:43:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 97, 0, '2020-05-26 22:20:01', '2016-04-29 13:24:57', '2016-04-06 13:12:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 89, 1, '2017-10-22 09:48:33', '2015-04-07 07:59:34', '2013-05-28 01:54:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 39, 1, '2018-10-31 23:54:13', '2012-12-09 06:56:36', '2013-12-06 10:14:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 44, 1, '2012-03-16 07:22:04', '2017-08-24 08:22:01', '2014-04-12 05:29:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 54, 0, '2021-01-03 01:53:54', '2015-09-05 05:59:56', '2021-03-11 04:39:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 89, 0, '2020-07-29 15:08:25', '2012-10-16 06:55:41', '2014-02-01 02:01:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 97, 1, '2018-09-01 14:45:48', '2013-08-03 11:15:36', '2015-06-09 01:43:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 25, 0, '2019-07-04 03:58:33', '2018-07-05 11:00:21', '2016-04-24 10:46:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 26, 0, '2014-02-05 11:58:48', '2016-12-24 15:31:10', '2012-12-23 21:40:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 20, 1, '2013-11-24 08:31:06', '2017-01-27 15:11:26', '2016-10-26 23:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 98, 1, '2014-03-26 14:44:49', '2017-04-18 08:16:06', '2016-01-20 15:15:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 12, 0, '2013-08-10 22:03:13', '2016-02-10 05:48:37', '2013-08-25 15:51:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 10, 1, '2015-02-12 07:55:55', '2017-08-11 00:32:54', '2011-09-15 19:26:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 28, 0, '2017-05-26 13:11:58', '2018-07-19 08:12:20', '2015-12-13 07:45:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 13, 1, '2015-11-25 04:31:53', '2014-05-30 03:18:45', '2013-03-20 12:55:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 77, 1, '2012-08-09 14:11:12', '2016-04-22 03:33:50', '2011-06-15 20:35:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 36, 1, '2012-12-11 08:10:17', '2011-06-02 06:57:54', '2013-01-15 06:32:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 18, 0, '2020-04-25 18:59:44', '2011-10-30 06:30:28', '2020-02-26 17:50:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 46, 1, '2011-08-23 19:46:14', '2019-03-31 06:33:38', '2014-11-17 09:32:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 60, 1, '2020-10-05 04:19:25', '2016-11-15 10:03:09', '2014-12-04 02:34:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 37, 1, '2015-11-29 04:37:45', '2017-06-10 21:04:38', '2014-01-06 02:20:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 65, 1, '2021-04-09 10:34:19', '2017-07-20 11:46:25', '2012-09-22 08:37:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 100, 1, '2018-04-17 14:05:01', '2016-09-19 04:15:35', '2018-08-23 01:29:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 43, 1, '2011-05-07 01:30:08', '2018-10-07 21:31:27', '2020-06-26 05:00:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 81, 1, '2015-03-29 00:34:39', '2017-08-23 13:43:16', '2014-03-31 19:22:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 39, 0, '2018-05-24 23:18:18', '2012-10-17 03:27:02', '2016-09-06 20:11:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 48, 0, '2019-11-04 15:20:49', '2018-10-12 05:55:29', '2016-07-30 16:03:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 45, 1, '2012-09-03 00:07:00', '2016-11-29 05:32:36', '2019-02-22 22:15:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 68, 1, '2019-10-07 23:07:40', '2020-09-02 01:08:32', '2016-05-10 06:52:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 98, 0, '2013-10-18 14:37:41', '2019-08-17 02:39:01', '2015-12-28 10:04:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 21, 0, '2018-04-17 19:11:14', '2011-07-02 22:11:44', '2013-06-16 16:49:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 43, 0, '2017-08-27 15:01:15', '2020-04-02 23:24:11', '2012-03-24 21:14:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 70, 1, '2012-08-22 14:33:07', '2018-05-21 14:21:37', '2018-04-07 03:02:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 57, 0, '2013-09-03 07:35:42', '2013-05-28 10:14:44', '2015-09-19 00:02:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 74, 1, '2016-12-15 22:55:34', '2017-04-21 06:36:29', '2016-09-17 17:56:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 42, 0, '2016-07-22 03:11:09', '2012-01-30 16:59:15', '2020-08-18 12:21:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 21, 1, '2013-02-05 23:44:35', '2020-01-04 20:44:57', '2013-04-27 08:43:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 76, 0, '2018-09-21 09:47:54', '2013-04-23 04:06:08', '2014-06-20 14:07:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 5, 1, '2014-10-28 17:42:56', '2015-07-21 12:17:39', '2017-09-27 09:38:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 14, 1, '2012-09-08 08:00:27', '2014-06-28 18:56:01', '2016-11-26 04:22:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 62, 1, '2020-06-19 23:33:27', '2012-04-12 17:32:00', '2013-02-23 10:53:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 36, 1, '2018-06-02 05:18:00', '2016-07-13 11:42:53', '2016-02-03 07:45:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 1, 0, '2015-02-18 13:39:49', '2013-10-15 14:41:44', '2014-02-12 15:08:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 68, 0, '2015-09-08 18:18:22', '2020-11-27 06:52:31', '2015-01-19 13:37:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 39, 1, '2014-08-07 10:28:47', '2014-02-27 06:18:28', '2012-01-28 09:05:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 66, 0, '2014-05-03 14:46:49', '2013-08-20 18:50:18', '2018-01-12 20:21:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 43, 1, '2018-10-09 13:58:15', '2013-09-01 05:38:48', '2016-03-18 22:45:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 4, 1, '2018-07-14 15:24:46', '2018-06-30 12:33:06', '2021-02-27 16:14:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 83, 1, '2011-12-03 08:51:35', '2013-05-17 07:42:47', '2018-06-22 03:24:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 72, 0, '2019-08-01 21:25:51', '2014-08-15 23:57:00', '2016-09-16 01:53:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 83, 1, '2011-12-15 21:44:33', '2015-08-27 16:53:22', '2019-01-27 14:44:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 42, 0, '2012-06-01 01:06:22', '2020-07-01 11:47:47', '2013-07-13 07:41:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 49, 1, '2019-09-22 23:57:37', '2020-07-03 03:30:03', '2011-07-19 17:25:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 82, 0, '2020-08-01 00:33:16', '2017-12-19 00:04:14', '2013-12-15 10:58:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 57, 0, '2020-12-13 21:56:45', '2017-09-18 13:06:25', '2018-04-19 23:09:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 90, 1, '2020-07-07 13:55:59', '2017-01-02 07:18:43', '2016-03-18 13:48:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 47, 1, '2018-07-25 14:31:22', '2014-09-20 04:19:34', '2019-02-14 16:09:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 88, 1, '2016-06-16 03:45:56', '2014-09-09 07:44:16', '2019-08-23 01:45:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 29, 0, '2012-04-17 04:29:05', '2013-04-07 17:16:30', '2016-10-08 02:56:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 32, 0, '2013-03-25 13:52:10', '2015-07-12 01:15:01', '2013-08-25 21:27:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 22, 0, '2016-10-23 18:05:06', '2013-04-19 23:09:11', '2018-05-16 22:08:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 59, 1, '2017-06-09 19:44:16', '2021-01-08 13:29:41', '2013-11-13 23:21:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 97, 0, '2015-09-25 18:35:54', '2019-05-14 03:35:43', '2016-06-25 10:26:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 74, 1, '2016-09-03 10:38:48', '2012-03-22 01:11:38', '2015-09-05 15:44:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 91, 0, '2019-01-08 17:36:09', '2019-09-16 21:07:07', '2017-10-21 10:59:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 7, 1, '2017-12-07 08:57:09', '2012-05-23 16:36:28', '2012-08-20 02:41:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 79, 0, '2021-02-08 10:47:11', '2012-07-13 12:30:04', '2021-01-01 23:32:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 55, 0, '2016-11-14 06:07:20', '2020-04-25 03:40:17', '2020-03-09 19:01:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 41, 0, '2019-04-11 19:11:59', '2019-09-09 08:37:41', '2016-06-19 00:42:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 57, 0, '2015-03-07 04:43:19', '2013-09-29 03:02:43', '2020-07-16 18:20:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 20, 1, '2019-12-20 05:48:13', '2016-08-29 07:13:07', '2018-09-10 13:17:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 35, 0, '2018-01-19 08:48:59', '2017-03-09 17:50:39', '2014-09-20 11:06:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 26, 0, '2015-05-13 16:11:12', '2018-10-28 20:15:38', '2016-04-18 14:22:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 37, 1, '2020-12-01 15:33:41', '2019-08-03 01:11:55', '2013-09-08 13:20:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 43, 0, '2018-05-07 06:55:54', '2021-01-05 00:02:21', '2018-09-20 13:41:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 38, 1, '2016-05-10 14:20:48', '2019-07-29 18:20:33', '2011-07-27 14:48:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 99, 0, '2015-07-01 05:22:55', '2014-09-02 07:13:31', '2013-09-13 18:26:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 51, 0, '2011-08-08 01:26:12', '2016-10-30 18:28:41', '2017-02-17 20:20:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 77, 0, '2015-12-09 08:57:10', '2020-02-03 00:18:12', '2015-10-21 04:57:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 80, 0, '2020-12-24 01:43:10', '2016-11-19 05:50:41', '2014-09-30 05:40:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 20, 0, '2017-10-19 16:59:11', '2017-06-07 14:43:19', '2020-05-16 11:27:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 37, 0, '2019-12-27 16:41:01', '2012-01-31 22:32:35', '2013-05-23 00:35:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 10, 1, '2016-08-05 08:32:18', '2019-05-25 11:09:26', '2013-08-03 04:54:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 11, 1, '2016-11-12 23:52:29', '2013-01-10 18:34:52', '2018-09-20 16:35:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 80, 1, '2014-08-12 11:55:03', '2018-11-17 22:51:52', '2013-05-31 05:47:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 29, 1, '2011-10-15 11:42:51', '2017-10-10 01:11:11', '2014-07-02 14:48:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 67, 1, '2013-03-14 08:10:07', '2014-11-30 19:27:06', '2018-06-09 16:22:54');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, '1', '2017-12-14 17:29:38', '2013-10-03 23:40:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, '', '2016-06-08 21:03:41', '2012-03-30 03:34:06');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 82, 'cupiditate', 1120378, '53707649', 2, '2018-09-02 15:34:49', '2019-08-03 12:19:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 83, 'voluptas', 4922369, '557908', 2, '2018-05-10 17:15:39', '2013-01-25 00:27:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 99, 'molestiae', 0, '974607', 2, '2016-11-04 15:13:18', '2012-03-08 08:38:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 4, 'ea', 331380, '307', 1, '2017-12-04 13:55:24', '2013-12-13 00:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 57, 'ducimus', 503698442, '2793678', 3, '2014-07-26 21:35:13', '2018-03-25 11:24:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 33, 'minima', 96213, '3913', 1, '2012-10-02 02:39:23', '2011-12-18 13:52:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 60, 'necessitatibus', 175542, '7233', 3, '2020-06-08 04:40:01', '2011-11-05 23:33:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 22, 'ullam', 127597, '2', 3, '2016-03-06 23:31:48', '2019-04-18 12:21:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 5, 'saepe', 8560457, '95082472', 2, '2011-11-05 19:23:21', '2014-08-18 07:59:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 35, 'molestiae', 760509, '83554', 2, '2012-01-17 14:04:38', '2020-04-11 02:55:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 28, 'ut', 52, '87850', 1, '2011-09-24 22:15:45', '2015-11-21 10:40:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 95, 'qui', 0, '9', 1, '2012-01-28 17:05:18', '2016-07-15 09:01:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 100, 'necessitatibus', 612751080, '35', 3, '2017-09-12 17:57:06', '2014-10-25 04:11:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 58, 'voluptatum', 3, '7189', 2, '2018-01-07 15:55:45', '2020-09-05 00:45:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 79, 'perferendis', 0, '68020', 1, '2019-11-06 18:27:38', '2012-10-05 08:14:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 85, 'ab', 5686945, '1080', 2, '2021-04-22 06:12:41', '2011-12-10 19:54:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 70, 'reprehenderit', 833324819, '6', 3, '2014-07-10 19:08:54', '2012-01-14 21:39:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 9, 'eveniet', 2, '9829', 1, '2012-04-06 15:14:08', '2012-07-13 04:12:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 91, 'nemo', 657201, '138', 2, '2015-07-22 11:19:27', '2020-05-02 00:33:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 5, 'dolore', 126808932, '562', 1, '2018-12-25 14:55:18', '2016-10-26 17:07:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 75, 'dolorum', 291475, '35', 2, '2016-05-13 19:07:00', '2012-05-24 02:39:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 96, 'eveniet', 0, '29227', 3, '2013-07-08 08:57:56', '2019-01-10 20:47:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 41, 'eum', 9107, '316883065', 1, '2021-02-24 02:29:49', '2020-09-13 09:59:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 32, 'laudantium', 9289, '495747', 3, '2013-08-13 04:29:42', '2011-06-07 17:50:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 53, 'est', 469688, '21', 2, '2011-10-11 12:50:45', '2018-03-04 03:59:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 86, 'sed', 62497, '69321', 2, '2012-08-29 07:07:53', '2016-08-14 13:55:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 93, 'animi', 5826925, '1', 3, '2020-10-26 00:40:10', '2016-10-06 05:22:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 48, 'non', 8, '101351', 2, '2014-08-03 19:31:43', '2020-04-10 20:35:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 43, 'et', 8, '91482', 1, '2020-02-25 11:43:21', '2020-06-14 20:23:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 65, 'laudantium', 30941, '5117', 1, '2020-10-07 06:00:22', '2012-02-13 18:00:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 86, 'sunt', 795160285, '57997637', 2, '2021-04-14 10:49:03', '2012-09-07 12:04:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 95, 'sint', 77, '7', 1, '2019-01-17 15:28:23', '2013-09-05 19:58:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 3, 'inventore', 43348, '665983734', 1, '2020-10-10 02:02:44', '2019-01-14 08:18:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 32, 'consequuntur', 566957327, '9411', 3, '2014-11-05 16:00:39', '2020-11-14 23:36:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 68, 'et', 1532, '2465845', 2, '2019-07-28 06:47:11', '2014-05-12 13:10:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 16, 'numquam', 8644, '90835', 2, '2014-11-28 17:42:24', '2018-07-16 19:38:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 100, 'illum', 1459, '4', 1, '2019-07-29 11:24:50', '2019-11-13 04:48:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 12, 'dolor', 0, '7739', 3, '2013-07-14 07:30:58', '2019-01-21 18:55:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 16, 'neque', 4677, '32093', 2, '2014-01-17 11:19:00', '2012-07-15 11:52:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 29, 'fuga', 9042, '323', 1, '2011-07-15 12:55:15', '2016-09-28 21:20:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 13, 'voluptatem', 418815515, '3', 1, '2020-09-02 10:55:01', '2016-10-02 00:31:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 87, 'eius', 11314158, '8', 2, '2015-09-08 22:45:33', '2018-04-21 20:08:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 72, 'voluptatem', 878142, '4572892', 1, '2020-10-18 14:45:10', '2014-02-11 01:11:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 57, 'sint', 0, '14', 3, '2015-02-27 20:20:10', '2014-07-19 22:36:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 70, 'hic', 449, '163634353', 2, '2016-12-01 11:16:27', '2013-03-14 06:53:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 78, 'consequatur', 28, '61733', 3, '2020-07-29 14:50:09', '2015-06-02 19:40:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 54, 'sequi', 5438, '2', 1, '2013-12-06 18:24:46', '2020-07-19 02:23:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 66, 'quam', 24818, '73', 1, '2018-09-18 09:26:19', '2013-04-14 12:56:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 46, 'maxime', 2772, '1', 3, '2011-09-25 05:24:38', '2020-03-10 19:13:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 62, 'ducimus', 77, '763473', 2, '2011-10-15 18:00:46', '2017-06-22 14:28:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 93, 'beatae', 4, '3848', 3, '2018-08-21 20:46:46', '2019-07-18 16:10:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 86, 'hic', 917465, '8', 1, '2013-11-18 09:22:26', '2012-12-13 12:19:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (153, 70, 'atque', 3, '7261', 3, '2013-11-05 10:47:56', '2012-08-09 14:15:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (154, 3, 'rerum', 6935, '539844845', 3, '2021-02-06 18:28:11', '2018-09-13 15:11:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (155, 17, 'qui', 0, '1358', 3, '2020-01-22 09:28:53', '2019-08-18 11:41:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (156, 43, 'impedit', 92402, '546074144', 3, '2013-08-01 04:12:12', '2018-06-04 23:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (157, 19, 'voluptatum', 21, '219', 1, '2019-07-02 03:18:18', '2014-10-16 03:00:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (158, 23, 'beatae', 302, '3465', 3, '2019-06-14 20:50:58', '2011-08-22 12:33:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (159, 99, 'laborum', 261970658, '19', 3, '2020-04-19 18:20:22', '2020-07-11 07:20:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (160, 27, 'consequuntur', 419710666, '71', 3, '2012-11-03 06:11:44', '2019-11-13 05:34:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (161, 65, 'inventore', 70123, '550887', 3, '2018-01-03 13:26:37', '2012-12-17 09:42:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (162, 87, 'velit', 51, '3', 1, '2014-08-05 13:21:47', '2013-08-04 08:16:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (163, 12, 'molestiae', 980, '727830', 2, '2011-12-01 16:27:08', '2012-05-08 18:55:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (164, 77, 'a', 366501132, '728', 1, '2019-07-15 20:22:45', '2015-01-19 17:22:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (165, 62, 'dolorum', 79583, '576783', 2, '2013-09-01 21:49:51', '2012-08-06 03:42:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (166, 10, 'placeat', 7, '579158', 1, '2011-05-12 17:12:59', '2011-10-02 07:35:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (167, 65, 'incidunt', 6955895, '931182', 3, '2011-08-08 00:07:19', '2019-03-13 09:24:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (168, 24, 'nobis', 45, '283151583', 3, '2012-01-16 10:19:41', '2017-04-18 09:22:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (169, 61, 'dolorem', 5, '8337', 2, '2017-05-21 07:27:32', '2013-07-13 03:45:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (170, 57, 'nisi', 5897, '48691150', 1, '2017-03-20 11:54:10', '2021-02-13 09:54:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (171, 27, 'iste', 193738, '9742719', 3, '2018-11-29 20:51:35', '2016-07-03 17:12:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (172, 31, 'alias', 428971794, '32879760', 2, '2015-12-08 08:30:33', '2020-05-12 08:53:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (173, 42, 'doloremque', 755264, '330218', 3, '2013-03-24 23:18:37', '2013-04-30 18:06:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (174, 6, 'in', 6, '9374', 1, '2019-11-30 02:34:48', '2013-12-14 09:37:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (175, 24, 'eveniet', 332357473, '4342341', 2, '2013-01-02 01:19:28', '2020-10-06 17:32:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (176, 20, 'necessitatibus', 10817, '8518', 1, '2019-11-13 04:57:16', '2019-07-22 21:06:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (177, 54, 'voluptatem', 0, '1', 3, '2020-06-25 09:51:41', '2015-03-24 08:12:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (178, 63, 'harum', 3383, '3382', 2, '2012-04-13 12:39:11', '2017-09-25 07:34:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (179, 9, 'dicta', 4, '70625', 1, '2016-08-03 11:24:03', '2014-02-28 20:13:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (180, 42, 'suscipit', 8371546, '8368', 1, '2020-03-04 22:02:14', '2017-02-27 17:52:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (181, 94, 'quasi', 84251, '3877865', 1, '2018-11-13 04:24:55', '2018-07-17 07:37:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (182, 73, 'vitae', 86862729, '218', 2, '2020-12-12 20:48:26', '2012-12-09 14:10:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (183, 5, 'omnis', 99270, '8853', 3, '2014-12-17 17:46:58', '2014-04-11 00:07:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (184, 26, 'sunt', 509993, '94', 2, '2012-12-29 13:41:33', '2014-01-16 05:57:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (185, 49, 'ipsum', 508, '14292632', 3, '2020-09-27 05:01:06', '2020-10-12 20:03:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (186, 64, 'aspernatur', 18290224, '61847860', 3, '2018-03-14 22:08:45', '2019-07-01 08:18:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (187, 53, 'expedita', 99424225, '741', 3, '2013-04-27 17:17:55', '2018-01-27 08:38:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (188, 98, 'vel', 1323, '2577', 1, '2018-10-05 05:03:23', '2016-09-07 14:31:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (189, 62, 'a', 846, '94607793', 2, '2014-06-18 03:08:47', '2016-09-22 07:51:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (190, 66, 'ut', 93, '2158', 3, '2013-02-18 23:43:56', '2017-05-14 16:15:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (191, 85, 'nostrum', 71, '43052', 3, '2012-10-30 12:45:36', '2017-03-10 10:46:51');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, ' видео', '2021-04-23 15:11:51', '2021-04-23 15:11:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, ' музыка', '2021-04-23 15:11:51', '2021-04-23 15:11:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'картинка', '2021-04-23 15:11:51', '2021-04-23 15:11:51');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 12, 76, 'Possimus rem consequuntur voluptas est. Distinctio id esse aut sint eveniet quam ex. Voluptatem asperiores laudantium qui doloribus voluptatem ad odit.', 1, 0, '2013-11-06 03:37:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 100, 4, 'Aut officiis ratione doloremque dolores fugit aspernatur voluptatem. Cupiditate maxime non a debitis earum. Reprehenderit nisi aliquam et optio modi dolor ex iusto. Nisi in laboriosam similique.', 0, 0, '2013-08-11 07:02:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 97, 41, 'Odio omnis sed est eaque unde cupiditate eum. Praesentium reiciendis distinctio aliquam laborum doloremque quas possimus. Mollitia quisquam dolore aut omnis. Laborum labore dignissimos maiores fuga tempora et.', 1, 1, '2017-06-17 09:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 62, 86, 'Vel exercitationem cupiditate necessitatibus. Voluptate odit ut non quibusdam dolores qui. Rerum minima ut recusandae soluta neque rerum. Aliquam expedita est qui autem fugit.', 1, 0, '2019-03-04 17:30:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 24, 73, 'Laudantium quaerat magnam aspernatur laborum. Ad non vel eos minus quia. Ratione sint illum aliquam quam fugit nam. Aliquid aperiam et quae explicabo.', 1, 1, '2018-06-15 20:22:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 78, 55, 'Est voluptates repellat ab natus ratione non. Illum esse minus quidem vitae debitis ab. Rerum velit nihil nihil impedit. Illo cumque ut perferendis aut labore animi necessitatibus.', 1, 0, '2017-10-27 22:25:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 56, 91, 'Quia dolore ut id dicta. Autem vero harum ut soluta unde. Labore porro illum sed in et autem beatae.', 0, 0, '2017-07-16 07:35:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 80, 75, 'Error facilis odit sed quae veritatis qui libero. Qui cumque doloremque deleniti quisquam. Veniam vel sapiente harum et. Culpa assumenda sint rerum voluptatibus laboriosam. Qui rerum ipsum modi quas.', 0, 1, '2017-02-14 01:41:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 100, 15, 'Ipsa esse voluptatem quaerat minus quo. Aut est ex voluptas debitis. Provident alias quis accusamus rerum. Enim sit qui quisquam dolorum expedita.', 0, 0, '2019-08-31 20:06:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 61, 91, 'Sequi repellendus non quidem inventore in quos ut. Aut blanditiis fugit ea in fugiat. Quidem tempore neque deleniti eum est.', 1, 1, '2014-09-23 19:37:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 43, 61, 'Explicabo inventore qui magnam aperiam in ipsam esse. Ut eligendi qui deleniti nisi ut. Et delectus nulla sunt omnis molestiae veniam.', 1, 1, '2017-01-15 17:49:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 44, 42, 'Explicabo eum esse id. Ex est dignissimos suscipit ut fugiat similique praesentium eos. Quae illo sequi nemo earum maxime dicta voluptatem. Ipsum tempora explicabo id nulla quasi ipsa voluptatum. Rerum nisi occaecati sit beatae.', 1, 0, '2013-07-08 02:32:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 79, 3, 'Nisi rerum labore quo non. Debitis a recusandae veritatis est tempora fugit placeat.', 0, 0, '2014-07-30 11:04:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 26, 37, 'Labore maiores eveniet quis tempora et labore. Id voluptatum vitae ea unde officia dolorum quis. Quaerat mollitia et sequi ut. Consectetur cumque nobis voluptatem corrupti qui eos enim unde. Voluptate totam quo facilis corporis.', 1, 0, '2011-05-18 08:33:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 95, 3, 'Omnis praesentium temporibus necessitatibus vel voluptatem aspernatur. Repellat voluptatem cupiditate ut ex. Minima vel dolorem aut iste ducimus.', 0, 0, '2015-11-13 03:15:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 8, 6, 'Id velit aut perferendis exercitationem omnis molestiae. Numquam consequuntur sit quaerat consequatur unde minus pariatur. Aut necessitatibus occaecati pariatur. Non cupiditate enim exercitationem error perspiciatis quia labore voluptate.', 1, 1, '2017-12-28 02:00:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 78, 7, 'Ut quasi quaerat unde quam autem ipsum. Autem et sint necessitatibus deleniti dignissimos eum ipsum.', 1, 0, '2013-02-04 20:24:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 10, 74, 'Voluptates facere est quia omnis. Minima dolor voluptatum magni quisquam rem in.', 1, 1, '2016-01-11 07:30:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 48, 72, 'Eos ut est veritatis delectus sapiente numquam voluptatum. Asperiores iste modi quam nemo. Optio sunt voluptas sit doloribus qui. Ut reprehenderit vel expedita nobis enim totam cumque pariatur.', 1, 0, '2018-07-06 09:08:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 60, 72, 'Voluptate impedit quam culpa ex cumque voluptatem autem. Sed sunt sint alias ab sit. Commodi corrupti id corporis.', 0, 0, '2016-12-23 13:30:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 45, 38, 'Placeat delectus reprehenderit assumenda qui nam asperiores. Modi molestiae distinctio numquam praesentium illo.', 0, 1, '2020-01-27 05:41:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 26, 100, 'Occaecati accusantium qui ab alias mollitia nulla quia. Reiciendis et id eligendi eligendi ut et eos. Omnis et nulla eos eos et.', 0, 1, '2014-06-07 21:57:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 28, 6, 'Et qui impedit nam at sint ut enim. Eos molestiae maxime tempora pariatur delectus in numquam. Odit unde aut placeat earum. Natus quia autem quia provident.', 1, 1, '2020-06-29 04:04:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 75, 28, 'Fuga doloribus mollitia officiis reprehenderit dolore distinctio. Et sunt consectetur est nihil tenetur quia. Porro quisquam et explicabo fuga voluptatem. Odit voluptas labore libero. Enim quo aut tenetur est mollitia.', 1, 0, '2020-12-01 09:43:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 21, 35, 'Sed aut quia mollitia voluptas aut iste. Magnam et velit qui voluptatum. Dolor aut mollitia quo rem et officia et aliquam. Qui similique sit quo rerum.', 0, 1, '2012-01-21 05:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 19, 63, 'Soluta sit totam voluptates rem et vero. Vel reprehenderit molestiae quis dolore est officiis et. Ullam consequuntur architecto necessitatibus eos provident vero repellendus.', 1, 1, '2014-06-16 01:47:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 96, 62, 'Voluptatem earum assumenda fugit expedita voluptatem et. Aut porro quia dolorum eos earum molestiae. Nam dolores ipsum ab. Hic magni ipsum a libero.', 0, 0, '2018-08-31 22:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 5, 75, 'Ut quod veniam earum ut id nam sit. Officiis asperiores hic sequi autem quam consectetur ipsum ut. Et ea et sint fuga earum nam.', 0, 0, '2017-01-10 12:45:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 64, 30, 'Illo vero laboriosam sed blanditiis dolore esse. Dolorem est molestiae natus omnis perferendis. Fugit recusandae aut sit nisi. Expedita et amet aut voluptatem rerum hic consectetur.', 0, 1, '2019-03-22 21:24:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 11, 59, 'Vero nam vel labore sint. Eligendi et occaecati aut ipsum. Vel culpa voluptas eveniet sint quo iste. Qui sunt labore totam ut quisquam. Quia sit et laborum et dignissimos velit distinctio.', 0, 0, '2020-08-14 06:06:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 32, 19, 'Vel commodi non eius exercitationem voluptas. Vel dolorum consequuntur error suscipit ducimus. Aliquam temporibus quia et voluptatum ut aut.', 0, 1, '2013-04-15 23:50:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 65, 10, 'Repellendus unde est ipsa. Voluptate quaerat eius fugiat nihil. Qui velit dolores sit porro quis. Cumque quaerat dolorem molestiae eligendi dolorum enim amet consectetur.', 1, 1, '2011-09-14 01:25:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 26, 74, 'Sint ut officiis et id minima. Laboriosam beatae qui architecto. Voluptas consequatur rerum optio velit.', 1, 0, '2018-04-10 03:40:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 84, 73, 'Qui eius perferendis rerum explicabo qui. Quod nostrum necessitatibus aut ipsam dolores dolore. Qui non et ut aperiam minima dicta recusandae. Id consectetur asperiores consequatur.', 0, 0, '2019-10-15 22:57:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 46, 43, 'Rerum aut ea dolorem velit. Modi odit quis ut praesentium facilis et dolorum ratione. Enim sint labore qui.', 0, 1, '2014-05-12 21:57:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 45, 90, 'Corporis vero et consequatur nulla ipsum natus rerum beatae. Et alias itaque quasi reprehenderit ut. Pariatur perferendis nemo aut praesentium nemo est enim.', 0, 1, '2019-12-18 20:17:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 81, 70, 'Praesentium velit et vitae rerum fuga. Omnis laudantium aperiam harum odio voluptatibus veniam. Ea id dolorem delectus aut. Laboriosam vel voluptatem autem aperiam sed sint labore labore.', 1, 1, '2012-12-11 03:53:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 90, 9, 'Quia ratione maxime ipsam non velit voluptas voluptatem nobis. Eveniet id quisquam culpa voluptatum. Consequuntur similique suscipit saepe pariatur non exercitationem consequatur in.', 1, 0, '2017-01-28 02:02:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 76, 64, 'Delectus deserunt quos et est quia velit ut. Nobis esse consequatur consequuntur qui quis. Enim autem consequatur facilis sequi atque suscipit.', 1, 0, '2018-01-30 18:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 36, 96, 'Rerum commodi dolore accusantium dolores recusandae ea ratione quos. Sed perspiciatis et voluptate ea in inventore velit. Molestias hic eum sed id fugiat consequatur quis. Voluptatem ducimus perferendis est enim dolor.', 1, 0, '2013-06-14 06:43:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 99, 54, 'Corporis doloribus veritatis ad cupiditate eos. Voluptates inventore et incidunt quaerat. Nemo porro explicabo et et ut velit.', 1, 0, '2017-08-31 14:27:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 59, 94, 'Quae veritatis tempore ut laboriosam id incidunt omnis itaque. Neque rerum quo incidunt quo eos id incidunt.', 0, 1, '2017-07-04 04:09:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 15, 63, 'Suscipit vero quis labore deserunt qui corrupti et ullam. Voluptatem aut sit necessitatibus cumque ducimus at modi. Repellendus ad et non ratione omnis distinctio dignissimos.', 0, 1, '2013-09-26 00:05:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 68, 79, 'Sequi et est numquam aut velit dignissimos incidunt quia. Sit ducimus quod natus nostrum aut. Nostrum voluptatem consequuntur cum necessitatibus distinctio. Blanditiis commodi officiis at voluptates ratione tempore incidunt dolorem.', 0, 0, '2011-11-04 16:58:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 92, 79, 'Tempore expedita deserunt vitae et ad totam accusantium excepturi. Quo ipsa ut perferendis quibusdam omnis accusamus voluptatem. Error similique quod perferendis.', 0, 1, '2015-08-26 09:24:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 38, 23, 'Modi est dolor est ut consequatur quod consequuntur. Quia dolor qui ex non laudantium.', 0, 0, '2011-05-09 00:10:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 97, 2, 'Mollitia quia tenetur consequatur doloribus. Quisquam voluptatem atque et eius minima sed nihil. Aperiam neque voluptas similique accusantium. Ut culpa sed facere qui.', 1, 0, '2016-03-13 11:14:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 32, 22, 'Ipsa ut velit mollitia. Ipsam quasi illum aut. Ut nobis quibusdam repellat deleniti. Ratione voluptas optio quis consequuntur qui. Omnis voluptate sequi asperiores vel.', 1, 0, '2020-08-26 19:33:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 76, 15, 'Et atque temporibus quis id suscipit accusamus. Alias repellat soluta illo vero assumenda nostrum. Ea consectetur qui autem temporibus in.', 0, 1, '2020-08-08 17:16:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 95, 21, 'Aspernatur tempore eos laudantium sunt maxime consequatur pariatur. Ea facilis qui veritatis in iure. Ullam eligendi nesciunt quia nihil impedit pariatur. Voluptatem voluptate autem maiores praesentium animi illo quis voluptatem. Rerum vitae unde corporis quisquam provident ea.', 0, 1, '2018-12-21 03:47:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 58, 39, 'Ut a unde repudiandae illo architecto aspernatur. Voluptatem optio nobis placeat architecto repellat in vel. Ratione cum molestias excepturi ipsum qui ipsam voluptate.', 1, 0, '2012-09-04 19:38:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 11, 38, 'Corrupti possimus error distinctio natus qui at. Necessitatibus labore alias est officiis.', 1, 1, '2013-08-15 10:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 9, 100, 'Ratione voluptatem repudiandae beatae sit est. Cupiditate voluptatem numquam rerum. Velit eaque autem est dolores hic. Ex quasi molestiae natus nulla vitae consequatur. Voluptates autem maiores voluptas eius quisquam sunt.', 0, 0, '2019-10-10 14:55:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 46, 85, 'Dolore doloribus animi modi. Aliquid cupiditate repellat et magni expedita dolores blanditiis distinctio. Non non quod quos laboriosam soluta. Voluptas dolore molestias vel sit. Distinctio officiis enim quasi accusantium quia ut.', 0, 0, '2015-03-08 02:47:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 63, 82, 'Tenetur natus velit aspernatur sint tempore possimus. Dolore aut voluptas eos et error veritatis. Qui libero quas dolore quas. Tempora autem occaecati consequatur nulla.', 0, 1, '2011-05-21 05:20:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 81, 61, 'Et sequi cupiditate excepturi quibusdam cumque officia. Impedit doloremque enim deleniti ea illum. Ratione quia officiis est consequatur excepturi.', 0, 1, '2015-07-16 13:32:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 35, 39, 'Enim vel dignissimos earum rerum deleniti libero. Qui perspiciatis nam voluptatibus totam inventore. Et nesciunt inventore nisi quisquam eos asperiores.', 1, 1, '2018-02-05 19:07:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 55, 50, 'Facere sit esse nihil reprehenderit sint sed. Voluptas exercitationem assumenda explicabo quo doloribus consequatur excepturi. Voluptatem culpa nemo nihil autem esse qui. Perferendis amet corrupti sequi aut.', 0, 1, '2020-09-06 04:06:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 1, 23, 'Aut a consequatur commodi. Earum illum magni ad veniam perspiciatis exercitationem. Explicabo modi nemo dolorem eaque voluptatem. Et nisi veritatis et illum ex voluptates.', 1, 0, '2014-11-11 11:01:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 29, 92, 'Qui sint ipsam at ut qui sapiente quas. Quia animi aut laboriosam quisquam. In voluptates voluptatem nihil provident. Maxime et asperiores est tenetur eos aut.', 1, 0, '2013-12-04 14:53:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 1, 66, 'Non at officia consectetur dolorem. Aperiam incidunt minus blanditiis alias. Quibusdam necessitatibus labore voluptatum itaque provident est iure.', 0, 0, '2018-05-11 07:51:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 15, 98, 'Voluptatem rerum at quas beatae. Et tenetur perferendis repellendus saepe porro fuga nemo. Ullam amet magni sit. Consequatur nostrum assumenda magnam reiciendis at quia voluptas.', 0, 0, '2012-09-25 13:17:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 67, 47, 'Voluptatem sunt voluptas magni et veritatis. Occaecati hic earum est illum.', 0, 0, '2013-06-18 10:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 19, 43, 'Adipisci est impedit similique nulla repellendus error eius. Aut tempora nihil sequi. At optio tempore sapiente sit. Cumque quaerat est libero ea.', 0, 0, '2011-12-11 17:37:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 61, 14, 'Id voluptas voluptas laudantium sequi ut voluptas aut. Molestias occaecati illum pariatur consequatur. Architecto quis et vel dolor molestiae. Hic id illum voluptate et voluptatem dolor et.', 1, 1, '2020-11-28 16:22:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 63, 19, 'Delectus omnis nam dolores impedit beatae. Quis atque in delectus officia occaecati. Quod unde sint consequatur in vero. Rem qui nam sapiente.', 0, 0, '2015-10-11 12:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 52, 74, 'Id repellat cum minima ea maxime quaerat. Id autem deleniti quasi pariatur. Corporis eligendi et voluptatum qui rem.', 1, 0, '2012-10-22 08:38:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 56, 61, 'Est voluptas aperiam cumque. Esse molestiae inventore nobis deserunt ad itaque. Veniam dolorem qui quod odio.', 1, 0, '2017-12-12 21:02:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 73, 2, 'Nulla odio dolorem ea assumenda. Autem repudiandae et ad dolorem. Voluptatem impedit odit sed officia et in sunt.', 0, 0, '2021-01-18 01:13:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 45, 36, 'Quo quisquam et voluptas rerum minus sunt id sed. Officiis possimus est asperiores quas voluptatem. Rerum dolorum et id. Ut magni ipsam voluptatibus aliquam.', 0, 0, '2014-04-13 17:44:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 83, 25, 'Quis eos eveniet qui. Quibusdam ipsam rerum veniam rerum. Blanditiis dolor recusandae error voluptatem reiciendis.', 1, 1, '2021-01-12 11:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 97, 18, 'Ipsum vero quaerat consequatur iure aut atque. Voluptatem quam praesentium dicta veritatis saepe maiores voluptatem. Unde aliquid quis vel sint enim numquam officia.', 0, 1, '2016-01-31 05:34:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 64, 51, 'Minima occaecati dolores qui odio ut voluptates. Ex ab doloribus magnam accusantium. Culpa nesciunt tempora rerum enim. Voluptate deserunt quo hic molestiae consequatur id voluptatum.', 1, 1, '2011-06-22 03:05:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 67, 64, 'Consequatur praesentium quam doloribus magnam neque in. Ut alias laudantium officiis et laudantium sapiente dignissimos. Esse quia placeat enim magni repellat.', 1, 0, '2013-03-31 06:17:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 73, 96, 'Quibusdam veritatis velit mollitia nulla. Placeat omnis aut pariatur non est doloribus. Dolor est qui voluptas exercitationem esse voluptatem.', 0, 0, '2011-10-14 16:30:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 56, 74, 'Consequatur molestiae et quis molestiae. Sint eum rerum similique iure aut eligendi. Incidunt sit et quibusdam quisquam quo ut.', 1, 0, '2011-09-29 01:51:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 61, 70, 'Qui enim eos et quia. Ratione magnam voluptates repudiandae voluptate. Perspiciatis non repellat sit ipsum aut et id. Modi consequuntur est asperiores voluptatem et nisi.', 0, 1, '2021-04-22 08:45:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 71, 28, 'Voluptatem aut dolor nostrum ex eveniet exercitationem laudantium corporis. Libero voluptas dicta quo eum saepe dolores ut.', 1, 0, '2016-08-06 19:35:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 16, 90, 'Consequatur pariatur excepturi ratione repudiandae. Ea amet totam aut architecto animi earum.', 1, 0, '2015-12-02 05:19:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 70, 77, 'Occaecati ex ut assumenda omnis dolorem labore non. Veritatis expedita voluptas rerum. Ex est et minima maxime sunt.', 0, 0, '2015-09-02 11:17:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 3, 33, 'Eum est sed eum nihil natus. Praesentium sint vero commodi perspiciatis ut. Nostrum ut illum in similique ducimus.', 1, 1, '2015-04-08 16:52:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 95, 55, 'Nisi alias quidem iure earum aut praesentium. Optio veniam quaerat voluptatum sed. Consectetur dicta quia corrupti nihil.', 0, 0, '2013-04-01 16:21:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 6, 51, 'Tenetur natus sint consequatur. Repellendus quia dolores accusantium doloremque cupiditate non doloribus. Consectetur corporis et ut corrupti ipsum.', 0, 1, '2014-05-06 09:36:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 15, 78, 'Corrupti tempore non ullam vero omnis nemo nihil. Quas consequatur modi ad est nemo est. Omnis nihil officia iste illo enim cupiditate.', 1, 1, '2019-01-06 19:02:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 53, 60, 'Consequatur tempore incidunt voluptas nihil facilis est praesentium qui. Ab temporibus enim ducimus doloremque libero sit. Tempore saepe porro est consequuntur. Explicabo sed repudiandae dolor quas voluptatibus sunt et. Libero minus ex in neque et pariatur.', 1, 1, '2019-07-04 07:42:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 14, 36, 'Ut quia minus delectus explicabo voluptatum mollitia id. Accusamus ut quisquam nobis. Aut unde optio excepturi omnis.', 0, 1, '2018-12-01 15:36:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 85, 10, 'Ut eveniet deleniti eos mollitia. Aut ratione sit voluptas et. Maxime optio numquam odit harum rerum dolores.', 0, 0, '2021-03-30 16:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 53, 48, 'Nesciunt numquam animi accusamus delectus. Sed perferendis quo omnis ut. Ad neque est aut saepe commodi. Aut tempora non distinctio nostrum itaque.', 1, 0, '2015-10-20 18:47:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 60, 20, 'Magnam officiis dolor dignissimos autem. Dolorem error ut asperiores cum sit fuga. Laudantium at porro rerum maiores illo sunt voluptatem veniam.', 0, 1, '2014-12-18 08:31:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 12, 33, 'Molestiae ipsum quia a culpa. Fugiat dolores et voluptate ut animi nihil in doloremque. Aliquid unde aliquid et voluptatem quisquam quam.', 0, 1, '2012-01-18 12:06:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 15, 67, 'Rerum dolores id minima in similique. Harum ex aut qui corporis et nisi.', 0, 0, '2013-06-26 23:19:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 7, 75, 'Consequuntur et illo quia quae. In quam optio libero facere ullam nisi magnam consequatur. Natus laborum mollitia dicta itaque suscipit ea.', 1, 1, '2021-04-14 03:19:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 37, 77, 'Et in provident vel voluptatem veniam eaque perferendis. Ex et quo tempora id tempora nihil impedit exercitationem. Asperiores velit qui mollitia nihil autem fuga iusto fugit. Praesentium exercitationem voluptatem ut cumque.', 1, 1, '2020-08-12 13:25:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 3, 52, 'Esse ipsa et accusantium accusantium sapiente. Consequatur fugiat corrupti praesentium odio ut non numquam. Repellendus sit dicta vel nobis doloremque possimus quidem.', 0, 1, '2020-03-29 06:36:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 66, 72, 'Aut sit animi iure neque consequatur aspernatur. Illum quo ea tempora id ducimus sed adipisci. Cupiditate et ratione enim et ut quos. Eligendi est quis consequatur voluptate.', 1, 0, '2019-03-12 01:59:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 29, 68, 'Voluptatem consequatur labore nostrum eius consequatur qui. Sit eveniet vel distinctio aut sint sed labore. Delectus hic minus officiis mollitia. Magni optio voluptas reiciendis nobis error reiciendis quibusdam beatae.', 1, 0, '2015-10-23 11:04:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 4, 23, 'Sint ipsam molestias beatae aliquam repellendus. Incidunt harum aut ipsa quo. Enim quia cupiditate eius saepe ad quis.', 0, 1, '2018-10-25 19:51:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 23, 10, 'Minus ullam delectus qui dolore provident voluptate. Reprehenderit odio voluptatum facilis quidem maiores. Architecto non deleniti quibusdam odio nisi.', 1, 1, '2016-01-06 10:49:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 74, 38, 'Ab illo saepe ratione. Rerum et iste cumque quia numquam error. Et odio molestiae ut labore. Exercitationem corporis omnis distinctio eaque. Impedit blanditiis est perspiciatis sed in.', 0, 1, '2015-10-04 09:13:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 88, 26, 'Officia cumque necessitatibus sed quo in mollitia. Minus ea sed quas quos sed. Nihil ut ducimus odit incidunt cupiditate occaecati.', 1, 0, '2017-12-25 01:40:28');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'M', '1984-07-08', 'Kshlerinhaven', 'Niger', '2012-06-15 20:39:13', '2011-09-09 17:09:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'M', '1981-08-10', 'Ulisesbury', 'Bhutan', '2020-06-05 21:17:54', '2016-12-20 07:51:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'M', '1986-09-04', 'New Lorna', 'Wallis and Futuna', '2012-09-25 04:30:25', '2020-01-01 09:38:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'F', '1994-01-14', 'Adelinetown', 'Zimbabwe', '2020-12-05 15:47:22', '2015-12-08 16:41:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'M', '2004-05-27', 'South Lewisshire', 'Guadeloupe', '2011-11-05 04:26:46', '2014-02-08 09:54:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'M', '1993-04-24', 'Hesselport', 'Chad', '2021-01-06 06:57:07', '2014-10-28 23:52:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'F', '1982-07-22', 'Port Effie', 'Czech Republic', '2019-11-29 00:03:11', '2013-11-08 15:07:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'F', '1973-10-31', 'Goldnerborough', 'Palau', '2015-12-16 11:55:55', '2016-05-01 18:50:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'F', '1977-10-31', 'Skilesland', 'Reunion', '2019-01-19 04:51:20', '2013-10-27 20:10:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'M', '2005-02-24', 'Nakiahaven', 'Maldives', '2016-05-04 14:23:57', '2013-03-10 12:01:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'M', '2013-06-14', 'South Albin', 'Luxembourg', '2014-09-20 21:17:09', '2016-11-11 07:17:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'M', '2019-08-11', 'Goodwinfurt', 'Namibia', '2017-03-29 18:13:34', '2021-03-04 03:38:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'F', '2020-11-23', 'Carterberg', 'Czech Republic', '2014-05-08 18:41:29', '2017-03-28 06:54:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'M', '2019-12-02', 'Jenkinsborough', 'Fiji', '2013-08-28 02:13:16', '2020-08-03 06:42:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'M', '1997-09-19', 'Reichertville', 'Vietnam', '2011-06-18 22:55:31', '2012-01-30 23:37:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'M', '1997-02-11', 'Henrybury', 'Brazil', '2011-08-06 12:49:34', '2015-07-16 01:50:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'F', '1996-01-29', 'O\'Connerhaven', 'Malta', '2013-02-23 21:50:51', '2011-11-07 04:08:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'M', '1976-12-19', 'East Laron', 'Lithuania', '2013-07-18 00:08:42', '2017-07-28 09:33:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'F', '2002-09-17', 'Lucianoborough', 'Christmas Island', '2015-11-02 20:32:10', '2019-11-29 12:07:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'F', '1992-11-14', 'Schadentown', 'Oman', '2011-11-30 15:12:34', '2019-02-16 08:01:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'M', '1984-01-15', 'Starkshire', 'Monaco', '2019-03-18 12:27:53', '2017-08-25 08:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'M', '1996-09-05', 'Salvadormouth', 'Trinidad and Tobago', '2011-08-23 03:15:36', '2015-01-29 02:49:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'M', '2017-05-31', 'South Alexzander', 'Bhutan', '2018-03-29 11:41:04', '2021-03-25 15:44:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'F', '1992-05-18', 'North Thalia', 'Turkey', '2014-04-09 14:59:37', '2019-10-20 09:36:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'M', '2006-03-06', 'West Katlynhaven', 'French Southern Territories', '2011-07-28 22:03:02', '2011-10-02 05:14:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'M', '1971-08-01', 'East Leilani', 'Syrian Arab Republic', '2017-03-01 22:50:00', '2017-11-04 17:12:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'M', '1973-04-22', 'Chaimbury', 'Andorra', '2011-10-21 09:20:34', '2014-11-29 01:49:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'M', '2014-10-15', 'Millsshire', 'Northern Mariana Islands', '2015-01-25 03:39:26', '2014-11-11 19:38:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'F', '2012-03-15', 'South Jadonville', 'Eritrea', '2019-12-11 19:31:58', '2012-08-01 09:17:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'M', '1975-01-17', 'West Lillianside', 'Micronesia', '2014-03-04 11:35:06', '2012-03-01 10:16:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'F', '1999-07-05', 'Lake Jermeyburgh', 'Uzbekistan', '2019-02-23 02:00:44', '2017-09-02 19:16:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'F', '1971-03-09', 'East Rowlandberg', 'Cambodia', '2019-08-30 20:21:05', '2011-08-21 20:10:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'M', '1993-02-24', 'New Gilbertobury', 'Bhutan', '2016-10-31 17:55:01', '2011-07-20 08:27:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'M', '1978-08-01', 'Port Mabelle', 'Macedonia', '2016-10-11 17:39:27', '2020-07-02 07:54:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'F', '1984-10-06', 'Jensenmouth', 'Gabon', '2020-06-27 23:15:38', '2019-04-29 20:53:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'F', '2011-09-01', 'Noemyland', 'Paraguay', '2011-12-18 21:30:58', '2020-02-11 20:43:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'F', '1996-09-06', 'Lake Keshawnfort', 'Turks and Caicos Islands', '2017-02-23 15:29:17', '2012-12-13 00:51:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'M', '2001-12-15', 'West Dorianfurt', 'Paraguay', '2012-02-03 09:13:26', '2015-01-04 17:54:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'F', '2020-10-29', 'Ramonborough', 'Peru', '2016-03-02 00:40:43', '2019-02-18 04:13:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'M', '1990-04-08', 'West Clinton', 'Germany', '2017-01-05 23:35:52', '2017-07-26 13:56:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'F', '1976-06-30', 'Port Kayleeville', 'British Indian Ocean Territory (Chagos Archipelago)', '2016-07-28 01:59:27', '2013-12-26 19:32:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'F', '2012-12-01', 'Kiannaside', 'French Guiana', '2011-10-30 03:26:46', '2014-05-12 16:24:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'M', '1970-06-19', 'Gloverstad', 'Reunion', '2018-03-11 23:41:26', '2015-09-14 01:36:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'F', '2003-02-03', 'Melvinmouth', 'Kazakhstan', '2019-11-22 10:51:13', '2019-01-22 04:21:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'F', '2005-09-27', 'Jacobsonfort', 'Libyan Arab Jamahiriya', '2012-01-06 00:27:27', '2020-08-09 18:51:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'F', '1978-11-05', 'Beattyton', 'French Polynesia', '2016-10-14 06:30:23', '2018-12-08 17:16:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'M', '2002-08-27', 'North Albinabury', 'Turkey', '2016-06-02 23:11:47', '2013-05-01 15:57:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'M', '2000-11-22', 'Dennisbury', 'Belgium', '2013-10-05 20:51:00', '2021-03-30 05:54:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'F', '1974-07-31', 'Ondrickamouth', 'Namibia', '2013-07-13 15:05:48', '2021-04-12 17:00:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'F', '2008-02-14', 'South Kamilleberg', 'Guernsey', '2017-08-04 18:06:42', '2019-12-29 00:35:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'M', '2015-09-19', 'Lake Faustobury', 'Poland', '2020-04-17 22:26:56', '2014-04-28 18:16:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'M', '1976-01-09', 'Sigurdside', 'Greenland', '2012-02-29 09:30:13', '2017-08-24 09:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'F', '2021-02-16', 'Loramouth', 'Azerbaijan', '2012-02-01 09:16:11', '2012-02-09 23:31:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'M', '1992-06-19', 'East Dillan', 'India', '2015-12-25 21:05:26', '2021-04-21 04:00:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'M', '1995-04-23', 'Maeveberg', 'Cameroon', '2014-05-08 08:29:34', '2019-02-09 11:16:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'F', '1979-12-15', 'Port Hershel', 'Sierra Leone', '2017-03-12 16:52:41', '2017-04-09 18:35:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'M', '2013-03-22', 'Parkertown', 'Mali', '2020-12-25 22:34:32', '2012-07-15 14:39:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'F', '2015-10-18', 'Cassidyshire', 'Barbados', '2013-12-28 04:17:46', '2014-03-05 11:39:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'F', '2009-11-25', 'Lake Aprilville', 'Israel', '2012-03-01 14:16:28', '2018-12-21 18:38:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'F', '1995-09-01', 'Athenastad', 'Tonga', '2021-02-08 14:26:24', '2013-09-08 06:24:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'M', '1991-04-27', 'Marcosfort', 'Brazil', '2017-07-19 19:59:07', '2013-04-30 00:15:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'M', '1993-04-10', 'Weissnatchester', 'Bulgaria', '2019-09-10 20:17:38', '2019-10-14 05:19:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'F', '1984-08-03', 'Eulahside', 'Romania', '2017-09-17 01:36:58', '2016-12-27 19:56:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'M', '2016-11-22', 'North Maverickberg', 'Cayman Islands', '2018-03-22 14:13:40', '2020-05-05 08:41:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'M', '1985-11-12', 'New Libbieland', 'Lithuania', '2018-11-09 09:43:19', '2011-10-08 07:35:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'F', '2016-07-17', 'Bodeborough', 'Jersey', '2019-07-08 06:12:47', '2013-09-09 10:52:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'F', '1975-09-27', 'New Shany', 'Antigua and Barbuda', '2012-07-28 01:07:53', '2011-05-19 05:55:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'F', '1981-07-27', 'West Biankaburgh', 'Liechtenstein', '2017-07-11 13:09:36', '2016-11-04 02:25:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'M', '1989-08-11', 'New Eusebio', 'Paraguay', '2012-08-24 09:02:34', '2021-01-30 04:52:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'F', '1992-05-29', 'Mrazshire', 'Equatorial Guinea', '2015-06-10 18:09:29', '2011-12-26 11:22:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'F', '1996-10-01', 'Kshlerintown', 'Afghanistan', '2016-10-15 00:14:15', '2018-08-27 00:14:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'M', '1982-04-13', 'Zboncakview', 'Netherlands Antilles', '2016-01-05 04:26:56', '2015-12-18 18:51:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'M', '1986-04-16', 'Goyetteville', 'South Africa', '2011-10-29 22:49:10', '2016-08-08 03:20:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'M', '2019-07-01', 'Lake Wilbertmouth', 'Grenada', '2016-01-29 07:54:05', '2016-03-22 15:48:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'F', '1977-04-09', 'South Virgilchester', 'Anguilla', '2017-08-05 10:47:44', '2018-07-16 08:09:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'M', '1978-09-02', 'Russelstad', 'Egypt', '2017-08-05 09:36:37', '2015-01-05 11:59:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'M', '1991-10-18', 'East Jeffreymouth', 'Saint Barthelemy', '2015-06-14 07:43:05', '2012-12-10 23:31:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'M', '1999-09-13', 'Jamilfurt', 'Uganda', '2012-04-09 03:31:17', '2016-08-12 14:51:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'F', '1976-09-23', 'New Jeraldville', 'Honduras', '2019-06-30 19:33:40', '2017-09-14 09:21:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'M', '1994-02-12', 'Kovacekburgh', 'Heard Island and McDonald Islands', '2019-04-24 21:35:48', '2014-09-08 11:21:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'M', '1998-11-19', 'Lake Gaetano', 'Guinea', '2020-06-14 21:33:12', '2016-11-16 19:15:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'F', '2013-03-01', 'Justineview', 'Yemen', '2012-11-10 00:15:52', '2020-06-04 03:25:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'F', '1986-11-16', 'Nataliefurt', 'Guinea', '2014-04-09 11:39:25', '2016-02-13 13:43:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'F', '1978-01-31', 'Lake Danikafort', 'Saint Pierre and Miquelon', '2016-07-16 17:13:03', '2012-12-23 08:28:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'M', '1992-01-27', 'Idastad', 'Albania', '2012-02-19 06:09:33', '2012-02-07 12:27:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'M', '1978-12-29', 'New Bell', 'Qatar', '2020-05-14 23:51:53', '2015-06-17 07:12:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'M', '2004-05-31', 'Port Juliana', 'France', '2015-01-24 15:43:27', '2015-12-28 02:55:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'F', '1984-06-03', 'New Miltonside', 'Malta', '2011-05-30 11:20:02', '2014-01-30 10:48:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'F', '2013-03-14', 'Port Carterfort', 'Pitcairn Islands', '2017-01-24 12:03:12', '2015-10-16 07:37:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'M', '2002-02-25', 'Bruenside', 'Kuwait', '2011-05-30 22:54:59', '2014-02-06 04:25:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'F', '1980-04-19', 'West Petratown', 'Liberia', '2014-09-27 18:11:06', '2016-02-28 23:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'M', '2019-01-05', 'New Jaidenberg', 'Micronesia', '2012-02-25 22:46:08', '2012-08-12 07:30:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'M', '1994-12-13', 'East Sammie', 'Kuwait', '2012-07-25 22:51:02', '2011-11-30 13:59:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'M', '1992-04-03', 'Cecilmouth', 'Monaco', '2019-06-05 00:39:43', '2014-03-05 12:00:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'F', '1994-04-03', 'South Lauriane', 'Belgium', '2018-05-31 02:11:29', '2012-08-17 15:53:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'F', '2000-09-29', 'Sawaynshire', 'Slovakia (Slovak Republic)', '2020-02-26 08:39:32', '2020-04-21 11:28:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'M', '2004-06-18', 'New Kirk', 'Andorra', '2017-09-01 17:35:27', '2019-01-14 01:25:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'F', '1970-10-11', 'Donaldmouth', 'Monaco', '2020-09-01 20:06:47', '2012-07-27 08:51:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'M', '2003-09-07', 'Everardoborough', 'Liberia', '2018-10-20 02:21:01', '2017-06-22 21:50:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'F', '2001-12-24', 'New Alexandrine', 'Burkina Faso', '2017-11-12 21:35:29', '2014-08-04 13:36:42');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Lelia', 'Considine', 'stroman.percival@example.org', '227-385-2897', '2011-08-01 19:59:03', '2012-12-04 23:40:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Marie', 'Lakin', 'cdaniel@example.org', '668-047-0440x27377', '2014-01-19 14:16:13', '2017-07-30 22:39:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Amara', 'Bartell', 'xgreen@example.net', '236-726-4748', '2014-09-22 19:44:35', '2012-10-30 14:24:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Moses', 'Ritchie', 'aemard@example.org', '630.712.1184x7706', '2019-02-04 09:59:33', '2012-06-02 00:22:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Domenic', 'Adams', 'kendra.romaguera@example.net', '1-330-101-6346x556', '2012-08-08 10:52:29', '2014-01-23 10:53:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Richard', 'Mertz', 'rickey.barton@example.com', '02934299145', '2016-08-23 22:10:42', '2019-08-10 23:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Eva', 'Torphy', 'jeff.mohr@example.org', '136.238.7744', '2021-01-25 00:50:33', '2011-12-26 03:54:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Camille', 'Konopelski', 'liza.haley@example.org', '(178)125-7031', '2020-01-27 01:54:08', '2014-02-28 10:43:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Carmine', 'Mante', 'murazik.kirsten@example.com', '(632)849-6269x1144', '2020-05-11 21:39:13', '2011-05-26 09:13:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Mac', 'Jones', 'kristoffer.prohaska@example.com', '730-848-2131', '2011-12-06 05:08:04', '2018-06-09 20:22:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Emilio', 'Hyatt', 'marc80@example.com', '463.791.8692x9572', '2012-09-08 05:01:12', '2014-11-28 11:19:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Talia', 'Homenick', 'mathew.denesik@example.net', '457.424.9001', '2012-03-30 04:01:02', '2016-03-30 11:36:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Alexander', 'Larkin', 'jadyn.bergstrom@example.com', '429-610-4159x43108', '2015-10-15 18:58:23', '2019-12-31 22:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Elwyn', 'Kohler', 'zbergstrom@example.com', '575-614-2385x75757', '2013-07-30 22:50:40', '2013-07-11 20:43:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Makayla', 'Cronin', 'jordyn.kessler@example.net', '(341)566-8577', '2014-05-25 19:05:57', '2014-09-06 08:21:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Dana', 'Schaden', 'josiah.kshlerin@example.org', '1-458-283-1421x56948', '2013-11-10 04:03:49', '2020-03-30 05:26:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Ellen', 'Schinner', 'awehner@example.com', '1-117-234-5730x18046', '2014-06-16 04:49:48', '2018-12-25 10:48:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Mireya', 'Terry', 'farrell.izabella@example.org', '(806)916-8012x72367', '2013-01-21 18:22:52', '2014-08-08 21:46:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Gisselle', 'Kris', 'jpouros@example.org', '(505)920-3966', '2015-06-02 16:14:31', '2011-11-30 13:27:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Mariam', 'Lynch', 'raymundo.bode@example.net', '855-565-8623x51780', '2021-02-18 09:49:24', '2012-05-01 08:48:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Hadley', 'Brakus', 'clemens.emard@example.org', '1-055-025-6168x401', '2018-08-14 16:40:23', '2015-01-03 10:21:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Daniela', 'Kiehn', 'cummerata.austin@example.org', '644-394-2454x1872', '2016-08-24 08:51:15', '2016-12-03 19:01:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Jamey', 'Koch', 'susana62@example.org', '251.835.7023', '2012-07-13 14:12:06', '2018-03-09 10:31:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Ali', 'Hirthe', 'irosenbaum@example.net', '330.815.6946x3617', '2016-10-24 18:34:26', '2014-01-17 09:56:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Verlie', 'Rolfson', 'wsanford@example.com', '537.212.2705x1837', '2018-10-10 16:37:46', '2016-05-10 20:52:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Tressie', 'Abbott', 'sstehr@example.org', '(467)276-1887', '2015-06-19 23:59:17', '2017-01-22 09:22:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Novella', 'Pouros', 'rtremblay@example.com', '+57(0)2905723627', '2019-02-25 01:37:02', '2018-10-07 04:58:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Cory', 'Huels', 'leta89@example.org', '08796197173', '2017-09-10 17:34:47', '2012-01-18 18:36:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Jameson', 'Streich', 'adele.becker@example.net', '(340)170-4568', '2014-05-09 23:12:02', '2017-04-04 22:47:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Nikolas', 'Harvey', 'shanelle97@example.org', '533.242.1217x72975', '2014-05-09 18:05:36', '2013-05-09 15:51:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Lazaro', 'Muller', 'bfisher@example.net', '1-579-728-0901x95339', '2011-04-28 10:30:59', '2014-07-15 09:32:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Caroline', 'Mayer', 'whyatt@example.net', '1-135-744-1091x89291', '2016-02-09 21:58:31', '2018-07-05 11:02:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Gaston', 'Kautzer', 'josianne.mcdermott@example.org', '(691)044-5147x119', '2013-05-06 13:23:11', '2020-09-03 13:09:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Brycen', 'Rice', 'christy31@example.com', '335.548.9672x534', '2018-07-04 20:40:55', '2020-12-13 09:13:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Lelia', 'Mueller', 'reinger.oral@example.net', '012.736.1550', '2018-05-09 04:24:13', '2014-01-23 00:41:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Jordon', 'Kris', 'adrain96@example.org', '(451)412-5202x2619', '2011-09-30 08:24:57', '2011-05-03 17:35:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Khalid', 'Roberts', 'gust.hegmann@example.org', '+97(1)4312812285', '2016-02-06 03:36:03', '2020-08-26 21:28:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Patsy', 'Friesen', 'zoie84@example.net', '161.690.1014x36581', '2015-01-05 05:28:57', '2014-03-16 18:39:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Agustina', 'Schinner', 'koepp.jairo@example.net', '(293)297-2064x490', '2020-02-04 01:30:34', '2014-11-10 00:07:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Augustine', 'Donnelly', 'tborer@example.org', '(019)568-5684x99773', '2013-02-07 19:51:25', '2019-04-02 21:39:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Wade', 'Bechtelar', 'clara44@example.com', '1-715-288-5869x137', '2011-08-24 11:50:10', '2012-05-12 14:18:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Rick', 'Ondricka', 'elinore.rutherford@example.com', '(743)597-9359x965', '2021-02-01 22:50:55', '2016-02-07 02:43:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Rene', 'Gaylord', 'lourdes.ritchie@example.com', '256.703.2211', '2018-09-07 02:10:33', '2020-01-25 14:29:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Bartholome', 'Vandervort', 'labadie.imelda@example.net', '(317)887-4785x7067', '2021-01-07 12:39:39', '2011-05-03 11:08:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Heber', 'Dare', 'richard51@example.org', '1-036-889-6631x0377', '2017-05-11 08:51:17', '2012-03-14 05:11:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Amie', 'VonRueden', 'elsie.adams@example.net', '(452)965-3813x4238', '2015-06-12 17:42:24', '2013-09-21 05:26:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Clarabelle', 'Rohan', 'uwolf@example.org', '(139)064-4382x266', '2020-08-19 12:14:28', '2015-01-26 18:38:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Harmon', 'Volkman', 'trever17@example.org', '(891)233-1414x373', '2015-06-15 19:25:47', '2014-12-22 23:10:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jessie', 'Howe', 'koss.grayson@example.net', '(400)622-0526', '2020-07-27 11:51:18', '2018-12-27 14:55:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Assunta', 'Harber', 'eugene.schmitt@example.net', '(899)225-3448x734', '2015-07-20 21:42:35', '2019-06-14 10:40:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Brycen', 'Jones', 'reta.ullrich@example.net', '+64(9)5392483676', '2017-01-29 10:22:41', '2017-10-17 03:52:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Hope', 'Kovacek', 'mozelle88@example.org', '665.406.0608', '2017-10-14 12:47:57', '2018-09-10 03:31:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Roselyn', 'Wiegand', 'gay.boyle@example.net', '1-371-335-0348x683', '2020-04-23 04:29:16', '2013-02-23 09:39:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Madonna', 'Zemlak', 'rahul.swift@example.com', '304-715-8249x3271', '2012-08-18 00:49:44', '2017-11-30 00:37:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Caroline', 'Rutherford', 'judah.lemke@example.net', '1-967-434-7201', '2012-03-13 04:16:30', '2017-05-22 06:44:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Melyssa', 'Kohler', 'runte.joanny@example.org', '566-946-1842x565', '2012-08-17 00:45:37', '2014-04-07 01:05:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Grady', 'Hyatt', 'donnie.eichmann@example.com', '473-007-7518x4591', '2016-03-31 06:59:57', '2020-12-04 16:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Icie', 'Leuschke', 'delmer.leuschke@example.com', '+50(2)4832359022', '2015-04-19 18:06:28', '2013-03-28 16:57:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Winona', 'Donnelly', 'zrogahn@example.com', '1-508-161-7383', '2020-07-16 23:52:30', '2017-12-16 18:23:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Elmira', 'Grimes', 'macy.corkery@example.org', '295-881-6156x959', '2014-12-17 21:58:24', '2019-07-12 10:41:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Kevin', 'Armstrong', 'tyrel40@example.org', '433-738-7818', '2016-03-29 12:22:55', '2015-09-09 02:07:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Hayden', 'Considine', 'mraz.amanda@example.net', '(228)889-5480', '2015-02-23 04:49:40', '2020-01-16 08:20:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Fannie', 'Crona', 'tgerlach@example.com', '(836)438-3760', '2011-08-02 19:28:36', '2020-09-14 04:47:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Brant', 'Vandervort', 'roberts.davon@example.com', '1-306-285-6571', '2014-06-05 10:33:48', '2020-05-09 11:16:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Genevieve', 'Armstrong', 'mariane12@example.com', '1-733-003-9770x18736', '2018-02-19 04:35:29', '2017-03-17 02:41:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Winona', 'Carroll', 'moen.karley@example.net', '129.376.7527x361', '2013-07-26 11:14:17', '2014-01-21 02:06:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jose', 'Ankunding', 'connelly.jovany@example.org', '1-415-389-4804x576', '2019-05-21 02:49:42', '2018-05-09 13:33:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kristoffer', 'Klocko', 'chet.rodriguez@example.org', '556-550-3673x4619', '2012-05-20 17:15:09', '2020-06-05 22:29:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Ella', 'Ankunding', 'zledner@example.net', '02231337709', '2020-11-27 19:05:00', '2016-11-11 03:00:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Janice', 'Streich', 'nelle.satterfield@example.org', '642-784-0820x639', '2018-02-22 17:42:31', '2021-03-03 23:11:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Beatrice', 'McGlynn', 'leif.trantow@example.com', '076-214-1110x6631', '2019-05-31 02:05:58', '2020-09-01 03:05:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Thaddeus', 'Marvin', 'helmer12@example.org', '09906961622', '2011-10-09 14:16:25', '2017-07-22 13:57:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Alize', 'Walker', 'dorris.parisian@example.org', '(968)659-9705x43501', '2014-09-08 18:33:06', '2016-03-21 13:08:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Ellsworth', 'Miller', 'preinger@example.com', '(368)674-1863x4819', '2014-08-09 12:52:10', '2013-01-06 20:42:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Monserrate', 'Mohr', 'sawayn.aron@example.net', '+39(8)2842613820', '2012-09-04 21:20:15', '2017-04-09 16:47:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Caitlyn', 'Frami', 'o\'keefe.sven@example.org', '02459014914', '2020-12-09 19:36:56', '2020-11-25 11:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Marcelo', 'Lindgren', 'zstark@example.com', '256-001-7021', '2017-09-08 20:22:12', '2017-05-31 01:07:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Barton', 'Walter', 'khirthe@example.com', '899.437.6558x01798', '2017-09-08 02:30:33', '2017-03-24 10:35:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Dannie', 'Stiedemann', 'chermann@example.com', '1-672-541-3295', '2011-05-01 08:04:25', '2015-06-18 21:55:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Javon', 'Wilderman', 'marian89@example.org', '1-026-568-7131x2478', '2011-12-15 12:25:39', '2015-07-26 22:50:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Rahsaan', 'Ebert', 'yost.clay@example.com', '+27(6)3469920162', '2013-11-04 07:29:18', '2016-08-09 10:20:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Leatha', 'Schultz', 'baron81@example.net', '280-786-0557', '2015-03-30 17:55:34', '2017-05-04 09:29:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Yasmine', 'Kunde', 'rswift@example.org', '159.446.0064x21196', '2018-01-17 05:11:24', '2017-06-17 21:42:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Chaim', 'Kirlin', 'mrutherford@example.net', '1-604-051-9973', '2019-01-27 05:35:39', '2016-02-05 05:49:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Presley', 'Bruen', 'randall.bernhard@example.org', '(330)038-9035x68390', '2013-08-06 10:27:25', '2012-12-03 02:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Adolf', 'Klocko', 'nina.donnelly@example.org', '(243)317-0474x44904', '2017-01-11 19:41:00', '2017-09-01 16:32:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Dayna', 'Dach', 'nlabadie@example.net', '616-502-7947x60712', '2021-01-16 01:40:12', '2016-11-21 16:33:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Elwyn', 'Hirthe', 'mathew62@example.org', '454-380-9639x733', '2017-05-09 19:55:11', '2017-04-29 06:12:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'River', 'Terry', 'mrutherford@example.org', '1-601-619-0504x4098', '2015-03-20 18:16:12', '2017-05-27 18:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Addie', 'Abernathy', 'jerald.haley@example.net', '1-008-828-3752x015', '2019-02-13 03:31:08', '2014-11-01 08:35:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Samara', 'Kunde', 'bartell.ida@example.net', '1-102-315-0840', '2014-04-21 23:53:02', '2021-02-04 19:56:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'D\'angelo', 'Muller', 'cummings.erick@example.com', '082.725.3983x31447', '2012-02-23 08:20:00', '2015-02-06 12:02:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Jay', 'Labadie', 'jane41@example.net', '883-741-0711', '2018-08-24 16:12:23', '2012-01-09 13:23:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Reina', 'Murray', 'grace78@example.com', '1-026-810-8916x685', '2017-05-04 18:28:10', '2019-08-25 05:00:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Elda', 'Trantow', 'epfannerstill@example.net', '(381)110-7514x7856', '2018-12-15 14:43:13', '2017-03-11 00:14:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Rickie', 'Simonis', 'champlin.katelyn@example.org', '1-001-531-6103x90311', '2020-05-17 02:33:49', '2019-07-06 16:21:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Alda', 'Williamson', 'dandre89@example.com', '1-768-914-1605x11771', '2012-02-29 08:53:27', '2018-08-19 21:53:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Lenna', 'Auer', 'macejkovic.helene@example.com', '631-424-4249x94746', '2014-10-17 02:46:33', '2017-01-04 05:26:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Camilla', 'Reynolds', 'tanya65@example.net', '(128)454-9415x891', '2018-11-09 08:10:47', '2019-12-29 06:40:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Jade', 'Lind', 'dtorp@example.org', '(284)827-0691', '2017-09-10 01:34:59', '2018-02-26 11:29:28');


