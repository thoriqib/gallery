-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 10:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galeri`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `judul`, `nama`, `kegiatan_id`, `created_at`, `updated_at`) VALUES
(3, 'dokumen pelatihan', '1666238639195-term_of_use.pdf', 3, '2022-10-19 21:03:59', '2022-10-19 21:03:59'),
(5, 'Skripsi', '1666249210484-221810626_Thoriq-Ibadurrohman(Judul).pdf', 1, NULL, NULL),
(6, 'Persiapan pendataan', '1666250032928-VERSI-2-SKRIPSI-FINAL-1-5.pdf', 1, NULL, NULL),
(7, 'Pembinaan Statistik', '1666250825345-221810626-lampiran.pdf', 1, NULL, NULL),
(8, 'machine learning', '1666250860152-pdfresizer.com-pdf-crop.pdf', 1, NULL, NULL),
(9, 'machine learning', '1666250860154-ACFrOgDwGgM14l-MoStlkNi5-e7NveDN5ugPa9_4DblKoreexQT-VD1Y500x4hMdHh6vIzYn4Du13Jd5EKAz8Cpgne3Vn3wa7gxLJAmdPrCwb4oxrav4k0EdElaTJCgCSjjpl3eoEY1COuYpXB-Q.pdf', 1, NULL, NULL),
(10, 'Laporan belviu I', '1666315503581-MNOR_A_1.pdf', 2, '2022-10-20 18:25:03', '2022-10-20 18:25:03'),
(11, 'Dokumentasi', '1666333657911-SKRIPSI-FINAL-1-1-14.pdf', 3, '2022-10-20 23:27:37', '2022-10-20 23:27:37'),
(12, 'hahaha', '1666335487356-784-Article-Text-1244-1-10-20200803.pdf', 2, '2022-10-20 23:58:07', '2022-10-20 23:58:07'),
(13, 'hahaha', '1666335487400-686-1880-1-PB.pdf', 2, '2022-10-20 23:58:07', '2022-10-20 23:58:07'),
(14, 'dokumen dokumen', '1666335705737-ACFrOgDwGgM14l-MoStlkNi5-e7NveDN5ugPa9_4DblKoreexQT-VD1Y500x4hMdHh6vIzYn4Du13Jd5EKAz8Cpgne3Vn3wa7gxLJAmdPrCwb4oxrav4k0EdElaTJCgCSjjpl3eoEY1COuYpXB-Q.pdf', 3, '2022-10-21 00:01:45', '2022-10-21 00:01:45'),
(15, 'dokumen dokumen', '1666335705788-Yunarso-Anang---THORIQ-IBADURROHMAN---Surat-Persetujuan-untuk-Sidang.pdf', 3, '2022-10-21 00:01:45', '2022-10-21 00:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_pelatihan`
--

CREATE TABLE `dokumen_pelatihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokumen_id` bigint(20) UNSIGNED NOT NULL,
  `tc_id` bigint(20) UNSIGNED NOT NULL,
  `gelombang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen_pelatihan`
--

INSERT INTO `dokumen_pelatihan` (`id`, `dokumen_id`, `tc_id`, `gelombang`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'I', '2022-10-20 18:25:03', '2022-10-20 18:25:03'),
(2, 12, 1, 'II', '2022-10-20 23:58:07', '2022-10-20 23:58:07'),
(3, 13, 1, 'II', '2022-10-20 23:58:07', '2022-10-20 23:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_pendataan`
--

CREATE TABLE `dokumen_pendataan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokumen_id` bigint(20) UNSIGNED NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen_pendataan`
--

INSERT INTO `dokumen_pendataan` (`id`, `dokumen_id`, `kecamatan_id`, `created_at`, `updated_at`) VALUES
(1, 3, 9, '2022-10-19 21:03:59', '2022-10-19 21:03:59'),
(2, 11, 20, '2022-10-20 23:27:37', '2022-10-20 23:27:37'),
(3, 14, 20, '2022-10-21 00:01:45', '2022-10-21 00:01:45'),
(4, 15, 20, '2022-10-21 00:01:45', '2022-10-21 00:01:45');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `nama`, `kegiatan_id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '1666313947138-photo_6177119306702238338_y.jpg', 2, 'belviu gelombang 2', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(2, '1666313947177-photo_6177119306702238340_y.jpg', 2, 'belviu gelombang 2', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(3, '1666313947180-photo_6183702632573547139_y.jpg', 2, 'belviu gelombang 2', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(4, '1666313984214-photo_6183702632573547140_y.jpg', 2, 'belviu gelombang 1', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(5, '1666313984248-photo_6183702632573547145_y.jpg', 2, 'belviu gelombang 1', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(6, '1666313984254-photo_6183702632573547157_y.jpg', 2, 'belviu gelombang 1', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(7, '1666314035087-20220312_165112.jpg', 2, 'Asrilia coy', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(8, '1666314035138-20220429_095748.jpg', 2, 'Asrilia coy', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(9, '1666314035143-20220513_093302.jpg', 2, 'Asrilia coy', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(10, '1666314035146-20220601_074938.jpg', 2, 'Asrilia coy', '2022-10-20 18:00:35', '2022-10-20 18:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Andir', 'andir', NULL, NULL),
(2, 'Astana Anyar', 'astana_anyar', NULL, NULL),
(3, 'Antapani', 'antapani', NULL, NULL),
(4, 'Arcamanik', 'arcamanik', NULL, NULL),
(5, 'Babakan Ciparay', 'babakan_ciparay', NULL, NULL),
(6, 'Bandung Kidul', 'bandung_kidul', NULL, NULL),
(7, 'Bandung Kulon', 'bandung_kulon', NULL, NULL),
(8, 'Bandung Wetan', 'bandung_wetan', NULL, NULL),
(9, 'Batununggal', 'batununggal', NULL, NULL),
(10, 'Bojongloa Kaler', 'bojongloa_kaler', NULL, NULL),
(11, 'Bojongloa Kidul', 'bojongloa_kidul', NULL, NULL),
(12, 'Buahbatu', 'buahbatu', NULL, NULL),
(13, 'Cibeunying Kaler', 'cibeunying_kaler', NULL, NULL),
(14, 'Cibeunying Kidul', 'cibeunying_kidul', NULL, NULL),
(15, 'Cibiru', 'cibiru', NULL, NULL),
(16, 'Cicendo', 'cicendo', NULL, NULL),
(17, 'Cidadap', 'cidadap', NULL, NULL),
(18, 'Cinambo', 'cinambo', NULL, NULL),
(19, 'Coblong', 'coblong', NULL, NULL),
(20, 'Gedebage', 'gedebage', NULL, NULL),
(21, 'Kiaracondong', 'kiaracondong', NULL, NULL),
(22, 'Lengkong', 'lengkong', NULL, NULL),
(23, 'Mandalajati', 'mandalajati', NULL, NULL),
(24, 'Panyileukan', 'panyileukan', NULL, NULL),
(25, 'Rancasari', 'rancasari', NULL, NULL),
(26, 'Regol', 'regol', NULL, NULL),
(27, 'Sukajadi', 'sukajadi', NULL, NULL),
(28, 'Sukasari', 'sukasari', NULL, NULL),
(29, 'Sumur Bandung', 'sumur_bandung', NULL, NULL),
(30, 'Ujung Berung', 'ujung_berung', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Persiapan', 'persiapan', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(2, 'Pelatihan', 'pelatihan', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(3, 'Pendataan Lapangan', 'pendataan', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(4, 'Pengolahan', 'pengolahan', '2022-10-19 20:58:33', '2022-10-19 20:58:33');

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2022_10_18_010359_create_kegiatan_table', 1),
(35, '2022_10_18_010536_create_tc_table', 1),
(36, '2022_10_18_011918_create_gambar_table', 1),
(37, '2022_10_18_012240_create_pelatihan_table', 1),
(38, '2022_10_18_013457_create_kecamatan_table', 1),
(39, '2022_10_18_013550_create_pendataan_table', 1),
(40, '2022_10_20_025551_create_dokumen_table', 1),
(41, '2022_10_20_030019_create_dokumen_pelatihan_table', 1),
(42, '2022_10_20_030110_create_dokumen_pendataan_table', 1);

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
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_id` bigint(20) UNSIGNED NOT NULL,
  `tc_id` bigint(20) UNSIGNED NOT NULL,
  `gelombang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id`, `gambar_id`, `tc_id`, `gelombang`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'II', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(2, 2, 1, 'II', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(3, 3, 1, 'II', '2022-10-20 17:59:07', '2022-10-20 17:59:07'),
(4, 4, 1, 'I', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(5, 5, 1, 'I', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(6, 6, 1, 'I', '2022-10-20 17:59:44', '2022-10-20 17:59:44'),
(7, 7, 2, 'I', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(8, 8, 2, 'I', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(9, 9, 2, 'I', '2022-10-20 18:00:35', '2022-10-20 18:00:35'),
(10, 10, 2, 'I', '2022-10-20 18:00:35', '2022-10-20 18:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `pendataan`
--

CREATE TABLE `pendataan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_id` bigint(20) UNSIGNED NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tc`
--

CREATE TABLE `tc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tc`
--

INSERT INTO `tc` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Belviu', 'belviu', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(2, 'Hotel Grand Asrilia', 'asrilia', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(3, 'Hotel Grand Aquila', 'aquila', '2022-10-19 20:58:33', '2022-10-19 20:58:33'),
(4, 'Hotel Savoy Homann', 'savoy', '2022-10-19 20:58:33', '2022-10-19 20:58:33');

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
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_kegiatan_id_foreign` (`kegiatan_id`);

--
-- Indexes for table `dokumen_pelatihan`
--
ALTER TABLE `dokumen_pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pelatihan_dokumen_id_foreign` (`dokumen_id`),
  ADD KEY `dokumen_pelatihan_tc_id_foreign` (`tc_id`);

--
-- Indexes for table `dokumen_pendataan`
--
ALTER TABLE `dokumen_pendataan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pendataan_dokumen_id_foreign` (`dokumen_id`),
  ADD KEY `dokumen_pendataan_kecamatan_id_foreign` (`kecamatan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gambar_kegiatan_id_foreign` (`kegiatan_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
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
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelatihan_gambar_id_foreign` (`gambar_id`),
  ADD KEY `pelatihan_tc_id_foreign` (`tc_id`);

--
-- Indexes for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendataan_gambar_id_foreign` (`gambar_id`),
  ADD KEY `pendataan_kecamatan_id_foreign` (`kecamatan_id`);

--
-- Indexes for table `tc`
--
ALTER TABLE `tc`
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
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dokumen_pelatihan`
--
ALTER TABLE `dokumen_pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dokumen_pendataan`
--
ALTER TABLE `dokumen_pendataan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendataan`
--
ALTER TABLE `pendataan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tc`
--
ALTER TABLE `tc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_kegiatan_id_foreign` FOREIGN KEY (`kegiatan_id`) REFERENCES `kegiatan` (`id`);

--
-- Constraints for table `dokumen_pelatihan`
--
ALTER TABLE `dokumen_pelatihan`
  ADD CONSTRAINT `dokumen_pelatihan_dokumen_id_foreign` FOREIGN KEY (`dokumen_id`) REFERENCES `dokumen` (`id`),
  ADD CONSTRAINT `dokumen_pelatihan_tc_id_foreign` FOREIGN KEY (`tc_id`) REFERENCES `tc` (`id`);

--
-- Constraints for table `dokumen_pendataan`
--
ALTER TABLE `dokumen_pendataan`
  ADD CONSTRAINT `dokumen_pendataan_dokumen_id_foreign` FOREIGN KEY (`dokumen_id`) REFERENCES `dokumen` (`id`),
  ADD CONSTRAINT `dokumen_pendataan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`);

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_kegiatan_id_foreign` FOREIGN KEY (`kegiatan_id`) REFERENCES `kegiatan` (`id`);

--
-- Constraints for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD CONSTRAINT `pelatihan_gambar_id_foreign` FOREIGN KEY (`gambar_id`) REFERENCES `gambar` (`id`),
  ADD CONSTRAINT `pelatihan_tc_id_foreign` FOREIGN KEY (`tc_id`) REFERENCES `tc` (`id`);

--
-- Constraints for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD CONSTRAINT `pendataan_gambar_id_foreign` FOREIGN KEY (`gambar_id`) REFERENCES `gambar` (`id`),
  ADD CONSTRAINT `pendataan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
