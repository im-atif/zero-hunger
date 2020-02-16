-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 08:27 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hunger`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `persons` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'awaiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `user_id`, `persons`, `title`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 'Main Title', 'lorium ispum is dummy text', 'awaiting', '2020-02-16 01:54:18', '2020-02-16 01:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `donor_details`
--

CREATE TABLE `donor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtype_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor_details`
--

INSERT INTO `donor_details` (`id`, `user_id`, `subtype_id`, `name`, `location`, `donation`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'UN Orginization', 'Lahore, Pakistan', 'Weekly', '2020-02-16 01:29:35', '2020-02-16 01:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_15_132345_create_types_table', 1),
(5, '2020_02_15_132420_create_sub_types_table', 1),
(6, '2020_02_15_132435_create_profiles_table', 1),
(7, '2020_02_15_132448_create_donor_details_table', 1),
(8, '2020_02_15_132504_create_recipient_details_table', 1),
(9, '2020_02_15_132519_create_donations_table', 1),
(10, '2020_02_15_132551_create_requests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `profile_img`, `verified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(2, 2, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(3, 3, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(4, 4, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(5, 5, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(6, 6, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(7, 7, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(8, 8, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(9, 9, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(10, 10, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(11, 11, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(12, 12, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(13, 13, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(14, 14, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(15, 15, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(16, 16, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(17, 17, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(18, 18, NULL, NULL, 0, '2020-02-16 01:29:30', '2020-02-16 01:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `recipient_details`
--

CREATE TABLE `recipient_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtype_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persons` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipient_details`
--

INSERT INTO `recipient_details` (`id`, `user_id`, `subtype_id`, `name`, `location`, `persons`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'UN Orginization', 'Lahore, Pakistan', 15, '2020-02-16 01:32:08', '2020-02-16 01:32:08'),
(2, 2, 6, 'Helping Orginization', 'Karachi, Pakistan', 15, '2020-02-16 01:33:02', '2020-02-16 01:33:02'),
(3, 4, 5, 'Edhi Center', 'Karachi, Pakistan', 15, '2020-02-16 01:58:24', '2020-02-16 01:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `persons` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'awaiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `persons`, `title`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Org name', 'hello testing inbox', 'awaiting', '2020-02-16 01:55:52', '2020-02-16 01:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `sub_types`
--

CREATE TABLE `sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `sub_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Erick', 'Wunsch', 'ncronin@example.com', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fHSlFFpPzb', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(2, 'Dejuan', 'Baumbach', 'slind@example.com', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VF2aUUjlgm', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(3, 'Joseph', 'Shields', 'renner.judd@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oee8cFuA9y', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(4, 'Fermin', 'Wolff', 'rubye.west@example.net', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nhfVetRHWj', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(5, 'Vito', 'Hermiston', 'gideon82@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dyhudRyxnj', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(6, 'Cody', 'Conn', 'bradtke.herminio@example.net', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IXy8Raw9Wa', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(7, 'Felton', 'Thompson', 'darion19@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wvU8DbVhFd', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(8, 'Gunner', 'Will', 'ojaskolski@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rnxr0ECwl6', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(9, 'Ole', 'Lemke', 'stacey82@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OjS7OAdlzX', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(10, 'Lucie', 'Beier', 'lisette.rau@example.com', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yKk6AgWq1A', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(11, 'Nicolette', 'Bauch', 'douglas.ludwig@example.net', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dvl6gzxZ4X', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(12, 'Nyah', 'Fisher', 'vveum@example.com', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5OAQN9s5SI', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(13, 'Reinhold', 'Kulas', 'atremblay@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6QNo9FOHqf', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(14, 'Brittany', 'Quigley', 'hsporer@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0cWkVQFxZi', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(15, 'Annabel', 'McKenzie', 'adrien20@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '649xMAafoK', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(16, 'Litzy', 'Ryan', 'rafaela98@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '12ammNSlhJ', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(17, 'Miguel', 'Harber', 'lavada50@example.com', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ylJKYiQn14', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(18, 'Rahsaan', 'Feest', 'oconnell.susanna@example.org', '2020-02-16 01:29:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XONfox4yVT', '2020-02-16 01:29:30', '2020-02-16 01:29:30'),
(19, 'Atif', 'Ibrahim', 'hello@mail.co', NULL, '$2y$10$SO1YYjS732q4Ug43dnpmLODy8etx6mW8r2gBb/Q6i84sum1QmkQiS', NULL, '2020-02-16 01:53:03', '2020-02-16 01:53:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor_details`
--
ALTER TABLE `donor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipient_details`
--
ALTER TABLE `recipient_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_types`
--
ALTER TABLE `sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor_details`
--
ALTER TABLE `donor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recipient_details`
--
ALTER TABLE `recipient_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_types`
--
ALTER TABLE `sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
