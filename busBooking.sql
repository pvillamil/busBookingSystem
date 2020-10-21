-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2020 at 02:12 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busBooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bookings`
--

CREATE TABLE `Bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` int(11) NOT NULL,
  `start_station_id` int(11) NOT NULL,
  `end_station_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Bookings`
--

INSERT INTO `Bookings` (`id`, `trip_id`, `start_station_id`, `end_station_id`, `seat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, '2020-10-21 09:59:01', '2020-10-21 09:59:01'),
(2, 1, 1, 3, 2, 1, '2020-10-21 10:00:27', '2020-10-21 10:00:27'),
(3, 1, 3, 4, 1, 1, '2020-10-21 10:00:38', '2020-10-21 10:00:38'),
(4, 1, 3, 4, 2, 1, '2020-10-21 10:00:43', '2020-10-21 10:00:43'),
(5, 1, 1, 4, 3, 1, '2020-10-21 10:00:49', '2020-10-21 10:00:49'),
(6, 1, 2, 4, 4, 1, '2020-10-21 10:00:54', '2020-10-21 10:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_19_122557_create-stations', 2),
(5, '2020_10_19_123428_create-seates', 2),
(6, '2020_10_19_130251_create-bookings', 2),
(7, '2020_10_19_130753_create-trip', 2),
(8, '2020_10_20_113114_update-users-table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Seats`
--

CREATE TABLE `Seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seatNumber` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Seats`
--

INSERT INTO `Seats` (`id`, `seatNumber`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(2, 2, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(3, 3, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(4, 4, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(5, 5, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(6, 6, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(7, 7, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(8, 8, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(9, 9, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(10, 10, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(11, 11, '2020-10-21 09:58:30', '2020-10-21 09:58:30'),
(12, 12, '2020-10-21 09:58:30', '2020-10-21 09:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `Stations`
--

CREATE TABLE `Stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stationName` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Stations`
--

INSERT INTO `Stations` (`id`, `stationName`, `created_at`, `updated_at`) VALUES
(1, 'Cairo', '2020-10-21 09:58:36', '2020-10-21 09:58:36'),
(2, 'AlFayyum', '2020-10-21 09:58:36', '2020-10-21 09:58:36'),
(3, 'AlMinya', '2020-10-21 09:58:36', '2020-10-21 09:58:36'),
(4, 'Asyut', '2020-10-21 09:59:36', '2020-10-21 09:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `Trips`
--

CREATE TABLE `Trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_station_id` int(11) NOT NULL,
  `end_station_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Trips`
--

INSERT INTO `Trips` (`id`, `start_station_id`, `end_station_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2020-10-21 09:58:25', '2020-10-21 09:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shady', 'shady@yahoo.com', NULL, '$2y$10$Mtk5osz/JIo4FE864avWPu24fvMH.L8VKRow4jKG59mIhsl/4RD3K', '0KG8a7XvWtYApoK6kZ8ZmDasP5qGiTZ5r103DWVx1KciCc5MIPJlUJgQOyUh', NULL, '2020-10-21 09:56:43', '2020-10-21 09:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bookings`
--
ALTER TABLE `Bookings`
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
-- Indexes for table `Seats`
--
ALTER TABLE `Seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Stations`
--
ALTER TABLE `Stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Trips`
--
ALTER TABLE `Trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bookings`
--
ALTER TABLE `Bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Seats`
--
ALTER TABLE `Seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Stations`
--
ALTER TABLE `Stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Trips`
--
ALTER TABLE `Trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
