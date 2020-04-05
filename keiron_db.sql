-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2020 at 11:27 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keiron_db`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_04_05_164417_create_user_types_table', 1),
(10, '2020_04_05_164448_create_tickets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('07fed7747fca3bc67eccabe8f293e1d10f019a60b99df13cb96657f1dd76e35c0da3cbc01a79b96c', 1, 1, NULL, '[]', 0, '2020-04-06 04:09:20', '2020-04-06 04:09:20', '2021-04-05 23:09:20'),
('0bc16c91a76b553a6af068b7dd2ca5b558721ea24c8620c1ea12f3472ed73fa21d6fb420def111d0', 2, 1, NULL, '[]', 0, '2020-04-06 04:09:34', '2020-04-06 04:09:34', '2021-04-05 23:09:34'),
('1ad0ced0e2e6765f39a5c3bfa090582d7f4581dd67c76daba155755500ed58b2423b639693ff66cf', 2, 1, NULL, '[]', 0, '2020-04-06 04:03:18', '2020-04-06 04:03:18', '2021-04-05 23:03:18'),
('2840e307ed32138772c20b0866f13e0fcae0a4c308b88daa47eb31bacd8b89c3b3ae65dbb527d4b2', 1, 1, NULL, '[]', 0, '2020-04-05 23:17:45', '2020-04-05 23:17:45', '2021-04-05 18:17:45'),
('29e842a4ff416bcc44f3b2fd448c611275e3af774e333db18a7670a8886d97e482427996161a1ec9', 2, 1, NULL, '[]', 0, '2020-04-05 23:26:03', '2020-04-05 23:26:03', '2021-04-05 18:26:03'),
('2a048c7e5eb1b7a73c451bb14064e656e11ac47527b5283510639f6ec1aeba1deabc549e495f8d9b', 1, 1, NULL, '[]', 0, '2020-04-06 04:16:37', '2020-04-06 04:16:37', '2021-04-05 23:16:37'),
('319b832c197b76fdf02cb8c9a11f08c26714ddf2062cf6ef252f69ec39b8069519f0ec216f9362eb', 1, 1, NULL, '[]', 0, '2020-04-05 23:23:28', '2020-04-05 23:23:28', '2021-04-05 18:23:28'),
('337ec3b5ffc5b8f5e9eaab62727d9f4ba25f7678f5ac8ca8bc1e708186d0735a8bae614597575fdf', 1, 1, NULL, '[]', 0, '2020-04-05 22:54:38', '2020-04-05 22:54:38', '2021-04-05 17:54:38'),
('3705e247348e01fc23d54b554773fd7377c81f9cf401c66093eff8e4bb1948206666773f8dcb5fd5', 1, 1, NULL, '[]', 0, '2020-04-05 23:15:49', '2020-04-05 23:15:49', '2021-04-05 18:15:49'),
('3b344cc920a47beeaf25659e1c690e75538dc724d8c181673cd8ef1292f26331d54b4544c5f192ff', 1, 1, NULL, '[]', 0, '2020-04-06 04:18:45', '2020-04-06 04:18:45', '2021-04-05 23:18:45'),
('3ce3cbbe900a970178dc8cd6969e38389982ed620fc8d3dcbd4691de70d8c50df528e13990d21129', 1, 1, NULL, '[]', 0, '2020-04-06 04:17:00', '2020-04-06 04:17:00', '2021-04-05 23:17:00'),
('415231cc1e10862ca74615ff163d583fba3af191812195fe35fd7aa29ac376254d70e227661abb30', 1, 1, NULL, '[]', 0, '2020-04-06 04:03:06', '2020-04-06 04:03:06', '2021-04-05 23:03:06'),
('4dc9850d4fe908481b97839017c973f3466afb3afda1d3c25ba8872bd855233ec97d3ae7b9512b7f', 1, 1, NULL, '[]', 0, '2020-04-06 04:23:12', '2020-04-06 04:23:12', '2021-04-05 23:23:12'),
('5d016f0629ebf46fbc19697cd3715ac629cb7c3a8a99f93a65744688c4e1e108b6afb92d8bf7c334', 1, 1, NULL, '[]', 0, '2020-04-05 23:24:05', '2020-04-05 23:24:05', '2021-04-05 18:24:05'),
('6912472c2761c492667904a1699c95b72f6aa35b72c02263ac9d1e83b6d8ab6ca8a2d250e344eb98', 2, 1, NULL, '[]', 0, '2020-04-05 23:22:13', '2020-04-05 23:22:13', '2021-04-05 18:22:13'),
('6a678039bc34bd1c1eff1a8378cdab0182b60ee85c0cacd7c857a96edd2f4bbe0cbe47294f25a19f', 2, 1, NULL, '[]', 0, '2020-04-06 03:37:30', '2020-04-06 03:37:30', '2021-04-05 22:37:30'),
('6d924ed6c52e94d2366db2b4c6eae800467a7bb79f2782f20ee53bfde9d7686678fc43175f604e95', 2, 1, NULL, '[]', 0, '2020-04-06 04:15:53', '2020-04-06 04:15:53', '2021-04-05 23:15:53'),
('82c6640d9c2d086670ad26e133606612864ca79986ab192362714fc4d7b856dd6089b9cce529fef2', 1, 1, NULL, '[]', 0, '2020-04-05 23:25:50', '2020-04-05 23:25:50', '2021-04-05 18:25:50'),
('8f284696f953456bbf6bcd6829911c672e89dc35072c74a205cf794043aaf1aea96f27c50aaa9a61', 1, 1, NULL, '[]', 0, '2020-04-06 03:35:37', '2020-04-06 03:35:37', '2021-04-05 22:35:37'),
('910b00140bec8228e518bd83eecbf2048cfd794e6d15ed850e089b73275d8ad8825b117db1961b91', 3, 1, NULL, '[]', 0, '2020-04-06 04:22:51', '2020-04-06 04:22:51', '2021-04-05 23:22:51'),
('947428b87348da7a095aa3e9e36d31fb00549fe1322c8ea7fdb443f2b49f7f04fed733820c386457', 1, 1, NULL, '[]', 0, '2020-04-05 23:25:25', '2020-04-05 23:25:25', '2021-04-05 18:25:25'),
('9fdb72ce76de6b30511e68afc91f41671c0169e75a528a07cc006d51eff7f05bc5f9d9fddfa528d1', 1, 1, NULL, '[]', 0, '2020-04-06 04:15:28', '2020-04-06 04:15:28', '2021-04-05 23:15:28'),
('ad6a062d302ca85f5f3a7c1addfaaa859d0d81d75fe5ec55adae0945019b1c6dd7a5c844c29e915b', 1, 1, NULL, '[]', 0, '2020-04-05 23:07:39', '2020-04-05 23:07:39', '2021-04-05 18:07:39'),
('ad99290ed5ce586a7002e3316b72b3b2b10d157485f7029b99a93fc45a6afa62d32cca0afa049e25', 2, 1, NULL, '[]', 0, '2020-04-05 23:25:42', '2020-04-05 23:25:42', '2021-04-05 18:25:42'),
('b9f1f16628c245f6aa7aac28548c50ae1592237802784840c083e844c1d75c0d64ece4f0a07ad564', 2, 1, NULL, '[]', 0, '2020-04-06 04:23:02', '2020-04-06 04:23:02', '2021-04-05 23:23:02'),
('bef46dbba8c7b56af961b3ca59ad7f1054b2e52fb6be77a22a19fefc4e7c53bcdcf4e15fb47a5f4e', 1, 1, NULL, '[]', 0, '2020-04-05 22:55:36', '2020-04-05 22:55:36', '2021-04-05 17:55:36'),
('c4599b9eac5706ead96714ea4a9377174978877b51771e0eadfd06035272dda0a602db87f389e163', 1, 1, NULL, '[]', 0, '2020-04-05 23:00:03', '2020-04-05 23:00:03', '2021-04-05 18:00:03'),
('c58710b15cfe942d7c3f2fe51959e6d95e7de2ad42c89bc5cdb4fe165ecf18dd7439b71f6db5b095', 2, 1, NULL, '[]', 0, '2020-04-06 04:22:33', '2020-04-06 04:22:33', '2021-04-05 23:22:33'),
('e05778c203215bd764518895682d21c2a4fa97e3b66cc4795e46b46f1b25d40f13b56fdecf373d4c', 1, 1, NULL, '[]', 0, '2020-04-05 23:27:13', '2020-04-05 23:27:13', '2021-04-05 18:27:13'),
('e1ab342fab949b5b475f24b0eacef5882d2af35139c90ce369c6184e194ffe395665930644fc0290', 1, 1, NULL, '[]', 0, '2020-04-05 23:29:11', '2020-04-05 23:29:11', '2021-04-05 18:29:11'),
('e3f0dfcc91edfcab7332f8dc6e15d3cf90207c297d2bb15a9bba0d38a394f075722f1ff622510d23', 1, 1, NULL, '[]', 0, '2020-04-05 22:55:13', '2020-04-05 22:55:13', '2021-04-05 17:55:13'),
('f389bdf4908e4bd105944fe5f969c29f009878aa4fc7592229ff4be0ccfdf3b3a88d9a73f43f9984', 1, 1, NULL, '[]', 0, '2020-04-06 03:35:56', '2020-04-06 03:35:56', '2021-04-05 22:35:56'),
('f726dca8b2d44527195ba5cb57aee7d6f094c7142af46037e6e1624a0acc89e724462cad0e92710a', 1, 1, NULL, '[]', 0, '2020-04-06 03:35:50', '2020-04-06 03:35:50', '2021-04-05 22:35:50'),
('f732ab819db063366cba35258271bd7c233e6ad565138ee9557ddaa0336d43dfba875e46f37d9616', 1, 1, NULL, '[]', 0, '2020-04-05 23:13:06', '2020-04-05 23:13:06', '2021-04-05 18:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3bvQXZ9ZUjHwq6oRUmN5n4POsB4gNOqOO4zs2eQ4', 'http://localhost', 1, 0, 0, '2020-04-05 22:54:34', '2020-04-05 22:54:34'),
(2, NULL, 'Laravel Password Grant Client', '0a6Qkl7r4HR4jMJlz3NMQFV7DqS1n7ZobRdna2Nb', 'http://localhost', 0, 1, 0, '2020-04-05 22:54:34', '2020-04-05 22:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-05 22:54:34', '2020-04-05 22:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(33, 0, 2, '2020-04-06 03:24:43', '2020-04-06 04:03:00'),
(39, 0, 2, '2020-04-06 03:25:59', '2020-04-06 04:02:10'),
(40, 0, 3, '2020-04-06 03:32:23', '2020-04-06 03:32:23'),
(42, 0, 3, '2020-04-06 03:32:34', '2020-04-06 03:32:34'),
(43, 0, 3, '2020-04-06 04:16:43', '2020-04-06 04:16:43'),
(44, 0, 2, '2020-04-06 04:16:46', '2020-04-06 04:16:46'),
(45, 0, 3, '2020-04-06 04:21:22', '2020-04-06 04:21:22'),
(46, 0, 3, '2020-04-06 04:21:53', '2020-04-06 04:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@keiron.com', '$2y$10$KyvpkLIvxlRCfUh8TGYmkecdfWEygvfrELqgQWNBCwE9FH4LgII46', 1, NULL, '2020-04-05 22:53:56', '2020-04-05 22:53:56'),
(2, 'Usuario 1', 'usuario1@keiron.com', '$2y$10$B/Q5m2uRHAc1K/U2txLTsOe6RCI6kPaJbCoazFLKXx2pZNMaeSsUG', 2, NULL, '2020-04-05 22:53:56', '2020-04-05 22:53:56'),
(3, 'Usuario 2', 'usuario2@keiron.com', '$2y$10$2vaHd/8C9ietXGxzKNaDNuz2.H0OP7MfkcwWAN5FslcM23.NptsbO', 2, NULL, '2020-04-05 22:53:57', '2020-04-05 22:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-05 22:53:56', '2020-04-05 22:53:56'),
(2, 'user', '2020-04-05 22:53:56', '2020-04-05 22:53:56');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
