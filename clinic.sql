-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 03:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrasis`
--

CREATE TABLE `administrasis` (
  `id` int(11) NOT NULL,
  `kode_administrasi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `biaya` int(11) NOT NULL,
  `keluhan` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `status` varchar(10) DEFAULT 'baru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrasis`
--

INSERT INTO `administrasis` (`id`, `kode_administrasi`, `tanggal`, `pasien_id`, `dokter_id`, `poli`, `biaya`, `keluhan`, `diagnosis`, `status`) VALUES
(6, 'ADM0001', '2024-07-17', 5, 3, 'Pemeriksaan Rutin', 50000, 'anjing saya susah makan dan tidak aktif', NULL, 'baru'),
(7, 'ADM0007', '2024-07-20', 6, 1, 'Perawatan Pasca Operasi', 500000, 'kucing saya terluka parah karena tertabrak motor', NULL, 'baru'),
(8, 'ADM0008', '2024-07-18', 7, 2, 'Pembersihan Gigi', 100000, 'pembersihan gigi anjing saya', NULL, 'baru'),
(9, 'ADM0009', '2024-07-18', 8, 3, 'Pemeriksaan Rutin', 50000, 'burung saya cici keliatannya stress', NULL, 'baru');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode_dokter` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `spesialis` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `user_id`, `kode_dokter`, `nama_dokter`, `foto`, `spesialis`, `nomor_hp`, `twitter`, `facebook`, `instagram`, `tiktok`, `created_at`, `updated_at`) VALUES
(1, 3, 'D0001', 'Drh. Roy, Ph.D', 'public/foto_dokter/yF3Ofi2Pc5JnDkjIpE4vb9rQlt0LAZnHdjBQvlVV.jpg', 'Bedah_Hewan', '082311546684', '#', '#', '#', '#', '2024-07-14 16:03:14', '2024-07-16 17:26:56'),
(2, 4, 'D0002', 'Drh. Anggi, M.Sc', 'public/foto_dokter/ieCxuVPNsdvmsIRSlCyAsJRb2z0HTjsFcD6VX4Ao.jpg', 'Gigi_Hewan', '0856362546', '#', '#', '#', '#', '2024-07-16 18:13:04', '2024-07-16 18:13:04'),
(3, 5, 'D0003', 'Drh. Nanda, DVM', 'public/foto_dokter/mMR9H0vK0M4YVSCDtka3kuXgTcrtV3wRDLrWe8Wj.jpg', 'Penyakit_Dalam_Hewan', '081234567894', '#', '#', '#', '#', '2024-07-16 18:14:23', '2024-07-16 18:14:23');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_04_024701_create_administrasis_table', 1),
(7, '2023_12_04_024701_create_dokters_table', 1),
(8, '2023_12_04_024701_create_pasiens_table', 1),
(9, '2023_12_04_024701_create_polis_table', 1),
(10, '2023_12_04_025030_add_role_to_users', 1),
(11, '2024_01_08_051411_create_obats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_obat` varchar(255) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `satuan` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `created_at`, `updated_at`, `kode_obat`, `nama_obat`, `deskripsi`, `satuan`, `tipe`, `harga_beli`, `harga_jual`, `qty`, `tanggal_expired`) VALUES
(1, '2024-07-14 09:06:41', '2024-07-14 09:06:41', '01A', 'Diazepam', NULL, 'botol', 'botol', 6000, 10000, 100, '2025-09-14'),
(2, '2024-07-16 22:42:16', '2024-07-16 22:42:16', '01B', 'Ivermectin', NULL, 'tablet', 'botol', 50000, 75000, 100, '2025-11-24'),
(3, '2024-07-16 22:43:08', '2024-07-16 22:43:08', '01C', 'Amoxicillin', NULL, 'kapsul', 'tablet', 100000, 150000, 100, '2025-12-24'),
(4, '2024-07-16 22:43:40', '2024-07-16 22:43:40', '01D', 'Prednisone', NULL, 'strip', 'botol', 50000, 75000, 100, '2025-06-24'),
(5, '2024-07-16 22:44:17', '2024-07-16 22:44:17', '01E', 'Omeprazole', NULL, 'pcs', 'tablet', 50000, 85000, 100, '2026-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` int(11) NOT NULL,
  `kode_pasien` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `kode_pasien`, `nama_pasien`, `jenis_kelamin`, `nomor_hp`, `status`, `alamat`, `created_at`, `updated_at`) VALUES
(5, 'P0005', 'jojo-anjing', 'Laki-laki', 'hendri-085365465649', 'Sudah Menikah', 'Batu aji', '2024-07-17 05:47:39', '2024-07-17 05:59:18'),
(6, 'P0006', 'leo-kucing', 'Perempuan', 'samuel-08565635645', 'Sudah Menikah', 'bengkong', '2024-07-17 05:49:47', '2024-07-17 05:58:20'),
(7, 'P0007', 'bruno-anjing', 'Laki-laki', 'Dzaky-081359408603', 'Sudah Menikah', 'batu aji', '2024-07-17 05:51:25', '2024-07-17 05:56:34'),
(8, 'P0008', 'cici-burung', 'Perempuan', 'pranoto-081366876798', 'Sudah Menikah', 'batam center', '2024-07-17 06:08:14', '2024-07-17 06:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `polis`
--

CREATE TABLE `polis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `biaya` double NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polis`
--

INSERT INTO `polis` (`id`, `dokter_id`, `nama`, `biaya`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pembersihan Gigi', 100000, 'Pemeriksaan gigi dan pembersihan profesional secara teratur.', '2024-07-14 09:05:38', '2024-07-16 22:36:42'),
(2, 3, 'Pemeriksaan Rutin', 50000, 'Meliputi pemeriksaan fisik menyeluruh dan evaluasi kesehatan umum hewan peliharaan.', '2024-07-16 11:15:56', '2024-07-16 22:35:55'),
(3, 3, 'Perawatan Pencegahan', 50000, 'Edukasi pemilik hewan tentang cara mencegah penyakit menular dan kronis.', '2024-07-16 22:37:23', '2024-07-16 22:37:23'),
(4, 1, 'Perawatan Intensif', 150000, 'Ruang perawatan khusus dengan peralatan modern untuk pemantauan 24 jam.', '2024-07-16 22:38:01', '2024-07-16 22:38:01'),
(5, 2, 'Perawatan Gigi Lanjutan', 200000, 'Perawatan untuk masalah kesehatan gigi seperti peradangan gusi dan abses gigi.', '2024-07-16 22:38:32', '2024-07-16 22:38:32'),
(6, 3, 'Diagnosis Penyakit', 100000, 'Menyediakan layanan laboratorium untuk diagnosis penyakit seperti tes darah dan urin.', '2024-07-16 22:39:11', '2024-07-16 22:39:11'),
(7, 1, 'Perawatan Pasca Operasi', 500000, 'Monitoring pasca operasi untuk memastikan pemulihan yang optimal.', '2024-07-16 22:39:49', '2024-07-16 22:39:49'),
(8, 1, 'Rehabilitasi', 100000, 'Program rehabilitasi fisioterapi untuk pemulihan pasca cedera atau operasi.', '2024-07-16 22:40:23', '2024-07-16 22:40:23'),
(9, 2, 'Konsultasi Kesehatan Mulut', 50000, 'Pemeriksaan dan konsultasi tentang masalah kesehatan mulut hewan.', '2024-07-16 22:40:48', '2024-07-16 22:40:48');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@admin.com', '2024-07-14 08:54:56', '$2y$10$b/BPvr0h3zKEZe.qnFQpAuIpzZMEfZDgGk0jWscvo/BxWDNaYTFTy', 'fuzta2kUCL37cnSFmel2M8DKWdBtwRhFKX9NWSPBfYYzZXJsbsEujeRB79Ig', '2024-07-14 08:54:56', '2024-07-14 08:54:56', 'admin'),
(2, 'robin', 'robin@staff.com', NULL, '$2y$10$Gu2/iKPJl0Zi0n.ABbLQO.fCCULTUR7a1qqHl77wu/uiVFwqVGv6i', NULL, '2024-07-14 08:58:47', '2024-07-16 10:37:59', 'operator'),
(3, 'Drh. Roy, Ph.D', 'roy@dokter.com', NULL, '$2y$10$hzJB9l1UyQIe/7Kko00k8OZoE.jonRe6A6bBZ0YiBk7/bCBTuGB1.', NULL, '2024-07-14 09:03:14', '2024-07-16 10:31:10', 'dokter'),
(4, 'Drh. Anggi, M.Sc', 'anggi@dokter.com', NULL, '$2y$10$Kj9UFiZyURR73xiAQJbcPu2kljIA/f64BkccO1IpHbzzLNQaHh1xO', NULL, '2024-07-16 11:13:04', '2024-07-16 23:17:43', 'dokter'),
(5, 'Drh. Nanda, DVM', 'nanda@dokter.com', NULL, '$2y$10$6ubm9roLJHTclqUFxIWwL.PUX8K4MNeMZYKmroJRA/hKXJov3fe7u', NULL, '2024-07-16 11:14:23', '2024-07-16 23:16:30', 'dokter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrasis`
--
ALTER TABLE `administrasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
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
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obat_kode_obat_unique` (`kode_obat`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
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
-- Indexes for table `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polis_dokter_id_index` (`dokter_id`);

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
-- AUTO_INCREMENT for table `administrasis`
--
ALTER TABLE `administrasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
