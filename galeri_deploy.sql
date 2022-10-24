-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 06:55 AM
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
-- Database: `galeri_deploy`
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
(1, 'Andir', 'andir', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(2, 'Astana Anyar', 'astana_anyar', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(3, 'Antapani', 'antapani', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(4, 'Arcamanik', 'arcamanik', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(5, 'Babakan Ciparay', 'babakan_ciparay', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(6, 'Bandung Kidul', 'bandung_kidul', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(7, 'Bandung Kulon', 'bandung_kulon', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(8, 'Bandung Wetan', 'bandung_wetan', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(9, 'Batununggal', 'batununggal', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(10, 'Bojongloa Kaler', 'bojongloa_kaler', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(11, 'Bojongloa Kidul', 'bojongloa_kidul', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(12, 'Buahbatu', 'buahbatu', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(13, 'Cibeunying Kaler', 'cibeunying_kaler', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(14, 'Cibeunying Kidul', 'cibeunying_kidul', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(15, 'Cibiru', 'cibiru', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(16, 'Cicendo', 'cicendo', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(17, 'Cidadap', 'cidadap', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(18, 'Cinambo', 'cinambo', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(19, 'Coblong', 'coblong', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(20, 'Gedebage', 'gedebage', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(21, 'Kiaracondong', 'kiaracondong', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(22, 'Lengkong', 'lengkong', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(23, 'Mandalajati', 'mandalajati', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(24, 'Panyileukan', 'panyileukan', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(25, 'Rancasari', 'rancasari', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(26, 'Regol', 'regol', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(27, 'Sukajadi', 'sukajadi', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(28, 'Sukasari', 'sukasari', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(29, 'Sumur Bandung', 'sumur_bandung', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(30, 'Ujung Berung', 'ujung_berung', '2022-10-23 06:23:26', '2022-10-23 06:23:26');

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
(1, 'Persiapan', 'persiapan', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(2, 'Pelatihan', 'pelatihan', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(3, 'Pendataan Lapangan', 'pendataan', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(4, 'Pengolahan', 'pengolahan', '2022-10-23 06:23:26', '2022-10-23 06:23:26');

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
(4, '2022_10_18_010359_create_kegiatan_table', 1),
(5, '2022_10_18_010536_create_tc_table', 1),
(6, '2022_10_18_011918_create_gambar_table', 1),
(7, '2022_10_18_012240_create_pelatihan_table', 1),
(8, '2022_10_18_013457_create_kecamatan_table', 1),
(9, '2022_10_18_013550_create_pendataan_table', 1),
(10, '2022_10_20_025551_create_dokumen_table', 1),
(11, '2022_10_20_030019_create_dokumen_pelatihan_table', 1),
(12, '2022_10_20_030110_create_dokumen_pendataan_table', 1);

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
(1, 'Hotel Belviu', 'belviu', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(2, 'Hotel Grand Asrilia', 'asrilia', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(3, 'Hotel Grand Aquila', 'aquila', '2022-10-23 06:23:26', '2022-10-23 06:23:26'),
(4, 'Hotel Savoy Homann', 'savoy', '2022-10-23 06:23:26', '2022-10-23 06:23:26');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumen_pelatihan`
--
ALTER TABLE `dokumen_pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumen_pendataan`
--
ALTER TABLE `dokumen_pendataan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
