-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2024 at 12:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyoba`
--

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
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `lulusan` varchar(255) DEFAULT NULL,
  `walikelas` varchar(255) DEFAULT NULL,
  `tahunmengajar` varchar(10) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `user_id`, `nik`, `image`, `nama`, `gender`, `tanggallahir`, `lulusan`, `walikelas`, `tahunmengajar`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `desa`, `created_at`, `updated_at`) VALUES
(20, 65, '3204154708780008', '20230624174630_Ir.Soekarno.png', 'Ir. Soekarno', 'Laki-Laki', '1960-05-11', 'S3', NULL, '2002', 'Jl Sukamulya RT 02 RW 01', 'Jawa Barat', 'Bandung', 'Bojongloa Kaler', 'Sukaasih', '2023-06-23 11:52:48', '2023-06-24 10:46:31'),
(21, 71, '3204154708780009', '20230625123353_EndarPratama,S.Kom.jpg', 'Endar Pratama, S.Kom', 'Laki-Laki', '1889-05-24', 'S1', NULL, '2012', 'Kp Cipanas RT 02 RW 01', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margamekar', '2023-06-24 12:18:41', '2023-06-25 05:55:52'),
(22, 76, NULL, NULL, 'Enjang, S.Pd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-25 06:10:36', '2023-06-25 06:10:36'),
(23, 77, NULL, NULL, 'Ayi Rini Rohaeni,S.Pd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-25 06:11:49', '2023-06-25 06:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `guru_satuan`
--

CREATE TABLE `guru_satuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `satuan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_satuan`
--

INSERT INTO `guru_satuan` (`id`, `guru_id`, `satuan_id`, `created_at`, `updated_at`) VALUES
(1, 20, 1, NULL, NULL),
(3, 20, 2, NULL, NULL),
(4, 21, 1, NULL, NULL),
(5, 21, 3, NULL, NULL),
(6, 22, 1, NULL, NULL),
(7, 22, 2, NULL, NULL),
(8, 23, 2, NULL, NULL);

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
(5, '2023_02_10_092731_create_news_table', 2),
(7, '2023_06_06_014951_create_santris_table', 3),
(8, '2023_06_08_053429_add_columns_to_users_table', 4),
(10, '2023_06_08_060243_add_santri_id_to_users_table', 5),
(18, '2023_06_10_164714_create_ortus_table', 6),
(19, '2023_06_11_032305_create_pivot_table', 7),
(23, '2023_06_13_170708_create_satuan_table', 8),
(24, '2023_06_14_014311_create_gurus_table', 8),
(25, '2023_06_20_070702_delete_relasi_orangtua', 9),
(33, '2023_06_14_014508_create_satuans_table', 10),
(34, '2023_06_20_071128_guru_satuan', 10),
(35, '2023_06_23_163006_create_tamus_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` int(10) UNSIGNED NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `kategori`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(11, 'Bismillah ini post pertama', 1, 'Insya Allah bisa', '63ec279f4f86a_20200216_184421.jpg', '2023-02-14 17:30:23', '2023-02-14 17:30:23'),
(12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '63ec3cc57ff80_20200216_142634.jpg', '2023-02-14 19:00:37', '2023-02-14 19:00:37'),
(13, 'Asal Usul Moralitas dan Struktur Masyarakat dalam Feminisme', 2, 'Asal Usul Moralitas dan Struktur Masyarakat dalam Feminisme\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '63f073534387f_sapi-qurban.jpg', '2023-02-17 23:42:27', '2023-02-17 23:42:27'),
(14, 'LGBT Perspektif Islam: Krisis dan Solusi', 3, 'LGBT Perspektif Islam: Krisis dan Solusi \r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '63f073c138ece_istockphoto-532467587-612x612.jpg', '2023-02-17 23:44:17', '2023-02-17 23:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `ortus`
--

CREATE TABLE `ortus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kabupaten` varchar(25) DEFAULT NULL,
  `kecamatan` varchar(25) DEFAULT NULL,
  `desa` varchar(25) DEFAULT NULL,
  `penghasilan` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ortus`
--

INSERT INTO `ortus` (`id`, `user_id`, `nik`, `nama`, `gender`, `tanggallahir`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `desa`, `penghasilan`, `image`, `created_at`, `updated_at`) VALUES
(1, 37, '3204154708780008', 'Megawati Soekarnoputri', 'Perempuan', '1878-08-07', 'Kp Puncakraya RT 02 RW 01', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margaluyu', 500000000, '20230611153226_MegawatiSoekarnoputri.png', '2023-06-10 21:17:32', '2023-06-11 08:32:26'),
(2, 74, '3204152402670003', 'Surya Paloh', 'Laki-Laki', '1667-02-24', 'Kp Rancaekek RT 02 RW 04', 'Jawa Barat', 'Bandung', 'Rancaekek', 'Rancaekek', 200000000, NULL, '2023-06-24 14:09:12', '2023-06-24 14:10:50'),
(3, 75, '3204150311890009', 'Abdurrahman Wahid', 'Laki-Laki', '1989-11-03', 'Jl Merauke No 12 RT 02 RW 02', 'Jawa Barat', 'Bandung', 'Banjaran', 'Banjaran', 10000000, '20230625131304_AbdurrahmanWahid.png', '2023-06-25 02:45:30', '2023-06-25 06:13:04'),
(4, 84, NULL, 'A Tsyam Arif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-26 05:54:40', '2023-06-26 05:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `ortu_santri`
--

CREATE TABLE `ortu_santri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `santri_id` int(10) UNSIGNED NOT NULL,
  `ortu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `santris`
--

CREATE TABLE `santris` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nisn` int(11) DEFAULT NULL,
  `no_induk` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `satuan` varchar(5) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kabupaten` varchar(25) DEFAULT NULL,
  `kecamatan` varchar(25) DEFAULT NULL,
  `desa` varchar(25) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `santris`
--

INSERT INTO `santris` (`id`, `user_id`, `nisn`, `no_induk`, `nama`, `kelas`, `satuan`, `gender`, `tanggallahir`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `desa`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 29, 2032128407, 2000345, 'Puan Maharani', '11', 'MA', 'Perempuan', '2001-08-15', 'Kp Puncakraya RT 02 RW 01', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margaluyu', '20230626123801_PuanMaharani.png', 'Aktif', '2023-06-07 23:54:43', '2023-06-26 05:38:01'),
(6, 35, 2032128407, 2032128403, 'Jokowi Widodo', '12', 'MA', 'Laki-Laki', '1999-04-22', 'Kp Pasirmulya RT 02 RW 03', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margamulya', '20230625105724_JokowiWidodo.jpg', 'Lulus', '2023-06-10 21:15:00', '2023-06-25 03:57:24'),
(7, 82, NULL, NULL, 'Ghoziah Haura Jannah', NULL, 'MA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-26 05:49:22', '2023-06-26 05:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `satuan`) VALUES
(1, 'MA'),
(2, 'MTs'),
(3, 'MI'),
(4, 'RA'),
(5, 'DU');

-- --------------------------------------------------------

--
-- Table structure for table `tamus`
--

CREATE TABLE `tamus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alumni` tinyint(1) NOT NULL DEFAULT 0,
  `angkatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tamus`
--

INSERT INTO `tamus` (`id`, `user_id`, `nama`, `gender`, `tanggallahir`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `desa`, `image`, `alumni`, `angkatan`, `created_at`, `updated_at`) VALUES
(1, 72, 'Guruh', 'Laki-Laki', '1990-05-24', 'Kp Cipanas RT 04 RW 03', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margamekar', '20230625103453_Guruh.png', 1, '2002', '2023-06-24 12:19:26', '2023-06-25 03:34:53'),
(2, 73, 'Jhodi Firmansyah', 'Laki-Laki', '2003-05-22', 'Kp Pasirmulya RT 02 RW 01', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Margamulya', '20230624192237_JhodiFirmansyah.png', 0, NULL, '2023-06-24 12:21:09', '2023-06-24 12:22:37'),
(3, 78, 'Aldi Ramdani', 'Laki-Laki', '2000-12-17', 'Kp Dangdang RT 03 RW 01', 'Jawa Barat', 'Bandung', 'Pangalengan', 'Pulosari', NULL, 1, '2019', '2023-06-25 06:45:17', '2023-06-25 06:46:04');

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
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bintang Ramadhan', 'admin@myfirdaus.com', NULL, '$2y$10$9L38aDllnHcXVw4fgii0yuTBN4Ch5zOB.gevx9ezH7TnaQEpBFJ1.', 1, NULL, '2023-01-26 18:49:38', '2023-01-26 18:49:38'),
(2, 'Bintang Ramadhan', 'asatidz@myfirdaus.com', NULL, '$2y$10$wURG47tH7vl2rEDwZrubwO7VMGyqoYjqri8Zhr8OF.wSmqsvi3MDq', 2, NULL, '2023-01-26 19:12:21', '2023-01-26 19:12:21'),
(3, 'Nazib Asha Amirullah', 'nazibashasha@gmail.com', NULL, '$2y$10$z5i2URdNNCqueS0IsC6DNuLlV4YOCYvh/b3GMQnXoZGOaXqrlYqf6', 5, NULL, '2023-01-30 22:31:27', '2023-01-30 22:31:27'),
(4, 'Nazib asha asha', 'nazibsantri@myfirdaus.com', NULL, '$2y$10$Adl12uVNkmQJQ8eoVzBgFuXBKMkoIZI0CoC4w6.VGNc7l1LgyupTS', 3, NULL, '2023-06-05 19:52:59', '2023-06-05 19:52:59'),
(29, 'Puan Maharani', 'pupuan@myfirdaus.com', NULL, '$2y$10$OpEwWbpn1.FcCf0MNCrG.eXxyz4YZwdVrDUWUGxmsQsJDptEFTNIC', 3, NULL, '2023-06-07 23:54:43', '2023-06-07 23:54:43'),
(35, 'Jokowi Widodo', 'joko@myfirdaus.com', NULL, '$2y$10$P2K3Oc55wnGPTzPt720u7uwJD/BFPajybMaqJFsEv1xNwQT9dP5RK', 3, NULL, '2023-06-10 21:15:00', '2023-06-10 21:15:00'),
(37, 'Megawati Soekarnoputri', 'mega@myfirdaus.com', NULL, '$2y$10$/VF3RugMaXa4ulpheORTWuySuLBKN.k3WLqyWUSJGnekTnu6xYDNe', 4, NULL, '2023-06-10 21:17:32', '2023-06-10 21:17:32'),
(65, 'Ir. Soekarno', 'soekarno@myfirdaus.com', NULL, '$2y$10$JLRjgp8hwUwpmHxtX.kvD.2bG8rVoU7mo0vdlhwhpdjp4JYr1pDVO', 2, NULL, '2023-06-23 11:52:48', '2023-06-23 11:52:48'),
(71, 'Endar Pratama, S.Kom', 'endar@myfirdaus.com', NULL, '$2y$10$C2NxMteiu79pSJnC6DPjreZJH924OrHnwPSsgxcy54n/Tol6WUapm', 2, NULL, '2023-06-24 12:18:41', '2023-06-24 12:18:41'),
(72, 'Guruh', 'guruh@myfirdaus.com', NULL, '$2y$10$hB5VDTzeG6uSvVNNSYhoXeWnKIOQzsEltzNRlyTlKJB.CDcfdjQXK', 5, NULL, '2023-06-24 12:19:26', '2023-06-24 12:19:26'),
(73, 'Jhodi Firmansyah', 'jhodi@myfirdaus.com', NULL, '$2y$10$rDUXfx8ZF86XJwxksOOp.OOsoHTJRniXbbUDOLjGwsAWfeyEhtUiW', 5, NULL, '2023-06-24 12:21:09', '2023-06-24 12:21:09'),
(74, 'Surya Paloh', 'paloh@myfirdaus.com', NULL, '$2y$10$tm5qC4yvkDJaiI0HunLsTOsY9JiixRowxrCrK26.3uF7aZOJZo3Za', 4, NULL, '2023-06-24 14:09:11', '2023-06-24 14:09:11'),
(75, 'Abdurrahman Wahid', 'wahid@myfirdaus.com', NULL, '$2y$10$ga7A5vg8LfCmJnEPkCNM0.TCI2.RbwUzN2yvx2kmSuuM9qY2uVPJi', 4, NULL, '2023-06-25 02:45:30', '2023-06-25 02:45:30'),
(76, 'Enjang, S.Pd', 'enjang@myfirdaus.com', NULL, '$2y$10$IA1epOb90vAlFkMWZfpfu..wZgqw9iw2fwvx0VLRViN9uQGSi8UBC', 2, NULL, '2023-06-25 06:10:36', '2023-06-25 06:10:36'),
(77, 'Ayi Rini Rohaeni,S.Pd', 'rini@myfirdaus.com', NULL, '$2y$10$RtaqmclAPoB4vvFeYezla.GxM12at7Rh0xCo5K2T6t0rYEANiYDeG', 2, NULL, '2023-06-25 06:11:49', '2023-06-25 06:11:49'),
(78, 'Aldi Ramdani', 'aldi@myfirdaus.com', NULL, '$2y$10$PzbPOXk750689u30wLlD7OjdFoaikesHR5ORA.1k5MtFJ1encEyd.', 5, NULL, '2023-06-25 06:45:17', '2023-06-25 06:45:17'),
(82, 'Ghoziah Haura Jannah', 'haura@myfirdaus.com', NULL, '$2y$10$2p6Eqb262sITE8d4tr4W7ObmrI9uG9the86Q14xyVWvQyScDZfdvC', 3, NULL, '2023-06-26 05:49:22', '2023-06-26 05:49:22'),
(84, 'A Tsyam Arif', 'arif@myfirdaus.com', NULL, '$2y$10$aT7EzKVlNdLzxFmezlJ2qud8k.99OcN8STRjMMiBNA8Un6m0w396e', 4, NULL, '2023-06-26 05:54:40', '2023-06-26 05:54:40');

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
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `gurus_user_id_foreign` (`user_id`);

--
-- Indexes for table `guru_satuan`
--
ALTER TABLE `guru_satuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_satuan_guru_id_foreign` (`guru_id`),
  ADD KEY `guru_satuan_satuan_id_foreign` (`satuan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortus`
--
ALTER TABLE `ortus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `ortus_ortu_id_foreign` (`user_id`);

--
-- Indexes for table `ortu_santri`
--
ALTER TABLE `ortu_santri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ortu_santri_santri_id_foreign` (`santri_id`),
  ADD KEY `ortu_santri_ortu_id_foreign` (`ortu_id`);

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
-- Indexes for table `santris`
--
ALTER TABLE `santris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `santris_santri_id_foreign` (`user_id`);

--
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamus`
--
ALTER TABLE `tamus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tamus_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `guru_satuan`
--
ALTER TABLE `guru_satuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ortus`
--
ALTER TABLE `ortus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ortu_santri`
--
ALTER TABLE `ortu_santri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `santris`
--
ALTER TABLE `santris`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tamus`
--
ALTER TABLE `tamus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gurus`
--
ALTER TABLE `gurus`
  ADD CONSTRAINT `gurus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `guru_satuan`
--
ALTER TABLE `guru_satuan`
  ADD CONSTRAINT `guru_satuan_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guru_satuan_satuan_id_foreign` FOREIGN KEY (`satuan_id`) REFERENCES `satuans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ortus`
--
ALTER TABLE `ortus`
  ADD CONSTRAINT `ortus_ortu_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ortu_santri`
--
ALTER TABLE `ortu_santri`
  ADD CONSTRAINT `ortu_santri_ortu_id_foreign` FOREIGN KEY (`ortu_id`) REFERENCES `ortus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ortu_santri_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `santris` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `santris`
--
ALTER TABLE `santris`
  ADD CONSTRAINT `santris_santri_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tamus`
--
ALTER TABLE `tamus`
  ADD CONSTRAINT `tamus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
