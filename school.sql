-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2023 at 08:19 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chemistry', 7, 'add_chemistry'),
(26, 'Can change chemistry', 7, 'change_chemistry'),
(27, 'Can delete chemistry', 7, 'delete_chemistry'),
(28, 'Can view chemistry', 7, 'view_chemistry'),
(29, 'Can add biology', 8, 'add_biology'),
(30, 'Can change biology', 8, 'change_biology'),
(31, 'Can delete biology', 8, 'delete_biology'),
(32, 'Can view biology', 8, 'view_biology'),
(33, 'Can add mathematics', 9, 'add_mathematics'),
(34, 'Can change mathematics', 9, 'change_mathematics'),
(35, 'Can delete mathematics', 9, 'delete_mathematics'),
(36, 'Can view mathematics', 9, 'view_mathematics'),
(37, 'Can add physics', 10, 'add_physics'),
(38, 'Can change physics', 10, 'change_physics'),
(39, 'Can delete physics', 10, 'delete_physics'),
(40, 'Can view physics', 10, 'view_physics'),
(41, 'Can add feedback', 11, 'add_feedback'),
(42, 'Can change feedback', 11, 'change_feedback'),
(43, 'Can delete feedback', 11, 'delete_feedback'),
(44, 'Can view feedback', 11, 'view_feedback'),
(45, 'Can add past paper', 12, 'add_pastpaper'),
(46, 'Can change past paper', 12, 'change_pastpaper'),
(47, 'Can delete past paper', 12, 'delete_pastpaper'),
(48, 'Can view past paper', 12, 'view_pastpaper');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$fB4j2ZbkYSGADP1c97NOY8$2xpdZXi5Lv/6sbbB0OnZ0wqqUlvRkPd80It4YtNBN0I=', '2023-08-10 08:19:16.419844', 1, 'admin', '', '', '', 1, 1, '2023-07-16 09:29:08.404313'),
(2, 'pbkdf2_sha256$390000$A7sFGSX56ChPBvxxTa5tL5$8/OGAPdA0Gef0Ugzk/izZo58Q3qdJL+Q3+9HFotHll4=', '2023-08-09 10:12:35.666267', 0, 'user1', '', '', 'gideonaugustino1998@gmail.com', 0, 1, '2023-08-01 18:11:41.698383'),
(3, 'pbkdf2_sha256$600000$7xQDmqDDzJ0ExsN8f7rEar$9xBHQHmMu5s7z9PxvP10+wfWeR/6RPDw+x4EjWB0rIU=', NULL, 0, 'user2', '', '', 'gideonaugustino998@gmail.com', 0, 1, '2023-08-02 13:47:53.133696'),
(4, 'pbkdf2_sha256$600000$gzwh8wqvFf3rePJlSrbNBO$Qqw1o1PExKFBRsOlwFtU7DPF6nEeSUwEplnjDtjMafE=', NULL, 0, 'user3', '', '', 'gideonaugustino9938@gmail.com', 0, 1, '2023-08-02 13:49:00.642415'),
(5, 'pbkdf2_sha256$390000$Cv047tuw4WaHT8hJKN2ncx$Js9pdguqUbGCvWghUaBUFNvXRBfootWSvAQY0TfEO5U=', '2023-08-12 16:11:05.357647', 0, 'admin1', '', '', '', 0, 1, '2023-08-02 14:07:50.000000'),
(6, 'pbkdf2_sha256$390000$1R560hG6iB3ARbcQBOfblq$WLoBznPRzKu+Rqov8aVxGaLrvQHieY1TIlCQnAXlcJU=', '2023-08-10 09:55:13.512467', 0, 'elly', '', '', 'elix@gmail.com', 0, 1, '2023-08-10 09:54:36.764646');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 2),
(3, 4, 2),
(4, 5, 1),
(5, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-16 09:30:41.143603', '1', 'Chemistry object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-07-16 09:32:17.964427', '1', 'CHEMICAL FORMULARS', 2, '[]', 7, 1),
(3, '2023-07-16 09:34:21.012203', '1', 'CHEMICAL FORMULARS', 2, '[]', 7, 1),
(4, '2023-07-16 10:23:06.902368', '1', 'CHEMICAL FORMULARS', 3, '', 7, 1),
(5, '2023-07-16 10:34:41.791324', '2', 'CHEMICAL FORMULARS', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-07-16 11:14:08.845567', '3', 'CHEMICAL COMPOUNDS', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-07-16 12:03:30.177581', '4', 'ffewf', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-07-16 12:14:53.559210', '4', 'ffewf', 2, '[{\"changed\": {\"fields\": [\"Pdf file\"]}}]', 7, 1),
(9, '2023-07-16 12:14:58.823755', '4', 'ffewf', 2, '[]', 7, 1),
(10, '2023-07-16 12:21:20.404447', '3', 'CHEMICAL COMPOUNDS', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(11, '2023-07-16 12:22:10.195203', '3', 'CHEMICAL COMPOUNDS', 2, '[]', 7, 1),
(12, '2023-07-16 12:22:19.672665', '3', 'CHEMICAL COMPOUNDS', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(13, '2023-07-16 14:18:38.551070', '4', 'Principles of General Chemistry', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Image\"]}}]', 7, 1),
(14, '2023-07-16 14:22:58.658396', '5', 'Acids, Bases, and pH', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-07-16 14:24:33.681364', '6', 'Molecular Equations', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-07-16 20:35:43.177563', '6', 'Molecular Equations', 2, '[]', 7, 1),
(17, '2023-07-16 20:41:28.385705', '2', 'CHEMICAL FORMULARS', 2, '[{\"changed\": {\"fields\": [\"Levels\"]}}]', 7, 1),
(18, '2023-07-16 21:09:23.490917', '1', 'INTRODUCTION TO PHYSICS', 1, '[{\"added\": {}}]', 10, 1),
(19, '2023-07-16 21:09:44.192149', '1', 'INTRODUCTION TO PHYSICS', 2, '[]', 10, 1),
(20, '2023-07-16 21:14:54.902017', '1', 'INTRODUCTION TO PHYSICS', 2, '[]', 10, 1),
(21, '2023-07-18 14:45:06.593033', '1', 'INTRODUCTION TO PHYSICS', 2, '[{\"changed\": {\"fields\": [\"Levels\"]}}]', 10, 1),
(22, '2023-07-18 14:47:30.181541', '2', 'FRICTION FORCE AND MAGNETISM', 1, '[{\"added\": {}}]', 10, 1),
(23, '2023-07-18 15:04:24.030410', '1', 'REPRODUCTION FOR LIVING ORGANISMS', 1, '[{\"added\": {}}]', 8, 1),
(24, '2023-07-18 15:22:40.045280', '2', 'CLASSIFICATION', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-07-18 15:34:19.358870', '1', 'INTRODUNCTION TO WHOLE NUMBERS', 1, '[{\"added\": {}}]', 9, 1),
(26, '2023-07-18 15:41:19.350944', '2', 'DIFFRENTIATION AND CALICULAS', 1, '[{\"added\": {}}]', 9, 1),
(27, '2023-07-19 11:07:50.821672', '3', 'Test title', 3, '', 8, 1),
(28, '2023-07-19 11:21:29.841516', '7', 'ffdv', 3, '', 8, 1),
(29, '2023-07-19 11:21:29.845516', '6', 'dfvgtgt', 3, '', 8, 1),
(30, '2023-07-19 11:21:29.846517', '5', 'dfvgtgt', 3, '', 8, 1),
(31, '2023-07-19 11:21:29.847518', '4', 'Test  title', 3, '', 8, 1),
(32, '2023-07-19 11:29:49.572921', '8', 'dfcfre', 3, '', 8, 1),
(33, '2023-07-19 15:40:55.993110', '15', 'TEST TITLE', 3, '', 8, 1),
(34, '2023-07-19 15:40:55.994154', '14', 'HUMAN BEING AND LIVING ORGANISMS', 3, '', 8, 1),
(35, '2023-08-01 16:58:38.157007', '1', 'admin', 1, '[{\"added\": {}}]', 3, 1),
(36, '2023-08-01 16:58:44.451274', '2', 'user', 1, '[{\"added\": {}}]', 3, 1),
(37, '2023-08-02 14:07:51.085969', '5', 'admin1', 1, '[{\"added\": {}}]', 4, 1),
(38, '2023-08-02 14:07:59.065596', '5', 'admin1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(39, '2023-08-02 14:09:14.549498', '5', 'admin1', 2, '[]', 4, 1),
(40, '2023-08-10 08:28:02.853718', '1', 'physics pastpaper', 1, '[{\"added\": {}}]', 12, 1),
(41, '2023-08-10 08:36:53.376880', '2', 'test papers', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'schoolapp', 'chemistry'),
(8, 'schoolapp', 'biology'),
(9, 'schoolapp', 'mathematics'),
(10, 'schoolapp', 'physics'),
(11, 'schoolapp', 'feedback'),
(12, 'schoolapp', 'pastpaper');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-16 09:13:30.477480'),
(2, 'auth', '0001_initial', '2023-07-16 09:13:31.507877'),
(3, 'admin', '0001_initial', '2023-07-16 09:13:31.839383'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-16 09:13:31.848437'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-16 09:13:31.854719'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-16 09:13:31.963446'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-16 09:13:32.006949'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-16 09:13:32.062051'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-16 09:13:32.067925'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-16 09:13:32.119140'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-16 09:13:32.122104'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-16 09:13:32.128123'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-16 09:13:32.179558'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-16 09:13:32.242047'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-16 09:13:32.305711'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-16 09:13:32.313493'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-16 09:13:32.367516'),
(18, 'sessions', '0001_initial', '2023-07-16 09:13:32.429485'),
(19, 'schoolapp', '0001_initial', '2023-07-16 09:27:39.229627'),
(20, 'schoolapp', '0002_chemistry_image_chemistry_pdf_file', '2023-07-16 10:26:42.954649'),
(21, 'schoolapp', '0003_alter_chemistry_description', '2023-07-16 12:21:59.735580'),
(22, 'schoolapp', '0004_alter_chemistry_status', '2023-07-16 14:04:02.929188'),
(23, 'schoolapp', '0005_chemistry_levels', '2023-07-16 20:35:21.318894'),
(24, 'schoolapp', '0006_biology_mathematics_physics', '2023-07-16 21:01:49.591845'),
(25, 'schoolapp', '0007_feedback_alter_biology_levels_alter_chemistry_levels_and_more', '2023-07-18 18:54:05.814807'),
(26, 'schoolapp', '0008_alter_biology_levels_alter_chemistry_levels_and_more', '2023-07-18 20:19:31.399429'),
(27, 'schoolapp', '0009_alter_biology_description_and_more', '2023-07-19 15:25:00.308008'),
(28, 'schoolapp', '0010_alter_biology_description_and_more', '2023-07-19 16:11:41.988515'),
(29, 'schoolapp', '0011_alter_biology_levels_alter_biology_status_and_more', '2023-07-20 06:16:37.164309'),
(30, 'schoolapp', '0012_alter_biology_description', '2023-07-20 06:21:22.284971'),
(31, 'schoolapp', '0013_alter_biology_description', '2023-07-20 06:39:25.604686'),
(32, 'schoolapp', '0014_pastpaper', '2023-08-10 07:59:12.630642');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jexjsf16yvrmvxstaff1b8tzxz0j4t7e', '.eJxVjMsOwiAQRf-FtSGAUx4u3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXocXpd0tID247yHdst1nS3NZlSnJX5EG7HOfMz-vh_h1U7PVbFwjsVbLMTmkGg8Gjc8arAgZ0CaQdkQWCkgYHXjkcCM4mZUtFoc7i_QHabDfT:1qKy4E:MGDD3pfQFErME3E86eOWQ21koWiQ6mdt2ilqUjnTBKg', '2023-07-30 09:29:26.938150'),
('5h2evm7dnluz3i2ttvr709x2featvieo', '.eJxVjMsOwiAQRf-FtSGAUx4u3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXocXpd0tID247yHdst1nS3NZlSnJX5EG7HOfMz-vh_h1U7PVbFwjsVbLMTmkGg8Gjc8arAgZ0CaQdkQWCkgYHXjkcCM4mZUtFoc7i_QHabDfT:1qLlwd:HSW5QM9O6eDakPJ_b70BGEnjDIoNMIHDtrrzUdo5HEw', '2023-08-01 14:44:55.341334'),
('fj7p1654o7td791rvqz5z658n02on0tk', '.eJxVjMsOwiAQRf-FtSGAUx4u3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXocXpd0tID247yHdst1nS3NZlSnJX5EG7HOfMz-vh_h1U7PVbFwjsVbLMTmkGg8Gjc8arAgZ0CaQdkQWCkgYHXjkcCM4mZUtFoc7i_QHabDfT:1qM51y:U5csv30i-gIp2fugBnU4SPs-PO2Y980wIk68p9nyF9s', '2023-08-02 11:07:42.073437'),
('k8650x95pn5jeutz8u9c2z3exyu4k8ee', '.eJxVjMsOwiAQRf-FtSGAUx4u3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXocXpd0tID247yHdst1nS3NZlSnJX5EG7HOfMz-vh_h1U7PVbFwjsVbLMTmkGg8Gjc8arAgZ0CaQdkQWCkgYHXjkcCM4mZUtFoc7i_QHabDfT:1qM5NI:0EPGLl1FXZ8FnHUO85cKyqSDN7NTfTqYt4QWlQi24_o', '2023-08-02 11:29:44.466502'),
('4ghy5vet4hny9unahufovjnvzeax5f5l', 'e30:1qRCua:ykloe9yzzWwaHIJjLnCreg71t9mDULw2gUZIkhJyL7Y', '2023-08-16 14:33:16.904090'),
('nf6zlmp5zzi6dewxwjda5qi47bijfies', 'e30:1qRD9Q:jqHJ6g29Xywy1et8HtW5gt-XiPfqVaGhZCq_v8PjFGI', '2023-08-16 14:48:36.191425'),
('qdk4d5rzavpuww54l2wtwnn0czugc6yx', 'e30:1qRD4P:Y7B4xO5TE2CvPf6REajkRjjINtpeAjX-T7CYkb_yu6M', '2023-08-16 14:43:25.625721');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_biology`
--

DROP TABLE IF EXISTS `schoolapp_biology`;
CREATE TABLE IF NOT EXISTS `schoolapp_biology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `levels` varchar(50) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_biology`
--

INSERT INTO `schoolapp_biology` (`id`, `publisher`, `title`, `description`, `image`, `pdf_file`, `status`, `levels`, `time`) VALUES
(2, 'Gideon Magaita', 'CLASSIFICATION', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images/biology.png', 'images/Venue__TMS_uQ0X3ro.pdf', 'publish', 'O-Level', '2023-07-18 18:21:24.000000'),
(9, 'Gideon Magaita', 'MOLECULAR FORMULARS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', 'images/group-of-multi-ethnic-students-in-chemistry-lab-469951129-5c06fb2846e0fb000129ad3_qgdtAxG.jpg', 'images/Venue__TMS_e6pNB2R.pdf', 'publish', 'O-Level', '2023-07-19 14:31:14.706279'),
(13, 'Gideon Magaita', 'BALANCE OF NATURE', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'images/biology_KKCRzzW.png', '', 'publish', 'O-Level', '2023-07-19 18:11:18.021406'),
(23, 'Gideon Magaita', 'TITLE YANGU', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '', '', 'publish', 'O-Level', '2023-07-20 09:40:11.129103');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_chemistry`
--

DROP TABLE IF EXISTS `schoolapp_chemistry`;
CREATE TABLE IF NOT EXISTS `schoolapp_chemistry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext,
  `status` varchar(200) NOT NULL,
  `time` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `levels` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_chemistry`
--

INSERT INTO `schoolapp_chemistry` (`id`, `publisher`, `title`, `description`, `status`, `time`, `image`, `pdf_file`, `levels`) VALUES
(2, 'Gideon Magaita', 'CHEMICAL FORMULARS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 'publish', '2023-07-16 13:32:38.000000', 'images/physics.png', 'images/Venue__TMS.pdf', 'A-Level'),
(3, 'Gideon Magaita', 'CHEMICAL COMPOUNDS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professo  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'publish', '2023-07-16 14:10:58.000000', 'images/IMG_1775.jpg', 'images/ssi101.pdf', 'O-Level'),
(4, 'Gideon Magaita', 'Principles of General Chemistry', 'As you begin your study of college chemistry, those of you who do not intend to become professional chemists may well wonder why you need to study chemistry. You will soon discover that a basic understanding of chemistry is useful in a wide range of disciplines and career paths. You will also discover that an understanding of chemistry helps you make informed decisions about many issues that affect you, your community, and your world. A major goal of this text is to demonstrate the importance of chemistry in your daily life and in our collective understanding of both the physical world we occupy and the biological realm of which we are a part. The objectives of this chapter are twofold: (1) to introduce the breadth, the importance, and some of the challenges of modern chemistry and (2) to present some of the fundamental concepts and definitions you will need to understand how chemists think and work.', 'publish', '2023-07-16 15:02:52.000000', 'images/GENERAL.jpg', '', 'O-Level'),
(5, 'Gideon Magaita', 'Acids, Bases, and pH', 'Acids, bases, and pH are concepts that apply to aqueous solutions (solutions in water). pH refers to the hydrogen ion concentration, or the ability of a species to donate/accept protons or electrons. Acids and bases reflect the relative availability of hydrogen ions or proton/electron donors or acceptors. Acid-base reactions are extremely important in living cells and industrial processes. Atoms are composed of protons, neutrons, and electrons. Protons and neutrons form the nucleus of each atom, with electrons moving around this core. The study of atomic structure involves understanding the composition of atoms, isotopes, and ions.Electrochemistry is primarily concerned with oxidation-reduction reactions or redox reactions. These reactions produce ions and may be harnessed to produce electrodes and batteries. Electrochemistry is used to predict whether a reaction will occur and in which direction electrons will flow.', 'publish', '2023-07-16 17:18:43.000000', 'images/group-of-multi-ethnic-students-in-chemistry-lab-469951129-5c06fb2846e0fb000129ad3d.jpg', '', 'O-Level');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_feedback`
--

DROP TABLE IF EXISTS `schoolapp_feedback`;
CREATE TABLE IF NOT EXISTS `schoolapp_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `feedback` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_feedback`
--

INSERT INTO `schoolapp_feedback` (`id`, `email`, `feedback`) VALUES
(33, 'robert.michael@nit.ac.tz', 'njlohio'),
(31, 'a@gmail.com', 'klgjglgjtkgljtkjg'),
(32, 'l@gmail.com', 'feedbacks'),
(30, 'robert.michael@nit.ac.tz', 'kmewmlekf;wefkm'),
(29, 'test@gmail.com', 'user feedback'),
(28, 'user1@gmail.com', 'Hello, this is my feedback');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_mathematics`
--

DROP TABLE IF EXISTS `schoolapp_mathematics`;
CREATE TABLE IF NOT EXISTS `schoolapp_mathematics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `levels` varchar(50) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_mathematics`
--

INSERT INTO `schoolapp_mathematics` (`id`, `publisher`, `title`, `description`, `image`, `pdf_file`, `status`, `levels`, `time`) VALUES
(1, 'Gideon Magaita', 'INTRODUNCTION TO WHOLE NUMBERS', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images/physics_RhQTfVs.png', 'images/Venue__TMS_7poOCCx.pdf', 'publish', 'O-Level', '2023-07-18 18:33:39.000000'),
(2, 'Gideon Magaita', 'DIFFRENTIATION AND CALICULAS', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images/math.png', 'images/Venue__TMS_gbNXOKj.pdf', 'publish', 'A-Level', '2023-07-18 18:40:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_pastpaper`
--

DROP TABLE IF EXISTS `schoolapp_pastpaper`;
CREATE TABLE IF NOT EXISTS `schoolapp_pastpaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) DEFAULT NULL,
  `paper_file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_pastpaper`
--

INSERT INTO `schoolapp_pastpaper` (`id`, `file_name`, `paper_file`) VALUES
(1, 'physics pastpaper', 'images/Timetable_10.pdf'),
(2, 'test papers', 'images/Timetable_14.pdf'),
(3, 'this is papers', 'images/2_5g_device_specs.pdf'),
(4, 'pppppp', 'images/barua.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_physics`
--

DROP TABLE IF EXISTS `schoolapp_physics`;
CREATE TABLE IF NOT EXISTS `schoolapp_physics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `levels` varchar(50) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolapp_physics`
--

INSERT INTO `schoolapp_physics` (`id`, `publisher`, `title`, `description`, `image`, `pdf_file`, `status`, `levels`, `time`) VALUES
(1, 'Gideon Magaita', 'INTRODUCTION TO PHYSICS', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images/GENERAL_zn0h77S.jpg', 'images/Venue__TMS_LD9farV.pdf', 'publish', 'A-Level', '2023-07-17 00:06:16.000000'),
(2, 'Gideon Magaita', 'FRICTION FORCE AND MAGNETISM', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images/flask.png', 'images/Venue__TMS_Fvkw694.pdf', 'publish', 'O-Level', '2023-07-18 17:45:46.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
