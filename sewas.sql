-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2023 pada 11.06
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `returnorder`, `review`, `orders`, `blog`, `setting`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'superadmin@gmail.com', '2022-04-09 02:26:43', '$2y$10$SQE.RtCZA0FxI9/FGjb9keYavIy/ymLSP30.35PJjX6OJw3TGLCJC', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 'etaxt24lUZuDQWn6gLEsyxLXB3mChjy9tJmbnIEo1GzrslaeYS6qMXezsG0K', NULL, '20220416015112.jpeg', '2022-04-09 02:26:43', '2022-05-12 09:05:29'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$v3IfY1fOTGNLDeqlwfGSReM5tN3L7K7m0tcIDxIWvouyqkRJUZQ.S', '085366768686', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, '1', NULL, NULL, NULL, 2, NULL, NULL, '202205121804avatar-1.png', '2022-05-12 11:02:41', '2022-05-12 11:04:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Baju & Kostum', 'baju-&-kostum', 'fa fa-user', NULL, '2023-06-16 09:28:02'),
(2, 'Elektronik', 'elektronik', 'fa fa-user', NULL, '2023-06-16 09:28:37'),
(3, 'Hobi & Olahraga', 'hobi-&-olahraga', 'fa fa-user', NULL, '2023-06-16 09:28:48'),
(4, 'Kamera', 'kamera', 'fa fa-user', NULL, '2023-06-16 09:29:02'),
(5, 'Mainan Anak', 'mainan-anak', 'fa fa-user', '0000-00-00 00:00:00', '2023-06-16 09:31:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PROMO', 20, '2023-07-31', 1, '2023-06-13 00:44:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 1),
(8, '2021_02_09_054528_create_brands_table', 1),
(9, '2021_02_09_111701_create_categories_table', 1),
(10, '2021_02_09_121910_create_sub_categories_table', 1),
(11, '2021_02_16_183944_create_sub_sub_categories_table', 1),
(12, '2021_02_16_204006_create_products_table', 1),
(13, '2021_02_16_205349_create_multi_imgs_table', 1),
(14, '2021_02_20_204829_create_sliders_table', 1),
(15, '2021_03_02_194613_create_wishlists_table', 1),
(16, '2021_03_03_211157_create_coupons_table', 1),
(17, '2021_03_03_222308_create_ship_divisions_table', 1),
(18, '2021_03_09_183956_create_ship_districts_table', 1),
(19, '2021_03_09_194733_create_ship_states_table', 1),
(20, '2021_03_14_203654_create_orders_table', 1),
(21, '2021_03_14_203901_create_order_items_table', 1),
(22, '2021_03_24_183649_create_blog_post_categories_table', 1),
(23, '2021_03_24_194838_create_blog_posts_table', 1),
(24, '2021_03_24_223430_create_site_settings_table', 1),
(25, '2021_03_26_194141_create_seos_table', 1),
(26, '2021_03_27_192140_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1726964572942534.png', '2022-03-10 18:22:39', NULL),
(2, 1, 'upload/products/multi-image/1726964573617423.png', '2022-03-10 18:22:39', NULL),
(3, 1, 'upload/products/multi-image/1726964574245077.png', '2022-03-10 18:22:40', NULL),
(4, 1, 'upload/products/multi-image/1726964575077616.png', '2022-03-10 18:22:41', NULL),
(5, 1, 'upload/products/multi-image/1726964575850312.png', '2022-03-10 18:22:42', NULL),
(6, 2, 'upload/products/multi-image/1727060945305072.png', '2022-03-11 00:40:07', '2022-03-11 19:54:34'),
(10, 3, 'upload/products/multi-image/1726989054608938.png', '2022-03-11 00:51:46', NULL),
(11, 3, 'upload/products/multi-image/1726989055422517.png', '2022-03-11 00:51:47', NULL),
(12, 3, 'upload/products/multi-image/1726989056373741.png', '2022-03-11 00:51:48', NULL),
(13, 3, 'upload/products/multi-image/1726989057474452.png', '2022-03-11 00:51:49', NULL),
(14, 3, 'upload/products/multi-image/1726989058350126.png', '2022-03-11 00:51:50', NULL),
(15, 4, 'upload/products/multi-image/1726989408326515.png', '2022-03-11 00:57:24', NULL),
(16, 4, 'upload/products/multi-image/1726989409182332.png', '2022-03-11 00:57:24', NULL),
(17, 4, 'upload/products/multi-image/1726989409990600.png', '2022-03-11 00:57:25', NULL),
(18, 4, 'upload/products/multi-image/1726989410633969.webp', '2022-03-11 00:57:26', NULL),
(19, 5, 'upload/products/multi-image/1727015809195073.png', '2022-03-11 07:57:02', NULL),
(20, 5, 'upload/products/multi-image/1727015810150284.png', '2022-03-11 07:57:03', NULL),
(21, 5, 'upload/products/multi-image/1727015811125980.png', '2022-03-11 07:57:03', NULL),
(22, 5, 'upload/products/multi-image/1727015811971808.png', '2022-03-11 07:57:04', NULL),
(23, 5, 'upload/products/multi-image/1727015813301238.png', '2022-03-11 07:57:05', NULL),
(24, 5, 'upload/products/multi-image/1727015814199330.png', '2022-03-11 07:57:06', NULL),
(35, 1, 'upload/products/multi-image/1727162725769526.png', '2022-03-12 22:52:14', NULL),
(36, 1, 'upload/products/multi-image/1727162728729273.png', '2022-03-12 22:52:14', NULL),
(37, 1, 'upload/products/multi-image/1727162729043644.png', '2022-03-12 22:52:15', NULL),
(38, 1, 'upload/products/multi-image/1727162729390489.png', '2022-03-12 22:52:15', NULL),
(39, 1, 'upload/products/multi-image/1727162729678151.png', '2022-03-12 22:52:15', NULL),
(40, 1, 'upload/products/multi-image/1727162729994406.png', '2022-03-12 22:52:16', NULL),
(41, 2, 'upload/products/multi-image/1727163259686299.png', '2022-03-12 23:00:41', NULL),
(42, 2, 'upload/products/multi-image/1727163260067664.png', '2022-03-12 23:00:44', NULL),
(43, 2, 'upload/products/multi-image/1727163262991917.png', '2022-03-12 23:00:46', NULL),
(44, 2, 'upload/products/multi-image/1727163265635425.png', '2022-03-12 23:00:54', NULL),
(45, 2, 'upload/products/multi-image/1727163273462869.png', '2022-03-12 23:00:56', NULL),
(46, 3, 'upload/products/multi-image/1727166664508940.png', '2022-03-12 23:55:00', NULL),
(47, 3, 'upload/products/multi-image/1727166677482820.png', '2022-03-12 23:55:15', NULL),
(48, 3, 'upload/products/multi-image/1727166692930056.png', '2022-03-12 23:55:29', NULL),
(49, 4, 'upload/products/multi-image/1727166912993530.png', '2022-03-12 23:58:45', NULL),
(50, 4, 'upload/products/multi-image/1727166913327019.png', '2022-03-12 23:58:45', NULL),
(51, 4, 'upload/products/multi-image/1727166913658152.png', '2022-03-12 23:58:48', NULL),
(52, 4, 'upload/products/multi-image/1727166916562563.png', '2022-03-12 23:58:51', NULL),
(58, 6, 'upload/products/multi-image/1727171133061607.png', '2022-03-13 01:06:02', NULL),
(59, 6, 'upload/products/multi-image/1727171146235745.png', '2022-03-13 01:06:17', NULL),
(60, 6, 'upload/products/multi-image/1727171161780273.png', '2022-03-13 01:06:17', NULL),
(61, 6, 'upload/products/multi-image/1727171162137962.png', '2022-03-13 01:06:17', NULL),
(62, 6, 'upload/products/multi-image/1727171162469730.png', '2022-03-13 01:06:18', NULL),
(63, 7, 'upload/products/multi-image/1727171608018898.png', '2022-03-13 01:13:23', NULL),
(64, 7, 'upload/products/multi-image/1727171608495871.png', '2022-03-13 01:13:25', NULL),
(65, 7, 'upload/products/multi-image/1727171611440948.png', '2022-03-13 01:13:26', NULL),
(66, 8, 'upload/products/multi-image/1727172279480845.png', '2022-03-13 01:24:05', NULL),
(67, 8, 'upload/products/multi-image/1727172282413499.png', '2022-03-13 01:24:06', NULL),
(68, 8, 'upload/products/multi-image/1727172282786912.png', '2022-03-13 01:24:06', NULL),
(69, 8, 'upload/products/multi-image/1727172283074966.png', '2022-03-13 01:24:06', NULL),
(70, 8, 'upload/products/multi-image/1727172283386680.png', '2022-03-13 01:24:07', NULL),
(71, 8, 'upload/products/multi-image/1727172283756185.png', '2022-03-13 01:24:07', NULL),
(72, 9, 'upload/products/multi-image/1730281640648618.png', '2022-04-16 09:06:01', NULL),
(73, 9, 'upload/products/multi-image/1730281641415162.png', '2022-04-16 09:06:02', NULL),
(74, 9, 'upload/products/multi-image/1730281642046978.png', '2022-04-16 09:06:02', NULL),
(81, 12, 'upload/products/multi-image/1768878823058675.webp', '2023-06-16 09:51:42', NULL),
(82, 13, 'upload/products/multi-image/1768878933690388.webp', '2023-06-16 09:53:28', NULL),
(83, 14, 'upload/products/multi-image/1768879072735191.jpeg', '2023-06-16 09:55:40', NULL),
(84, 15, 'upload/products/multi-image/1768879158008589.webp', '2023-06-16 09:57:02', NULL),
(85, 16, 'upload/products/multi-image/1768879241840829.webp', '2023-06-16 09:58:21', NULL),
(86, 17, 'upload/products/multi-image/1768879456479696.jpeg', '2023-06-16 10:01:46', NULL),
(87, 18, 'upload/products/multi-image/1768879519897257.webp', '2023-06-16 10:02:47', NULL),
(88, 19, 'upload/products/multi-image/1768922355121239.webp', '2023-06-16 21:23:37', NULL),
(89, 20, 'upload/products/multi-image/1768922646555623.webp', '2023-06-16 21:28:15', NULL),
(90, 21, 'upload/products/multi-image/1768922790406564.webp', '2023-06-16 21:30:33', NULL),
(91, 22, 'upload/products/multi-image/1768922902481000.webp', '2023-06-16 21:32:19', NULL),
(92, 23, 'upload/products/multi-image/1768923059086606.webp', '2023-06-16 21:34:49', NULL),
(93, 24, 'upload/products/multi-image/1768923202327977.webp', '2023-06-16 21:37:05', NULL),
(94, 25, 'upload/products/multi-image/1768923328060348.webp', '2023-06-16 21:39:05', NULL),
(95, 26, 'upload/products/multi-image/1768923408937193.webp', '2023-06-16 21:40:22', NULL),
(96, 27, 'upload/products/multi-image/1768923502227956.webp', '2023-06-16 21:41:51', NULL),
(97, 28, 'upload/products/multi-image/1768923584961738.webp', '2023-06-16 21:43:10', NULL),
(98, 29, 'upload/products/multi-image/1768923701181066.webp', '2023-06-16 21:45:01', NULL),
(99, 30, 'upload/products/multi-image/1768923873932080.webp', '2023-06-16 21:47:46', NULL),
(100, 31, 'upload/products/multi-image/1768923970815418.webp', '2023-06-16 21:49:18', NULL),
(101, 32, 'upload/products/multi-image/1768924096224513.webp', '2023-06-16 21:51:18', NULL),
(102, 33, 'upload/products/multi-image/1768924200017247.webp', '2023-06-16 21:52:57', NULL),
(103, 34, 'upload/products/multi-image/1768924447800377.webp', '2023-06-16 21:56:53', NULL),
(104, 35, 'upload/products/multi-image/1768924639192070.webp', '2023-06-16 21:59:56', NULL),
(105, 36, 'upload/products/multi-image/1768924748820008.webp', '2023-06-16 22:01:40', NULL),
(106, 37, 'upload/products/multi-image/1768924900595968.webp', '2023-06-16 22:04:05', NULL),
(107, 38, 'upload/products/multi-image/1768933261890761.webp', '2023-06-17 00:16:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `address`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `bukti_pembayaran`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(10, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 60000, '52194912', NULL, 'ESZ91919031', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 10:07:40', NULL),
(11, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Transfer Bank Manual', 'Transfer Bank Manual', NULL, 'Rp', 27000, '54581846', 'upload/orders/1768879880920551.jpg', 'ESZ22595404', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'di konfirmasi', '2023-06-16 10:08:31', '2023-06-16 10:14:38'),
(12, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 228000, '95431440', NULL, 'ESZ25410927', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dikirim', '2023-06-16 10:10:12', '2023-06-16 10:15:13'),
(13, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 435000, '86971811', NULL, 'ESZ45280576', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '16 June 2023', '2', NULL, 'selesai', '2023-06-16 10:12:10', '2023-06-16 10:14:09'),
(14, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Transfer Bank Manual', 'Transfer Bank Manual', NULL, 'Rp', 30000, '27776761', 'upload/orders/1768907079466876.jpg', 'ESZ77024853', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 17:20:50', NULL),
(15, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 60000, '41495894', NULL, 'ESZ74281762', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 17:49:57', NULL),
(16, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 60000, '26169101', NULL, 'ESZ64910038', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 22:08:24', NULL),
(17, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Transfer Bank Manual', 'Transfer Bank Manual', NULL, 'Rp', 6000, '97838926', 'upload/orders/1768927485521829.jpg', 'ESZ37092242', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 22:45:10', NULL),
(18, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Transfer Bank Manual', 'Transfer Bank Manual', NULL, 'Rp', 0, '15238390', 'upload/orders/1768927494169065.jpg', 'ESZ70265306', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ditunda', '2023-06-16 22:45:18', NULL),
(19, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 720000, '35811323', NULL, 'ESZ92000491', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'di konfirmasi', '2023-06-16 22:46:05', '2023-06-16 22:48:37'),
(20, 6, 1, 1, 2, 'User', 'user@gmail.com', '085366768686', 132341, 'dibawah langit diatas bumi didekat daun bergoyang', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Rp', 114000, '58649619', NULL, 'ESZ90718632', '17 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'di konfirmasi', '2023-06-17 00:14:32', '2023-06-17 00:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `weight`, `price`, `created_at`, `updated_at`, `tanggal_peminjaman`, `tanggal_pengembalian`) VALUES
(9, 10, 18, '1', '612', 60000.00, '2023-06-16 10:07:40', NULL, '2023-06-08', '2023-06-09'),
(10, 11, 14, '1', '312', 36000.00, '2023-06-16 10:08:35', NULL, '2023-06-10', '2023-06-12'),
(11, 11, 15, '1', '354', 45000.00, '2023-06-16 10:08:35', NULL, '2023-06-10', '2023-06-12'),
(12, 12, 13, '1', '1421', 228000.00, '2023-06-16 10:10:12', NULL, '2023-06-17', '2023-06-22'),
(13, 13, 16, '1', '2012', 360000.00, '2023-06-16 10:12:10', NULL, '2023-06-09', '2023-06-10'),
(14, 13, 15, '1', '354', 75000.00, '2023-06-16 10:12:10', NULL, '2023-06-09', '2023-06-13'),
(15, 14, 18, '1', '612', 60000.00, '2023-06-16 17:20:55', NULL, '2023-06-17', '2023-06-18'),
(16, 15, 18, '1', '612', 60000.00, '2023-06-16 17:49:57', NULL, '2023-06-17', '2023-06-18'),
(17, 16, 35, '1', '10', 60000.00, '2023-06-16 22:08:24', NULL, '2023-06-17', '2023-06-19'),
(18, 17, 36, '1', '10', 24000.00, '2023-06-16 22:45:14', NULL, '2023-06-17', '2023-06-20'),
(19, 19, 35, '1', '10', 720000.00, '2023-06-16 22:46:05', NULL, '2023-06-17', '2023-07-22'),
(20, 20, 13, '1', '1421', 114000.00, '2023-06-17 00:14:32', NULL, '2023-06-17', '2023-06-19');

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_weight`, `product_price`, `product_short_desc`, `product_long_desc`, `product_thambnail`, `status`, `created_at`, `updated_at`) VALUES
(12, 2, 18, 28, 'Printer Epson LX300+II', 'printer-epson-lx300+ii', 'caa241', '2', '123', '40000', 'Printer Bagus', '<h3>&nbsp;</h3>\r\n\r\n<p>Printer dot matrix EPSON LX-300+II USB (SIAP PAKAI) terbukti handal dan awet, kondisibagus, hasil cetak jelas, barang kurang lebih sesuai gambar/foto. Di sisi lain harga printer Epson LX-300+II USB sangat terjangkau dan sangat cocok digunakan untuk cetak :</p>\r\n\r\n<p>- Loket pembayaran listrik (PPOB)</p>\r\n\r\n<p>- FAKTUR, NOTA, INVOICE, SURAT JALAN</p>\r\n\r\n<p>- kertas continous form</p>\r\n\r\n<p>- NOTARIS dan sesuai kebutuhan lainnya.</p>', 'upload/products/thambnail/1768878822662783.webp', 1, '2023-06-16 09:51:42', NULL),
(13, 2, 18, 28, 'HP OfficeJet PRO 7740', 'hp-officejet-pro-7740', 'hnsad12', '1', '1421', '38000', 'INI PRINTERRRR', '<p>Deskripsi Barang</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<ul>\r\n	<li><strong>A3 warna Ink Printer</strong></li>\r\n	<li><strong>Cocok untuk Bisnis</strong></li>\r\n	<li><strong>Printer berkemampuan Keamanan Dinamis</strong></li>\r\n	<li><strong>Salin Pindai Cetak Fax dan ADF</strong></li>\r\n	<li><strong>Kecepatan cetak hingga 22 ppm (hitam) dan 18 ppm (warna)</strong></li>\r\n	<li><strong>USB Ethernet Wi-Fi</strong></li>\r\n</ul>', 'upload/products/thambnail/1768878933358995.webp', 1, '2023-06-16 09:53:27', NULL),
(14, 2, 19, 31, 'Air Purifier Sharp FP-J30Y Plasma Cluster', 'air-purifier-sharp-fp-j30y-plasma-cluster', 'dgq234', '3', '312', '12000', 'INI AIR PURIFIER', '<p>431 x 211 x 411 mm Air purifier Sharp FP-J30Y merupakan alat pembersih udara yang dibekali dengan sistem 3Level dan filter HEPA yang mampu menangkap polutan dan membersihkan udara secara menyeluruh. Untuk ruangan yang dengan lebih banyak debu dan butuh tenaga ekstra, air purifier Sharp FP-F30Y ini pun hanya menghasilkan suara 47 dB sehingga tidak akan menimbulkan kebisingan yang mengganggu telinga.</p>', 'upload/products/thambnail/1768879072570356.jpeg', 1, '2023-06-16 09:55:40', NULL),
(15, 2, 19, 30, 'Vacuum Cleaner Kurumi Mites UV Red', 'vacuum-cleaner-kurumi-mites-uv-red', 'af12ea', '0', '354', '15000', 'Vacum Cleaner NGENGGG', '<h3>&nbsp;</h3>\r\n\r\n<p>Vacuum ini dilengkapi :</p>\r\n\r\n<p>Anti Bacterial UV Light</p>\r\n\r\n<p>Membunuh bakteri dan tungau lebih efektif untuk melindungi kesehatan anda.</p>\r\n\r\n<p>Turbo Brush</p>\r\n\r\n<p>Membersihkan lebih efektif dan efisien. Getaran dan sikat pembersih menjadi 1.</p>\r\n\r\n<p>Advanced HEPA Filter</p>\r\n\r\n<p>Teknologi filter biasa hanya mampu menyaring kotoran berukuran besar, dengan HEPA filter, mikropartikel yang tidak kasat mata dapat terhisap sempurna sehingga hasil akhir lebih higienis</p>\r\n\r\n<p>Saringan Berlapis</p>\r\n\r\n<p>Di dalam wadah debu, terdapat pula busa sebelum HEPA Filter sehingga hasil hisapan lebih maksimal dan lebih efektif. HEPA filter, busa, dan wadah debu dapat dicuci.</p>', 'upload/products/thambnail/1768879157513375.webp', 1, '2023-06-16 09:57:01', '2023-06-16 10:13:14'),
(16, 2, 19, 32, 'Dispenser Air Minum Galon', 'dispenser-air-minum-galon', 'gqg31', '1', '2012', '180000', 'Bisa dingin Bisa Panas', '<p>Tipe yang didapat tergantung ketersediaan stok. Dimensi : 280 x 385 x 1130 Power dingin 90 watt. Power Panas 500 watt. Fitur : - 3 Tombol (panas+pengaman, natural, dingin) - Praktis, Galon di bawah - Tangki Stainless Steel - Pipa Hisap Stainless Steel - Lampu LED - Pompa Otomatis + Indikator Air Panas - Minuman dingin s.d 6 Derajat ND : UNTUK GALON BISA PAKAI SEMUA MEREK GALON , KECUALI GALON MERK RIVERO KARENA BODYNYA TERLALU LEBAR DAN TIDAK MUAT UNTUK MASUK BODY DISPENSER 1. Deposit akan otomatis masuk ke saldo kembali setelah barang diterima vendor. Untuk tarik ke rekening yang terdaftar silakan klik Tarik dana jika sudah input nomor rekening di Akun Raggam sebagai User. 2. Jika pilih opsi kurir toko, harga ongkir sudah termasuk antar jemput. 3. Data yang diperlukan oleh vendor: Foto KTP 4. Untuk perpanjang masa sewa silakan klik extend di status transaksi. Vendor akan konfirmasi setelah payment. Bila tidak dapat melakukan extend berarti barang sudah terbook oleh user lain.</p>', 'upload/products/thambnail/1768879241700500.webp', 1, '2023-06-16 09:58:21', '2023-06-16 10:13:14'),
(17, 4, 24, 48, 'GoPro Hero 10 Black', 'gopro-hero-10-black', 'ghws4', '1', '532', '275000', 'GoProoooooo', '<h3>&nbsp;</h3>\r\n\r\n<p>Include :</p>\r\n\r\n<ul>\r\n	<li>GoPro HERO10 Black</li>\r\n	<li>1720mAh Rechargeable Li-Ion Battery</li>\r\n	<li>Curved Adhesive Mount</li>\r\n	<li>Mounting Buckle + Thumbscrew</li>\r\n	<li>USB Type-C Cable</li>\r\n	<li>Carry Case</li>\r\n</ul>\r\n\r\n<p>Description&nbsp;</p>\r\n\r\n<ul>\r\n	<li>23MP GP2 Chip with Improved Performance</li>\r\n	<li>5.3K60/4K120/2.7K240 Video, 23MP Photos</li>\r\n	<li>New Front Display/Rear Touchscreen</li>\r\n	<li>Cloud Connected, 1080p Live Streaming</li>\r\n	<li>Enhanced Low-Light Performance</li>\r\n	<li>HyperSmooth 4.0 Image Stabilization</li>\r\n	<li>33&#39; Waterproof without a Housing</li>\r\n	<li>Time-Lapse &amp; Night-Lapse, 8x Slo-Mo</li>\r\n	<li>Built-In Flip-Out 2-Prong Mount</li>\r\n	<li>1720mAh Capacity Battery</li>\r\n</ul>', 'upload/products/thambnail/1768879456369934.jpeg', 1, '2023-06-16 10:01:46', NULL),
(18, 4, 24, 48, 'GoPro Max 360 Action Camera', 'gopro-max-360-action-camera', 'nsdg123', '2', '612', '30000', 'GoPro yang lebih bagusss', '<p>Descriptions: 360 Stitched Video Recording Stitching Resolution 5.7K (Photo) 5K (Video) Internal/External Stitching Internal, External Stitching 360 Stitched Video Format External 2D: 4992 x 2496 at 25, 30 fps Still Image Resolution PNG: 5760 x 2880 Number of Lenses 2 Camera per Lens Sensor 1-Chip Sensor Resolution None Optics per Lens Focal Length 8.9mm Angle of View 360&deg; Recording per Lens Video Format 4992 x 2496 (MP4 via H.264/AVC) Recording Recording Media microSD/HC/XC (128 GB Maximum) Built-In Mic Yes Channels 6.0-Channel Surround Exposure Control Shutter Speed 1/28000 - .2 Seconds (Photo) 1/50000 - .5 Seconds (Video) Photo ISO Range 100 to 800 Video ISO Range 400 to 6400 Features Waterproof Depth Rating 16.0&#39; / 4.8 m (Camera) Wi-Fi Yes Tripod Mount None Input/Output Connectors Inputs None Outputs 1 x HDMI (Unspecified) 1 x USB 3.0 Type-C USB 2.0 Speed Microphone Input Yes Headphone Jack No General Battery Rechargeable Lithium-Ion Battery Pack, 3.85 VDC, 1600 mAh Charging Method USB Dimensions (W x H x D) 2.5 x 2.7 x 1.6&quot; / 6.4 x 6.9 x 4.0 cm Weight 5.75 oz / 163 g</p>', 'upload/products/thambnail/1768879519747210.webp', 1, '2023-06-16 10:02:46', NULL),
(19, 3, 20, 40, 'TRIBAN Flashbar 120 (Sepeda)', 'triban-flashbar-120-(sepeda)', 'sdgsd12', '1', '6234', '195000', 'ini sepeda balap gausa banyak nanya', '<p>Dokumen Persyaratan Tambahan: - Data Alamat Rumah saat ini (Tagihan Telp/Internet /Kartu Kredit) - No. Hp Keluarga Satu Rumah - Akun Instagram (pribadi) yang aktif Ketentuan periode sewa: - Pengiriman dilakukan pada H-1, Jam 6-8 malam. - Penjemputan pada hari H, Jam 6-8 Malam. - Pengambilan barang dapat dilakukan pada cabang Decathlon Kota Kasablanka - Keterlambatan Pengembalian barang akan dikenakan biaya sewa per hari - Kerusakan barang akan dikenakan biaya perbaikan sesuai Invoice Service Center Decathlon - Kehilangan barang akan menjadi tanggung jawab Penyewa, dengan biaya pergantian sebesar Harga Barang - Wajib melakukan pemeriksaan barang saat serah terima - &quot;Terima&quot; / &quot;Tolak&quot; Pesanan adalah sepenuhnya keputusan Tim Verifikasi Decathlon - Pengiriman melalui Kurir Toko sudah termasuk Antar Jemput</p>', 'upload/products/thambnail/1768922354743168.webp', 1, '2023-06-16 21:23:37', NULL),
(20, 3, 22, 33, 'Xiaomi WalkingPad A1 Pro Foldable Walking Pad Treadmill Sewa Mingguan', 'xiaomi-walkingpad-a1-pro-foldable-walking-pad-treadmill-sewa-mingguan', 'fawefawe22', '2', '100', '185000', 'Ini treadmill bikin kurus', '<h3>&nbsp;</h3>\r\n\r\n<p>Sewa 1 Hari: Rp 275.000</p>\r\n\r\n<p>Sewa 1 Minggu: Rp 455.000</p>\r\n\r\n<p>Sewa 1 Bulan: 1.050.000</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cocok untuk Working from Home dan olahraga jalan cepat</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Spesifikasi: Panjang Area Pad: 1200 x 415mm</p>\r\n\r\n<p>Maximum Berat: 100kg</p>\r\n\r\n<p>Umur pengguna: 14 to 60 tahun</p>\r\n\r\n<p>Lowest Speed: 0.5km/h</p>\r\n\r\n<p>Maximum Speed: 6.0km/h</p>\r\n\r\n<p>Rated Power: 746W</p>\r\n\r\n<p>Rated Voltage: 220V</p>\r\n\r\n<p>Exercise Mode: 2 modes (M-mode and AUTO mode)</p>', 'upload/products/thambnail/1768922646408264.webp', 1, '2023-06-16 21:28:15', NULL),
(21, 3, 20, 41, 'Sepeda Gunung - Mountain bike st 530 red 27.5 9 speed', 'sepeda-gunung---mountain-bike-st-530-red-27.5-9-speed', 'ayam26', '3', '50', '150000', 'Ini sepeda ganteng abiez', '<h3>&nbsp;</h3>\r\n\r\n<p>mengendarai sepeda gunung sporty reguler.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Posisi yang ditinggikan, stem dapat dinaikkan hingga 3 cm, sadel ergonomis: sepeda yang nyaman dan efisien. Roda 27,5&quot;, rem cakram ganda, 24 kecepatan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pilihan warna: Merah &amp; Ungu</p>', 'upload/products/thambnail/1768922790248192.webp', 1, '2023-06-16 21:30:32', NULL),
(22, 3, 20, 42, 'Sepeda Lipat Genio', 'sepeda-lipat-genio', 'babi12', '1', '25', '40000', 'Ini sepede keren bisa dilipat sangat fleksibel', '<p>Sepeda Lipat Merk Genio. Diameter roda 16 inchi</p>', 'upload/products/thambnail/1768922902322255.webp', 1, '2023-06-16 21:32:19', NULL),
(23, 3, 22, 34, 'Sepeda Fitness Statis Magnetic Upright Bike Body Gym', 'sepeda-fitness-statis-magnetic-upright-bike-body-gym', 'anjing02', '1', '100', '50000', 'Ini enak tidak bikin terlalu lelah', '<p>Spesifikasi Detail Tampilan : Waktu, Kecepatan, Jarak, Detak Jantung dan Kalori Ukuran rakitan 100 x 62 x 143cm Max beban 120kg Ukuran karton 110 x 28 x 77cm Beban roda 6kg Berat barang 39.5kg Berat kirim 43kg 1. Mempertahankan Daya Tahan Tubuh. Mengingat bersepeda adalah olahraga, jika Anda lakukan secara rutin jelas akan membuat sehat. Tubuh yang sehat, maka akan memuat saya tahan tubuh selalu terjaga. 2. Menyehatkan Organ Jantung Mengayuh sepeda perlu tenaga. Detak jantung akan berirama ketika Anda mengayuhnya. Jarak dekat dan jauh, maka irama detak jantung akan berbeda. Ketika Anda bersepeda jarak jauh, maka akan membuat jantung Anda lebih sehat. 3. Mengencangkan Otot Bersepeda akan membuat otot-otot tubuh Anda menjadi lebih kencang. Sebab semua bagian tubuh Anda mau tidak mau harus digerakkan. Walaupun kaki untuk mengayuh, namun tangan, punggung, dan bagian tubuh yang lain akan terpicu untuk ikut bergerak. 4. Mengatur Pernapasan Anda tentu akan terengah-engah ketika mengayuh sepeda dalam waktu lama dan jarak berkilo-kilo meter. Namun itu akan menyehatkan pernapasan Anda. Anda akan lebih dapat tertaur dalam bernapas. Sebelum olahraga ada baiknya melakukan pemanasan dan pendinginan sebelum dan sesudahnya. Manfaat pemanasan dan pendinginan ini sangat penting untuk mengatur ritme saat berolahraga. 5. Memperkuat Kerangka Tubuh Mungkin orang mengira jika bersepeda, maka posisi tubuh sedikit membungkuk. Jangan berpikir itu akan membuat tubuh menjadi bungkuk. Sebaliknya, kerangka tubuh Anda akan semakin kuat dan tegak dengan bersepeda setiap hari. 6. Pilihan Diet Sehat Memilih cara bersepeda untuk menjalankan diet, maka tubuh Anda jelas akan memperoleh manfaat kesehatan. Anda tidak perlu menyiksa tubuh untuk menghindari konsumsi makanan tertentu. Asal pola makan Anda terjaga, maka itu sudah cukup dengan Anda bersepeda. Bersepeda Untuk Kesehatan 7. Tidak Mudah Terserang Penyakit Dengan Anda bersepeda, maka tubuh akan sehat. Terjaganya daya tahan tubuh, maka penyakit akan susah tumbuh di tubuh Anda. 8. Mengurangi Tingkat Stress Jika Anda terserang stress ringan, cobalah untuk bersepeda. Dijamin sstress Anda akan berkurang. Sebab ketika Anda bersepeda, maka Anda akan menyaksikan banyak pemandangan yang berbeda. Sehingga dapat melupakan dengan segera penat yang melanda Anda. 9. Menghalau Keluhan Sakit Pada Punggung Masih muda, maka sehatkan tubuh dengan cara yang benar yaitu, bersepeda. Dijamin jika Anda sering mengeluhkan sakit pada punggung, asalkan Anda rutin bersepeda, maka keluhan itu tidak akan Anda rasakan kembali. 10. Membuat Pikiran Lebih Tenang Dengan bersepeda, pikiran Anda akan dapat tenang. Sebab dengan mengayuh sepeda, ada irama keteraturan yang Anda lakukan. Kegiatan fisik tersebut dapat berpengaruh dalam pikiran Anda. Sehingga jika Anda merasa pikiran tidak kunjung tenang, bersepedalah. 11. Mampu Mengontrol Suplai Oksigen Tubuh Bersepeda, maka napas Anda akan terengah-engah. Aliran oksigen akan banyak terkuras karena energi yang besar Anda gunakan. Namun dengan begitu, tubuh Anda mampu menontrol suplai dari oksigen tubuh. Tidak perlu khawatir oksigen tubuh Anda berkurang. 12. Pencegah Penyakit Kanker Kanker tergolong sebagai penyakit yang cepat menjalar ke seluruh tubuh. Kanker juga termasuk penyakit yang berkembang dalam waktu jangka panjang. Agar Anda tidak terjangkit penyakit kanker, maka lakukan olahraga sepeda. Kemungkinan jikalau ada sel yang memicu penyakit kanker, ketika tubuh Anda selalu dalam keadaan sehat, maka sel yang awalnya akan menjadi kanker dapat dicegah pertumbuhannya. Bersepeda untuk bersosialisasi 13. Pencegah Penyakit Obesitas Jika Anda tidak ingin mengidap penyakit obesitas, maka rasakan manfaat dari bersepeda. Obesitas dapat dicegah dengan Anda bersepeda. 14. Menyeimbangkan Sistem Metabolisme Jangan sampai Anda mengalami gangguan metabolisme. Sehatkan dan tetap jaga sistem metabolisme dengan rajin bersepeda. 15. Menyeimbangkan Koordinasi Tubuh Orang yang bersepeda, maka perhatiannya harus benar-benar fokus. Tubuh harus mampu dikoordinasikan dengan baik. Dengan kebiasan bersepeda, maka koordinasi tubuh Anda akan dapat diseimbangkan. 16. Pembakar Kalori Dalam Tubuh Bagi Anda yang khawatir tubuh penuh lemak, maka lakukan bersepeda. Dengan bersepeda, maka ada gerakan. Dari banyak energi yang Anda lakukan akan mampu melakukan pembakaran kalori. Sehingga tidak ada kelebihan lemak di dalam tubuh.</p>', 'upload/products/thambnail/1768923058808177.webp', 1, '2023-06-16 21:34:49', NULL),
(24, 3, 22, 35, 'Barbell Besar', 'barbell-besar', 'kurus26', '2', '50', '400000', 'Dijamin kedot', '<p>Barbell adalah versi besar dari dumbbell. Alat ini dihubungkan batang besi yang panjang dan umumnya beban pada kedua sisinya dapat di bongkar pasang untuk mengatur beban agar sesuai dengan kemampuan penggunanya. Tidak seperti dumble yang dapat digunakan dengan hanya satu tangan, Barbell adalah alat yang harus digunakan dengan 2 tangan. Alat ini dapat membuat otot bagian kanan dan kiri berkembang secara seimbang.</p>', 'upload/products/thambnail/1768923202198008.webp', 1, '2023-06-16 21:37:05', NULL),
(25, 3, 21, 37, 'COVER BAG', 'cover-bag', 'gunung12', '5', '2', '5000', 'Tas muat banyak', '<p>COVER BAG -Pelindung Carrier/Tas -Berfungsi sebagai pelindung tas atau carrier saat hujan, juga bisa berfungsi sebagai safety ketika dimalam hari -Cocok banget untuk melindungi carrier kalian saat mendaki supaya lebih aman apalagi saat musim hujan -Untuk penyewaan terhitung 24jam per barang</p>', 'upload/products/thambnail/1768923327924909.webp', 1, '2023-06-16 21:39:05', NULL),
(26, 3, 21, 39, 'PANGGANGAN BESAR', 'panggangan-besar', 'gatauah18', '2', '20', '100000', 'Jumbo mantap', '<p>PANGGANGAN BESAR -Size 70cm x 40cm x 75cm -Cocok untuk pesta BBQ bareng keluarga -Lebih praktis dan hemat -Untuk persewaan terhitung 24jam per barang</p>', 'upload/products/thambnail/1768923408804064.webp', 1, '2023-06-16 21:40:22', NULL),
(27, 3, 21, 38, 'SLEEPING BAG', 'sleeping-bag', 'sadhj08', '1', '5', '7500', 'Nyaman dan enak', '<p>SLEEPING BAG -Alat kantung tidur atau biasa dikenal Sleeping Bag (SB), yang merupakan sebuah barang wajib yang harus dibawa saat mendaki atau traveling. -Kegunaan SB ini terbilang sangat vital untuk menjaga kehangatan tubuh saat tidur, terutama saat beraktivitas di alam terbuka atau outdoor. -Praktis dan ringan saat dibawa -Untuk penyewaan terhitung 24jam per barang</p>', 'upload/products/thambnail/1768923502078497.webp', 1, '2023-06-16 21:41:51', NULL),
(28, 3, 21, 36, 'TENDA DOME Kapasitas 1-2 Orang', 'tenda-dome-kapasitas-1-2-orang', 'hehe03', '2', '10', '25000', 'Berasa rumah', '<p>Tenda Great Outdoor Monodome 2 Tenda kapasitas 1-2 Orang -Single layer -Mudah didirikan -Tidak memakan tempat -Ringan dan modelnya cantik -Kami sarankan jika menggunakan tenda ini menggunakan Flysheet agar lebih aman apalagi saat musim hujan -Cocok banget digunakan untuk ke Pantai</p>', 'upload/products/thambnail/1768923584802298.webp', 1, '2023-06-16 21:43:10', NULL),
(29, 5, 28, 50, 'Elc Keyboard Key Boom', 'elc-keyboard-key-boom', 'zzz67', '1', '2', '7000', 'Berasa konser', '<h3>&nbsp;</h3>\r\n\r\n<p>-Cocok untuk anak hingga usia 3 tahun</p>\r\n\r\n<p>-Fitur Record Mega Music Station</p>\r\n\r\n<p>-2 jenis suara hewan, 6 musik pilihan, 6 musik latihan, 2 suara drum, 4 rhytim</p>\r\n\r\n<p>-Termasuk mikrofon</p>\r\n\r\n<p>-Drum pad yang bisa menyala</p>\r\n\r\n<p>-Lengkap dengan bangkuBisa disambungkan dengan MP3 player</p>', 'upload/products/thambnail/1768923700978061.webp', 1, '2023-06-16 21:45:01', NULL),
(30, 5, 28, 51, 'HD Puzzle Blok Bayi Mainan Anak-anak ala Alphanumeric Foam Mat', 'hd-puzzle-blok-bayi-mainan-anak-anak-ala-alphanumeric-foam-mat', 'whbwkhdc65', '6', '1', '25000', 'Sangat edukatif', '<p>HD Puzzle Blok Bayi Mainan Anak-anak ala Alphanumeric Foam Mat<br />\r\n<br />\r\nFeatures: Brand new and high quality. Made of foam, very durable, no harm to baby or kids. Lightweight, easy to carry. Specification: Material: Plastic. Size: 18*13.5*2cm. Color: As the picture show. Note: There could be some slight differences in the color tone of the pictures and the actual item. Please allow 1-2mm differs due to manual measurement, thanks. Package Included: 1 set * 36pcs small foam mat No Retail Box,Packed Safely in Bubble.</p>', 'upload/products/thambnail/1768923873801943.webp', 1, '2023-06-16 21:47:46', NULL),
(31, 5, 27, 53, 'Picnic the patio playhouse - Mainseru', 'picnic-the-patio-playhouse---mainseru', 'gemoy34', '2', '30', '13000', 'Mevvah', '<p>Anak &ndash; anak bermain dan berimajinasi kreatif dengan permainan playhouse anak-anak , dengan fitur meja yg menarik ditambah dua kursi, bel ajaib, gaya interior yang detail dan wastafel serta kompor, si kecil akan benar-benar merasa seperti di rumah impian dalam Piknik di Patio Playhouse. Pemakaian untuk indoor atau tidak terkena matahari langsung Rentan Usia : 1.5 &ndash; 6 tahun Dimensi Produk : Weight(kg): 32.7 Height(cm): 120 Width(cm): 160 Depth(cm): 93</p>', 'upload/products/thambnail/1768923970644471.webp', 1, '2023-06-16 21:49:18', NULL),
(32, 5, 27, 52, 'Pikler Triangle With Slide & Rock Climbing – Standar – Colorful By Mamasewa', 'pikler-triangle-with-slide-&-rock-climbing-–-standar-–-colorful-by-mamasewa', 'xdwhxwgd267', '1', '10', '16000', 'EMANG BOLEH SECOLORFUL INI? GA BAHAYA TAH?!', '<h3>&nbsp;</h3>\r\n\r\n<p>Pikler Triangle ini adalah mainan yg bisa melatih kemampuan otot besar anak dan memenuhi kebutuhan geraknya agar anak mau anteng makan. Dan emang gross motor skill alias kemampuan otot kasar ini merupakan pondasi dari skill motorik halus nantinya. Gagasan di balik Pikler adalah memberdayakan anak-anak untuk dengan aman menjelajahi apa yang mampu dilakukan tubuh mereka secara independen dari orang tua mereka; mendorong rasa ingin tahu dan kepercayaan diri pada kemampuan fisik mereka sendiri!</p>\r\n\r\n<p>Pikler Triangler ini cocok banget buat orang tua yang pengen anaknya;</p>\r\n\r\n<p>1. belajar memiliki physical self awareness</p>\r\n\r\n<p>2. belajar keseimbangan dengan lebih baik terutama untuk keselamatan diri mereka sendiri</p>\r\n\r\n<p>3. Memiliki awareness of their own boundaries and limits Bahan dasar kayu mahoni Finishing waterbased yang aman digunakan untuk anak-anak</p>\r\n\r\n<p><strong>Sudah termasuk tangga dan slider / prosotan &ndash; wooden climber (bolak balik)</strong></p>\r\n\r\n<p><strong>1 set</strong>&nbsp;ukuran tangga 70&times;50 cm, prosotan 110&times;45 cm</p>', 'upload/products/thambnail/1768924095876077.webp', 1, '2023-06-16 21:51:18', NULL),
(33, 5, 27, 54, 'Adjust And Jam Basketball (Red Blue) - mainseru', 'adjust-and-jam-basketball-(red-blue)---mainseru', 'djshd23', '1', '15', '7000', 'Yang Basket Basket Aza', '<p>Age: 2 + years This kids basketball set is perfect for your little basketball star! The adjustable hoop has five different settings to create the right amount of challenge. This basketball set introduces competitive play while the child builds motor skills. The kid-sized ball makes it easy to shoot. Features: 5 height adjustments from 4-6 feet tall Breakaway rim Base must be weighted with 50lbs.</p>', 'upload/products/thambnail/1768924199869990.webp', 1, '2023-06-16 21:52:57', NULL),
(34, 5, 26, 56, 'Tayo bus roof car', 'tayo-bus-roof-car', 'toya78', '2', '26', '8000', 'Hey toya dia bus kecil ramah', '<p>roduct Specifications: Ride on car Push car Melody Handle Gender: Unisex Major Material: Plastic Age Group: 2-4 Years Customised: Yes Brand Name: YAYA CORPORATION</p>', 'upload/products/thambnail/1768924447657408.webp', 1, '2023-06-16 21:56:53', NULL),
(35, 5, 26, 57, 'Sepeda Motor Aki Vespa PMB', 'sepeda-motor-aki-vespa-pmb', 'bxdsjdh64', '1', '10', '20000', 'Mirip adv senggol bos', '<h3>&nbsp;</h3>\r\n\r\n<p>Motor Type M788</p>\r\n\r\n<p>Vespa Official Licenced Product</p>\r\n\r\n<p>High quality toys</p>\r\n\r\n<p>Features Music, Lamp, USB and Bluetooth</p>\r\n\r\n<p>Product Dimension: 67x38x50cm</p>\r\n\r\n<p>Package Dimension: 61x31x35cm</p>\r\n\r\n<p>Require battery 6V 4.5A</p>\r\n\r\n<p>Kapasitas</p>\r\n\r\n<p>Maks 20kg berat anak dari umur 1 tahun &ndash; 3 tahun</p>', 'upload/products/thambnail/1768924638933415.webp', 1, '2023-06-16 21:59:56', NULL),
(36, 5, 26, 55, 'Sepeda London Taxi Kick Bike', 'sepeda-london-taxi-kick-bike', 'sgdsg76', '1', '10', '6000', 'Mini mini cabai rawit', '<h3>&nbsp;</h3>\r\n\r\n<p>Sepeda Anak London Taxi Kick Bike yang merupakan sepeda untuk melatih keseimbangan anak dalam bersepeda. Sepeda London Taxi Kick Bike ini sangat tepat digunakan bagi anak anda sebagai saran untuk belajar sebelum menggunakan sepeda roda 2.</p>\r\n\r\n<p>Detail Produk :</p>\r\n\r\n<p>Sepeda latihan untuk roda 2</p>\r\n\r\n<p>Sangat ringan, only 6.4 lbs ( 2,9 kg )</p>\r\n\r\n<p>Classic London Taxi saddle</p>\r\n\r\n<p>2 tone warna untuk saddle dan pegangan dengan tampilan vintage</p>\r\n\r\n<p>Strong, welded steel frame with our unique, integrated launchpad footrest</p>\r\n\r\n<p>Ultralight wheels, Durable EVA polymer tires never need air</p>\r\n\r\n<p>Toddler sized mini-grips</p>\r\n\r\n<p>Seat height from 28-41 cm</p>\r\n\r\n<p>Quick clamps on saddle</p>', 'upload/products/thambnail/1768924748672788.webp', 1, '2023-06-16 22:01:40', NULL),
(37, 2, 18, 29, 'Fuji Xerox DC IV C 2260/2265', 'fuji-xerox-dc-iv-c-2260/2265', 'gdsjhgdj45', '1', '100', '50000', 'Sangat berguna', '<p>Minimum sewa: 3 bulan, wajib memiliki koneksi wifi &amp; menyediakan kabel LAN Sudah termasuk: B/W 1.000 lembar Color 50 lembar Extra Copy: B/W Rp. 200/lembar Color Rp. 1.500/lembar Tidak Termasuk: - Kabel LAN. Biaya kabel LAN Rp 20.000/meter Fuji Xerox DC IV C 2260/2265 Speed 35ppm Black &amp; White A3 Print, Copy, Scan &amp; Fax Resolusi 600x600 print resolution Standard Duplex (Copy bolak balik) Spesifikasi: &bull; Unit Rekondisi Import &bull; Mesin Fotocopy Stand Alone (hitam putih) &bull; Speed 35 ppm &bull; Ukuran kertas A5R sampai A3 &bull; Duplex (fotocopy bolak balik) &bull; DADF (feeder otomatis) &bull; 2 PaperTray + 1 Bypass Tray &bull; Copy/Print BW &bull; Scan Colour &bull; User Pin/Password &bull; Network ready via Kabel Lan Pelayanan Sewa yang akan di dapatkan: 1. Free Consumables 2. Free Sparepart dan Service 3. Kunjungan service 1x24 Jam dari laporan kendala 4. Pemeriksaan rutin setiap bulan Email ke project@raggam.id untuk permintaan Penawaran lainnya.</p>', 'upload/products/thambnail/1768924900411089.webp', 1, '2023-06-16 22:04:05', NULL),
(38, 3, 20, 40, 'Sepeda Balap', 'sepeda-balap', 'fafa123', '1', '123', '50000', 'ini sepeda', '<p>sepedaaa</p>', 'upload/products/thambnail/1768933261463955.webp', 1, '2023-06-17 00:16:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VJGRQjssHU4dryaOFTAwFXMf7Zd8mAgHXq32Uymu', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiQ1k5WDFXZzRvTzd2TUwxWUZTSk1rZHk4aWFlN2l6VDl3QjBjR3VNeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImNhcnQiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRvUU56b0wxQXZBOU5CUC42T1g3WHQueEgvMy9tVjB1NUptY0pVVE43cFQvVzNYUnJuQVAuMiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkb1FOem9MMUF2QTlOQlAuNk9YN1h0LnhILzMvbVYwdTVKbWNKVVRON3BUL1czWFJybkFQLjIiO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMCR2M0lmWTFmT1RHTkxEZXFsd2ZHU1JlTTV0TjNMN0s3bTB0Y0lEeElXdm91eXFrUkpVWlEuUyI7fQ==', 1686987138);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kabupaten Bandung', '2022-03-13 01:50:49', NULL),
(2, 1, 'Bandung', '2022-03-13 01:50:56', NULL),
(3, 2, 'Madura', '2022-05-11 01:36:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Jawa Barat', '2022-05-12 01:10:59', '2022-05-12 01:10:59'),
(2, 'Jawa Timur', '2022-05-11 01:36:38', NULL),
(3, 'DKI Jakarta', '2022-05-12 01:10:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Ciwidey', '2022-03-13 01:51:18', NULL),
(4, 1, 2, 'Pasirjambu', '2022-05-12 02:24:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1727013687201165.png', '+6285366768686', '+6281369192888', 'sewas@gmail.com', 'Sewas', 'Leora 2 no 36', 'sewas', 'sewas', 'sewas', 'sewas', NULL, '2022-05-12 11:03:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1727233631981849.png', '', '', 1, NULL, '2022-03-13 17:39:30'),
(2, 'upload/slider/1730282148176288.png', NULL, NULL, 1, NULL, NULL),
(3, 'upload/slider/1730283908692425.png', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(15, 1, 'Baju Pesta', 'baju-pesta', NULL, NULL),
(16, 1, 'Seragam', 'seragam', NULL, NULL),
(17, 1, 'Kostum', 'kostum', NULL, NULL),
(18, 2, 'Elektronik Kantor', 'elektronik-kantor', NULL, NULL),
(19, 2, 'Elektoronik Rumah Tangga', 'elektoronik-rumah-tangga', NULL, NULL),
(20, 3, 'Sepeda', 'sepeda', NULL, NULL),
(21, 3, 'Hiking & Camping', 'hiking-&-camping', NULL, NULL),
(22, 3, 'Gym & Fitness', 'gym-&-fitness', NULL, NULL),
(24, 4, 'Kamera Digital', 'kamera-digital', NULL, NULL),
(25, 4, 'Aksesoris Kamera', 'aksesoris-kamera', NULL, NULL),
(26, 5, 'Ride On', 'ride-on', NULL, NULL),
(27, 5, 'Outdoor & Aktivitas', 'outdoor-&-aktivitas', NULL, NULL),
(28, 5, 'Edukasi & Belajar', 'edukasi-&-belajar', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name`, `subsubcategory_slug`, `created_at`, `updated_at`) VALUES
(23, 1, 15, 'Dress Gaun', 'dress-gaun', NULL, NULL),
(24, 1, 15, 'Pakaian Pria', 'pakaian-pria', NULL, NULL),
(25, 1, 17, 'Cosplay', 'cosplay', NULL, NULL),
(26, 1, 16, 'Seragam Dewasa', 'seragam-dewasa', NULL, '2023-06-16 09:41:39'),
(27, 1, 16, 'Seragam Anak', 'seragam-anak', NULL, NULL),
(28, 2, 18, 'Printer', 'printer', NULL, NULL),
(29, 2, 18, 'Mesin Fotocopy', 'mesin-fotocopy', NULL, NULL),
(30, 2, 19, 'Vacuum Cleaner', 'vacuum-cleaner', NULL, NULL),
(31, 2, 19, 'Air Purifier', 'air-purifier', NULL, NULL),
(32, 2, 19, 'Lainnya', 'lainnya', NULL, NULL),
(33, 3, 22, 'Treadmill', 'treadmill', NULL, NULL),
(34, 3, 22, 'Sepeda Statis', 'sepeda-statis', NULL, NULL),
(35, 3, 22, 'Angkat Beban', 'angkat-beban', NULL, NULL),
(36, 3, 21, 'Tenda', 'tenda', NULL, NULL),
(37, 3, 21, 'Peralatan Hiking', 'peralatan-hiking', NULL, NULL),
(38, 3, 21, 'Perlengkapan Tidur', 'perlengkapan-tidur', NULL, NULL),
(39, 3, 21, 'Perlengkapan Masak', 'perlengkapan-masak', NULL, NULL),
(40, 3, 20, 'Sepeda Balap', 'sepeda-balap', NULL, NULL),
(41, 3, 20, 'Sepeda Gunung', 'sepeda-gunung', NULL, NULL),
(42, 3, 20, 'Sepeda Lipat', 'sepeda-lipat', NULL, NULL),
(43, 4, 25, 'Tripod', 'tripod', NULL, NULL),
(44, 4, 25, 'Flash', 'flash', NULL, NULL),
(45, 4, 25, 'Lensa', 'lensa', NULL, NULL),
(46, 4, 24, 'Kamera DSLR', 'kamera-dslr', NULL, NULL),
(47, 4, 24, 'Kamera Mirrorless', 'kamera-mirrorless', NULL, NULL),
(48, 4, 24, 'Action Camera', 'action-camera', NULL, NULL),
(49, 4, 24, 'Drone', 'drone', NULL, NULL),
(50, 5, 28, 'Mainan Alat Musik', 'mainan-alat-musik', NULL, NULL),
(51, 5, 28, 'Puzzle Anak', 'puzzle-anak', NULL, NULL),
(52, 5, 27, 'Playground & Climbing', 'playground-&-climbing', NULL, NULL),
(53, 5, 27, 'Playhouse', 'playhouse', NULL, NULL),
(54, 5, 27, 'Aktivitas Lainnya', 'aktivitas-lainnya', NULL, NULL),
(55, 5, 26, 'Sepeda Anak', 'sepeda-anak', NULL, '2023-06-16 09:50:01'),
(56, 5, 26, 'Mobil Anak', 'mobil-anak', NULL, NULL),
(57, 5, 26, 'Motor Anak', 'motor-anak', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `post_code`, `address`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(6, 'User', 'user@gmail.com', '085366768686', '132341', 'dibawah langit diatas bumi didekat daun bergoyang', '2023-06-17 07:32:18', NULL, '$2y$10$oQNzoL1AvA9NBP.6OX7Xt.xH/3/mV0u5JmcJUTN7pT/W3XRrnAP.2', NULL, NULL, 'vIF87z8MCq9EiDMEGWljiZy3DpRolg5yUEU7IRBbA4rWM8H9skd4tEJQRt1p', NULL, '202306161659_91408619_55df76d5-2245-41c1-8031-07a4da3f313f.jpg', '2022-05-12 09:12:22', '2023-06-17 00:32:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 1, 9, '2022-05-09 21:40:04', NULL),
(4, 1, 8, '2022-05-09 21:49:58', NULL),
(5, 1, 5, '2022-05-09 22:12:17', NULL),
(7, 6, 38, '2023-06-17 00:30:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
