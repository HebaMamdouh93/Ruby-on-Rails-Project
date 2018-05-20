-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2018 at 11:47 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mooc_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL,
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
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$11$dQgqfGoPv4NBKFgWhVguFOirkdzgATZ8RS8wVyIeE3gbEvhQPd43a', NULL, NULL, NULL, 9, '2018-05-17 18:51:19', '2018-05-17 18:46:22', '127.0.0.1', '127.0.0.1', '2018-05-08 18:35:36', '2018-05-17 18:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-05-08 18:27:43', '2018-05-08 18:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `ckeditor_assets`
--

CREATE TABLE `ckeditor_assets` (
  `id` bigint(20) NOT NULL,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `lecture_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'ruby on rails', 11, '2018-05-17 15:37:00', '2018-05-17 15:37:00'),
(5, 'python 1', 10, '2018-05-17 17:21:13', '2018-05-17 18:21:10'),
(6, 'design pattern', 11, '2018-05-17 17:41:15', '2018-05-17 17:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint(20) NOT NULL,
  `content` text,
  `attachment` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `content`, `attachment`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '<p>maxklm <span style="color:#FF0000;">mlklm bhjbjbj<br />\r\nnbvv</span></p>\r\n', 'Presentation4.pdf', 3, 11, '2018-05-17 22:55:28', '2018-05-17 22:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `lectures_users`
--

CREATE TABLE `lectures_users` (
  `id` bigint(20) NOT NULL,
  `lecture_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180508182727'),
('20180508183414'),
('20180508183426'),
('20180508202521'),
('20180508204418'),
('20180508204837'),
('20180508205257'),
('20180508221720'),
('20180511013735'),
('20180511014020'),
('20180511023008'),
('20180511024100'),
('20180511024152'),
('20180511135243'),
('20180515023645'),
('20180515045534'),
('20180517085755'),
('20180517131040'),
('20180517151442'),
('20180517152007'),
('20180517152326'),
('20180517152446'),
('20180517205218');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `instructor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`, `gender`, `dob`, `avatar`, `instructor`) VALUES
(10, 'heba@gmail.com', '$2a$11$wDVGJWmU2GTHC7/aozt85.nkTyNU/hBSVu/ZwNUG1VTDkAhhjvHbW', NULL, NULL, NULL, 3, '2018-05-20 12:34:07', '2018-05-17 21:51:11', '127.0.0.1', '127.0.0.1', '2018-05-17 15:26:57', '2018-05-20 12:34:07', 'Heba', 1, '1993-06-01', 'photo.jpg', 1),
(11, 'hebakel@gmail.com', '$2a$11$pW9edxGLpP04Q7rMjaq3vuO.ZURzEjgLFdt8PFLeOGaPQb5AboFyu', NULL, NULL, NULL, 3, '2018-05-17 17:40:51', '2018-05-17 15:35:58', '127.0.0.1', '127.0.0.1', '2018-05-17 15:30:55', '2018-05-17 17:40:51', 'heba Akel', 1, '1993-06-01', 'index.jpeg', 1),
(12, 'ali@ali.com', '$2a$11$i/ZWgZqQ7fsMBTJZ6utkMOgXOvS91ZpdE6BX0DHPn5Q9.QXxsddl.', NULL, NULL, NULL, 2, '2018-05-17 18:44:06', '2018-05-17 16:08:01', '127.0.0.1', '127.0.0.1', '2018-05-17 16:08:00', '2018-05-17 18:44:06', 'Ali', 0, '1990-05-31', 'index.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `votable_type` varchar(255) DEFAULT NULL,
  `votable_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  ADD KEY `index_active_admin_comments_on_namespace` (`namespace`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_admin_users_on_email` (`email`),
  ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  ADD KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_lecture_id` (`lecture_id`),
  ADD KEY `index_comments_on_user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_courses_on_user_id` (`user_id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_lectures_on_course_id` (`course_id`),
  ADD KEY `index_lectures_on_user_id` (`user_id`);

--
-- Indexes for table `lectures_users`
--
ALTER TABLE `lectures_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_lectures_users_on_lecture_id` (`lecture_id`),
  ADD KEY `index_lectures_users_on_user_id` (`user_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  ADD KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lectures_users`
--
ALTER TABLE `lectures_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rails_da9eb9513e` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_rails_b3c61f05ef` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `fk_rails_5a439a4e07` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rails_bbbf25c9a6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lectures_users`
--
ALTER TABLE `lectures_users`
  ADD CONSTRAINT `fk_rails_1fb95eb385` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rails_b76aaab16f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
