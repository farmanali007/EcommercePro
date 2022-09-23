-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 23, 2022 at 06:31 PM
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
-- Database: `EcommercePro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

DROP TABLE IF EXISTS `catagories`;
CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Mens\' Fashion', '2022-09-23 04:08:53', '2022-09-23 04:08:53'),
(2, 'Women\'s Fashion', '2022-09-23 04:09:05', '2022-09-23 04:09:05'),
(3, 'Electronics', '2022-09-23 04:09:19', '2022-09-23 04:09:19'),
(4, 'shoes', '2022-09-23 04:09:48', '2022-09-23 04:09:48'),
(5, 'Watches', '2022-09-23 04:09:56', '2022-09-23 04:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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

DROP TABLE IF EXISTS `migrations`;
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_01_173225_create_sessions_table', 1),
(7, '2022_09_02_062739_create_catagories_table', 1),
(8, '2022_09_03_195457_create_products_table', 1),
(9, '2022_09_07_100059_create_carts_table', 1),
(10, '2022_09_08_094710_create_orders_table', 1),
(11, '2022_09_09_211530_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'farmanali1588594@gmail.com', '03411588594', 'twonship,lahore', '11', 'Mens\'s Shirts', '1', '99', '1663924381.jpg', '1', NULL, 'Paid', 'delivered', '2022-09-23 11:02:19', '2022-09-23 11:08:12'),
(2, 'user', 'farmanali1588594@gmail.com', '03411588594', 'twonship,lahore', '11', 'Laptop', '2', '3598', '1663924792.jpg', '5', NULL, 'cash on Dilivery', 'processing', '2022-09-23 11:02:20', '2022-09-23 11:02:20'),
(3, 'user', 'farmanali1588594@gmail.com', '03411588594', 'twonship,lahore', '11', 'exlcusive watch', '1', '1233', '1663926679.jpg', '18', NULL, 'cash on Dilivery', 'processing', '2022-09-23 11:02:20', '2022-09-23 11:02:20'),
(4, 'engrfarmanali', 'engrfarmanali007@gmail.com', '03052569678', 'Akbar Chowk, College road, Lahore', '12', 'Mens\'s Shirts', '1', '299', '1663924546.png', '3', NULL, 'Paid', 'processing', '2022-09-23 11:06:54', '2022-09-23 11:06:54'),
(5, 'engrfarmanali', 'engrfarmanali007@gmail.com', '03052569678', 'Akbar Chowk, College road, Lahore', '12', 'Men\'s Shoes', '3', '1197', '1663924726.jpg', '4', NULL, 'Paid', 'delivered', '2022-09-23 11:06:55', '2022-09-23 11:08:25'),
(6, 'engrfarmanali', 'engrfarmanali007@gmail.com', '03052569678', 'Akbar Chowk, College road, Lahore', '12', 'Mens\'s Shirts', '1', '129', '1663926199.png', '11', NULL, 'Paid', 'processing', '2022-09-23 11:06:55', '2022-09-23 11:06:55'),
(7, 'engrfarmanali', 'engrfarmanali007@gmail.com', '03052569678', 'Akbar Chowk, College road, Lahore', '12', 't-shirt', '1', '231', '1663926607.jpg', '17', NULL, 'Paid', 'canceled', '2022-09-23 11:06:55', '2022-09-23 11:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Mens\'s Shirts', 'Beautiful shirts are avialble in all sizes', '1663924381.jpg', 'Mens\' Fashion', '100', '199', '99', '2022-09-23 04:13:01', '2022-09-23 04:13:01'),
(2, 'Men\'s Watche', 'Amazing digital watches in cheap prices', '1663924455.jpg', 'Watches', '200', '999', '799', '2022-09-23 04:14:15', '2022-09-23 04:14:15'),
(3, 'Mens\'s Shirts', 'All brands are availables', '1663924546.png', 'Mens\' Fashion', '100', '399', '299', '2022-09-23 04:15:46', '2022-09-23 04:15:46'),
(4, 'Men\'s Shoes', 'this shoes only for mens', '1663924726.jpg', 'shoes', '300', '399', NULL, '2022-09-23 04:18:46', '2022-09-23 04:18:46'),
(5, 'Laptop', 'fresh condition laptops stocks', '1663924792.jpg', 'Electronics', '1000', '1999', '1799', '2022-09-23 04:19:52', '2022-09-23 04:19:52'),
(6, 'Mens\'s Shirts', 'fabolus shirts available in all sizes', '1663925774.jpg', 'Mens\' Fashion', '1000', '199', '199', '2022-09-23 04:36:14', '2022-09-23 04:36:14'),
(7, 'Laptops', 'fresh condition laptops stocks', '1663925868.jpg', 'Electronics', '100', '1899', NULL, '2022-09-23 04:37:48', '2022-09-23 04:37:48'),
(8, 'Women\'s Shirts', 'Beautiful shirts are avialble in all sizes', '1663925937.png', 'Women\'s Fashion', '600', '799', '699', '2022-09-23 04:38:57', '2022-09-23 04:38:57'),
(9, 'Mobiles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '1663926004.jpg', 'Electronics', '389', '2999', '2399', '2022-09-23 04:40:04', '2022-09-23 04:40:04'),
(10, 'Digital Watch', 'Beautiful watches for men available', '1663926150.jpg', 'Watches', '10', '299', '199', '2022-09-23 04:42:30', '2022-09-23 04:42:30'),
(11, 'Mens\'s Shirts', 'All brands are availables', '1663926199.png', 'Mens\' Fashion', '230', '230', '129', '2022-09-23 04:43:19', '2022-09-23 04:43:19'),
(12, 'Mens\'s Shirts', 'All brands are availables', '1663926281.png', 'Mens\' Fashion', '123', '239', '212', '2022-09-23 04:44:41', '2022-09-23 04:44:41'),
(13, 'Women\'s Shirts', 'All brands are availables', '1663926333.png', 'Women\'s Fashion', '123', '230', NULL, '2022-09-23 04:45:33', '2022-09-23 04:45:33'),
(14, 'Women\'s Shirts', 'All brands are availables', '1663926416.png', 'Women\'s Fashion', '230', '200', '199', '2022-09-23 04:46:56', '2022-09-23 04:46:56'),
(15, 'Men\'s Watches', 'Beautiful watches for men available', '1663926525.jpg', 'Watches', '340', '799', '299', '2022-09-23 04:48:45', '2022-09-23 04:48:45'),
(16, 'Mobiles', 'All brands are availables', '1663926576.jpg', 'Electronics', '213', '2399', NULL, '2022-09-23 04:49:36', '2022-09-23 04:49:36'),
(17, 't-shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '1663926607.jpg', 'Mens\' Fashion', '124', '239', '231', '2022-09-23 04:50:07', '2022-09-23 04:50:07'),
(18, 'exlcusive watch', 'Beautiful watches for men available', '1663926679.jpg', 'Watches', '1234', '2399', '1233', '2022-09-23 04:51:19', '2022-09-23 04:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7THcVscw8i46oncz6b5HOs6AiEovpEUSNva2tllk', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1k4UFNqTlhRN0U1dUhXdm5JS3hNMGR2OHl0ZmI1UjhXZXFZQ2FCZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1663950278),
('btISand0IP0HbaXNrk8unAUnvawLpg3aRjdhToky', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnJhVTJxZGhXY2dMOVdMUWlnRnRlUk5od1BZUkFxWGdjcmF0SmVySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fX0=', 1663950395);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'user', 'user@gmail.com', '0', '2323232', 'Barkat Market, TownShip, Lahore', '2022-09-15 15:59:03', '$2y$10$C08O.2UiQN8Klk91cSI05eYEwaUkT69Sx.aV.EA6b1KDehjCsXFP.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 05:45:31', '2022-09-23 05:45:31'),
(6, 'admin', 'admin@gmail.com', '1', '2334445', 'twonship,lahore', '2022-09-13 04:26:15', '$2y$10$MOKrXBjGlxMpFQ9zWv35ceap8IAG2RuS1vQ7nOC1HTnnmenjXzA2q', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 05:50:01', '2022-09-23 05:50:01'),
(11, 'user', 'farmanali1588594@gmail.com', '0', '03411588594', 'twonship,lahore', '2022-09-20 00:24:18', '$2y$10$6Zdv2yplmu97X2FPMFoMJOq9GfsU019Dd81tV.s1OEsbPdrOvRl4O', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 10:57:32', '2022-09-23 10:57:32'),
(12, 'engrfarmanali', 'engrfarmanali007@gmail.com', '0', '03052569678', 'Akbar Chowk, College road, Lahore', '2022-09-14 16:04:14', '$2y$10$XPnSDbwj8nXJb.bd.humvu1zYOUu5/eWoKQqQYXOQlc2.OjGIIESG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 11:04:04', '2022-09-23 11:04:04'),
(13, 'farman', 'iamprogrammer2297678@gmail.com', '0', '43464534', 'Barkat Market, TownShip, Lahore', NULL, '$2y$10$2gINuvPvrCj9DoyMr1hYOuFrnvTJz9JgnFFR0OzH9.hqnUhJh92cy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 11:26:33', '2022-09-23 11:26:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
