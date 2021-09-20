-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Agu 2021 pada 15.31
-- Versi server: 5.7.24
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mostrip`
--
CREATE DATABASE IF NOT EXISTS `db_mostrip` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mostrip`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(15, 9, 'assets/gallery/VDsRes7MBJNcHlgZRxHijzxusFMYUOjMJyabRakH.jpeg', NULL, '2021-08-25 07:49:23', '2021-08-25 07:49:23'),
(16, 9, 'assets/gallery/4AHcYJVLtIzjwESpLN637DSNJxrLpenVALlIMvcI.jpeg', NULL, '2021-08-25 07:50:34', '2021-08-25 07:50:34'),
(17, 10, 'assets/gallery/Ypfzw5Y9qadFBlG5tv3tLLTMO5a8jvUg8VgfYCgX.jpeg', NULL, '2021-08-25 08:12:14', '2021-08-25 08:12:14'),
(18, 11, 'assets/gallery/SIu6Z8NiOmwob2BCLaX0ihbrqNnkwYg8Z8Zu9Ir3.jpeg', NULL, '2021-08-25 08:16:58', '2021-08-25 08:16:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_06_09_043014_create_travel_packages_table', 1),
(9, '2020_06_09_053816_create_galleries_table', 2),
(10, '2020_06_09_054434_create_transactions_table', 3),
(11, '2020_06_09_054940_create_transaction_details_table', 4),
(12, '2020_06_09_063349_add_roles_field_to_users_table', 5),
(13, '2020_06_09_220213_add_username_field_to_users_table', 6),
(14, '2020_07_14_073354_create_status_counts_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_counts`
--

CREATE TABLE `status_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `members` int(11) NOT NULL,
  `countries` int(11) NOT NULL,
  `hotels` int(11) NOT NULL,
  `partners` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_counts`
--

INSERT INTO `status_counts` (`id`, `members`, `countries`, `hotels`, `partners`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 75, 108, 114, 81, NULL, '2020-07-14 08:55:15', '2020-07-16 21:28:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `user_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 9, 6, 0, 310, 'PENDING', NULL, '2021-08-25 07:59:09', '2021-08-25 07:59:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'wawan', 'ID', 0, '2026-08-25', NULL, '2021-08-25 07:59:09', '2021-08-25 07:59:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Istiqlal Mosque', 'istiqlal-mosque', 'Jakarta, Indonesia', 'The Istiqlal Mosque is the national mosque of the Republic of Indonesia located in the former Wilhelmina Park, northeast of Medan Merdeka Square in the center of which stands the National Monument, in the center of the capital city of Jakarta.', 'Bazar Ramadhan, Eid Al-Fitr Mubarak', 'Indonesia', 'Gado-Gado, Opor, Sate', '2020-01-25', '3D2N', 'Open Trip', 310, NULL, '2021-08-25 07:48:11', '2021-08-25 07:48:11'),
(10, 'Topkapi Palace', 'topkapi-palace', 'Instanbul, Turki', 'Topkap Palace or in Ottoman Turkish: ايى, usually spelled \"Topkapi\" in English is a palace in Istanbul, Turkey, which was the official residence of the Ottoman Sultan for more than 600 years. Construction of this palace began in 1459 on the orders of Sultan Mehmed II', 'Museum Visit', 'Turkey, English', 'Köfte', '2020-02-12', '5D4N', 'Open Trip', 630, NULL, '2021-08-25 08:11:26', '2021-08-25 08:11:26'),
(11, 'Masjidil Aqsa', 'masjidil-aqsa', 'Yerussalem, Palestine', 'Al-Aqsa Mosque or Masjidil Aqsa is a holy mosque that has an important history in the Isra\' Mi\'raj event of the Prophet Muhammad SAW. Quoted from the book Secrets of the Household of the Prophet Muhammad by Yola Hemdi, Al Aqsa Mosque became a temporary resting place for the Prophet SAW before continuing his journey to the sky.', 'Historical Visit', 'English, Arabic', 'Goat Rice', '2020-04-25', '4D3N', 'Open Trip', 653, NULL, '2021-08-25 08:16:01', '2021-08-25 08:16:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'rifqi', 'rifqi@gmail.com', '2020-06-11 05:51:45', '$2y$10$lXsaWdn2jAMWW8erAIyKGexTdPViHiqK/NzNN114lF93Dtyana4sK', NULL, '2020-06-09 15:13:49', '2020-06-11 05:51:45', 'ADMIN', 'rifqi10'),
(2, 'devra', 'devra@gmail.com', '2020-06-10 06:15:25', '$2y$10$0IK.4f5UV.Y5z0kAVWIAcuvUzIDU4Uoy6bQHyZodxbveVR5aSXUDG', NULL, '2020-06-10 06:15:09', '2020-06-10 06:15:25', 'USER', 'devratech'),
(3, 'adit', 'adit@gmail.com', '2020-06-11 01:13:06', '$2y$10$ULEnZEEXg15nCODo5us/EuKN5/V/bV4ksTFHQejj9OTqD8zF5VB9.', NULL, '2020-06-11 01:12:35', '2020-06-11 01:13:06', 'USER', 'aditya'),
(4, 'rifqi', 'rifqiadit@gmail.com', NULL, '$2y$10$scttAT0nUkC106QPJxo2ve8SBCwq1G2cwKGij/dmJLLve8F4Lme8q', NULL, '2020-06-12 21:18:19', '2020-06-12 21:18:19', 'USER', 'rifqiaditya'),
(5, 'adit', 'adit@nomads.com', NULL, '$2y$10$t42CyPxqAO4lbTeXKM.LIOSfGTrl2t3bU2pTd/HlN2PUM1U74XaMS', NULL, '2020-07-16 21:29:08', '2020-07-16 21:29:08', 'USER', 'aditjaya'),
(6, 'devra', 'wawan@gmail.com', '2021-08-25 07:59:01', '$2y$10$K8rURKWv86vSqnfWkmzqIulth76t7cLdyv9B0i.i/HG3TmnpVqI0O', NULL, '2021-08-25 07:20:26', '2021-08-25 07:59:01', 'USER', 'wawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `status_counts`
--
ALTER TABLE `status_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `status_counts`
--
ALTER TABLE `status_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
