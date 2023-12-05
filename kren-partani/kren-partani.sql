-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 09:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kren-partani`
--

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
(5, '2022_06_15_135511_create_barangs_table', 1),
(6, '2022_06_15_140118_create_pesanans_table', 1),
(7, '2022_06_15_140333_create_pesanan_details_table', 1),
(8, '2022_06_17_190213_create_agens_table', 1),
(9, '2022_06_18_035444_add_deleted_at_table', 1),
(10, '2022_06_18_051514_create_caraousel_images_table', 1),
(11, '2022_06_18_083628_create_reservations_table', 1),
(12, '2022_06_20_131712_create_contact_us_table', 1),
(13, '2022_06_21_045230_create_about_us_table', 1),
(14, '2022_06_30_060829_create_gallerys_table', 1),
(15, '2022_07_04_071935_create_reviews_table', 1),
(16, '2023_05_20_033255_create_etikets_table', 2);

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
-- Table structure for table `penjualan_tiket`
--

CREATE TABLE `penjualan_tiket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_penjualan` varchar(255) NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_tiket`
--

INSERT INTO `penjualan_tiket` (`id`, `gambar_penjualan`, `pesanan_id`, `created_at`, `updated_at`) VALUES
(4, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 86, '2023-06-18 20:30:45', '2023-06-18 20:30:45'),
(5, 'WhatsApp Image 2023-06-18 at 22.23.23.jpeg', 87, '2023-06-19 00:19:14', '2023-06-19 00:19:14'),
(6, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 88, '2023-06-19 00:28:40', '2023-06-19 00:28:40'),
(7, 'pelajar.jpeg', 90, '2023-06-19 06:43:07', '2023-06-19 06:43:07'),
(8, 'pelajar.jpeg', 91, '2023-06-19 06:45:15', '2023-06-19 06:45:15'),
(9, 'apple-icon-72x72.png', 95, '2023-06-20 01:28:05', '2023-06-20 01:28:05'),
(10, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 97, '2023-06-21 17:31:53', '2023-06-21 17:31:53'),
(11, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 98, '2023-06-21 20:07:03', '2023-06-21 20:07:03'),
(12, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 98, '2023-06-21 21:09:58', '2023-06-21 21:09:58'),
(13, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', 98, '2023-06-21 21:18:58', '2023-06-21 21:18:58'),
(14, 'tiket (4).pdf', 99, '2023-06-21 21:21:52', '2023-06-21 21:21:52'),
(15, 'glr_1.jpeg', 100, '2023-06-21 21:28:18', '2023-06-21 21:28:18'),
(16, 'tiket (7).pdf', 102, '2023-06-23 00:38:25', '2023-06-23 00:38:25'),
(17, '[11420037][Ujian_PASTI][Genap2022].pdf', 106, '2023-11-13 02:15:20', '2023-11-13 02:15:20'),
(18, 'tiket (2).pdf', 108, '2023-11-16 01:54:12', '2023-11-16 01:54:12');

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
  `tanggal_pemesanan` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL DEFAULT '',
  `tanggal_produk_diperlukan` text NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal_pemesanan`, `status`, `kode`, `jumlah_harga`, `bukti_pembayaran`, `tanggal_produk_diperlukan`, `produk_id`, `jumlah_pesan`, `created_at`, `updated_at`) VALUES
(86, 16, '2023-06-19', '4', 3505, 30000, 'WhatsApp Image 2023-06-18 at 22.23.23.jpeg', '2023-06-22', 17, 1, '2023-06-18 19:14:02', '2023-06-18 20:30:45'),
(87, 16, '2023-06-19', '4', 5415, 20000, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', '2023-06-20', 16, 1, '2023-06-18 19:34:45', '2023-06-19 00:19:14'),
(88, 16, '2023-06-19', '4', 6725, 5000, 'image (1).png', '2023-06-29', 19, 1, '2023-06-18 23:48:39', '2023-06-19 00:28:40'),
(89, 16, '2023-06-19', '1', 7523, 5000, '', '2023-06-21', 16, 1, '2023-06-19 00:24:01', '2023-06-19 06:24:24'),
(90, 19, '2023-06-19', '4', 3733, 180000, 'PraSeminar-09 (2).pptx', '2023-06-20', 16, 9, '2023-06-19 02:41:30', '2023-06-19 06:43:07'),
(91, 16, '2023-06-19', '4', 8953, 20000, 'Dewasa.jpeg', '2023-06-30', 16, 1, '2023-06-19 06:44:26', '2023-06-19 06:45:15'),
(92, 17, '2023-06-20', '0', 3708, 10000, '', '2023-06-22', 18, 1, '2023-06-19 20:35:23', '2023-06-19 20:35:23'),
(93, 20, '2023-06-20', '6', 4161, 30000, 'background (1).jpg', '2023-07-01', 17, 1, '2023-06-19 20:45:20', '2023-06-19 20:48:26'),
(94, 20, '2023-06-20', '1', 5597, 30000, '', '2023-06-24', 17, 1, '2023-06-19 20:51:36', '2023-06-19 20:51:41'),
(95, 23, '2023-06-20', '4', 8744, 20000, 'glr_1.jpeg', '2023-06-21', 16, 1, '2023-06-20 01:26:25', '2023-06-20 01:28:05'),
(96, 23, '2023-06-20', '1', 5905, 20000, '', '2023-06-21', 16, 1, '2023-06-20 01:32:26', '2023-06-20 01:32:34'),
(97, 23, '2023-06-21', '4', 3514, 40000, 'android-icon-36x36.png', '2023-06-22', 16, 1, '2023-06-21 02:08:42', '2023-06-21 17:31:53'),
(98, 23, '2023-06-21', '4', 2914, 70000, 'WhatsApp Image 2023-06-18 at 22.23.23.jpeg', '2023-06-22', 16, 2, '2023-06-21 05:58:33', '2023-06-21 21:18:58'),
(99, 23, '2023-06-22', '4', 8250, 10000, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', '2023-06-23', 18, 1, '2023-06-21 21:21:04', '2023-06-21 21:21:52'),
(100, 23, '2023-06-22', '4', 7045, 30000, 'WhatsApp Image 2023-06-18 at 22.23.23.jpeg', '2023-06-30', 17, 1, '2023-06-21 21:27:23', '2023-06-21 21:28:18'),
(101, 23, '2023-06-22', '3', 2962, 120000, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', '2023-06-23', 17, 4, '2023-06-21 23:51:11', '2023-06-21 23:51:37'),
(102, 24, '2023-06-23', '4', 6248, 25000, 'WhatsApp Image 2023-06-19 at 09.34.07.jpeg', '2023-06-24', 16, 1, '2023-06-23 00:33:40', '2023-06-23 00:38:25'),
(103, 18, '2023-07-07', '3', 7991, 30000, 'WhatsApp Image 2023-06-30 at 21.40.13.jpeg', '2023-07-28', 17, 1, '2023-07-07 07:29:04', '2023-07-07 07:29:43'),
(104, 25, '2023-08-31', '1', 4544, 20000, '', '2023-09-01', 16, 1, '2023-08-31 01:47:53', '2023-08-31 01:48:09'),
(105, 25, '2023-08-31', '3', 1924, 20000, 'download (5).jpg', '2023-08-31', 16, 1, '2023-08-31 02:06:22', '2023-08-31 02:10:11'),
(106, 30, '2023-11-13', '4', 6797, 30000, '0.jpeg', '2023-11-14', 17, 1, '2023-11-13 02:13:10', '2023-11-13 02:15:20'),
(107, 30, '2023-11-14', '3', 1305, 20000, '0.jpeg', '2023-11-15', 16, 1, '2023-11-13 23:53:22', '2023-11-13 23:55:20'),
(108, 29, '2023-11-16', '4', 9321, 30000, 'chart.png', '2023-11-24', 17, 1, '2023-11-16 01:48:36', '2023-11-16 01:54:12'),
(109, 29, '2023-11-16', '1', 8259, 20000, '', '2023-11-30', 16, 1, '2023-11-16 01:50:24', '2023-11-16 01:50:30'),
(110, 30, '2023-11-21', '6', 1781, 20000, 'chart.png', '2023-11-23', 16, 1, '2023-11-20 23:43:16', '2023-11-28 00:32:48'),
(111, 23, '2023-11-28', '2', 8266, 2000000, 'Diagram Tanpa Judul.drawio.png', '2023-11-30', 18, 1, '2023-11-27 23:30:41', '2023-11-28 00:30:29'),
(112, 23, '2023-11-28', '3', 1689, 2040000, 'WhatsApp Image 2023-11-24 at 08.31.12.jpeg', '2023-11-30', 17, 1, '2023-11-28 01:08:24', '2023-12-05 00:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` int(20) NOT NULL,
  `pesanan_id` int(20) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `jumlah_harga` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `produk_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(106, 18, 85, 1, 10000, '2023-06-18 19:10:10', '2023-06-18 19:10:10'),
(107, 17, 86, 1, 30000, '2023-06-18 19:14:02', '2023-06-18 19:14:02'),
(108, 16, 87, 1, 20000, '2023-06-18 19:34:45', '2023-06-18 19:34:45'),
(109, 19, 88, 1, 5000, '2023-06-18 23:48:39', '2023-06-18 23:48:39'),
(111, 16, 90, 9, 180000, '2023-06-19 02:41:30', '2023-06-19 02:41:30'),
(112, 19, 89, 1, 5000, '2023-06-19 06:24:12', '2023-06-19 06:24:12'),
(113, 16, 91, 1, 20000, '2023-06-19 06:44:26', '2023-06-19 06:44:26'),
(114, 18, 92, 1, 10000, '2023-06-19 20:35:23', '2023-06-19 20:35:23'),
(115, 17, 93, 1, 30000, '2023-06-19 20:45:20', '2023-06-19 20:45:20'),
(116, 17, 94, 1, 30000, '2023-06-19 20:51:36', '2023-06-19 20:51:36'),
(117, 16, 95, 1, 20000, '2023-06-20 01:26:25', '2023-06-20 01:26:25'),
(118, 16, 96, 1, 20000, '2023-06-20 01:32:26', '2023-06-20 01:32:26'),
(119, 16, 97, 2, 40000, '2023-06-21 02:08:42', '2023-06-21 05:37:09'),
(120, 16, 98, 2, 40000, '2023-06-21 05:58:33', '2023-06-21 05:58:33'),
(121, 17, 98, 1, 30000, '2023-06-21 05:58:42', '2023-06-21 05:58:42'),
(122, 18, 99, 1, 10000, '2023-06-21 21:21:04', '2023-06-21 21:21:04'),
(123, 17, 100, 1, 30000, '2023-06-21 21:27:23', '2023-06-21 21:27:23'),
(124, 17, 101, 4, 120000, '2023-06-21 23:51:11', '2023-06-21 23:51:11'),
(125, 16, 102, 1, 20000, '2023-06-23 00:33:40', '2023-06-23 00:33:40'),
(126, 19, 102, 1, 5000, '2023-06-23 00:33:56', '2023-06-23 00:33:56'),
(127, 17, 103, 1, 30000, '2023-07-07 07:29:04', '2023-07-07 07:29:04'),
(128, 16, 104, 1, 20000, '2023-08-31 01:47:53', '2023-08-31 01:47:53'),
(129, 16, 105, 1, 20000, '2023-08-31 02:06:22', '2023-08-31 02:06:22'),
(130, 17, 106, 1, 30000, '2023-11-13 02:13:10', '2023-11-13 02:13:10'),
(131, 16, 107, 1, 20000, '2023-11-13 23:53:22', '2023-11-13 23:53:22'),
(132, 17, 108, 1, 30000, '2023-11-16 01:48:36', '2023-11-16 01:48:36'),
(133, 16, 109, 1, 20000, '2023-11-16 01:50:24', '2023-11-16 01:50:24'),
(134, 16, 110, 1, 20000, '2023-11-20 23:43:16', '2023-11-20 23:43:16'),
(135, 18, 111, 2, 2000000, '2023-11-27 23:30:41', '2023-11-28 00:30:16'),
(136, 17, 112, 1, 2000000, '2023-11-28 01:08:24', '2023-11-28 01:08:24'),
(137, 16, 112, 2, 40000, '2023-12-05 00:49:03', '2023-12-05 00:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(64) NOT NULL,
  `gambar_produk` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `gambar_produk`, `harga`, `stok`, `keterangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Panci', '20230606064636.WhatsApp Image 2023-05-30 at 13.58.08.jpeg', 3423242, 9, 'sadadsdf', '2023-06-05 23:47:37', '2023-05-01 07:36:42', '2023-06-05 23:47:37'),
(2, 'sadas', 'image (1).png', 21, 12, 'sadsad', '2023-05-19 00:58:55', '2023-05-19 00:55:11', '2023-05-19 00:58:55'),
(3, 'Dewasa', 'wallhaven-vqz7qm_1920x1080.png', 15000, 95, '18 tahun ke atas', '2023-06-05 22:46:54', '2023-05-19 00:59:48', '2023-06-05 22:46:54'),
(4, 'anak anak', 'pngwing.com.png', 10000, 33, '5 tahun ke atas', '2023-06-04 14:00:11', '2023-05-19 01:00:35', '2023-06-04 14:00:11'),
(5, 'Dewasa', 'WhatsApp Image 2023-05-30 at 14.16.43.jpeg', 15000, 82, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 00:25:18', '2023-06-05 23:47:34', '2023-06-08 00:25:18'),
(6, 'Remaja', 'WhatsApp Image 2023-05-02 at 08.32.24.jpeg', 10000, 81, 'Digunakan 17 tahun kebawah', '2023-06-08 00:26:21', '2023-06-05 23:48:46', '2023-06-08 00:26:21'),
(7, 'Dewasa', 'Gunawan Sinaga.png', 10000, 100, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 00:30:56', '2023-06-08 00:04:32', '2023-06-08 00:30:56'),
(8, 'Dewasa', 'WhatsApp Image 2023-05-29 at 14.11.07.jpeg', 15000, 100, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 01:52:03', '2023-06-08 01:42:35', '2023-06-08 01:52:03'),
(9, 'asdasasd', 'WhatsApp Image 2023-05-30 at 14.16.43.jpeg', 1231, 65, 'qwasdsaa', '2023-06-11 07:12:33', '2023-06-08 01:57:34', '2023-06-11 07:12:33'),
(10, 'Remaja', 'pngaaa.com-5054053.png', 15000, 92, 'Dapat digunakan oleh anak umur 10 tahun sampai umur 16', '2023-06-10 05:39:09', '2023-06-08 19:23:22', '2023-06-10 05:39:09'),
(11, 'Dewasa', 'Gunawan Sinaga.png', 15000, 96, 'Dapat digunakan oleh anak umur 16 tahun sampai lanjut', '2023-06-11 08:03:25', '2023-06-10 05:39:44', '2023-06-11 08:03:25'),
(12, 'Remaja', 'LOGO1 (1).jpg', 5000, 86, 'Dapat digunakan oleh anak umur 10 tahun sampai umur 16', '2023-06-15 20:34:31', '2023-06-10 05:55:16', '2023-06-15 20:34:31'),
(13, 'Manca Negara', 'book 3.jpg', 10000, 78, 'Tiket ini dapat digunakan oleh turis', '2023-06-15 20:34:35', '2023-06-10 06:00:20', '2023-06-15 20:34:35'),
(15, 'Remaja', '20230615090740.Gunawan Sinaga.png', 15000, 100, 'Dapat digunakan oleh anak umur 10 tahun sampai umur 16', '2023-06-15 20:36:24', '2023-06-14 21:12:44', '2023-06-15 20:36:24'),
(16, 'Cabai merah / 1000kg', '20231121083312.chart.png', 20000, 98, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '2023-06-15 20:40:58', '2023-12-05 00:49:09'),
(17, 'Bawang Merah / 1000 kg', '20231121083425.pngwing.com (3).png', 2000000, 99, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '2023-06-15 20:42:19', '2023-12-05 00:49:09'),
(18, 'Andaliman / 50Kg', '20231121084210.wallhaven-ex21vr_1920x1080.png', 1000000, 98, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2023-06-15 20:43:18', '2023-11-28 00:30:22'),
(19, 'Wortel/ 50Kg', '20231121084331.gambar.jpg', 50000000, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, '2023-06-15 20:43:55', '2023-11-21 01:49:43'),
(21, 'adasd', 'glr_1.jpeg', 12, 1, '2ad', '2023-06-18 07:56:47', '2023-06-18 06:51:39', '2023-06-18 07:56:47'),
(22, 'asdasasd', 'pelajar.jpeg', 123, 12, 'sadasd', '2023-06-19 07:16:32', '2023-06-19 07:16:27', '2023-06-19 07:16:32'),
(23, 'Tiket Pelajar', 'WhatsApp Image 2023-06-16 at 10.57.05.jpeg', 15000, 100, 'di gunakan oleh pelajar', '2023-06-21 23:30:20', '2023-06-20 01:24:35', '2023-06-21 23:30:20'),
(24, 'test', 'WhatsApp Image 2023-11-22 at 09.20.35.jpeg', 1231, 12, 'sadas', NULL, '2023-11-28 00:18:55', '2023-11-28 00:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(32) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '1', NULL, '$2y$10$c8vuOHKVJUvWWwE3a4JWyeKbq5z5ddqlcpwxyT7cUvhtyHA/I7Ski', NULL, 'Sig3OwXoayLDwkdPyPfni7E5YOMRS6SEzbJQxmdSRTPyg7PpI1pAUW4WgoKH', '2023-05-01 07:26:54', '2023-11-16 01:56:22', NULL),
(12, 'adminisitrator', 'administrator@gmail.com', '2', NULL, '$2y$10$aqmphxWtdmLNXw.lDq6GBOfnzOuv9/pcS5TXFqihPNF.tpqfqPV.O', NULL, '90F2qQP9psz2GeOGCVSaryy6UUZPEjaKk3uazGqy8wyNuFUfcQhnbWKlhH3V', '2023-06-13 21:15:20', '2023-06-13 21:15:20', NULL),
(16, 'gunawan sinaga', 'gunawansinaga@gmail.com', '0', NULL, '$2y$10$X6O0.jQNzgVFmZbpyUIJzuOfIJx2Q.HT6PQpNcitW7UtrKXB6BOqW', 'favicon-96x96.png', NULL, '2023-06-15 21:16:34', '2023-06-18 08:50:35', NULL),
(17, 'anita', 'anita@gmail.com', '0', NULL, '$2y$10$2I.38yyuus9.S0gf84Bfv.uh/pfqV8vTJZ1kTsPWh8AJey1RLqR2m', NULL, 'Tjwd2SrOo5ACUrktmOsugIoOyDRrTZRTJMyLdFv3ajFLGDtMjAwV5qDZZHDe', '2023-06-17 02:13:22', '2023-06-17 02:13:22', NULL),
(18, 'silvany', 'silvany@gmail.com', '0', NULL, '$2y$10$b76i22fLnTlDp9/vobv/K.fyOY289608oUVKm1Pnpgpw0i0E4uAlu', NULL, NULL, '2023-06-18 08:37:55', '2023-06-18 08:37:55', NULL),
(19, 'Edward', 'e@gmail.com', '0', NULL, '$2y$10$snfzhgTzqDAp62Yl1ZNaWOMJ58EeN4y9yAMtBSndp6YJEc4dJZwYi', NULL, NULL, '2023-06-19 02:40:56', '2023-06-19 02:40:56', NULL),
(20, 'user', 'user@gmail.com', '0', NULL, '$2y$10$xwILLaD.yVVn8m0W5YqIKeBXotqZOknr4Mc5LnHaASKCj8Fdt3Tly', NULL, NULL, '2023-06-19 20:45:03', '2023-06-19 20:45:03', NULL),
(21, 'Admin Caldera Toba sibisa', 'caldera@gmail.com', '1', NULL, '$2y$10$Z83pk9Z8A0BMAz2HZAn.hOJsC0HI2XTVF7GzEt96geRH1H3vjQIGe', NULL, NULL, '2023-06-19 23:43:18', '2023-06-19 23:43:18', NULL),
(22, 'Caldera Officer', 'calderaofficer@gmail.com', '1', NULL, '$2y$10$ISLSzr1uKlltwBz6gjy7AeU8UWod1JLL2Y9ASgNkzMhSF64Ih9VLu', NULL, NULL, '2023-06-20 01:16:30', '2023-06-20 01:16:30', NULL),
(23, 'wiliam', 'wiliam@gmail.com', '0', NULL, '$2y$10$zVqw.Cwg2yyFUiZFCP06XeFhrqkFD18GM7hjbEQP4J5GKhJaVHoS6', NULL, NULL, '2023-06-20 01:26:00', '2023-06-20 01:26:00', NULL),
(24, 'pengunjung', 'pengunjung@gmail.com', '0', NULL, '$2y$10$7qGfUobewZP0wkTalXV29.EkJ7y9.miIDRekGZr.tAisjF5xAAC4K', NULL, NULL, '2023-06-23 00:33:17', '2023-06-23 00:33:17', NULL),
(25, 'tester', 'tester@gmail.com', '0', NULL, '$2y$10$t3OlNsVMIrblUmO9FTlGz.Mxjr3z9mlIliG9pzZLMxgrXUxs1G6ty', NULL, NULL, '2023-08-31 01:47:23', '2023-08-31 01:47:23', NULL),
(26, 'master', 'master@gmail.com', '0', NULL, '$2y$10$A9SmffwK6BdXpUYV8IDFpeaxgbqxV0YqrO/lH4emVruhH/Z19zj/C', NULL, NULL, '2023-08-31 23:48:21', '2023-08-31 23:48:21', NULL),
(27, 'master1', 'master1@gmail.com', '0', NULL, '$2y$10$LBLU/ckL5D0jTNww6pti6OEdP3PycoqLNh5EjSS84LPNAE4Lnw2Iu', NULL, NULL, '2023-08-31 23:54:16', '2023-08-31 23:54:16', NULL),
(28, 'tester', 'tester1@gmail.com', '0', NULL, '$2y$10$K1XG1kuQYGU6xU7C5jIfb.vgHS/6SevkOcQJ.uvyf.EvfaeU1bQ2W', NULL, NULL, '2023-09-01 01:44:48', '2023-09-01 01:44:48', NULL),
(29, 'master', 'master12@gmail.com', '0', NULL, '$2y$10$5.BhHeId.j1BgoSpcEwBKujApYChDqu7mIxuJxWNrnbSXYeqzUDEO', NULL, NULL, '2023-09-01 01:53:17', '2023-09-01 01:53:17', NULL),
(30, 'pembeli', 'pembeli@gmail.com', '0', NULL, '$2y$10$FilwzWlv/yhUaCekq5AwuO3ll7sQx8H99Qidn/iXdStWxUQn6G4Ru', NULL, NULL, '2023-11-13 02:12:44', '2023-11-13 02:12:44', NULL),
(31, 'penjual', 'penjual@gmail.com', '1', NULL, '$2y$10$2bjgM3elrKjwnggoNUo9WOI1WlIYXTIEzmicVpnIVUufCYZI1M29e', NULL, NULL, '2023-11-13 02:14:09', '2023-11-13 02:14:09', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `penjualan_tiket`
--
ALTER TABLE `penjualan_tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penjualan_tiket_pesanan_id_foreign` (`pesanan_id`);

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
-- Indexes for table `produk`
--
ALTER TABLE `produk`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penjualan_tiket`
--
ALTER TABLE `penjualan_tiket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan_tiket`
--
ALTER TABLE `penjualan_tiket`
  ADD CONSTRAINT `penjualan_tiket_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanans` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
