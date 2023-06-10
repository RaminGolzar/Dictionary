-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 03:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_dictionary`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('text','titr','list','short') NOT NULL,
  `content` varchar(535) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `type`, `content`) VALUES
(4, 'short', 'dlkjfl fjfjlkdjdjsfrueioru  urwoiue roeru rueioewruoewiurpuiu fdcv,nn nc,vn,xcnv,cn ,n ,cxvmn,'),
(20, 'list', 'html;CSS;JS;PHP;MYSQL;AJAX;XML;REGEX;API;WEB SERVICE;'),
(18, 'titr', '[ Dictionary ]'),
(19, 'text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labort, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `admin_utilities`
--

CREATE TABLE `admin_utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `utilitie` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_utilities`
--

INSERT INTO `admin_utilities` (`id`, `utilitie`) VALUES
(1, 'Edit About'),
(2, 'Edit FAQ'),
(3, 'Manage Translate'),
(4, 'Not Translate'),
(5, 'Manage Users'),
(6, 'Assist Form'),
(7, 'Manage Employee');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` char(20) NOT NULL,
  `last_name` char(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` char(13) NOT NULL,
  `address` char(255) NOT NULL,
  `str_id` varchar(10) NOT NULL,
  `password` char(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `tel`, `address`, `str_id`, `password`, `created_at`, `updated_at`, `deleted_at`, `active`) VALUES
(9, 'Hasan', 'Alawei', 'hasanjan@email.ir', '09033333333', 'a s d f gj j l jsd', 'HasanJan', '$2y$10$/O1L28JQly233KiaGAggB.2RYxsKXIFW86IWqn.ZA8OzeS6vF5R4.', '0000-00-00 00:00:00', '2022-07-11 15:38:08', 1, 1),
(10, 'amir', 'alavi', 'amir@email.ir', '09234744328', 'ldsjflkdsfj', 'fjfj', '$2y$10$ArC.gNSBlVtesVEs9KjSIOJqIpRhYiMjGIvP7QEhQZbrolTV6N.Gu', '0000-00-00 00:00:00', '2022-08-11 17:59:16', 1, 1),
(13, 'ali', 'alavi', 'ALI@email.ir', '1233779990', 'lsdfj', 'ali', '$2y$10$SkQgj/o/QGtm/vDrLEXkteImv.hWcEileM/4B4MOKPt5roV9s75lG', '0000-00-00 00:00:00', '2022-08-13 15:42:37', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_role`
--

CREATE TABLE `employee_role` (
  `employee_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_role`
--

INSERT INTO `employee_role` (`employee_id`, `role_id`) VALUES
(1, 5),
(1, 6),
(9, 6),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(11, 3),
(11, 4),
(12, 5),
(12, 7),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_tiket`
--

CREATE TABLE `employee_tiket` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(20) NOT NULL,
  `content` varchar(300) NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `recipient_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` char(100) NOT NULL,
  `answer` varchar(535) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `hide`) VALUES
(1, 'first question', 'first answer', 0),
(4, 'second faq', 'second faq', 1),
(3, 'sdfsdf', 'safsddsf  fdsfds dsf  dfsdfsdf sdf', 1),
(5, 'amamam', 'amamamamamamama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `word`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aa', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(2, 'aa', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(3, 'GG', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(4, 'GG', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(5, 'GG', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(6, 'GG', 1, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(7, 'w', 2, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(8, 'w', 2, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(9, 'red', 22, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(10, 'general', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(11, 'red', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(12, 'red', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(13, 'aa', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(14, 'aa', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(15, 'red', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(16, 'alternative', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(17, 'Assignment', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(18, 'argument', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(19, 'ascending', 140, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(20, 'exactly', 105, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(21, 'entry', 105, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(22, 'elephpant', 105, '2022-05-20 13:24:50', '2022-05-20 13:24:50', 1),
(42, 'green', 135, '2022-05-21 20:45:22', '2022-05-21 20:45:22', 1),
(43, 'red', 135, '2022-05-21 20:45:25', '2022-05-21 20:45:25', 1),
(44, 'rect', 135, '2022-05-21 20:45:28', '2022-05-21 20:45:28', 1),
(45, 'red', 135, '2022-05-21 22:07:11', '2022-05-21 22:07:11', 1),
(46, 'aaaa', 135, '2022-05-21 22:07:29', '2022-05-21 22:07:29', 1),
(47, 'aaaa', 135, '2022-05-21 22:07:33', '2022-05-21 22:07:33', 1),
(48, 'red', 135, '2022-05-21 22:10:06', '2022-05-21 22:10:06', 1),
(49, 'reddd', 135, '2022-05-21 22:10:09', '2022-05-21 22:10:09', 1),
(50, 'redaaaaaaaaa', 135, '2022-05-21 22:18:51', '2022-05-21 22:18:51', 1),
(51, 'red', 135, '2022-05-21 22:19:40', '2022-05-21 22:19:40', 1),
(52, 'red', 135, '2022-05-21 22:19:55', '2022-05-21 22:19:55', 1),
(53, 'alternative', 135, '2022-05-21 22:22:57', '2022-05-21 22:22:57', 1),
(54, 'alternative', 135, '2022-05-21 22:23:01', '2022-05-21 22:23:01', 1),
(55, 'red', 135, '2022-05-21 22:23:09', '2022-05-21 22:23:09', 1),
(56, 'red', 135, '2022-05-21 22:23:10', '2022-05-21 22:23:10', 1),
(57, 'red', 135, '2022-05-21 22:23:11', '2022-05-21 22:23:11', 1),
(58, 'rect', 135, '2022-05-21 22:23:45', '2022-05-21 22:23:45', 1),
(59, 'argument', 135, '2022-05-21 22:30:23', '2022-05-21 22:30:23', 1),
(60, 'Assignment', 135, '2022-05-21 22:30:43', '2022-05-21 22:30:43', 1),
(61, 'red', 1, '2022-05-30 12:30:44', '2022-05-30 12:30:44', 1),
(62, 'red', 1, '2022-05-30 12:30:45', '2022-05-30 12:30:45', 1),
(63, 'red', 1, '2022-05-30 12:36:14', '2022-05-30 12:36:14', 1),
(64, 'WWW', 1, '2022-05-30 13:30:38', '2022-05-30 13:30:38', 1),
(65, 'WWW', 1, '2022-05-30 13:30:40', '2022-05-30 13:30:40', 1),
(66, 'کفش', 1, '2022-06-03 09:21:20', '2022-06-03 09:21:20', 1),
(67, 'rect', 1, '2022-06-03 09:22:07', '2022-06-03 09:22:07', 1),
(68, 'rectzzzzz', 1, '2022-06-03 09:22:15', '2022-06-03 09:22:15', 1),
(69, 'rectzzzzz', 1, '2022-06-03 09:22:17', '2022-06-03 09:22:17', 1),
(70, 'gggg', 1, '2022-06-03 09:40:49', '2022-06-03 09:40:49', 1),
(71, 'gggg', 1, '2022-06-03 09:40:53', '2022-06-03 09:40:53', 1),
(72, 'gggg', 1, '2022-06-03 09:40:53', '2022-06-03 09:40:53', 1),
(73, 'red', 1, '2022-06-03 09:45:37', '2022-06-03 09:45:37', 1),
(74, 'red', 1, '2022-06-03 09:45:37', '2022-06-03 09:45:37', 1),
(75, 'aaaaaaaa', 1, '2022-06-03 09:45:48', '2022-06-03 09:45:48', 1),
(76, 'aaaaaaaa', 1, '2022-06-03 09:45:55', '2022-06-03 09:45:55', 1),
(77, 'red', 1, '2022-06-03 09:51:14', '2022-06-03 09:51:14', 1),
(78, 'قرمز', 1, '2022-06-03 09:51:32', '2022-06-03 09:51:32', 1),
(79, 'شششش', 1, '2022-06-03 09:53:30', '2022-06-03 09:53:30', 1),
(80, 'ششببب', 1, '2022-06-03 09:56:19', '2022-06-03 09:56:19', 1),
(81, 'ششببب', 1, '2022-06-03 09:56:24', '2022-06-03 09:56:24', 1),
(82, 'sdfdsfsdfsdf', 1, '2022-06-03 09:56:45', '2022-06-03 09:56:45', 1),
(83, 'erwrew', 1, '2022-06-03 09:58:05', '2022-06-03 09:58:05', 1),
(84, 'ppppp', 1, '2022-06-03 09:58:14', '2022-06-03 09:58:14', 1),
(85, 'red', 1, '2022-06-03 10:01:06', '2022-06-03 10:01:06', 1),
(86, 'redqqqqq', 1, '2022-06-03 10:01:10', '2022-06-03 10:01:10', 1),
(87, 'redaaaaaaaaa', 1, '2022-06-03 10:03:09', '2022-06-03 10:03:09', 1),
(88, 'redقرمز', 1, '2022-06-03 10:04:55', '2022-06-03 10:04:55', 1),
(89, 'redقرمز', 1, '2022-06-03 10:05:03', '2022-06-03 10:05:03', 1),
(90, 'بسیبsfdsfff', 1, '2022-06-03 10:34:35', '2022-06-03 10:34:35', 1),
(91, 'سیبسب', 1, '2022-06-03 18:23:10', '2022-06-03 18:23:10', 1),
(92, 'green', 1, '2022-06-03 18:56:20', '2022-06-03 18:56:20', 1),
(93, 'green', 2, '2022-06-03 19:08:33', '2022-06-03 19:08:33', 1),
(94, 'yellow', 2, '2022-06-03 19:08:40', '2022-06-03 19:08:40', 1),
(95, 'red', 2, '2022-06-03 19:08:51', '2022-06-03 19:08:51', 1),
(96, 'some', 2, '2022-06-03 19:08:57', '2022-06-03 19:08:57', 1),
(97, 'tile', 2, '2022-06-03 19:09:01', '2022-06-03 19:09:01', 1),
(98, 'aaaaa', 3, '2022-06-03 19:09:59', '2022-06-03 19:09:59', 1),
(99, 'green', 1, '2022-06-08 09:44:47', '2022-06-08 09:44:47', 1),
(100, 'سبز', 1, '2022-06-08 09:44:54', '2022-06-08 09:44:54', 1),
(101, 'green', 1, '2022-06-10 15:46:55', '2022-06-10 15:46:55', 1),
(102, 'green', 15, '2022-06-19 13:25:18', '2022-06-19 13:25:18', 1),
(103, 'red', 15, '2022-06-19 13:25:30', '2022-06-19 13:25:30', 1),
(104, 'sdfs', 15, '2022-06-19 13:27:07', '2022-06-19 13:27:07', 1),
(105, 'fffff', 15, '2022-06-19 13:27:35', '2022-06-19 13:27:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `not_found_words`
--

CREATE TABLE `not_found_words` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(20) NOT NULL,
  `lang` enum('fa','en') NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `not_translate`
--

CREATE TABLE `not_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `not_translate`
--

INSERT INTO `not_translate` (`id`, `word`, `user_id`) VALUES
(5, 'WWW', 1),
(6, 'WWW', 1),
(7, 'erwrew', 1),
(10, 'redقرمز', 1),
(13, 'سیبسب', 1),
(14, 'red', 2),
(15, 'some', 2),
(16, 'tile', 2),
(17, 'aaaaa', 3),
(18, 'red', 15),
(19, 'sdfs', 15),
(20, 'fffff', 15);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin2', 'admin@email.ir', '$2y$10$8EBqotKQl0Ey1U8Gwr7h4.Nzxe5FUCNy81FFCXvmfRTQobo1Hn7GK', '09177777700', '2022-06-17', '2022-06-17 10:37:15', 1),
(2, 'Name #2', 'e2@email.ir', '$2y$10$5cRnWEQWkQR37RrbtlQ.juycEYmSqBfTfC0sOBvWBwXzmpzN92fkW', '0919000002', '2022-06-17', '2022-06-17 10:37:15', 1),
(3, 'Name #3', 'e3@email.ir', '$2y$10$fxHAT0pPggnScFKJw2G4Guez.YbRKUXoMgT3zOQfiSdD3gXwHt4wm', '0919000003', '2022-06-17', '2022-06-17 10:37:15', 1),
(4, 'Name #4', 'e4@email.ir', '$2y$10$npckp1fIaooqoOgj8lTieuesk33p16uGimUz52Xu5oHLTRi2SZ8li', '0919000004', '2022-06-17', '2022-06-17 10:37:15', 1),
(5, 'Name #5', 'e5@email.ir', '$2y$10$pn.Hn3.9/D92Un4AZhHUteovsZ/4zRtJ1cOd5SOIieE4PtgRhDph6', '0919000005', '2022-06-17', '2022-06-17 10:37:16', 0),
(6, 'Name #6', 'e6@email.ir', '$2y$10$OwkgwgQ1lVLS1Dh4MAmPAOLCqy/Q8/7kxxIUoYyiAg6gOyp4VO5HG', '0919000006', '2022-06-17', '2022-06-17 10:37:16', 1),
(7, 'Name #7', 'e7@email.ir', '$2y$10$aKaVvOjvXta/xKSlirAE3.En6SojFtk7fgqW1PKRAVzKxFjJxir06', '0919000007', '2022-06-17', '2022-06-17 10:37:16', 1),
(8, 'Name #8', 'e8@email.ir', '$2y$10$vH9iJ5VlGxMp8COfK0yNjegj7SpHnaEeoJ6ni070pORcrbThNtUeC', '0919000008', '2022-06-17', '2022-06-17 10:37:16', 1),
(9, 'Name #9', 'e9@email.ir', '$2y$10$rAH76iWMlYaQ7PLtkhJ74umpoY6LwcOeZCjX9qTWMJdXmsdH4RkFW', '0919000009', '2022-06-17', '2022-06-17 10:37:16', 1),
(10, 'Name #10', 'e10@email.ir', '$2y$10$gcOunahtfKp67kKdyxvQHec649PdSVcsdj2PmDP0qyq5LFGyz9I8.', '09190000010', '2022-06-17', '2022-06-17 10:37:16', 1),
(11, 'djsflk', 'aa@email.ir', '$2y$10$eu.XOoQhKiEMS7TGfGw5uu1rpKddpn3X5x.xihCUksIA2zxgWdXfe', 'kljkj111', '2022-06-17', '2022-06-17 12:28:37', 1),
(12, 'first', 'first@email.ir', '$2y$10$94I0E9ENMtBv7TzCN3Oqi.4vj7YvwvB68n9rHp7ZH4VUTVl33Lz6a', 'skdfjldks', '2022-06-17', '2022-06-17 13:52:34', 1),
(13, 'second', 'second@email.ir', '$2y$10$UB3mBvSXnwiIyc7o7RkLFu11woQs2cNioxUDhnxeVqO1j1I4q2LSe', 'ososososo', '2022-06-17', '2022-06-17 14:09:57', 1),
(14, 'Eraj KHAN', 'ERAJKHAN@EMAIL.IR', '$2y$10$RhK6L6supDN3q3dMonUNyuEJ0/y2SbIpKH.YSiuecHxhA31jXCXXK', '0912121212', '2022-06-18', '2022-06-18 10:40:14', 1),
(15, 'HAMED', 'hamed@email.com', '$2y$10$I.vngxSzfSxGDNlVPCWUXujHLPHWF89bS/HfoR6LYsgxpkYPg0XCC', '222222', '2022-06-19', '2022-06-19 12:45:42', 1),
(16, '', '', '$2y$10$6vqP6C6d1zp4uEeLg5H/Z.6./3lHZblhOcmMsB0lRhLH5D4vtozSu', '', '2022-06-29', '2022-06-29 15:36:08', 1),
(17, 'new reg', 'aaa@aaa.aaa', '$2y$10$AD95ofEIMJAH3n8p0bYGdejs0FLXHdWCBKDDPnwej2XO66YTe8fy6', '38383838388', '2022-06-30', '2022-06-30 11:09:17', 1),
(18, 'HAMID', 'hamid@email.ir', '$2y$10$CPMufgxb5dJhjuIHewrXOuYZsiOE8Q1KtYIwHaC.ggfm/OscymNNC', '122211112211', '2022-06-30', '2022-06-30 13:40:49', 1),
(19, 'alo alo man juju has', 'aaa@aaa.aaa', '$2y$10$waVevWZmLzSQEK.4AR4DOuUxOwNwbTssRSTOZlMyJylZmsASBkD8W', '12121212111', '2022-07-01', '2022-07-01 09:37:14', 1),
(20, 'amam', 'amam@email.ir', '$2y$10$jpFLL0hgUqBfDwGnfcXE9eN3ShvZFwNhAZJn/QGdlA1olIP8Z5Jmi', '09187777777', '2023-03-20', '2023-03-20 19:57:50', 1),
(21, 'zaza', 'zaza@email.ir', '$2y$10$hDkPhc3wVmNq5zNcMbEsresm2HSAOSwxkmvPBPVWMbrz2oE54I2U2', '000000001111', '2023-03-20', '2023-03-20 20:01:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tiket`
--

CREATE TABLE `user_tiket` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` char(20) NOT NULL,
  `content` char(255) NOT NULL,
  `status` enum('waiting','answered') NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(10) UNSIGNED NOT NULL,
  `fa` varchar(20) NOT NULL,
  `en` varchar(20) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `fa`, `en`, `hide`) VALUES
(1, 'سفید', 'white', 0),
(2, 'سبز', 'green', 0),
(3, 'سبح', 'morning', 0),
(4, 'زرد', 'yellow', 0),
(5, 'یکسان', 'same', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_utilities`
--
ALTER TABLE `admin_utilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_role`
--
ALTER TABLE `employee_role`
  ADD PRIMARY KEY (`employee_id`,`role_id`);

--
-- Indexes for table `employee_tiket`
--
ALTER TABLE `employee_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `not_found_words`
--
ALTER TABLE `not_found_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `not_translate`
--
ALTER TABLE `not_translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Indexes for table `user_tiket`
--
ALTER TABLE `user_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fa` (`fa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin_utilities`
--
ALTER TABLE `admin_utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employee_tiket`
--
ALTER TABLE `employee_tiket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `not_found_words`
--
ALTER TABLE `not_found_words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `not_translate`
--
ALTER TABLE `not_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_tiket`
--
ALTER TABLE `user_tiket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
