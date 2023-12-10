-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 06:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apis`
--
CREATE DATABASE IF NOT EXISTS `apis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apis`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name_ar` text NOT NULL,
  `name_en` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ملابس', 'clothes', 1, NULL, NULL),
(2, 'قبعه', 'hats', 1, NULL, NULL),
(3, 'phone', 'هاتف', 1, '2023-08-12 08:49:49', '2023-08-12 08:49:49'),
(4, 'حاسوب', 'computer', 1, '2023-08-12 10:41:34', '2023-08-12 10:41:34'),
(5, 'حاسوب', 'computer', 1, '2023-08-12 10:41:38', '2023-08-12 10:41:38'),
(6, 'حاسوب', 'computer', 1, '2023-09-01 05:09:59', '2023-09-01 05:09:59'),
(7, 'تن', 'DS', 0, '2023-09-01 05:34:12', '2023-09-01 05:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `auth_ui`
--
CREATE DATABASE IF NOT EXISTS `auth_ui` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth_ui`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'محمد على محمود', 'dxmohamedxd@gmail.com', NULL, '$2y$10$RVlqB9lpRjtIcQiG1aRgI.4DYVHTQOcSeT3mLuCm9SiUjOQg8JTT2', NULL, '2023-08-06 10:07:10', '2023-08-06 10:07:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `compancies`
--
CREATE DATABASE IF NOT EXISTS `compancies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `compancies`;

-- --------------------------------------------------------

--
-- Table structure for table `add_employe`
--

CREATE TABLE `add_employe` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_employe`
--

INSERT INTO `add_employe` (`id`, `name`, `password`, `email`) VALUES
(72, 'Mohamed Ali', '$2y$10$LRamgtbXhDZwYSqRx1GuX.5h9JI3u3z6Z90UKN6RUc9mYGR.ItSgS', 'dxmoham@gmail.com'),
(78, 'خالد ود الزين', '$2y$10$E7BNdHR3.nMNYYVElImDz.tD21St6nprJURfk19vs61LK.ZWXIn8O', 'khlidarafa1@gmail.com'),
(95, 'Mohamed Ali', '$2y$10$Rj/AFdiJtYRFhT44TRq58uJZjcYjlmtG8nAZPTwzDftliOht.LAp2', 'dxmohamedxd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` text NOT NULL,
  `name_companes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_employe`
--
ALTER TABLE `add_employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `email`, `date`, `deleted_at`) VALUES
(1, 'محمد على محمود', 'dxmohamed@gmail.com', '2023-07-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_15_114547_create_cards_table', 1),
(6, '2022_12_22_123647_create_hospitals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `kass`
--
CREATE DATABASE IF NOT EXISTS `kass` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kass`;

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_courses`
--

CREATE TABLE `agriculture_courses` (
  `id` int(11) NOT NULL,
  `agriculture_land_id` int(11) DEFAULT NULL,
  `agriculture_crop_id` int(11) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `suggested_finish_time` timestamp NULL DEFAULT NULL,
  `actual_finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_courses`
--

INSERT INTO `agriculture_courses` (`id`, `agriculture_land_id`, `agriculture_crop_id`, `area`, `start_time`, `suggested_finish_time`, `actual_finish_time`, `created`, `updated`) VALUES
(2, 2, 2, '500.00', '2023-09-04 00:00:00', '2023-09-21 00:00:00', '2023-09-29 00:00:00', '2023-09-03 10:24:06', '2023-09-03 10:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_course_events`
--

CREATE TABLE `agriculture_course_events` (
  `id` int(11) NOT NULL,
  `agriculture_course_id` int(11) DEFAULT NULL,
  `agriculture_event_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_course_events`
--

INSERT INTO `agriculture_course_events` (`id`, `agriculture_course_id`, `agriculture_event_type_id`, `descr`, `date`, `cost`, `created`, `updated`) VALUES
(6, 2, NULL, '100', '2020-10-10 00:00:00', '100.00', '2023-09-04 11:44:47', '2023-09-04 11:44:47'),
(8, 2, 1, '500', '2020-10-20 00:00:00', '500.00', '2023-09-04 11:47:26', '2023-09-04 11:47:26'),
(9, 2, 1, 'test', '2022-10-20 00:00:00', '500.00', '2023-09-04 11:59:51', '2023-09-04 11:59:51'),
(10, 2, 1, '500', '2022-10-10 00:00:00', '500.00', '2023-09-04 12:01:45', '2023-09-04 12:01:45'),
(11, 2, 1, '100', '2023-10-10 00:00:00', '800.00', '2023-09-04 12:06:19', '2023-09-04 12:06:19'),
(12, 2, 1, 'test copmuted', '2020-02-10 00:00:00', '500.00', '2023-09-04 12:07:39', '2023-09-04 12:07:39'),
(13, 2, 2, 'ttt', '1999-02-20 00:00:00', '500.00', '2023-09-04 12:13:37', '2023-09-04 12:13:37'),
(14, 2, 2, 'tttttttttttttkkm', '2020-10-20 00:00:00', '700.00', '2023-09-04 12:17:37', '2023-09-04 12:28:22'),
(15, 2, 1, '50', '2022-02-10 00:00:00', '100.00', '2023-09-04 12:37:31', '2023-09-04 12:37:31'),
(16, 2, 1, '500', '2022-02-10 00:00:00', '900.00', '2023-09-04 12:40:09', '2023-09-04 12:40:09'),
(17, 2, 1, 'walter test', '2022-02-10 00:00:00', '1.00', '2023-09-04 12:41:28', '2023-09-04 12:41:28'),
(18, 2, 1, '1000000000000000000', '2020-10-10 00:00:00', '110.00', '2023-09-04 12:43:42', '2023-09-04 12:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_crops`
--

CREATE TABLE `agriculture_crops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hravest_unit` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_crops`
--

INSERT INTO `agriculture_crops` (`id`, `name`, `hravest_unit`, `created`, `updated`) VALUES
(2, 'test', 'test', '2023-09-03 09:55:18', '2023-09-03 09:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_event_types`
--

CREATE TABLE `agriculture_event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_event_types`
--

INSERT INTO `agriculture_event_types` (`id`, `name`, `created`, `updated`) VALUES
(1, 'test', '2023-09-03 11:27:19', '2023-09-03 11:27:19'),
(2, 'weeko', '2023-09-03 11:27:22', '2023-09-04 12:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_harvest`
--

CREATE TABLE `agriculture_harvest` (
  `id` int(11) NOT NULL,
  `agriculture_course_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `harvest_cost` decimal(10,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_harvest`
--

INSERT INTO `agriculture_harvest` (`id`, `agriculture_course_id`, `qty`, `unit_price`, `harvest_cost`, `date`, `created`, `updated`) VALUES
(1, 2, '200.00', '500.00', '100.00', '2022-10-01 22:00:00', '2023-09-04 12:57:04', '2023-09-04 12:57:04'),
(2, 2, '3.00', '3.00', '3.00', '2022-10-20 00:00:00', '2023-09-04 12:59:12', '2023-09-04 12:59:12'),
(3, 2, '200.00', '300.00', '200.00', '2022-10-20 00:00:00', '2023-09-04 13:49:10', '2023-09-04 13:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_lands`
--

CREATE TABLE `agriculture_lands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_lands`
--

INSERT INTO `agriculture_lands` (`id`, `name`, `location`, `area`, `created`, `updated`) VALUES
(2, 'test', 'test', '200.00', '2023-09-03 09:31:50', '2023-09-03 09:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_land_contracts`
--

CREATE TABLE `agriculture_land_contracts` (
  `id` int(11) NOT NULL,
  `agriculture_land_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `finish_time` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriculture_land_contracts`
--

INSERT INTO `agriculture_land_contracts` (`id`, `agriculture_land_id`, `area`, `customer`, `start_time`, `finish_time`, `created`, `updated`) VALUES
(2, 2, '500', 'walter', '2022-10-20', '2023-01-22', '2023-09-05 06:34:26', '2023-09-05 06:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `archive_files`
--

CREATE TABLE `archive_files` (
  `id` int(11) NOT NULL,
  `file_date` datetime DEFAULT NULL,
  `archive_file_type_id` int(11) DEFAULT NULL,
  `archive_folder_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_files`
--

INSERT INTO `archive_files` (`id`, `file_date`, `archive_file_type_id`, `archive_folder_id`, `title`, `descr`, `file`, `created`, `updated`) VALUES
(5, '2023-08-09 00:00:00', 2, 10, 'File one', 'Short Description', './uploads/1692601880059471.docx', '2023-08-21 07:11:20', '2023-08-21 07:16:16'),
(6, '2023-08-02 00:00:00', 2, 11, 'File two', 'Folder description', './uploads/1692602510683601.docx', '2023-08-21 07:21:50', '2023-08-21 08:04:26'),
(7, '2023-08-02 00:00:00', 4, 12, 'File three', 'Short desc', './uploads/1692616342376935.docx', '2023-08-21 11:12:22', '2023-08-21 11:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `archive_file_types`
--

CREATE TABLE `archive_file_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_file_types`
--

INSERT INTO `archive_file_types` (`id`, `name`, `created`, `updated`) VALUES
(2, 'Employees', '2023-08-20 14:22:02', '2023-08-20 14:22:02'),
(4, 'Water Bills', '2023-08-21 09:39:08', '2023-08-21 09:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `archive_folders`
--

CREATE TABLE `archive_folders` (
  `id` int(11) NOT NULL,
  `archive_shelve_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_folders`
--

INSERT INTO `archive_folders` (`id`, `archive_shelve_id`, `number`, `created`, `updated`) VALUES
(10, 4, 2983798, '2023-08-20 16:09:21', '2023-08-20 16:09:21'),
(11, 5, 93280948, '2023-08-20 16:09:49', '2023-08-20 16:09:49'),
(12, 5, 27387837, '2023-08-20 16:09:57', '2023-08-20 16:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `archive_shelves`
--

CREATE TABLE `archive_shelves` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_shelves`
--

INSERT INTO `archive_shelves` (`id`, `name`, `created`, `updated`) VALUES
(4, 'shelve one', '2023-08-20 16:04:53', '2023-08-20 16:04:53'),
(5, 'shelve two', '2023-08-20 16:04:58', '2023-08-20 16:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `browsers`
--

CREATE TABLE `browsers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `os_name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cheques`
--

CREATE TABLE `cheques` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_meetings`
--

CREATE TABLE `communication_meetings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creater_user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `duarion` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_meeting_participants`
--

CREATE TABLE `communication_meeting_participants` (
  `id` int(11) NOT NULL,
  `communication_meeting_id` int(11) DEFAULT NULL,
  `participant_user_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_personal_calls`
--

CREATE TABLE `communication_personal_calls` (
  `id` int(11) NOT NULL,
  `caller_user_id` int(11) DEFAULT NULL,
  `callee_user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `tel`, `website`, `email`, `created`, `updated`) VALUES
(1, 'kassala_farm', NULL, NULL, NULL, '2023-08-06 10:21:29', '2023-08-06 10:21:29'),
(2, 'farm', NULL, NULL, NULL, '2023-08-06 10:21:29', '2023-08-06 10:21:29'),
(3, 'mothers', NULL, NULL, NULL, '2023-08-06 10:21:29', '2023-08-06 10:21:29'),
(4, 'future', NULL, NULL, NULL, '2023-08-06 10:21:29', '2023-08-06 10:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_courses`
--

CREATE TABLE `farm_courses` (
  `id` int(11) NOT NULL,
  `farm_barn_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hens_qty` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_course_events`
--

CREATE TABLE `farm_course_events` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `farm_event_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_course_workers`
--

CREATE TABLE `farm_course_workers` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `work_descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_event_types`
--

CREATE TABLE `farm_event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feed_formulas`
--

CREATE TABLE `feed_formulas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feed_formula_history`
--

CREATE TABLE `feed_formula_history` (
  `id` int(11) NOT NULL,
  `feed_formula_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feed_formula_mixture`
--

CREATE TABLE `feed_formula_mixture` (
  `id` int(11) NOT NULL,
  `feed_formula_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feed_formula_mixture_history`
--

CREATE TABLE `feed_formula_mixture_history` (
  `id` int(11) NOT NULL,
  `feed_formula_history_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `initial_book_value` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendance`
--

CREATE TABLE `hr_attendance` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_awards`
--

CREATE TABLE `hr_awards` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_award_type_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) DEFAULT NULL COMMENT 'if hr_award_type_id is null this is set instead (in UI award type is other)',
  `descr` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_award_types`
--

CREATE TABLE `hr_award_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complains`
--

CREATE TABLE `hr_complains` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_complain_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complain_types`
--

CREATE TABLE `hr_complain_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_departments`
--

CREATE TABLE `hr_departments` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `manager_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `acceptable_kpis_average` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_department_kpis`
--

CREATE TABLE `hr_department_kpis` (
  `id` int(11) NOT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees`
--

CREATE TABLE `hr_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_employees`
--

INSERT INTO `hr_employees` (`id`, `name`, `birthdate`, `basic_salary`, `created`, `updated`) VALUES
(4, 'kola', NULL, NULL, '2023-08-06 09:58:26', '2023-08-06 14:34:39'),
(6, 'harran', NULL, NULL, '2023-08-06 12:41:54', '2023-08-06 14:34:35'),
(7, 'seeda', NULL, NULL, '2023-08-06 12:42:08', '2023-08-06 14:34:42'),
(8, 'ahmad adil', NULL, NULL, '2023-08-06 12:42:45', '2023-08-06 14:34:49'),
(9, 'abdalla', NULL, NULL, '2023-08-06 12:42:53', '2023-08-06 14:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees_working_hours`
--

CREATE TABLE `hr_employees_working_hours` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `weekday` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_departments`
--

CREATE TABLE `hr_employee_departments` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `hr_job_title_id` int(11) DEFAULT NULL,
  `salary_percent` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_files`
--

CREATE TABLE `hr_employee_files` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_kpi_records`
--

CREATE TABLE `hr_employee_kpi_records` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_kpi_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL COMMENT 'range 0 - 100',
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_transfers`
--

CREATE TABLE `hr_employee_transfers` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `from_hr_department_id` int(11) DEFAULT NULL,
  `to_hr_department_id` int(11) DEFAULT NULL,
  `from_salary` decimal(10,2) DEFAULT NULL,
  `to_salary` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_warnings`
--

CREATE TABLE `hr_employee_warnings` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'the file contains the printed warning. the employee should sign and then the document is uploaded to the system',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holidays`
--

CREATE TABLE `hr_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holiday_departments`
--

CREATE TABLE `hr_holiday_departments` (
  `id` int(11) NOT NULL,
  `hr_hoilday_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_titles`
--

CREATE TABLE `hr_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leaves`
--

CREATE TABLE `hr_leaves` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hr_leave_type_id` int(11) DEFAULT NULL,
  `is_legal` tinyint(4) DEFAULT NULL COMMENT 'choosen if hr leave type is null (in the UI its name is other)',
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'file is optional. in case of illness the illness certificate',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leave_types`
--

CREATE TABLE `hr_leave_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `is_legal` tinyint(1) DEFAULT 0 COMMENT 'legal means salary is counted in this date. ex: illnes, death of first member family',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inventory_type_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `has_shelves` tinyint(4) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `inventory_type_id`, `company_id`, `has_shelves`, `created`, `updated`) VALUES
(1, 'inventory 1', 1, 1, 1, '2023-08-15 11:31:50', '2023-08-16 09:34:45'),
(2, 'inventory 2', 1, 1, 0, '2023-08-15 11:31:59', '2023-08-15 11:31:59'),
(3, 'inventory 3', 1, 1, 0, '2023-08-15 11:32:07', '2023-08-15 11:32:07'),
(4, 'inventory 4', 1, 1, 0, '2023-08-15 11:32:15', '2023-08-15 11:45:31'),
(6, 'inventory 5', 1, 1, 1, '2023-08-17 08:51:46', '2023-08-17 09:11:40'),
(7, 'inventory 6', 1, 1, 0, '2023-08-17 09:29:16', '2023-08-17 09:29:16'),
(8, 'pharmacy 1', 2, 1, 1, '2023-08-20 08:53:51', '2023-08-20 08:53:51'),
(9, 'pharmacy 2', 2, 1, 0, '2023-08-20 08:54:07', '2023-08-20 08:54:07'),
(10, 'Kassala Farm Gasoline', 3, 1, 0, '2023-08-27 09:11:52', '2023-08-27 10:34:17'),
(13, 'Mothers Company Gasoline', 3, 3, 0, '2023-08-27 12:30:25', '2023-08-27 12:30:25'),
(14, 'Future Company Gasoline', 3, 4, 0, '2023-08-27 12:30:25', '2023-08-27 12:30:25'),
(15, 'The Farm Gasoline', 3, 2, 0, '2023-08-27 12:30:25', '2023-08-27 12:30:25'),
(19, 'Generator one', 4, 1, 0, '2023-08-27 12:55:58', '2023-08-27 12:55:58'),
(21, 'Generator two', 4, 1, 0, '2023-08-28 08:36:11', '2023-08-28 08:36:11'),
(23, 'Raw Materials 1', 5, 4, 0, '2023-08-29 13:20:18', '2023-08-29 13:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_details`
--

CREATE TABLE `inventory_item_details` (
  `id` int(11) NOT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `inventory_shelve_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `health` varchar(255) DEFAULT NULL,
  `is_outside` tinyint(1) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_item_details`
--

INSERT INTO `inventory_item_details` (`id`, `inventory_item_id`, `inventory_shelve_id`, `barcode`, `company`, `health`, `is_outside`, `created`, `updated`) VALUES
(1, 3, NULL, 'motor v1', 'future', '0', 0, '2023-08-15 11:38:15', '2023-08-18 15:27:31'),
(2, 3, NULL, 'motor v2', 'future', '0', 0, '2023-08-15 11:38:30', '2023-08-15 19:58:31'),
(6, 9, NULL, 'motor v3', 'future', '100', 0, '2023-08-15 11:38:43', '2023-08-15 11:38:43'),
(10, 12, NULL, 'v8', 'future', '100', 0, '2023-08-17 05:44:58', '2023-08-17 05:44:58'),
(11, 3, NULL, 'mv 8', 'future', '0', 0, '2023-08-17 06:15:05', '2023-08-19 12:18:20'),
(12, 27, NULL, 'floor fan', 'orient', '0', 0, '2023-08-18 15:28:52', '2023-08-18 15:28:57'),
(14, 28, NULL, 'roof fan', 'orient', '100', 0, '2023-08-19 04:49:34', '2023-08-19 04:49:34'),
(16, 29, NULL, 'wall fan', 'orient', '100', 0, '2023-08-19 06:31:11', '2023-08-19 06:31:11'),
(18, 30, NULL, 'motor v7', 'nividia', '100', 0, '2023-08-19 06:34:32', '2023-08-19 06:34:32'),
(19, 27, 4, 'fan  44', 'orient', '0', 0, '2023-08-19 09:01:38', '2023-08-19 09:16:08'),
(20, 27, 4, 'barcode', 'orient', '0', 0, '2023-08-19 09:20:25', '2023-08-19 10:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_logs`
--

CREATE TABLE `inventory_item_logs` (
  `id` int(11) NOT NULL,
  `inventory_log_type_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `inventory_item_detail_id` int(11) DEFAULT NULL,
  `from_inventory_id` int(11) DEFAULT NULL,
  `to_inventory_id` int(11) DEFAULT NULL,
  `from_shelve_id` int(11) DEFAULT NULL,
  `to_shelve_id` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `excute_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_item_logs`
--

INSERT INTO `inventory_item_logs` (`id`, `inventory_log_type_id`, `inventory_item_id`, `inventory_item_detail_id`, `from_inventory_id`, `to_inventory_id`, `from_shelve_id`, `to_shelve_id`, `course_type`, `course_id`, `qty`, `health`, `excute_time`, `created`, `updated`) VALUES
(6, 1, 3, 6, 1, 3, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 19:04:33', '2023-08-15 19:04:33'),
(10, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, NULL, '2023-08-15 19:12:18', '2023-08-15 19:12:18'),
(11, 4, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-15 19:29:53', '2023-08-15 19:29:53'),
(12, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 19:42:38', '2023-08-15 19:42:38'),
(13, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 19:42:53', '2023-08-15 19:42:53'),
(17, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-15 20:00:39', '2023-08-15 20:00:39'),
(20, 1, NULL, 10, 1, 4, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-17 05:45:07', '2023-08-17 05:45:07'),
(21, 1, 2, NULL, 1, 4, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2023-08-17 05:47:08', '2023-08-17 05:47:08'),
(22, 2, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-17 06:17:14', '2023-08-17 06:17:14'),
(23, 4, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, NULL, '2023-08-17 06:22:32', '2023-08-17 06:22:32'),
(24, 3, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, NULL, '2023-08-17 06:22:40', '2023-08-17 06:22:40'),
(27, 1, 1, NULL, 1, 6, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2023-08-17 09:01:54', '2023-08-17 09:01:54'),
(30, 1, 1, NULL, 1, 6, 7, 8, NULL, NULL, 5, NULL, NULL, '2023-08-17 09:21:42', '2023-08-17 09:21:42'),
(32, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2023-08-17 09:29:28', '2023-08-17 09:29:28'),
(33, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2023-08-17 09:31:27', '2023-08-17 09:31:27'),
(34, 1, 1, NULL, 1, 7, 7, NULL, NULL, NULL, 2, NULL, NULL, '2023-08-17 09:32:14', '2023-08-17 09:32:14'),
(35, 1, 1, NULL, 1, 6, 7, 8, NULL, NULL, 3, NULL, NULL, '2023-08-17 09:33:15', '2023-08-17 09:33:15'),
(36, 1, 1, NULL, 1, 7, 7, NULL, NULL, NULL, 2, NULL, NULL, '2023-08-17 09:33:40', '2023-08-17 09:33:40'),
(37, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2023-08-17 09:35:01', '2023-08-17 09:35:01'),
(38, 5, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-18 15:27:31', '2023-08-18 15:27:31'),
(39, 5, 27, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-18 15:28:57', '2023-08-18 15:28:57'),
(40, 1, NULL, 14, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 06:26:25', '2023-08-19 06:26:25'),
(41, 1, NULL, 16, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 06:31:40', '2023-08-19 06:31:40'),
(42, 1, NULL, 18, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 06:34:42', '2023-08-19 06:34:42'),
(43, 1, 2, NULL, 1, 3, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2023-08-19 06:35:52', '2023-08-19 06:35:52'),
(44, 5, 27, 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 09:16:08', '2023-08-19 09:16:08'),
(45, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 09:21:57', '2023-08-19 09:21:57'),
(46, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 09:22:00', '2023-08-19 09:22:00'),
(47, 3, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 09:22:02', '2023-08-19 09:22:02'),
(48, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-19 09:22:34', '2023-08-19 09:22:34'),
(49, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-19 09:36:05', '2023-08-19 09:36:05'),
(50, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, NULL, '2023-08-19 10:15:55', '2023-08-19 10:15:55'),
(51, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, NULL, '2023-08-19 10:16:05', '2023-08-19 10:16:05'),
(52, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, '2023-08-19 10:16:15', '2023-08-19 10:16:15'),
(53, 5, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 10:16:42', '2023-08-19 10:16:42'),
(54, 4, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, NULL, '2023-08-19 12:17:58', '2023-08-19 12:17:58'),
(55, 5, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 12:18:20', '2023-08-19 12:18:20'),
(56, 6, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, '2023-08-27 14:26:39', '2023-08-27 14:26:39'),
(62, 8, 36, NULL, 10, 19, NULL, NULL, NULL, NULL, 150, NULL, NULL, '2023-08-28 08:27:52', '2023-08-28 08:27:52'),
(63, 7, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, '2023-08-28 08:28:25', '2023-08-28 08:28:25'),
(64, 8, 36, NULL, 10, 19, NULL, NULL, NULL, NULL, 100, NULL, NULL, '2023-08-28 08:36:27', '2023-08-28 08:36:27'),
(65, 6, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700, NULL, NULL, '2023-08-28 08:36:40', '2023-08-28 08:36:40'),
(66, 8, 36, NULL, 10, 21, NULL, NULL, NULL, NULL, 200, NULL, NULL, '2023-08-28 08:38:42', '2023-08-28 08:38:42'),
(67, 7, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, '2023-08-28 08:38:48', '2023-08-28 08:38:48'),
(68, 7, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, NULL, NULL, '2023-08-28 08:38:59', '2023-08-28 08:38:59'),
(69, 8, 36, NULL, 10, 19, NULL, NULL, NULL, NULL, 250, NULL, NULL, '2023-08-28 08:39:05', '2023-08-28 08:39:05'),
(70, 6, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350, NULL, NULL, '2023-08-28 08:39:18', '2023-08-28 08:39:18'),
(71, 6, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, '2023-08-28 10:54:50', '2023-08-28 10:54:50'),
(72, 8, 36, NULL, 10, 21, NULL, NULL, NULL, NULL, 130, NULL, NULL, '2023-08-28 10:55:15', '2023-08-28 10:55:15'),
(73, 7, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2023-08-28 10:55:46', '2023-08-28 10:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_log_types`
--

CREATE TABLE `inventory_log_types` (
  `id` int(11) NOT NULL,
  `inventory_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_log_types`
--

INSERT INTO `inventory_log_types` (`id`, `inventory_type_id`, `name`, `created`, `updated`) VALUES
(1, 1, 'transfer', '2023-08-15 19:03:56', '2023-08-15 19:03:56'),
(2, 1, 'use', '2023-08-15 19:10:14', '2023-08-15 19:10:14'),
(3, 1, 'maintainance', '2023-08-15 19:10:14', '2023-08-15 19:11:16'),
(4, 1, 'return', '2023-08-15 19:13:44', '2023-08-15 19:13:44'),
(5, 1, 'damage', '2023-08-15 19:34:24', '2023-08-15 19:34:24'),
(6, 3, 'fill_gas', '2023-08-27 13:52:35', '2023-08-27 14:07:30'),
(7, 4, 'consume_gas', '2023-08-28 08:17:44', '2023-08-28 08:21:29'),
(8, 3, 'transfer_gas', '2023-08-28 08:21:17', '2023-08-28 08:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_shelves`
--

CREATE TABLE `inventory_shelves` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_shelves`
--

INSERT INTO `inventory_shelves` (`id`, `inventory_id`, `name`, `created`, `updated`) VALUES
(3, 1, 'c 1', '2023-08-15 11:56:13', '2023-08-15 11:56:13'),
(4, 1, 'c 2', '2023-08-15 11:56:18', '2023-08-15 11:56:18'),
(5, 1, 'c 3', '2023-08-15 11:56:24', '2023-08-15 11:56:24'),
(7, 1, 'c 4', '2023-08-16 10:17:26', '2023-08-16 10:17:26'),
(8, 6, 'd 1', '2023-08-17 09:13:42', '2023-08-17 09:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_types`
--

CREATE TABLE `inventory_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_types`
--

INSERT INTO `inventory_types` (`id`, `type`, `created`, `updated`) VALUES
(1, 'spare parts', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(2, 'pharmacy', '2023-08-20 08:52:47', '2023-08-20 08:52:47'),
(3, 'gas_main', '2023-08-27 07:55:05', '2023-08-27 12:21:51'),
(4, 'gas', '2023-08-27 10:09:40', '2023-08-27 10:09:40'),
(5, 'raw_materials', '2023-08-29 13:10:20', '2023-08-29 13:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `invetory_items`
--

CREATE TABLE `invetory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `inventory_shelve_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `has_serial` tinyint(1) DEFAULT 0,
  `qty` int(11) DEFAULT NULL,
  `critical_qty` int(11) DEFAULT NULL,
  `critical_validity` int(10) UNSIGNED ZEROFILL DEFAULT 0000000030,
  `descr` varchar(255) DEFAULT NULL,
  `temprature` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `slaughter_manufactoring_process_product_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invetory_items`
--

INSERT INTO `invetory_items` (`id`, `inventory_id`, `inventory_shelve_id`, `name`, `has_serial`, `qty`, `critical_qty`, `critical_validity`, `descr`, `temprature`, `company`, `slaughter_manufactoring_process_product_id`, `created`, `updated`) VALUES
(1, 1, 7, 'cog', 0, 10, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-15 11:33:15', '2023-08-19 09:11:54'),
(2, 1, NULL, 'headlights', 0, 4, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-15 11:36:45', '2023-08-19 12:09:25'),
(3, 1, 7, 'motor', 1, 3, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 11:37:44', '2023-08-19 12:16:07'),
(5, 2, NULL, 'headlights', 0, 60, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-15 17:06:25', '2023-08-15 17:06:25'),
(9, 3, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 11:37:44', '2023-08-15 18:38:06'),
(12, 4, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 11:37:44', '2023-08-17 05:43:43'),
(13, 4, NULL, 'headlights', 0, 20, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 05:47:08', '2023-08-17 05:47:08'),
(19, 6, 7, 'cog', 0, 3, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 09:21:42', '2023-08-28 08:14:20'),
(22, 7, NULL, 'headlights', 0, 10, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 09:31:27', '2023-08-17 09:31:27'),
(23, 7, 7, 'cog', 0, 2, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 09:32:14', '2023-08-17 09:32:14'),
(24, 6, 7, 'cog', 0, 3, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 09:33:15', '2023-08-17 09:33:15'),
(25, 7, 7, 'cog', 0, 2, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 09:33:40', '2023-08-17 09:33:40'),
(26, 7, NULL, 'headlights', 0, 4, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 09:35:01', '2023-08-17 09:35:01'),
(27, 1, 4, 'fan', 1, 198, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 10:01:07', '2023-08-19 06:31:40'),
(28, 7, 4, 'fan', 1, 1, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 10:01:07', '2023-08-17 10:01:07'),
(29, 7, 4, 'fan', 1, 1, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 10:01:07', '2023-08-19 06:26:25'),
(30, 7, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 11:37:44', '2023-08-17 05:45:06'),
(31, 3, 3, 'headlights', 0, 5, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-19 06:35:52', '2023-08-19 06:35:52'),
(35, 1, 3, 'chair', 0, 20, 10, 0000000000, 'this is chairs', 10, 'dreams', NULL, '2023-08-19 09:34:25', '2023-08-19 09:34:25'),
(36, 10, NULL, 'Kassala Farm Main Gas', 0, 920, NULL, 0000000030, 'the main gas tank', NULL, 'Kassala_farm', NULL, '2023-08-27 12:27:03', '2023-08-28 10:55:15'),
(38, 19, NULL, 'Generator one', 0, 300, NULL, 0000000024, NULL, NULL, 'kassala_farm', NULL, '2023-08-27 12:55:58', '2023-08-28 10:55:46'),
(40, 14, NULL, 'Future Main Gas', 0, 0, NULL, 0000000030, 'Future main tank', NULL, 'Future', NULL, '2023-08-27 13:44:23', '2023-08-27 13:44:23'),
(41, 13, NULL, 'Mothers Main Gas', 0, 0, NULL, 0000000030, 'Mothers main tank', NULL, 'Mothers', NULL, '2023-08-27 13:44:23', '2023-08-27 13:44:23'),
(42, 15, NULL, 'The Farm Main Gas', 0, 0, NULL, 0000000030, 'The farm main tank', NULL, 'The farm', NULL, '2023-08-27 13:44:23', '2023-08-27 13:44:23'),
(43, 21, NULL, 'Generator two', 0, 300, NULL, 0000000024, NULL, NULL, 'kassala_farm', NULL, '2023-08-28 08:36:11', '2023-08-28 10:55:15'),
(45, 23, NULL, 'الذرة ', 0, 0, NULL, 0000000030, 'وصف الذرة', 20, 'future', NULL, '2023-08-31 12:01:19', '2023-08-31 12:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `level_one_chart_of_accounts`
--

CREATE TABLE `level_one_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `main_chart_of_accounts_type_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level_three_chart_of_accounts`
--

CREATE TABLE `level_three_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `level_two_chart_of_account_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level_two_chart_of_accounts`
--

CREATE TABLE `level_two_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `level_one_chart_of_account_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_chart_of_accounts_types`
--

CREATE TABLE `main_chart_of_accounts_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_areas`
--

CREATE TABLE `marketing_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_areas`
--

INSERT INTO `marketing_areas` (`id`, `name`, `created`, `updated`) VALUES
(1, 'area one', '2023-08-13 06:35:37', '2023-08-13 06:35:37'),
(2, 'area two', '2023-08-13 06:45:30', '2023-08-13 06:45:39'),
(5, 'area three', '2023-08-14 10:25:59', '2023-08-14 10:25:59'),
(6, 'area four', '2023-08-14 10:26:06', '2023-08-14 10:26:06'),
(7, 'area five', '2023-08-14 10:26:27', '2023-08-14 10:26:27'),
(8, 'area six', '2023-08-14 10:26:37', '2023-08-14 10:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_areas`
--

CREATE TABLE `marketing_campaign_areas` (
  `id` int(11) NOT NULL,
  `marketing_campaing_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channels`
--

CREATE TABLE `marketing_campaign_channels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `marketing_campain_id` int(11) DEFAULT NULL,
  `total_budget` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_events`
--

CREATE TABLE `marketing_campaign_channel_events` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_event_levels`
--

CREATE TABLE `marketing_campaign_channel_event_levels` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_event_id` int(11) DEFAULT NULL,
  `marketing_channel_level_id` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channels`
--

CREATE TABLE `marketing_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channel_levels`
--

CREATE TABLE `marketing_channel_levels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_surveys`
--

CREATE TABLE `marketing_surveys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_surveys`
--

INSERT INTO `marketing_surveys` (`id`, `name`, `budget`, `created`, `updated`) VALUES
(4, 'Survey one', NULL, '2023-08-14 09:30:39', '2023-08-14 09:30:39'),
(5, 'survey two', NULL, '2023-08-14 09:37:28', '2023-08-14 09:37:28'),
(6, 'survey three', NULL, '2023-08-15 19:50:59', '2023-08-15 19:50:59'),
(7, 'test survey', NULL, '2023-08-19 09:36:13', '2023-08-19 09:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_areas`
--

CREATE TABLE `marketing_survey_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_areas`
--

INSERT INTO `marketing_survey_areas` (`id`, `marketing_survey_id`, `marketing_area_id`, `created`, `updated`) VALUES
(4, 4, 1, '2023-08-14 09:30:39', '2023-08-14 09:30:39'),
(5, 5, 2, '2023-08-14 09:37:28', '2023-08-14 09:37:28'),
(6, 5, 1, '2023-08-14 09:37:28', '2023-08-14 09:37:28'),
(8, 5, 5, '2023-08-14 10:28:29', '2023-08-14 10:28:29'),
(9, 4, 8, '2023-08-15 11:39:28', '2023-08-15 11:39:28'),
(10, 6, 2, '2023-08-15 19:50:59', '2023-08-15 19:50:59'),
(11, 6, 1, '2023-08-15 19:50:59', '2023-08-15 19:50:59'),
(12, 7, 1, '2023-08-19 09:36:13', '2023-08-19 09:36:13'),
(13, 7, 8, '2023-08-24 08:51:21', '2023-08-24 08:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes`
--

CREATE TABLE `marketing_survey_processes` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes_answers`
--

CREATE TABLE `marketing_survey_processes_answers` (
  `id` int(11) NOT NULL,
  `marketing_survey_process_id` int(11) DEFAULT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_questions`
--

CREATE TABLE `marketing_survey_questions` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_question_type_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_questions`
--

INSERT INTO `marketing_survey_questions` (`id`, `marketing_survey_id`, `marketing_survey_question_type_id`, `question`, `created`, `updated`) VALUES
(6, 7, 3, 'New Question', '2023-08-21 08:13:22', '2023-08-21 08:13:22'),
(7, 4, 4, 'some question', '2023-08-23 11:54:36', '2023-08-23 11:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_options`
--

CREATE TABLE `marketing_survey_question_options` (
  `id` int(11) NOT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_options`
--

INSERT INTO `marketing_survey_question_options` (`id`, `marketing_survey_question_id`, `option`, `created`, `updated`) VALUES
(1, 6, 'q options', '2023-08-21 08:13:22', '2023-08-21 08:13:22'),
(3, 7, 'q options 1', '2023-08-23 13:46:31', '2023-08-23 13:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_types`
--

CREATE TABLE `marketing_survey_question_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_types`
--

INSERT INTO `marketing_survey_question_types` (`id`, `name`, `chart_type`, `created`, `updated`) VALUES
(3, 'circle', 'bar', '2023-08-16 10:13:38', '2023-08-16 10:13:38'),
(4, 'check_box', 'pie', '2023-08-16 10:13:38', '2023-08-16 10:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_members`
--

CREATE TABLE `marketing_survey_team_members` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_team_member_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_members`
--

INSERT INTO `marketing_survey_team_members` (`id`, `marketing_survey_id`, `marketing_team_member_id`, `rate`, `created`, `updated`) VALUES
(9, 5, 4, NULL, '2023-08-14 09:37:28', '2023-08-14 09:37:28'),
(10, 5, 8, NULL, '2023-08-14 10:28:15', '2023-08-14 10:28:15'),
(11, 5, 11, NULL, '2023-08-14 10:28:19', '2023-08-14 10:28:19'),
(12, 4, 4, NULL, '2023-08-15 11:39:08', '2023-08-15 11:39:08'),
(13, 4, 12, NULL, '2023-08-15 11:39:20', '2023-08-15 11:39:20'),
(14, 4, 10, NULL, '2023-08-15 11:39:35', '2023-08-15 11:39:35'),
(15, 6, 10, NULL, '2023-08-15 19:50:59', '2023-08-15 19:50:59'),
(16, 6, 8, NULL, '2023-08-15 19:50:59', '2023-08-15 19:50:59'),
(17, 7, 4, NULL, '2023-08-19 09:36:13', '2023-08-19 09:36:13'),
(18, 7, 11, NULL, '2023-08-24 08:51:37', '2023-08-24 08:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_member_areas`
--

CREATE TABLE `marketing_survey_team_member_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_survey_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updaed` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_member_areas`
--

INSERT INTO `marketing_survey_team_member_areas` (`id`, `marketing_survey_team_member_id`, `marketing_survey_area_id`, `created`, `updaed`) VALUES
(4, 10, 11, '2023-08-16 07:52:47', '2023-08-16 07:52:47'),
(8, 11, 11, '2023-08-16 08:42:33', '2023-08-16 08:42:33'),
(17, 10, 11, '2023-08-20 05:13:38', '2023-08-20 05:13:38'),
(22, 13, 9, '2023-08-24 08:49:26', '2023-08-24 08:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_team_members`
--

CREATE TABLE `marketing_team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_team_members`
--

INSERT INTO `marketing_team_members` (`id`, `name`, `tel`, `password`, `email`, `birthdate`, `created`, `updated`) VALUES
(4, 'Omer', '98e8987889', '$2b$10$uOA1V972Y4DFHtm1ZwDvOO8Gy2J8wjp9mgAv5eq2aSttp9iSZG81.', 'some@gmailcom', '1996-03-07 00:00:00', '2023-08-10 12:16:06', '2023-08-14 07:16:44'),
(8, 'new', '928329383828', '$2b$10$1i2aSWW.3ozTujDd5/cUMu8OGaCzm/1aEgyPIPe1Rq6V6RhZGo.0G', 'email@gmail.com', '2002-02-14 00:00:00', '2023-08-14 07:09:32', '2023-08-14 07:09:32'),
(10, 'Hassan', '93939328898', '$2b$10$UAgIKLSaxZwDZs4A4QAnEOO3XoPPsgEmRHpjeTtAp80p0Drsxytxq', 'hassan@gmail.com', '2006-06-14 00:00:00', '2023-08-14 10:24:46', '2023-08-14 10:24:46'),
(11, 'saddam', '928392833898', '$2b$10$lN04LXkI.HXGBpNXmYq2n.92.lf9KCp7a1b0cia0uwuF5wzaEJ4Em', 'saddam@gmail.com', '1998-08-14 00:00:00', '2023-08-14 10:25:44', '2023-08-14 10:25:44'),
(12, 'seeda', '9238938328', '$2b$10$wbbSwUnfcJeWBbogrvAeoevqwKuU3IPcHyZi9iLyHj3DBS0CiGJjq', 'seeda@gmail.com', '2001-07-14 00:00:00', '2023-08-14 10:27:57', '2023-08-14 10:27:57'),
(13, 'test', '98938938', '$2b$10$3WbQ5jJyBrgzKG.HgffFrOAX0NdH2wQV2.faoXlFNZL1zaJVgbElO', 'user1@gmail.com', '2023-08-09 00:00:00', '2023-08-19 09:35:20', '2023-08-19 09:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `mother_courses`
--

CREATE TABLE `mother_courses` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hens_qty` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_course_events`
--

CREATE TABLE `mother_course_events` (
  `id` int(11) NOT NULL,
  `mother_course_id` int(11) DEFAULT NULL,
  `mother_event_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_course_workers`
--

CREATE TABLE `mother_course_workers` (
  `id` int(11) NOT NULL,
  `mother_course_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `work_descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_event_types`
--

CREATE TABLE `mother_event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opening_balances`
--

CREATE TABLE `opening_balances` (
  `id` int(11) NOT NULL,
  `level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `amount` decimal(20,16) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_agents`
--

CREATE TABLE `purchases_agents` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL COMMENT 'for outside warehouse items',
  `qty` int(11) DEFAULT NULL,
  `taken_qty` int(10) UNSIGNED ZEROFILL DEFAULT 0000000000,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created`, `updated`) VALUES
(1, 'super_admin', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(2, 'hr_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(3, 'hr_depart_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(4, 'chiken_cycle_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(5, 'warehouses_manager', '2023-08-06 06:08:51', '2023-08-07 10:39:22'),
(6, 'farm_prod_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(7, 'factory_prod_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(8, 'mothers_cycle_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(9, 'purchases_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(10, 'sales_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(11, 'marketing_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(12, 'archiving_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51'),
(13, 'accounting_manager', '2023-08-06 06:08:51', '2023-08-06 06:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `sales_agents`
--

CREATE TABLE `sales_agents` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_details`
--

CREATE TABLE `sale_order_details` (
  `id` int(11) NOT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL COMMENT 'for outside warehouse items',
  `qty` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `browser_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `socket_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT current_timestamp(),
  `finish_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manfactured_input`
--

CREATE TABLE `slaughter_manfactured_input` (
  `id` int(11) NOT NULL,
  `invetory_item_id` int(11) DEFAULT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manfactured_output`
--

CREATE TABLE `slaughter_manfactured_output` (
  `id` int(11) NOT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_cost_types`
--

CREATE TABLE `slaughter_manufactoring_cost_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'fixed,per manufactred unit',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_processes`
--

CREATE TABLE `slaughter_manufactoring_processes` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_process_cost_structure`
--

CREATE TABLE `slaughter_manufactoring_process_cost_structure` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_process_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_cost_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `min_value` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_process_products`
--

CREATE TABLE `slaughter_manufactoring_process_products` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_process_id` int(11) DEFAULT NULL,
  `is_main` tinyint(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_processes`
--

CREATE TABLE `slaughter_processes` (
  `id` int(11) NOT NULL,
  `slaughter_slaughter_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_process_id` int(11) NOT NULL,
  `lost_qty` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_process_costs`
--

CREATE TABLE `slaughter_process_costs` (
  `id` int(11) NOT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_process_cost_structure_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `accounting_transaction_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_slaughters`
--

CREATE TABLE `slaughter_slaughters` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_hens` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_fileds`
--

CREATE TABLE `table_fileds` (
  `id` int(11) NOT NULL,
  `table` varchar(255) DEFAULT NULL,
  ` field` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `debit_level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `credit_level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `value` decimal(20,16) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hr_employee_id`, `name`, `tel`, `pass`, `created`, `updated`) VALUES
(42, 4, 'kola', '919213285', '$2b$10$HW/M32RAJxeTlJ/oYWZYsOPeQ722HUdXJQouiCTAvMYg0xZwBpNJC', '2023-08-06 14:42:15', '2023-08-06 14:42:15'),
(46, 6, 'harran', '9832298283', '$2b$10$0LlWJ6oC7rgoOcz/2FwL/Oj9222AX69tptOr3RjvOcrKHR3dg1LzW', '2023-08-08 10:18:01', '2023-08-08 10:18:01'),
(47, 7, 'salah', '8784832748', '$2b$10$k6eVEAH/6igbr1lFjUdzE.lAIj3G7zbACrkhng.TgQ7ayHi1qOeIK', '2023-08-08 10:42:13', '2023-08-09 05:49:18'),
(48, 7, 'seeda', '9283983938', '$2b$10$f1c8sIm/zVJq40nvR5qIEONRubZecX8BBFZRA194ls1Z9O7/Jyrg.', '2023-08-09 05:51:36', '2023-08-09 05:51:36'),
(49, 26, 'mohamed', '6666666666', '12345', '2023-09-05 07:49:19', '2023-09-05 07:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `company_id`, `user_id`, `role_id`, `created`, `updated`) VALUES
(12, 1, 42, 1, '2023-08-06 14:42:15', '2023-08-06 14:42:15'),
(13, 3, 42, 7, '2023-08-06 14:42:15', '2023-08-06 14:42:15'),
(19, 3, 46, 10, '2023-08-08 10:18:01', '2023-08-08 10:18:01'),
(21, 1, 47, 2, '2023-08-08 10:42:13', '2023-08-08 10:42:13'),
(22, 3, 47, 2, '2023-08-09 05:27:18', '2023-08-09 05:27:18'),
(23, 4, 48, 4, '2023-08-09 05:51:36', '2023-08-09 05:51:36'),
(24, 4, 42, 1, '2023-09-03 07:28:01', '2023-09-03 07:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agriculture_courses`
--
ALTER TABLE `agriculture_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agriculture_courses_agriculture_lands_1` (`agriculture_land_id`),
  ADD KEY `fk_agriculture_courses_agriculture_crops_1` (`agriculture_crop_id`);

--
-- Indexes for table `agriculture_course_events`
--
ALTER TABLE `agriculture_course_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agriculture_course_events_agriculture_courses_1` (`agriculture_course_id`),
  ADD KEY `fk_agriculture_course_events_agriculture_event_types_1` (`agriculture_event_type_id`);

--
-- Indexes for table `agriculture_crops`
--
ALTER TABLE `agriculture_crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriculture_event_types`
--
ALTER TABLE `agriculture_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriculture_harvest`
--
ALTER TABLE `agriculture_harvest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agriculture_harvest_agriculture_courses_1` (`agriculture_course_id`);

--
-- Indexes for table `agriculture_lands`
--
ALTER TABLE `agriculture_lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriculture_land_contracts`
--
ALTER TABLE `agriculture_land_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agriculture_land_contracts_agriculture_lands_1` (`agriculture_land_id`);

--
-- Indexes for table `archive_files`
--
ALTER TABLE `archive_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archive_files_types_1` (`archive_file_type_id`),
  ADD KEY `fk_archive_files_archive_folders_1` (`archive_folder_id`);

--
-- Indexes for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive_folders`
--
ALTER TABLE `archive_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archive_folders_archive_shelves_1` (`archive_shelve_id`);

--
-- Indexes for table `archive_shelves`
--
ALTER TABLE `archive_shelves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browsers`
--
ALTER TABLE `browsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_browsers_users_1` (`user_id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_budget_level_three_chart_of_accounts_copy_1_1` (`level_three_chart_of_account_id`);

--
-- Indexes for table `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cheques_transactions_1` (`transaction_id`);

--
-- Indexes for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_created_user_id` (`creater_user_id`);

--
-- Indexes for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_communication_meetication_meetings_1` (`communication_meeting_id`),
  ADD KEY `fk_participant_user_id_12` (`participant_user_id`);

--
-- Indexes for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_communication_personal_calls_users_1` (`caller_user_id`),
  ADD KEY `fk_communication_personal_calls_users_2` (`callee_user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_courses`
--
ALTER TABLE `farm_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_events_farm_courses_1` (`farm_course_id`),
  ADD KEY `fk_farm_course_events_farm_event_types_1` (`farm_event_type_id`);

--
-- Indexes for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_workers_farm_courses_1` (`farm_course_id`),
  ADD KEY `fk_farm_course_workers_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `farm_event_types`
--
ALTER TABLE `farm_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_formulas`
--
ALTER TABLE `feed_formulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_formula_history`
--
ALTER TABLE `feed_formula_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feed_formula_hid_formulas_1` (`feed_formula_id`);

--
-- Indexes for table `feed_formula_mixture`
--
ALTER TABLE `feed_formula_mixture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fere_feed_formulas_1` (`feed_formula_id`),
  ADD KEY `fk_feed_formvetory_items_1` (`inventory_item_id`);

--
-- Indexes for table `feed_formula_mixture_history`
--
ALTER TABLE `feed_formula_mixture_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fed_formula_history_1` (`feed_formula_history_id`),
  ADD KEY `fk_feeory_invetory_items_1` (`inventory_item_id`);

--
-- Indexes for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_attendance_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_awards`
--
ALTER TABLE `hr_awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_awards_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_awards_hr_award_types_1` (`hr_award_type_id`);

--
-- Indexes for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_complains`
--
ALTER TABLE `hr_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_complains_hr_complain_types_1` (`hr_complain_type_id`);

--
-- Indexes for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_departments_companies_1` (`company_id`),
  ADD KEY `fk_hr_departments_users_1` (`manager_user_id`);

--
-- Indexes for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_department_kpis_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_employees`
--
ALTER TABLE `hr_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employees_working_hours_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_departments_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_departments_hr_departments_1` (`hr_department_id`),
  ADD KEY `fk_hr_employee_departments_hr_job_titles_1` (`hr_job_title_id`);

--
-- Indexes for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_files_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_department_kpis_1` (`hr_department_kpi_id`);

--
-- Indexes for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_transfers_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_1` (`from_hr_department_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_2` (`to_hr_department_id`);

--
-- Indexes for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_warnings_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_holiday_departments_hr_holidays_1` (`hr_hoilday_id`),
  ADD KEY `fk_hr_holiday_departments_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_leaves_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_leaves_hr_leave_types_1` (`hr_leave_type_id`);

--
-- Indexes for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventories_inventory_types_1` (`inventory_type_id`),
  ADD KEY `fk_inventories_companies_1` (`company_id`);

--
-- Indexes for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_item_details_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_inventory_item_details_inventory_shelves_1` (`inventory_shelve_id`);

--
-- Indexes for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_item_logs_inventory_log_types_1` (`inventory_log_type_id`),
  ADD KEY `fk_inventory_item_logs_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_inventory_item_logs_inventory_item_details_1` (`inventory_item_detail_id`),
  ADD KEY `fk_inventory_item_logs_inventories_1` (`from_inventory_id`),
  ADD KEY `fk_inventory_item_logs_inventories_2` (`to_inventory_id`),
  ADD KEY `fk_inventory_item_logs_inventory_shelves_1` (`from_shelve_id`),
  ADD KEY `fk_inventory_item_logs_inventory_shelves_2` (`to_shelve_id`);

--
-- Indexes for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_log_types_inventory_types_1` (`inventory_type_id`);

--
-- Indexes for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_shelves_inventories_1` (`inventory_id`);

--
-- Indexes for table `inventory_types`
--
ALTER TABLE `inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invetory_items`
--
ALTER TABLE `invetory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invetory_items_inventories_1` (`inventory_id`),
  ADD KEY `fk_invetory_items_inventory_shelves_1` (`inventory_shelve_id`);

--
-- Indexes for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_one_chart_of_accounts_types_1` (`main_chart_of_accounts_type_id`),
  ADD KEY `fk_level_one_chart_of_accounts_companies_1` (`company_id`);

--
-- Indexes for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_three_level_two_chart_of_accounts_1` (`level_two_chart_of_account_id`);

--
-- Indexes for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_two_level_one_chart_of_accounts_1` (`level_one_chart_of_account_id`);

--
-- Indexes for table `main_chart_of_accounts_types`
--
ALTER TABLE `main_chart_of_accounts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_campaigns_1` (`marketing_campaing_id`);

--
-- Indexes for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_channels_1` (`marketing_channel_id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_campaigns_1` (`marketing_campain_id`);

--
-- Indexes for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_events_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_campaign_channels_1` (`marketing_campaign_channel_id`);

--
-- Indexes for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_campaign_channel_events_1` (`marketing_campaign_channel_event_id`),
  ADD KEY `fk_marketing_campaign_marketing_channel_levels_1` (`marketing_channel_level_id`);

--
-- Indexes for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_channel_levels_marketing_channels_1` (`marketing_channel_id`);

--
-- Indexes for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_areas_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_areas_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_processes_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_team_members_1` (`marketing_survey_team_member_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_marketing_survey_processes_1` (`marketing_survey_process_id`),
  ADD KEY `fk_marketing_marketing_survey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_questions_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_questions_marketing_survey_question_types
_1` (`marketing_survey_question_type_id`);

--
-- Indexes for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survvey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_sbers_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_sug_team_members_1` (`marketing_team_member_id`);

--
-- Indexes for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_teams_marketing_areas_1` (`marketing_survey_area_id`),
  ADD KEY `fk_marketiey_team_members_1` (`marketing_survey_team_member_id`);

--
-- Indexes for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_courses`
--
ALTER TABLE `mother_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mother_courses_inventories_1` (`inventory_id`);

--
-- Indexes for table `mother_course_events`
--
ALTER TABLE `mother_course_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mother_course_events_mother_courses_1` (`mother_course_id`),
  ADD KEY `fk_mother_course_events_mother_event_types_1` (`mother_event_type_id`);

--
-- Indexes for table `mother_course_workers`
--
ALTER TABLE `mother_course_workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_workers_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_mother_course_workers_mother_courses_1` (`mother_course_id`);

--
-- Indexes for table `mother_event_types`
--
ALTER TABLE `mother_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_balances`
--
ALTER TABLE `opening_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opening_balances_level_three_chart_of_accounts_copy_1_1` (`level_three_chart_of_account_id`);

--
-- Indexes for table `purchases_agents`
--
ALTER TABLE `purchases_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_orders_purcases_agents_1` (`agent_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_order_details_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_purchase_order_details_purchase_orders_1` (`purchase_order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_agents`
--
ALTER TABLE `sales_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_orders_purcases_agents_1_copy_1` (`agent_id`);

--
-- Indexes for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sale_order_details_invetory_items_1_copy_1` (`inventory_item_id`),
  ADD KEY `fk_sale_order_details_purchase_orders_1_copy_1` (`sale_order_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_browsers_1` (`browser_id`);

--
-- Indexes for table `slaughter_manfactured_input`
--
ALTER TABLE `slaughter_manfactured_input`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manfactured_input_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_manfactured_input_invetory_items_1` (`invetory_item_id`);

--
-- Indexes for table `slaughter_manfactured_output`
--
ALTER TABLE `slaughter_manfactured_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manfactured_output_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_manfactured_output_invetory_items_1` (`inventory_item_id`);

--
-- Indexes for table `slaughter_manufactoring_cost_types`
--
ALTER TABLE `slaughter_manufactoring_cost_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slaughter_manufactoring_processes`
--
ALTER TABLE `slaughter_manufactoring_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manufaring_process_products_1` (`slaughter_manufactoring_product_id`);

--
-- Indexes for table `slaughter_manufactoring_process_cost_structure`
--
ALTER TABLE `slaughter_manufactoring_process_cost_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manufactoritoring_processes_1` (`slaughter_manufactoring_process_id`),
  ADD KEY `fk_slaughter_manufactorinufactoring_cost_types_1` (`slaughter_manufactoring_cost_type_id`);

--
-- Indexes for table `slaughter_manufactoring_process_products`
--
ALTER TABLE `slaughter_manufactoring_process_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_ming_processes_1` (`slaughter_manufactoring_process_id`);

--
-- Indexes for table `slaughter_processes`
--
ALTER TABLE `slaughter_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_processes_slaughter_manufactoring_processes_1` (`slaughter_manufactoring_process_id`);

--
-- Indexes for table `slaughter_process_costs`
--
ALTER TABLE `slaughter_process_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_process_costs_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_process_cosess_cost_structure_1` (`slaughter_manufactoring_process_cost_structure_id`),
  ADD KEY `fk_slaughter_process_costs_transactions_1` (`accounting_transaction_id`);

--
-- Indexes for table `slaughter_slaughters`
--
ALTER TABLE `slaughter_slaughters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_slaughters_farm_courses_1` (`farm_course_id`);

--
-- Indexes for table `table_fileds`
--
ALTER TABLE `table_fileds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transactions_level_three_chart_of_accounts_copy_1_1` (`debit_level_three_chart_of_account_id`),
  ADD KEY `fk_transactions_level_three_chart_of_accounts_copy_1_2` (`credit_level_three_chart_of_account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_logs_sessions_1` (`session_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_roles_users_1` (`user_id`),
  ADD KEY `fk_user_roles_roles_1` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agriculture_courses`
--
ALTER TABLE `agriculture_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agriculture_course_events`
--
ALTER TABLE `agriculture_course_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `agriculture_crops`
--
ALTER TABLE `agriculture_crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agriculture_event_types`
--
ALTER TABLE `agriculture_event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agriculture_harvest`
--
ALTER TABLE `agriculture_harvest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agriculture_lands`
--
ALTER TABLE `agriculture_lands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agriculture_land_contracts`
--
ALTER TABLE `agriculture_land_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `archive_files`
--
ALTER TABLE `archive_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `archive_folders`
--
ALTER TABLE `archive_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `archive_shelves`
--
ALTER TABLE `archive_shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `browsers`
--
ALTER TABLE `browsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_courses`
--
ALTER TABLE `farm_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_event_types`
--
ALTER TABLE `farm_event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_formulas`
--
ALTER TABLE `feed_formulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_formula_history`
--
ALTER TABLE `feed_formula_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_formula_mixture`
--
ALTER TABLE `feed_formula_mixture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_formula_mixture_history`
--
ALTER TABLE `feed_formula_mixture_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_awards`
--
ALTER TABLE `hr_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complains`
--
ALTER TABLE `hr_complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_departments`
--
ALTER TABLE `hr_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employees`
--
ALTER TABLE `hr_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory_types`
--
ALTER TABLE `inventory_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invetory_items`
--
ALTER TABLE `invetory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_chart_of_accounts_types`
--
ALTER TABLE `main_chart_of_accounts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mother_courses`
--
ALTER TABLE `mother_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_course_events`
--
ALTER TABLE `mother_course_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_course_workers`
--
ALTER TABLE `mother_course_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_event_types`
--
ALTER TABLE `mother_event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opening_balances`
--
ALTER TABLE `opening_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_agents`
--
ALTER TABLE `purchases_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales_agents`
--
ALTER TABLE `sales_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manfactured_input`
--
ALTER TABLE `slaughter_manfactured_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manfactured_output`
--
ALTER TABLE `slaughter_manfactured_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_cost_types`
--
ALTER TABLE `slaughter_manufactoring_cost_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_processes`
--
ALTER TABLE `slaughter_manufactoring_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_process_cost_structure`
--
ALTER TABLE `slaughter_manufactoring_process_cost_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_process_products`
--
ALTER TABLE `slaughter_manufactoring_process_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_processes`
--
ALTER TABLE `slaughter_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_process_costs`
--
ALTER TABLE `slaughter_process_costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_slaughters`
--
ALTER TABLE `slaughter_slaughters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_fileds`
--
ALTER TABLE `table_fileds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agriculture_courses`
--
ALTER TABLE `agriculture_courses`
  ADD CONSTRAINT `fk_agriculture_courses_agriculture_crops_1` FOREIGN KEY (`agriculture_crop_id`) REFERENCES `agriculture_crops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_agriculture_courses_agriculture_lands_1` FOREIGN KEY (`agriculture_land_id`) REFERENCES `agriculture_lands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `agriculture_course_events`
--
ALTER TABLE `agriculture_course_events`
  ADD CONSTRAINT `fk_agriculture_course_events_agriculture_courses_1` FOREIGN KEY (`agriculture_course_id`) REFERENCES `agriculture_courses` (`id`),
  ADD CONSTRAINT `fk_agriculture_course_events_agriculture_event_types_1` FOREIGN KEY (`agriculture_event_type_id`) REFERENCES `agriculture_event_types` (`id`);

--
-- Constraints for table `agriculture_harvest`
--
ALTER TABLE `agriculture_harvest`
  ADD CONSTRAINT `fk_agriculture_harvest_agriculture_courses_1` FOREIGN KEY (`agriculture_course_id`) REFERENCES `agriculture_courses` (`id`);

--
-- Constraints for table `agriculture_land_contracts`
--
ALTER TABLE `agriculture_land_contracts`
  ADD CONSTRAINT `fk_agriculture_land_contracts_agriculture_lands_1` FOREIGN KEY (`agriculture_land_id`) REFERENCES `agriculture_lands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `archive_files`
--
ALTER TABLE `archive_files`
  ADD CONSTRAINT `fk_archive_files_archive_folders_1` FOREIGN KEY (`archive_folder_id`) REFERENCES `archive_folders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_archive_files_types_1` FOREIGN KEY (`archive_file_type_id`) REFERENCES `archive_file_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `archive_folders`
--
ALTER TABLE `archive_folders`
  ADD CONSTRAINT `fk_archive_folders_archive_shelves_1` FOREIGN KEY (`archive_shelve_id`) REFERENCES `archive_shelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `browsers`
--
ALTER TABLE `browsers`
  ADD CONSTRAINT `fk_browsers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `fk_budget_level_three_chart_of_accounts_copy_1_1` FOREIGN KEY (`level_three_chart_of_account_id`) REFERENCES `level_three_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `cheques`
--
ALTER TABLE `cheques`
  ADD CONSTRAINT `fk_cheques_transactions_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  ADD CONSTRAINT `fk_created_user_id` FOREIGN KEY (`creater_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  ADD CONSTRAINT `fk_communication_meetication_meetings_1` FOREIGN KEY (`communication_meeting_id`) REFERENCES `communication_meetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_participant_user_id_12` FOREIGN KEY (`participant_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  ADD CONSTRAINT `fk_communication_personal_calls_users_1` FOREIGN KEY (`caller_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_communication_personal_calls_users_2` FOREIGN KEY (`callee_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  ADD CONSTRAINT `fk_farm_course_events_farm_courses_1` FOREIGN KEY (`farm_course_id`) REFERENCES `farm_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_farm_course_events_farm_event_types_1` FOREIGN KEY (`farm_event_type_id`) REFERENCES `farm_event_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  ADD CONSTRAINT `fk_farm_course_workers_farm_courses_1` FOREIGN KEY (`farm_course_id`) REFERENCES `farm_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_farm_course_workers_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `feed_formula_history`
--
ALTER TABLE `feed_formula_history`
  ADD CONSTRAINT `fk_feed_formula_hid_formulas_1` FOREIGN KEY (`feed_formula_id`) REFERENCES `feed_formulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feed_formula_mixture`
--
ALTER TABLE `feed_formula_mixture`
  ADD CONSTRAINT `fk_feed_formvetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fere_feed_formulas_1` FOREIGN KEY (`feed_formula_id`) REFERENCES `feed_formulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feed_formula_mixture_history`
--
ALTER TABLE `feed_formula_mixture_history`
  ADD CONSTRAINT `fk_fed_formula_history_1` FOREIGN KEY (`feed_formula_history_id`) REFERENCES `feed_formula_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_feeory_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  ADD CONSTRAINT `fk_hr_attendance_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_awards`
--
ALTER TABLE `hr_awards`
  ADD CONSTRAINT `fk_hr_awards_hr_award_types_1` FOREIGN KEY (`hr_award_type_id`) REFERENCES `hr_award_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_awards_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_complains`
--
ALTER TABLE `hr_complains`
  ADD CONSTRAINT `fk_hr_complains_hr_complain_types_1` FOREIGN KEY (`hr_complain_type_id`) REFERENCES `hr_complain_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD CONSTRAINT `fk_hr_departments_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_departments_users_1` FOREIGN KEY (`manager_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  ADD CONSTRAINT `fk_hr_department_kpis_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  ADD CONSTRAINT `fk_hr_employees_working_hours_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  ADD CONSTRAINT `fk_hr_employee_departments_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`),
  ADD CONSTRAINT `fk_hr_employee_departments_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`),
  ADD CONSTRAINT `fk_hr_employee_departments_hr_job_titles_1` FOREIGN KEY (`hr_job_title_id`) REFERENCES `hr_job_titles` (`id`);

--
-- Constraints for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  ADD CONSTRAINT `fk_hr_employee_files_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  ADD CONSTRAINT `fk_hr_employee_kpi_records_hr_department_kpis_1` FOREIGN KEY (`hr_department_kpi_id`) REFERENCES `hr_department_kpis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_kpi_records_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_departments_1` FOREIGN KEY (`from_hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_departments_2` FOREIGN KEY (`to_hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  ADD CONSTRAINT `fk_hr_employee_warnings_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  ADD CONSTRAINT `fk_hr_holiday_departments_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_holiday_departments_hr_holidays_1` FOREIGN KEY (`hr_hoilday_id`) REFERENCES `hr_holidays` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD CONSTRAINT `fk_hr_leaves_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_leaves_hr_leave_types_1` FOREIGN KEY (`hr_leave_type_id`) REFERENCES `hr_leave_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `fk_inventories_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventories_inventory_types_1` FOREIGN KEY (`inventory_type_id`) REFERENCES `inventory_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  ADD CONSTRAINT `fk_inventory_item_details_inventory_shelves_1` FOREIGN KEY (`inventory_shelve_id`) REFERENCES `inventory_shelves` (`id`),
  ADD CONSTRAINT `fk_inventory_item_details_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  ADD CONSTRAINT `fk_inventory_item_logs_inventories_1` FOREIGN KEY (`from_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventories_2` FOREIGN KEY (`to_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_item_details_1` FOREIGN KEY (`inventory_item_detail_id`) REFERENCES `inventory_item_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_log_types_1` FOREIGN KEY (`inventory_log_type_id`) REFERENCES `inventory_log_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_shelves_1` FOREIGN KEY (`from_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_shelves_2` FOREIGN KEY (`to_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  ADD CONSTRAINT `fk_inventory_log_types_inventory_types_1` FOREIGN KEY (`inventory_type_id`) REFERENCES `inventory_types` (`id`);

--
-- Constraints for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  ADD CONSTRAINT `fk_inventory_shelves_inventories_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invetory_items`
--
ALTER TABLE `invetory_items`
  ADD CONSTRAINT `fk_invetory_items_inventories_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_invetory_items_inventory_shelves_1` FOREIGN KEY (`inventory_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  ADD CONSTRAINT `fk_level_one_chart_of_accounts_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_level_one_chart_of_accounts_types_1` FOREIGN KEY (`main_chart_of_accounts_type_id`) REFERENCES `main_chart_of_accounts_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  ADD CONSTRAINT `fk_level_three_level_two_chart_of_accounts_1` FOREIGN KEY (`level_two_chart_of_account_id`) REFERENCES `level_two_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  ADD CONSTRAINT `fk_level_two_level_one_chart_of_accounts_1` FOREIGN KEY (`level_one_chart_of_account_id`) REFERENCES `level_one_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_campaigns_1` FOREIGN KEY (`marketing_campaing_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_campaigns_1` FOREIGN KEY (`marketing_campain_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channels_1` FOREIGN KEY (`marketing_campaign_channel_id`) REFERENCES `marketing_campaign_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_events_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channel_events_1` FOREIGN KEY (`marketing_campaign_channel_event_id`) REFERENCES `marketing_campaign_channel_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_marketing_channel_levels_1` FOREIGN KEY (`marketing_channel_level_id`) REFERENCES `marketing_channel_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD CONSTRAINT `fk_marketing_channel_levels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD CONSTRAINT `fk_marketing_marketing_survey_processes_1` FOREIGN KEY (`marketing_survey_process_id`) REFERENCES `marketing_survey_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_marketing_survey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_survey_question_types
_1` FOREIGN KEY (`marketing_survey_question_type_id`) REFERENCES `marketing_survey_question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD CONSTRAINT `fk_marketing_survvey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD CONSTRAINT `fk_marketing_sbers_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_sug_team_members_1` FOREIGN KEY (`marketing_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD CONSTRAINT `fk_marketiey_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_survey_team_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_teams_marketing_areas_1` FOREIGN KEY (`marketing_survey_area_id`) REFERENCES `marketing_survey_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `kassala_farm`
--
CREATE DATABASE IF NOT EXISTS `kassala_farm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kassala_farm`;

-- --------------------------------------------------------

--
-- Table structure for table `archive_files`
--

CREATE TABLE `archive_files` (
  `id` int(11) NOT NULL,
  `file_date` datetime DEFAULT NULL,
  `archive_file_type_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_file_types`
--

CREATE TABLE `archive_file_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `browsers`
--

CREATE TABLE `browsers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `os_name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cheques`
--

CREATE TABLE `cheques` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_meetings`
--

CREATE TABLE `communication_meetings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creater_user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `duarion` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_meeting_participants`
--

CREATE TABLE `communication_meeting_participants` (
  `id` int(11) NOT NULL,
  `communication_meeting_id` int(11) DEFAULT NULL,
  `participant_user_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communication_personal_calls`
--

CREATE TABLE `communication_personal_calls` (
  `id` int(11) NOT NULL,
  `caller_user_id` int(11) DEFAULT NULL,
  `callee_user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `tel`, `website`, `email`, `created`, `updated`) VALUES
(1, 'future', '0115962947', 'www.future.com', 'future@gmail.com', '2023-08-15 13:31:04', '2023-08-15 13:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_courses`
--

CREATE TABLE `farm_courses` (
  `id` int(11) NOT NULL,
  `farm_barn_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hens_qty` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_course_events`
--

CREATE TABLE `farm_course_events` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `farm_event_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_course_workers`
--

CREATE TABLE `farm_course_workers` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `work_descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_event_types`
--

CREATE TABLE `farm_event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `initial_book_value` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendance`
--

CREATE TABLE `hr_attendance` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_awards`
--

CREATE TABLE `hr_awards` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_award_type_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) DEFAULT NULL COMMENT 'if hr_award_type_id is null this is set instead (in UI award type is other)',
  `descr` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_award_types`
--

CREATE TABLE `hr_award_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complains`
--

CREATE TABLE `hr_complains` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_complain_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complain_types`
--

CREATE TABLE `hr_complain_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_departments`
--

CREATE TABLE `hr_departments` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `manager_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `acceptable_kpis_average` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_department_kpis`
--

CREATE TABLE `hr_department_kpis` (
  `id` int(11) NOT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees`
--

CREATE TABLE `hr_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_employees`
--

INSERT INTO `hr_employees` (`id`, `name`, `birthdate`, `basic_salary`, `created`, `updated`) VALUES
(1, 'ali', '2023-12-12', '2000.00', '2023-12-10 08:21:21', '2023-12-10 08:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees_working_hours`
--

CREATE TABLE `hr_employees_working_hours` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `weekday` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_departments`
--

CREATE TABLE `hr_employee_departments` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `hr_job_title_id` int(11) DEFAULT NULL,
  `salary_percent` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_files`
--

CREATE TABLE `hr_employee_files` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_kpi_records`
--

CREATE TABLE `hr_employee_kpi_records` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_kpi_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL COMMENT 'range 0 - 100',
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_transfers`
--

CREATE TABLE `hr_employee_transfers` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `from_hr_department_id` int(11) DEFAULT NULL,
  `to_hr_department_id` int(11) DEFAULT NULL,
  `from_salary` decimal(10,2) DEFAULT NULL,
  `to_salary` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_warnings`
--

CREATE TABLE `hr_employee_warnings` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'the file contains the printed warning. the employee should sign and then the document is uploaded to the system',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holidays`
--

CREATE TABLE `hr_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holiday_departments`
--

CREATE TABLE `hr_holiday_departments` (
  `id` int(11) NOT NULL,
  `hr_hoilday_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_titles`
--

CREATE TABLE `hr_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leaves`
--

CREATE TABLE `hr_leaves` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hr_leave_type_id` int(11) DEFAULT NULL,
  `is_legal` tinyint(4) DEFAULT NULL COMMENT 'choosen if hr leave type is null (in the UI its name is other)',
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'file is optional. in case of illness the illness certificate',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leave_types`
--

CREATE TABLE `hr_leave_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `is_legal` tinyint(1) DEFAULT 0 COMMENT 'legal means salary is counted in this date. ex: illnes, death of first member family',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inventory_type_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `has_shelves` tinyint(4) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `inventory_type_id`, `company_id`, `has_shelves`, `created`, `updated`) VALUES
(1, 'inventory 1', 1, 1, 1, '2023-08-15 13:31:50', '2023-08-16 11:34:45'),
(2, 'inventory 2', 1, 1, 0, '2023-08-15 13:31:59', '2023-08-15 13:31:59'),
(3, 'inventory 3', 1, 1, 0, '2023-08-15 13:32:07', '2023-08-15 13:32:07'),
(4, 'inventory 4', 1, 1, 0, '2023-08-15 13:32:15', '2023-08-15 13:45:31'),
(6, 'inventory 5', 1, 1, 1, '2023-08-17 10:51:46', '2023-08-17 11:11:40'),
(7, 'inventory 6', 1, 1, 0, '2023-08-17 11:29:16', '2023-08-17 11:29:16'),
(8, 'pharmacy 1', 2, 1, 1, '2023-08-20 10:53:51', '2023-08-20 10:53:51'),
(9, 'pharmacy 2', 2, 1, 0, '2023-08-20 10:54:07', '2023-08-20 10:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_details`
--

CREATE TABLE `inventory_item_details` (
  `id` int(11) NOT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `inventory_shelve_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `health` varchar(255) DEFAULT NULL,
  `is_outside` tinyint(1) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_item_details`
--

INSERT INTO `inventory_item_details` (`id`, `inventory_item_id`, `inventory_shelve_id`, `barcode`, `company`, `health`, `is_outside`, `created`, `updated`) VALUES
(1, 3, NULL, 'motor v1', 'future', '0', 0, '2023-08-15 13:38:15', '2023-08-18 17:27:31'),
(2, 3, NULL, 'motor v2', 'future', '0', 0, '2023-08-15 13:38:30', '2023-08-15 21:58:31'),
(6, 9, NULL, 'motor v3', 'future', '100', 0, '2023-08-15 13:38:43', '2023-08-15 13:38:43'),
(10, 12, NULL, 'v8', 'future', '100', 0, '2023-08-17 07:44:58', '2023-08-17 07:44:58'),
(11, 3, NULL, 'mv 8', 'future', '0', 0, '2023-08-17 08:15:05', '2023-08-19 14:18:20'),
(12, 27, NULL, 'floor fan', 'orient', '0', 0, '2023-08-18 17:28:52', '2023-08-18 17:28:57'),
(14, 28, NULL, 'roof fan', 'orient', '100', 0, '2023-08-19 06:49:34', '2023-08-19 06:49:34'),
(16, 29, NULL, 'wall fan', 'orient', '100', 0, '2023-08-19 08:31:11', '2023-08-19 08:31:11'),
(18, 30, NULL, 'motor v7', 'nividia', '100', 0, '2023-08-19 08:34:32', '2023-08-19 08:34:32'),
(19, 27, 4, 'fan  44', 'orient', '0', 0, '2023-08-19 11:01:38', '2023-08-19 11:16:08'),
(20, 27, 4, 'barcode', 'orient', '0', 0, '2023-08-19 11:20:25', '2023-08-19 12:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_logs`
--

CREATE TABLE `inventory_item_logs` (
  `id` int(11) NOT NULL,
  `inventory_log_type_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `inventory_item_detail_id` int(11) DEFAULT NULL,
  `from_inventory_id` int(11) DEFAULT NULL,
  `to_inventory_id` int(11) DEFAULT NULL,
  `from_shelve_id` int(11) DEFAULT NULL,
  `to_shelve_id` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `excute_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_item_logs`
--

INSERT INTO `inventory_item_logs` (`id`, `inventory_log_type_id`, `inventory_item_id`, `inventory_item_detail_id`, `from_inventory_id`, `to_inventory_id`, `from_shelve_id`, `to_shelve_id`, `course_type`, `course_id`, `qty`, `health`, `excute_time`, `created`, `updated`) VALUES
(6, 1, 3, 6, 1, 3, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 21:04:33', '2023-08-15 21:04:33'),
(10, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, NULL, '2023-08-15 21:12:18', '2023-08-15 21:12:18'),
(11, 4, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-15 21:29:53', '2023-08-15 21:29:53'),
(12, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 21:42:38', '2023-08-15 21:42:38'),
(13, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-15 21:42:53', '2023-08-15 21:42:53'),
(17, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-15 22:00:39', '2023-08-15 22:00:39'),
(20, 1, NULL, 10, 1, 4, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-17 07:45:07', '2023-08-17 07:45:07'),
(21, 1, 2, NULL, 1, 4, NULL, NULL, NULL, NULL, 20, NULL, NULL, '2023-08-17 07:47:08', '2023-08-17 07:47:08'),
(22, 2, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-17 08:17:14', '2023-08-17 08:17:14'),
(23, 4, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, NULL, '2023-08-17 08:22:32', '2023-08-17 08:22:32'),
(24, 3, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, NULL, '2023-08-17 08:22:40', '2023-08-17 08:22:40'),
(27, 1, 1, NULL, 1, 6, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2023-08-17 11:01:54', '2023-08-17 11:01:54'),
(30, 1, 1, NULL, 1, 6, 7, 8, NULL, NULL, 5, NULL, NULL, '2023-08-17 11:21:42', '2023-08-17 11:21:42'),
(32, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2023-08-17 11:29:28', '2023-08-17 11:29:28'),
(33, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2023-08-17 11:31:27', '2023-08-17 11:31:27'),
(34, 1, 1, NULL, 1, 7, 7, NULL, NULL, NULL, 2, NULL, NULL, '2023-08-17 11:32:14', '2023-08-17 11:32:14'),
(35, 1, 1, NULL, 1, 6, 7, 8, NULL, NULL, 3, NULL, NULL, '2023-08-17 11:33:15', '2023-08-17 11:33:15'),
(36, 1, 1, NULL, 1, 7, 7, NULL, NULL, NULL, 2, NULL, NULL, '2023-08-17 11:33:40', '2023-08-17 11:33:40'),
(37, 1, 2, NULL, 1, 7, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2023-08-17 11:35:01', '2023-08-17 11:35:01'),
(38, 5, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-18 17:27:31', '2023-08-18 17:27:31'),
(39, 5, 27, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-18 17:28:57', '2023-08-18 17:28:57'),
(40, 1, NULL, 14, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 08:26:25', '2023-08-19 08:26:25'),
(41, 1, NULL, 16, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 08:31:40', '2023-08-19 08:31:40'),
(42, 1, NULL, 18, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-19 08:34:42', '2023-08-19 08:34:42'),
(43, 1, 2, NULL, 1, 3, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2023-08-19 08:35:52', '2023-08-19 08:35:52'),
(44, 5, 27, 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 11:16:08', '2023-08-19 11:16:08'),
(45, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 11:21:57', '2023-08-19 11:21:57'),
(46, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 11:22:00', '2023-08-19 11:22:00'),
(47, 3, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, NULL, '2023-08-19 11:22:02', '2023-08-19 11:22:02'),
(48, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-19 11:22:34', '2023-08-19 11:22:34'),
(49, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, NULL, '2023-08-19 11:36:05', '2023-08-19 11:36:05'),
(50, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, NULL, '2023-08-19 12:15:55', '2023-08-19 12:15:55'),
(51, 2, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, NULL, '2023-08-19 12:16:05', '2023-08-19 12:16:05'),
(52, 4, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, '2023-08-19 12:16:15', '2023-08-19 12:16:15'),
(53, 5, 27, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 12:16:42', '2023-08-19 12:16:42'),
(54, 4, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, NULL, '2023-08-19 14:17:58', '2023-08-19 14:17:58'),
(55, 5, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-08-19 14:18:20', '2023-08-19 14:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_log_types`
--

CREATE TABLE `inventory_log_types` (
  `id` int(11) NOT NULL,
  `inventory_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_log_types`
--

INSERT INTO `inventory_log_types` (`id`, `inventory_type_id`, `name`, `created`, `updated`) VALUES
(1, 1, 'transfer', '2023-08-15 21:03:56', '2023-08-15 21:03:56'),
(2, 1, 'use', '2023-08-15 21:10:14', '2023-08-15 21:10:14'),
(3, 1, 'maintainance', '2023-08-15 21:10:14', '2023-08-15 21:11:16'),
(4, 1, 'return', '2023-08-15 21:13:44', '2023-08-15 21:13:44'),
(5, 1, 'damage', '2023-08-15 21:34:24', '2023-08-15 21:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_shelves`
--

CREATE TABLE `inventory_shelves` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_shelves`
--

INSERT INTO `inventory_shelves` (`id`, `inventory_id`, `name`, `created`, `updated`) VALUES
(3, 1, 'c 1', '2023-08-15 13:56:13', '2023-08-15 13:56:13'),
(4, 1, 'c 2', '2023-08-15 13:56:18', '2023-08-15 13:56:18'),
(5, 1, 'c 3', '2023-08-15 13:56:24', '2023-08-15 13:56:24'),
(7, 1, 'c 4', '2023-08-16 12:17:26', '2023-08-16 12:17:26'),
(8, 6, 'd 1', '2023-08-17 11:13:42', '2023-08-17 11:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_types`
--

CREATE TABLE `inventory_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_types`
--

INSERT INTO `inventory_types` (`id`, `type`, `created`, `updated`) VALUES
(1, 'spare parts', '2023-08-15 13:31:34', '2023-08-15 13:31:34'),
(2, 'pharmacy', '2023-08-20 10:52:47', '2023-08-20 10:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `invetory_items`
--

CREATE TABLE `invetory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `inventory_shelve_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `has_serial` tinyint(1) DEFAULT 0,
  `qty` int(11) DEFAULT NULL,
  `critical_qty` int(11) DEFAULT NULL,
  `critical_validity` int(10) UNSIGNED ZEROFILL DEFAULT 0000000030,
  `descr` varchar(255) DEFAULT NULL,
  `temprature` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `slaughter_manufactoring_process_product_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invetory_items`
--

INSERT INTO `invetory_items` (`id`, `inventory_id`, `inventory_shelve_id`, `name`, `has_serial`, `qty`, `critical_qty`, `critical_validity`, `descr`, `temprature`, `company`, `slaughter_manufactoring_process_product_id`, `created`, `updated`) VALUES
(1, 1, 7, 'cog', 0, 10, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-15 13:33:15', '2023-08-19 11:11:54'),
(2, 1, NULL, 'headlights', 0, 4, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-15 13:36:45', '2023-08-19 14:09:25'),
(3, 1, 7, 'motor', 1, 3, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 13:37:44', '2023-08-19 14:16:07'),
(5, 2, NULL, 'headlights', 0, 60, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-15 19:06:25', '2023-08-15 19:06:25'),
(9, 3, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 13:37:44', '2023-08-15 20:38:06'),
(12, 4, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 13:37:44', '2023-08-17 07:43:43'),
(13, 4, NULL, 'headlights', 0, 20, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 07:47:08', '2023-08-17 07:47:08'),
(19, 6, 7, 'cog', 0, 3, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 11:21:42', '2023-08-19 11:13:42'),
(22, 7, NULL, 'headlights', 0, 10, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 11:31:27', '2023-08-17 11:31:27'),
(23, 7, 7, 'cog', 0, 2, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 11:32:14', '2023-08-17 11:32:14'),
(24, 6, 7, 'cog', 0, 3, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 11:33:15', '2023-08-17 11:33:15'),
(25, 7, 7, 'cog', 0, 2, 25, 0000000030, 'this is cog', 30, 'future', 0, '2023-08-17 11:33:40', '2023-08-17 11:33:40'),
(26, 7, NULL, 'headlights', 0, 4, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-17 11:35:01', '2023-08-17 11:35:01'),
(27, 1, 4, 'fan', 1, 198, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 12:01:07', '2023-08-19 08:31:40'),
(28, 7, 4, 'fan', 1, 1, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 12:01:07', '2023-08-17 12:01:07'),
(29, 7, 4, 'fan', 1, 1, 20, 0000000000, 'this is fan', 20, 'future', NULL, '2023-08-17 12:01:07', '2023-08-19 08:26:25'),
(30, 7, NULL, 'motor', 1, 1, 2, 0000000003, 'this is motor', 20, 'future', 0, '2023-08-15 13:37:44', '2023-08-17 07:45:06'),
(31, 3, 3, 'headlights', 0, 5, 20, 0000000050, 'this is headlights', 40, 'future', 0, '2023-08-19 08:35:52', '2023-08-19 08:35:52'),
(35, 1, 3, 'chair', 0, 20, 10, 0000000000, 'this is chairs', 10, 'dreams', NULL, '2023-08-19 11:34:25', '2023-08-19 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `level_one_chart_of_accounts`
--

CREATE TABLE `level_one_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `main_chart_of_accounts_type_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level_three_chart_of_accounts`
--

CREATE TABLE `level_three_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `level_two_chart_of_account_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level_two_chart_of_accounts`
--

CREATE TABLE `level_two_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `level_one_chart_of_account_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_chart_of_accounts_types`
--

CREATE TABLE `main_chart_of_accounts_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_areas`
--

CREATE TABLE `marketing_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_areas`
--

CREATE TABLE `marketing_campaign_areas` (
  `id` int(11) NOT NULL,
  `marketing_campaing_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channels`
--

CREATE TABLE `marketing_campaign_channels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `marketing_campain_id` int(11) DEFAULT NULL,
  `total_budget` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_events`
--

CREATE TABLE `marketing_campaign_channel_events` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_event_levels`
--

CREATE TABLE `marketing_campaign_channel_event_levels` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_event_id` int(11) DEFAULT NULL,
  `marketing_channel_level_id` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channels`
--

CREATE TABLE `marketing_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channel_levels`
--

CREATE TABLE `marketing_channel_levels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_surveys`
--

CREATE TABLE `marketing_surveys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_areas`
--

CREATE TABLE `marketing_survey_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes`
--

CREATE TABLE `marketing_survey_processes` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes_answers`
--

CREATE TABLE `marketing_survey_processes_answers` (
  `id` int(11) NOT NULL,
  `marketing_survey_process_id` int(11) DEFAULT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_questions`
--

CREATE TABLE `marketing_survey_questions` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_question_type_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_types`
--

CREATE TABLE `marketing_survey_question_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_members`
--

CREATE TABLE `marketing_survey_team_members` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_team_member_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_member_areas`
--

CREATE TABLE `marketing_survey_team_member_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updaed` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_team_members`
--

CREATE TABLE `marketing_team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_courses`
--

CREATE TABLE `mother_courses` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hens_qty` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_course_events`
--

CREATE TABLE `mother_course_events` (
  `id` int(11) NOT NULL,
  `mother_course_id` int(11) DEFAULT NULL,
  `mother_event_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_course_workers`
--

CREATE TABLE `mother_course_workers` (
  `id` int(11) NOT NULL,
  `mother_course_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `work_descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mother_event_types`
--

CREATE TABLE `mother_event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opening_balances`
--

CREATE TABLE `opening_balances` (
  `id` int(11) NOT NULL,
  `level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `amount` decimal(20,16) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_agents`
--

CREATE TABLE `purchases_agents` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL COMMENT 'for outside warehouse items',
  `qty` int(11) DEFAULT NULL,
  `taken_qty` int(10) UNSIGNED ZEROFILL DEFAULT 0000000000,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created`, `updated`) VALUES
(1, 'admin', '2023-12-10 08:27:19', '2023-12-10 08:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `sales_agents`
--

CREATE TABLE `sales_agents` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_details`
--

CREATE TABLE `sale_order_details` (
  `id` int(11) NOT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL COMMENT 'for outside warehouse items',
  `qty` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `browser_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `socket_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT current_timestamp(),
  `finish_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manfactured_input`
--

CREATE TABLE `slaughter_manfactured_input` (
  `id` int(11) NOT NULL,
  `invetory_item_id` int(11) DEFAULT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manfactured_output`
--

CREATE TABLE `slaughter_manfactured_output` (
  `id` int(11) NOT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_cost_types`
--

CREATE TABLE `slaughter_manufactoring_cost_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'fixed,per manufactred unit',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_processes`
--

CREATE TABLE `slaughter_manufactoring_processes` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_process_cost_structure`
--

CREATE TABLE `slaughter_manufactoring_process_cost_structure` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_process_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_cost_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `min_value` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_manufactoring_process_products`
--

CREATE TABLE `slaughter_manufactoring_process_products` (
  `id` int(11) NOT NULL,
  `slaughter_manufactoring_process_id` int(11) DEFAULT NULL,
  `is_main` tinyint(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_processes`
--

CREATE TABLE `slaughter_processes` (
  `id` int(11) NOT NULL,
  `slaughter_slaughter_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_process_id` int(11) NOT NULL,
  `lost_qty` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_process_costs`
--

CREATE TABLE `slaughter_process_costs` (
  `id` int(11) NOT NULL,
  `slaughter_process_id` int(11) DEFAULT NULL,
  `slaughter_manufactoring_process_cost_structure_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `accounting_transaction_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slaughter_slaughters`
--

CREATE TABLE `slaughter_slaughters` (
  `id` int(11) NOT NULL,
  `farm_course_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_hens` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_fileds`
--

CREATE TABLE `table_fileds` (
  `id` int(11) NOT NULL,
  `table` varchar(255) DEFAULT NULL,
  ` field` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `debit_level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `credit_level_three_chart_of_account_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `value` decimal(20,16) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hr_employee_id`, `name`, `tel`, `pass`, `created`, `updated`) VALUES
(1, NULL, NULL, NULL, NULL, '2023-12-10 08:25:27', '2023-12-10 08:25:27'),
(2, 1, 'ali', '9888', '$2a$10$4n5eyRa3KZfLsz1/O2qzLOWvJsqwHMpzoqea5g2VfXhrZaSiTNjHq', '2023-12-10 08:25:27', '2023-12-10 08:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `company_id`, `user_id`, `role_id`, `created`, `updated`) VALUES
(1, NULL, 2, 1, '2023-12-10 08:28:03', '2023-12-10 08:28:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_files`
--
ALTER TABLE `archive_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archive_files_types_1` (`archive_file_type_id`);

--
-- Indexes for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browsers`
--
ALTER TABLE `browsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_browsers_users_1` (`user_id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_budget_level_three_chart_of_accounts_copy_1_1` (`level_three_chart_of_account_id`);

--
-- Indexes for table `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cheques_transactions_1` (`transaction_id`);

--
-- Indexes for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_created_user_id` (`creater_user_id`);

--
-- Indexes for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_communication_meetication_meetings_1` (`communication_meeting_id`),
  ADD KEY `fk_participant_user_id_12` (`participant_user_id`);

--
-- Indexes for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_communication_personal_calls_users_1` (`caller_user_id`),
  ADD KEY `fk_communication_personal_calls_users_2` (`callee_user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_courses`
--
ALTER TABLE `farm_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_events_farm_courses_1` (`farm_course_id`),
  ADD KEY `fk_farm_course_events_farm_event_types_1` (`farm_event_type_id`);

--
-- Indexes for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_workers_farm_courses_1` (`farm_course_id`),
  ADD KEY `fk_farm_course_workers_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `farm_event_types`
--
ALTER TABLE `farm_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_attendance_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_awards`
--
ALTER TABLE `hr_awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_awards_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_awards_hr_award_types_1` (`hr_award_type_id`);

--
-- Indexes for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_complains`
--
ALTER TABLE `hr_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_complains_hr_complain_types_1` (`hr_complain_type_id`);

--
-- Indexes for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_departments_companies_1` (`company_id`),
  ADD KEY `fk_hr_departments_users_1` (`manager_user_id`);

--
-- Indexes for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_department_kpis_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_employees`
--
ALTER TABLE `hr_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employees_working_hours_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_departments_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_departments_hr_departments_1` (`hr_department_id`),
  ADD KEY `fk_hr_employee_departments_hr_job_titles_1` (`hr_job_title_id`);

--
-- Indexes for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_files_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_department_kpis_1` (`hr_department_kpi_id`);

--
-- Indexes for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_transfers_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_1` (`from_hr_department_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_2` (`to_hr_department_id`);

--
-- Indexes for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_warnings_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_holiday_departments_hr_holidays_1` (`hr_hoilday_id`),
  ADD KEY `fk_hr_holiday_departments_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_leaves_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_leaves_hr_leave_types_1` (`hr_leave_type_id`);

--
-- Indexes for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventories_inventory_types_1` (`inventory_type_id`),
  ADD KEY `fk_inventories_companies_1` (`company_id`);

--
-- Indexes for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_item_details_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_inventory_item_details_inventory_shelves_1` (`inventory_shelve_id`);

--
-- Indexes for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_item_logs_inventory_log_types_1` (`inventory_log_type_id`),
  ADD KEY `fk_inventory_item_logs_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_inventory_item_logs_inventory_item_details_1` (`inventory_item_detail_id`),
  ADD KEY `fk_inventory_item_logs_inventories_1` (`from_inventory_id`),
  ADD KEY `fk_inventory_item_logs_inventories_2` (`to_inventory_id`),
  ADD KEY `fk_inventory_item_logs_inventory_shelves_1` (`from_shelve_id`),
  ADD KEY `fk_inventory_item_logs_inventory_shelves_2` (`to_shelve_id`);

--
-- Indexes for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_log_types_inventory_types_1` (`inventory_type_id`);

--
-- Indexes for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_shelves_inventories_1` (`inventory_id`);

--
-- Indexes for table `inventory_types`
--
ALTER TABLE `inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invetory_items`
--
ALTER TABLE `invetory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invetory_items_inventories_1` (`inventory_id`),
  ADD KEY `fk_invetory_items_inventory_shelves_1` (`inventory_shelve_id`);

--
-- Indexes for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_one_chart_of_accounts_types_1` (`main_chart_of_accounts_type_id`),
  ADD KEY `fk_level_one_chart_of_accounts_companies_1` (`company_id`);

--
-- Indexes for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_three_level_two_chart_of_accounts_1` (`level_two_chart_of_account_id`);

--
-- Indexes for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_level_two_level_one_chart_of_accounts_1` (`level_one_chart_of_account_id`);

--
-- Indexes for table `main_chart_of_accounts_types`
--
ALTER TABLE `main_chart_of_accounts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_campaigns_1` (`marketing_campaing_id`);

--
-- Indexes for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_channels_1` (`marketing_channel_id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_campaigns_1` (`marketing_campain_id`);

--
-- Indexes for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_events_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_campaign_channels_1` (`marketing_campaign_channel_id`);

--
-- Indexes for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_campaign_channel_events_1` (`marketing_campaign_channel_event_id`),
  ADD KEY `fk_marketing_campaign_marketing_channel_levels_1` (`marketing_channel_level_id`);

--
-- Indexes for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_channel_levels_marketing_channels_1` (`marketing_channel_id`);

--
-- Indexes for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_areas_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_areas_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_processes_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_team_members_1` (`marketing_survey_team_member_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_marketing_survey_processes_1` (`marketing_survey_process_id`),
  ADD KEY `fk_marketing_marketing_survey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_questions_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_questions_marketing_survey_question_types
_1` (`marketing_survey_question_type_id`);

--
-- Indexes for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_sbers_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_sug_team_members_1` (`marketing_team_member_id`);

--
-- Indexes for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_teams_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketiey_team_members_1` (`marketing_survey_team_member_id`);

--
-- Indexes for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_courses`
--
ALTER TABLE `mother_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mother_courses_inventories_1` (`inventory_id`);

--
-- Indexes for table `mother_course_events`
--
ALTER TABLE `mother_course_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mother_course_events_mother_courses_1` (`mother_course_id`),
  ADD KEY `fk_mother_course_events_mother_event_types_1` (`mother_event_type_id`);

--
-- Indexes for table `mother_course_workers`
--
ALTER TABLE `mother_course_workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_farm_course_workers_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_mother_course_workers_mother_courses_1` (`mother_course_id`);

--
-- Indexes for table `mother_event_types`
--
ALTER TABLE `mother_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_balances`
--
ALTER TABLE `opening_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opening_balances_level_three_chart_of_accounts_copy_1_1` (`level_three_chart_of_account_id`);

--
-- Indexes for table `purchases_agents`
--
ALTER TABLE `purchases_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_orders_purcases_agents_1` (`agent_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_order_details_invetory_items_1` (`inventory_item_id`),
  ADD KEY `fk_purchase_order_details_purchase_orders_1` (`purchase_order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_agents`
--
ALTER TABLE `sales_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchase_orders_purcases_agents_1_copy_1` (`agent_id`);

--
-- Indexes for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sale_order_details_invetory_items_1_copy_1` (`inventory_item_id`),
  ADD KEY `fk_sale_order_details_purchase_orders_1_copy_1` (`sale_order_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_browsers_1` (`browser_id`);

--
-- Indexes for table `slaughter_manfactured_input`
--
ALTER TABLE `slaughter_manfactured_input`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manfactured_input_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_manfactured_input_invetory_items_1` (`invetory_item_id`);

--
-- Indexes for table `slaughter_manfactured_output`
--
ALTER TABLE `slaughter_manfactured_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manfactured_output_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_manfactured_output_invetory_items_1` (`inventory_item_id`);

--
-- Indexes for table `slaughter_manufactoring_cost_types`
--
ALTER TABLE `slaughter_manufactoring_cost_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slaughter_manufactoring_processes`
--
ALTER TABLE `slaughter_manufactoring_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manufaring_process_products_1` (`slaughter_manufactoring_product_id`);

--
-- Indexes for table `slaughter_manufactoring_process_cost_structure`
--
ALTER TABLE `slaughter_manufactoring_process_cost_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_manufactoritoring_processes_1` (`slaughter_manufactoring_process_id`),
  ADD KEY `fk_slaughter_manufactorinufactoring_cost_types_1` (`slaughter_manufactoring_cost_type_id`);

--
-- Indexes for table `slaughter_manufactoring_process_products`
--
ALTER TABLE `slaughter_manufactoring_process_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_ming_processes_1` (`slaughter_manufactoring_process_id`);

--
-- Indexes for table `slaughter_processes`
--
ALTER TABLE `slaughter_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_processes_slaughter_manufactoring_processes_1` (`slaughter_manufactoring_process_id`);

--
-- Indexes for table `slaughter_process_costs`
--
ALTER TABLE `slaughter_process_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_process_costs_slaughter_processes_1` (`slaughter_process_id`),
  ADD KEY `fk_slaughter_process_cosess_cost_structure_1` (`slaughter_manufactoring_process_cost_structure_id`),
  ADD KEY `fk_slaughter_process_costs_transactions_1` (`accounting_transaction_id`);

--
-- Indexes for table `slaughter_slaughters`
--
ALTER TABLE `slaughter_slaughters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slaughter_slaughters_farm_courses_1` (`farm_course_id`);

--
-- Indexes for table `table_fileds`
--
ALTER TABLE `table_fileds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transactions_level_three_chart_of_accounts_copy_1_1` (`debit_level_three_chart_of_account_id`),
  ADD KEY `fk_transactions_level_three_chart_of_accounts_copy_1_2` (`credit_level_three_chart_of_account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_logs_sessions_1` (`session_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_roles_users_1` (`user_id`),
  ADD KEY `fk_user_roles_roles_1` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_files`
--
ALTER TABLE `archive_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `browsers`
--
ALTER TABLE `browsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_courses`
--
ALTER TABLE `farm_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_event_types`
--
ALTER TABLE `farm_event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_awards`
--
ALTER TABLE `hr_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complains`
--
ALTER TABLE `hr_complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_departments`
--
ALTER TABLE `hr_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employees`
--
ALTER TABLE `hr_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory_types`
--
ALTER TABLE `inventory_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invetory_items`
--
ALTER TABLE `invetory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_chart_of_accounts_types`
--
ALTER TABLE `main_chart_of_accounts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_courses`
--
ALTER TABLE `mother_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_course_events`
--
ALTER TABLE `mother_course_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_course_workers`
--
ALTER TABLE `mother_course_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother_event_types`
--
ALTER TABLE `mother_event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opening_balances`
--
ALTER TABLE `opening_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_agents`
--
ALTER TABLE `purchases_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_agents`
--
ALTER TABLE `sales_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manfactured_input`
--
ALTER TABLE `slaughter_manfactured_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manfactured_output`
--
ALTER TABLE `slaughter_manfactured_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_cost_types`
--
ALTER TABLE `slaughter_manufactoring_cost_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_processes`
--
ALTER TABLE `slaughter_manufactoring_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_process_cost_structure`
--
ALTER TABLE `slaughter_manufactoring_process_cost_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_manufactoring_process_products`
--
ALTER TABLE `slaughter_manufactoring_process_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_processes`
--
ALTER TABLE `slaughter_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_process_costs`
--
ALTER TABLE `slaughter_process_costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaughter_slaughters`
--
ALTER TABLE `slaughter_slaughters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_fileds`
--
ALTER TABLE `table_fileds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_files`
--
ALTER TABLE `archive_files`
  ADD CONSTRAINT `fk_archive_files_types_1` FOREIGN KEY (`archive_file_type_id`) REFERENCES `archive_file_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `browsers`
--
ALTER TABLE `browsers`
  ADD CONSTRAINT `fk_browsers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `fk_budget_level_three_chart_of_accounts_copy_1_1` FOREIGN KEY (`level_three_chart_of_account_id`) REFERENCES `level_three_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `cheques`
--
ALTER TABLE `cheques`
  ADD CONSTRAINT `fk_cheques_transactions_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communication_meetings`
--
ALTER TABLE `communication_meetings`
  ADD CONSTRAINT `fk_created_user_id` FOREIGN KEY (`creater_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `communication_meeting_participants`
--
ALTER TABLE `communication_meeting_participants`
  ADD CONSTRAINT `fk_communication_meetication_meetings_1` FOREIGN KEY (`communication_meeting_id`) REFERENCES `communication_meetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_participant_user_id_12` FOREIGN KEY (`participant_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communication_personal_calls`
--
ALTER TABLE `communication_personal_calls`
  ADD CONSTRAINT `fk_communication_personal_calls_users_1` FOREIGN KEY (`caller_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_communication_personal_calls_users_2` FOREIGN KEY (`callee_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `farm_course_events`
--
ALTER TABLE `farm_course_events`
  ADD CONSTRAINT `fk_farm_course_events_farm_courses_1` FOREIGN KEY (`farm_course_id`) REFERENCES `farm_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_farm_course_events_farm_event_types_1` FOREIGN KEY (`farm_event_type_id`) REFERENCES `farm_event_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `farm_course_workers`
--
ALTER TABLE `farm_course_workers`
  ADD CONSTRAINT `fk_farm_course_workers_farm_courses_1` FOREIGN KEY (`farm_course_id`) REFERENCES `farm_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_farm_course_workers_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  ADD CONSTRAINT `fk_hr_attendance_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_awards`
--
ALTER TABLE `hr_awards`
  ADD CONSTRAINT `fk_hr_awards_hr_award_types_1` FOREIGN KEY (`hr_award_type_id`) REFERENCES `hr_award_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_awards_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_complains`
--
ALTER TABLE `hr_complains`
  ADD CONSTRAINT `fk_hr_complains_hr_complain_types_1` FOREIGN KEY (`hr_complain_type_id`) REFERENCES `hr_complain_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD CONSTRAINT `fk_hr_departments_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_departments_users_1` FOREIGN KEY (`manager_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  ADD CONSTRAINT `fk_hr_department_kpis_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  ADD CONSTRAINT `fk_hr_employees_working_hours_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  ADD CONSTRAINT `fk_hr_employee_departments_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`),
  ADD CONSTRAINT `fk_hr_employee_departments_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`),
  ADD CONSTRAINT `fk_hr_employee_departments_hr_job_titles_1` FOREIGN KEY (`hr_job_title_id`) REFERENCES `hr_job_titles` (`id`);

--
-- Constraints for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  ADD CONSTRAINT `fk_hr_employee_files_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  ADD CONSTRAINT `fk_hr_employee_kpi_records_hr_department_kpis_1` FOREIGN KEY (`hr_department_kpi_id`) REFERENCES `hr_department_kpis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_kpi_records_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_departments_1` FOREIGN KEY (`from_hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_departments_2` FOREIGN KEY (`to_hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_employee_transfers_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  ADD CONSTRAINT `fk_hr_employee_warnings_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  ADD CONSTRAINT `fk_hr_holiday_departments_hr_departments_1` FOREIGN KEY (`hr_department_id`) REFERENCES `hr_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_holiday_departments_hr_holidays_1` FOREIGN KEY (`hr_hoilday_id`) REFERENCES `hr_holidays` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD CONSTRAINT `fk_hr_leaves_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hr_leaves_hr_leave_types_1` FOREIGN KEY (`hr_leave_type_id`) REFERENCES `hr_leave_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `fk_inventories_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventories_inventory_types_1` FOREIGN KEY (`inventory_type_id`) REFERENCES `inventory_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventory_item_details`
--
ALTER TABLE `inventory_item_details`
  ADD CONSTRAINT `fk_inventory_item_details_inventory_shelves_1` FOREIGN KEY (`inventory_shelve_id`) REFERENCES `inventory_shelves` (`id`),
  ADD CONSTRAINT `fk_inventory_item_details_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_item_logs`
--
ALTER TABLE `inventory_item_logs`
  ADD CONSTRAINT `fk_inventory_item_logs_inventories_1` FOREIGN KEY (`from_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventories_2` FOREIGN KEY (`to_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_item_details_1` FOREIGN KEY (`inventory_item_detail_id`) REFERENCES `inventory_item_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_log_types_1` FOREIGN KEY (`inventory_log_type_id`) REFERENCES `inventory_log_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_shelves_1` FOREIGN KEY (`from_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_inventory_shelves_2` FOREIGN KEY (`to_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inventory_item_logs_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_log_types`
--
ALTER TABLE `inventory_log_types`
  ADD CONSTRAINT `fk_inventory_log_types_inventory_types_1` FOREIGN KEY (`inventory_type_id`) REFERENCES `inventory_types` (`id`);

--
-- Constraints for table `inventory_shelves`
--
ALTER TABLE `inventory_shelves`
  ADD CONSTRAINT `fk_inventory_shelves_inventories_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invetory_items`
--
ALTER TABLE `invetory_items`
  ADD CONSTRAINT `fk_invetory_items_inventories_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_invetory_items_inventory_shelves_1` FOREIGN KEY (`inventory_shelve_id`) REFERENCES `inventory_shelves` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `level_one_chart_of_accounts`
--
ALTER TABLE `level_one_chart_of_accounts`
  ADD CONSTRAINT `fk_level_one_chart_of_accounts_companies_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_level_one_chart_of_accounts_types_1` FOREIGN KEY (`main_chart_of_accounts_type_id`) REFERENCES `main_chart_of_accounts_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `level_three_chart_of_accounts`
--
ALTER TABLE `level_three_chart_of_accounts`
  ADD CONSTRAINT `fk_level_three_level_two_chart_of_accounts_1` FOREIGN KEY (`level_two_chart_of_account_id`) REFERENCES `level_two_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `level_two_chart_of_accounts`
--
ALTER TABLE `level_two_chart_of_accounts`
  ADD CONSTRAINT `fk_level_two_level_one_chart_of_accounts_1` FOREIGN KEY (`level_one_chart_of_account_id`) REFERENCES `level_one_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_campaigns_1` FOREIGN KEY (`marketing_campaing_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_campaigns_1` FOREIGN KEY (`marketing_campain_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channels_1` FOREIGN KEY (`marketing_campaign_channel_id`) REFERENCES `marketing_campaign_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_events_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channel_events_1` FOREIGN KEY (`marketing_campaign_channel_event_id`) REFERENCES `marketing_campaign_channel_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_marketing_channel_levels_1` FOREIGN KEY (`marketing_channel_level_id`) REFERENCES `marketing_channel_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD CONSTRAINT `fk_marketing_channel_levels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD CONSTRAINT `fk_marketing_marketing_survey_processes_1` FOREIGN KEY (`marketing_survey_process_id`) REFERENCES `marketing_survey_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_marketing_survey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_survey_question_types
_1` FOREIGN KEY (`marketing_survey_question_type_id`) REFERENCES `marketing_survey_question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD CONSTRAINT `fk_marketing_sbers_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_sug_team_members_1` FOREIGN KEY (`marketing_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD CONSTRAINT `fk_marketiey_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_survey_team_members` (`id`),
  ADD CONSTRAINT `fk_marketing_survey_teams_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mother_courses`
--
ALTER TABLE `mother_courses`
  ADD CONSTRAINT `fk_mother_courses_inventories_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `mother_course_events`
--
ALTER TABLE `mother_course_events`
  ADD CONSTRAINT `fk_mother_course_events_mother_courses_1` FOREIGN KEY (`mother_course_id`) REFERENCES `mother_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mother_course_events_mother_event_types_1` FOREIGN KEY (`mother_event_type_id`) REFERENCES `mother_event_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `mother_course_workers`
--
ALTER TABLE `mother_course_workers`
  ADD CONSTRAINT `fk_farm_course_workers_hr_employees_1_copy_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mother_course_workers_mother_courses_1` FOREIGN KEY (`mother_course_id`) REFERENCES `mother_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opening_balances`
--
ALTER TABLE `opening_balances`
  ADD CONSTRAINT `fk_opening_balances_level_three_chart_of_accounts_copy_1_1` FOREIGN KEY (`level_three_chart_of_account_id`) REFERENCES `level_three_chart_of_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `fk_purchase_orders_purcases_agents_1` FOREIGN KEY (`agent_id`) REFERENCES `purchases_agents` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD CONSTRAINT `fk_purchase_order_details_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_purchase_order_details_purchase_orders_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD CONSTRAINT `fk_purchase_orders_purcases_agents_1_copy_1` FOREIGN KEY (`agent_id`) REFERENCES `sales_agents` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD CONSTRAINT `fk_sale_order_details_invetory_items_1_copy_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sale_order_details_purchase_orders_1_copy_1` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_browsers_1` FOREIGN KEY (`browser_id`) REFERENCES `browsers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_manfactured_input`
--
ALTER TABLE `slaughter_manfactured_input`
  ADD CONSTRAINT `fk_slaughter_manfactured_input_invetory_items_1` FOREIGN KEY (`invetory_item_id`) REFERENCES `invetory_items` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slaughter_manfactured_input_slaughter_processes_1` FOREIGN KEY (`slaughter_process_id`) REFERENCES `slaughter_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_manfactured_output`
--
ALTER TABLE `slaughter_manfactured_output`
  ADD CONSTRAINT `fk_slaughter_manfactured_output_invetory_items_1` FOREIGN KEY (`inventory_item_id`) REFERENCES `invetory_items` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slaughter_manfactured_output_slaughter_processes_1` FOREIGN KEY (`slaughter_process_id`) REFERENCES `slaughter_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_manufactoring_processes`
--
ALTER TABLE `slaughter_manufactoring_processes`
  ADD CONSTRAINT `fk_slaughter_manufaring_process_products_1` FOREIGN KEY (`slaughter_manufactoring_product_id`) REFERENCES `slaughter_manufactoring_process_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_manufactoring_process_cost_structure`
--
ALTER TABLE `slaughter_manufactoring_process_cost_structure`
  ADD CONSTRAINT `fk_slaughter_manufactorinufactoring_cost_types_1` FOREIGN KEY (`slaughter_manufactoring_cost_type_id`) REFERENCES `slaughter_manufactoring_cost_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slaughter_manufactoritoring_processes_1` FOREIGN KEY (`slaughter_manufactoring_process_id`) REFERENCES `slaughter_manufactoring_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_manufactoring_process_products`
--
ALTER TABLE `slaughter_manufactoring_process_products`
  ADD CONSTRAINT `fk_slaughter_ming_processes_1` FOREIGN KEY (`slaughter_manufactoring_process_id`) REFERENCES `slaughter_manufactoring_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_processes`
--
ALTER TABLE `slaughter_processes`
  ADD CONSTRAINT `fk_slaughter_processes_slaughter_manufactoring_processes_1` FOREIGN KEY (`slaughter_manufactoring_process_id`) REFERENCES `slaughter_manufactoring_processes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_process_costs`
--
ALTER TABLE `slaughter_process_costs`
  ADD CONSTRAINT `fk_slaughter_process_cosess_cost_structure_1` FOREIGN KEY (`slaughter_manufactoring_process_cost_structure_id`) REFERENCES `slaughter_manufactoring_process_cost_structure` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slaughter_process_costs_slaughter_processes_1` FOREIGN KEY (`slaughter_process_id`) REFERENCES `slaughter_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slaughter_process_costs_transactions_1` FOREIGN KEY (`accounting_transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slaughter_slaughters`
--
ALTER TABLE `slaughter_slaughters`
  ADD CONSTRAINT `fk_slaughter_slaughters_farm_courses_1` FOREIGN KEY (`farm_course_id`) REFERENCES `farm_courses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_level_three_chart_of_accounts_copy_1_1` FOREIGN KEY (`debit_level_three_chart_of_account_id`) REFERENCES `level_three_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transactions_level_three_chart_of_accounts_copy_1_2` FOREIGN KEY (`credit_level_three_chart_of_account_id`) REFERENCES `level_three_chart_of_accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_hr_employees_1` FOREIGN KEY (`hr_employee_id`) REFERENCES `hr_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `fk_user_logs_sessions_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_user_roles_roles_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_roles_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `kfarm`
--
CREATE DATABASE IF NOT EXISTS `kfarm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kfarm`;
--
-- Database: `laravel_crud`
--
CREATE DATABASE IF NOT EXISTS `laravel_crud` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_04_130304_create_students_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Mohamed Ali', 'dxmohamedxd@gmail.com', 'KASSALA', '2023-08-04 17:36:37', '2023-08-04 17:36:37'),
(3, 'محمد على محمود', 'dxmohamedxd@gmail.com', 'khartoum', '2023-08-04 17:36:59', '2023-08-04 17:36:59'),
(5, 'ameer', 'ameer@gmail.com', 'كوستي', '2023-08-04 18:07:21', '2023-08-04 19:46:47'),
(6, 'ahmed', 'ahmed@gmail.com', 'الابيض', '2023-08-04 18:07:50', '2023-08-04 18:07:50'),
(7, 'sayed', 'sayed@gmail.com', 'الابيض', '2023-08-04 18:08:15', '2023-08-04 19:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Ali', 'dxmohamedxd@gmail.com', NULL, '$2y$10$5pcN/w/TkdCup/Il6xty9ugZXXe3aX4xXvEU9PF48iTxqw6.l.1I6', NULL, '2023-08-04 09:12:22', '2023-08-04 09:12:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `mult-venter`
--
CREATE DATABASE IF NOT EXISTS `mult-venter` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mult-venter`;

-- --------------------------------------------------------

--
-- Table structure for table `categoreis`
--

CREATE TABLE `categoreis` (
  `category_id` int(11) NOT NULL,
  `name_category` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoreis`
--

INSERT INTO `categoreis` (`category_id`, `name_category`) VALUES
(1, 'phones'),
(2, 'labtop'),
(18, 'clothes');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `totals` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `totals`, `user_id`, `address`) VALUES
(57, 43000, 16, 'kassals'),
(60, 28000, 21, 'khartoum'),
(61, 20000, 16, 'khartoum 4');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(250) NOT NULL,
  `descr` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 20,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `descr`, `qty`, `category_id`) VALUES
(51, 'AG7', 6000, '/imgUpload/1697958176213497.jpg', 'new phone', 0, 1),
(53, 'A13', 7000, '/imgUpload/1697958879834901.jpg', 'new phone', 0, 1),
(55, 'A20', 6000, '/imgUpload/1697959140882355.jpg', 'new phone', 0, 1),
(57, 'a30', 9000, '/imgUpload/1698405087728752.jpg', 'new phone', 40, 1),
(58, 'a60', 9000, '/imgUpload/1698583473167379.jpg', 'new phone', 90, 1),
(59, 's20', 8000, '/imgUpload/1698656631802295.jpg', 'new phone', 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `roles` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `roles`) VALUES
(16, 'mohamed', 'mo@gmail.com', '$2b$10$lsD6PbxwT4Y1YFOrDhC6t.g2yjoJ1MWswmfnKp5HpIZL3H1qs14Je', '12345678', 1),
(21, 'ali', 'ali@gmail.com', '$2b$10$qlhMLNcfSJpKeKScoaENSO.aPWbLPSH4nxnqtySf9uTEYIvAKjHo.', '1234567', 0),
(22, 'omer', 'omer@gmail.com', '$2b$10$XB/566S7Zw.TlCRiUzI8Pe3t1Izxi7aTTqS1Xjnc.e.00.VAVPpee', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venders`
--

INSERT INTO `venders` (`id`, `name`, `email`, `password`, `address`, `service`, `image`) VALUES
(27, 'omer', 'omer@gmail.com', '$2b$10$SCjzi7.CV2ppKShrRmQ12u66ft.RgnLTGq70oavQ/fBsqDlosr6Le', 'kassals', 'phones', '/imageVender/1697461770854285.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoreis`
--
ALTER TABLE `categoreis`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoreis`
--
ALTER TABLE `categoreis`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categoreis` (`category_id`);
--
-- Database: `nodemvc`
--
CREATE DATABASE IF NOT EXISTS `nodemvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nodemvc`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(5, 'updated 5', 900),
(6, '0', 80007899),
(7, 'clothes', 8000),
(8, 'phone', 7890),
(9, 'inserted 2', 100),
(10, 'inserted5', 6000),
(11, 'inserted7', 6000),
(12, 'inserted7', 6000),
(16, 'updated', 98000),
(18, 'inserted 10', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `img` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `img`, `token`) VALUES
(2, 'mohmaed', 'mo@gmail.com', '', ''),
(3, 'ali', 'ali@gmail.com', './public/imgUpload/1694939619950820.jpg', ''),
(4, 'ali', 'ali@gmail.com', 'public/imgUpload/1694939666314968.jpg', ''),
(5, 'omer', 'omer@gmail.com', 'public/imgUpload/1696884742560867.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoib21lciIsImVtYWlsIjoib21lckBnbWFpbC5jb20iLCJpYXQiOjE2OTY4ODQ3NDJ9.o929sR670TejUofpTLw0pkCwi84d9ePh2om09kCSttk'),
(6, 'sayed', 'sayed@gmail.com', 'public/imgUpload/1696886760267338.jpg', 'undefined'),
(7, 'sayed', 'sayed@gmail.com', 'public/imgUpload/169688707830654.jpg', 'undefined'),
(8, 'sayed', 'sayed@gmail.com', 'public/imgUpload/1696887642511836.jpg', 'undefined'),
(9, 'sayed', 'sayed@gmail.com', 'undefined', 'undefined'),
(10, 'sayed', 'sayed@gmail.com', 'undefined', 'undefined'),
(11, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(12, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(13, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(14, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(15, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(16, 'sayed1', 'saye1d@gmail.com', 'undefined', 'undefined'),
(17, 'undefined', 'undefined', 'undefined', 'undefined'),
(18, 'undefined', 'undefined', 'undefined', 'undefined');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `nodemysql`
--
CREATE DATABASE IF NOT EXISTS `nodemysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nodemysql`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`) VALUES
(1, 'mohamed', 'kassala'),
(2, 'ali', 'kassala2'),
(3, 'omer', 'kh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `normatization`
--
CREATE DATABASE IF NOT EXISTS `normatization` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `normatization`;

-- --------------------------------------------------------

--
-- Table structure for table `1nf_users`
--

CREATE TABLE `1nf_users` (
  `id` int(11) NOT NULL,
  `first_name` int(11) NOT NULL,
  `last_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `2fn_proj`
--

CREATE TABLE `2fn_proj` (
  `PRO_ID` int(11) NOT NULL,
  `PRO_NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `2fn_st`
--

CREATE TABLE `2fn_st` (
  `st_id` int(11) NOT NULL,
  `st_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `not_2nf`
--

CREATE TABLE `not_2nf` (
  `std_id` int(11) NOT NULL,
  `pro_num` int(11) NOT NULL,
  `pro_name` int(11) NOT NULL,
  `st_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1nf_users`
--
ALTER TABLE `1nf_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2fn_proj`
--
ALTER TABLE `2fn_proj`
  ADD PRIMARY KEY (`PRO_ID`);

--
-- Indexes for table `2fn_st`
--
ALTER TABLE `2fn_st`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `not_2nf`
--
ALTER TABLE `not_2nf`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1nf_users`
--
ALTER TABLE `1nf_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2fn_proj`
--
ALTER TABLE `2fn_proj`
  MODIFY `PRO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2fn_st`
--
ALTER TABLE `2fn_st`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `not_2nf`
--
ALTER TABLE `not_2nf`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `onlineshope`
--
CREATE DATABASE IF NOT EXISTS `onlineshope` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `onlineshope`;

-- --------------------------------------------------------

--
-- Table structure for table `addcard`
--

CREATE TABLE `addcard` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcard`
--

INSERT INTO `addcard` (`id`, `name`, `price`) VALUES
(4, 'labtop', '400$'),
(6, 'iphone6', '568$');

-- --------------------------------------------------------

--
-- Table structure for table `protect`
--

CREATE TABLE `protect` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `protect`
--

INSERT INTO `protect` (`id`, `name`, `price`, `image`) VALUES
(14, 'labtop', '400$', 'image/e5.jpg'),
(17, 'iphone6', '568$', 'image/m3.jpg'),
(18, 'ridmi note 9', '3980$', 'image/e3.jpg'),
(19, 'A12', '2345$', 'image/m2.jpg'),
(20, 'ali23', '3456$', 'image/c1.webp'),
(26, 'apade ', '1245$', 'image/m3.jpg ');

-- --------------------------------------------------------

--
-- Table structure for table `pro_card`
--

CREATE TABLE `pro_card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_name` varchar(250) NOT NULL,
  `pro_price` text NOT NULL,
  `pro_image` int(11) NOT NULL,
  `pro_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pro_card`
--

INSERT INTO `pro_card` (`id`, `user_id`, `pro_name`, `pro_price`, `pro_image`, `pro_quantity`) VALUES
(13, 5, 'ali23', '3456$', 0, 1),
(14, 5, 'A12', '2345$', 0, 3),
(16, 1, 'A12', '2345$', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_2`
--

CREATE TABLE `user_2` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_em` text NOT NULL,
  `password` int(11) NOT NULL,
  `password2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_2`
--

INSERT INTO `user_2` (`id`, `user_name`, `user_em`, `password`, `password2`) VALUES
(1, ' mohamed  ', ' dxmohamedxd@gmail.com ', 827, 827),
(2, ' محمد على محمود  ', ' mohamed@gmail.com ', 827, 827),
(5, ' sayed  ', ' sayed@gmail.com ', 827, 827),
(6, ' ahmed  ', ' ahmed@gmail.com ', 827, 827),
(7, 'ameer', ' ameer@gmail.com ', 827, 827),
(8, 'omer', ' omer@gmail.com ', 827, 827),
(9, 'سيد', ' sayed@gmail.com ', 827, 827);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcard`
--
ALTER TABLE `addcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protect`
--
ALTER TABLE `protect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_card`
--
ALTER TABLE `pro_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_2`
--
ALTER TABLE `user_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcard`
--
ALTER TABLE `addcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `protect`
--
ALTER TABLE `protect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pro_card`
--
ALTER TABLE `pro_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_2`
--
ALTER TABLE `user_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"auth_ui\",\"table\":\"users\"},{\"db\":\"laravel_crud\",\"table\":\"students\"},{\"db\":\"laravel_crud\",\"table\":\"users\"},{\"db\":\"seo-afro\",\"table\":\"services\"},{\"db\":\"apis\",\"table\":\"categories\"},{\"db\":\"shop\",\"table\":\"items\"},{\"db\":\"shop\",\"table\":\"users\"},{\"db\":\"shop\",\"table\":\"categries\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-06 13:40:51', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ar\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pos_system`
--
CREATE DATABASE IF NOT EXISTS `pos_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_system`;

-- --------------------------------------------------------

--
-- Table structure for table `browsers`
--

CREATE TABLE `browsers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `os_name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `img`, `created`, `updated`) VALUES
(1, NULL, 5, 'food', NULL, '2023-11-01 13:42:14', '2023-11-01 13:42:14'),
(2, NULL, 5, 'accessories', NULL, '2023-11-05 09:23:04', '2023-11-05 09:23:04'),
(3, NULL, 5, 'watches', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43'),
(4, NULL, 5, 'shoes', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43'),
(5, NULL, 5, 'cycles', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custmors`
--

CREATE TABLE `custmors` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `card_number` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custmors`
--

INSERT INTO `custmors` (`id`, `pos_station_id`, `name`, `tel`, `email`, `card_number`, `created`, `updated`) VALUES
(2, 5, 'Ali Salah', '323523524', 'salah@s.com', 23425, '2023-11-06 09:13:14', '2023-11-20 11:51:21'),
(9, 5, 'Mohamed', '', NULL, 563, '2023-11-07 08:59:19', '2023-11-20 11:51:21'),
(18, 5, 'ahmed', '050524252', 'ahemd66@g.com', NULL, '2023-11-07 13:09:43', '2023-11-20 11:51:21'),
(19, 5, 'omar', '425252532', 'omar@omar.com', NULL, '2023-11-07 13:11:45', '2023-11-20 11:51:21'),
(20, 5, 'om', '34444', 'pm@pm.com', NULL, '2023-11-07 13:13:07', '2023-11-20 11:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `fiexed_assets`
--

CREATE TABLE `fiexed_assets` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `fixed_asset_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `book_value` decimal(10,2) DEFAULT NULL,
  `salvage_value` decimal(10,2) DEFAULT NULL,
  `useful_life` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_asset_types`
--

CREATE TABLE `fixed_asset_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_deprecated` tinyint(1) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees`
--

CREATE TABLE `hr_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_title_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_titles`
--

CREATE TABLE `hr_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_chart_of_account`
--

CREATE TABLE `main_chart_of_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_areas`
--

CREATE TABLE `marketing_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_areas`
--

INSERT INTO `marketing_areas` (`id`, `name`, `created`, `updated`) VALUES
(4, 'kl', '2023-11-29 14:28:01', '2023-11-29 14:28:01'),
(5, 'kassals', '2023-12-03 08:49:24', '2023-12-03 08:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaigns`
--

INSERT INTO `marketing_campaigns` (`id`, `name`, `descr`, `start_time`, `finish_time`, `created`, `updated`) VALUES
(4, 'test', 'test2', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '2023-11-29 12:45:33', '2023-11-29 12:45:33'),
(5, 'test3', 'tess', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '2023-11-29 13:07:17', '2023-11-29 13:13:14'),
(6, 'test', 'test', '2023-12-25 00:00:00', '2023-12-19 00:00:00', '2023-12-03 11:39:25', '2023-12-03 11:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_areas`
--

CREATE TABLE `marketing_campaign_areas` (
  `id` int(11) NOT NULL,
  `marketing_campaing_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_areas`
--

INSERT INTO `marketing_campaign_areas` (`id`, `marketing_campaing_id`, `marketing_area_id`, `created`, `updated`) VALUES
(2, 6, 5, '2023-12-03 11:45:43', '2023-12-03 11:45:43'),
(3, 6, 4, '2023-12-03 11:45:57', '2023-12-03 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channels`
--

CREATE TABLE `marketing_campaign_channels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `marketing_campain_id` int(11) DEFAULT NULL,
  `total_budget` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_channels`
--

INSERT INTO `marketing_campaign_channels` (`id`, `marketing_channel_id`, `marketing_campain_id`, `total_budget`, `created`, `updated`) VALUES
(1, 2, 6, 6, '2023-12-03 11:49:33', '2023-12-03 12:05:30'),
(8, 3, 6, 4, '2023-12-03 12:11:25', '2023-12-03 12:12:12'),
(10, 3, 6, 0, '2023-12-03 12:20:36', '2023-12-03 12:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_events`
--

CREATE TABLE `marketing_campaign_channel_events` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_channel_events`
--

INSERT INTO `marketing_campaign_channel_events` (`id`, `marketing_campaign_channel_id`, `marketing_area_id`, `name`, `location`, `descr`, `total_cost`, `start_time`, `finish_time`, `created`, `updated`) VALUES
(8, 1, 5, 'test', 'test', 'test', '7.00', '2023-12-27 17:46:58', '2023-12-31 17:46:58', '2023-12-03 13:47:58', '2023-12-03 13:47:58'),
(17, 10, 5, 'test', 'test', 'test', '4.00', '2023-12-29 00:00:00', '2023-12-30 00:00:00', '2023-12-03 14:33:09', '2023-12-03 14:33:09'),
(18, 10, 5, 'test', 'test', 'test', '3.00', '2023-12-27 00:00:00', '2023-12-23 00:00:00', '2023-12-04 07:18:27', '2023-12-04 07:18:27'),
(20, 10, 5, 'test4', 'test2', 'test4', '4.00', '2023-12-29 00:00:00', '2023-12-29 00:00:00', '2023-12-04 07:23:41', '2023-12-04 07:23:41'),
(21, 10, 5, 'test .....', 'test...', 'test.................', '3.00', '2023-12-27 00:00:00', '2023-12-26 00:00:00', '2023-12-04 07:43:29', '2023-12-04 07:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_event_levels`
--

CREATE TABLE `marketing_campaign_channel_event_levels` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_event_id` int(11) DEFAULT NULL,
  `marketing_channel_level_id` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channels`
--

CREATE TABLE `marketing_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_channels`
--

INSERT INTO `marketing_channels` (`id`, `name`, `descr`, `created`, `updated`) VALUES
(2, 'test5', 'test5', '2023-11-29 12:10:16', '2023-11-29 12:10:16'),
(3, 'test2', 'test2', '2023-11-29 13:06:35', '2023-11-29 13:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channel_levels`
--

CREATE TABLE `marketing_channel_levels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_channel_levels`
--

INSERT INTO `marketing_channel_levels` (`id`, `marketing_channel_id`, `name`, `descr`, `created`, `updated`) VALUES
(2, 2, 'test5', 'test5', '2023-11-29 12:10:16', '2023-11-29 12:10:16'),
(3, 3, 'tests', 'test2', '2023-11-29 13:06:35', '2023-11-29 13:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_surveys`
--

CREATE TABLE `marketing_surveys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_surveys`
--

INSERT INTO `marketing_surveys` (`id`, `name`, `budget`, `created`, `updated`) VALUES
(1, 'test', NULL, '2023-11-29 12:14:04', '2023-11-29 12:14:04'),
(2, 'test2', NULL, '2023-11-29 12:16:22', '2023-11-29 12:16:22'),
(5, 'product_test', NULL, '2023-11-30 09:24:40', '2023-11-30 09:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_areas`
--

CREATE TABLE `marketing_survey_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_areas`
--

INSERT INTO `marketing_survey_areas` (`id`, `marketing_survey_id`, `marketing_area_id`, `created`, `updated`) VALUES
(58, 5, 5, '2023-12-03 08:49:47', '2023-12-03 08:49:47'),
(59, 5, 4, '2023-12-03 08:49:52', '2023-12-03 08:49:52'),
(60, 5, 5, '2023-12-03 09:01:10', '2023-12-03 09:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes`
--

CREATE TABLE `marketing_survey_processes` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes_answers`
--

CREATE TABLE `marketing_survey_processes_answers` (
  `id` int(11) NOT NULL,
  `marketing_survey_process_id` int(11) DEFAULT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_questions`
--

CREATE TABLE `marketing_survey_questions` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_question_type_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_questions`
--

INSERT INTO `marketing_survey_questions` (`id`, `marketing_survey_id`, `marketing_survey_question_type_id`, `question`, `created`, `updated`) VALUES
(9, 5, 2, 'test', '2023-11-30 14:53:12', '2023-11-30 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_options`
--

CREATE TABLE `marketing_survey_question_options` (
  `id` int(11) NOT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_options`
--

INSERT INTO `marketing_survey_question_options` (`id`, `marketing_survey_question_id`, `option`, `created`, `updated`) VALUES
(2, 9, '1', '2023-11-30 14:53:12', '2023-11-30 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_types`
--

CREATE TABLE `marketing_survey_question_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_types`
--

INSERT INTO `marketing_survey_question_types` (`id`, `name`, `chart_type`, `created`, `updated`) VALUES
(2, 'radio', 'pie', '2023-11-30 14:24:28', '2023-11-30 14:46:29'),
(3, 'check_box', 'pie', '2023-11-30 14:47:36', '2023-11-30 14:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_members`
--

CREATE TABLE `marketing_survey_team_members` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_team_member_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_members`
--

INSERT INTO `marketing_survey_team_members` (`id`, `marketing_survey_id`, `marketing_team_member_id`, `rate`, `created`, `updated`) VALUES
(6, 2, 2, NULL, '2023-11-30 09:08:39', '2023-11-30 09:08:39'),
(7, 5, 2, NULL, '2023-11-30 09:24:41', '2023-11-30 09:24:41'),
(9, 1, 3, NULL, '2023-11-30 12:20:56', '2023-11-30 12:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_member_areas`
--

CREATE TABLE `marketing_survey_team_member_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updaed` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_member_areas`
--

INSERT INTO `marketing_survey_team_member_areas` (`id`, `marketing_survey_team_member_id`, `marketing_area_id`, `created`, `updaed`) VALUES
(4, 7, 59, '2023-12-03 09:16:30', '2023-12-03 09:17:09'),
(12, 7, 58, '2023-12-03 11:35:32', '2023-12-03 11:35:32'),
(13, 7, 58, '2023-12-03 11:35:32', '2023-12-03 11:35:32'),
(15, 7, 60, '2023-12-04 07:34:14', '2023-12-04 07:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_team_members`
--

CREATE TABLE `marketing_team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_team_members`
--

INSERT INTO `marketing_team_members` (`id`, `name`, `tel`, `password`, `email`, `birthdate`, `created`, `updated`) VALUES
(2, 'omer@gmail.com', '899900', '$2b$10$a5Tamid7c/nRgPrd4DX0GuyOs.j3j5gVos7gOaCGGgbJafc6yzTfi', 'omer@gmail.com', '2023-12-25 00:00:00', '2023-11-29 14:23:26', '2023-12-03 06:57:18'),
(3, 'ali@gmail.com', '123479', '$2b$10$oYSNybITEnabuBEzfrxKA.ybvE/nn5vN7nITKxXL9MHgdf7obMOxK', 'ali@gmail.com', '2023-12-04 00:00:00', '2023-11-29 14:25:21', '2023-12-04 07:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `package_types`
--

CREATE TABLE `package_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package_types`
--

INSERT INTO `package_types` (`id`, `name`, `name_ar`, `created`, `updated`) VALUES
(1, 'Golden', 'الذهبية', '2023-10-24 06:12:35', '2023-10-24 06:12:35'),
(2, 'Silver', 'الفضية', '2023-10-24 06:12:35', '2023-10-24 06:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_cash_drawer_reconciliation`
--

CREATE TABLE `pos_cash_drawer_reconciliation` (
  `id` int(11) NOT NULL,
  `pos_user_id` int(11) NOT NULL COMMENT 'رقم موظف البيع \r\n',
  `reconciliation_date` datetime DEFAULT NULL COMMENT 'تاربخ التسوية ',
  `cash_received` decimal(10,2) DEFAULT NULL COMMENT 'النقود التي تمت في النظام',
  `checks_collected` decimal(10,2) DEFAULT NULL COMMENT 'النقود التي تم تحصيلها من الخزنة خلال وردية الموظف',
  `discrepancies` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'الفرق ما بين النقود في النظام والنقود في الخزنة بصورة افتراضية اذا لم يوجد فرق بتم ادخال صفر',
  `type` varchar(255) DEFAULT NULL COMMENT 'نوع التسوية تكون اما ربح او خسارة او صفر وفي حالة صفر ذلك يعني ان المدخلات متساوية',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_cash_drawer_reconciliation`
--

INSERT INTO `pos_cash_drawer_reconciliation` (`id`, `pos_user_id`, `reconciliation_date`, `cash_received`, `checks_collected`, `discrepancies`, `type`, `created`, `updated`) VALUES
(1, 9, '2023-11-13 00:00:00', '7000.00', '9000.00', '2000.00', 'loss', '2023-11-23 08:08:07', '2023-11-23 08:08:07'),
(5, 9, '2023-11-21 00:00:00', '9000.00', '8000.00', '1000.00', 'gian', '2023-11-23 09:40:42', '2023-11-23 09:40:42'),
(6, 16, '2023-11-14 00:00:00', '5000.00', '7000.00', '2000.00', 'loss', '2023-11-23 10:03:45', '2023-11-23 10:03:45'),
(7, 18, '2023-11-15 00:00:00', '900.00', '900.00', '0.00', 'equal', '2023-11-23 12:07:45', '2023-11-23 12:07:45'),
(8, 21, '2023-11-20 00:00:00', '500.00', '9000.00', '8500.00', 'loss', '2023-11-23 13:03:47', '2023-11-23 13:03:47'),
(9, 18, '2023-11-13 00:00:00', '9000.00', '30000.00', '21000.00', 'loss', '2023-11-23 13:14:39', '2023-11-23 13:14:39'),
(10, 1, '2023-11-26 00:00:00', '400.00', '550.00', '150.00', 'loss', '2023-11-26 07:24:19', '2023-11-26 07:24:19'),
(11, 1, '2023-11-26 00:00:00', '3000.00', '550.00', '2450.00', 'gian', '2023-11-26 07:26:49', '2023-11-26 07:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `pos_categories`
--

CREATE TABLE `pos_categories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_categories`
--

INSERT INTO `pos_categories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `img`, `created`, `updated`) VALUES
(1, NULL, 1, 't-shirts', './uploads/1698308768365809.jpg', '2023-10-26 09:05:40', '2023-10-26 09:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `pos_chart_of_accounts`
--

CREATE TABLE `pos_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_employees`
--

CREATE TABLE `pos_employees` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_job_titles` int(11) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_employees`
--

INSERT INTO `pos_employees` (`id`, `pos_station_id`, `name`, `pos_job_titles`, `birthdate`, `basic_salary`, `created`, `updated`) VALUES
(4, 1, 'jack', 1, '1990-10-01', '43633.00', '2023-10-30 17:17:53', '2023-10-30 17:43:40'),
(6, 1, 'allll', 2, '1999-01-01', '22222.00', '2023-10-31 07:54:11', '2023-10-31 07:54:11'),
(7, 1, 'salah ahmed', 2, '1996-01-30', '2424.00', '2023-10-31 09:16:25', '2023-10-31 09:16:25'),
(8, 1, 'ali salah', 2, '1980-03-29', '21421.00', '2023-10-31 09:17:00', '2023-10-31 09:17:00'),
(9, 1, 'ali salah', 1, '1998-01-01', '1321.00', '2023-10-31 09:17:43', '2023-10-31 09:17:43'),
(10, 1, 'ali', 1, '1998-01-01', '3423.00', '2023-10-31 09:17:53', '2023-10-31 09:17:53'),
(11, 1, 'ali', 1, '1998-01-01', '2314.00', '2023-10-31 09:18:07', '2023-10-31 09:18:07'),
(14, 1, 'oma', 1, '1998-12-02', '141.00', '2023-10-31 09:19:04', '2023-10-31 09:19:04'),
(15, 1, 'ali 100', 2, '1998-12-01', '3314.00', '2023-11-01 12:13:17', '2023-11-01 12:13:17'),
(16, 1, 'ali 101', 2, '1998-01-11', '13141.00', '2023-11-01 12:13:38', '2023-11-01 12:13:38'),
(17, 1, 'ahmed', 1, '1998-01-01', '2000.00', '2023-11-02 10:48:37', '2023-11-02 10:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hubs`
--

CREATE TABLE `pos_hubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `has_partners` tinyint(4) DEFAULT NULL,
  `single_products_list` tinyint(4) DEFAULT NULL,
  `centeric_ineventory` tinyint(4) DEFAULT NULL,
  `pos_type_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_hubs`
--

INSERT INTO `pos_hubs` (`id`, `name`, `has_partners`, `single_products_list`, `centeric_ineventory`, `pos_type_id`, `created`, `updated`) VALUES
(1, 'hub 1', 1, NULL, NULL, 1, '2023-11-16 07:35:42', '2023-11-16 08:25:15'),
(2, 'hub 2', 0, NULL, NULL, 2, '2023-11-16 07:35:55', '2023-11-16 08:25:18'),
(3, 'test 25241', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(4, 'test25311132', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(5, 'test 63240', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(6, 'test633253', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(7, 'test 2400988760', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(8, 'test253525', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(9, 'test 24250', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(10, 'test252253', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(11, 'test 2499760', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(12, 'test25363', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(13, 'test 75240', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(14, 'test25673', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(15, 'test 24045', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(16, 'test42253', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(17, 'test 24240', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(18, 'test4253', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(19, 'test 24320', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(20, 'test2523', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(21, 'test 2240', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(22, 'test25133', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(23, 'test 24240', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(24, 'test2532', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(25, 'test 24220', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(26, 'test25397', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(27, 'test 24055', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(28, 'test2513', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(29, 'test 2401', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(30, 'test2523', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(31, 'test 2405', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(32, 'test2535', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(33, 'test 245', 1, 1, 1, 1, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(34, 'test250', 1, NULL, NULL, 2, '2023-11-16 10:10:23', '2023-11-16 10:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventories`
--

CREATE TABLE `pos_inventories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_inevntroy_type_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventories`
--

INSERT INTO `pos_inventories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `pos_inevntroy_type_id`, `created`, `updated`) VALUES
(2, NULL, 1, 'ahmed', 2, '2023-11-08 13:17:34', '2023-11-08 13:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventory_items`
--

CREATE TABLE `pos_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `pos_kitchen_raw_material_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventory_types`
--

CREATE TABLE `pos_inventory_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventory_types`
--

INSERT INTO `pos_inventory_types` (`id`, `type`, `created`, `updated`) VALUES
(1, 'Internal', '2023-10-29 06:02:33', '2023-10-29 06:02:33'),
(2, 'External', '2023-10-29 06:02:33', '2023-10-29 06:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `pos_job_titles`
--

CREATE TABLE `pos_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_job_titles`
--

INSERT INTO `pos_job_titles` (`id`, `name`, `created`, `updated`) VALUES
(1, 'accountant', '2023-10-30 13:42:00', '2023-10-30 13:42:00'),
(2, 'reception', '2023-10-30 13:42:43', '2023-10-30 13:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchens`
--

CREATE TABLE `pos_kitchens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_kitchens`
--

INSERT INTO `pos_kitchens` (`id`, `name`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'kitchen 21', 5, '2023-11-14 08:20:51', '2023-11-14 08:20:51'),
(2, NULL, NULL, '2023-11-14 10:21:09', '2023-11-14 10:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchen_raw_materials`
--

CREATE TABLE `pos_kitchen_raw_materials` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers`
--

CREATE TABLE `pos_managers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers_detailes`
--

CREATE TABLE `pos_managers_detailes` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `register_number` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers_subscription`
--

CREATE TABLE `pos_managers_subscription` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_montly_delatils`
--

CREATE TABLE `pos_montly_delatils` (
  `id` int(11) NOT NULL,
  `pos_employee_id` int(11) DEFAULT NULL,
  `pos_item_id` int(11) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_price_list_products`
--

CREATE TABLE `pos_price_list_products` (
  `id` int(11) NOT NULL,
  `pos_station_price_list_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_price_list_products`
--

INSERT INTO `pos_price_list_products` (`id`, `pos_station_price_list_id`, `product_id`, `created`, `updated`) VALUES
(1, 1, 1, '2023-11-01 13:43:41', '2023-11-01 13:43:41'),
(2, 4, 2, '2023-11-02 09:35:46', '2023-11-02 09:35:46'),
(3, 1, 3, '2023-11-02 09:36:06', '2023-11-02 09:36:06'),
(14, 6, 3, '2023-11-05 08:38:17', '2023-11-05 08:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `pos_products`
--

CREATE TABLE `pos_products` (
  `id` int(11) NOT NULL,
  `server_product_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_roles`
--

CREATE TABLE `pos_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_roles`
--

INSERT INTO `pos_roles` (`id`, `name`, `created`, `updated`) VALUES
(1, 'admin', '2023-10-29 12:47:42', '2023-10-29 12:47:42'),
(2, 'manager', '2023-10-29 12:47:42', '2023-10-29 12:47:42'),
(3, 'hhh', '2023-11-01 10:14:43', '2023-11-01 10:14:43'),
(4, 'owner', '2023-11-13 07:37:53', '2023-11-13 07:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_item`
--

CREATE TABLE `pos_salary_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_share_holders`
--

CREATE TABLE `pos_share_holders` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `total_shares` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_stations`
--

CREATE TABLE `pos_stations` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `register_number` varchar(255) DEFAULT NULL,
  `has_shalve` tinyint(1) DEFAULT NULL,
  `has_floors` tinyint(1) DEFAULT NULL,
  `price_including_tax` tinyint(1) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `has_many_cateogries` tinyint(1) DEFAULT NULL,
  `has_full_accounting` tinyint(1) DEFAULT NULL,
  `category_has_image` tinyint(1) DEFAULT NULL,
  `has_multiple_users` tinyint(1) DEFAULT NULL,
  `loc` text DEFAULT NULL,
  `lat` decimal(10,10) DEFAULT NULL,
  `lng` decimal(10,10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_stations`
--

INSERT INTO `pos_stations` (`id`, `pos_manager_id`, `pos_hub_id`, `pos_type_id`, `name`, `register_number`, `has_shalve`, `has_floors`, `price_including_tax`, `img`, `has_many_cateogries`, `has_full_accounting`, `category_has_image`, `has_multiple_users`, `loc`, `lat`, `lng`, `created`, `updated`) VALUES
(1, NULL, 2, 2, 'omar', '343245', 1, 1, 1, NULL, 1, 0, 0, 1, 'fdfdsfdsfssddsvs', NULL, NULL, '2023-10-30 12:41:21', '2023-11-16 08:08:37'),
(2, NULL, 1, 1, 'ahmed', '3442', 1, 0, 1, NULL, 1, 0, 1, 1, NULL, NULL, NULL, '2023-11-12 10:39:49', '2023-11-16 11:48:55'),
(3, NULL, 2, 2, 'Harran POS', NULL, 0, 1, 1, './uploads/1699860119767910.png', NULL, 1, 1, 1, NULL, '0.0000000000', '0.0000000000', '2023-11-13 07:21:59', '2023-11-16 08:08:39'),
(4, NULL, 1, 1, 'tarr', 'p-36257', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000000000', '0.0000000000', '2023-11-13 07:25:37', '2023-11-16 11:48:52'),
(5, NULL, 1, 1, 'medication', '313424', 1, 1, 1, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2023-11-13 11:10:34', '2023-11-16 11:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `pos_stations_price_list`
--

CREATE TABLE `pos_stations_price_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_stations_id` int(11) DEFAULT NULL,
  `price_list_type_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_stations_price_list`
--

INSERT INTO `pos_stations_price_list` (`id`, `name`, `pos_stations_id`, `price_list_type_id`, `status`, `created`, `updated`) VALUES
(1, 'happy customers', 1, 1, 0, '2023-11-01 13:37:12', '2023-11-01 13:37:12'),
(4, 'sad customers', 1, 2, 1, '2023-11-01 14:31:20', '2023-11-01 14:31:20'),
(6, 'fsaa', 1, 2, 0, '2023-11-02 13:51:33', '2023-11-02 13:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floors`
--

CREATE TABLE `pos_station_floors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_floors`
--

INSERT INTO `pos_station_floors` (`id`, `name`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'mall', 5, '2023-11-13 11:21:13', '2023-11-13 11:21:13'),
(6, 'ff', 5, '2023-11-14 08:40:46', '2023-11-14 08:40:46'),
(8, 'test 22', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(9, 'test 22', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(10, 'test 23', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(11, 'test 24', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(12, 'test 25', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(13, 'test 26', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(14, 'test 27', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(15, 'test 28', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(16, 'test 29', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(17, 'test 30', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(18, 'test 31', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(19, 'test 32', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(20, 'test 33', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(21, 'test 34', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floors_shalves`
--

CREATE TABLE `pos_station_floors_shalves` (
  `id` int(11) NOT NULL,
  `pos_station_floor_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floor_tables`
--

CREATE TABLE `pos_station_floor_tables` (
  `id` int(11) NOT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_floor_tables`
--

INSERT INTO `pos_station_floor_tables` (`id`, `floor_id`, `name`, `seats`, `created`, `updated`) VALUES
(3, 6, 'table 1', 2, '2023-11-14 09:15:44', '2023-11-14 09:15:44'),
(4, 6, 'table 232', NULL, '2023-11-14 09:16:44', '2023-11-14 09:16:44'),
(5, 1, 'table 999', 3, '2023-11-14 10:00:54', '2023-11-14 10:00:54'),
(9, 6, 'table-344', 42, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(10, 10, 'table-261', 100, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(11, 6, 'table-252', 20, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(12, 6, 'table-232', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(13, 6, 'table-257', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(14, 6, 'table-212', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(15, 6, 'table-251', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(16, 6, 'table-211', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(17, 6, 'table-221', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(18, 18, 'table-321', 23, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(19, 6, 'table-218', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(20, 6, 'table-721', 10, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(21, 6, 'table-821', 213, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(25, 1, 'table-19', 10, '2023-11-15 08:59:48', '2023-11-15 08:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_price_list_type`
--

CREATE TABLE `pos_station_price_list_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `percentage` int(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_price_list_type`
--

INSERT INTO `pos_station_price_list_type` (`id`, `name`, `discount`, `percentage`, `created`, `updated`) VALUES
(1, 'type 1', NULL, 20, '2023-11-01 13:36:07', '2023-11-01 13:36:07'),
(2, 'type 2', 50, NULL, '2023-11-01 13:36:07', '2023-11-01 13:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `pos_subscriptions`
--

CREATE TABLE `pos_subscriptions` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `subscription_packge_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_subscriptions`
--

INSERT INTO `pos_subscriptions` (`id`, `pos_hub_id`, `pos_station_id`, `subscription_packge_id`, `is_active`, `created`, `updated`) VALUES
(1, NULL, 3, NULL, 1, '2023-11-13 07:21:59', '2023-11-13 07:21:59'),
(2, NULL, 4, NULL, 1, '2023-11-13 07:25:37', '2023-11-13 07:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `pos_suppliers`
--

CREATE TABLE `pos_suppliers` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_suppliers`
--

INSERT INTO `pos_suppliers` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `tel`, `email`, `created`, `updated`) VALUES
(1, NULL, 1, 'omer supplier', '0125357643', 'omar@oma.cm', '2023-11-08 09:34:18', '2023-11-08 09:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `pos_types`
--

CREATE TABLE `pos_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_types`
--

INSERT INTO `pos_types` (`id`, `name`, `photo`, `created`, `updated`) VALUES
(1, 'store', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09'),
(2, 'Restrunt', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09'),
(3, 'pharmcay', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `pos_users`
--

CREATE TABLE `pos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_users`
--

INSERT INTO `pos_users` (`id`, `name`, `email`, `pass`, `tel`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'omar', 'omar@omar.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '3435253253252', 1, '2023-10-29 12:48:38', '2023-10-29 12:48:38'),
(16, 'ali', 'ali@ali.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '34324242', 2, '2023-10-30 11:24:03', '2023-10-30 11:24:03'),
(18, 'harran', 'harran@0k.com', '$2b$10$UUqCuMwPUmZP0L7.J2IiWeMdX39oX/zFN3nv8W2jzt56vumvut.H2', '2434141', 1, '2023-11-01 09:13:39', '2023-11-01 09:13:39'),
(20, 'colaa', 'cola@pepsi.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '12224442', 1, '2023-11-01 11:36:17', '2023-11-01 11:36:17'),
(21, 'harran 1', 'harran@harran.com', '$2b$10$NSN4Wwz40UNU1ciajGmHZOmxvgPpUOabMv5J0Fej98Fkng5KO5cCC', '3435253253252', 1, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(22, 'harran 2', 'harran@harran.com', '$2b$10$9nxBACDlNJXg5TDDkZHO0eWIkEaT8NzRMKShMATNFBvisiRtdrqrq', '3435253253252', 1, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(23, 'harran 3', 'harran@harran.com', '$2b$10$Bde/la3CZN6k0H55sQ3q7.PvxJ1GV/9AzRND1IUi9uFV/o64q0TwK', '3435253253252', 1, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(24, 'harran 4', 'harran@harran.com', '$2b$10$Vn8UR2GiIx865Ren.M3CP.tbMSh5UIRKPZldW0eGW.4yG9L9EozQm', '3435253253252', 1, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(25, 'harran 5', 'harran@harran.com', '$2b$10$v8PvXuNbAJ2n3xA5.HO8zeUsWl9Rd2Eu2EgbrYjMezY8HREa2G6w2', '3435253253252', 1, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(26, 'harran 6', 'harran@harran.com', '$2b$10$XHumQ.XgmKzC5slBVB13te5qy/egV7j86hA1OrphQYUBiHqcsEJrS', '3435253253252', 1, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(27, 'harran 8', 'harran@harran.com', '$2b$10$AXAzAaq4ArP/miGP8brKJuHE2vxa6rV/sybCpB8zvRXtZUX3ct0/C', '3435253253252', 1, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(28, 'harran 9', 'harran@harran.com', '$2b$10$uZByGuKjA7ICXNTX7TuL.uRCRQqzemRpijHL/qHxujrH5vJq4jHU6', '3435253253252', 1, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(29, 'harran 10', 'harran@harran.com', '$2b$10$O40QdCefU87bgvtKWnLsFeWAXDxD4ju5EP0sAE5WhGRJLHKdh3P1O', '3435253253252', 1, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(30, 'harran 11', 'harran@harran.com', '$2b$10$hd.H6bnRxihPIKW2GpYxIu5W.UI3j0yOowA5WGv1JLWgd0jw73C0.', '3435253253252', 1, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(31, 'harran 12', 'harran@harran.com', '$2b$10$Nt7Atyfn1Idghl7fdB.QUuhYB/fGD8iT.P1njAA38NtmrSy8fRGFi', '3435253253252', 1, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(32, 'harran 13', 'harran@harran.com', '$2b$10$WfZklxJY79KWi1svogQMwOT.wBJLXFsCC5hdjkZQR2/37MtL9yYZm', '3435253253252', 1, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(33, 'harran 14', 'harran@harran.com', '$2b$10$wvCofZ6FggB5DHDJ7EprPOPUkH6EmUPXJuTXWVJimN6mTGNqTqsdO', '3435253253252', 1, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(34, 'harran 16', 'harran@harran.com', '$2b$10$dkjNgj7skcfFk0nFmEuwLuZgAV.SqSpzrGrMDwl24GV0lGqzkE0fu', '3435253253252', 1, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(35, 'harran 17', 'harran@harran.com', '$2b$10$xm8aqWm27RsG/MW9JAODje26/AfWWZH5/tQeDOWS4saZa9X0Nbo76', '3435253253252', 1, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(36, 'harran 18', 'harran@harran.com', '$2b$10$z9CuWPzP59MRCC1/AXnowOyxFuIBQIpOsga/QP5JSf9G.lam7VYfC', '3435253253252', 1, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(37, 'harran 19', 'harran@harran.com', '$2b$10$na8h3ePP6I72h5YumSSOE.NLkUzbxGySLJIHjyI5ychJFSq2jITwO', '3435253253252', 1, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(38, 'harran 20', 'harran@harran.com', '$2b$10$W8h.u6s1F4TzweaGbU/MSeOdj9n5mDfPN7DnH0GN2WD3hPda/1wge', '3435253253252', 1, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(39, 'mohamed', 'mohamed@gmail.com', '$2b$10$DdWOLYBTQy9E2upo5bipH.Gn4gUaXJCrnejPbJt/hF7vagg.QRRRG', '0966635640', NULL, '2023-11-19 14:19:17', '2023-11-19 14:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `pos_user_roles`
--

CREATE TABLE `pos_user_roles` (
  `id` int(11) NOT NULL,
  `pos_user_id` int(11) DEFAULT NULL,
  `pos_role_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_user_roles`
--

INSERT INTO `pos_user_roles` (`id`, `pos_user_id`, `pos_role_id`, `created`, `updated`) VALUES
(38, 18, 1, '2023-11-01 11:04:49', '2023-11-01 11:04:49'),
(40, 16, 1, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(41, 16, 2, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(42, 16, 3, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(55, 1, 1, '2023-11-01 11:17:02', '2023-11-01 11:17:02'),
(58, 1, 2, '2023-11-01 11:20:24', '2023-11-01 11:20:24'),
(89, 18, 2, '2023-11-01 11:45:41', '2023-11-01 11:45:41'),
(90, 18, 3, '2023-11-01 11:45:41', '2023-11-01 11:45:41'),
(98, 20, 3, '2023-11-01 11:53:02', '2023-11-01 11:53:02'),
(99, 20, 2, '2023-11-01 12:04:04', '2023-11-01 12:04:04'),
(100, 20, 1, '2023-11-01 12:06:14', '2023-11-01 12:06:14'),
(101, 21, 1, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(102, 21, 2, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(103, 21, 3, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(104, 22, 1, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(105, 22, 2, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(106, 22, 3, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(107, 23, 1, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(108, 23, 2, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(109, 23, 3, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(110, 24, 1, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(111, 24, 2, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(112, 24, 3, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(113, 25, 1, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(114, 25, 2, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(115, 25, 3, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(116, 26, 1, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(117, 26, 2, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(118, 26, 3, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(119, 27, 1, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(120, 27, 2, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(121, 27, 3, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(122, 28, 1, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(123, 28, 2, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(124, 28, 3, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(125, 29, 1, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(126, 29, 2, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(127, 29, 3, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(128, 30, 1, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(129, 30, 2, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(130, 30, 3, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(131, 31, 1, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(132, 31, 2, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(133, 31, 3, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(134, 32, 1, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(135, 32, 2, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(136, 32, 3, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(137, 33, 1, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(138, 33, 2, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(139, 33, 3, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(140, 34, 1, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(141, 34, 2, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(142, 34, 3, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(143, 35, 1, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(144, 35, 2, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(145, 35, 3, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(146, 36, 1, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(147, 36, 2, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(148, 36, 3, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(149, 37, 1, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(150, 37, 2, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(151, 37, 3, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(152, 38, 1, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(153, 38, 2, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(154, 38, 3, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(155, 39, 1, '2023-11-19 14:19:17', '2023-11-19 14:19:17'),
(156, 39, 2, '2023-11-19 14:19:17', '2023-11-19 14:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pos_kitchen_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pos_kitchen_id`, `category_id`, `name`, `price`, `img`, `created`, `updated`) VALUES
(1, NULL, 1, 'Hotdogs', '200.00', NULL, '2023-11-01 13:43:14', '2023-11-01 13:43:14'),
(2, NULL, 1, 'noodles', '300.00', NULL, '2023-11-02 09:34:58', '2023-11-02 09:34:58'),
(3, NULL, 1, 'rice', '350.00', NULL, '2023-11-02 09:35:29', '2023-11-02 09:35:29'),
(4, NULL, 1, 'chickens', '250.00', NULL, '2023-11-05 09:30:09', '2023-11-05 09:30:09'),
(5, NULL, 2, 'airpods pro series 2 ', '500.00', NULL, '2023-11-05 09:30:09', '2023-11-05 09:30:09'),
(6, NULL, 2, 'normal mouse', '250.00', NULL, '2023-11-05 09:30:09', '2023-11-05 09:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_order`
--

CREATE TABLE `purchases_order` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT current_timestamp(),
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases_order`
--

INSERT INTO `purchases_order` (`id`, `supplier_id`, `excution_time`, `created`, `updated`) VALUES
(2, 1, '2023-11-09 07:31:00', '2023-11-09 07:31:00', '2023-11-09 07:31:00'),
(3, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(4, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(5, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(6, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_order_detailes`
--

CREATE TABLE `purchases_order_detailes` (
  `id` int(11) NOT NULL,
  `purchases_order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sold_qty` int(11) DEFAULT 0,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases_order_detailes`
--

INSERT INTO `purchases_order_detailes` (`id`, `purchases_order_id`, `product_id`, `qty`, `sold_qty`, `unit_price`, `created`, `updated`) VALUES
(1, 2, 1, 100, 2, '250.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(2, 2, 2, 200, 23, '250.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(3, 2, 3, 300, 12, '320.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(4, 2, 6, 392, 120, '310.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(5, 4, 5, 240, 200, '120.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(6, 4, 4, 294, 40, '400.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(7, 4, 1, 203, 100, '56.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(8, 4, 3, 281, 102, '248.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(9, 4, 3, 371, 200, '100.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(10, 4, 3, 299, 100, '24.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` int(11) NOT NULL,
  `custmor_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT current_timestamp(),
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_orders`
--

INSERT INTO `sale_orders` (`id`, `custmor_id`, `excution_time`, `created`, `updated`) VALUES
(3, 2, '2023-11-06 09:18:40', '2023-11-06 09:18:40', '2023-11-06 09:18:40'),
(30, 18, '2023-11-07 13:09:43', '2023-11-07 13:09:43', '2023-11-07 13:09:43'),
(31, 19, '2023-11-07 13:11:45', '2023-11-07 13:11:45', '2023-11-07 13:11:45'),
(32, 20, '2023-11-07 13:13:07', '2023-11-07 13:13:07', '2023-11-07 13:13:07'),
(33, 2, '2023-11-07 13:59:31', '2023-11-07 13:59:31', '2023-11-07 13:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_details`
--

CREATE TABLE `sale_order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_order_details`
--

INSERT INTO `sale_order_details` (`id`, `product_id`, `sale_order_id`, `qty`, `created`, `updated`) VALUES
(1, 6, 3, '2', '2023-11-25 20:00:00', '2023-11-06 09:18:58'),
(10, 1, 3, '4', '2023-11-25 20:00:00', '2023-11-06 11:32:44'),
(11, 2, 3, '1', '2023-11-25 20:00:00', '2023-11-06 11:32:44'),
(12, 3, 3, '1', '2023-11-25 20:00:00', '2023-11-06 11:32:44'),
(13, 4, 3, '1', '2023-11-25 20:00:00', '2023-11-06 11:32:44'),
(49, 3, 30, '1', '2023-11-07 13:09:43', '2023-11-07 13:09:43'),
(50, 3, 31, '1', '2023-11-07 13:11:45', '2023-11-07 13:11:45'),
(51, 4, 32, '1', '2023-11-26 13:13:07', '2023-11-07 13:13:07'),
(52, 2, 33, '1', '2023-11-26 13:59:31', '2023-11-07 13:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `browser_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `socket_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT current_timestamp(),
  `finish_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_packages`
--

CREATE TABLE `subscription_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription_packages`
--

INSERT INTO `subscription_packages` (`id`, `name`, `descr`, `duration`, `created`, `updated`) VALUES
(1, 'sub 1', 'fdfdsafdsvmdsfposmo', NULL, '2023-11-13 09:37:00', '2023-11-13 09:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_package_periods`
--

CREATE TABLE `subscription_package_periods` (
  `id` int(11) NOT NULL,
  `subscription_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription_package_periods`
--

INSERT INTO `subscription_package_periods` (`id`, `subscription_type_id`, `name`, `descr`, `price`, `icon`, `created`, `updated`) VALUES
(1, 1, 'period', 'fd mkmslkmsm sldm', '129.00', NULL, '2023-11-13 09:37:21', '2023-11-13 09:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_chart_of_accounts`
--

CREATE TABLE `system_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `created`, `updated`) VALUES
(1, 'ahmed', 'ahemd@ahmed.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '2023-10-29 13:57:54', '2023-10-29 13:57:54'),
(7, 'test', 'test@test.com', '$2b$10$BQmv6toTPAJF/9ZXeUg8mO8flo2C.QXaUumjQmvAoJqMMQhC8s/7O', '2023-11-13 07:57:09', '2023-11-13 07:57:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `browsers`
--
ALTER TABLE `browsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_browsers_users_1` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custmors`
--
ALTER TABLE `custmors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `fiexed_assets`
--
ALTER TABLE `fiexed_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_2` (`pos_station_id`),
  ADD KEY `_copy_1` (`fixed_asset_type_id`);

--
-- Indexes for table `fixed_asset_types`
--
ALTER TABLE `fixed_asset_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_employees`
--
ALTER TABLE `hr_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_id` (`job_title_id`);

--
-- Indexes for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Indexes for table `main_chart_of_account`
--
ALTER TABLE `main_chart_of_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_campaigns_1` (`marketing_campaing_id`);

--
-- Indexes for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_channels_1` (`marketing_channel_id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_campaigns_1` (`marketing_campain_id`);

--
-- Indexes for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_events_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_campaign_channels_1` (`marketing_campaign_channel_id`);

--
-- Indexes for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_campaign_channel_events_1` (`marketing_campaign_channel_event_id`),
  ADD KEY `fk_marketing_campaign_marketing_channel_levels_1` (`marketing_channel_level_id`);

--
-- Indexes for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_channel_levels_marketing_channels_1` (`marketing_channel_id`);

--
-- Indexes for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_areas_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_areas_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_processes_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_team_members_1` (`marketing_survey_team_member_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_marketing_survey_processes_1` (`marketing_survey_process_id`),
  ADD KEY `fk_marketing_marketing_survey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_questions_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_questions_marketing_survey_question_types
_1` (`marketing_survey_question_type_id`);

--
-- Indexes for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survvey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_sbers_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_sug_team_members_1` (`marketing_team_member_id`);

--
-- Indexes for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_teams_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketiey_team_members_1` (`marketing_survey_team_member_id`);

--
-- Indexes for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_types`
--
ALTER TABLE `package_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_cash_drawer_reconciliation`
--
ALTER TABLE `pos_cash_drawer_reconciliation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_categories`
--
ALTER TABLE `pos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_chart_of_accounts`
--
ALTER TABLE `pos_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `pos_employees`
--
ALTER TABLE `pos_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `pos_job_titles` (`pos_job_titles`);

--
-- Indexes for table `pos_hubs`
--
ALTER TABLE `pos_hubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_type_id` (`pos_type_id`);

--
-- Indexes for table `pos_inventories`
--
ALTER TABLE `pos_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `_copy_1` (`pos_inevntroy_type_id`);

--
-- Indexes for table `pos_inventory_items`
--
ALTER TABLE `pos_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pos_inventory_types`
--
ALTER TABLE `pos_inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_job_titles`
--
ALTER TABLE `pos_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_kitchens`
--
ALTER TABLE `pos_kitchens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_kitchen_raw_materials`
--
ALTER TABLE `pos_kitchen_raw_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_1` (`pos_station_id`);

--
-- Indexes for table `pos_managers`
--
ALTER TABLE `pos_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_managers_detailes`
--
ALTER TABLE `pos_managers_detailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_managers_subscription`
--
ALTER TABLE `pos_managers_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_montly_delatils`
--
ALTER TABLE `pos_montly_delatils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_item_id` (`pos_item_id`),
  ADD KEY `pos_employee_id` (`pos_employee_id`);

--
-- Indexes for table `pos_price_list_products`
--
ALTER TABLE `pos_price_list_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_price_list_id` (`pos_station_price_list_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pos_products`
--
ALTER TABLE `pos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_roles`
--
ALTER TABLE `pos_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_salary_item`
--
ALTER TABLE `pos_salary_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_share_holders`
--
ALTER TABLE `pos_share_holders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_1` (`pos_station_id`);

--
-- Indexes for table `pos_stations`
--
ALTER TABLE `pos_stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_manager_id` (`pos_manager_id`),
  ADD KEY `pos_type_id` (`pos_type_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `pos_stations_price_list`
--
ALTER TABLE `pos_stations_price_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_stations_id` (`pos_stations_id`),
  ADD KEY `_copy_1` (`price_list_type_id`);

--
-- Indexes for table `pos_station_floors`
--
ALTER TABLE `pos_station_floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_station_floors_shalves`
--
ALTER TABLE `pos_station_floors_shalves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_station_floor_tables`
--
ALTER TABLE `pos_station_floor_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- Indexes for table `pos_station_price_list_type`
--
ALTER TABLE `pos_station_price_list_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_subscriptions`
--
ALTER TABLE `pos_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `_copy_1` (`subscription_packge_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_types`
--
ALTER TABLE `pos_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_users`
--
ALTER TABLE `pos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_user_roles`
--
ALTER TABLE `pos_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_user_id` (`pos_user_id`),
  ADD KEY `pos_role_id` (`pos_role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `pos_kitchen_id` (`pos_kitchen_id`);

--
-- Indexes for table `purchases_order`
--
ALTER TABLE `purchases_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases_order_detailes`
--
ALTER TABLE `purchases_order_detailes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_order_id` (`purchases_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custmor_id` (`custmor_id`);

--
-- Indexes for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_order_id` (`sale_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_browsers_1` (`browser_id`);

--
-- Indexes for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_package_periods`
--
ALTER TABLE `subscription_package_periods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_type_id` (`subscription_type_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `system_chart_of_accounts`
--
ALTER TABLE `system_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `browsers`
--
ALTER TABLE `browsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custmors`
--
ALTER TABLE `custmors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fiexed_assets`
--
ALTER TABLE `fiexed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixed_asset_types`
--
ALTER TABLE `fixed_asset_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employees`
--
ALTER TABLE `hr_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_chart_of_account`
--
ALTER TABLE `main_chart_of_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_areas`
--
ALTER TABLE `marketing_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_types`
--
ALTER TABLE `package_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_cash_drawer_reconciliation`
--
ALTER TABLE `pos_cash_drawer_reconciliation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pos_chart_of_accounts`
--
ALTER TABLE `pos_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_employees`
--
ALTER TABLE `pos_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pos_hubs`
--
ALTER TABLE `pos_hubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pos_inventories`
--
ALTER TABLE `pos_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_inventory_items`
--
ALTER TABLE `pos_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_inventory_types`
--
ALTER TABLE `pos_inventory_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_job_titles`
--
ALTER TABLE `pos_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_kitchens`
--
ALTER TABLE `pos_kitchens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_kitchen_raw_materials`
--
ALTER TABLE `pos_kitchen_raw_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_managers`
--
ALTER TABLE `pos_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_managers_detailes`
--
ALTER TABLE `pos_managers_detailes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_managers_subscription`
--
ALTER TABLE `pos_managers_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_price_list_products`
--
ALTER TABLE `pos_price_list_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pos_products`
--
ALTER TABLE `pos_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_roles`
--
ALTER TABLE `pos_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pos_salary_item`
--
ALTER TABLE `pos_salary_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_share_holders`
--
ALTER TABLE `pos_share_holders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_stations`
--
ALTER TABLE `pos_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pos_stations_price_list`
--
ALTER TABLE `pos_stations_price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_station_floors`
--
ALTER TABLE `pos_station_floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pos_station_floors_shalves`
--
ALTER TABLE `pos_station_floors_shalves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_station_floor_tables`
--
ALTER TABLE `pos_station_floor_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pos_station_price_list_type`
--
ALTER TABLE `pos_station_price_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_subscriptions`
--
ALTER TABLE `pos_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_types`
--
ALTER TABLE `pos_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pos_users`
--
ALTER TABLE `pos_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pos_user_roles`
--
ALTER TABLE `pos_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchases_order`
--
ALTER TABLE `purchases_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchases_order_detailes`
--
ALTER TABLE `purchases_order_detailes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscription_package_periods`
--
ALTER TABLE `subscription_package_periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_chart_of_accounts`
--
ALTER TABLE `system_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `browsers`
--
ALTER TABLE `browsers`
  ADD CONSTRAINT `fk_browsers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `_copy_8` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custmors`
--
ALTER TABLE `custmors`
  ADD CONSTRAINT `custmors_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `_copy_14` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_campaigns_1` FOREIGN KEY (`marketing_campaing_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_campaigns_1` FOREIGN KEY (`marketing_campain_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channels_1` FOREIGN KEY (`marketing_campaign_channel_id`) REFERENCES `marketing_campaign_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_events_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channel_events_1` FOREIGN KEY (`marketing_campaign_channel_event_id`) REFERENCES `marketing_campaign_channel_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_marketing_channel_levels_1` FOREIGN KEY (`marketing_channel_level_id`) REFERENCES `marketing_channel_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD CONSTRAINT `fk_marketing_channel_levels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marketing_survey_areas_ibfk_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_campaigns` (`id`);

--
-- Constraints for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD CONSTRAINT `fk_marketing_marketing_survey_processes_1` FOREIGN KEY (`marketing_survey_process_id`) REFERENCES `marketing_survey_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_marketing_survey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_survey_question_types
_1` FOREIGN KEY (`marketing_survey_question_type_id`) REFERENCES `marketing_survey_question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD CONSTRAINT `fk_marketing_survvey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD CONSTRAINT `fk_marketing_sbers_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_sug_team_members_1` FOREIGN KEY (`marketing_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD CONSTRAINT `fk_marketiey_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_survey_team_members` (`id`),
  ADD CONSTRAINT `marketing_survey_team_member_areas_ibfk_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_survey_areas` (`id`);

--
-- Constraints for table `pos_chart_of_accounts`
--
ALTER TABLE `pos_chart_of_accounts`
  ADD CONSTRAINT `_copy_18` FOREIGN KEY (`parent_id`) REFERENCES `main_chart_of_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_employees`
--
ALTER TABLE `pos_employees`
  ADD CONSTRAINT `pos_employees_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_employees_ibfk_2` FOREIGN KEY (`pos_job_titles`) REFERENCES `pos_job_titles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_hubs`
--
ALTER TABLE `pos_hubs`
  ADD CONSTRAINT `pos_hubs_ibfk_1` FOREIGN KEY (`pos_type_id`) REFERENCES `pos_types` (`id`);

--
-- Constraints for table `pos_inventories`
--
ALTER TABLE `pos_inventories`
  ADD CONSTRAINT `_copy_1` FOREIGN KEY (`pos_inevntroy_type_id`) REFERENCES `pos_inventory_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_inventories_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_kitchens`
--
ALTER TABLE `pos_kitchens`
  ADD CONSTRAINT `_copy_6` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_kitchen_raw_materials`
--
ALTER TABLE `pos_kitchen_raw_materials`
  ADD CONSTRAINT `_copy_32` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_copy_33` FOREIGN KEY (`pos_hub_id`) REFERENCES `pos_hubs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pos_montly_delatils`
--
ALTER TABLE `pos_montly_delatils`
  ADD CONSTRAINT `pos_montly_delatils_ibfk_1` FOREIGN KEY (`pos_employee_id`) REFERENCES `pos_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_montly_delatils_ibfk_2` FOREIGN KEY (`pos_item_id`) REFERENCES `pos_salary_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_price_list_products`
--
ALTER TABLE `pos_price_list_products`
  ADD CONSTRAINT `pos_price_list_products_ibfk_1` FOREIGN KEY (`pos_station_price_list_id`) REFERENCES `pos_stations_price_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_price_list_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_salary_item`
--
ALTER TABLE `pos_salary_item`
  ADD CONSTRAINT `pos_salary_item_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_share_holders`
--
ALTER TABLE `pos_share_holders`
  ADD CONSTRAINT `_copy_30` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_copy_31` FOREIGN KEY (`pos_hub_id`) REFERENCES `pos_hubs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pos_stations`
--
ALTER TABLE `pos_stations`
  ADD CONSTRAINT `_copy_2` FOREIGN KEY (`pos_manager_id`) REFERENCES `pos_managers` (`id`),
  ADD CONSTRAINT `pos_stations_ibfk_1` FOREIGN KEY (`pos_type_id`) REFERENCES `pos_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_stations_ibfk_2` FOREIGN KEY (`pos_hub_id`) REFERENCES `pos_hubs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_stations_ibfk_3` FOREIGN KEY (`pos_manager_id`) REFERENCES `pos_managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_stations_price_list`
--
ALTER TABLE `pos_stations_price_list`
  ADD CONSTRAINT `_copy_15` FOREIGN KEY (`price_list_type_id`) REFERENCES `pos_station_price_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_stations_price_list_ibfk_1` FOREIGN KEY (`pos_stations_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_station_floors`
--
ALTER TABLE `pos_station_floors`
  ADD CONSTRAINT `pos_station_floors_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_station_floor_tables`
--
ALTER TABLE `pos_station_floor_tables`
  ADD CONSTRAINT `_copy_11` FOREIGN KEY (`floor_id`) REFERENCES `pos_station_floors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_subscriptions`
--
ALTER TABLE `pos_subscriptions`
  ADD CONSTRAINT `_copy_10` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_copy_9` FOREIGN KEY (`subscription_packge_id`) REFERENCES `subscription_package_periods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_subscriptions_ibfk_1` FOREIGN KEY (`pos_hub_id`) REFERENCES `pos_hubs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  ADD CONSTRAINT `pos_suppliers_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_users`
--
ALTER TABLE `pos_users`
  ADD CONSTRAINT `pos_users_ibfk_1` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pos_user_roles`
--
ALTER TABLE `pos_user_roles`
  ADD CONSTRAINT `pos_user_roles_ibfk_1` FOREIGN KEY (`pos_user_id`) REFERENCES `pos_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pos_user_roles_ibfk_2` FOREIGN KEY (`pos_role_id`) REFERENCES `pos_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pos_kitchen_id`) REFERENCES `pos_kitchens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_order`
--
ALTER TABLE `purchases_order`
  ADD CONSTRAINT `purchases_order_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `pos_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_order_detailes`
--
ALTER TABLE `purchases_order_detailes`
  ADD CONSTRAINT `_copy_12` FOREIGN KEY (`purchases_order_id`) REFERENCES `purchases_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_order_detailes_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD CONSTRAINT `sale_orders_ibfk_1` FOREIGN KEY (`custmor_id`) REFERENCES `custmors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD CONSTRAINT `_copy_4` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_browsers_1` FOREIGN KEY (`browser_id`) REFERENCES `browsers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `subscription_package_periods`
--
ALTER TABLE `subscription_package_periods`
  ADD CONSTRAINT `subscription_package_periods_ibfk_1` FOREIGN KEY (`subscription_type_id`) REFERENCES `subscription_packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `_copy_13` FOREIGN KEY (`pos_station_id`) REFERENCES `pos_stations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_chart_of_accounts`
--
ALTER TABLE `system_chart_of_accounts`
  ADD CONSTRAINT `_copy_18_copy_1` FOREIGN KEY (`parent_id`) REFERENCES `main_chart_of_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `_copy_17` FOREIGN KEY (`account_id`) REFERENCES `pos_chart_of_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `pos_system2`
--
CREATE DATABASE IF NOT EXISTS `pos_system2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_system2`;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_files`
--

CREATE TABLE `archive_files` (
  `id` int(11) NOT NULL,
  `file_date` datetime DEFAULT NULL,
  `archive_file_type_id` int(11) DEFAULT NULL,
  `archive_folder_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_file_types`
--

CREATE TABLE `archive_file_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_folders`
--

CREATE TABLE `archive_folders` (
  `id` int(11) NOT NULL,
  `archive_shelve_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_shelves`
--

CREATE TABLE `archive_shelves` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `browsers`
--

CREATE TABLE `browsers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `os_name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cash_accounts`
--

CREATE TABLE `cash_accounts` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `img`, `created`, `updated`) VALUES
(2, NULL, 1, 'accessories', NULL, '2023-11-05 09:23:04', '2023-11-05 09:23:04'),
(3, NULL, 1, 'watches', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43'),
(4, NULL, 1, 'shoes', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43'),
(5, NULL, 1, 'cycles', NULL, '2023-11-05 09:45:43', '2023-11-05 09:45:43'),
(7, 28, 9, 'drinks', NULL, '2023-11-22 08:10:09', '2023-11-22 08:10:09'),
(8, 28, 9, 'foods', NULL, '2023-11-22 08:10:31', '2023-11-22 08:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custmors`
--

CREATE TABLE `custmors` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `card_number` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custmors`
--

INSERT INTO `custmors` (`id`, `pos_station_id`, `name`, `tel`, `email`, `card_number`, `created`, `updated`) VALUES
(2, 1, 'Ali Salah', '323523524', 'salah@s.com', 23425, '2023-11-06 09:13:14', '2023-11-09 12:48:47'),
(9, 1, 'Mohamed', '', NULL, 563, '2023-11-07 08:59:19', '2023-11-09 12:49:54'),
(18, 1, 'ahmed', '050524252', 'ahemd66@g.com', NULL, '2023-11-07 13:09:43', '2023-11-09 12:48:55'),
(19, 1, 'omar', '425252532', 'omar@omar.com', NULL, '2023-11-07 13:11:45', '2023-11-09 12:48:57'),
(20, 1, 'om', '34444', 'pm@pm.com', NULL, '2023-11-07 13:13:07', '2023-11-09 12:49:00'),
(21, NULL, 'omar', '2414141', 'omar@g.com', NULL, '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(22, NULL, 'ahemd ', '241414241', 'ahemd@a.com', NULL, '2023-11-23 06:36:32', '2023-11-23 06:36:32'),
(23, 9, 'ali ahmed', '35252525', 'ali@al.com', NULL, '2023-11-23 11:19:07', '2023-11-23 11:19:07'),
(24, 9, 'yaser', '2435335325', 'yas@y.com', NULL, '2023-11-23 11:21:43', '2023-11-23 11:21:43'),
(25, 9, 'omar', '343241414', 'om@om.com', NULL, '2023-11-23 14:02:58', '2023-11-23 14:02:58'),
(26, 9, 'ali ali', '21434113512', 'oma@dd.com', NULL, '2023-11-23 14:05:05', '2023-11-23 14:05:05'),
(27, 9, 'ahmed', '3525251', 'o@om.com', NULL, '2023-11-23 14:25:07', '2023-11-23 14:25:07'),
(28, 9, 'omar', '413141421421', 'oo@gg.com', NULL, '2023-11-30 08:08:30', '2023-11-30 08:08:30'),
(29, 9, 'rw', '214141421', 'omar@c.com', NULL, '2023-11-30 08:19:20', '2023-11-30 08:19:20'),
(30, NULL, NULL, '1111111111', 'default@default.com', NULL, '2023-11-30 08:31:57', '2023-11-30 08:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `fiexed_assets`
--

CREATE TABLE `fiexed_assets` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `fixed_asset_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `book_value` decimal(10,2) DEFAULT NULL,
  `salvage_value` decimal(10,2) DEFAULT NULL,
  `useful_life` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `fixed_assets_view`
-- (See below for the actual view)
--
CREATE TABLE `fixed_assets_view` (
`pos_staion_id` int(11)
,`fixed_asset_id` int(11)
,`fiexed_assets_pos_hub_id` int(11)
,`assest_name` varchar(255)
,`fiex_asset_deprcated` tinyint(1)
,`asset_type` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `fixed_asset_types`
--

CREATE TABLE `fixed_asset_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_deprecated` tinyint(1) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendance`
--

CREATE TABLE `hr_attendance` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_awards`
--

CREATE TABLE `hr_awards` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_award_type_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) DEFAULT NULL COMMENT 'if hr_award_type_id is null this is set instead (in UI award type is other)',
  `descr` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_award_types`
--

CREATE TABLE `hr_award_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complains`
--

CREATE TABLE `hr_complains` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_complain_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_complain_types`
--

CREATE TABLE `hr_complain_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_departments`
--

CREATE TABLE `hr_departments` (
  `id` int(11) NOT NULL,
  `manager_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `acceptable_kpis_average` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_department_kpis`
--

CREATE TABLE `hr_department_kpis` (
  `id` int(11) NOT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees`
--

CREATE TABLE `hr_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_title_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees_working_hours`
--

CREATE TABLE `hr_employees_working_hours` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_weekday_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_departments`
--

CREATE TABLE `hr_employee_departments` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `hr_job_title_id` int(11) DEFAULT NULL,
  `salary_percent` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_files`
--

CREATE TABLE `hr_employee_files` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_kpi_records`
--

CREATE TABLE `hr_employee_kpi_records` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_kpi_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL COMMENT 'range 0 - 100',
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_transfers`
--

CREATE TABLE `hr_employee_transfers` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `from_hr_department_id` int(11) DEFAULT NULL,
  `to_hr_department_id` int(11) DEFAULT NULL,
  `from_salary` decimal(10,2) DEFAULT NULL,
  `to_salary` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_warnings`
--

CREATE TABLE `hr_employee_warnings` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'the file contains the printed warning. the employee should sign and then the document is uploaded to the system',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holidays`
--

CREATE TABLE `hr_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_holiday_departments`
--

CREATE TABLE `hr_holiday_departments` (
  `id` int(11) NOT NULL,
  `hr_hoilday_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_titles`
--

CREATE TABLE `hr_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leaves`
--

CREATE TABLE `hr_leaves` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hr_leave_type_id` int(11) DEFAULT NULL,
  `is_legal` tinyint(4) DEFAULT NULL COMMENT 'choosen if hr leave type is null (in the UI its name is other)',
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'file is optional. in case of illness the illness certificate',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leave_types`
--

CREATE TABLE `hr_leave_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `is_legal` tinyint(1) DEFAULT 0 COMMENT 'legal means salary is counted in this date. ex: illnes, death of first member family',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_weekdays`
--

CREATE TABLE `hr_weekdays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_chart_of_account`
--

CREATE TABLE `main_chart_of_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `finish_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaigns`
--

INSERT INTO `marketing_campaigns` (`id`, `name`, `descr`, `start_time`, `finish_time`, `created`, `updated`) VALUES
(4, 'test', 'test2', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '2023-11-29 12:45:33', '2023-11-29 12:45:33'),
(5, 'test3', 'tess', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '2023-11-29 13:07:17', '2023-11-29 13:13:14'),
(6, 'test', 'test', '2023-12-25 00:00:00', '2023-12-19 00:00:00', '2023-12-03 11:39:25', '2023-12-03 11:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_areas`
--

CREATE TABLE `marketing_campaign_areas` (
  `id` int(11) NOT NULL,
  `marketing_campaing_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_areas`
--

INSERT INTO `marketing_campaign_areas` (`id`, `marketing_campaing_id`, `marketing_area_id`, `created`, `updated`) VALUES
(2, 6, 5, '2023-12-03 11:45:43', '2023-12-03 11:45:43'),
(3, 6, 4, '2023-12-03 11:45:57', '2023-12-03 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channels`
--

CREATE TABLE `marketing_campaign_channels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `marketing_campain_id` int(11) DEFAULT NULL,
  `total_budget` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_channels`
--

INSERT INTO `marketing_campaign_channels` (`id`, `marketing_channel_id`, `marketing_campain_id`, `total_budget`, `created`, `updated`) VALUES
(1, 2, 6, 6, '2023-12-03 11:49:33', '2023-12-03 12:05:30'),
(8, 3, 6, 4, '2023-12-03 12:11:25', '2023-12-03 12:12:12'),
(10, 3, 6, 0, '2023-12-03 12:20:36', '2023-12-03 12:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_events`
--

CREATE TABLE `marketing_campaign_channel_events` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_campaign_channel_events`
--

INSERT INTO `marketing_campaign_channel_events` (`id`, `marketing_campaign_channel_id`, `marketing_area_id`, `name`, `location`, `descr`, `total_cost`, `start_time`, `finish_time`, `created`, `updated`) VALUES
(8, 1, 5, 'test', 'test', 'test', '7.00', '2023-12-27 17:46:58', '2023-12-31 17:46:58', '2023-12-03 13:47:58', '2023-12-03 13:47:58'),
(17, 10, 5, 'test', 'test', 'test', '4.00', '2023-12-29 00:00:00', '2023-12-30 00:00:00', '2023-12-03 14:33:09', '2023-12-03 14:33:09'),
(18, 10, 5, 'test', 'test', 'test', '3.00', '2023-12-27 00:00:00', '2023-12-23 00:00:00', '2023-12-04 07:18:27', '2023-12-04 07:18:27'),
(20, 10, 5, 'test4', 'test2', 'test4', '4.00', '2023-12-29 00:00:00', '2023-12-29 00:00:00', '2023-12-04 07:23:41', '2023-12-04 07:23:41'),
(21, 10, 5, 'test .....', 'test...', 'test.................', '3.00', '2023-12-27 00:00:00', '2023-12-26 00:00:00', '2023-12-04 07:43:29', '2023-12-04 07:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaign_channel_event_levels`
--

CREATE TABLE `marketing_campaign_channel_event_levels` (
  `id` int(11) NOT NULL,
  `marketing_campaign_channel_event_id` int(11) DEFAULT NULL,
  `marketing_channel_level_id` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channels`
--

CREATE TABLE `marketing_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_channels`
--

INSERT INTO `marketing_channels` (`id`, `name`, `descr`, `created`, `updated`) VALUES
(2, 'test5', 'test5', '2023-11-29 12:10:16', '2023-11-29 12:10:16'),
(3, 'test2', 'test2', '2023-11-29 13:06:35', '2023-11-29 13:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_channel_levels`
--

CREATE TABLE `marketing_channel_levels` (
  `id` int(11) NOT NULL,
  `marketing_channel_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_channel_levels`
--

INSERT INTO `marketing_channel_levels` (`id`, `marketing_channel_id`, `name`, `descr`, `created`, `updated`) VALUES
(2, 2, 'test5', 'test5', '2023-11-29 12:10:16', '2023-11-29 12:10:16'),
(3, 3, 'tests', 'test2', '2023-11-29 13:06:35', '2023-11-29 13:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_surveys`
--

CREATE TABLE `marketing_surveys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_surveys`
--

INSERT INTO `marketing_surveys` (`id`, `name`, `budget`, `created`, `updated`) VALUES
(1, 'test', NULL, '2023-11-29 12:14:04', '2023-11-29 12:14:04'),
(2, 'test2', NULL, '2023-11-29 12:16:22', '2023-11-29 12:16:22'),
(5, 'product_test', NULL, '2023-11-30 09:24:40', '2023-11-30 09:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_areas`
--

CREATE TABLE `marketing_survey_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_areas`
--

INSERT INTO `marketing_survey_areas` (`id`, `marketing_survey_id`, `marketing_area_id`, `created`, `updated`) VALUES
(58, 5, 5, '2023-12-03 08:49:47', '2023-12-03 08:49:47'),
(59, 5, 4, '2023-12-03 08:49:52', '2023-12-03 08:49:52'),
(60, 5, 5, '2023-12-03 09:01:10', '2023-12-03 09:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes`
--

CREATE TABLE `marketing_survey_processes` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_processes_answers`
--

CREATE TABLE `marketing_survey_processes_answers` (
  `id` int(11) NOT NULL,
  `marketing_survey_process_id` int(11) DEFAULT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_questions`
--

CREATE TABLE `marketing_survey_questions` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_survey_question_type_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_questions`
--

INSERT INTO `marketing_survey_questions` (`id`, `marketing_survey_id`, `marketing_survey_question_type_id`, `question`, `created`, `updated`) VALUES
(9, 5, 2, 'test', '2023-11-30 14:53:12', '2023-11-30 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_options`
--

CREATE TABLE `marketing_survey_question_options` (
  `id` int(11) NOT NULL,
  `marketing_survey_question_id` int(11) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_options`
--

INSERT INTO `marketing_survey_question_options` (`id`, `marketing_survey_question_id`, `option`, `created`, `updated`) VALUES
(2, 9, '1', '2023-11-30 14:53:12', '2023-11-30 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_question_types`
--

CREATE TABLE `marketing_survey_question_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_question_types`
--

INSERT INTO `marketing_survey_question_types` (`id`, `name`, `chart_type`, `created`, `updated`) VALUES
(2, 'radio', 'pie', '2023-11-30 14:24:28', '2023-11-30 14:46:29'),
(3, 'check_box', 'pie', '2023-11-30 14:47:36', '2023-11-30 14:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_members`
--

CREATE TABLE `marketing_survey_team_members` (
  `id` int(11) NOT NULL,
  `marketing_survey_id` int(11) DEFAULT NULL,
  `marketing_team_member_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_members`
--

INSERT INTO `marketing_survey_team_members` (`id`, `marketing_survey_id`, `marketing_team_member_id`, `rate`, `created`, `updated`) VALUES
(6, 2, 2, NULL, '2023-11-30 09:08:39', '2023-11-30 09:08:39'),
(7, 5, 2, NULL, '2023-11-30 09:24:41', '2023-11-30 09:24:41'),
(9, 1, 3, NULL, '2023-11-30 12:20:56', '2023-11-30 12:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_survey_team_member_areas`
--

CREATE TABLE `marketing_survey_team_member_areas` (
  `id` int(11) NOT NULL,
  `marketing_survey_team_member_id` int(11) DEFAULT NULL,
  `marketing_area_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updaed` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_survey_team_member_areas`
--

INSERT INTO `marketing_survey_team_member_areas` (`id`, `marketing_survey_team_member_id`, `marketing_area_id`, `created`, `updaed`) VALUES
(4, 7, 59, '2023-12-03 09:16:30', '2023-12-03 09:17:09'),
(12, 7, 58, '2023-12-03 11:35:32', '2023-12-03 11:35:32'),
(13, 7, 58, '2023-12-03 11:35:32', '2023-12-03 11:35:32'),
(15, 7, 60, '2023-12-04 07:34:14', '2023-12-04 07:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_team_members`
--

CREATE TABLE `marketing_team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing_team_members`
--

INSERT INTO `marketing_team_members` (`id`, `name`, `tel`, `password`, `email`, `birthdate`, `created`, `updated`) VALUES
(2, 'omer', '899900', '$2a$10$UtsuOw5Jolfkwr/Dl2lm6.P2D7gbVJYo2U.uSnAq0vx7z8JL45M.m\n', 'omer@gmail.com', '2023-12-25 00:00:00', '2023-11-29 14:23:26', '2023-12-10 13:52:07'),
(3, 'ali@gmail.com', '123479', '$2b$10$oYSNybITEnabuBEzfrxKA.ybvE/nn5vN7nITKxXL9MHgdf7obMOxK', 'ali@gmail.com', '2023-12-04 00:00:00', '2023-11-29 14:25:21', '2023-12-04 07:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `package_types`
--

CREATE TABLE `package_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package_types`
--

INSERT INTO `package_types` (`id`, `name`, `name_ar`, `created`, `updated`) VALUES
(1, 'Golden', 'الذهبية', '2023-10-24 06:12:35', '2023-10-24 06:12:35'),
(2, 'Silver', 'الفضية', '2023-10-24 06:12:35', '2023-10-24 06:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `period_types`
--

CREATE TABLE `period_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_cash_accounts`
--

CREATE TABLE `pos_cash_accounts` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `pos_account_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_cash_drawer_reconciliation`
--

CREATE TABLE `pos_cash_drawer_reconciliation` (
  `id` int(11) NOT NULL,
  `pos_user_id` int(11) NOT NULL COMMENT 'رقم موظف البيع \r\n',
  `reconciliation_date` datetime DEFAULT current_timestamp() COMMENT 'تاربخ التسوية ',
  `cash_received` decimal(10,2) DEFAULT NULL COMMENT 'النقود التي تمت في النظام',
  `checks_collected` decimal(10,2) DEFAULT NULL COMMENT 'النقود التي تم تحصيلها من الخزنة خلال وردية الموظف',
  `discrepancies` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'الفرق ما بين النقود في النظام والنقود في الخزنة بصورة افتراضية اذا لم يوجد فرق بتم ادخال صفر',
  `type` varchar(255) DEFAULT NULL COMMENT 'نوع التسوية تكون اما ربح او خسارة او صفر وفي حالة صفر ذلك يعني ان المدخلات متساوية',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_cash_drawer_reconciliation`
--

INSERT INTO `pos_cash_drawer_reconciliation` (`id`, `pos_user_id`, `reconciliation_date`, `cash_received`, `checks_collected`, `discrepancies`, `type`, `created`, `updated`) VALUES
(1, 1, '2023-11-30 11:09:05', '493.90', '494.00', '0.10', 'gain', '2023-11-30 11:09:05', '2023-11-30 11:09:05'),
(2, 1, '2023-11-30 11:45:57', '284.90', '285.00', '0.10', 'gain', '2023-11-30 11:45:57', '2023-11-30 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `pos_categories`
--

CREATE TABLE `pos_categories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_categories`
--

INSERT INTO `pos_categories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `img`, `created`, `updated`) VALUES
(1, NULL, 1, 'electronics', 'public/pos-categories/1701595006310629.jpg', '2023-12-03 09:16:46', '2023-12-03 09:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `pos_chart_of_accounts`
--

CREATE TABLE `pos_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_employees`
--

CREATE TABLE `pos_employees` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `employee_degree_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_job_titles` int(11) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_employees`
--

INSERT INTO `pos_employees` (`id`, `pos_station_id`, `payment_method_id`, `hr_department_id`, `employee_degree_id`, `name`, `pos_job_titles`, `birthdate`, `basic_salary`, `created`, `updated`) VALUES
(4, 1, NULL, NULL, NULL, 'jack', 1, '1990-10-01', '43633.00', '2023-10-30 17:17:53', '2023-10-30 17:43:40'),
(6, 1, NULL, NULL, NULL, 'allll', 2, '1999-01-01', '22222.00', '2023-10-31 07:54:11', '2023-10-31 07:54:11'),
(7, 1, NULL, NULL, NULL, 'salah ahmed', 2, '1996-01-30', '2424.00', '2023-10-31 09:16:25', '2023-10-31 09:16:25'),
(8, 1, NULL, NULL, NULL, 'ali salah', 2, '1980-03-29', '21421.00', '2023-10-31 09:17:00', '2023-10-31 09:17:00'),
(9, 1, NULL, NULL, NULL, 'ali salah', 1, '1998-01-01', '1321.00', '2023-10-31 09:17:43', '2023-10-31 09:17:43'),
(10, 1, NULL, NULL, NULL, 'ali', 1, '1998-01-01', '3423.00', '2023-10-31 09:17:53', '2023-10-31 09:17:53'),
(11, 1, NULL, NULL, NULL, 'ali', 1, '1998-01-01', '2314.00', '2023-10-31 09:18:07', '2023-10-31 09:18:07'),
(12, 1, NULL, NULL, NULL, 'ali', 1, '1889-01-19', '3432.00', '2023-10-31 09:18:39', '2023-10-31 09:18:39'),
(14, 1, NULL, NULL, NULL, 'oma', 1, '1998-12-02', '141.00', '2023-10-31 09:19:04', '2023-10-31 09:19:04'),
(15, 1, NULL, NULL, NULL, 'ali 100', 2, '1998-12-01', '3314.00', '2023-11-01 12:13:17', '2023-11-01 12:13:17'),
(16, 1, NULL, NULL, NULL, 'ali 101', 2, '1998-01-11', '13141.00', '2023-11-01 12:13:38', '2023-11-01 12:13:38'),
(17, 1, NULL, NULL, NULL, 'ahmed', 1, '1998-01-01', '2000.00', '2023-11-02 10:48:37', '2023-11-02 10:50:21'),
(18, 1, NULL, 1, NULL, 'weeko', 1, NULL, '2.00', '2023-12-03 09:27:32', '2023-12-03 09:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `pos_employee_degrees`
--

CREATE TABLE `pos_employee_degrees` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(12) DEFAULT NULL,
  `pos_hub_id` int(12) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_employee_degrees`
--

INSERT INTO `pos_employee_degrees` (`id`, `pos_station_id`, `pos_hub_id`, `name`, `created`, `updated`) VALUES
(1, 1, NULL, '1', '2023-12-03 09:40:30', '2023-12-03 09:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_attendance`
--

CREATE TABLE `pos_hr_attendance` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_attendance`
--

INSERT INTO `pos_hr_attendance` (`id`, `hr_employee_id`, `check_in`, `check_out`, `created`, `updated`) VALUES
(1, 18, '23:28:00', '11:31:00', '2023-12-03 09:28:45', '2023-12-03 09:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_awards`
--

CREATE TABLE `pos_hr_awards` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_award_type_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) DEFAULT NULL COMMENT 'if hr_award_type_id is null this is set instead (in UI award type is other)',
  `descr` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_awards`
--

INSERT INTO `pos_hr_awards` (`id`, `hr_employee_id`, `hr_award_type_id`, `award_name`, `descr`, `month`, `year`, `created`, `updated`) VALUES
(1, 18, 1, 'test', 'ju', 3, 222, '2023-12-03 09:35:32', '2023-12-03 09:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_award_types`
--

CREATE TABLE `pos_hr_award_types` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_award_types`
--

INSERT INTO `pos_hr_award_types` (`id`, `pos_station_id`, `name`, `created`, `updated`) VALUES
(1, 1, 'tets', '2023-12-03 09:34:56', '2023-12-03 09:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_complains`
--

CREATE TABLE `pos_hr_complains` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_complain_type_id` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_complains`
--

INSERT INTO `pos_hr_complains` (`id`, `pos_station_id`, `hr_employee_id`, `hr_complain_type_id`, `descr`, `created`, `updated`) VALUES
(1, 1, 18, 1, '2000', '2023-12-03 09:40:01', '2023-12-03 09:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_complain_types`
--

CREATE TABLE `pos_hr_complain_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_complain_types`
--

INSERT INTO `pos_hr_complain_types` (`id`, `name`, `created`, `updated`) VALUES
(1, 'hi', '2023-12-03 09:39:41', '2023-12-03 09:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_departments`
--

CREATE TABLE `pos_hr_departments` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `manager_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `acceptable_kpis_average` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_departments`
--

INSERT INTO `pos_hr_departments` (`id`, `pos_station_id`, `manager_user_id`, `name`, `descr`, `acceptable_kpis_average`, `created`, `updated`) VALUES
(1, 1, 10, 'test', 'test', '200.00', '2023-12-03 09:26:53', '2023-12-03 09:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_department_kpis`
--

CREATE TABLE `pos_hr_department_kpis` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_department_kpis`
--

INSERT INTO `pos_hr_department_kpis` (`id`, `pos_station_id`, `hr_department_id`, `name`, `weight`, `created`, `updated`) VALUES
(1, 1, 1, 'test', 300, '2023-12-03 09:27:05', '2023-12-03 09:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employees`
--

CREATE TABLE `pos_hr_employees` (
  `id` int(11) NOT NULL,
  `pos_station_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employees_working_hours`
--

CREATE TABLE `pos_hr_employees_working_hours` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_weekday_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_employees_working_hours`
--

INSERT INTO `pos_hr_employees_working_hours` (`id`, `pos_station_id`, `hr_employee_id`, `hr_weekday_id`, `start_time`, `end_time`, `created`, `updated`) VALUES
(1, 1, 18, 1, '23:28:00', '23:28:00', '2023-12-03 09:28:30', '2023-12-03 09:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employee_files`
--

CREATE TABLE `pos_hr_employee_files` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_employee_files`
--

INSERT INTO `pos_hr_employee_files` (`id`, `hr_employee_id`, `name`, `file`, `created`, `updated`) VALUES
(1, 18, 'test', 'public/pos-hr-employee-files/1701595747331747.jpg', '2023-12-03 09:29:07', '2023-12-03 09:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employee_kpi_records`
--

CREATE TABLE `pos_hr_employee_kpi_records` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `hr_department_kpi_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL COMMENT 'range 0 - 100',
  `month` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_employee_kpi_records`
--

INSERT INTO `pos_hr_employee_kpi_records` (`id`, `hr_employee_id`, `hr_department_kpi_id`, `value`, `month`, `year`, `created`, `updated`) VALUES
(1, 18, 1, 12, NULL, 2023, '2023-12-03 09:38:02', '2023-12-03 09:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employee_transfers`
--

CREATE TABLE `pos_hr_employee_transfers` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `from_hr_department_id` int(11) DEFAULT NULL,
  `to_hr_department_id` int(11) DEFAULT NULL,
  `from_salary` decimal(10,2) DEFAULT NULL,
  `to_salary` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_employee_transfers`
--

INSERT INTO `pos_hr_employee_transfers` (`id`, `hr_employee_id`, `from_hr_department_id`, `to_hr_department_id`, `from_salary`, `to_salary`, `date`, `created`, `updated`) VALUES
(1, 18, 1, 1, '200.00', '293.00', '2023-12-03', '2023-12-03 09:39:04', '2023-12-03 09:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_employee_warnings`
--

CREATE TABLE `pos_hr_employee_warnings` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'the file contains the printed warning. the employee should sign and then the document is uploaded to the system',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_holidays`
--

CREATE TABLE `pos_hr_holidays` (
  `id` int(11) NOT NULL,
  `pos_station_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_holidays`
--

INSERT INTO `pos_hr_holidays` (`id`, `pos_station_id`, `name`, `start_date`, `end_date`, `created`, `updated`) VALUES
(1, '1', 'test', '2023-12-03', '2024-01-04', '2023-12-03 09:30:04', '2023-12-03 09:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_holiday_departments`
--

CREATE TABLE `pos_hr_holiday_departments` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `hr_hoilday_id` int(11) DEFAULT NULL,
  `hr_department_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_holiday_departments`
--

INSERT INTO `pos_hr_holiday_departments` (`id`, `pos_station_id`, `hr_hoilday_id`, `hr_department_id`, `created`, `updated`) VALUES
(1, 1, 1, 1, '2023-12-03 09:31:36', '2023-12-03 09:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_leaves`
--

CREATE TABLE `pos_hr_leaves` (
  `id` int(11) NOT NULL,
  `hr_employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hr_leave_type_id` int(11) DEFAULT NULL,
  `is_legal` tinyint(4) DEFAULT NULL COMMENT 'choosen if hr leave type is null (in the UI its name is other)',
  `descr` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT 'file is optional. in case of illness the illness certificate',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_leaves`
--

INSERT INTO `pos_hr_leaves` (`id`, `hr_employee_id`, `date`, `hr_leave_type_id`, `is_legal`, `descr`, `file`, `created`, `updated`) VALUES
(1, 18, '2023-12-28', 1, NULL, '22', 'public/pos-hr-leaves/1701596056225602.jpg', '2023-12-03 09:34:16', '2023-12-03 09:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_leave_types`
--

CREATE TABLE `pos_hr_leave_types` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `is_legal` tinyint(1) DEFAULT 0 COMMENT 'legal means salary is counted in this date. ex: illnes, death of first member family',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_leave_types`
--

INSERT INTO `pos_hr_leave_types` (`id`, `pos_station_id`, `name`, `descr`, `is_legal`, `created`, `updated`) VALUES
(1, 1, 'q', NULL, 0, '2023-12-03 09:32:02', '2023-12-03 09:32:02'),
(2, 1, 'j', NULL, 0, '2023-12-03 09:32:09', '2023-12-03 09:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_shift`
--

CREATE TABLE `pos_hr_shift` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `started_at` time DEFAULT NULL,
  `finished_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_hr_weekdays`
--

CREATE TABLE `pos_hr_weekdays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_hr_weekdays`
--

INSERT INTO `pos_hr_weekdays` (`id`, `name`, `created`, `updated`) VALUES
(1, 'test', '2023-12-03 09:27:48', '2023-12-03 09:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `pos_hubs`
--

CREATE TABLE `pos_hubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `has_partners` tinyint(4) DEFAULT NULL,
  `single_products_list` tinyint(4) DEFAULT NULL,
  `centeric_ineventory` tinyint(4) DEFAULT NULL,
  `pos_type_id` int(11) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_hubs`
--

INSERT INTO `pos_hubs` (`id`, `name`, `has_partners`, `single_products_list`, `centeric_ineventory`, `pos_type_id`, `status`, `created`, `updated`) VALUES
(1, 'hub 1', 1, NULL, NULL, 1, 0, '2023-11-16 07:35:42', '2023-12-06 12:54:52'),
(2, 'hub 2', 0, NULL, NULL, 2, 0, '2023-11-16 07:35:55', '2023-12-06 12:54:57'),
(3, 'test 25241', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(4, 'test25311132', 1, 0, 0, 2, 0, '2023-11-16 10:10:23', '2023-11-21 11:56:18'),
(5, 'test 63240', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(6, 'test633253', 1, 0, 0, 2, 0, '2023-11-16 10:10:23', '2023-11-21 11:22:58'),
(7, 'test 2400988760', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(8, 'test253525', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(9, 'test 24250', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(10, 'test252253', 1, 0, 0, 2, 0, '2023-11-16 10:10:23', '2023-11-21 11:23:05'),
(11, 'test 2499760', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(12, 'test25363', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(13, 'test 75240', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-22 06:18:16'),
(14, 'test25673', 1, 0, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-21 12:48:52'),
(15, 'test 24045', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(16, 'test42253', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(17, 'test 24240', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(18, 'test4253', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(19, 'test 24320', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(20, 'test2523', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(21, 'test 2240', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(22, 'test25133', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(23, 'test 24240', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(24, 'test2532', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(25, 'test 24220', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(26, 'test25397', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(27, 'test 24055', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(28, 'test2513', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(29, 'test 2401', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(30, 'test2523', 1, NULL, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(31, 'test 2405', 1, 1, 1, 1, 0, '2023-11-16 10:10:23', '2023-11-16 10:10:23'),
(32, 'test2535', 1, 0, NULL, 2, 0, '2023-11-16 10:10:23', '2023-11-21 12:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventories`
--

CREATE TABLE `pos_inventories` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_inevntroy_type_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventories`
--

INSERT INTO `pos_inventories` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `pos_inevntroy_type_id`, `created`, `updated`) VALUES
(3, NULL, 1, 'External', 2, '2023-11-30 11:27:28', '2023-11-30 11:27:28'),
(4, NULL, 1, 'Internal', 1, '2023-11-30 11:27:28', '2023-11-30 11:27:28'),
(5, NULL, 13, 'External', 2, '2023-11-30 11:29:41', '2023-11-30 11:29:41'),
(6, NULL, 13, 'Internal', 1, '2023-11-30 11:29:41', '2023-11-30 11:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventory_items`
--

CREATE TABLE `pos_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `pos_kitchen_raw_material_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventory_items`
--

INSERT INTO `pos_inventory_items` (`id`, `inventory_id`, `pos_kitchen_raw_material_id`, `product_id`, `qty`, `created`, `updated`) VALUES
(4, 3, NULL, 5, 400, '2023-12-03 09:18:35', '2023-12-03 09:18:35'),
(5, 4, NULL, 5, 200, '2023-12-03 09:18:35', '2023-12-03 09:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventory_types`
--

CREATE TABLE `pos_inventory_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventory_types`
--

INSERT INTO `pos_inventory_types` (`id`, `type`, `created`, `updated`) VALUES
(1, 'Internal', '2023-10-29 06:02:33', '2023-10-29 06:02:33'),
(2, 'External', '2023-10-29 06:02:33', '2023-10-29 06:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `pos_job_titles`
--

CREATE TABLE `pos_job_titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_job_titles`
--

INSERT INTO `pos_job_titles` (`id`, `name`, `created`, `updated`) VALUES
(1, 'accountant', '2023-10-30 13:42:00', '2023-10-30 13:42:00'),
(2, 'reception', '2023-10-30 13:42:43', '2023-10-30 13:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchens`
--

CREATE TABLE `pos_kitchens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kitchen_type_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_kitchens`
--

INSERT INTO `pos_kitchens` (`id`, `name`, `kitchen_type_id`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'kitchen 21', NULL, 6, '2023-11-14 08:20:51', '2023-11-14 08:20:51'),
(2, NULL, NULL, NULL, '2023-11-14 10:21:09', '2023-11-14 10:21:09'),
(4, 'test3414\'s kitchen', 1, 9, '2023-11-22 07:49:39', '2023-11-22 07:49:39'),
(5, 'test3414\'s bar', 2, 9, '2023-11-22 07:49:39', '2023-11-22 07:49:39'),
(6, 'test', NULL, 1, '2023-12-03 08:24:50', '2023-12-03 08:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchen_manufacturing_logs`
--

CREATE TABLE `pos_kitchen_manufacturing_logs` (
  `id` int(11) NOT NULL,
  `inventory_item_id` int(11) DEFAULT NULL,
  `qty` decimal(10,4) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchen_raw_materials`
--

CREATE TABLE `pos_kitchen_raw_materials` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_kitchen_types`
--

CREATE TABLE `pos_kitchen_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_kitchen_types`
--

INSERT INTO `pos_kitchen_types` (`id`, `name`, `created`, `updated`) VALUES
(1, 'kitchen', '2023-11-22 11:27:35', '2023-11-22 11:27:35'),
(2, 'bar', '2023-11-22 11:27:35', '2023-11-22 11:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers`
--

CREATE TABLE `pos_managers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers_detailes`
--

CREATE TABLE `pos_managers_detailes` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `register_number` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_managers_subscription`
--

CREATE TABLE `pos_managers_subscription` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_monthly_deduction_details`
--

CREATE TABLE `pos_monthly_deduction_details` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `total_balance` decimal(10,2) DEFAULT 0.00,
  `paid_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `month` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_monthly_deduction_details`
--

INSERT INTO `pos_monthly_deduction_details` (`id`, `emp_id`, `pos_station_id`, `total_balance`, `paid_balance`, `month`, `year`, `created`, `updated`) VALUES
(1, 18, 1, '0.00', '0.00', 12, 2023, '2023-12-03 09:29:32', '2023-12-03 09:29:32'),
(2, 18, 1, '0.00', '0.00', 12, 2023, '2023-12-03 09:29:38', '2023-12-03 09:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `pos_monthly_salaries`
--

CREATE TABLE `pos_monthly_salaries` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `total_balance` decimal(10,2) DEFAULT NULL,
  `paid_balance` decimal(10,2) DEFAULT 0.00,
  `month` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `pos_monthly_salary_details`
--

CREATE TABLE `pos_monthly_salary_details` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `salary_item_id` int(11) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `received` datetime DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pos_montly_delatils`
--

CREATE TABLE `pos_montly_delatils` (
  `id` int(11) NOT NULL,
  `pos_employee_id` int(11) DEFAULT NULL,
  `pos_item_id` int(11) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_price_list_products`
--

CREATE TABLE `pos_price_list_products` (
  `id` int(11) NOT NULL,
  `pos_station_price_list_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_price_list_products`
--

INSERT INTO `pos_price_list_products` (`id`, `pos_station_price_list_id`, `product_id`, `created`, `updated`) VALUES
(15, 7, 8, '2023-11-22 10:01:09', '2023-11-22 10:01:09'),
(21, 4, 7, '2023-12-03 09:07:33', '2023-12-03 09:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `pos_printers`
--

CREATE TABLE `pos_printers` (
  `id` int(11) NOT NULL,
  `pos_floor_id` int(11) DEFAULT NULL,
  `pos_table_id` int(11) DEFAULT NULL,
  `pos_kitchen_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_printers`
--

INSERT INTO `pos_printers` (`id`, `pos_floor_id`, `pos_table_id`, `pos_kitchen_id`, `created`, `updated`) VALUES
(1, 22, 28, NULL, '2023-11-30 08:08:30', '2023-11-30 08:08:30'),
(2, 22, 29, NULL, '2023-11-30 08:19:20', '2023-11-30 08:19:20'),
(3, NULL, NULL, NULL, '2023-11-30 08:26:55', '2023-11-30 08:26:55'),
(4, NULL, NULL, NULL, '2023-11-30 08:31:57', '2023-11-30 08:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `pos_products`
--

CREATE TABLE `pos_products` (
  `id` int(11) NOT NULL,
  `pos_kitchen_id` int(11) DEFAULT NULL,
  `pos_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `sales_price` decimal(10,2) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_products`
--

INSERT INTO `pos_products` (`id`, `pos_kitchen_id`, `pos_category_id`, `name`, `purchase_price`, `sales_price`, `barcode`, `img`, `created`, `updated`) VALUES
(5, NULL, 1, 'laptop', '200.00', '3000.00', NULL, 'public/pos-products/1701595115675909.jpg', '2023-12-03 09:18:35', '2023-12-03 09:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_purchases_order`
--

CREATE TABLE `pos_purchases_order` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `excution_time` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_purchases_order`
--

INSERT INTO `pos_purchases_order` (`id`, `supplier_id`, `excution_time`, `created`, `updated`) VALUES
(1, 1, '2023-12-03 09:21:07', '2023-12-03 09:19:12', '2023-12-03 09:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `pos_purchases_order_detailes`
--

CREATE TABLE `pos_purchases_order_detailes` (
  `id` int(11) NOT NULL,
  `purchases_order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sold_qty` int(11) DEFAULT 0,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_purchases_order_detailes`
--

INSERT INTO `pos_purchases_order_detailes` (`id`, `purchases_order_id`, `product_id`, `qty`, `sold_qty`, `unit_price`, `created`, `updated`) VALUES
(1, 1, 5, 200, 0, '300.00', '2023-12-03 09:19:12', '2023-12-03 09:19:12'),
(2, 1, 5, 400, 0, '500.00', '2023-12-03 09:19:12', '2023-12-03 09:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `pos_roles`
--

CREATE TABLE `pos_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_roles`
--

INSERT INTO `pos_roles` (`id`, `name`, `created`, `updated`) VALUES
(1, 'admin', '2023-10-29 12:47:42', '2023-10-29 12:47:42'),
(2, 'hr_manager', '2023-10-29 12:47:42', '2023-10-29 12:47:42'),
(3, 'hr_emp', '2023-11-01 10:14:43', '2023-11-01 10:14:43'),
(4, 'accountant', '2023-11-13 07:37:53', '2023-11-13 07:37:53'),
(5, 'accountant_manager', '2023-11-27 09:03:20', '2023-11-27 09:03:20'),
(6, 'purchase_manager', '2023-11-27 09:03:20', '2023-11-27 09:03:20'),
(7, 'purchase_emp', '2023-11-27 09:03:20', '2023-11-27 09:03:20'),
(8, 'sales_emp', '2023-11-27 09:03:20', '2023-11-27 09:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_deduction`
--

CREATE TABLE `pos_salary_deduction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_item`
--

CREATE TABLE `pos_salary_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_salary_item`
--

INSERT INTO `pos_salary_item` (`id`, `name`, `pos_station_id`, `pos_hub_id`, `created`, `updated`) VALUES
(1, '200', 1, NULL, '2023-12-03 09:40:16', '2023-12-03 09:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_items_branches`
--

CREATE TABLE `pos_salary_items_branches` (
  `id` int(11) NOT NULL,
  `salary_item_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `level_three_chart_of_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_items_types`
--

CREATE TABLE `pos_salary_items_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pos_salary_item_degrees`
--

CREATE TABLE `pos_salary_item_degrees` (
  `id` int(11) NOT NULL,
  `salary_item_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `degree_id` int(12) DEFAULT NULL,
  `value` int(12) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pos_salary_item_degrees`
--

INSERT INTO `pos_salary_item_degrees` (`id`, `salary_item_id`, `pos_station_id`, `pos_hub_id`, `degree_id`, `value`, `created`, `updated`) VALUES
(1, 1, 1, NULL, 1, 200, '2023-12-03 09:40:38', '2023-12-03 09:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `pos_sale_order_details`
--

CREATE TABLE `pos_sale_order_details` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pos_share_holders`
--

CREATE TABLE `pos_share_holders` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `total_shares` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_stations`
--

CREATE TABLE `pos_stations` (
  `id` int(11) NOT NULL,
  `pos_manager_id` int(11) DEFAULT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `register_number` varchar(255) DEFAULT NULL,
  `has_shalve` tinyint(1) DEFAULT NULL,
  `has_floors` tinyint(1) DEFAULT NULL,
  `price_including_tax` tinyint(1) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `has_many_cateogries` tinyint(1) DEFAULT NULL,
  `has_full_accounting` tinyint(1) DEFAULT NULL,
  `category_has_image` tinyint(1) DEFAULT NULL,
  `has_multiple_users` tinyint(1) DEFAULT NULL,
  `loc` text DEFAULT NULL,
  `lat` decimal(15,15) DEFAULT NULL,
  `lng` decimal(15,15) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_stations`
--

INSERT INTO `pos_stations` (`id`, `pos_manager_id`, `pos_hub_id`, `pos_type_id`, `name`, `tax`, `register_number`, `has_shalve`, `has_floors`, `price_including_tax`, `img`, `has_many_cateogries`, `has_full_accounting`, `category_has_image`, `has_multiple_users`, `loc`, `lat`, `lng`, `status`, `created`, `updated`) VALUES
(1, 7, 2, 2, 'omar', NULL, '343245', 1, 1, 1, NULL, 1, 0, 0, 1, 'fdfdsfdsfssddsvs', NULL, NULL, 0, '2023-10-30 12:41:21', '2023-12-06 12:49:00'),
(3, 7, 2, 2, 'Harran POS', NULL, NULL, 0, 1, 1, './uploads/1699860119767910.png', NULL, 1, 1, 1, NULL, '0.000000000000000', '0.000000000000000', 0, '2023-11-13 07:21:59', '2023-12-06 12:53:44'),
(4, 7, 1, 1, 'tarr', NULL, 'p-36257', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000000000000', '0.000000000000000', 1, '2023-11-13 07:25:37', '2023-12-06 14:29:13'),
(5, NULL, 1, 1, 'medication', NULL, '313424', 1, 1, 1, NULL, NULL, 1, 0, 1, 'saudi', NULL, NULL, 0, '2023-11-13 11:10:34', '2023-11-16 11:48:49'),
(6, NULL, 31, 2, 'test pos for restaurant ', 5, '32425', 1, 1, 0, NULL, 0, 1, 0, 1, NULL, NULL, NULL, 0, '2023-11-22 06:24:50', '2023-11-22 06:24:50'),
(9, NULL, NULL, 2, 'test3414', 10, '53525', 0, 1, 1, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 1, '2023-11-22 07:49:39', '2023-12-06 12:16:46'),
(11, NULL, NULL, 1, 'wrwqr', NULL, '422424', 1, 1, 1, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, 0, '2023-11-30 11:25:04', '2023-11-30 11:25:04'),
(12, NULL, NULL, 1, 'omer-pos', NULL, '4242', 1, 1, 1, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 0, '2023-11-30 11:27:28', '2023-11-30 11:27:28'),
(13, NULL, NULL, 1, 'eeqe', NULL, '311', 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, '2023-11-30 11:29:41', '2023-11-30 11:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `pos_stations_price_list`
--

CREATE TABLE `pos_stations_price_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_stations_id` int(11) DEFAULT NULL,
  `price_list_type_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_stations_price_list`
--

INSERT INTO `pos_stations_price_list` (`id`, `name`, `pos_stations_id`, `price_list_type_id`, `status`, `created`, `updated`) VALUES
(1, 'happy customers', 1, 1, 0, '2023-11-01 13:37:12', '2023-11-01 13:37:12'),
(4, 'sad customers', 1, 2, 1, '2023-11-01 14:31:20', '2023-11-01 14:31:20'),
(6, 'fsaa', 1, 2, 0, '2023-11-02 13:51:33', '2023-11-02 13:51:33'),
(7, 'test 3414\'s price list happy', 9, 1, 1, '2023-11-22 08:38:14', '2023-11-22 08:38:14'),
(8, 'test 3414\'s price list sad', 9, 2, 0, '2023-11-22 08:39:19', '2023-11-22 08:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floors`
--

CREATE TABLE `pos_station_floors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_floors`
--

INSERT INTO `pos_station_floors` (`id`, `name`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'mall', 5, '2023-11-13 11:21:13', '2023-11-13 11:21:13'),
(6, 'ff', 5, '2023-11-14 08:40:46', '2023-11-14 08:40:46'),
(8, 'test 22', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(9, 'test 22', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(10, 'test 23', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(11, 'test 24', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(12, 'test 25', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(13, 'test 26', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(14, 'test 27', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(15, 'test 28', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(16, 'test 29', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(17, 'test 30', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(18, 'test 31', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(19, 'test 32', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(20, 'test 33', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(21, 'test 34', 5, '2023-11-15 08:15:04', '2023-11-15 08:15:04'),
(22, 'g', 9, '2023-11-23 11:28:05', '2023-11-23 11:28:05'),
(23, 'test', 1, '2023-12-03 09:09:45', '2023-12-03 09:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floors_shalves`
--

CREATE TABLE `pos_station_floors_shalves` (
  `id` int(11) NOT NULL,
  `pos_station_floor_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_floor_tables`
--

CREATE TABLE `pos_station_floor_tables` (
  `id` int(11) NOT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_floor_tables`
--

INSERT INTO `pos_station_floor_tables` (`id`, `floor_id`, `name`, `seats`, `created`, `updated`) VALUES
(3, 6, 'table 1', 2, '2023-11-14 09:15:44', '2023-11-14 09:15:44'),
(4, 6, 'table 232', NULL, '2023-11-14 09:16:44', '2023-11-14 09:16:44'),
(5, 1, 'table 999', 3, '2023-11-14 10:00:54', '2023-11-14 10:00:54'),
(9, 6, 'table-344', 42, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(10, 10, 'table-261', 100, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(11, 6, 'table-252', 20, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(12, 6, 'table-232', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(13, 6, 'table-257', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(14, 6, 'table-212', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(15, 6, 'table-251', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(16, 6, 'table-211', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(17, 6, 'table-221', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(18, 18, 'table-321', 23, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(19, 6, 'table-218', NULL, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(20, 6, 'table-721', 10, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(21, 6, 'table-821', 213, '2023-11-15 07:34:54', '2023-11-15 07:34:54'),
(25, 1, 'table-19', 10, '2023-11-15 08:59:48', '2023-11-15 08:59:48'),
(26, 22, 'table 12', 4, '2023-11-23 11:38:15', '2023-11-23 11:38:15'),
(27, 22, 'table 10', 4, '2023-11-23 11:44:47', '2023-11-23 11:44:47'),
(28, 22, 'table 9', 5, '2023-11-23 11:44:58', '2023-11-23 11:44:58'),
(29, 22, 'table 2', 5, '2023-11-23 11:45:09', '2023-11-23 11:45:09'),
(30, 22, 'table 4', 4, '2023-11-23 11:45:22', '2023-11-23 11:45:22'),
(31, 23, 'test', 2000, '2023-12-03 09:10:07', '2023-12-03 09:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `pos_station_price_list_type`
--

CREATE TABLE `pos_station_price_list_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `percentage` int(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_station_price_list_type`
--

INSERT INTO `pos_station_price_list_type` (`id`, `name`, `discount`, `percentage`, `created`, `updated`) VALUES
(1, 'type 1', NULL, 20, '2023-11-01 13:36:07', '2023-11-01 13:36:07'),
(2, 'type 2', 50, NULL, '2023-11-01 13:36:07', '2023-11-01 13:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `pos_subscriptions`
--

CREATE TABLE `pos_subscriptions` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `subscription_packge_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_subscriptions`
--

INSERT INTO `pos_subscriptions` (`id`, `pos_hub_id`, `pos_station_id`, `subscription_packge_id`, `is_active`, `created`, `updated`) VALUES
(1, NULL, 3, NULL, 1, '2023-11-13 07:21:59', '2023-11-13 07:21:59'),
(2, NULL, 4, NULL, 1, '2023-11-13 07:25:37', '2023-11-13 07:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `pos_suppliers`
--

CREATE TABLE `pos_suppliers` (
  `id` int(11) NOT NULL,
  `pos_hub_id` int(11) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_suppliers`
--

INSERT INTO `pos_suppliers` (`id`, `pos_hub_id`, `pos_station_id`, `name`, `tel`, `email`, `created`, `updated`) VALUES
(1, NULL, 1, 'omer supplier', '0125357643', 'omar@oma.cm', '2023-11-08 09:34:18', '2023-11-08 09:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `pos_taxes`
--

CREATE TABLE `pos_taxes` (
  `id` int(11) NOT NULL,
  `pos_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_types`
--

CREATE TABLE `pos_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_types`
--

INSERT INTO `pos_types` (`id`, `name`, `photo`, `created`, `updated`) VALUES
(1, 'store', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09'),
(2, 'Restrunt', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09'),
(3, 'pharmcay', NULL, '2023-11-13 07:27:09', '2023-11-13 07:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `pos_users`
--

CREATE TABLE `pos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_users`
--

INSERT INTO `pos_users` (`id`, `name`, `email`, `pass`, `tel`, `pos_station_id`, `created`, `updated`) VALUES
(1, 'omar', 'omar@omar.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '3435253253252', 9, '2023-10-29 12:48:38', '2023-10-29 12:48:38'),
(16, 'ali', 'ali@ali.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '34324242', 2, '2023-10-30 11:24:03', '2023-10-30 11:24:03'),
(18, 'harran', 'harran@0k.com', '$2b$10$UUqCuMwPUmZP0L7.J2IiWeMdX39oX/zFN3nv8W2jzt56vumvut.H2', '2434141', 1, '2023-11-01 09:13:39', '2023-11-01 09:13:39'),
(20, 'colaa', 'cola@pepsi.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', '12224442', 1, '2023-11-01 11:36:17', '2023-11-01 11:36:17'),
(21, 'harran 1', 'harran@harran.com', '$2b$10$NSN4Wwz40UNU1ciajGmHZOmxvgPpUOabMv5J0Fej98Fkng5KO5cCC', '3435253253252', 1, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(22, 'harran 2', 'harran@harran.com', '$2b$10$9nxBACDlNJXg5TDDkZHO0eWIkEaT8NzRMKShMATNFBvisiRtdrqrq', '3435253253252', 1, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(23, 'harran 3', 'harran@harran.com', '$2b$10$Bde/la3CZN6k0H55sQ3q7.PvxJ1GV/9AzRND1IUi9uFV/o64q0TwK', '3435253253252', 1, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(24, 'harran 4', 'harran@harran.com', '$2b$10$Vn8UR2GiIx865Ren.M3CP.tbMSh5UIRKPZldW0eGW.4yG9L9EozQm', '3435253253252', 1, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(25, 'harran 5', 'harran@harran.com', '$2b$10$v8PvXuNbAJ2n3xA5.HO8zeUsWl9Rd2Eu2EgbrYjMezY8HREa2G6w2', '3435253253252', 1, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(26, 'harran 6', 'harran@harran.com', '$2b$10$XHumQ.XgmKzC5slBVB13te5qy/egV7j86hA1OrphQYUBiHqcsEJrS', '3435253253252', 1, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(27, 'harran 8', 'harran@harran.com', '$2b$10$AXAzAaq4ArP/miGP8brKJuHE2vxa6rV/sybCpB8zvRXtZUX3ct0/C', '3435253253252', 1, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(28, 'harran 9', 'harran@harran.com', '$2b$10$uZByGuKjA7ICXNTX7TuL.uRCRQqzemRpijHL/qHxujrH5vJq4jHU6', '3435253253252', 1, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(29, 'harran 10', 'harran@harran.com', '$2b$10$O40QdCefU87bgvtKWnLsFeWAXDxD4ju5EP0sAE5WhGRJLHKdh3P1O', '3435253253252', 1, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(30, 'harran 11', 'harran@harran.com', '$2b$10$hd.H6bnRxihPIKW2GpYxIu5W.UI3j0yOowA5WGv1JLWgd0jw73C0.', '3435253253252', 1, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(31, 'harran 12', 'harran@harran.com', '$2b$10$Nt7Atyfn1Idghl7fdB.QUuhYB/fGD8iT.P1njAA38NtmrSy8fRGFi', '3435253253252', 1, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(32, 'harran 13', 'harran@harran.com', '$2b$10$WfZklxJY79KWi1svogQMwOT.wBJLXFsCC5hdjkZQR2/37MtL9yYZm', '3435253253252', 1, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(33, 'harran 14', 'harran@harran.com', '$2b$10$wvCofZ6FggB5DHDJ7EprPOPUkH6EmUPXJuTXWVJimN6mTGNqTqsdO', '3435253253252', 1, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(34, 'harran 16', 'harran@harran.com', '$2b$10$dkjNgj7skcfFk0nFmEuwLuZgAV.SqSpzrGrMDwl24GV0lGqzkE0fu', '3435253253252', 1, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(35, 'harran 17', 'harran@harran.com', '$2b$10$xm8aqWm27RsG/MW9JAODje26/AfWWZH5/tQeDOWS4saZa9X0Nbo76', '3435253253252', 1, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(36, 'harran 18', 'harran@harran.com', '$2b$10$z9CuWPzP59MRCC1/AXnowOyxFuIBQIpOsga/QP5JSf9G.lam7VYfC', '3435253253252', 1, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(37, 'harran 19', 'harran@harran.com', '$2b$10$na8h3ePP6I72h5YumSSOE.NLkUzbxGySLJIHjyI5ychJFSq2jITwO', '3435253253252', 1, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(38, 'harran 20', 'harran@harran.com', '$2b$10$W8h.u6s1F4TzweaGbU/MSeOdj9n5mDfPN7DnH0GN2WD3hPda/1wge', '3435253253252', 1, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(39, 'test', 'ahmed@ahmed.com', '$2b$10$aNBfDirVdVKOuCPh2e1oOepjXeutNzkkKNfvLVw2mUPyLLaVCNmfK', '090061451', 1, '2023-12-03 08:24:08', '2023-12-03 08:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `pos_user_roles`
--

CREATE TABLE `pos_user_roles` (
  `id` int(11) NOT NULL,
  `pos_user_id` int(11) DEFAULT NULL,
  `pos_role_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_user_roles`
--

INSERT INTO `pos_user_roles` (`id`, `pos_user_id`, `pos_role_id`, `created`, `updated`) VALUES
(38, 18, 1, '2023-11-01 11:04:49', '2023-11-01 11:04:49'),
(40, 16, 1, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(41, 16, 2, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(42, 16, 3, '2023-11-01 11:08:01', '2023-11-01 11:08:01'),
(55, 1, 1, '2023-11-01 11:17:02', '2023-11-01 11:17:02'),
(58, 1, 2, '2023-11-01 11:20:24', '2023-11-01 11:20:24'),
(89, 18, 2, '2023-11-01 11:45:41', '2023-11-01 11:45:41'),
(90, 18, 3, '2023-11-01 11:45:41', '2023-11-01 11:45:41'),
(98, 20, 3, '2023-11-01 11:53:02', '2023-11-01 11:53:02'),
(99, 20, 2, '2023-11-01 12:04:04', '2023-11-01 12:04:04'),
(100, 20, 1, '2023-11-01 12:06:14', '2023-11-01 12:06:14'),
(101, 21, 1, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(102, 21, 2, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(103, 21, 3, '2023-11-01 12:08:16', '2023-11-01 12:08:16'),
(104, 22, 1, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(105, 22, 2, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(106, 22, 3, '2023-11-01 12:08:20', '2023-11-01 12:08:20'),
(107, 23, 1, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(108, 23, 2, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(109, 23, 3, '2023-11-01 12:08:35', '2023-11-01 12:08:35'),
(110, 24, 1, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(111, 24, 2, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(112, 24, 3, '2023-11-01 12:08:42', '2023-11-01 12:08:42'),
(113, 25, 1, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(114, 25, 2, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(115, 25, 3, '2023-11-01 12:08:54', '2023-11-01 12:08:54'),
(116, 26, 1, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(117, 26, 2, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(118, 26, 3, '2023-11-01 12:08:55', '2023-11-01 12:08:55'),
(119, 27, 1, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(120, 27, 2, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(121, 27, 3, '2023-11-01 12:09:00', '2023-11-01 12:09:00'),
(122, 28, 1, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(123, 28, 2, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(124, 28, 3, '2023-11-01 12:09:02', '2023-11-01 12:09:02'),
(125, 29, 1, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(126, 29, 2, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(127, 29, 3, '2023-11-01 12:09:07', '2023-11-01 12:09:07'),
(128, 30, 1, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(129, 30, 2, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(130, 30, 3, '2023-11-01 12:09:09', '2023-11-01 12:09:09'),
(131, 31, 1, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(132, 31, 2, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(133, 31, 3, '2023-11-01 12:09:11', '2023-11-01 12:09:11'),
(134, 32, 1, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(135, 32, 2, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(136, 32, 3, '2023-11-01 12:09:13', '2023-11-01 12:09:13'),
(137, 33, 1, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(138, 33, 2, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(139, 33, 3, '2023-11-01 12:09:15', '2023-11-01 12:09:15'),
(140, 34, 1, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(141, 34, 2, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(142, 34, 3, '2023-11-01 12:09:17', '2023-11-01 12:09:17'),
(143, 35, 1, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(144, 35, 2, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(145, 35, 3, '2023-11-01 12:09:19', '2023-11-01 12:09:19'),
(146, 36, 1, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(147, 36, 2, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(148, 36, 3, '2023-11-01 12:09:20', '2023-11-01 12:09:20'),
(149, 37, 1, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(150, 37, 2, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(151, 37, 3, '2023-11-01 12:09:22', '2023-11-01 12:09:22'),
(152, 38, 1, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(153, 38, 2, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(154, 38, 3, '2023-11-01 12:09:27', '2023-11-01 12:09:27'),
(155, 39, 1, '2023-12-03 08:24:08', '2023-12-03 08:24:08'),
(156, 39, 3, '2023-12-03 08:24:08', '2023-12-03 08:24:08'),
(157, 39, 7, '2023-12-03 08:24:08', '2023-12-03 08:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pos_kitchen_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pos_kitchen_id`, `category_id`, `name`, `price`, `img`, `created`, `updated`) VALUES
(5, NULL, 2, 'airpods pro series 2 ', '500.00', NULL, '2023-11-05 09:30:09', '2023-11-05 09:30:09'),
(6, NULL, 2, 'normal mouse', '250.00', NULL, '2023-11-05 09:30:09', '2023-11-05 09:30:09'),
(7, 5, 7, 'pepsi', '129.00', NULL, '2023-11-22 08:14:45', '2023-11-22 08:14:45'),
(8, 4, 8, 'Burger', '400.00', NULL, '2023-11-22 08:14:45', '2023-11-22 08:14:45'),
(9, 5, 7, 'coke cola', '130.00', NULL, '2023-11-22 08:14:45', '2023-11-22 08:14:45'),
(10, 4, 8, 'french fries', '80.00', NULL, '2023-11-22 08:15:29', '2023-11-22 08:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_imges`
--

CREATE TABLE `product_imges` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_agents`
--

CREATE TABLE `purchases_agents` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_order`
--

CREATE TABLE `purchases_order` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT current_timestamp(),
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases_order`
--

INSERT INTO `purchases_order` (`id`, `supplier_id`, `excution_time`, `created`, `updated`) VALUES
(2, 1, '2023-11-09 07:31:00', '2023-11-09 07:31:00', '2023-11-09 07:31:00'),
(3, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(4, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(5, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24'),
(6, 1, '2023-11-09 07:31:24', '2023-11-09 07:31:24', '2023-11-09 07:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_order_detailes`
--

CREATE TABLE `purchases_order_detailes` (
  `id` int(11) NOT NULL,
  `purchases_order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sold_qty` int(11) DEFAULT 0,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases_order_detailes`
--

INSERT INTO `purchases_order_detailes` (`id`, `purchases_order_id`, `product_id`, `qty`, `sold_qty`, `unit_price`, `created`, `updated`) VALUES
(4, 2, 6, 392, 120, '310.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51'),
(5, 4, 5, 240, 200, '120.00', '2023-11-09 07:39:51', '2023-11-09 07:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `total_balance` int(11) NOT NULL,
  `paid_balance` int(11) NOT NULL,
  `excution_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created`, `updated`) VALUES
(2, 'admin', '2023-12-05 06:48:02', '2023-12-05 06:48:02'),
(3, 'manager', '2023-12-05 08:09:12', '2023-12-05 08:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `salary_items`
--

CREATE TABLE `salary_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `salary_item_type` int(11) DEFAULT NULL,
  `start_degree` int(11) DEFAULT NULL,
  `is_percentage` tinyint(1) DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` int(11) NOT NULL,
  `custmor_id` int(11) DEFAULT NULL,
  `excution_time` timestamp NULL DEFAULT current_timestamp(),
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_orders`
--

INSERT INTO `sale_orders` (`id`, `custmor_id`, `excution_time`, `created`, `updated`) VALUES
(3, 2, '2023-11-06 09:18:40', '2023-11-06 09:18:40', '2023-11-06 09:18:40'),
(30, 18, '2023-11-07 13:09:43', '2023-11-07 13:09:43', '2023-11-07 13:09:43'),
(31, 19, '2023-11-07 13:11:45', '2023-11-07 13:11:45', '2023-11-07 13:11:45'),
(32, 20, '2023-11-07 13:13:07', '2023-11-07 13:13:07', '2023-11-07 13:13:07'),
(33, 2, '2023-11-07 13:59:31', '2023-11-07 13:59:31', '2023-11-07 13:59:31'),
(34, 21, '2023-11-22 10:45:52', '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(35, 22, '2023-11-23 06:36:32', '2023-11-23 06:36:32', '2023-11-23 06:36:32'),
(36, 23, '2023-11-23 11:19:07', '2023-11-23 11:19:07', '2023-11-23 11:19:07'),
(37, 24, '2023-11-23 11:21:43', '2023-11-23 11:21:43', '2023-11-23 11:21:43'),
(38, 25, '2023-11-23 14:02:58', '2023-11-23 14:02:58', '2023-11-23 14:02:58'),
(39, 26, '2023-11-23 14:05:05', '2023-11-23 14:05:05', '2023-11-23 14:05:05'),
(40, 27, '2023-11-23 14:25:07', '2023-11-23 14:25:07', '2023-11-23 14:25:07'),
(41, 28, '2023-11-30 08:08:30', '2023-11-30 08:08:30', '2023-11-30 08:08:30'),
(42, 28, '2023-11-30 08:12:59', '2023-11-30 08:12:59', '2023-11-30 08:12:59'),
(49, NULL, '2023-11-30 09:54:49', '2023-11-30 09:54:49', '2023-11-30 09:54:49'),
(50, NULL, '2023-11-30 11:09:05', '2023-11-30 11:09:05', '2023-11-30 11:09:05'),
(51, NULL, '2023-11-30 11:45:57', '2023-11-30 11:45:57', '2023-11-30 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_details`
--

CREATE TABLE `sale_order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) UNSIGNED DEFAULT NULL,
  `checked` tinyint(1) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_order_details`
--

INSERT INTO `sale_order_details` (`id`, `product_id`, `sale_order_id`, `qty`, `unit_price`, `checked`, `created`, `updated`) VALUES
(1, 6, 3, '4', NULL, 0, '2023-11-06 09:18:58', '2023-11-06 09:18:58'),
(53, 9, 34, '2', NULL, 0, '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(54, 7, 34, '3', NULL, 0, '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(55, 10, 34, '1', NULL, 0, '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(56, 8, 34, '1', NULL, 0, '2023-11-22 10:45:52', '2023-11-22 10:45:52'),
(61, 8, 37, '6', '320.00', 0, '2023-11-23 11:21:43', '2023-11-23 11:21:43'),
(62, 10, 37, '2', '80.00', 0, '2023-11-23 11:21:43', '2023-11-23 11:21:43'),
(63, 9, 38, '1', '130.00', 0, '2023-11-23 14:02:58', '2023-11-23 14:02:58'),
(64, 7, 38, '1', '129.00', 0, '2023-11-23 14:02:58', '2023-11-23 14:02:58'),
(65, 8, 39, '2', '320.00', 0, '2023-11-23 14:05:05', '2023-11-23 14:05:05'),
(66, 10, 39, '1', '80.00', 0, '2023-11-23 14:05:05', '2023-11-23 14:05:05'),
(67, 10, 40, '1', '80.00', 0, '2023-11-23 14:25:07', '2023-11-23 14:25:07'),
(68, 8, 40, '1', '320.00', 0, '2023-11-23 14:25:07', '2023-11-23 14:25:07'),
(69, 7, 41, '2', '142.00', 0, '2023-11-30 08:08:30', '2023-11-30 08:08:30'),
(70, 7, 42, '1', '142.00', 0, '2023-11-30 08:12:59', '2023-11-30 08:12:59'),
(81, 7, 49, '1', '141.90', 0, '2023-11-30 09:54:49', '2023-11-30 09:54:49'),
(82, 7, 50, '1', '141.90', 0, '2023-11-30 11:09:05', '2023-11-30 11:09:05'),
(83, 8, 50, '1', '352.00', 0, '2023-11-30 11:09:05', '2023-11-30 11:09:05'),
(84, 7, 51, '1', '141.90', 0, '2023-11-30 11:45:57', '2023-11-30 11:45:57'),
(85, 9, 51, '1', '143.00', 0, '2023-11-30 11:45:57', '2023-11-30 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `browser_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `socket_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT current_timestamp(),
  `finish_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_features`
--

CREATE TABLE `subscription_features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_features`
--

INSERT INTO `subscription_features` (`id`, `name`, `created`, `updated`) VALUES
(1, 'test', '2023-12-07 13:57:42', '2023-12-07 13:57:42'),
(2, 'test2', '2023-12-07 13:57:42', '2023-12-07 13:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_packages`
--

CREATE TABLE `subscription_packages` (
  `id` int(11) NOT NULL,
  `package_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription_packages`
--

INSERT INTO `subscription_packages` (`id`, `package_type_id`, `name`, `descr`, `duration`, `created`, `updated`) VALUES
(1, NULL, 'sub 1', 'fdfdsafdsvmdsfposmo', NULL, '2023-11-13 09:37:00', '2023-11-13 09:37:00'),
(2, NULL, 'gga', 'ffsisojsdpkpo dofspkkfp', NULL, '2023-11-19 14:23:55', '2023-11-19 14:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_packages_features`
--

CREATE TABLE `subscription_packages_features` (
  `id` int(11) NOT NULL,
  `subscription_feature_id` int(11) DEFAULT NULL,
  `subscription_package_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_packages_features`
--

INSERT INTO `subscription_packages_features` (`id`, `subscription_feature_id`, `subscription_package_id`, `created`, `updated`) VALUES
(1, 1, 1, '2023-12-07 14:14:17', '2023-12-07 14:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_package_periods`
--

CREATE TABLE `subscription_package_periods` (
  `id` int(11) NOT NULL,
  `subscription_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription_package_periods`
--

INSERT INTO `subscription_package_periods` (`id`, `subscription_type_id`, `name`, `descr`, `price`, `icon`, `created`, `updated`) VALUES
(1, 1, 'period', 'fd mkmslkmsm sldm', '129.00', NULL, '2023-11-13 09:37:21', '2023-11-13 09:37:21'),
(2, 1, 'fkfs ', 'davdavd sdldok', NULL, NULL, '2023-11-19 14:24:52', '2023-11-19 14:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `pos_station_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_chart_of_accounts`
--

CREATE TABLE `system_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `user_type_id`, `created`, `updated`) VALUES
(1, 'ahmed', 'ahemd@ahmed.com', '$2b$10$KRfaeskpxVQ0PXdqys2uDOe3ul3yVv5seE1TxzdlND2B1lVOuyegS', 1, '2023-10-29 13:57:54', '2023-10-29 13:57:54'),
(7, 'mohamed', 'test@test.com', '$2b$10$BQmv6toTPAJF/9ZXeUg8mO8flo2C.QXaUumjQmvAoJqMMQhC8s/7O', 2, '2023-11-13 07:57:09', '2023-11-13 07:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 2),
(2, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created`, `updated`) VALUES
(1, 'admin', '2023-11-27 08:47:25', '2023-12-05 08:11:12'),
(2, 'manager', '2023-11-27 08:47:25', '2023-12-05 08:11:06');

-- --------------------------------------------------------

--
-- Structure for view `fixed_assets_view`
--
DROP TABLE IF EXISTS `fixed_assets_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fixed_assets_view`  AS SELECT `fiexed_assets`.`pos_station_id` AS `pos_staion_id`, `fiexed_assets`.`id` AS `fixed_asset_id`, `fiexed_assets`.`pos_hub_id` AS `fiexed_assets_pos_hub_id`, `fiexed_assets`.`name` AS `assest_name`, `fixed_asset_types`.`is_deprecated` AS `fiex_asset_deprcated`, `fixed_asset_types`.`type` AS `asset_type` FROM (`fiexed_assets` join `fixed_asset_types` on(`fiexed_assets`.`fixed_asset_type_id` = `fixed_asset_types`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive_files`
--
ALTER TABLE `archive_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archive_files_types_1` (`archive_file_type_id`),
  ADD KEY `fk_archive_files_archive_folders_1` (`archive_folder_id`);

--
-- Indexes for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive_folders`
--
ALTER TABLE `archive_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_archive_folders_archive_shelves_1` (`archive_shelve_id`);

--
-- Indexes for table `archive_shelves`
--
ALTER TABLE `archive_shelves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browsers`
--
ALTER TABLE `browsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_browsers_users_1` (`user_id`);

--
-- Indexes for table `cash_accounts`
--
ALTER TABLE `cash_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custmors`
--
ALTER TABLE `custmors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `fiexed_assets`
--
ALTER TABLE `fiexed_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_2` (`pos_station_id`),
  ADD KEY `fk_fiexed_assets_3` (`fixed_asset_type_id`);

--
-- Indexes for table `fixed_asset_types`
--
ALTER TABLE `fixed_asset_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_attendance_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_awards`
--
ALTER TABLE `hr_awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_awards_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_awards_hr_award_types_1` (`hr_award_type_id`);

--
-- Indexes for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_complains`
--
ALTER TABLE `hr_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_complains_hr_complain_types_1` (`hr_complain_type_id`);

--
-- Indexes for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_departments_users_1` (`manager_user_id`);

--
-- Indexes for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_department_kpis_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_employees`
--
ALTER TABLE `hr_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_id` (`job_title_id`);

--
-- Indexes for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employees_working_hours_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employees_working_hours_hr_weekdays_1` (`hr_weekday_id`);

--
-- Indexes for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_departments_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_departments_hr_departments_1` (`hr_department_id`),
  ADD KEY `fk_hr_employee_departments_hr_job_titles_1` (`hr_job_title_id`);

--
-- Indexes for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_files_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_department_kpis_1` (`hr_department_kpi_id`);

--
-- Indexes for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_transfers_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_1` (`from_hr_department_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_2` (`to_hr_department_id`);

--
-- Indexes for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_warnings_hr_employees_1` (`hr_employee_id`);

--
-- Indexes for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_holiday_departments_hr_holidays_1` (`hr_hoilday_id`),
  ADD KEY `fk_hr_holiday_departments_hr_departments_1` (`hr_department_id`);

--
-- Indexes for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_leaves_hr_employees_1` (`hr_employee_id`),
  ADD KEY `fk_hr_leaves_hr_leave_types_1` (`hr_leave_type_id`);

--
-- Indexes for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_weekdays`
--
ALTER TABLE `hr_weekdays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Indexes for table `main_chart_of_account`
--
ALTER TABLE `main_chart_of_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_areas_marketing_campaigns_1` (`marketing_campaing_id`);

--
-- Indexes for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_channels_1` (`marketing_channel_id`),
  ADD KEY `fk_marketing_campaign_channels_marketing_campaigns_1` (`marketing_campain_id`);

--
-- Indexes for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_events_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketing_campaign_campaign_channels_1` (`marketing_campaign_channel_id`);

--
-- Indexes for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_campaign_campaign_channel_events_1` (`marketing_campaign_channel_event_id`),
  ADD KEY `fk_marketing_campaign_marketing_channel_levels_1` (`marketing_channel_level_id`);

--
-- Indexes for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_channel_levels_marketing_channels_1` (`marketing_channel_id`);

--
-- Indexes for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_areas_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_areas_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_processes_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_team_members_1` (`marketing_survey_team_member_id`),
  ADD KEY `fk_marketing_survey_processes_marketing_areas_1` (`marketing_area_id`);

--
-- Indexes for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_marketing_survey_processes_1` (`marketing_survey_process_id`),
  ADD KEY `fk_marketing_marketing_survey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_questions_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_survey_questions_marketing_survey_question_types
_1` (`marketing_survey_question_type_id`);

--
-- Indexes for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survvey_questions_1` (`marketing_survey_question_id`);

--
-- Indexes for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_sbers_marketing_surveys_1` (`marketing_survey_id`),
  ADD KEY `fk_marketing_sug_team_members_1` (`marketing_team_member_id`);

--
-- Indexes for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketing_survey_teams_marketing_areas_1` (`marketing_area_id`),
  ADD KEY `fk_marketiey_team_members_1` (`marketing_survey_team_member_id`);

--
-- Indexes for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_types`
--
ALTER TABLE `package_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period_types`
--
ALTER TABLE `period_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_cash_accounts`
--
ALTER TABLE `pos_cash_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_cash_drawer_reconciliation`
--
ALTER TABLE `pos_cash_drawer_reconciliation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_user_id` (`pos_user_id`);

--
-- Indexes for table `pos_categories`
--
ALTER TABLE `pos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_chart_of_accounts`
--
ALTER TABLE `pos_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `pos_employees`
--
ALTER TABLE `pos_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `pos_job_titles` (`pos_job_titles`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `pos_employees_ibfk_4` (`hr_department_id`),
  ADD KEY `employee_degree_id` (`employee_degree_id`);

--
-- Indexes for table `pos_employee_degrees`
--
ALTER TABLE `pos_employee_degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_hr_attendance`
--
ALTER TABLE `pos_hr_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_attendance_hr_employees_1_copy_1` (`hr_employee_id`);

--
-- Indexes for table `pos_hr_awards`
--
ALTER TABLE `pos_hr_awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_awards_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_hr_awards_hr_award_types_1_copy_1` (`hr_award_type_id`);

--
-- Indexes for table `pos_hr_award_types`
--
ALTER TABLE `pos_hr_award_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_hr_complains`
--
ALTER TABLE `pos_hr_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_complains_hr_complain_types_1_copy_1` (`hr_complain_type_id`),
  ADD KEY `hr_employee_id` (`hr_employee_id`);

--
-- Indexes for table `pos_hr_complain_types`
--
ALTER TABLE `pos_hr_complain_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_hr_departments`
--
ALTER TABLE `pos_hr_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `fk_hr_departments_users_1_copy_1` (`manager_user_id`);

--
-- Indexes for table `pos_hr_department_kpis`
--
ALTER TABLE `pos_hr_department_kpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `fk_hr_department_kpis_hr_departments_1_copy_1` (`hr_department_id`);

--
-- Indexes for table `pos_hr_employees`
--
ALTER TABLE `pos_hr_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_hr_employees_working_hours`
--
ALTER TABLE `pos_hr_employees_working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_employee_id` (`hr_employee_id`),
  ADD KEY `_copy_1` (`hr_weekday_id`);

--
-- Indexes for table `pos_hr_employee_files`
--
ALTER TABLE `pos_hr_employee_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_files_hr_employees_1_copy_1` (`hr_employee_id`);

--
-- Indexes for table `pos_hr_employee_kpi_records`
--
ALTER TABLE `pos_hr_employee_kpi_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_kpi_records_hr_department_kpis_1_copy_1` (`hr_department_kpi_id`);

--
-- Indexes for table `pos_hr_employee_transfers`
--
ALTER TABLE `pos_hr_employee_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_transfers_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_1_copy_1` (`from_hr_department_id`),
  ADD KEY `fk_hr_employee_transfers_hr_departments_2_copy_1` (`to_hr_department_id`);

--
-- Indexes for table `pos_hr_employee_warnings`
--
ALTER TABLE `pos_hr_employee_warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_employee_warnings_hr_employees_1_copy_1` (`hr_employee_id`);

--
-- Indexes for table `pos_hr_holidays`
--
ALTER TABLE `pos_hr_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_hr_holiday_departments`
--
ALTER TABLE `pos_hr_holiday_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_holiday_departments_hr_holidays_1_copy_1` (`hr_hoilday_id`),
  ADD KEY `fk_hr_holiday_departments_hr_departments_1_copy_1` (`hr_department_id`);

--
-- Indexes for table `pos_hr_leaves`
--
ALTER TABLE `pos_hr_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hr_leaves_hr_employees_1_copy_1` (`hr_employee_id`),
  ADD KEY `fk_hr_leaves_hr_leave_types_1_copy_1` (`hr_leave_type_id`);

--
-- Indexes for table `pos_hr_leave_types`
--
ALTER TABLE `pos_hr_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_hr_shift`
--
ALTER TABLE `pos_hr_shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `pos_hr_weekdays`
--
ALTER TABLE `pos_hr_weekdays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_hubs`
--
ALTER TABLE `pos_hubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_type_id` (`pos_type_id`);

--
-- Indexes for table `pos_inventories`
--
ALTER TABLE `pos_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `_copy_1` (`pos_inevntroy_type_id`);

--
-- Indexes for table `pos_inventory_items`
--
ALTER TABLE `pos_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pos_inventory_types`
--
ALTER TABLE `pos_inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_job_titles`
--
ALTER TABLE `pos_job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_kitchens`
--
ALTER TABLE `pos_kitchens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `kitchen_type_id` (`kitchen_type_id`);

--
-- Indexes for table `pos_kitchen_manufacturing_logs`
--
ALTER TABLE `pos_kitchen_manufacturing_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_kitchen_raw_materials`
--
ALTER TABLE `pos_kitchen_raw_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_1` (`pos_station_id`);

--
-- Indexes for table `pos_kitchen_types`
--
ALTER TABLE `pos_kitchen_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_managers`
--
ALTER TABLE `pos_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_managers_detailes`
--
ALTER TABLE `pos_managers_detailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_managers_subscription`
--
ALTER TABLE `pos_managers_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_monthly_deduction_details`
--
ALTER TABLE `pos_monthly_deduction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_monthly_salary_details_emps_2` (`emp_id`) USING BTREE,
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_monthly_salaries`
--
ALTER TABLE `pos_monthly_salaries`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_monthly_salaries_emps_1` (`emp_id`) USING BTREE;

--
-- Indexes for table `pos_monthly_salary_details`
--
ALTER TABLE `pos_monthly_salary_details`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_monthly_salary_details_emps_1` (`emp_id`) USING BTREE,
  ADD KEY `fk_monthly_salary_details_salary_items_1` (`salary_item_id`) USING BTREE,
  ADD KEY `fk_monthly_salary_details_transactions_1` (`transaction_id`) USING BTREE;

--
-- Indexes for table `pos_montly_delatils`
--
ALTER TABLE `pos_montly_delatils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_item_id` (`pos_item_id`),
  ADD KEY `pos_employee_id` (`pos_employee_id`);

--
-- Indexes for table `pos_price_list_products`
--
ALTER TABLE `pos_price_list_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_price_list_id` (`pos_station_price_list_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pos_printers`
--
ALTER TABLE `pos_printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_floor_id` (`pos_floor_id`),
  ADD KEY `pos_table_id` (`pos_table_id`),
  ADD KEY `pos_kitchen_id` (`pos_kitchen_id`);

--
-- Indexes for table `pos_products`
--
ALTER TABLE `pos_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_copy_1` (`pos_kitchen_id`),
  ADD KEY `pos_category_id` (`pos_category_id`);

--
-- Indexes for table `pos_purchases_order`
--
ALTER TABLE `pos_purchases_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `pos_purchases_order_detailes`
--
ALTER TABLE `pos_purchases_order_detailes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_purchases_order_detailes_ibfk_1` (`purchases_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pos_roles`
--
ALTER TABLE `pos_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_salary_deduction`
--
ALTER TABLE `pos_salary_deduction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pos_salary_item`
--
ALTER TABLE `pos_salary_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `pos_salary_items_branches`
--
ALTER TABLE `pos_salary_items_branches`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_salary_items_branches_salary_items_1` (`salary_item_id`) USING BTREE,
  ADD KEY `salary_items_branches_ibfk_3` (`level_three_chart_of_account_id`) USING BTREE,
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_salary_items_types`
--
ALTER TABLE `pos_salary_items_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pos_salary_item_degrees`
--
ALTER TABLE `pos_salary_item_degrees`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_salary_item_degrees_salary_items_1` (`salary_item_id`) USING BTREE,
  ADD KEY `degree_id` (`degree_id`);

--
-- Indexes for table `pos_sale_order_details`
--
ALTER TABLE `pos_sale_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_order_id` (`sale_order_id`);

--
-- Indexes for table `pos_share_holders`
--
ALTER TABLE `pos_share_holders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`),
  ADD KEY `_copy_1` (`pos_station_id`);

--
-- Indexes for table `pos_stations`
--
ALTER TABLE `pos_stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_manager_id` (`pos_manager_id`),
  ADD KEY `pos_type_id` (`pos_type_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `pos_stations_price_list`
--
ALTER TABLE `pos_stations_price_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_stations_id` (`pos_stations_id`),
  ADD KEY `_copy_1` (`price_list_type_id`);

--
-- Indexes for table `pos_station_floors`
--
ALTER TABLE `pos_station_floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_station_floors_shalves`
--
ALTER TABLE `pos_station_floors_shalves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_station_floor_tables`
--
ALTER TABLE `pos_station_floor_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- Indexes for table `pos_station_price_list_type`
--
ALTER TABLE `pos_station_price_list_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_subscriptions`
--
ALTER TABLE `pos_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`),
  ADD KEY `_copy_1` (`subscription_packge_id`),
  ADD KEY `pos_hub_id` (`pos_hub_id`);

--
-- Indexes for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_taxes`
--
ALTER TABLE `pos_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_type_id` (`pos_type_id`);

--
-- Indexes for table `pos_types`
--
ALTER TABLE `pos_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_users`
--
ALTER TABLE `pos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `pos_user_roles`
--
ALTER TABLE `pos_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_user_id` (`pos_user_id`),
  ADD KEY `pos_role_id` (`pos_role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `pos_kitchen_id` (`pos_kitchen_id`);

--
-- Indexes for table `product_imges`
--
ALTER TABLE `product_imges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchases_agents`
--
ALTER TABLE `purchases_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases_order`
--
ALTER TABLE `purchases_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases_order_detailes`
--
ALTER TABLE `purchases_order_detailes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_order_id` (`purchases_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_items`
--
ALTER TABLE `salary_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `salary_item_type` (`salary_item_type`) USING BTREE,
  ADD KEY `id` (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custmor_id` (`custmor_id`);

--
-- Indexes for table `sale_order_details`
--
ALTER TABLE `sale_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_order_id` (`sale_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_browsers_1` (`browser_id`);

--
-- Indexes for table `subscription_features`
--
ALTER TABLE `subscription_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_copy_23` (`package_type_id`);

--
-- Indexes for table `subscription_packages_features`
--
ALTER TABLE `subscription_packages_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_feature_id` (`subscription_feature_id`),
  ADD KEY `subscription_package_id` (`subscription_package_id`);

--
-- Indexes for table `subscription_package_periods`
--
ALTER TABLE `subscription_package_periods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_type_id` (`subscription_type_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_station_id` (`pos_station_id`);

--
-- Indexes for table `system_chart_of_accounts`
--
ALTER TABLE `system_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_files`
--
ALTER TABLE `archive_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_file_types`
--
ALTER TABLE `archive_file_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_folders`
--
ALTER TABLE `archive_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_shelves`
--
ALTER TABLE `archive_shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `browsers`
--
ALTER TABLE `browsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_accounts`
--
ALTER TABLE `cash_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custmors`
--
ALTER TABLE `custmors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fiexed_assets`
--
ALTER TABLE `fiexed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixed_asset_types`
--
ALTER TABLE `fixed_asset_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_attendance`
--
ALTER TABLE `hr_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_awards`
--
ALTER TABLE `hr_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_award_types`
--
ALTER TABLE `hr_award_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complains`
--
ALTER TABLE `hr_complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_complain_types`
--
ALTER TABLE `hr_complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_departments`
--
ALTER TABLE `hr_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_department_kpis`
--
ALTER TABLE `hr_department_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employees`
--
ALTER TABLE `hr_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employees_working_hours`
--
ALTER TABLE `hr_employees_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_departments`
--
ALTER TABLE `hr_employee_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_files`
--
ALTER TABLE `hr_employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_kpi_records`
--
ALTER TABLE `hr_employee_kpi_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_transfers`
--
ALTER TABLE `hr_employee_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_warnings`
--
ALTER TABLE `hr_employee_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holidays`
--
ALTER TABLE `hr_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_holiday_departments`
--
ALTER TABLE `hr_holiday_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_titles`
--
ALTER TABLE `hr_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_leave_types`
--
ALTER TABLE `hr_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_weekdays`
--
ALTER TABLE `hr_weekdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_chart_of_account`
--
ALTER TABLE `main_chart_of_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_channels`
--
ALTER TABLE `marketing_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketing_surveys`
--
ALTER TABLE `marketing_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketing_survey_question_types`
--
ALTER TABLE `marketing_survey_question_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `marketing_team_members`
--
ALTER TABLE `marketing_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_types`
--
ALTER TABLE `package_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `period_types`
--
ALTER TABLE `period_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_cash_accounts`
--
ALTER TABLE `pos_cash_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_cash_drawer_reconciliation`
--
ALTER TABLE `pos_cash_drawer_reconciliation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_categories`
--
ALTER TABLE `pos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_chart_of_accounts`
--
ALTER TABLE `pos_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_employees`
--
ALTER TABLE `pos_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pos_employee_degrees`
--
ALTER TABLE `pos_employee_degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_attendance`
--
ALTER TABLE `pos_hr_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_awards`
--
ALTER TABLE `pos_hr_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_award_types`
--
ALTER TABLE `pos_hr_award_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_complains`
--
ALTER TABLE `pos_hr_complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_complain_types`
--
ALTER TABLE `pos_hr_complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_departments`
--
ALTER TABLE `pos_hr_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_department_kpis`
--
ALTER TABLE `pos_hr_department_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_employees`
--
ALTER TABLE `pos_hr_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_hr_employees_working_hours`
--
ALTER TABLE `pos_hr_employees_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_employee_files`
--
ALTER TABLE `pos_hr_employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_employee_kpi_records`
--
ALTER TABLE `pos_hr_employee_kpi_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_employee_transfers`
--
ALTER TABLE `pos_hr_employee_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_employee_warnings`
--
ALTER TABLE `pos_hr_employee_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_hr_holidays`
--
ALTER TABLE `pos_hr_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_holiday_departments`
--
ALTER TABLE `pos_hr_holiday_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_leaves`
--
ALTER TABLE `pos_hr_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hr_leave_types`
--
ALTER TABLE `pos_hr_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_hr_shift`
--
ALTER TABLE `pos_hr_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_hr_weekdays`
--
ALTER TABLE `pos_hr_weekdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_hubs`
--
ALTER TABLE `pos_hubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pos_inventories`
--
ALTER TABLE `pos_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_inventory_items`
--
ALTER TABLE `pos_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pos_inventory_types`
--
ALTER TABLE `pos_inventory_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_job_titles`
--
ALTER TABLE `pos_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_kitchens`
--
ALTER TABLE `pos_kitchens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_kitchen_manufacturing_logs`
--
ALTER TABLE `pos_kitchen_manufacturing_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_kitchen_raw_materials`
--
ALTER TABLE `pos_kitchen_raw_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_kitchen_types`
--
ALTER TABLE `pos_kitchen_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_managers`
--
ALTER TABLE `pos_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_managers_detailes`
--
ALTER TABLE `pos_managers_detailes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_managers_subscription`
--
ALTER TABLE `pos_managers_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_monthly_deduction_details`
--
ALTER TABLE `pos_monthly_deduction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_monthly_salaries`
--
ALTER TABLE `pos_monthly_salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_monthly_salary_details`
--
ALTER TABLE `pos_monthly_salary_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_price_list_products`
--
ALTER TABLE `pos_price_list_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pos_printers`
--
ALTER TABLE `pos_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pos_products`
--
ALTER TABLE `pos_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pos_purchases_order`
--
ALTER TABLE `pos_purchases_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_purchases_order_detailes`
--
ALTER TABLE `pos_purchases_order_detailes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_roles`
--
ALTER TABLE `pos_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pos_salary_deduction`
--
ALTER TABLE `pos_salary_deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_salary_item`
--
ALTER TABLE `pos_salary_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_salary_items_branches`
--
ALTER TABLE `pos_salary_items_branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscription_features`
--
ALTER TABLE `subscription_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscription_packages_features`
--
ALTER TABLE `subscription_packages_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marketing_campaign_areas`
--
ALTER TABLE `marketing_campaign_areas`
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_areas_marketing_campaigns_1` FOREIGN KEY (`marketing_campaing_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channels`
--
ALTER TABLE `marketing_campaign_channels`
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_campaigns_1` FOREIGN KEY (`marketing_campain_id`) REFERENCES `marketing_campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_channels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_events`
--
ALTER TABLE `marketing_campaign_channel_events`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channels_1` FOREIGN KEY (`marketing_campaign_channel_id`) REFERENCES `marketing_campaign_channels` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_events_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_campaign_channel_event_levels`
--
ALTER TABLE `marketing_campaign_channel_event_levels`
  ADD CONSTRAINT `fk_marketing_campaign_campaign_channel_events_1` FOREIGN KEY (`marketing_campaign_channel_event_id`) REFERENCES `marketing_campaign_channel_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_campaign_marketing_channel_levels_1` FOREIGN KEY (`marketing_channel_level_id`) REFERENCES `marketing_channel_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_channel_levels`
--
ALTER TABLE `marketing_channel_levels`
  ADD CONSTRAINT `fk_marketing_channel_levels_marketing_channels_1` FOREIGN KEY (`marketing_channel_id`) REFERENCES `marketing_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_areas`
--
ALTER TABLE `marketing_survey_areas`
  ADD CONSTRAINT `fk_marketing_survey_areas_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marketing_survey_areas_ibfk_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_campaigns` (`id`);

--
-- Constraints for table `marketing_survey_processes`
--
ALTER TABLE `marketing_survey_processes`
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_areas_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_areas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_processes_marketing_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_processes_answers`
--
ALTER TABLE `marketing_survey_processes_answers`
  ADD CONSTRAINT `fk_marketing_marketing_survey_processes_1` FOREIGN KEY (`marketing_survey_process_id`) REFERENCES `marketing_survey_processes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_marketing_survey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_questions`
--
ALTER TABLE `marketing_survey_questions`
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_survey_question_types
_1` FOREIGN KEY (`marketing_survey_question_type_id`) REFERENCES `marketing_survey_question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_survey_questions_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_question_options`
--
ALTER TABLE `marketing_survey_question_options`
  ADD CONSTRAINT `fk_marketing_survvey_questions_1` FOREIGN KEY (`marketing_survey_question_id`) REFERENCES `marketing_survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_members`
--
ALTER TABLE `marketing_survey_team_members`
  ADD CONSTRAINT `fk_marketing_sbers_marketing_surveys_1` FOREIGN KEY (`marketing_survey_id`) REFERENCES `marketing_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_marketing_sug_team_members_1` FOREIGN KEY (`marketing_team_member_id`) REFERENCES `marketing_team_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marketing_survey_team_member_areas`
--
ALTER TABLE `marketing_survey_team_member_areas`
  ADD CONSTRAINT `fk_marketiey_team_members_1` FOREIGN KEY (`marketing_survey_team_member_id`) REFERENCES `marketing_survey_team_members` (`id`),
  ADD CONSTRAINT `marketing_survey_team_member_areas_ibfk_1` FOREIGN KEY (`marketing_area_id`) REFERENCES `marketing_survey_areas` (`id`);

--
-- Constraints for table `subscription_packages_features`
--
ALTER TABLE `subscription_packages_features`
  ADD CONSTRAINT `fk_subscription_packages_features_subscription_features_1` FOREIGN KEY (`subscription_feature_id`) REFERENCES `subscription_features` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_subscription_packages_features_subscription_packages_1` FOREIGN KEY (`subscription_package_id`) REFERENCES `subscription_packages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `_copy_34` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `seo-afro`
--
CREATE DATABASE IF NOT EXISTS `seo-afro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `seo-afro`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'الخرطوم', 'ali@gmail.com', '0985632287', '2023-08-06 05:39:26', '2023-08-06 05:39:26'),
(4, 'mohamed', 'dxmohamedxd@gmail.com', '65567', '2023-08-06 09:29:30', '2023-08-07 16:29:52'),
(5, 'نيالا', 'khalid@gmai.com', '095678832', '2023-08-09 03:17:18', '2023-08-09 03:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_01_074516_create_services_table', 1),
(6, '2023_08_06_080205_create_contacts_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 3),
(14, '2023_08_14_110041_create_shetabit_visits_table', 4),
(17, '2023_08_15_083805_create_visitors_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'A14', 'A 14  sumsung', 'service/e5.jpg', '2023-08-01 07:54:43', '2023-08-09 10:07:27'),
(5, 'iphone', 'A 14 sumsung', 'service/e7.jpg', '2023-08-01 18:37:28', '2023-08-09 10:08:00'),
(7, 'itel', 'item rt', 'service/e3.jpg', '2023-08-09 06:28:13', '2023-08-09 09:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `shetabit_visits`
--

CREATE TABLE `shetabit_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shetabit_visits`
--

INSERT INTO `shetabit_visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitor_id`, `visitor_type`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://127.0.0.1:8000/visitor', 'http://127.0.0.1:8000/visitor', '[\"ar-ae\",\"ar\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"115\\\", \\\"Chromium\\\";v=\\\"115\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/115.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/visitor\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"ar-AE,ar;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlppNWVaTFh1cG1XMDd6NGdMRElEVWc9PSIsInZhbHVlIjoickpGVnpSMEthMldyS1RiZ2p0L3J0TUJFU0VQVFQ0OUhpV0I5Y1kwWFlMeDBpa3lGcEtQM1Q1a0pCYldBbkthSDZ4ejZNZ3gySTlTQzZLdjNISFJOVUQ5QjloTjc5TjhkcEZmZHJUSHVGN3pORmlwT2JkTmJWenVDVHNLQS9WTWUiLCJtYWMiOiI0NDdiM2E4ZjEzZTMwNGU4ZjdhYjhiYmMxYzQ0ODAyMGU2M2VlMWZiNzJmZTFiNzljZDczZjUzMmViMGYwNGU5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjBWOFkrSkhTWGd4ZWJEMGlYeFBZK2c9PSIsInZhbHVlIjoicGp0elFoZkcxbGUvY0FwWC9rcDZ6MitPNk8vSVpMNURRcUl1d29IVEZVRFJxWE43ZG9GdHlUOWp6cExCTzdoUlN2NzAxOUZwdmVXY1FMQmhPamtiNHc3bkpzblBHT0hOMkUzVFlseXJDTmdlc0JQRklRTy9TdGxHMDJvU3VmTm4iLCJtYWMiOiI0ZDdmODI4MmI1OTAyNTMxODUyN2FmNzBkYTc3NmEzY2JkZmM0NTU2YmNkOTY4NWY0Y2UwMTM4MGYxOTE3NDlkIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, '2023-08-14 07:57:46', '2023-08-14 07:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Ali', 'dxmohamedxd@gmail.com', NULL, 'eyJpdiI6ImVNQjRhUkNJZEViNEFEWUt3QzZGZVE9PSIsInZhbHVlIjoibTRlcjJhNFl4RjhjS01WR3VudzBaQT09IiwibWFjIjoiNWE2ZGM2ZTRmZGYxNjhhZmRlYzRiMmU3ZWJhMDA0ZGJiN2MxNzYyMTgwMzQ0MzVlMDk2M2YxZjM4ZmY3ZjJkOCIsInRhZyI6IiJ9', NULL, '2023-08-06 10:30:17', '2023-08-28 04:32:28'),
(3, 'ali', 'ali@gmail.com', NULL, '$2y$10$aVQc6xc3q1F.4NRGcwjqte/kHBrQQz6BKcCHQly2xfwFVq0Z9ZOqi', NULL, '2023-08-20 03:52:58', '2023-08-20 03:52:58'),
(4, 'sayed', 'sayed@gmail.com', NULL, '$2y$10$w6BCisncdqn2YdH73fIwB.ez9IjNho8Ns5VXtwZU0aBDSDSKxFgie', NULL, '2023-08-20 05:10:13', '2023-08-20 05:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `country`, `city`, `time_zone`, `page`, `created_at`, `updated_at`) VALUES
(1, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'About', '2023-08-15 10:30:18', '2023-08-15 10:30:18'),
(2, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'Services', '2023-08-15 10:30:22', '2023-08-15 10:30:22'),
(120, 'egypet', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 07:58:41', '2023-08-16 07:58:41'),
(152, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:14:33', '2023-08-16 08:14:33'),
(153, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:14:55', '2023-08-16 08:14:55'),
(154, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:15:27', '2023-08-16 08:15:27'),
(178, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:27:10', '2023-08-16 08:27:10'),
(179, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:27:24', '2023-08-16 08:27:24'),
(181, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:28:00', '2023-08-16 08:28:00'),
(184, 'egypet', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-16 08:28:44', '2023-08-16 08:28:44'),
(185, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'contacts', '2023-08-16 08:29:50', '2023-08-16 08:29:50'),
(194, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-17 04:11:27', '2023-08-17 04:11:27'),
(198, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-17 05:35:25', '2023-08-17 05:35:25'),
(199, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'home', '2023-08-17 05:35:37', '2023-08-17 05:35:37'),
(200, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-17 08:22:59', '2023-08-17 08:22:59'),
(201, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-17 08:23:20', '2023-08-17 08:23:20'),
(202, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-18 07:39:17', '2023-08-18 07:39:17'),
(203, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-18 07:39:25', '2023-08-18 07:39:25'),
(204, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-18 07:39:43', '2023-08-18 07:39:43'),
(205, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-19 16:01:54', '2023-08-19 16:01:54'),
(206, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-19 16:01:56', '2023-08-19 16:01:56'),
(207, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-19 16:02:05', '2023-08-19 16:02:05'),
(208, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-19 16:02:25', '2023-08-19 16:02:25'),
(209, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-19 16:02:36', '2023-08-19 16:02:36'),
(210, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-19 16:26:49', '2023-08-19 16:26:49'),
(211, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'logout', '2023-08-19 16:29:21', '2023-08-19 16:29:21'),
(212, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-19 16:29:22', '2023-08-19 16:29:22'),
(213, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-19 16:29:56', '2023-08-19 16:29:56'),
(214, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-19 16:30:07', '2023-08-19 16:30:07'),
(215, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-20 03:22:18', '2023-08-20 03:22:18'),
(216, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-20 03:22:35', '2023-08-20 03:22:35'),
(217, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'login', '2023-08-20 03:23:20', '2023-08-20 03:23:20'),
(218, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-20 03:26:35', '2023-08-20 03:26:35'),
(219, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-20 03:28:22', '2023-08-20 03:28:22'),
(220, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'About', '2023-08-20 03:28:32', '2023-08-20 03:28:32'),
(221, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-20 03:53:06', '2023-08-20 03:53:06'),
(222, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-20 05:21:50', '2023-08-20 05:21:50'),
(223, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-20 05:22:08', '2023-08-20 05:22:08'),
(224, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-20 09:50:51', '2023-08-20 09:50:51'),
(225, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 09:56:15', '2023-08-20 09:56:15'),
(226, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 09:56:31', '2023-08-20 09:56:31'),
(227, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 09:56:33', '2023-08-20 09:56:33'),
(228, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 09:56:53', '2023-08-20 09:56:53'),
(229, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 09:59:12', '2023-08-20 09:59:12'),
(230, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:00:10', '2023-08-20 10:00:10'),
(231, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:03:26', '2023-08-20 10:03:26'),
(232, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:04:45', '2023-08-20 10:04:45'),
(233, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:07:23', '2023-08-20 10:07:23'),
(234, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:08:01', '2023-08-20 10:08:01'),
(235, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:08:04', '2023-08-20 10:08:04'),
(236, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:08:11', '2023-08-20 10:08:11'),
(237, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:08:19', '2023-08-20 10:08:19'),
(238, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:10:43', '2023-08-20 10:10:43'),
(239, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:13:19', '2023-08-20 10:13:19'),
(240, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:29:21', '2023-08-20 10:29:21'),
(241, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:29:40', '2023-08-20 10:29:40'),
(242, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-20 10:35:19', '2023-08-20 10:35:19'),
(243, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-27 06:01:27', '2023-08-27 06:01:27'),
(244, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:02:47', '2023-08-27 06:02:47'),
(245, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:03:42', '2023-08-27 06:03:42'),
(246, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:09', '2023-08-27 06:04:09'),
(247, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:12', '2023-08-27 06:04:12'),
(248, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:22', '2023-08-27 06:04:22'),
(249, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:24', '2023-08-27 06:04:24'),
(250, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:26', '2023-08-27 06:04:26'),
(251, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:42', '2023-08-27 06:04:42'),
(252, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:43', '2023-08-27 06:04:43'),
(253, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:04:45', '2023-08-27 06:04:45'),
(254, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:07:56', '2023-08-27 06:07:56'),
(255, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:08:07', '2023-08-27 06:08:07'),
(256, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:08:14', '2023-08-27 06:08:14'),
(257, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:08:55', '2023-08-27 06:08:55'),
(258, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:09:52', '2023-08-27 06:09:52'),
(259, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:10:34', '2023-08-27 06:10:34'),
(260, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:12:12', '2023-08-27 06:12:12'),
(261, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:12:50', '2023-08-27 06:12:50'),
(262, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:16:13', '2023-08-27 06:16:13'),
(263, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:17:58', '2023-08-27 06:17:58'),
(264, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:19:09', '2023-08-27 06:19:09'),
(265, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:20:15', '2023-08-27 06:20:15'),
(266, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:20:28', '2023-08-27 06:20:28'),
(267, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:21:45', '2023-08-27 06:21:45'),
(268, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:25:36', '2023-08-27 06:25:36'),
(269, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:26:46', '2023-08-27 06:26:46'),
(270, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:26:49', '2023-08-27 06:26:49'),
(271, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:27:19', '2023-08-27 06:27:19'),
(272, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:27:22', '2023-08-27 06:27:22'),
(273, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:33:20', '2023-08-27 06:33:20'),
(274, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:34:04', '2023-08-27 06:34:04'),
(275, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:38:05', '2023-08-27 06:38:05'),
(276, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:41:08', '2023-08-27 06:41:08'),
(277, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:42:17', '2023-08-27 06:42:17'),
(278, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:42:32', '2023-08-27 06:42:32'),
(279, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:44:16', '2023-08-27 06:44:16'),
(280, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:44:41', '2023-08-27 06:44:41'),
(281, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:45:29', '2023-08-27 06:45:29'),
(282, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:46:00', '2023-08-27 06:46:00'),
(283, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:46:02', '2023-08-27 06:46:02'),
(284, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:46:36', '2023-08-27 06:46:36'),
(285, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:52:58', '2023-08-27 06:52:58'),
(286, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:53:42', '2023-08-27 06:53:42'),
(287, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:55:44', '2023-08-27 06:55:44'),
(288, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 06:58:36', '2023-08-27 06:58:36'),
(289, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 07:00:43', '2023-08-27 07:00:43'),
(290, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'namePage', '2023-08-27 07:01:14', '2023-08-27 07:01:14'),
(291, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:39:15', '2023-08-27 08:39:15'),
(292, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:39:29', '2023-08-27 08:39:29'),
(293, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:39:41', '2023-08-27 08:39:41'),
(294, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:40:51', '2023-08-27 08:40:51'),
(295, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:41:03', '2023-08-27 08:41:03'),
(296, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:41:42', '2023-08-27 08:41:42'),
(297, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:43:11', '2023-08-27 08:43:11'),
(298, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:43:27', '2023-08-27 08:43:27'),
(299, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:43:35', '2023-08-27 08:43:35'),
(300, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:46:20', '2023-08-27 08:46:20'),
(301, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:47:21', '2023-08-27 08:47:21'),
(302, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:47:26', '2023-08-27 08:47:26'),
(303, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:50:34', '2023-08-27 08:50:34'),
(304, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:50:51', '2023-08-27 08:50:51'),
(305, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'reports', '2023-08-27 08:53:04', '2023-08-27 08:53:04'),
(306, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:11:41', '2023-08-27 09:11:41'),
(307, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:11:51', '2023-08-27 09:11:51'),
(308, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:11:53', '2023-08-27 09:11:53'),
(309, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:12', '2023-08-27 09:12:12'),
(310, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:15', '2023-08-27 09:12:15'),
(311, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:25', '2023-08-27 09:12:25'),
(312, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:30', '2023-08-27 09:12:30'),
(313, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:32', '2023-08-27 09:12:32'),
(314, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:40', '2023-08-27 09:12:40'),
(315, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:12:44', '2023-08-27 09:12:44'),
(316, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:13:02', '2023-08-27 09:13:02'),
(317, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:13:10', '2023-08-27 09:13:10'),
(318, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:13:29', '2023-08-27 09:13:29'),
(319, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:13:40', '2023-08-27 09:13:40'),
(320, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:22:47', '2023-08-27 09:22:47'),
(321, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:23:36', '2023-08-27 09:23:36'),
(322, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:26:03', '2023-08-27 09:26:03'),
(323, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:28:12', '2023-08-27 09:28:12'),
(324, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'dreports', '2023-08-27 09:29:22', '2023-08-27 09:29:22'),
(325, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-27 10:17:32', '2023-08-27 10:17:32'),
(326, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'home', '2023-08-27 10:17:41', '2023-08-27 10:17:41'),
(327, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 04:03:48', '2023-08-28 04:03:48'),
(328, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 04:10:13', '2023-08-28 04:10:13'),
(329, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 04:13:15', '2023-08-28 04:13:15'),
(330, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 04:13:26', '2023-08-28 04:13:26'),
(331, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 04:25:24', '2023-08-28 04:25:24'),
(332, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 05:01:35', '2023-08-28 05:01:35'),
(333, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 05:03:10', '2023-08-28 05:03:10'),
(334, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 05:17:44', '2023-08-28 05:17:44'),
(335, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 05:18:24', '2023-08-28 05:18:24'),
(336, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-08-28 05:56:52', '2023-08-28 05:56:52'),
(337, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'change', '2023-08-28 05:57:41', '2023-08-28 05:57:41'),
(338, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-09-04 13:01:13', '2023-09-04 13:01:13'),
(339, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'About', '2023-09-04 13:02:20', '2023-09-04 13:02:20'),
(340, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'Project', '2023-09-04 13:02:30', '2023-09-04 13:02:30'),
(341, 'Sudan', 'Khartoum', 'Africa/Khartoum', 'Contact', '2023-09-04 13:02:36', '2023-09-04 13:02:36'),
(342, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-10-17 03:08:47', '2023-10-17 03:08:47'),
(343, 'Sudan', 'Khartoum', 'Africa/Khartoum', '/', '2023-10-17 03:22:38', '2023-10-17 03:22:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;
--
-- Database: `seqluelizedb`
--
CREATE DATABASE IF NOT EXISTS `seqluelizedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seqluelizedb`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT 'kass',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT 'kass',
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'mohamed', 'moh@gmail.com', '123', '2023-12-01 22:01:10', '2023-12-01 22:01:10'),
(2, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:01:10', '2023-12-01 22:01:10'),
(3, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:01:10', '2023-12-01 22:01:10'),
(4, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:01:10', '2023-12-01 22:01:10'),
(9, 'mohamed', 'moh@gmail.com', '1234', '2023-12-01 22:01:53', '2023-12-01 22:01:53'),
(10, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:01:53', '2023-12-01 22:01:53'),
(11, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:01:53', '2023-12-01 22:01:53'),
(12, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:01:53', '2023-12-01 22:01:53'),
(13, 'mohamed', 'moh@gmail.com', '1234', '2023-12-01 22:02:31', '2023-12-01 22:02:31'),
(14, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:02:31', '2023-12-01 22:02:31'),
(15, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:02:31', '2023-12-01 22:02:31'),
(16, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:02:31', '2023-12-01 22:02:31'),
(17, 'mohamed', 'moh@gmail.com', '1234', '2023-12-01 22:03:12', '2023-12-01 22:03:12'),
(18, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:03:12', '2023-12-01 22:03:12'),
(19, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:03:12', '2023-12-01 22:03:12'),
(20, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:03:12', '2023-12-01 22:03:12'),
(21, 'mohamed', 'moh@gmail.com', '1234', '2023-12-01 22:09:14', '2023-12-01 22:09:14'),
(22, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:09:14', '2023-12-01 22:09:14'),
(23, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:09:14', '2023-12-01 22:09:14'),
(24, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:09:14', '2023-12-01 22:09:14'),
(25, 'mohamed', 'moh@gmail.com', '1234', '2023-12-01 22:09:17', '2023-12-01 22:09:17'),
(26, 'ali', 'ali@gmail.com', '123', '2023-12-01 22:09:17', '2023-12-01 22:09:17'),
(27, 'omer', 'omer@gmail.com', '14', '2023-12-01 22:09:17', '2023-12-01 22:09:17'),
(28, 'sayed', 'sayed@gmail.com', '34', '2023-12-01 22:09:17', '2023-12-01 22:09:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`),
  ADD UNIQUE KEY `address_2` (`address`),
  ADD UNIQUE KEY `address_3` (`address`),
  ADD UNIQUE KEY `address_4` (`address`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `categries`
--

CREATE TABLE `categries` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `Ordering` int(11) NOT NULL,
  `Visbility` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Comment` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Ads` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categries`
--

INSERT INTO `categries` (`ID`, `Name`, `description`, `Ordering`, `Visbility`, `Allow_Comment`, `Allow_Ads`) VALUES
(3, 'Boys', 'the play in labtop', 2, 1, 1, 0),
(6, 'phones', '', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `add_date` date NOT NULL,
  `country_made` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `approve` tinyint(11) NOT NULL DEFAULT 0,
  `rating` smallint(6) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `description`, `price`, `add_date`, `country_made`, `image`, `status`, `approve`, `rating`, `cat_id`, `member_id`) VALUES
(17, 'A12', 'A 12 sumsung', '8000', '2023-12-04', 'chines', 'product-6.jpg', '0', 1, 0, 3, 7),
(20, 'Camira', 'new ', '9000', '2023-12-05', 'America   ', '', '0', 1, 0, 3, 43);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL COMMENT 'To Identify User',
  `Username` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT 'Username To Login',
  `Password` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT 'Password To Login',
  `Email` varchar(250) NOT NULL,
  `Fullname` text NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0 COMMENT 'Identify User Group',
  `TrustStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'Saller Rank',
  `RegStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'User Approval',
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `Fullname`, `GroupID`, `TrustStatus`, `RegStatus`, `Date`) VALUES
(7, 'mohamed', '8cb2237d0679ca88db6464eac60da96345513964', 'mohamed@gmail.com', 'mohamed ali', 1, 0, 1, '2023-07-04'),
(39, 'omer', '8cb2237d0679ca88db6464eac60da96345513964', 'om@gmail.com', 'omer ameer', 0, 1, 1, '2023-07-09'),
(43, 'ali ', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ali@gmail.com', 'ali omer', 0, 0, 0, '2023-12-03'),
(44, 'sayed', '7c4a8d09ca3762af61e59520943dc26494f8941b', 's@gmailc.com', 'sayed ali', 0, 0, 1, '2023-12-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categries`
--
ALTER TABLE `categries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `member_1` (`member_id`),
  ADD KEY `cat_1` (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categries`
--
ALTER TABLE `categries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'To Identify User', AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `cat_1` FOREIGN KEY (`cat_id`) REFERENCES `categries` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_1` FOREIGN KEY (`member_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `vendermulti`
--
CREATE DATABASE IF NOT EXISTS `vendermulti` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vendermulti`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_07_074233_create_venders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `نبشقة`
--
CREATE DATABASE IF NOT EXISTS `نبشقة` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `نبشقة`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
