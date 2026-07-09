-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2026 at 01:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miraicoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL DEFAULT 'kopi',
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `kategori`, `harga`, `stok`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Espresso', 'kopi', 9000, 10, 'A Strong Concentrated Shot Of Pure Coffe', 'Espresso.png', '2026-05-12 05:56:17', '2026-07-09 02:14:34'),
(2, 'Latte', 'kopi', 26000, 9, 'Smooth Espresso Balanced With Creamy Milk', 'Latte.png', '2026-05-12 05:56:40', '2026-07-07 01:10:13'),
(3, 'Americano', 'kopi', 26000, 10, 'Espresso Diluted With Water For A Clean Brew', 'Americano.png', '2026-05-12 05:57:08', '2026-05-12 05:57:08'),
(4, 'Cappuccino', 'kopi', 26000, 10, 'Rich Espresso Topped With Velvety Milk Foam', 'Cappuccino.png', '2026-05-12 05:57:08', '2026-05-12 05:57:08'),
(5, 'tiramisu', 'makanan', 50000, 11, 'Dibuat dengan lapisan biskuit yang meresap sempurna dalam seduhan espresso premium, dipadukan dengan krim keju Mascarpone yang gurih, lembut, dan lumer di lidah. Sentuhan akhir bubuk kakao murni di atasnya memberikan keseimbangan rasa manis dan pahit yang', 'tiramisu.png', NULL, '2026-07-09 02:26:15'),
(6, 'Croffle', 'makanan', 35000, 13, 'Perpaduan sempurna antara renyahnya croissant dan kelembutan waffle. Dipanggang dengan mentega premium dan taburan gula karamel tipis yang renyah di luar, lembut di dalam', 'croffle.png', NULL, '2026-07-09 02:25:53'),
(7, 'Fluffy Pancake & Waffle', 'makanan', 25000, 21, 'Nikmati sensasi pancake ala Jepang yang super tebal, ringan, dan selembut awan. Dibuat fresh dari adonan premium yang langsung meleleh di mulut pada gigitan pertama. Disajikan hangat dengan butter berkualitas, siraman sirup maple asli, dan taburan gula ha', 'fluffypancake&waffle.png', NULL, NULL),
(8, 'Toast Box', 'makanan', 22000, 30, 'Roti brioche ekstra tebal yang dipanggang hingga lapisan luarnya renyah keemasan, namun tetap mempertahankan kelembutan paripurna di bagian dalam. Diolesi dengan butter premium yang meresap sempurna ke dalam pori-pori roti, lalu disiram dengan madu murni ', 'toastbox.png', NULL, NULL),
(9, 'Silky Pudding', 'makanan', 15000, 30, 'Puding premium dengan tekstur selembut sutra yang langsung lumer seketika di dalam mulut. Dibuat dari paduan cokelat pekat berkualitas dan sentuhan rasa hazelnut yang creamy. Disajikan dingin dalam cup praktis, menghadirkan sensasi manis yang elegan, ring', 'silkypuding.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2026_05_12_050753_create_barangs_table', 1),
(6, '2026_05_12_052003_create_pesanans_table', 1),
(7, '2026_05_12_052426_create_pesanan_details_table', 1),
(8, '2026_07_09_082909_create_toppings_table', 2),
(9, '2026_07_09_091803_create_ulasans_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aldisaputra11fu@gmail.com', '$2y$10$..evskEkPOWSNKyOG9ftj.z5Tu0zBWn6Atm/BC01YOG3NIG/VwHgW', '2026-07-06 23:40:45'),
('kuuhakusora122@gmail.com', '$2y$10$fMOvGYffj5hsmuyVvRdQlOTABATAcSdW0DuheWsAz38CzgfMaZPna', '2026-07-08 19:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `jumlah_harga`, `kode`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, '2026-07-06', 18000, NULL, '2026-07-05 21:17:18', '2026-07-06 20:03:22', 1),
(2, 1, '2026-07-07', 9000, 992, '2026-07-06 20:24:57', '2026-07-06 20:25:04', 1),
(3, 1, '2026-07-07', 18000, 503, '2026-07-06 20:26:04', '2026-07-06 20:26:11', 1),
(4, 1, '2026-07-07', 9000, 964, '2026-07-06 20:30:19', '2026-07-06 20:30:24', 1),
(5, 1, '2026-07-07', 9000, 158, '2026-07-06 23:18:32', '2026-07-06 23:18:43', 1),
(6, 2, '2026-07-07', 9000, 413, '2026-07-06 23:46:19', '2026-07-06 23:46:24', 1),
(7, 2, '2026-07-07', 26000, 390, '2026-07-07 01:10:05', '2026-07-07 01:10:13', 1),
(8, 2, '2026-07-08', 68000, 793, '2026-07-08 03:14:09', '2026-07-08 03:15:54', 1),
(9, 2, '2026-07-09', 0, 198, '2026-07-09 00:28:15', '2026-07-09 00:33:09', 1),
(10, 2, '2026-07-09', 55000, 192, '2026-07-09 00:55:16', '2026-07-09 00:55:25', 1),
(11, 2, '2026-07-09', 55000, 421, '2026-07-09 02:08:18', '2026-07-09 02:08:26', 1),
(12, 2, '2026-07-09', 44000, 273, '2026-07-09 02:25:45', '2026-07-09 02:25:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `kemanisan` varchar(255) DEFAULT NULL,
  `kepahitan` varchar(255) DEFAULT NULL,
  `topping` varchar(100) DEFAULT NULL,
  `suhu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `kemanisan`, `kepahitan`, `topping`, `suhu`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 2, 18000, '1', '2', NULL, NULL, '2026-07-05 22:04:35', '2026-07-06 19:33:44'),
(6, 1, 2, 1, 9000, '1', '1', NULL, NULL, '2026-07-06 20:24:57', '2026-07-06 20:24:57'),
(7, 1, 3, 2, 18000, '1', '1', NULL, NULL, '2026-07-06 20:26:04', '2026-07-06 20:26:04'),
(8, 1, 4, 1, 9000, '1', '1', NULL, NULL, '2026-07-06 20:30:19', '2026-07-06 20:30:19'),
(9, 1, 5, 1, 9000, '1', '1', NULL, NULL, '2026-07-06 23:18:32', '2026-07-06 23:18:32'),
(10, 1, 6, 1, 9000, '1', '1', NULL, NULL, '2026-07-06 23:46:19', '2026-07-06 23:46:19'),
(11, 2, 7, 1, 26000, '1', '1', NULL, NULL, '2026-07-07 01:10:05', '2026-07-07 01:10:05'),
(12, 1, 8, 2, 18000, 'Level 2 (Normal)', 'Level 1 (Ringan)', NULL, 'Ice', '2026-07-08 03:14:09', '2026-07-08 03:14:09'),
(13, 5, 8, 1, 50000, NULL, NULL, 'Tanpa Topping', NULL, '2026-07-08 03:15:39', '2026-07-08 03:15:39'),
(15, 6, 9, 1, 44000, NULL, NULL, 'Ekstra Mentega, Taburan Milo, Saus Matcha', NULL, '2026-07-09 00:32:48', '2026-07-09 00:32:48'),
(16, 5, 10, 1, 55000, NULL, NULL, 'Strawberry Tiramisu', NULL, '2026-07-09 00:55:16', '2026-07-09 00:55:16'),
(17, 5, 11, 1, 55000, NULL, NULL, 'Strawberry', NULL, '2026-07-09 02:08:18', '2026-07-09 02:08:18'),
(18, 6, 12, 1, 44000, NULL, NULL, 'Base Normal, Saus Tiramisu, Buah Strawberry', NULL, '2026-07-09 02:25:45', '2026-07-09 02:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_topping` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `kategori_makanan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`id`, `nama_topping`, `harga`, `kategori_makanan`, `created_at`, `updated_at`) VALUES
(1, 'Strawberry', 5000, 'Tiramisu', '2026-07-09 01:59:37', '2026-07-09 01:59:37'),
(2, 'Es Krim', 2000, 'Tiramisu', '2026-07-09 02:00:09', '2026-07-09 02:00:09'),
(3, 'Saus Cokelat', 3000, 'Croffle', '2026-07-09 02:00:38', '2026-07-09 02:00:38'),
(4, 'Saus Matcha', 4000, 'Croffle', '2026-07-09 02:01:18', '2026-07-09 02:01:18'),
(5, 'Saus Tiramisu', 4000, 'Croffle', '2026-07-09 02:01:39', '2026-07-09 02:01:39'),
(6, 'Kacang Almond', 4000, 'Croffle', '2026-07-09 02:01:59', '2026-07-09 02:01:59'),
(7, 'Es Krim Vanilla', 5000, 'Croffle', '2026-07-09 02:02:23', '2026-07-09 02:02:23'),
(8, 'Buah Strawberry', 5000, 'Croffle', '2026-07-09 02:02:45', '2026-07-09 02:02:45'),
(9, 'Ekstra Mentega', 2000, 'Pancake', '2026-07-09 02:03:22', '2026-07-09 02:03:22'),
(10, 'Ekstra Sirup Maple', 3000, 'Pancake', '2026-07-09 02:03:45', '2026-07-09 02:03:45'),
(11, 'Choco Chips', 3000, 'Pancake', '2026-07-09 02:04:05', '2026-07-09 02:04:05'),
(12, 'Strawberry Segar', 5000, 'Pancake', '2026-07-09 02:04:30', '2026-07-09 02:04:30'),
(13, 'Es Krim', 5000, 'Croffle', '2026-07-09 02:04:59', '2026-07-09 02:04:59'),
(14, 'Keju Parut', 3000, 'Toast', '2026-07-09 02:05:28', '2026-07-09 02:05:28'),
(15, 'Taburan Milo', 3000, 'Toast', '2026-07-09 02:05:49', '2026-07-09 02:05:49'),
(16, 'Ekstra Cokelat', 2000, 'Toast', '2026-07-09 02:06:23', '2026-07-09 02:06:23'),
(17, 'Saus Karamel', 2000, 'Pudding', '2026-07-09 02:06:53', '2026-07-09 02:06:53'),
(18, 'Saus Cokelat Gelap', 2000, 'Pudding', '2026-07-09 02:07:15', '2026-07-09 02:07:15'),
(19, 'Puree Strawberry', 3000, 'Pudding', '2026-07-09 02:07:45', '2026-07-09 02:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `ulasans`
--

CREATE TABLE `ulasans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `bintang` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `nohp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `role`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aldi Saputra', 'aldisaputra11fu@gmail.com', NULL, '$2y$10$zY9fezF7DKaRHPKK6GwKtef72EVr1MnQBoy4BeIb4f8xiPOYGRBLC', 'kedungpane rt 8 rw 5 kec mijen', 'user', '088801931591', 'WKM5Hw8jjUtzTuvYj4cr1pnX88OzzCF2TqPtGdipA0KHdwS0oLpzK5WlBOAQ', '2026-06-28 21:09:19', '2026-07-06 20:02:39'),
(2, 'Xyoura', 'kuuhakusora122@gmail.com', NULL, '$2y$10$Qj1xwXyBAp6G6NIiew.25OdoEtKdKIoFcFPzF16ybCD2m4/VtewxS', 'kedungpane rt 11 rw 10 kec ngaliyan', 'admin', '085225355690', NULL, '2026-07-06 23:44:21', '2026-07-06 23:46:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulasans`
--
ALTER TABLE `ulasans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ulasans_user_id_foreign` (`user_id`),
  ADD KEY `ulasans_barang_id_foreign` (`barang_id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ulasans`
--
ALTER TABLE `ulasans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ulasans`
--
ALTER TABLE `ulasans`
  ADD CONSTRAINT `ulasans_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
