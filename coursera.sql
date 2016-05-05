-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2016 at 11:27 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coursera`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$/N/DR/rMmhCeVXMB.3PMdusRCXSnV/Xv1lcO3S8KNmnxGR43u4n1a', NULL, NULL, NULL, 3, '2016-05-04 14:44:48', '2016-05-04 09:10:02', '127.0.0.1', '127.0.0.1', '2016-05-01 22:54:35', '2016-05-04 14:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `ckeditor_assets`
--

CREATE TABLE IF NOT EXISTS `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_user_id` (`user_id`),
  KEY `index_comments_on_lecture_id` (`lecture_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `lecture_id`, `body`, `created_at`, `updated_at`) VALUES
(7, 6, 7, 'alaa adel', '2016-05-02 17:42:54', '2016-05-02 17:42:54'),
(9, 10, 10, 'hhhhhhhhhhhmm', '2016-05-05 16:08:21', '2016-05-05 16:10:37'),
(10, 10, 7, 'my new comment', '2016-05-05 16:20:30', '2016-05-05 16:20:31'),
(11, 10, 9, 'fffffffffffff', '2016-05-05 16:25:57', '2016-05-05 16:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `user_id`, `created_at`, `updated_at`, `image`, `content`) VALUES
(1, 'first course', 4, '2016-04-30 21:59:45', '2016-05-01 02:30:16', 'slider1.jpg', NULL),
(2, 'first course', 4, '2016-04-30 23:34:01', '2016-05-01 02:52:43', 'bg.jpg', '<p><span style="font-size:28px;"><span style="color:#FFFF00;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">jfhdjhfahfajfafaf</span></span></span></p>\r\n'),
(3, 'eeeeee', 4, '2016-04-30 23:38:35', '2016-05-01 02:51:46', '006.jpg', ''),
(4, 'dhgsjhdgsjdgs', 6, '2016-05-01 02:05:23', '2016-05-01 02:29:58', 'slider3.jpg', NULL),
(6, 'aya_title', 6, '2016-05-01 02:49:54', '2016-05-01 02:51:09', 'slide1.jpg', '<h1><span style="color:#2F4F4F;">hhgjgafladfgajfgajhfhgadjfhafgajhfa</span></h1>\r\n'),
(7, 'hhgdhdghagahdgasdj', 6, '2016-05-02 17:13:22', '2016-05-02 17:13:22', '001.jpg', '<p><span style="color:#00FF00;"><span style="font-size:22px;"><span style="font-family:comic sans ms,cursive;">jdsadhhhhhhhhhhhhhhhhhhhhhhhhhhh</span></span></span></p>\r\n'),
(8, 'tile yaso', 9, '2016-05-05 12:28:40', '2016-05-05 12:28:40', '001.jpg', '<p><span style="color:#ADD8E6;"><span style="font-size:20px;"><span style="font-family:courier new,courier,monospace;">jgdgsfgdhgfhjsgsjdgfsdhgfhdgfjhjdshgvghjdsbmnsdmbfmnwbrkjewhrewkjfmewnfb</span></span></span></p>\r\n'),
(9, 'koky_title', 10, '2016-05-05 15:10:57', '2016-05-05 15:11:34', 'det-pic.jpg', '<p>dddddddddddjhcakxhcjcccccccccccccccccccccccccccccc</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_lectures_on_course_id` (`course_id`),
  KEY `index_lectures_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `course_id`, `user_id`, `content`, `attach`, `created_at`, `updated_at`, `image`) VALUES
(3, 2, 6, '<h2 style="font-style:italic;">jshdjsdhjdjhjsd</h2>\r\n', 'error5.png', '2016-05-01 01:04:38', '2016-05-01 11:40:28', '001.jpg'),
(4, 2, 6, '<h1><span style="color:#FFFF00;"><span style="font-family:comic sans ms,cursive;">hjdjdkejkedjejhdjehdjkehdejkdhejdhjcbxnmsbxsnmxbsxbs</span></span></h1>\r\n', NULL, '2016-05-01 20:23:20', '2016-05-01 20:23:20', 'det-pic.jpg'),
(5, NULL, 6, '<p>ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p>\r\n', NULL, '2016-05-01 20:34:35', '2016-05-01 20:34:35', NULL),
(6, 4, 6, '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>\r\n', NULL, '2016-05-01 20:36:02', '2016-05-01 20:36:02', '001.jpg'),
(7, 7, 6, '<p><span style="color:#FF8C00;"><span style="font-size:22px;">ggggggggggggggggggggggggggggggggggggggggggg</span></span></p>\r\n', NULL, '2016-05-02 17:18:43', '2016-05-02 17:18:43', '004.jpg'),
(8, 4, 6, 'gjjwqgejhwgehwgewh', 'aya-adel-mohamed.pdf', '2016-05-04 08:58:51', '2016-05-04 08:58:51', '006.jpg'),
(9, 7, 6, '<p>hhkfhfkjdahfjksdhfdskahfdaf</p>\r\n', NULL, '2016-05-05 08:49:11', '2016-05-05 08:49:11', 'slider1.jpg'),
(10, 9, 10, '<p><span style="color:#00FFFF;"><span style="font-size:22px;"><span style="font-family:courier new,courier,monospace;">jkjhjjdhfjdhfjdssssssssssssssssssssssssssssssssssssssvmzvcnv,cmnvmcnvxcm,v</span></span></span></p>\r\n', 'aya-adel-mohamed.pdf', '2016-05-05 16:06:27', '2016-05-05 16:06:27', '007.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160430174541'),
('20160430174815'),
('20160430174834'),
('20160430174843'),
('20160430180012'),
('20160430180034'),
('20160430180120'),
('20160430193521'),
('20160430205013'),
('20160430213039'),
('20160430234559'),
('20160501030931'),
('20160501030932'),
('20160501030933'),
('20160501113402'),
('20160501120807'),
('20160501120809'),
('20160501162127'),
('20160501214923'),
('20160501214927'),
('20160501224042'),
('20160501224045'),
('20160501225336'),
('20160501225338'),
('20160501232819'),
('20160505105023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `gender`, `image`, `age`, `name`, `role`) VALUES
(4, 'saso@yahoo.com', '$2a$10$ZSo3WGJRh2EMYozy7Wj20.8pcHwMJ.9kEB7THcTAi3pe2ZVrANzuS', NULL, NULL, NULL, 5, '2016-04-30 21:51:29', '2016-04-30 21:16:39', '127.0.0.1', '127.0.0.1', '2016-04-30 20:55:49', '2016-04-30 21:51:29', 0, 'kgl;ttt', '1992-12-06', 'yoyo', 'instractor'),
(6, 'mona@yahoo.com', '$2a$10$IWrqSc28R0cWsU..Bg2Aj.C5VZN0MtK9liTLttUvFXAON.YCYTiVC', NULL, NULL, NULL, 17, '2016-05-05 19:45:10', '2016-05-05 16:46:43', '127.0.0.1', '127.0.0.1', '2016-05-01 01:00:42', '2016-05-05 19:45:10', 1, 'slider3.jpg', '1960-12-03', 'mona', 'user'),
(9, 'yasoo@yahoo.com', '$2a$10$cQanmP1I0MyO9ahYbj1bvOi2QDhbdhfUK28.2gQ9p12P.mDe8e5yq', NULL, NULL, NULL, 3, '2016-05-05 19:42:25', '2016-05-05 12:26:32', '127.0.0.1', '127.0.0.1', '2016-05-05 11:23:41', '2016-05-05 19:42:25', 1, '004.jpg', '1992-12-01', 'yasmin', 'instractor'),
(10, 'kokyy@yahoo.com', '$2a$10$q9k./wlKiXo6e5Q1m/yj4OBIIJVRKxs.mcWeiE8Nyl8bBbL4vh6yK', NULL, NULL, NULL, 3, '2016-05-05 20:03:26', '2016-05-05 19:44:33', '127.0.0.1', '127.0.0.1', '2016-05-05 12:30:39', '2016-05-05 20:03:26', 1, '002.jpg', '1992-12-06', 'koky', 'instractor');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votable_id` int(11) DEFAULT NULL,
  `votable_type` varchar(255) DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `votable_id`, `votable_type`, `voter_id`, `voter_type`, `vote_flag`, `vote_scope`, `vote_weight`, `created_at`, `updated_at`) VALUES
(1, 6, 'Lecture', 6, 'User', 1, NULL, 1, '2016-05-02 10:01:00', '2016-05-02 10:04:16'),
(2, 10, 'Lecture', 10, 'User', 0, NULL, 1, '2016-05-05 20:14:39', '2016-05-05 20:17:12');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_da9eb9513e` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_rails_b3c61f05ef` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `fk_rails_5a439a4e07` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rails_bbbf25c9a6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
