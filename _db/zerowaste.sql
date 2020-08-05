-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2020 at 05:38 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zerowaste`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `store_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(256) NOT NULL,
  `short_content` text NOT NULL,
  `description` text NOT NULL,
  `cover_photo` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `roomtype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `hotel_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `cover_image` tinyint(4) DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `thumb_nails` tinyint(4) DEFAULT NULL,
  `active_status` tinyint(4) DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organiser` varchar(64) NOT NULL,
  `date` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_name` varchar(64) NOT NULL,
  `access_rights` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_brands`
--

CREATE TABLE `store_brands` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ward` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `s_value` text NOT NULL,
  `s_key` varchar(32) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trackings`
--

CREATE TABLE `trackings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `object_type` varchar(50) DEFAULT NULL,
  `object_id` varchar(50) NOT NULL,
  `object_name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `status` enum('P','A','I') NOT NULL DEFAULT 'A',
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `last_login_date` datetime NOT NULL,
  `roles` varchar(255) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `cellphone` varchar(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `password_reset_token` varchar(728) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`, `added_date`, `updated_date`, `updated_by`, `last_login_date`, `roles`, `fullname`, `cellphone`, `email`, `remarks`, `is_admin`, `ip_address`, `hotel_id`, `password_reset_token`, `avatar`, `gender`) VALUES
(1, 'admin', '82458da2ada841f6698c7f8b97dc36fb854dfc52', 'A', '0000-00-00 00:00:00', '2015-10-16 21:58:53', 1, '2020-08-04 11:08:02', 'supper admin', 'Tap Nguyen', '0982007996', 'nghuytap@gmail.com', '', 1, '::1', 0, '', 'dikkCM5hIpiQQA_AOD9YrlRZ2H1QExdp', 'male'),
(13, 'thanhphuc', '72b0269d62075234ce817c069b14f4baaf8fb9f4', 'A', '2019-04-03 11:04:20', '2019-04-03 11:04:20', 1, '2019-04-06 08:04:10', 'supper admin', 'Admin', '', 'v.phucnt@gmail.com ', '', 1, '14.161.33.219', 0, '', '', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_name`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_brands`
--
ALTER TABLE `store_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trackings`
--
ALTER TABLE `trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fullname` (`fullname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_brands`
--
ALTER TABLE `store_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trackings`
--
ALTER TABLE `trackings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
