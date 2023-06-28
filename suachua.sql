-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2023 at 01:24 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suachua`
--

-- --------------------------------------------------------

--
-- Table structure for table `advises`
--

CREATE TABLE `advises` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advises`
--

INSERT INTO `advises` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(11, 'Nguyen Quang Hai', '0359808267', 'admin@admin.com', 'hello', '2023-06-23 00:10:41', '2023-06-23 00:10:41'),
(14, 'Nguyen Quang Hai', '0359808267', 'content@gmail.com', 'hello', '2023-06-23 17:44:20', '2023-06-23 17:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Banner', 'banners\\June2023\\9rDkUuV942yFRvPKNjBv.jpg', 'ACTIVE', 'home_banner', '2023-06-02 00:33:00', '2023-06-22 02:50:20'),
(3, 'Banner 2', 'banners\\June2023\\220lcd1HKlzhNfbYYz5i.jpg', 'ACTIVE', 'home_banner', '2023-06-22 02:50:00', '2023-06-23 03:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin tức', 'tin-tuc', '2023-06-01 19:44:55', '2023-06-04 18:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 4),
(60, 7, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:services,slug\"}}', 3),
(66, 8, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(67, 8, 'price', 'text', 'Giá dịch vụ', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(70, 8, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(71, 8, 'type', 'text', 'Type', 0, 0, 1, 1, 1, 1, '{}', 9),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(90, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 10, 'name', 'text', 'Họ Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 10, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 3),
(93, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 10, 'content', 'text', 'Nội Dung', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(97, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(98, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 11, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 4),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(104, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 12, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 12, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:projects,slug\"}}', 3),
(107, 12, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(108, 12, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(109, 12, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(110, 12, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(111, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(112, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(113, 11, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(114, 11, 'content', 'text', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 3),
(115, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(116, 8, 'icon', 'image', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 12),
(117, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 13, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 13, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 3),
(120, 13, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 13, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"about-home\",\"options\":{\"about-home\":\"about-home\",\"logo\":\"logo\",\"achievement\":\"achievement\"}}', 5),
(122, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(123, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-06-01 19:44:56', '2023-06-04 18:48:37'),
(7, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-02 00:31:56', '2023-06-22 02:50:47'),
(8, 'services', 'services', 'Dịch vụ sửa chữa', 'Dịch vụ sửa chữa', 'voyager-thumbs-up', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-02 00:55:36', '2023-06-22 03:00:18'),
(10, 'advises', 'advises', 'Yêu cầu tư vấn', 'Yêu cầu tư vấn', 'voyager-mail', 'App\\Advise', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-04 18:38:03', '2023-06-22 20:37:42'),
(11, 'questions', 'questions', 'Question', 'Questions', 'voyager-chat', 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-04 19:09:52', '2023-06-20 00:31:10'),
(12, 'projects', 'projects', 'Dự án', 'Dự án', 'voyager-backpack', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-20 00:25:52', '2023-06-22 23:56:52'),
(13, 'staticdatas', 'staticdatas', 'Dữ liệu tĩnh', 'Dữ liệu tĩnh', 'voyager-buy', 'App\\Staticdata', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-22 17:58:04', '2023-06-22 18:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(2, 'home_menu', '2023-06-02 00:24:51', '2023-06-02 00:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-06-01 19:44:55', '2023-06-01 19:44:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2023-06-01 19:44:55', '2023-06-23 02:10:43', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', 32, 2, '2023-06-01 19:44:55', '2023-06-23 02:11:07', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 32, 1, '2023-06-01 19:44:55', '2023-06-23 02:10:52', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2023-06-01 19:44:55', '2023-06-23 02:10:43', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-06-01 19:44:55', '2023-06-02 00:32:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-06-01 19:44:55', '2023-06-02 00:32:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-06-01 19:44:55', '2023-06-02 00:32:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-06-01 19:44:55', '2023-06-02 00:32:05', 'voyager.bread.index', NULL),
(10, 1, 'Cấu hình website', '', '_self', 'voyager-settings', '#000000', NULL, 9, '2023-06-01 19:44:55', '2023-06-23 02:11:51', 'voyager.settings.index', 'null'),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', 23, 3, '2023-06-01 19:44:55', '2023-06-03 02:27:01', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 23, 2, '2023-06-01 19:44:56', '2023-06-03 02:27:12', 'voyager.posts.index', 'null'),
(13, 1, 'Trang giới thiệu', '', '_self', 'voyager-file-text', '#000000', 23, 4, '2023-06-01 19:44:56', '2023-06-03 02:26:50', 'voyager.pages.index', 'null'),
(14, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2023-06-02 00:25:14', '2023-06-02 00:26:31', NULL, ''),
(15, 2, 'Dịch vụ', '/services', '_self', NULL, '#000000', NULL, 3, '2023-06-02 00:25:26', '2023-06-02 02:31:46', NULL, ''),
(16, 2, 'Dự án tiêu biểu', '/projects', '_self', NULL, '#000000', NULL, 4, '2023-06-02 00:25:45', '2023-06-22 20:45:33', NULL, ''),
(17, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 2, '2023-06-02 00:25:59', '2023-06-02 02:31:46', NULL, ''),
(18, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-06-02 00:26:11', '2023-06-02 01:20:28', NULL, ''),
(19, 2, 'Tin tức', '/posts', '_self', NULL, '#000000', NULL, 6, '2023-06-02 00:26:29', '2023-06-02 01:20:28', NULL, ''),
(20, 1, 'Banners', '', '_self', 'voyager-photos', NULL, 23, 1, '2023-06-02 00:31:56', '2023-06-03 02:26:32', 'voyager.banners.index', NULL),
(21, 1, 'Dịch vụ', '', '_self', 'voyager-browser', '#000000', NULL, 2, '2023-06-02 00:55:36', '2023-06-20 00:03:22', 'voyager.services.index', 'null'),
(23, 1, 'Quản lý nội dung', '', '_self', 'voyager-categories', '#000000', NULL, 5, '2023-06-03 02:26:26', '2023-06-04 18:38:12', NULL, ''),
(25, 1, 'Yêu cầu tư vấn', '', '_self', 'voyager-mail', NULL, NULL, 4, '2023-06-04 18:38:03', '2023-06-04 18:38:12', 'voyager.advises.index', NULL),
(26, 1, 'Phản hồi của khách hàng', '', '_self', 'voyager-chat', '#000000', 23, 5, '2023-06-04 19:09:52', '2023-06-20 00:29:19', 'voyager.questions.index', 'null'),
(27, 1, 'Dự án', '', '_self', 'voyager-data', NULL, NULL, 3, '2023-06-20 00:25:53', '2023-06-20 00:26:03', 'voyager.projects.index', NULL),
(28, 2, 'San lấp mặt bằng', '/services/dich-vu-san-lap-mat-bang', '_self', NULL, '#000000', 15, 1, '2023-06-22 02:34:49', '2023-06-22 20:05:04', NULL, ''),
(29, 2, 'Vận tải', '/services/dich-vu-van-tai', '_self', NULL, '#000000', 15, 2, '2023-06-22 02:34:59', '2023-06-22 20:04:50', NULL, ''),
(30, 2, 'Xây dựng', '/services/dich-vu-xay-dung', '_self', NULL, '#000000', 15, 3, '2023-06-22 02:35:10', '2023-06-22 20:04:39', NULL, ''),
(31, 1, 'Dữ liệu tĩnh', '', '_self', 'voyager-buy', NULL, 23, 6, '2023-06-22 17:58:04', '2023-06-22 17:58:22', 'voyager.staticdatas.index', NULL),
(32, 1, 'Quản lý tài khoản', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2023-06-23 02:10:33', '2023-06-23 02:10:41', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chúng tôi dẫn đầu trong lĩnh vực xây dựng', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh là một đơn vị hàng đầu trong lĩnh vực vận tải và xây dựng, mang đến các giải pháp toàn diện và chất lượng cao cho khách hàng. Với kinh nghiệm dày dặn và đội ngũ chuyên gia giàu tâm huyết, chúng tôi cam kết đem đến sự hài lòng và thành công cho mọi dự án.', '<p><strong>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh</strong><br>Đối t&aacute;c Tin cậy cho Mọi Giải ph&aacute;p<br><strong>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Min</strong>h l&agrave; một đơn vị h&agrave;ng đầu trong lĩnh vực vận tải v&agrave; x&acirc;y dựng, mang đến c&aacute;c giải ph&aacute;p to&agrave;n diện v&agrave; chất lượng cao cho kh&aacute;ch h&agrave;ng. Với kinh nghiệm d&agrave;y dặn v&agrave; đội ngũ chuy&ecirc;n gia gi&agrave;u t&acirc;m huyết, ch&uacute;ng t&ocirc;i cam kết đem đến sự h&agrave;i l&ograve;ng v&agrave; th&agrave;nh c&ocirc;ng cho mọi dự &aacute;n.</p>\r\n<ul>\r\n<li>X&acirc;y dựng: Ch&uacute;ng t&ocirc;i hiểu rằng một c&ocirc;ng tr&igrave;nh x&acirc;y dựng chất lượng l&agrave; nền tảng cho sự ph&aacute;t triển bền vững. Với sự chuy&ecirc;n nghiệp v&agrave; kiến thức s&acirc;u sắc, ch&uacute;ng t&ocirc;i thiết kế v&agrave; thi c&ocirc;ng c&aacute;c dự &aacute;n từ nhỏ đến lớn, đảm bảo ti&ecirc;u chuẩn cao về an to&agrave;n, chất lượng v&agrave; thẩm mỹ.</li>\r\n<li>Vận tải: Ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận tải đa dạng v&agrave; tin cậy. H&agrave;ng h&oacute;a của bạn được vận chuyển một c&aacute;ch an to&agrave;n v&agrave; đ&uacute;ng thời gian, với mạng lưới vận chuyển rộng khắp v&agrave; đội ngũ t&agrave;i xế chuy&ecirc;n nghiệp.</li>\r\n<li>Ch&uacute;ng t&ocirc;i cam kết đ&aacute;p ứng mọi y&ecirc;u cầu vận chuyển của kh&aacute;ch h&agrave;ng với sự linh hoạt v&agrave; tận t&acirc;m.</li>\r\n<li>Chất lượng v&agrave; Đ&aacute;ng tin cậy: Sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; ưu ti&ecirc;n h&agrave;ng đầu của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i tu&acirc;n thủ ti&ecirc;u chuẩn chất lượng cao nhất v&agrave; cam kết cung cấp dịch vụ đ&aacute;ng tin cậy. Sự đa dạng v&agrave; t&iacute;nh to&agrave;n diện trong c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i đ&aacute;p ứng mọi nhu cầu v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</li>\r\n<li>Với tinh thần đo&agrave;n kết, s&aacute;ng tạo v&agrave; nỗ lực kh&ocirc;ng ngừng, C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh đồng h&agrave;nh c&ugrave;ng kh&aacute;ch h&agrave;ng trong mọi dự &aacute;n, tạo n&ecirc;n những th&agrave;nh c&ocirc;ng bền vững v&agrave; x&acirc;y dựng mối quan hệ đ&aacute;ng tin cậy. H&atilde;y để ch&uacute;ng t&ocirc;i l&agrave; đối t&aacute;c của bạn v&agrave; mang đến giải ph&aacute;p ho&agrave;n hảo cho mọi nhu cầu x&acirc;y dựng v&agrave; vận tả</li>\r\n</ul>', 'pages\\June2023\\ty4ZsXOQoNoKKo82wMP5.jpg', 'about', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-06-01 19:44:56', '2023-06-22 03:10:30');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(2, 'browse_bread', NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(3, 'browse_database', NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(4, 'browse_media', NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(5, 'browse_compass', NULL, '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(6, 'browse_menus', 'menus', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(7, 'read_menus', 'menus', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(8, 'edit_menus', 'menus', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(9, 'add_menus', 'menus', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(10, 'delete_menus', 'menus', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(11, 'browse_roles', 'roles', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(12, 'read_roles', 'roles', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(13, 'edit_roles', 'roles', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(14, 'add_roles', 'roles', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(15, 'delete_roles', 'roles', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(16, 'browse_users', 'users', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(17, 'read_users', 'users', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(18, 'edit_users', 'users', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(19, 'add_users', 'users', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(20, 'delete_users', 'users', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(21, 'browse_settings', 'settings', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(22, 'read_settings', 'settings', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(23, 'edit_settings', 'settings', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(24, 'add_settings', 'settings', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(25, 'delete_settings', 'settings', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(26, 'browse_categories', 'categories', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(27, 'read_categories', 'categories', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(28, 'edit_categories', 'categories', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(29, 'add_categories', 'categories', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(30, 'delete_categories', 'categories', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(31, 'browse_posts', 'posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(32, 'read_posts', 'posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(33, 'edit_posts', 'posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(34, 'add_posts', 'posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(35, 'delete_posts', 'posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(36, 'browse_pages', 'pages', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(37, 'read_pages', 'pages', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(38, 'edit_pages', 'pages', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(39, 'add_pages', 'pages', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(40, 'delete_pages', 'pages', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(41, 'browse_banners', 'banners', '2023-06-02 00:31:56', '2023-06-02 00:31:56'),
(42, 'read_banners', 'banners', '2023-06-02 00:31:56', '2023-06-02 00:31:56'),
(43, 'edit_banners', 'banners', '2023-06-02 00:31:56', '2023-06-02 00:31:56'),
(44, 'add_banners', 'banners', '2023-06-02 00:31:56', '2023-06-02 00:31:56'),
(45, 'delete_banners', 'banners', '2023-06-02 00:31:56', '2023-06-02 00:31:56'),
(46, 'browse_services', 'services', '2023-06-02 00:55:36', '2023-06-02 00:55:36'),
(47, 'read_services', 'services', '2023-06-02 00:55:36', '2023-06-02 00:55:36'),
(48, 'edit_services', 'services', '2023-06-02 00:55:36', '2023-06-02 00:55:36'),
(49, 'add_services', 'services', '2023-06-02 00:55:36', '2023-06-02 00:55:36'),
(50, 'delete_services', 'services', '2023-06-02 00:55:36', '2023-06-02 00:55:36'),
(56, 'browse_advises', 'advises', '2023-06-04 18:38:03', '2023-06-04 18:38:03'),
(57, 'read_advises', 'advises', '2023-06-04 18:38:03', '2023-06-04 18:38:03'),
(58, 'edit_advises', 'advises', '2023-06-04 18:38:03', '2023-06-04 18:38:03'),
(59, 'add_advises', 'advises', '2023-06-04 18:38:03', '2023-06-04 18:38:03'),
(60, 'delete_advises', 'advises', '2023-06-04 18:38:03', '2023-06-04 18:38:03'),
(61, 'browse_questions', 'questions', '2023-06-04 19:09:52', '2023-06-04 19:09:52'),
(62, 'read_questions', 'questions', '2023-06-04 19:09:52', '2023-06-04 19:09:52'),
(63, 'edit_questions', 'questions', '2023-06-04 19:09:52', '2023-06-04 19:09:52'),
(64, 'add_questions', 'questions', '2023-06-04 19:09:52', '2023-06-04 19:09:52'),
(65, 'delete_questions', 'questions', '2023-06-04 19:09:52', '2023-06-04 19:09:52'),
(66, 'browse_projects', 'projects', '2023-06-20 00:25:53', '2023-06-20 00:25:53'),
(67, 'read_projects', 'projects', '2023-06-20 00:25:53', '2023-06-20 00:25:53'),
(68, 'edit_projects', 'projects', '2023-06-20 00:25:53', '2023-06-20 00:25:53'),
(69, 'add_projects', 'projects', '2023-06-20 00:25:53', '2023-06-20 00:25:53'),
(70, 'delete_projects', 'projects', '2023-06-20 00:25:53', '2023-06-20 00:25:53'),
(71, 'browse_staticdatas', 'staticdatas', '2023-06-22 17:58:04', '2023-06-22 17:58:04'),
(72, 'read_staticdatas', 'staticdatas', '2023-06-22 17:58:04', '2023-06-22 17:58:04'),
(73, 'edit_staticdatas', 'staticdatas', '2023-06-22 17:58:04', '2023-06-22 17:58:04'),
(74, 'add_staticdatas', 'staticdatas', '2023-06-22 17:58:04', '2023-06-22 17:58:04'),
(75, 'delete_staticdatas', 'staticdatas', '2023-06-22 17:58:04', '2023-06-22 17:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 'Kinh nghiệm lái xe tải chở hàng trong thành phố', 'Kinh nghiệm lái xe tải chở hàng trong thành phố', 'Với tình hình giao thông đông đúc, việc chở hàng trong thành phố là bài toán không hề dễ dàng với các bác tài.', '<p>Với t&igrave;nh h&igrave;nh giao th&ocirc;ng đ&ocirc;ng đ&uacute;c, việc chở h&agrave;ng trong th&agrave;nh phố l&agrave; b&agrave;i to&aacute;n kh&ocirc;ng hề dễ d&agrave;ng với c&aacute;c b&aacute;c t&agrave;i. Vậy th&igrave; l&agrave;m thế n&agrave;o để những chuyến h&agrave;ng trong th&agrave;nh phố trở n&ecirc;n đơn giản v&agrave; an to&agrave;n hơn? C&ugrave;ng tham khảo th&ecirc;m c&aacute;c mẹo hay được đ&uacute;c kết từ c&aacute;c kinh nghiệm l&aacute;i xe tải trong th&agrave;nh phố dưới đ&acirc;y của ch&uacute;ng t&ocirc;i nh&eacute;.</p>\r\n<h2><strong>Th&oacute;i quen t&agrave;i xế cần c&oacute; khi chở h&agrave;ng trong th&agrave;nh phố</strong></h2>\r\n<p>Việc tham gia chở h&agrave;ng trong th&agrave;nh phố kh&aacute;&nbsp;&aacute;p lực với nhiều b&aacute;c t&agrave;i. Điều n&agrave;y cũng kh&aacute; dễ hiểu v&igrave; mật độ giao th&ocirc;ng, người v&agrave; phương tiện rất lớn g&acirc;y kh&oacute; khăn cho việc di chuyển. V&agrave; cũng kh&ocirc;ng c&oacute; g&igrave; ngạc nhi&ecirc;n nếu c&aacute;c t&agrave;i xế mới v&agrave;o nghề thường l&aacute;i xe bị trầy xước, m&oacute;p m&eacute;o cabin, th&ugrave;ng h&agrave;ng, giao h&agrave;ng trễ hẹn, vi phạm luật giao th&ocirc;ng. Do đ&oacute;, nếu đ&atilde; l&agrave; một t&agrave;i xế xe tải, ch&uacute;ng ta cần luyện tập v&agrave; tạo cho m&igrave;nh những th&oacute;i quen quan trọng sau đ&acirc;y:</p>\r\n<p>Lu&ocirc;n kiểm tra xe trước v&agrave; sau mỗi chuyến h&agrave;ng: Nhiều t&agrave;i xế lấy l&yacute; do đi h&agrave;ng gấp n&ecirc;n thường bỏ qua bước quan trọng n&agrave;y. Tuy nhi&ecirc;n, để đảm bảo chuyến h&agrave;ng của m&igrave;nh lu&ocirc;n đ&uacute;ng giờ, an to&agrave;n th&igrave; bạn n&ecirc;n kiểm tra tổng qu&aacute;t xe, dầu nhi&ecirc;n liệu, lốp xe, đ&egrave;n xi-nhan, phanh thật kỹ.</p>\r\n<p>Đ&aacute;nh đ&egrave;n trước, đ&aacute;nh v&ocirc; lăng sau: Để tr&aacute;nh c&aacute;c va chạm xảy ra do chuyển hướng bất ngờ, bạn n&ecirc;n bật xi &ndash; nhan xin rẽ v&agrave; quan s&aacute;t thật kỹ trước, sau đ&oacute; mới đ&aacute;nh v&ocirc; lăng điều hướng xe. H&atilde;y chắc chắn rằng bạn đ&atilde; xi-nhan tr&aacute;i rồi mới&nbsp;cho xe từ từ lăn b&aacute;nh nếu xe đang tấp b&ecirc;n lề đường.</p>\r\n<p>Duy tr&igrave; tốc độ xe ổn định, kh&ocirc;ng đột ngột đi nhanh hoặc đi chậm v&igrave; c&oacute; thể bị h&uacute;c từ sau xe hoặc va chạm với c&aacute;c xe đang đi ph&iacute;a trước. Điều n&agrave;y cần đặc biệt lưu &yacute; khi đi xe chở h&agrave;ng trong th&agrave;nh phố.</p>\r\n<p>Tạo th&oacute;i quen sử dụng c&ograve;i hợp l&yacute; v&agrave; đ&uacute;ng l&uacute;c, đặc biệt l&agrave; khi đi v&agrave;o c&aacute;c khu vực khuất tầm nh&igrave;n như phố nhỏ, hẻm nhỏ, đường giao cắt để cảnh b&aacute;o cho c&aacute;c phương tiện ở gần đ&oacute;. Lưu &yacute;, kh&ocirc;ng đi qu&aacute; nhanh d&ugrave; l&agrave; đường vắng tại c&aacute;c ng&atilde; tư, ng&atilde; ba, v&ograve;ng xuyến v&igrave; c&aacute;c xe kh&aacute;ch c&oacute; thể tới bất ngờ.</p>\r\n<p>Nắm luật giao th&ocirc;ng v&agrave; lu&ocirc;n quan s&aacute;t c&aacute;c biển b&aacute;o: Hiện tại, quy định giờ cấm tải v&agrave;o th&agrave;nh phối đối với xe tải đ&atilde; c&oacute; nhiều thay đổi, do đ&oacute; c&aacute;c t&agrave;i xế cũng phải thường xuy&ecirc;n cập nhật th&ocirc;ng tin về giờ cấm tải, tuyến đường cấm để c&oacute; lịch tr&igrave;nh ph&ugrave; hợp. Ngo&agrave;i ra, việc quan s&aacute;t c&aacute;c biển b&aacute;o cũng gi&uacute;p t&agrave;i xế di chuyển đ&uacute;ng tuyển, kh&ocirc;ng rẽ sai đường, đi đường cấm.</p>\r\n<h2>&nbsp;<strong>Những kinh nghiệm &ldquo;xương m&aacute;u&rdquo; khi chở h&agrave;ng xe tải v&agrave;o th&agrave;nh phố</strong></h2>\r\n<p>C&ugrave;ng ch&uacute;ng t&ocirc;i tham khảo c&aacute;c kinh nghiệm l&aacute;i xe tải trong th&agrave;nh phố dưới đ&acirc;y nh&eacute;.</p>\r\n<h3><strong>Kỹ năng quay đầu, cua xe trong th&agrave;nh phố:</strong></h3>\r\n<p>Khi bạn quay đầu hoặc cua xe ở c&aacute;c g&oacute;c phố, h&atilde;y lu&ocirc;n quan s&aacute;t gương chiếu hậu ở ph&iacute;a định rẽ, mở rộng một g&oacute;c cua tối thiểu bằng chiều ngang xe của m&igrave;nh, điều n&agrave;y sẽ c&oacute; t&aacute;c dụng:</p>\r\n<p>R&uacute;t ngắn v&ograve;ng cua</p>\r\n<p>Để ph&ograve;ng ngừa trường hợp l&uacute;c xe đang cua th&igrave; c&oacute; xe m&aacute;y chen l&ecirc;n từ g&oacute;c cua đ&oacute;. Nếu g&oacute;c cua qu&aacute; hẹp th&igrave; c&oacute; thể g&acirc;y kh&oacute; khăn cho việc quay xe hoặc va chạm với c&aacute;c phương tiện kh&aacute;c.</p>\r\n<figure id=\"attachment_274293\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-274293\"><img class=\"size-full wp-image-274293\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2023/06/lai-xe-tai-trong-tp.jpg\" sizes=\"(max-width: 811px) 100vw, 811px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2023/06/lai-xe-tai-trong-tp.jpg 811w, https://vanchuyenachau.com.vn/wp-content/uploads/2023/06/lai-xe-tai-trong-tp-300x225.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2023/06/lai-xe-tai-trong-tp-768x576.jpg 768w\" alt=\"Kinh nghiệm l&aacute;i xe trong th&agrave;nh phố\" width=\"811\" height=\"608\">\r\n<figcaption id=\"caption-attachment-274293\" class=\"wp-caption-text\">Kinh nghiệm l&aacute;i xe trong th&agrave;nh phố</figcaption>\r\n</figure>\r\n<p><strong>Chạy nước r&uacute;t khi đ&egrave;n xanh c&ograve;n 4-5 gi&acirc;y:</strong></p>\r\n<p>Khi đến c&aacute;c ng&atilde; tư đ&egrave;n đỏ, t&agrave;i xế phải thực sự b&igrave;nh tĩnh. Nếu chỉ c&ograve;n 4-5 giấy nữa l&agrave; hết đ&egrave;n xanh nhưng bạn đang c&aacute;ch vạch qua đường 20-30m th&igrave; đừng cố &ldquo;nước r&uacute;t&rdquo; như đang đi xe m&aacute;y. T&agrave;i xế phải dừng lại trước vạch liền để chở đ&egrave;n đỏ, nếu bạn v&agrave;o vạch liền d&ugrave; chỉ ở đ&egrave;n v&agrave;ng th&igrave; bạn cũng sẽ bị phạt.</p>\r\n<p>Vượt v&agrave; nhường đường thế n&agrave;o cho hợp l&yacute;?</p>\r\n<p>Điều khiển xe trong th&agrave;nh phố đ&ograve;i hỏi t&agrave;i xế phải tập trung, giữ tốc độ ổn định, đi đ&uacute;ng l&agrave;n đường v&agrave; đừng sốt ruột khi c&aacute;c xe kh&aacute;c b&oacute;p c&ograve;i xin vượt. Nếu bạn l&agrave; t&agrave;i mới, cố &ldquo;&eacute;p đường&rdquo; để nhường cho xe kh&aacute;c vượt rất kh&oacute; để trở lại l&agrave;n cũ. Trong trường hợp họ muốn vượt, h&atilde;y để xe họ lấn đường để tiến l&ecirc;n.</p>\r\n<p>Ngược lại, nếu bạn muốn vượt cũng phải kiểm tra kỹ c&aacute;c điều kiện thuận lợi mới vượt. Trước khi vượt cần quan s&aacute;t k&iacute;nh chiếu hậu, đ&aacute;nh đ&egrave;n xi-nhan cẩn thận.</p>\r\n<h3><strong>Giữ khoảng c&aacute;ch an to&agrave;n</strong></h3>\r\n<p>Đường phố trong nội đ&ocirc; lu&ocirc;n đ&ocirc;ng v&agrave; kh&aacute; chật chội, do đ&oacute; việc giữ khoảng c&aacute;ch giữa c&aacute;c xe thường kh&ocirc;ng được như y&ecirc;u cầu. Tuy nhi&ecirc;n, t&agrave;i xế xe tải cũng phải giữa cho m&igrave;nh một khoảng c&aacute;ch vừa đủ để kh&ocirc;ng đụng xe trước nhưng cũng kh&ocirc;ng để xe m&aacute;y vượt qua. T&igrave;nh trạng xe m&aacute;y luồn qua c&aacute;c khe l&aacute;ch khoảng c&aacute;ch 2 xe tải l&agrave; rất phổ biến, g&acirc;y ra tắc đường v&agrave; bạn phải &ldquo;chết đứng&rdquo; 1 chỗ. Trong trường hợp n&agrave;y, t&agrave;i xế lưu &yacute; nhớ giữ ch&acirc;n c&ocirc;n, kh&ocirc;ng tăng ga, sang số 2 hoặc số 1.</p>\r\n<h3><strong>T&acirc;m l&yacute; ổn định, tập trung:</strong></h3>\r\n<p>Anh em t&agrave;i xế lưu &yacute; việc mở nhạc, radio khi l&aacute;i xe trong th&agrave;nh phố n&ecirc;n ở mức &acirc;m lượng vừa phải, đủ để nghe được c&ograve;i xe, &acirc;m thanh từ b&ecirc;n ngo&agrave;i. Hạn chế sử dụng điện thoại v&agrave; n&ecirc;n chuyển qua chế độ bluetooth, r&atilde;nh tay để tập trung xử l&yacute; c&aacute;c t&igrave;nh huống.</p>\r\n<p>Tuy nhi&ecirc;n, c&aacute;c b&aacute;c t&agrave;i cũng kh&ocirc;ng n&ecirc;n qu&aacute; căng thẳng, tự tạo &aacute;p lực m&agrave; n&ecirc;n c&oacute; t&acirc;m l&yacute; thoải m&aacute;i, b&igrave;nh tĩnh th&igrave; mới c&oacute; thể xử l&yacute; t&igrave;nh huống tốt được.</p>\r\n<p>Nguồn: tranauto.com.vn/</p>', 'posts\\June2023\\TquTMrECV6G6cLwNo6h0.jpg', 'kinh-nghiem-lai-xe-tai-cho-hang-trong-thanh-pho', 'Với tình hình giao thông đông đúc, việc chở hàng trong thành phố là bài toán không hề dễ dàng với các bác tài.', 'Với tình hình giao thông đông đúc, việc chở hàng trong thành phố là bài toán không hề dễ dàng với các bác tài.', 'PUBLISHED', 0, '2023-06-20 00:07:29', '2023-06-20 00:07:29'),
(9, 1, 1, 'Tổng hợp các loại bảo hiểm ô tô và công ty bảo hiểm ô tô uy tín', NULL, 'Với những chủ phương tiện giao thông hiện nay, bảo hiểm xe ô tô không còn xa lạ gì. Mỗi năm họ đều phải mua bảo hiểm xe mới', '<p>Với những chủ phương tiện giao th&ocirc;ng hiện nay, bảo hiểm xe &ocirc; t&ocirc; kh&ocirc;ng c&ograve;n xa lạ g&igrave;. Mỗi năm họ đều phải mua bảo hiểm xe mới. Vậy c&oacute; những&nbsp;bảo hiểm xe &ocirc; t&ocirc;&nbsp;n&agrave;o đang phổ biến hiện nay? H&atilde;y c&ugrave;ng&nbsp;ch&uacute;ng t&ocirc;i&nbsp;t&igrave;m hiểu cụ thể v&agrave; chi tiết hơn th&ocirc;ng qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p>Bảo hiểm &ocirc; t&ocirc;&nbsp;l&agrave; h&igrave;nh thức bảo hiểm bồi thường cho thiệt hại t&agrave;i ch&iacute;nh của bạn ph&aacute;t sinh từ tai nạn li&ecirc;n quan đến xe &ocirc; t&ocirc; của bạn. Đ&oacute; l&agrave; 1 hợp đồng giao kết giữa bạn v&agrave; c&ocirc;ng ty bảo hiểm, theo đ&oacute; khi bạn đ&oacute;ng ph&iacute; bảo hiểm v&agrave; c&ocirc;ng ty bảo hiểm cam kết sẽ bồi thường cho những thiệt hại theo quy định trong hợp đồng bảo hiểm.</p>\r\n<h2><strong>Lợi &iacute;ch khi&nbsp;mua bảo hiểm &ocirc; t&ocirc;</strong></h2>\r\n<p>Được sửa chữa v&agrave; thay thế c&aacute;c phụ t&ugrave;ng của ch&iacute;nh h&atilde;ng khi c&oacute; va chạm dẫn đến hư hỏng.</p>\r\n<p>To&agrave;n bộ chi ph&iacute; sửa chữa hoặc thay mới phụ kiện đều được miễn ph&iacute; hoặc hỗ trợ một phần n&agrave;o đ&oacute;. Đ&acirc;y sẽ l&agrave; một lợi &iacute;ch rất lớn khi c&oacute; sự cố xảy ra với xe v&igrave; gi&aacute; tiền mua bảo hiểm sẽ thấp hơn rất nhiều việc thay thế c&aacute;c phụ t&ugrave;ng ch&iacute;nh h&atilde;ng mới</p>\r\n<p>Được hỗ trợ 24/7 khi gặp tai nạn. C&aacute;c c&ocirc;ng ty bảo hiểm sẽ l&agrave; nơi đ&aacute;ng tin cậy để bạn c&oacute; thể nhờ gọi cấp cứu bất cứ l&uacute;c n&agrave;o v&agrave; bất kỳ đ&acirc;u tr&ecirc;n đường</p>\r\n<p>Bảo hiểm cả những vật bị đ&aacute;nh cắp l&agrave; của xe</p>\r\n<p>Cứu hộ giao th&ocirc;ng ho&agrave;n to&agrave;n miễn ph&iacute;</p>\r\n<p>Ở thời điểm hiện tại, c&aacute;c chủ xe c&oacute; quyền tự do lựa chọn rất nhiều dịch vụ bảo hiểm kh&aacute;c nhau. Ch&iacute;nh v&igrave; sự cạnh tranh gay gắt n&agrave;y đ&atilde; gi&uacute;p cho người d&ugrave;ng c&oacute; nhiều quyền lợi hơn về gi&aacute; cả v&agrave; c&aacute;c điều khoản c&oacute; trong hợp đồng bảo hiểm.</p>\r\n<h2><strong>Đ&ocirc;i n&eacute;t về bảo hiểm xe &ocirc; t&ocirc;</strong></h2>\r\n<p>Bảo hiểm &ocirc; t&ocirc; bắt buộc l&agrave; loại bảo hiểm d&agrave;nh cho c&aacute;c chủ xe &ocirc; t&ocirc; khi tham gia điều khiển c&aacute;c phương tiện giao th&ocirc;ng theo quy định của ph&aacute;p luật. Đ&acirc;y l&agrave; loại bảo hiểm sẽ gi&uacute;p bảo vệ v&agrave; giảm thiểu thiệt hại cho b&ecirc;n thứ ba v&agrave; cho ch&iacute;nh chủ xe. N&oacute; đồng nghĩa với nếu người chủ sở hữu xe &ocirc; t&ocirc; g&acirc;y ra tai nạn cho người kh&aacute;c th&igrave; c&ocirc;ng ty bảo hiểm sẽ c&oacute; tr&aacute;ch nhiệm bồi thường thiệt hại cho những người bị tai nạn.</p>\r\n<p>Theo quy định th&igrave; đối với những chủ xe cơ giới khi tham gia giao th&ocirc;ng, ngo&agrave;i c&aacute;c giấy tờ xe bắt buộc như giấy ph&eacute;p l&aacute;i xe, đăng k&yacute; xe, giấy chứng nhận kiểm định an to&agrave;n kỹ thuật v&agrave; bảo vệ m&ocirc;i trường th&igrave; cần phải c&oacute; th&ecirc;m giấy chứng nhận bảo hiểm tr&aacute;ch nhiệm d&acirc;n sự của chủ xe cơ giới.</p>\r\n<p>Trong qu&aacute; tr&igrave;nh tham gia điều khiển c&aacute;c phương tiện giao th&ocirc;ng, nếu người điều khiển kh&ocirc;ng c&oacute; bảo hiểm bắt buộc &ocirc; t&ocirc; hoặc bảo hiểm &ocirc; t&ocirc; đ&atilde; hết hạn th&igrave; bạn sẽ bị phạt tiền từ 400.000 &ndash; 600.000 đồng. Do đ&oacute;, c&aacute;c chủ xe n&ecirc;n ch&uacute; &yacute; v&agrave; mua bảo hiểm đ&uacute;ng thời hạn nh&eacute;.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid vc_row-o-content-middle vc_row-flex\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-257889-3128684037]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to.jpg 960w, https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to-300x224.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to-768x574.jpg 768w, https://vanchuyenachau.com.vn/wp-content/uploads/2023/02/cac-loai-bao-hiem-xe-o-to-120x90.jpg 120w\" alt=\"C&aacute;c loại bảo hiểm xe &ocirc; t&ocirc;\" width=\"640\" height=\"479\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<h2><strong>Một số loại bảo hiểm xe &ocirc; t&ocirc; phổ biến hiện nay</strong></h2>\r\n<p>Hiện nay xe container, xe đầu k&eacute;o khi tham gia giao th&ocirc;ng, bắt buộc phải c&oacute; giấy chứng nhận bảo hiểm tr&aacute;ch nhiệm d&acirc;n sự của chủ xe. Sau đ&acirc;y l&agrave; những loại bảo hiểm xe đang phổ biến hiện nay:</p>\r\n<h3><strong>Bảo hiểm bắt buộc</strong></h3>\r\n<p>Th&ocirc;ng tư số 22/2016/TT-BTC của Bộ T&agrave;i ch&iacute;nh th&igrave; những chủ xe sử dụng xe cơ giới tại Việt Nam đều phải bắt buộc mua bảo hiểm tr&aacute;ch nhiệm d&acirc;n sự đối với chiếc xe m&igrave;nh đang sở hữu .</p>\r\n<p>Theo quy định n&agrave;y, nếu xe cơ giới g&acirc;y ra tai nạn th&igrave; chủ xe phải bồi thường gồm:</p>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>Thiệt hại về th&acirc;n thể, t&iacute;nh mạng v&agrave; t&agrave;i sản đối với b&ecirc;n thứ ba nhưng kh&ocirc;ng quy định trong hợp đồng.</li>\r\n<li>Theo hợp đồng vận chuyển h&agrave;nh kh&aacute;ch, chủ xe sẽ phải bồi thường khi g&acirc;y thiệt hại về th&acirc;n thể v&agrave; t&iacute;nh mạng của h&agrave;nh kh&aacute;ch trong qu&aacute; tr&igrave;nh di chuyển.</li>\r\n<li>Mức tr&aacute;ch nhiệm sẽ được t&iacute;nh 100 triệu đồng/ người/ vụ.</li>\r\n<li>Nếu chủ xe, l&aacute;i xe hoặc của người bị thiệt hại c&oacute; h&agrave;nh động cố &yacute; g&acirc;y thiệt hại.</li>\r\n<li>Khi tham gia điều khiển giao th&ocirc;ng, l&aacute;i xe kh&ocirc;ng c&oacute; Giấy ph&eacute;p l&aacute;i xe hoặc Giấy ph&eacute;p l&aacute;i xe kh&ocirc;ng ph&ugrave; hợp đối với loại xe cơ giới m&igrave;nh điều khiển.</li>\r\n<li>Một số h&agrave;nh động g&acirc;y ra hậu quả thiệt hại gi&aacute;n tiếp như l&agrave;m giảm gi&aacute; trị thương mại của t&agrave;i sản, t&agrave;i sản bị thiệt hại,&hellip;</li>\r\n<li>Thiệt hại đối với t&agrave;i sản bị mất hoặc bị cướp trong qu&aacute; tr&igrave;nh xảy ra tai nạn.</li>\r\n<li>L&aacute;i xe g&acirc;y tai nạn cố &yacute; bỏ chạy kh&ocirc;ng thực hiện tr&aacute;ch nhiệm d&acirc;n sự của chủ xe cũng như l&aacute;i xe cơ giới.</li>\r\n<li>Thời điểm bảo hiểm &ocirc; t&ocirc; bắt buộc bắt đầu c&oacute; hiệu lực theo ng&agrave;y, th&aacute;ng được ghi cụ thể tr&ecirc;n giấy chứng nhận bảo hiểm xe. Th&ocirc;ng thường thời hạn của loại bảo hiểm n&agrave;y sẽ k&eacute;o d&agrave;i 1 năm, cũng c&oacute; 1 số trường hợp chỉ k&eacute;o d&agrave;i dưới 1 năm.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h3><strong>Bảo hiểm tự nguyện</strong></h3>\r\n<p>Đ&acirc;y l&agrave; loại bảo hiểm kh&ocirc;ng nằm trong phạm vi bảo hiểm xe bắt buộc. Theo quy định, bảo hiểm tr&aacute;ch nhiệm d&acirc;n sự bắt buộc chưa bao gồm bảo hiểm tai nạn của l&aacute;i xe cũng như phụ xe v&agrave; người ngồi tr&ecirc;n xe. Do đ&oacute;, để bảo đảm quyền lợi của người ngồi tr&ecirc;n xe, c&aacute;c chủ phương tiện giao th&ocirc;ng n&ecirc;n mua bảo hiểm tự nguyện cho người l&aacute;i xe hoặc người phụ xe khi tham gia giao th&ocirc;ng.</p>\r\n<p>Hiện nay bảo hiểm tự nguyện c&oacute; nhiều mức gi&aacute; kh&aacute;c nhau. Cụ thể:</p>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>Bảo hiểm c&oacute; mức ph&iacute; 10.000đ/người. Nhưng khi xảy ra tai nạn giao th&ocirc;ng sẽ được đền b&ugrave; mức bảo hiểm l&agrave; 10trđ/người/vụ.</li>\r\n<li>Tương tự, những bảo hiểm c&oacute; mức ph&iacute; 20.000đ/người sẽ được đền b&ugrave; thiệt hại l&agrave; 20trđ/người/vụ.</li>\r\n<li>Mức ph&iacute; 75.000đ/người th&igrave; mức bảo hiểm sẽ được nhận l&agrave; 50trđ /người/vụ.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h3><strong>Bảo hiểm vật chất xe</strong></h3>\r\n<p>Khi tham gia giao th&ocirc;ng, để đảm bảo an to&agrave;n cho phương tiện của m&igrave;nh, chủ xe n&ecirc;n mua bảo hiểm vật chất xe. Bảo hiểm n&agrave;y c&oacute; t&aacute;c dụng bảo hiểm cho t&agrave;i sản chất tr&ecirc;n xe trong c&aacute;c trường hợp như thi&ecirc;n tai, hỏa hoạn, tai nạn,&hellip; Cụ thể như sau:</p>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>Nếu xe bị đ&acirc;m, bị đụng m&oacute;p m&eacute;o, hư hỏng do lỗi của chủ xe hoặc xe bị đ&aacute; văng bể đ&egrave;n bể k&iacute;nh,&hellip; sẽ được sửa chữa, thay thế phụ t&ugrave;ng bị thiệt hại.</li>\r\n<li>Xe bị hỏa hoạn ch&aacute;y nổ, ch&igrave;m rơi to&agrave;n bộ&nbsp; th&igrave; sẽ được bồi thường to&agrave;n bộ bằng gi&aacute; trị bảo hiểm theo thỏa thuận trong hợp đồng bảo hiểm xe,&hellip;</li>\r\n<li>Tuy nhi&ecirc;n, ph&iacute; bảo hiểm Vật chất xe khi mua sẽ được t&iacute;nh theo gi&aacute; trị của xe, năm sản xuất của xe, mục đ&iacute;ch sử dụng xe, &hellip;</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>', 'posts\\June2023\\MY2u7xEMdee6k1s6fC00.jpg', 'tong-hop-cac-loai-bao-hiem-o-to-va-cong-ty-bao-hiem-o-to-uy-tin', 'Với những chủ phương tiện giao thông hiện nay, bảo hiểm xe ô tô không còn xa lạ gì. Mỗi năm họ đều phải mua bảo hiểm xe mới', 'Với những chủ phương tiện giao thông hiện nay, bảo hiểm xe ô tô không còn xa lạ gì. Mỗi năm họ đều phải mua bảo hiểm xe mới', 'PUBLISHED', 1, '2023-06-20 00:09:16', '2023-06-20 00:09:16'),
(10, 1, 1, 'Tổng hợp 8 thương hiệu xe tải được ưa chuộng tại Việt Nam', NULL, 'So sánh xe tải là sự phân tích các đặc điểm của từng dòng xe nhằm đối chiếu với một sản phẩm cùng phân khúc để biết được sự khác nhau và giống nhau của: thông số kỹ thuật, nội thất, ngoại thất, trang bị tiện nghi…', '<p>So s&aacute;nh xe tải l&agrave; sự ph&acirc;n t&iacute;ch c&aacute;c đặc điểm của từng d&ograve;ng xe nhằm đối chiếu với một sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c để biết được sự kh&aacute;c nhau v&agrave; giống nhau của:&nbsp;th&ocirc;ng số kỹ thuật, nội thất, ngoại thất, trang bị tiện nghi&hellip;&nbsp;gi&uacute;p h&igrave;nh dung được nhu cầu vận chuyển thực sự của mỗi doanh nghiệp vận tải n&oacute;i chung v&agrave; cho từng c&aacute; nhận sử dụng xe tải n&oacute;i ri&ecirc;ng</p>\r\n<p>Với nhu cầu vận tải đường bộ ng&agrave;y c&agrave;ng tăng như hiện nay, c&aacute;c thương hiệu chuy&ecirc;n sản xuất xe tải, xe b&aacute;n tải đ&atilde; v&agrave; đang cho ra mắt những sản phẩm xe tải chất lượng ng&agrave;y c&agrave;ng cao. Tuy nhi&ecirc;n, v&igrave; c&oacute; rất nhiều thương hiệu kh&aacute;c nhau n&ecirc;n việc cạnh tranh l&agrave; kh&ocirc;ng thể tr&aacute;nh khỏi. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng t&ocirc;i xin ph&eacute;p được giới thiệu tới qu&yacute; kh&aacute;ch h&agrave;ng top 8 h&atilde;ng xe tải thịnh h&agrave;nh nhất Việt Nam hiện nay!</p>\r\n<h2><strong>H&atilde;ng xe tải ISUZU</strong></h2>\r\n<p>Isuzu&nbsp;được biết đến l&agrave; một trong những thương hiệu xe tải nổi tiếng nhất tại Nhật Bản hiện nay. Thương hiệu xe n&agrave;y được ra đời từ năm 1973, cho đến hiện nay đ&atilde; sở hữu rất nhiều ph&acirc;n kh&uacute;c xe tải kh&aacute;c nhau, đa dạng về mẫu m&atilde; v&agrave; chất lượng. Hiện nay,&nbsp;Isuzu&nbsp;đ&atilde; c&oacute; mặt tr&ecirc;n tại 100 quốc gia tr&ecirc;n thế giới, trong đ&oacute; c&oacute; Việt Nam.<br>Ở Việt Nam,&nbsp;Isuzu&nbsp;được rất nhiều t&agrave;i xế cũng như c&aacute;c c&ocirc;ng ty cung cấp dịch vụ vận chuyển tin tưởng sử dụng bởi chất lượng vận h&agrave;nh của xe bền bỉ v&agrave; c&oacute; nhiều ph&acirc;n kh&uacute;c kh&aacute;c nhau.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-isuzu.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-270830666]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-isuzu.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-isuzu.jpg 800w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-isuzu-300x225.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-isuzu-768x576.jpg 768w\" alt=\"Xe tải Isuzu\" width=\"640\" height=\"480\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Về động cơ, c&aacute;c d&ograve;ng&nbsp;Isuzu&nbsp;thường được trang bị động cơ mạnh mẽ, c&oacute; thể di chuyển bền bỉ tr&ecirc;n nhiều cung đường kh&aacute;c nhau m&agrave; kh&ocirc;ng lo hỏng h&oacute;c hay &ldquo;chết m&aacute;y&rdquo; giữa chừng. Đ&acirc;y ch&iacute;nh l&agrave; một trong những ưu điểm m&agrave;&nbsp;Isuzu&nbsp;được c&aacute;c t&agrave;i xế y&ecirc;u th&iacute;ch sử dụng mặc d&ugrave; c&oacute; nhiều những d&ograve;ng xe kh&aacute;c mới ra đời, được trang bị hệ thống nội thất hiện đại hơn.</p>\r\n<p>Về ph&acirc;n kh&uacute;c xe,&nbsp;Isuzu&nbsp;hiện đang sở hữu nhiều ph&acirc;n kh&uacute;c trọng tải kh&aacute;c nhanh, trung b&igrave;nh từ 7 đến 24 tấn l&agrave; chủ yếu. Ngo&agrave;i ra, ph&acirc;n kh&uacute;c xe đầu k&eacute;o c&ograve;n c&oacute; tải trọng l&ecirc;n tới 60 tấn, đảm bảo đ&aacute;p ứng được bất cứ nhu cầu vận chuyển n&agrave;o của kh&aacute;ch h&agrave;ng. Đa phần, c&aacute;c d&ograve;ng xe của&nbsp;Isuzu&nbsp;đều c&oacute; thể được linh động sử dụng loại th&ugrave;ng kh&aacute;c nhau từ th&ugrave;ng bạt, th&ugrave;ng k&iacute;n, th&ugrave;ng lửng&hellip; ph&ugrave; hợp với từng nhu cầu sử dụng của kh&aacute;ch h&agrave;ng.</p>\r\n<p>Về mẫu m&atilde;, mẫu m&atilde; b&ecirc;n ngo&agrave;i của&nbsp;Isuzu&nbsp;kh&ocirc;ng được đa dạng như một số d&ograve;ng xe kh&aacute;c,&nbsp;Isuzu&nbsp;thường tu&acirc;n thủ quy tắc tối giản của người Nhật.&nbsp;Xe tải Isuzu&nbsp;thường chỉ thi&ecirc;n về những t&ocirc;ng m&agrave;u đặc trưng như trắng, x&aacute;m,&hellip; với&nbsp;logo Isuzu&nbsp;được gắn ở phần đầu xe tạo n&ecirc;n cảm gi&aacute;c đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng. Với những kh&aacute;ch h&agrave;ng th&iacute;ch xe của m&igrave;nh c&oacute; kiểu d&aacute;ng b&ecirc;n ngo&agrave;i đặc biệt, ph&aacute; c&aacute;ch th&igrave;&nbsp;Isuzu&nbsp;c&oacute; thể kh&ocirc;ng thật sự ph&ugrave; hợp.</p>\r\n<h2><strong>H&atilde;ng xe tải HINO</strong></h2>\r\n<p>Hino&nbsp;vẫn l&agrave; một trong những d&ograve;ng xe vận tải thịnh h&agrave;nh nhất tại Việt Nam c&oacute; nguồn gốc từ Nhật Bản.&nbsp;Xe Hino&nbsp;được ra mắt lần đầu ti&ecirc;n v&agrave;o năm 1910, cho đến nay đ&atilde; ph&aacute;t triển mạnh mẽ v&agrave; c&oacute; được vị thế cao tại thị trường vận tải Việt Nam.<br>Tuy kh&ocirc;ng sản xuất hoặc cho ra đời h&agrave;ng loạt những d&ograve;ng xe mới nhưng Hino vẫn giữ được vị thế rất cao đối với c&aacute;c kh&aacute;ch h&agrave;ng vận tải của Việt Nam bởi chất lượng v&agrave; uy t&iacute;n đ&atilde; l&agrave;m n&ecirc;n vị thế của thương hiệu xe n&agrave;y.thường tập trung v&agrave;o nghi&ecirc;n cứu v&agrave; sản xuất c&aacute;c ph&acirc;n kh&uacute;c xe tải hạng nhẹ từ 1 tấn, 2 tấn, 3,5 tấn&hellip; cho đến những d&ograve;ng xe c&oacute; tải trọng lớn hơn.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hino.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-478049597]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hino.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hino.jpg 800w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hino-300x203.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hino-768x518.jpg 768w\" alt=\"Xe tải Hino\" width=\"640\" height=\"432\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Sở dĩ,&nbsp;h&atilde;ng xe Hino&nbsp;được ưa chuộng tại Việt Nam bởi động cơ vận h&agrave;nh bền bỉ. Theo c&aacute;c nhận x&eacute;t từ t&agrave;i xế,&nbsp;xe Hino&nbsp;rất &iacute;t khi bị hư hỏng vặt trong qu&aacute; tr&igrave;nh di chuyển. Động cơ vận h&agrave;nh mạnh mẽ, xe c&oacute; tải trọng v&agrave; k&iacute;ch thước nhỏ n&ecirc;n dễ d&agrave;ng di chuyển tr&ecirc;n nhiều cung đường kh&aacute;c nhau, kể cả c&aacute;c ng&otilde; nhỏ hẹp. Đ&acirc;y cũng ch&iacute;nh l&agrave; một trong những ưu điểm của h&atilde;ng xe n&agrave;y.</p>\r\n<p>Đồng thời hệ thống nội thất của xe cũng được trang bị rất đầy đủ từ hệ thống điều h&ograve;a, radio, đ&agrave;i FM, loa&hellip; đảm bảo đ&aacute;p ứng được nhu cầu sử dụng v&agrave; thư gi&atilde;n của t&agrave;i xế trong qu&aacute; tr&igrave;nh di chuyển.</p>\r\n<p>Nhược điểm duy nhất của h&atilde;ng xe Hino l&agrave; chỉ thi&ecirc;n về c&aacute;c d&ograve;ng xe c&oacute; tải trọng thấp. V&igrave; vậy, qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng n&ecirc;n sử dụng để vận chuyển qu&aacute; tải trọng, thao t&aacute;c n&agrave;y sẽ g&acirc;y ảnh hưởng rất lớn tới chất lượng vận h&agrave;nh v&agrave; độ bền của xe về l&acirc;u d&agrave;i.</p>\r\n<h2><strong>H&atilde;ng xe tải&nbsp;HYUNDAI</strong></h2>\r\n<p>Nhắc đến&nbsp;Hyundai, chắc hẳn bất cứ ai trong ch&uacute;ng ta đ&atilde; kh&ocirc;ng c&ograve;n qu&aacute; lạ lẫm bởi mức độ xuất hiện của d&ograve;ng xe n&agrave;y tr&ecirc;n c&aacute;c cung đường tại Việt Nam l&agrave; rất cao.&nbsp;Xe Hyundai&nbsp;l&agrave; một trong những h&atilde;ng xe nổi tiếng c&oacute; xuất sứ tại H&agrave;n Quốc. H&atilde;ng xe n&agrave;y được th&agrave;nh lập từ năm 1967, hiện nay l&agrave; một trong 3 h&atilde;ng xe nổi tiếng nhất thế giới.</p>\r\n<p>Hyundai&nbsp;nổi tiếng với nhiều ph&acirc;n kh&uacute;c xe kh&aacute;c nhau, trong đ&oacute; xe tải cũng l&agrave; một trong những d&ograve;ng xe được h&atilde;ng đầu tư v&agrave; cho ra mắt nhiều sản phẩm với kiểu d&aacute;ng, động cơ v&agrave; tải trọng kh&aacute;c nhau. Hiện nay, tr&ecirc;n thị trường c&oacute; rất nhiều d&ograve;ng&nbsp;xe tải Hyundai&nbsp;kh&aacute;c nhau với trọng tải từ thấp đến cao, đ&aacute;p ứng được nhu cầu sử dụng của từng kh&aacute;ch h&agrave;ng.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hyundai.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-2719897249]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hyundai.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hyundai.jpg 800w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hyundai-300x200.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-hyundai-768x512.jpg 768w\" alt=\"Xe tải Huyndai\" width=\"640\" height=\"426\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Với vị thế l&agrave; một trong những &ocirc;ng lớn của ng&agrave;nh vận tải,&nbsp;Hyundai&nbsp;được ưa chuộng tại Việt Nam nhờ nắm giữ những đặc điểm nổi bật như:</p>\r\n<p>Vận h&agrave;nh &ecirc;m &aacute;i, động cơ khỏe mạnh v&agrave; hoạt động bền bỉ trong thời gian d&agrave;i</p>\r\n<ul>\r\n<li>Đa dạng về kiểu d&aacute;ng, mẫu m&atilde; v&agrave; ph&acirc;n kh&uacute;c xe. Đảm bảo đ&aacute;p ứng được những nhu cầu kh&aacute;c nhau của kh&aacute;ch h&agrave;ng.</li>\r\n<li>Sở hữu nhiều tiện nghi nội thất vượt trội, hơn hẳn một số d&ograve;ng xe tải c&oacute; ph&acirc;n kh&uacute;c tương tự.</li>\r\n<li>Mức gi&aacute; phải chăng, ph&ugrave; hợp với khả năng ti&ecirc;u d&ugrave;ng của đại đa số người sử dụng.</li>\r\n</ul>\r\n<h2><strong>H&atilde;ng xe tải MITSUBISHI FUSO</strong></h2>\r\n<p>L&agrave; một trong những d&ograve;ng xe đến từ Đức,&nbsp;xe tải Mitsubishi FUSO&nbsp;hiện nay đ&atilde; c&oacute; mặt phổ biến tr&ecirc;n thị trường xe tải Việt Nam v&agrave; đạt được những th&agrave;nh tựu nhất định. D&ugrave; mới chỉ sở hữu 4 d&ograve;ng xe tải với ph&acirc;n kh&uacute;c kh&aacute;c nhau nhưng&nbsp;Mitsubishi&nbsp;FUSO kh&ocirc;ng hề tỏ ra k&eacute;m cạnh so với c&aacute;c d&ograve;ng xe tải tr&ecirc;n thị trường nhờ sở hữu hệ thống khung gầm, hộp số, động cơ khỏe mạnh, bền bỉ.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso-1024x542.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-3172057668]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso-1024x542.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso-1024x542.jpg 1024w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso-300x159.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso-768x406.jpg 768w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-mitsubishi-fuso.jpg 1170w\" alt=\"Xe tải Mitsubishi Fuso\" width=\"640\" height=\"339\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Cụ thể, hiện&nbsp;Mitsubishi FUSO&nbsp;đang sở hữu 4 d&ograve;ng xe bao gồm:</p>\r\n<ul>\r\n<li>Xe tải Mitsubishi Fuso&nbsp;Canter 4.99 trọng tải 1.9 tấn</li>\r\n<li>Xe tải Mitsubishi Fuso&nbsp;Canter 6.5 trọng tải 3.5 tấn</li>\r\n<li>Xe Mitsubishi Fuso&nbsp;Canter 10.4 trọng tải tải 5 tấn</li>\r\n<li>Xe tải Mitsubishi Fuso&nbsp;Canter 12.8 trọng tải 7 tấn</li>\r\n</ul>\r\n<h2><strong>H&atilde;ng xe tải&nbsp;DAEWOO</strong></h2>\r\n<p>L&agrave; một trong những d&ograve;ng xe c&oacute; xuất xứ từ H&agrave;n Quốc,&nbsp;xe tải Daewoo&nbsp;l&agrave; thương hiệu xe tải hạng nặng mới xuất hiện tr&ecirc;n thị trường v&agrave;o đầu thế kỉ 21. Xe được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại, kết hợp với việc tiếp thu c&ocirc;ng nghệ vận h&agrave;nh xe ti&ecirc;n tiến.&nbsp;Daewoo&nbsp;hứa hẹn l&agrave; một trong những h&atilde;ng xe thu h&uacute;t thị trường hiện nay v&agrave; trong tương lai.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-daewoo.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-1315816453]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-daewoo.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-daewoo.jpg 800w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-daewoo-300x225.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-daewoo-768x576.jpg 768w\" alt=\"Xe tải Deawoo\" width=\"640\" height=\"480\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Thời điểm hiện tại, h&atilde;ng đ&atilde; v&agrave; đang ph&acirc;n phối nhiều ph&acirc;n kh&uacute;c xe c&oacute; tải trọng kh&aacute;c nhau, ph&ugrave; hợp với nhu cầu sử dụng của kh&aacute;ch h&agrave;ng. Hiện nay, xe đ&atilde; v&agrave; đang xuất hiện ng&agrave;y c&agrave;ng phổ biến hơn tại thị trường Việt Nam hứa hẹn trong tương lai sẽ trở th&agrave;nh một trong những h&atilde;ng xe tải được y&ecirc;u th&iacute;ch nhất.</p>\r\n<p>C&aacute;c ph&acirc;n kh&uacute;c&nbsp;xe tải của Daewoo&nbsp;được thiết kế với kiểu d&aacute;ng b&ecirc;n ngo&agrave;i v&aacute;t g&oacute;c với hệ thống k&iacute;nh chắn gi&oacute; chắc chắn, đảm bảo độ an to&agrave;n cho t&agrave;i xế trong qu&aacute; tr&igrave;nh di chuyển. Đồng thời, động cơ xe được trang bị c&ocirc; c&ugrave;ng hiện đại, đảm bảo hoạt động bền bỉ trong thời gian d&agrave;i m&agrave; kh&ocirc;ng lo gặp trục trặc trong qu&aacute; tr&igrave;nh di chuyển.</p>\r\n<h2><strong>H&atilde;ng xe tải&nbsp;THACO KIA</strong></h2>\r\n<p>THACO KIA&nbsp;l&agrave; một trong những h&atilde;ng xe nổi tiếng trực thuộc&nbsp;h&atilde;ng xe KIA&nbsp;của H&agrave;n Quốc, đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; c&ocirc;ng ty sản xuất xe &ocirc; t&ocirc; c&oacute; chất lượng cao thứ 2 tại H&agrave;n Quốc, chỉ sau Hyundai. Ri&ecirc;ng ph&acirc;n kh&uacute;c&nbsp;xe tải THACO KIA&nbsp;l&agrave; một trong những d&ograve;ng xe tải được lắp r&aacute;p trực tiếp tại Việt Nam, nhờ vậy mức gi&aacute; th&agrave;nh được đưa ra cho d&ograve;ng sản phẩm n&agrave;y kh&ocirc;ng qu&aacute; cao, đảm bảo ph&ugrave; hợp với kinh tế của đại đa số người Việt.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia-1024x525.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-16514021]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia-1024x525.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia-1024x525.jpg 1024w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia-300x154.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia-768x394.jpg 768w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-thaco-kia.jpg 1170w\" alt=\"Xe Thaco Kia\" width=\"640\" height=\"328\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Tuy mức gi&aacute; ở mức trung b&igrave;nh nhưng kh&ocirc;ng c&oacute; nghĩa&nbsp;xe tải THACO KIA&nbsp;c&oacute; chất lượng kh&ocirc;ng tốt. Về động cơ, xe được đ&aacute;nh gi&aacute; vận h&agrave;nh &ecirc;m &aacute;i, hoạt động bền bỉ trong thời gian d&agrave;i. Với thiết kế hệ thống tho&aacute;ng gi&oacute; gi&uacute;p động cơ xe được l&agrave;m m&aacute;t thường xuy&ecirc;n, kh&ocirc;ng bị n&oacute;ng m&aacute;y khi hoạt động l&acirc;u.</p>\r\n<p>Nội thất xe cũng được trang bị đầy đủ hệ thống tiện &iacute;ch từ điều h&ograve;a, đồng hồ số, m&aacute;y nghe nhạc, đ&agrave;i FM&hellip; đảm bảo gi&uacute;p qu&aacute; tr&igrave;nh di chuyển của t&agrave;i xế kh&ocirc;ng trở n&ecirc;n nh&agrave;m ch&aacute;n.</p>\r\n<h2><strong>H&atilde;ng xe tải&nbsp;JAC</strong></h2>\r\n<p>Đối với những t&iacute;n đồ thường xuy&ecirc;n t&igrave;m hiểu về c&aacute;c thương hiệu xe tr&ecirc;n thị trường, chắc hẳn c&aacute;i t&ecirc;n&nbsp;xe tải JAC&nbsp;đ&atilde; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ.&nbsp;JAC&nbsp;l&agrave; một thương hiệu xe tải được lắp r&aacute;p tại Việt Nam với nguồn linh kiện được nhập khẩu trực tiếp từ Trung Quốc.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-jac.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-3762091903]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-jac.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-jac.jpg 800w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-jac-300x203.jpg 300w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-jac-768x518.jpg 768w\" alt=\"Xe tải Jac\" width=\"640\" height=\"432\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>T&acirc;m l&yacute; người Việt thường kh&ocirc;ng tin tưởng v&agrave;o chất lượng sản phẩm c&oacute; xuất xứ từ Trung Quốc. Tuy nhi&ecirc;n, với một sản phẩm xe tải được lắp r&aacute;p tai Việt Nam với quy tr&igrave;nh kiểm so&aacute;t nghi&ecirc;m ngặt. Đồng thời, nguồn nguy&ecirc;n liệu lắp r&aacute;p được nhập khẩu th&ocirc;ng qua kiểm duyệt v&agrave; thử nghiệm mức độ an to&agrave;n rồi th&igrave; ch&uacute;ng ta ho&agrave;n to&agrave;n kh&ocirc;ng cần phải lo lắng về chất lượng của d&ograve;ng xe n&agrave;y.</p>\r\n<p>H&atilde;ng xe tải JAC&nbsp;sở hữu động cơ HFC4DA-1 n&ecirc;n vận h&agrave;nh tương đối mạnh mẽ v&agrave; bền bỉ. Với thiết kế tăng &aacute;p kết hợp hệ thống l&agrave;m m&aacute;t b&ecirc;n trong gi&uacute;p vừa tiết kiệm được nhi&ecirc;n liệu vừa tăng hiệu quả vận h&agrave;nh. Đảm bảo sẽ l&agrave;m h&agrave;i l&ograve;ng bất cứ t&agrave;i xế n&agrave;o điều khiển xe.</p>\r\n<h2><strong>H&atilde;ng xe tải&nbsp;TMT CỬU LONG</strong></h2>\r\n<p>L&agrave; một trong những h&atilde;ng xe tải chuy&ecirc;n lắp r&aacute;p v&agrave; ph&acirc;n phối c&aacute;c d&ograve;ng xe tải c&oacute; tải trọng đa dạng tại Việt Nam,&nbsp;xe tải TMT CỬU LONG&nbsp;hiện đ&atilde; v&agrave; đang c&oacute; mặt tr&ecirc;n thị trường Việt Nam với đa dạng c&aacute;c sản phẩm với ph&acirc;n kh&uacute;c kh&aacute;c nhau.</p>\r\n<div class=\"vc_row wpb_row vc_row-fluid\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n<figure class=\"wpb_wrapper vc_figure\"><a class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\" href=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-cuu-long-tmt.jpg\" target=\"_self\" data-rel=\"prettyPhoto[rel-230979-537451779]\"><img class=\"vc_single_image-img attachment-large\" src=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-cuu-long-tmt.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-cuu-long-tmt.jpg 656w, https://vanchuyenachau.com.vn/wp-content/uploads/2022/07/xe-tai-cuu-long-tmt-300x148.jpg 300w\" alt=\"Xe tải TMT Cửu Long\" width=\"640\" height=\"316\"></a></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><br>Xe tải của h&atilde;ng được lắp r&aacute;p tr&ecirc;n d&acirc;y chuyền sản xuất hiện đại, đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; an to&agrave;n l&ecirc;n tới 100%. V&igrave; vậy, khi sử dụng những d&ograve;ng xe đến từ thương hiệu&nbsp;TMT CỬU LONG, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về chất lượng vận h&agrave;nh của sản phẩm.</p>\r\n<p>&nbsp;</p>\r\n<p>Hiện nay,&nbsp;TMT CỬU LONG&nbsp;đang ph&acirc;n phối chủ yếu 4 d&ograve;ng xe lắp r&aacute;p gồm Kh&acirc;m ch&acirc;u, Zibo, Khải m&atilde; v&agrave; DFSK. Đồng thời, h&atilde;ng cũng ph&acirc;n phối hai d&ograve;ng xe nhập khẩu l&agrave; Sinotruk Trung Quốc v&agrave; TATA Ấn độ.</p>\r\n<p>Theo xeisuzuvn.com</p>', 'posts\\June2023\\gKRRKhvZ5XJFm67UX0ws.jpg', 'tong-hop-8-thuong-hieu-xe-tai-duoc-ua-chuong-tai-viet-nam', 'So sánh xe tải là sự phân tích các đặc điểm của từng dòng xe nhằm đối chiếu với một sản phẩm cùng phân khúc để biết được sự khác nhau và giống nhau của: thông số kỹ thuật, nội thất, ngoại thất, trang bị tiện nghi…', 'So sánh xe tải là sự phân tích các đặc điểm của từng dòng xe nhằm đối chiếu với một sản phẩm cùng phân khúc để biết được sự khác nhau và giống nhau của: thông số kỹ thuật, nội thất, ngoại thất, trang bị tiện nghi…', 'PUBLISHED', 0, '2023-06-20 00:10:47', '2023-06-20 00:10:47');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 'Quy trình san lắp mặt bằng', 'Quy trình san lắp mặt bằng', 'Trong công tác san đất, đầu tiên, đất thi công chủ yếu được lấy ngay bên trong phạm vi công trường. Lượng đất thừa hay thiếu phải liên hệ với bên ngoài phạm vi công trường, thường chỉ là nguồn bổ trợ hay chỉ chiếm khối lượng nhỏ, hoặc thậm chí không có (như khi san cân bằng đào đắp).', '<p>Trong c&ocirc;ng t&aacute;c san đất, đầu ti&ecirc;n, đất thi c&ocirc;ng chủ yếu được lấy ngay b&ecirc;n trong phạm vi c&ocirc;ng trường. Lượng đất thừa hay thiếu phải li&ecirc;n hệ với b&ecirc;n ngo&agrave;i phạm vi c&ocirc;ng trường, thường chỉ l&agrave; nguồn bổ trợ hay chỉ chiếm khối lượng nhỏ, hoặc thậm ch&iacute; kh&ocirc;ng c&oacute; (như khi san c&acirc;n bằng đ&agrave;o đắp).</p>\r\n<p>Thường c&oacute; hai dạng c&ocirc;ng t&aacute;c san đất:</p>\r\n<p>&ndash; San theo điều kiện khống chế trước cốt cao độ mặt bằng sau san, m&agrave; kh&ocirc;ng ch&uacute; &yacute; lắm đến khối lượng đất thừa hay thiếu,</p>\r\n<p>&ndash; San theo y&ecirc;u cầu về khối lượng đất khi san, bao gồm c&aacute;c trường hợp: san c&acirc;n bằng khối lượng đ&agrave;o với đắp, san với điều kiện chủ định chừa ra một khối lượng đất sau san (đ&agrave;o nhiều hơn đắp) hoặc cố &yacute; bổ xung th&ecirc;m một lượng đất trước san (đắp nhiều hơn đ&agrave;o).</p>\r\n<p><strong>Thiết kế thi c&ocirc;ng c&ocirc;ng t&aacute;c san lấp :</strong></p>\r\n<p>&ndash; Thiết kế mặt bằng (bước n&agrave;y nhằm x&aacute;c định khối lượng đất phải thi c&ocirc;ng, hướng v&agrave; cự ly vận chuyển đất trung b&igrave;nh từ v&ugrave;ng đ&agrave;o sang v&ugrave;ng đắp trong nội bộ c&ocirc;ng trường.)</p>\r\n<p>&ndash; Thiết kế biện ph&aacute;p thi c&ocirc;ng cụ thể cho c&ocirc;ng t&aacute;c san đất, sau khi đ&atilde; biết được khối lượng đất phải thi c&ocirc;ng v&agrave; cự ly vận chuyển ch&uacute;ng trong khi san.</p>\r\n<p><strong>a. Thiết kế mặt bằng :</strong></p>\r\n<p>&ndash; Bản đồ địa h&igrave;nh c&oacute; thể trực tiếp cho biết kh&aacute;i qu&aacute;t độ cao của mặt đất tự nhi&ecirc;n trong v&ugrave;ng địa h&igrave;nh, t&iacute;nh to&aacute;n khối lượng đất thi c&ocirc;ng ch&iacute;nh x&aacute;c đến mức c&oacute; thể chấp nhận được.</p>\r\n<p>&ndash; Trường hợp địa h&igrave;nh khu vực mặt bằng vu&ocirc;ng g&oacute;c qua tất cả c&aacute;c đường đồng mức thể hiện to&agrave;n bộ cao độ của tất cả c&aacute;c điểm mặt đất tự nhi&ecirc;n tr&ecirc;n khu vực mặt bằng được x&eacute;t. Đơn giản l&agrave; việc t&iacute;nh to&aacute;n khối t&iacute;ch của từng thỏi đất chạy d&agrave;i v&agrave; c&oacute; tiết diện gần như kh&ocirc;ng đổi. Đ&acirc;y được gọi l&agrave; phương ph&aacute;p x&aacute;c định khối lượng đất theo mặt cắt.</p>\r\n<p>&ndash; Trường hợp mặt bằng phức tạp hơn đ&oacute; l&agrave; trường hợp c&aacute;c đường đồng mức c&oacute; hơi uốn lượn nhưng vẫn tương đối song song. Phải chia v&ugrave;ng mặt bằng định quy hoạch th&agrave;nh lưới &ocirc; vu&ocirc;ng, khi đ&oacute; coi gần đ&uacute;ng mặt đất trong mỗi &ocirc; lưới. T&iacute;nh khối t&iacute;ch của từng &ocirc; đất được gọi l&agrave; phương ph&aacute;p x&aacute;c định khối lượng đất theo lưới &ocirc; vu&ocirc;ng.</p>\r\n<p><strong>b. X&aacute;c định mặt bằng thiết kế sau san lấp :</strong></p>\r\n<p>&ndash; Dạng san lấp theo điều kiện khống chế trước cốt cao độ mặt bằng sau san lấp :nh&agrave; thầu kh&ocirc;ng cần phải t&iacute;nh to&aacute;n cao độ n&agrave;y.</p>\r\n<p>&ndash; Dạng san lấp đất theo y&ecirc;u cầu về khối lượng đất :</p>\r\n<ul>\r\n<li>San theo điều kiện c&acirc;n bằng đ&agrave;o đắp (khối lượng đất ngo&agrave;i V0=0): Khối lượng đất đ&agrave;o phải c&acirc;n bằng với khối lượng đất đắp. Cũng c&oacute; nghĩa l&agrave; tổng khối lượng đất tr&ecirc;n v&ugrave;ng mặt bằng quy hoạch, t&iacute;nh từ mặt thủy chuẩn trở l&ecirc;n, được ph&acirc;n bố lại tr&ecirc;n c&ugrave;ng một diện t&iacute;ch h&igrave;nh chiếu bằng, với cao độ trung b&igrave;nh H0 so với mặt thủy chuẩn.</li>\r\n<li>Nếu d&ugrave;ng phương ph&aacute;p mặt cắt th&igrave; cao độ trung b&igrave;nh: H0=&Sigma;Si/B</li>\r\n<li>Với &Sigma;Si l&agrave; tổng diện t&iacute;ch tiết diện ph&iacute;a tr&ecirc;n mặt thủy chuẩn, của mọi thỏi đất chạy dọc theo đường đồng mức trong v&ugrave;ng mặt bằng quy hoạch. C&ograve;n B l&agrave; bề ngang của v&ugrave;ng quy hoạch (bề vu&ocirc;ng g&oacute;c với c&aacute;c đường đồng mức).</li>\r\n</ul>\r\n<p>&ndash; Nếu d&ugrave;ng phương ph&aacute;p lưới &ocirc; vu&ocirc;ng hay lưới &ocirc; tam gi&aacute;c, th&igrave; cao độ trung b&igrave;nh được t&iacute;nh bằng tỷ số giữa tổng khối t&iacute;ch của mọi &ocirc; lưới, t&iacute;nh từ mặt thủy chuẩn trở l&ecirc;n, với tổng diện t&iacute;ch h&igrave;nh chiếu bằng của v&ugrave;ng quy hoạch. Tổng khối t&iacute;ch của mọi &ocirc; lưới lại được t&iacute;nh qua c&aacute;c cao độ mắt lưới, t&iacute;nh từ mặt thủy chuẩn.</p>\r\n<p>Trường hợp lưới &ocirc; vu&ocirc;ng: H0=(&Sigma;H(1)j+2&Sigma;H(2)j+4&Sigma;H(4)j)/4m</p>\r\n<p>Trường hợp lưới &ocirc; tam gi&aacute;c: H0=(&Sigma;H(1)j+2&Sigma;H(2)j+3&Sigma;H(3)j+&hellip;+6&Sigma;H(6)j+&hellip;+8&Sigma; H(8)j)/3n.</p>\r\n<p>Với H(1)j, H(2)j, H(3)j, H(4)j,&hellip;, H(6)j,&hellip;, H(8)j, l&agrave; c&aacute;c cao độ tự nhi&ecirc;n tại mắt lưới &ocirc; vu&ocirc;ng m&agrave; c&oacute; 1, 2, 4 &ocirc; vu&ocirc;ng quy tụ xung quanh, hay c&aacute;c cao độ tự nhi&ecirc;n tại mắt lưới &ocirc; tam gi&aacute;c m&agrave; c&oacute; 1, 2, 3,&hellip;,6,&hellip;,8 &ocirc; tam gi&aacute;c quy tụ xung quanh. Với m l&agrave; tổng số c&aacute;c &ocirc; vu&ocirc;ng c&oacute; trong v&ugrave;ng mặt bằng quy hoạch. C&ograve;n n l&agrave; tổng số c&aacute;c &ocirc; tam gi&aacute;c c&oacute; trong v&ugrave;ng mặt bằng quy hoạch.</p>\r\n<p>San với điều kiện chừa đất ra sau san, hay th&ecirc;m đất từ ngo&agrave;i khi san (khối lượng đất ngo&agrave;i V0&ne;0): độ cao trung b&igrave;nh của mặt bằng san được t&iacute;nh bằng cao độ trung b&igrave;nh khi san c&acirc;n bằng đ&agrave;o đắp c&oacute; th&ecirc;m hay bớt ch&ecirc;nh lệch độ cao do lượng đất th&ecirc;m v&agrave;o hay bớt đi đem lại. Nếu khối lượng đất ngo&agrave;i V0&ne;0 đ&atilde; được x&aacute;c định trước, th&igrave; khi đ&oacute; cao độ trung b&igrave;nh H0 được t&iacute;nh theo c&aacute;c c&ocirc;ng thức sau:</p>\r\n<p>Trường hợp lưới &ocirc; vu&ocirc;ng: H0=((&Sigma;H(1)j+2&Sigma;H(2)j+4&Sigma;H(4)j)/4m)&plusmn;(V0/(ma&sup2;))</p>\r\n<p>Trường hợp lưới &ocirc; tam gi&aacute;c: H0=((&Sigma;H(1)j+2&Sigma;H(2)j+3&Sigma;H(3)j+&hellip;+6&Sigma;H(6)j+&hellip;+8 H(8)j)/3n)&plusmn;(2V0/(na&sup2;)).</p>\r\n<p>Với a l&agrave; khoảng c&aacute;ch c&aacute;c mắt lưới (cạnh h&igrave;nh chiếu bằng của &ocirc; lưới).</p>\r\n<p>&ndash; Như vậy, đến đ&acirc;y đ&atilde; x&aacute;c định được ch&iacute;nh x&aacute;c mặt thiết kế sau san lấp. L&uacute;c n&agrave;y tại mọi vị tr&iacute; của mặt bằng quy hoạch đều c&oacute; hai cao độ: cao độ tự nhi&ecirc;n (của mặt đất tự nhi&ecirc;n ) v&agrave; cao độ thiết kế (của mặt s&agrave;n thiết kế).</p>\r\n<p>Ngo&agrave;i ra, để đảm bảo sự ổn định của c&aacute;c m&aacute;i đất sau khi san ở cả phần đ&agrave;o lẫn phần đắp, tr&aacute;nh sạt lở c&ocirc;ng tr&igrave;nh đất sau san lấp mặt bằng, th&igrave; khi thiết kế mặt bằng san lấp, cần phải thiết kế c&aacute;c m&aacute;i ta-luy viền quanh mặt thiết kế sau san lấp, theo độ dốc cho ph&eacute;p tới hạn. Độ dốc cho ph&eacute;p tới hạn l&agrave; độ dốc tối đa m&agrave; m&aacute;i ta-luy đất đ&agrave;o hay đắp c&oacute; thể c&oacute;, m&agrave; kh&ocirc;ng g&acirc;y ra sự trượt của m&aacute;i đất.</p>\r\n<p>Trong v&ugrave;ng mặt bằng san sẽ xuất hiện những đường ranh giới giữa c&aacute;c khu vực đ&agrave;o đất với c&aacute;c khu vực đắp đất, được gọi l&agrave; ranh giới đ&agrave;o đắp O-O. Ranh giới O-O n&agrave;y l&agrave; giao tuyến của mặt địa h&igrave;nh tự nhi&ecirc;n với mặt san thiết kế.</p>\r\n<p>Độ cao c&ocirc;ng t&aacute;c của mỗi điểm tr&ecirc;n mặt bằng quy hoạch l&agrave; hiệu số giữa cao độ tự nhi&ecirc;n của điểm đ&oacute; với cao độ thiết kế của điểm đ&oacute;: hctj = htnj &ndash; htkj. Khu vực n&agrave;o đ&oacute; của mặt bằng quy hoạch l&agrave; khu vực đ&agrave;o đất nếu như tất cả mọi độ cao c&ocirc;ng t&aacute;c của c&aacute;c điểm trong khu vực đều c&oacute; gi&aacute; trị dương. Như vậy, t&ugrave;y phương ph&aacute;p m&ocirc; phỏng m&agrave; ta c&oacute; thể x&aacute;c định được khối lượng đất c&ocirc;ng t&aacute;c, theo đặc trưng của h&igrave;nh m&ocirc; phỏng.</p>\r\n<p>Với phương ph&aacute;p mặt cắt, việc x&aacute;c định khối lượng đất đ&agrave;o v&agrave; đất đắp đơn giản l&agrave; việc nh&acirc;n từng phần diện t&iacute;ch tiết diện đất c&ocirc;ng t&aacute;c, ch&iacute;nh l&agrave; c&aacute;c phần kẹp giữa hai đường: đường cao độ mặt đất tự nhi&ecirc;n v&agrave; đường cao độ mặt đất thiết kế sau san, với lại chiều d&agrave;i c&aacute;c thỏi đất (chiều d&agrave;i dọc theo đường đồng mức của thửa đất cần san). Nếu phần diện t&iacute;ch tiết diện c&ocirc;ng t&aacute;c nằm dưới đường cao độ mặt đất tự nhi&ecirc;n th&igrave; phần khối lượng đất đ&oacute; l&agrave; đất đ&agrave;o, c&ograve;n ngược lại, phần diện t&iacute;ch n&agrave;y nằm tr&ecirc;n đường cao độ tự nhi&ecirc;n th&igrave; l&agrave; khối lượng đất đắp. Ranh giới đ&agrave;o đắp O-O, trong phương ph&aacute;p n&agrave;y, chỉ l&agrave; những giao điểm, tr&ecirc;n mặt cắt điển h&igrave;nh, của hai đường: đường cao độ mặt đất tự nhi&ecirc;n v&agrave; đường cao độ mặt đất thiết kế sau san.</p>\r\n<p>C&aacute;c phương ph&aacute;p chia mạng &ocirc; vu&ocirc;ng v&agrave; mạng &ocirc; tam gi&aacute;c, khối lượng đất c&ocirc;ng t&aacute;c được t&iacute;nh qua độ cao c&ocirc;ng t&aacute;c ở vị tr&iacute; c&aacute;c mắt &ocirc; lưới. Khi t&iacute;nh khối lượng c&ocirc;ng t&aacute;c tr&ecirc;n từng &ocirc; lưới, kể cả mạng &ocirc; vu&ocirc;ng hay mạng &ocirc; tam gi&aacute;c, th&igrave; đều sẽ thấy rằng c&oacute; 3 loại &ocirc; lưới:</p>\r\n<ul>\r\n<li>Loại &ocirc; c&oacute; tất cả c&aacute;c độ cao c&ocirc;ng t&aacute;c tại mắt lưới dương hctj &gt; 0, l&agrave; loại &ocirc; nằm ho&agrave;n to&agrave;n trong v&ugrave;ng đ&agrave;o;</li>\r\n<li>Loại &ocirc; c&oacute; tất cả c&aacute;c độ cao c&ocirc;ng t&aacute;c tại mắt lưới &acirc;m hctj &lt; 0, l&agrave; loại &ocirc; nằm ho&agrave;n to&agrave;n trong v&ugrave;ng đắp;</li>\r\n<li>Loại &ocirc; chứa cả mắt lưới c&oacute; cao độ c&ocirc;ng t&aacute;c vừa &acirc;m vừa dương, c&oacute; cả mắt lưới c&oacute; hctj &gt; 0 lẫn mắt lưới c&oacute; hctj &lt; 0, l&agrave; loại &ocirc; nằm đ&egrave; l&ecirc;n ranh giới đ&agrave;o đắp O-O (ranh giới đ&agrave;o đắp cắt qua những &ocirc; n&agrave;y).</li>\r\n</ul>\r\n<p>Sau khi t&iacute;nh khối lượng đất cần c&ocirc;ng t&aacute;c b&ecirc;n trong mặt bằng quy hoạch xong, th&igrave; cần phải x&aacute;c định từng phần khối lượng của đất đ&agrave;o hoặc đắp của c&aacute;c m&aacute;i ta-luy nằm xung quanh b&ecirc;n r&igrave;a mặt bằng san lấp. C&aacute;c khối lượng n&agrave;y cũng được ph&acirc;n l&agrave;m hai loại: khối lượng ta-luy đ&agrave;o v&agrave; khối lượng ta-luy đắp. Đất c&ocirc;ng t&aacute;c của hai loại n&agrave;y được b&ugrave; trừ lẫn nhau, lấy đất ở ta-luy đ&agrave;o để đắp sang ta-luy đắp. Tuy nhi&ecirc;n trong phần lớn c&aacute;c trường hợp, hai khối lượng n&agrave;y thường kh&ocirc;ng c&acirc;n bằng với nhau, khi đ&oacute; lượng đất ta-luy thừa hay thiếu (thực ra mới chỉ l&agrave; trong t&iacute;nh to&aacute;n) được giả thiết l&agrave; đem t&ocirc;n đều l&ecirc;n tr&ecirc;n to&agrave;n bộ mặt bằng san nếu thừa (kể cả tr&ecirc;n mặt c&aacute;c m&aacute;i ta-luy) hay b&oacute;c đất ở mặt bằng san đi đều một lượt chiều dầy nhất định (kể cả tr&ecirc;n c&aacute;c m&aacute;i ta-luy) để b&ugrave; v&agrave;o nếu thiếu. Khi đ&oacute; mặt thiết kế san, v&agrave; khối lượng đ&agrave;o đắp t&iacute;nh to&aacute;n c&ugrave;ng với ranh giới đ&agrave;o đắp sẽ thay đổi. Mặt thiết kế san mới song song với mặt thiết kế san cũ. B&agrave;i to&aacute;n san trở th&agrave;nh san với một lượng V0 kh&aacute;c 0, v&agrave; phải t&iacute;nh lặp nhiều lần cho đến khi đạt tới sự c&acirc;n bằng đ&agrave;o đắp. Do đ&oacute; trong thực tế thường &iacute;t c&oacute; b&agrave;i to&aacute;n san nền c&acirc;n bằng đ&agrave;o đắp thuần t&uacute;y.</p>', 'posts\\June2023\\KaL3YOgsAfqamUmKdIjc.png', 'quy-trinh-san-lap-mat-bang', 'Trong công tác san đất, đầu tiên, đất thi công chủ yếu được lấy ngay bên trong phạm vi công trường. Lượng đất thừa hay thiếu phải liên hệ với bên ngoài phạm vi công trường, thường chỉ là nguồn bổ trợ hay chỉ chiếm khối lượng nhỏ, hoặc thậm chí không có (như khi san cân bằng đào đắp).', 'Trong công tác san đất, đầu tiên, đất thi công chủ yếu được lấy ngay bên trong phạm vi công trường. Lượng đất thừa hay thiếu phải liên hệ với bên ngoài phạm vi công trường, thường chỉ là nguồn bổ trợ hay chỉ chiếm khối lượng nhỏ, hoặc thậm chí không có (như khi san cân bằng đào đắp).', 'PUBLISHED', 1, '2023-06-20 00:12:56', '2023-06-20 00:12:56'),
(12, 1, 1, '5 LỢI ÍCH TUYỆT VỜI CỦA QUẢN LÝ QUY TRÌNH', NULL, 'Các quy trình và cách cải thiện chúng là một trong những khía cạnh quan trọng mà ngày càng có nhiều doanh nghiệp nước ngoài cũng như doanh nghiệp Việt Nam đầu tư vào.', '<p>C&aacute;c quy tr&igrave;nh v&agrave; c&aacute;ch cải thiện ch&uacute;ng l&agrave; một trong những kh&iacute;a cạnh quan trọng m&agrave; ng&agrave;y c&agrave;ng c&oacute; nhiều doanh nghiệp nước ngo&agrave;i cũng như doanh nghiệp Việt Nam đầu tư v&agrave;o. Quy tr&igrave;nh v&agrave; phần mềm quản l&yacute; quy tr&igrave;nh (BPM) cung cấp một giải ph&aacute;p tuyệt vời cho c&aacute;c doanh nghiệp, do đ&oacute; mang lại cho họ nhiều lợi &iacute;ch.</p>\r\n<h2 id=\"h-qu-n-l-quy-tr-nh\">Quản l&yacute; quy tr&igrave;nh&nbsp;</h2>\r\n<p>Quản l&yacute; Quy tr&igrave;nh (BPM) gi&uacute;p c&aacute;c doanh nghiệp sắp xếp c&aacute;c hoạt động cải tiến quy tr&igrave;nh của họ với c&aacute;c mục ti&ecirc;u m&agrave; họ muốn đạt được bằng c&aacute;c nỗ lực tối ưu h&oacute;a quy tr&igrave;nh kh&aacute;c nhau.</p>\r\n<p>Phần mềm thường l&agrave; c&ocirc;ng cụ thực hiện BPM. V&igrave; phần mềm mang lại hiệu quả tuyệt vời với tất cả c&aacute;c quy tr&igrave;nh v&agrave; t&aacute;c động của ch&uacute;ng được tập trung h&oacute;a v&agrave; hiệu quả c&oacute; thể được đo lường dễ d&agrave;ng bằng KPI được x&aacute;c định trước.</p>\r\n<p>Dưới đ&acirc;y l&agrave; những lợi &iacute;ch h&agrave;ng đầu của phần mềm quản l&yacute; v&agrave; điều h&agrave;nh quy tr&igrave;nh m&agrave; bạn c&oacute; thể mong đợi cho doanh nghiệp của m&igrave;nh</p>\r\n<figure class=\"wp-block-image size-full\"><img id=\"MjI5OjM3NA==-1\" class=\"wp-image-2896 lazyloaded\" src=\"https://ibpo.vn/wp-content/uploads/2023/04/I.png\" sizes=\"(max-width: 940px) 100vw, 940px\" srcset=\"https://ibpo.vn/wp-content/uploads/2023/04/I.png 940w, https://ibpo.vn/wp-content/uploads/2023/04/I-300x251.png 300w, https://ibpo.vn/wp-content/uploads/2023/04/I-768x644.png 768w\" alt=\"\" height=\"NaN\"></figure>\r\n<h2 id=\"h-l-i-ch-l-n-nh-t-c-a-qu-n-l-quy-tr-nh-v-ph-n-m-m-qu-n-l-quy-tr-nh-doanh-nghi-p\">Lợi &iacute;ch lớn nhất của quản l&yacute; quy tr&igrave;nh v&agrave; phần mềm quản l&yacute; quy tr&igrave;nh doanh nghiệp</h2>\r\n<h3 id=\"h-1-t-ng-c-ng-kh-n-ng-tr-n-n-nhanh-nh-n-h-n\">1. Tăng cường khả năng để trở n&ecirc;n nhanh nhẹn hơn</h3>\r\n<p>Một trong những lợi &iacute;ch lớn nhất của BPM l&agrave; n&oacute; gi&uacute;p c&aacute;c doanh nghiệp trở n&ecirc;n linh hoạt hơn trong việc cải tiến quy tr&igrave;nh của họ.</p>\r\n<p>Điều n&agrave;y đến từ sức mạnh được cung cấp bởi phần mềm quản l&yacute; quy tr&igrave;nh. Khi họ cập nhật c&aacute;c doanh nghiệp với c&aacute;c ph&acirc;n t&iacute;ch c&oacute; thể được th&ocirc;ng b&aacute;o li&ecirc;n tục. Sau đ&oacute;, cung cấp cho họ khả năng nhận phản hồi li&ecirc;n tục v&agrave; l&agrave;m cho qu&aacute; tr&igrave;nh cải tiến nhanh hơn.</p>\r\n<p>Điều n&agrave;y cũng tiết kiệm nhiều thời gian hơn bị l&atilde;ng ph&iacute; trong việc đưa ra quyết định. Ch&uacute;ng trở n&ecirc;n dễ thực hiện hơn v&agrave; mất &iacute;t thời gian hơn với t&iacute;nh năng b&aacute;o c&aacute;o mạnh mẽ.</p>\r\n<h3 id=\"h-2-n-ng-cao-hi-u-qu\">2. N&acirc;ng cao hiệu quả</h3>\r\n<p>R&otilde; r&agrave;ng, một c&ocirc;ng cụ quản l&yacute; chủ yếu l&agrave; để tăng hiệu quả. Điều đ&oacute; đ&uacute;ng với phần mềm quản l&yacute; quy tr&igrave;nh, v&igrave; một trong những lợi &iacute;ch lớn nhất của ch&uacute;ng l&agrave; cải thiện hiệu quả.</p>\r\n<p>Bản th&acirc;n qu&aacute; tr&igrave;nh cải thiện quy tr&igrave;nh c&oacute; thể &iacute;t nhiều hiệu quả, t&ugrave;y thuộc v&agrave;o c&aacute;ch tiếp cận. V&agrave; mặc d&ugrave; sự nhanh nhẹn c&oacute; thể gi&uacute;p &iacute;ch, nhưng như t&ocirc;i đ&atilde; đề cập trước đ&acirc;y, đ&oacute; kh&ocirc;ng phải l&agrave; kh&iacute;a cạnh duy nhất. C&oacute; nhiều hơn nữa để xem x&eacute;t.</p>\r\n<p>BPM n&oacute;i chung v&agrave; phần mềm quản l&yacute; quy tr&igrave;nh nghiệp vụ thu hẹp khoảng c&aacute;ch giữa người quản l&yacute; v&agrave; nh&acirc;n vi&ecirc;n khi cải tiến một quy tr&igrave;nh.</p>\r\n<p>N&oacute; cũng c&oacute; thể gi&uacute;p cắt giảm c&aacute;c t&aacute;c vụ thủ c&ocirc;ng hiệu quả hơn. Đ&oacute; l&agrave; bằng c&aacute;ch gi&aacute;m s&aacute;t chặt chẽ c&aacute;c quy tr&igrave;nh v&agrave; ph&aacute;t hiện sự dư thừa.</p>\r\n<h3 id=\"h-3-c-i-thi-n-kh-n-ng-n-m-b-t-tr-n-nhi-u-quy-tr-nh\">3. Cải thiện khả năng nắm bắt tr&ecirc;n nhiều quy tr&igrave;nh</h3>\r\n<p>Khi bạn cải thiện c&aacute;c quy tr&igrave;nh của một doanh nghiệp nhất định, bạn c&oacute; thể cải thiện nhiều quy tr&igrave;nh c&ugrave;ng một l&uacute;c. Đ&acirc;y l&agrave; một th&aacute;ch thức lớn đối với việc cải tiến quy tr&igrave;nh v&agrave; lợi &iacute;ch to lớn của BPM v&agrave; phần mềm quản l&yacute; quy tr&igrave;nh.</p>\r\n<p>Việc thay thế c&aacute;c kỹ thuật thủ c&ocirc;ng bằng to&agrave;n bộ phần mềm quản l&yacute; cho ph&eacute;p doanh nghiệp hiểu r&otilde; hơn về c&aacute;ch c&aacute;c hoạt động v&agrave; kết quả kh&aacute;c nhau t&aacute;c động lẫn nhau.</p>\r\n<p>Điều n&agrave;y đưa ra một bức tranh r&otilde; r&agrave;ng hơn về nơi m&agrave; doanh nghiệp sẽ đi. Trong khi thực hiện c&aacute;c quy tr&igrave;nh mới hoặc n&acirc;ng cao c&aacute;c quy tr&igrave;nh hiện tại. Sau đ&oacute;, cung cấp cho c&aacute;c nh&agrave; quản l&yacute; khả năng h&agrave;nh động nhanh hơn để x&aacute;c định c&aacute;c vấn đề v&agrave; giải quyết ch&uacute;ng.</p>\r\n<h3 id=\"h-4-t-ng-kh-n-ng-ti-p-t-c-c-i-ti-n\">4. Tăng khả năng tiếp tục cải tiến</h3>\r\n<p>Quy tr&igrave;nh cần cải tiến li&ecirc;n tục. Lợi &iacute;ch lớn nhất của quản l&yacute; xử l&yacute; nghiệp vụ l&agrave; n&oacute; cho ph&eacute;p doanh nghiệp đạt được điều n&agrave;y.</p>\r\n<p>Cải tiến li&ecirc;n tục cần một luồng ph&acirc;n t&iacute;ch li&ecirc;n tục v&agrave; b&aacute;o c&aacute;o mạnh mẽ. Trong số c&aacute;c t&iacute;nh năng tốt nhất m&agrave; phần mềm cung cấp l&agrave; gi&uacute;p doanh nghiệp truy cập dữ liệu v&agrave; b&aacute;o c&aacute;o</p>\r\n<h3 id=\"h-5-c-i-thi-n-kh-n-ng-m-r-ng-quy-m-i-ng\">5. Cải thiện khả năng mở rộng quy m&ocirc; đội ngũ</h3>\r\n<p>Cải tiến quy tr&igrave;nh&nbsp;c&oacute; thể bắt đầu với một người. Sau đ&oacute;, c&aacute;c hoạt động c&oacute; thể ph&aacute;t triển v&agrave; sẽ cần nhiều người l&agrave;m việc hơn. Đ&acirc;y l&agrave; l&uacute;c phần mềm quản l&yacute; quy tr&igrave;nh c&oacute; thể mang lại một lợi &iacute;ch tuyệt vời kh&aacute;c.</p>\r\n<p>Việc mở rộng số lượng người l&agrave;m việc để cải tiến c&aacute;c quy tr&igrave;nh c&oacute; thể trở th&agrave;nh một thất bại v&igrave; nhiều l&yacute; do nếu kh&ocirc;ng c&oacute; sự quản l&yacute;. Điều n&agrave;y c&oacute; thể tốn rất nhiều tiền để sửa chữa.</p>\r\n<p>H&atilde;y tưởng tượng việc ph&acirc;n phối kiến thức v&agrave; c&aacute;ch c&aacute;c b&aacute;o c&aacute;o cũng như c&aacute;c t&agrave;i nguy&ecirc;n kh&aacute;c được quản l&yacute; bằng c&aacute;c phương ph&aacute;p truyền thống. L&agrave;m thế n&agrave;o điều đ&oacute; c&oacute; thể trở n&ecirc;n rất k&eacute;m hiệu quả.</p>\r\n<p>Mặt kh&aacute;c, một phần mềm quản l&yacute; quy tr&igrave;nh tập hợp th&ocirc;ng tin lại với nhau. Bất kỳ th&agrave;nh vi&ecirc;n n&agrave;o trong nh&oacute;m tham gia sẽ c&oacute; khả năng truy cập t&agrave;i liệu v&agrave; tất cả dữ liệu lịch sử một c&aacute;ch dễ d&agrave;ng, gi&uacute;p qu&aacute; tr&igrave;nh đ&agrave;o tạo hiệu quả hơn v&agrave; cắt giảm đ&aacute;ng kể chi ph&iacute;.</p>', 'posts\\June2023\\I1Sfy2hE3dscvmZPcceP.png', '5-loi-ich-tuyet-voi-cua-quan-ly-quy-trinh', 'Các quy trình và cách cải thiện chúng là một trong những khía cạnh quan trọng mà ngày càng có nhiều doanh nghiệp nước ngoài cũng như doanh nghiệp Việt Nam đầu tư vào.', 'Các quy trình và cách cải thiện chúng là một trong những khía cạnh quan trọng mà ngày càng có nhiều doanh nghiệp nước ngoài cũng như doanh nghiệp Việt Nam đầu tư vào.', 'PUBLISHED', 1, '2023-06-20 00:18:42', '2023-06-20 00:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `desc`, `image`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ San lấp mặt bằng Chất lượng và Hiệu quả', 'dich-vu-san-lap-mat-bang-chat-luong-va-hieu-qua', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh tự hào là đơn vị hàng đầu trong lĩnh vực san lấp mặt bằng, mang đến các giải pháp chuyên nghiệp và hiệu quả cho khách hàng. Chúng tôi cam kết đáp ứng mọi yêu cầu với sự tận tâm và chất lượng cao.', 'projects\\June2023\\7ss2M3rjf1LplMKUPthn.jpg', '<p>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu trong lĩnh vực san lấp mặt bằng, mang đến c&aacute;c giải ph&aacute;p chuy&ecirc;n nghiệp v&agrave; hiệu quả cho kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i cam kết đ&aacute;p ứng mọi y&ecirc;u cầu với sự tận t&acirc;m v&agrave; chất lượng cao.</p>\r\n<ol>\r\n<li>Đội ngũ chuy&ecirc;n gia gi&agrave;u kinh nghiệm: Ch&uacute;ng t&ocirc;i c&oacute; đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n gia với kinh nghiệm d&agrave;y dặn trong lĩnh vực san lấp mặt bằng. Họ sẽ tư vấn v&agrave; thiết kế giải ph&aacute;p ph&ugrave; hợp, đảm bảo sự ổn định v&agrave; an to&agrave;n của c&ocirc;ng tr&igrave;nh.</li>\r\n<li>Sử dụng c&ocirc;ng nghệ v&agrave; thiết bị hiện đại: Ch&uacute;ng t&ocirc;i &aacute;p dụng c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; sử dụng c&aacute;c thiết bị chất lượng để thực hiện c&ocirc;ng việc san lấp mặt bằng. Điều n&agrave;y đảm bảo sự ch&iacute;nh x&aacute;c v&agrave; hiệu quả cao, gi&uacute;p tiết kiệm thời gian v&agrave; tối ưu h&oacute;a kết quả.</li>\r\n<li>Đảm bảo chất lượng v&agrave; an to&agrave;n: Ch&uacute;ng t&ocirc;i lu&ocirc;n tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn chất lượng v&agrave; quy định an to&agrave;n trong qu&aacute; tr&igrave;nh san lấp mặt bằng. Tất cả c&aacute;c hoạt động được thực hiện một c&aacute;ch cẩn thận v&agrave; ch&iacute;nh x&aacute;c, đảm bảo t&iacute;nh ổn định v&agrave; bền vững của c&ocirc;ng tr&igrave;nh.</li>\r\n<li>Tận t&acirc;m đ&aacute;p ứng y&ecirc;u cầu kh&aacute;ch h&agrave;ng: Ch&uacute;ng t&ocirc;i lắng nghe v&agrave; hiểu r&otilde; nhu cầu của kh&aacute;ch h&agrave;ng. Đội ngũ của ch&uacute;ng t&ocirc;i sẽ l&agrave;m việc chặt chẽ với kh&aacute;ch h&agrave;ng để đảm bảo rằng mọi y&ecirc;u cầu v&agrave; mong muốn được thực hiện đ&uacute;ng như mong đợi.</li>\r\n</ol>\r\n<p>Khi chọn dịch vụ san lấp mặt bằng của C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh, bạn sẽ nhận được sự đ&aacute;ng tin cậy, chất lượng v&agrave; hiệu quả. H&atilde;y để ch&uacute;ng t&ocirc;i gi&uacute;p bạn x&acirc;y dựng v&agrave; định h&igrave;nh kh&ocirc;ng gian một c&aacute;ch chuy&ecirc;n nghiệp</p>\r\n<p><img class=\"aligncenter size-full wp-image-1069 entered lazyloaded\" src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg 800w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-300x169.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-768x432.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-600x338.jpg 600w\" alt=\"\" width=\"800\" height=\"450\" data-lazy-srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg 800w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-300x169.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-768x432.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-600x338.jpg 600w\" data-lazy-sizes=\"(max-width: 800px) 100vw, 800px\" data-lazy-src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg\" data-ll-status=\"loaded\"></p>\r\n<h2>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh l&agrave; đối t&aacute;c tin cậy cho dịch vụ san lấp mặt bằng. Dưới đ&acirc;y l&agrave; những ưu điểm nổi bật khi bạn thu&ecirc; dịch vụ của ch&uacute;ng t&ocirc;i:</h2>\r\n<ol>\r\n<li>Kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n: Với nhiều năm hoạt động trong ng&agrave;nh x&acirc;y dựng, ch&uacute;ng t&ocirc;i t&iacute;ch lũy được kinh nghiệm phong ph&uacute; v&agrave; kiến thức chuy&ecirc;n m&ocirc;n s&acirc;u rộng về san lấp mặt bằng. Đội ngũ chuy&ecirc;n gia của ch&uacute;ng t&ocirc;i sẽ cung cấp giải ph&aacute;p tối ưu v&agrave; đảm bảo t&iacute;nh ổn định cho c&ocirc;ng tr&igrave;nh của bạn.</li>\r\n<li>C&ocirc;ng nghệ v&agrave; thiết bị ti&ecirc;n tiến: Ch&uacute;ng t&ocirc;i đầu tư v&agrave;o c&ocirc;ng nghệ v&agrave; thiết bị hiện đại nhất để thực hiện c&ocirc;ng việc san lấp mặt bằng. Điều n&agrave;y gi&uacute;p tăng cường hiệu quả v&agrave; đảm bảo chất lượng cao, đồng thời tiết kiệm thời gian v&agrave; tối ưu h&oacute;a qu&aacute; tr&igrave;nh thi c&ocirc;ng.</li>\r\n<li>Cam kết chất lượng v&agrave; an to&agrave;n: Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt chất lượng v&agrave; an to&agrave;n l&ecirc;n h&agrave;ng đầu. Quy tr&igrave;nh l&agrave;m việc của ch&uacute;ng t&ocirc;i tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn chất lượng v&agrave; quy định an to&agrave;n. Ch&uacute;ng t&ocirc;i đảm bảo rằng c&ocirc;ng tr&igrave;nh san lấp mặt bằng được thực hiện một c&aacute;ch cẩn thận v&agrave; đ&aacute;ng tin cậy.</li>\r\n<li>Tư vấn v&agrave; hỗ trợ kh&aacute;ch h&agrave;ng: Ch&uacute;ng t&ocirc;i hiểu r&otilde; rằng mỗi dự &aacute;n c&oacute; y&ecirc;u cầu ri&ecirc;ng biệt. Đội ngũ của ch&uacute;ng t&ocirc;i sẽ tư vấn v&agrave; hỗ trợ bạn trong qu&aacute; tr&igrave;nh l&ecirc;n kế hoạch v&agrave; thi c&ocirc;ng, từ việc x&aacute;c định phạm vi c&ocirc;ng việc, lập dự &aacute;n, đến giải đ&aacute;p mọi thắc mắc v&agrave; đ&aacute;p ứng mọi y&ecirc;u cầu của bạn.</li>\r\n<li>Thời gian v&agrave; ng&acirc;n s&aacute;ch hợp l&yacute;: Ch&uacute;ng t&ocirc;i cam kết ho&agrave;n th&agrave;nh c&ocirc;ng việc san lấp mặt bằng theo tiến độ đ&atilde; thỏa thuận, đồng thời tối ưu h&oacute;a ng&acirc;n s&aacute;ch của bạn. Ch&uacute;ng t&ocirc;i sẽ cung cấp b&aacute;o gi&aacute; cạnh tranh v&agrave; gi&uacute;p bạn tiết kiệm chi ph&iacute; m&agrave; vẫn đảm bảo</li>\r\n</ol>', 'ACTIVE', '2023-06-20 00:27:00', '2023-06-20 00:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`, `image`) VALUES
(3, 'Như Quỳnh', 'Tôi rất hài lòng với dịch vụ của Công ty CP vận tải và xây dựng Quang Minh. Hoàng hóa của tôi được vận chuyển an toàn đúng thời gian. Tôi rất tin tưởng và lần sau sẽ tiếp tục sử dụng dịch vụ', 'ACTIVE', '2023-06-04 19:11:00', '2023-06-22 18:45:36', 'questions\\June2023\\1t0M9yuyHYqZYQ4lY0DK.png'),
(4, 'Anh Cường', 'Công ty Quang Minh đã vượt xa mong đợi của tôi. Đội ngũ nhân viên chuyên nghiệp, tận tâm và linh hoạt. Họ đã cung cấp giải pháp xây dựng phù hợp và tối ưu, mang đến sự thành công cho dự án của chúng tôi.', 'ACTIVE', '2023-06-22 18:46:46', '2023-06-22 18:46:46', 'questions\\June2023\\R8OiNJwiujsk04cnXAFC.png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-06-01 19:44:55', '2023-06-01 19:44:55'),
(2, 'user', 'Normal User', '2023-06-01 19:44:55', '2023-06-01 19:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `desc`, `price`, `image`, `body`, `status`, `type`, `created_at`, `updated_at`, `icon`) VALUES
(1, 'Dịch vụ xây dựng', 'dich-vu-xay-dung', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh tự hào là đơn vị hàng đầu trong lĩnh vực xây dựng, mang đến những giải pháp chuyên nghiệp và tận tâm cho mọi dự án', 2000000, 'services\\June2023\\FMBh95JfhYQiuP6yLikl.jpg', '<h2>Dịch vụ X&acirc;y dựng Chuy&ecirc;n nghiệp v&agrave; Tận t&acirc;m từ C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh</h2>\r\n<p>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu trong lĩnh vực x&acirc;y dựng, mang đến những giải ph&aacute;p chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m cho mọi dự &aacute;n. Ch&uacute;ng t&ocirc;i cam kết x&acirc;y dựng kh&ocirc;ng gian sống v&agrave; l&agrave;m việc chất lượng, đ&aacute;p ứng mọi y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</p>\r\n<p>Thiết kế s&aacute;ng tạo: Với đội ngũ kiến tr&uacute;c sư v&agrave; kỹ sư gi&agrave;u kinh nghiệm, ch&uacute;ng t&ocirc;i tạo ra những &yacute; tưởng thiết kế độc đ&aacute;o, s&aacute;ng tạo v&agrave; thẩm mỹ. Ch&uacute;ng t&ocirc;i lắng nghe &yacute; kiến ​​của kh&aacute;ch h&agrave;ng v&agrave; đảm bảo rằng mỗi c&ocirc;ng tr&igrave;nh đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu cụ thể v&agrave; ph&ugrave; hợp với mục ti&ecirc;u của kh&aacute;ch h&agrave;ng.</p>\r\n<p>Thi c&ocirc;ng chuy&ecirc;n nghiệp: Ch&uacute;ng t&ocirc;i sở hữu đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề v&agrave; c&oacute; kỹ thuật cao, lu&ocirc;n tu&acirc;n thủ tiến độ v&agrave; ti&ecirc;u chuẩn chất lượng. Ch&uacute;ng t&ocirc;i sử dụng vật liệu chất lượng, c&ocirc;ng nghệ hiện đại v&agrave; quy tr&igrave;nh l&agrave;m việc ti&ecirc;n tiến để đảm bảo sự ho&agrave;n thiện v&agrave; bền vững của mỗi dự &aacute;n.</p>\r\n<p>Quản l&yacute; chặt chẽ: Ch&uacute;ng t&ocirc;i coi trọng quản l&yacute; dự &aacute;n tối ưu để đảm bảo sự hiệu quả v&agrave; tiến độ đ&uacute;ng hẹn. Qua qu&aacute; tr&igrave;nh thi c&ocirc;ng, ch&uacute;ng t&ocirc;i duy tr&igrave; sự giao tiếp li&ecirc;n tục v&agrave; đồng bộ với kh&aacute;ch h&agrave;ng, đảm bảo rằng mọi y&ecirc;u cầu v&agrave; thay đổi được đ&aacute;p ứng một c&aacute;ch linh hoạt v&agrave; kịp thời.</p>\r\n<p>Chọn C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh, bạn sẽ nhận được sự tận t&acirc;m, chất lượng v&agrave; sự đảm bảo cho mỗi dự &aacute;n x&acirc;y dựng của m&igrave;nh. H&atilde;y để ch&uacute;ng t&ocirc;i biến &yacute; tưởng của bạn th&agrave;nh hiện thực, tạo n&ecirc;n những c&ocirc;ng tr&igrave;nh đẹp v&agrave; ấn tượng, g&oacute;p phần v&agrave;o sự th&agrave;nh c&ocirc;ng của bạn.</p>\r\n<p><img class=\"aligncenter size-full wp-image-1085 entered lazyloaded\" src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le.jpg\" sizes=\"(max-width: 960px) 100vw, 960px\" srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le.jpg 960w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-300x200.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-768x512.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-600x400.jpg 600w\" alt=\"\" width=\"100%\" height=\"100%\" data-lazy-srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le.jpg 960w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-300x200.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-768x512.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le-600x400.jpg 600w\" data-lazy-sizes=\"(max-width: 960px) 100vw, 960px\" data-lazy-src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/xay-dung-nha-o-rieng-le.jpg\" data-ll-status=\"loaded\"></p>\r\n<h2>C&aacute;c dịch vụ x&acirc;y dựng c&ocirc;ng ty ch&uacute;ng t&ocirc;i cung cấp</h2>\r\n<ol>\r\n<li>X&acirc;y dựng c&ocirc;ng tr&igrave;nh d&acirc;n dụng: Bao gồm x&acirc;y nh&agrave; ở, căn hộ chung cư, biệt thự, nh&agrave; phố, trung t&acirc;m thương mại, trường học, bệnh viện, văn ph&ograve;ng&hellip;</li>\r\n<li>X&acirc;y dựng c&ocirc;ng tr&igrave;nh c&ocirc;ng nghiệp: Gồm x&acirc;y dựng nh&agrave; m&aacute;y, nh&agrave; xưởng, cơ sở sản xuất, nh&agrave; kho, cầu cảng, nh&agrave; ga, s&acirc;n bay&hellip;</li>\r\n<li>X&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng: Bao gồm x&acirc;y dựng đường, cầu, hầm, bến cảng, đập&hellip;</li>\r\n<li>X&acirc;y dựng hạ tầng: Bao gồm x&acirc;y dựng hệ thống tho&aacute;t nước, cấp nước, điện, viễn th&ocirc;ng, hệ thống giao th&ocirc;ng c&ocirc;ng cộng, c&ocirc;ng tr&igrave;nh m&ocirc;i trường&hellip;</li>\r\n<li>X&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy lợi: Bao gồm x&acirc;y dựng đập, hồ chứa nước, k&ecirc;nh mương, hệ thống tưới ti&ecirc;u, cống r&atilde;nh&hellip;</li>\r\n<li>X&acirc;y dựng c&ocirc;ng tr&igrave;nh biển: Gồm x&acirc;y dựng cầu bến, đ&ecirc; biển, b&atilde;i biển nh&acirc;n tạo, khu nghỉ dưỡng ven biển&hellip;</li>\r\n<li>Sửa chữa v&agrave; n&acirc;ng cấp c&ocirc;ng tr&igrave;nh: Bao gồm sửa chữa, cải tạo, n&acirc;ng cấp c&ocirc;ng tr&igrave;nh đ&atilde; tồn tại, bao gồm cả c&ocirc;ng tr&igrave;nh d&acirc;n dụng v&agrave; c&ocirc;ng nghiệp.</li>\r\n<li>Tư vấn v&agrave; thiết kế x&acirc;y dựng: Cung cấp dịch vụ tư vấn, thiết kế kiến tr&uacute;c, thiết kế kỹ thuật, bản vẽ, lập dự &aacute;n v&agrave; quản l&yacute; dự &aacute;n x&acirc;y dựng.</li>\r\n</ol>', 'ACTIVE', NULL, '2023-06-02 01:06:00', '2023-06-23 00:12:43', 'services\\June2023\\XBiryfVwfS6BSCpoDuWG.png'),
(2, 'Dịch vụ vận tải', 'dich-vu-van-tai', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh là đối tác lý tưởng cho mọi nhu cầu vận chuyển của bạn. Chúng tôi mang đến dịch vụ vận tải đáng tin cậy và chuyên nghiệp, đáp ứng mọi yêu cầu của khách hàng.', 1350000, 'services\\June2023\\GyHKeredJ9AYddYdKPOY.png', '<p>Dịch vụ vận tải đ&aacute;ng tin cậy v&agrave; chuy&ecirc;n nghiệp từ C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh</p>\r\n<p>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh l&agrave; đối t&aacute;c l&yacute; tưởng cho mọi nhu cầu vận chuyển của bạn. Ch&uacute;ng t&ocirc;i mang đến dịch vụ vận tải đ&aacute;ng tin cậy v&agrave; chuy&ecirc;n nghiệp, đ&aacute;p ứng mọi y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</p>\r\n<ol>\r\n<li>Đội ngũ l&aacute;i xe chuy&ecirc;n nghiệp: Ch&uacute;ng t&ocirc;i c&oacute; đội ngũ l&aacute;i xe gi&agrave;u kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n. Họ được đ&agrave;o tạo về kỹ năng vận h&agrave;nh an to&agrave;n v&agrave; nắm vững quy tr&igrave;nh vận chuyển. Điều n&agrave;y đảm bảo h&agrave;ng h&oacute;a của bạn được vận chuyển một c&aacute;ch an to&agrave;n v&agrave; đ&uacute;ng hẹn.</li>\r\n<li>Đa dạng loại h&igrave;nh vận tải: Ch&uacute;ng t&ocirc;i cung cấp c&aacute;c loại h&igrave;nh vận tải đa dạng như vận chuyển h&agrave;ng h&oacute;a đường bộ, đường biển v&agrave; đường h&agrave;ng kh&ocirc;ng. Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m lựa chọn phương &aacute;n vận tải ph&ugrave; hợp với nhu cầu của họ.</li>\r\n<li>Đảm bảo độ tin cậy v&agrave; tiến độ: Ch&uacute;ng t&ocirc;i cam kết vận chuyển h&agrave;ng h&oacute;a của bạn đ&uacute;ng tiến độ đ&atilde; thỏa thuận. Đội ngũ của ch&uacute;ng t&ocirc;i sẽ tối ưu h&oacute;a lịch tr&igrave;nh v&agrave; đảm bảo h&agrave;ng h&oacute;a đến đ&uacute;ng địa điểm một c&aacute;ch an to&agrave;n v&agrave; kịp thời.</li>\r\n<li>Quản l&yacute; v&agrave; gi&aacute;m s&aacute;t chặt chẽ: Ch&uacute;ng t&ocirc;i c&oacute; hệ thống quản l&yacute; v&agrave; gi&aacute;m s&aacute;t chặt chẽ để đảm bảo quy tr&igrave;nh vận chuyển diễn ra trơn tru v&agrave; hiệu quả. Ch&uacute;ng t&ocirc;i sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến để theo d&otilde;i v&agrave; cập nhật th&ocirc;ng tin về vị tr&iacute; v&agrave; trạng th&aacute;i của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển.</li>\r\n<li>Dịch vụ hậu m&atilde;i tận t&acirc;m: Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu. Sau khi ho&agrave;n th&agrave;nh vận chuyển, ch&uacute;ng t&ocirc;i sẽ đảm bảo rằng c&aacute;c vấn đề hậu m&atilde;i được giải quyết nhanh ch&oacute;ng v&agrave; hiệu quả. Đội ngũ hỗ trợ của ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn l&ograve;ng gi&uacute;p đỡ v&agrave; tư vấn để chắc chắn rằng kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng với dịch vụ của ch&uacute;ng t&ocirc;i.</li>\r\n<li>Giải ph&aacute;p t&ugrave;y chỉnh: Ch&uacute;ng t&ocirc;i hiểu rằng mỗi kh&aacute;ch h&agrave;ng c&oacute; những y&ecirc;u cầu đặc biệt. V&igrave; vậy, ch&uacute;ng t&ocirc;i cung cấp giải ph&aacute;p vận chuyển t&ugrave;y chỉnh để đ&aacute;p ứng c&aacute;c nhu cầu ri&ecirc;ng của kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i sẽ lắng nghe v&agrave; tư vấn để đảm bảo rằng dịch vụ của ch&uacute;ng t&ocirc;i đ&aacute;p ứng đ&uacute;ng mong đợi của bạn.</li>\r\n<li>Tận hưởng sự tiện lợi: Khi thu&ecirc; dịch vụ vận tải của ch&uacute;ng t&ocirc;i, bạn sẽ tận hưởng sự tiện lợi tuyệt vời. Ch&uacute;ng t&ocirc;i sẽ lo trọn g&oacute;i quy tr&igrave;nh vận chuyển, từ lập kế hoạch, tổ chức, theo d&otilde;i đến b&aacute;o c&aacute;o cuối c&ugrave;ng. Điều n&agrave;y gi&uacute;p bạn tiết kiệm thời gian v&agrave; tập trung v&agrave;o c&aacute;c hoạt động kinh doanh ch&iacute;nh của m&igrave;nh.</li>\r\n</ol>\r\n<p><img class=\"aligncenter size-full wp-image-1066 entered lazyloaded\" src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min.png\" sizes=\"(max-width: 1920px) 100vw, 1920px\" srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min.png 1920w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-300x167.png 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-1024x570.png 1024w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-768x427.png 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-1536x854.png 1536w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-600x334.png 600w\" alt=\"\" width=\"100%\" height=\"100%\" data-lazy-srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min.png 1920w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-300x167.png 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-1024x570.png 1024w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-768x427.png 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-1536x854.png 1536w, https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min-600x334.png 600w\" data-lazy-sizes=\"(max-width: 1920px) 100vw, 1920px\" data-lazy-src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/dich-vu-van-chuyen-hang-bang-container-min.png\" data-ll-status=\"loaded\"></p>\r\n<h2>Dưới đ&acirc;y l&agrave; một số dịch vụ vận tải m&agrave; C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh cung cấp:</h2>\r\n<ol>\r\n<li>Vận chuyển h&agrave;ng h&oacute;a đường bộ: Ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng h&oacute;a bằng xe &ocirc; t&ocirc; tr&ecirc;n mọi địa h&igrave;nh v&agrave; qu&atilde;ng đường. Từ vận chuyển h&agrave;ng h&oacute;a nhẹ đến h&agrave;ng h&oacute;a nặng, ch&uacute;ng t&ocirc;i sẽ đảm bảo h&agrave;ng h&oacute;a của bạn được giao đ&uacute;ng thời gian v&agrave; an to&agrave;n.</li>\r\n<li>Vận chuyển h&agrave;ng h&oacute;a đường biển: Ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng h&oacute;a bằng đường biển, li&ecirc;n kết với c&aacute;c cảng v&agrave; tuyến đường biển quốc tế. Ch&uacute;ng t&ocirc;i sẽ đảm bảo h&agrave;ng h&oacute;a của bạn được vận chuyển th&ocirc;ng qua c&aacute;c tuyến đường biển an to&agrave;n v&agrave; đến địa điểm đ&iacute;ch một c&aacute;ch đ&aacute;ng tin cậy.</li>\r\n<li>Vận chuyển h&agrave;ng h&oacute;a đường h&agrave;ng kh&ocirc;ng: Ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng h&oacute;a bằng đường h&agrave;ng kh&ocirc;ng, kết nối với c&aacute;c s&acirc;n bay v&agrave; h&atilde;ng h&agrave;ng kh&ocirc;ng quốc tế. Ch&uacute;ng t&ocirc;i đảm bảo h&agrave;ng h&oacute;a của bạn được vận chuyển nhanh ch&oacute;ng v&agrave; đ&uacute;ng hẹn, đồng thời tu&acirc;n thủ c&aacute;c quy định v&agrave; quy tr&igrave;nh an to&agrave;n của ng&agrave;nh h&agrave;ng kh&ocirc;ng.</li>\r\n</ol>', 'ACTIVE', NULL, '2023-06-02 01:10:00', '2023-06-22 03:02:13', 'services\\June2023\\oc9Y5Dyv0XAjwYT4BZt6.png'),
(3, 'Dịch vụ san lấp mặt bằng', 'dich-vu-san-lap-mat-bang', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh tự hào là đơn vị hàng đầu trong lĩnh vực san lấp mặt bằng, mang đến các giải pháp chuyên nghiệp và hiệu quả cho khách hàng. Chúng tôi cam kết đáp ứng mọi yêu cầu với sự tận tâm và chất lượng cao.', 535000, 'services\\June2023\\u2zU4MrSlG7RHGNYQiPD.jpg', '<p>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu trong lĩnh vực san lấp mặt bằng, mang đến c&aacute;c giải ph&aacute;p chuy&ecirc;n nghiệp v&agrave; hiệu quả cho kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i cam kết đ&aacute;p ứng mọi y&ecirc;u cầu với sự tận t&acirc;m v&agrave; chất lượng cao.</p>\r\n<ol>\r\n<li>Đội ngũ chuy&ecirc;n gia gi&agrave;u kinh nghiệm: Ch&uacute;ng t&ocirc;i c&oacute; đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n gia với kinh nghiệm d&agrave;y dặn trong lĩnh vực san lấp mặt bằng. Họ sẽ tư vấn v&agrave; thiết kế giải ph&aacute;p ph&ugrave; hợp, đảm bảo sự ổn định v&agrave; an to&agrave;n của c&ocirc;ng tr&igrave;nh.</li>\r\n<li>Sử dụng c&ocirc;ng nghệ v&agrave; thiết bị hiện đại: Ch&uacute;ng t&ocirc;i &aacute;p dụng c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; sử dụng c&aacute;c thiết bị chất lượng để thực hiện c&ocirc;ng việc san lấp mặt bằng. Điều n&agrave;y đảm bảo sự ch&iacute;nh x&aacute;c v&agrave; hiệu quả cao, gi&uacute;p tiết kiệm thời gian v&agrave; tối ưu h&oacute;a kết quả.</li>\r\n<li>Đảm bảo chất lượng v&agrave; an to&agrave;n: Ch&uacute;ng t&ocirc;i lu&ocirc;n tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn chất lượng v&agrave; quy định an to&agrave;n trong qu&aacute; tr&igrave;nh san lấp mặt bằng. Tất cả c&aacute;c hoạt động được thực hiện một c&aacute;ch cẩn thận v&agrave; ch&iacute;nh x&aacute;c, đảm bảo t&iacute;nh ổn định v&agrave; bền vững của c&ocirc;ng tr&igrave;nh.</li>\r\n<li>Tận t&acirc;m đ&aacute;p ứng y&ecirc;u cầu kh&aacute;ch h&agrave;ng: Ch&uacute;ng t&ocirc;i lắng nghe v&agrave; hiểu r&otilde; nhu cầu của kh&aacute;ch h&agrave;ng. Đội ngũ của ch&uacute;ng t&ocirc;i sẽ l&agrave;m việc chặt chẽ với kh&aacute;ch h&agrave;ng để đảm bảo rằng mọi y&ecirc;u cầu v&agrave; mong muốn được thực hiện đ&uacute;ng như mong đợi.</li>\r\n</ol>\r\n<p>Khi chọn dịch vụ san lấp mặt bằng của C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh, bạn sẽ nhận được sự đ&aacute;ng tin cậy, chất lượng v&agrave; hiệu quả. H&atilde;y để ch&uacute;ng t&ocirc;i gi&uacute;p bạn x&acirc;y dựng v&agrave; định h&igrave;nh kh&ocirc;ng gian một c&aacute;ch chuy&ecirc;n nghiệp</p>\r\n<p><img class=\"aligncenter size-full wp-image-1069 entered lazyloaded\" src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg 800w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-300x169.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-768x432.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-600x338.jpg 600w\" alt=\"\" width=\"800\" height=\"450\" data-lazy-srcset=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg 800w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-300x169.jpg 300w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-768x432.jpg 768w, https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2-600x338.jpg 600w\" data-lazy-sizes=\"(max-width: 800px) 100vw, 800px\" data-lazy-src=\"https://quangminhtn.vn/wp-content/uploads/2023/05/san-lap-mat-bang-2.jpg\" data-ll-status=\"loaded\"></p>\r\n<h2>C&ocirc;ng ty Cổ phần Vận tải v&agrave; X&acirc;y dựng Quang Minh l&agrave; đối t&aacute;c tin cậy cho dịch vụ san lấp mặt bằng. Dưới đ&acirc;y l&agrave; những ưu điểm nổi bật khi bạn thu&ecirc; dịch vụ của ch&uacute;ng t&ocirc;i:</h2>\r\n<ol>\r\n<li>Kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n: Với nhiều năm hoạt động trong ng&agrave;nh x&acirc;y dựng, ch&uacute;ng t&ocirc;i t&iacute;ch lũy được kinh nghiệm phong ph&uacute; v&agrave; kiến thức chuy&ecirc;n m&ocirc;n s&acirc;u rộng về san lấp mặt bằng. Đội ngũ chuy&ecirc;n gia của ch&uacute;ng t&ocirc;i sẽ cung cấp giải ph&aacute;p tối ưu v&agrave; đảm bảo t&iacute;nh ổn định cho c&ocirc;ng tr&igrave;nh của bạn.</li>\r\n<li>C&ocirc;ng nghệ v&agrave; thiết bị ti&ecirc;n tiến: Ch&uacute;ng t&ocirc;i đầu tư v&agrave;o c&ocirc;ng nghệ v&agrave; thiết bị hiện đại nhất để thực hiện c&ocirc;ng việc san lấp mặt bằng. Điều n&agrave;y gi&uacute;p tăng cường hiệu quả v&agrave; đảm bảo chất lượng cao, đồng thời tiết kiệm thời gian v&agrave; tối ưu h&oacute;a qu&aacute; tr&igrave;nh thi c&ocirc;ng.</li>\r\n<li>Cam kết chất lượng v&agrave; an to&agrave;n: Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt chất lượng v&agrave; an to&agrave;n l&ecirc;n h&agrave;ng đầu. Quy tr&igrave;nh l&agrave;m việc của ch&uacute;ng t&ocirc;i tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn chất lượng v&agrave; quy định an to&agrave;n. Ch&uacute;ng t&ocirc;i đảm bảo rằng c&ocirc;ng tr&igrave;nh san lấp mặt bằng được thực hiện một c&aacute;ch cẩn thận v&agrave; đ&aacute;ng tin cậy.</li>\r\n<li>Tư vấn v&agrave; hỗ trợ kh&aacute;ch h&agrave;ng: Ch&uacute;ng t&ocirc;i hiểu r&otilde; rằng mỗi dự &aacute;n c&oacute; y&ecirc;u cầu ri&ecirc;ng biệt. Đội ngũ của ch&uacute;ng t&ocirc;i sẽ tư vấn v&agrave; hỗ trợ bạn trong qu&aacute; tr&igrave;nh l&ecirc;n kế hoạch v&agrave; thi c&ocirc;ng, từ việc x&aacute;c định phạm vi c&ocirc;ng việc, lập dự &aacute;n, đến giải đ&aacute;p mọi thắc mắc v&agrave; đ&aacute;p ứng mọi y&ecirc;u cầu của bạn.</li>\r\n<li>Thời gian v&agrave; ng&acirc;n s&aacute;ch hợp l&yacute;: Ch&uacute;ng t&ocirc;i cam kết ho&agrave;n th&agrave;nh c&ocirc;ng việc san lấp mặt bằng theo tiến độ đ&atilde; thỏa thuận, đồng thời tối ưu h&oacute;a ng&acirc;n s&aacute;ch của bạn. Ch&uacute;ng t&ocirc;i sẽ cung cấp b&aacute;o gi&aacute; cạnh tranh v&agrave; gi&uacute;p bạn tiết kiệm chi ph&iacute; m&agrave; vẫn đảm bảo</li>\r\n</ol>', 'ACTIVE', NULL, '2023-06-02 01:12:00', '2023-06-22 03:02:04', 'services\\June2023\\nxezmaZQR3vKqRswAhLx.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Công ty CP vận tải và xây dựng Quang Minh', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Công ty Cổ phần Vận tải và Xây dựng Quang Minh là một đơn vị hàng đầu trong lĩnh vực vận tải và xây dựng, mang đến các giải pháp toàn diện và chất lượng cao cho khách hàng. Với kinh nghiệm dày dặn và đội ngũ chuyên gia giàu tâm huyết, chúng tôi cam kết đem đến sự hài lòng và thành công cho mọi dự án.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2023\\d5QmOOVPMDfRPxN25grg.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2023\\5N2igmAvmE3QRBKbxjtK.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Công ty CP vận tải và xây dựng Quang Minh', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Công ty CP vận tải và xây dựng Quang Minh', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\June2023\\B4unMiIyU5scUNYf1Pm9.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.map_contact', 'map_contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3709.6872849043875!2d105.83230167603712!3d21.598126367978292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313526e362849c9d%3A0xf40d37e385db4cfc!2zMTIgxJDGsOG7nW5nIELhuq9jIFPGoW4sIEjDoG5nIFbEg24gVGjhu6UwLCBUaMOgbmggcGjhu5EgVGjDoWkgTmd1ecOqbiwgVGjDoWkgTmd1ecOqbiwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1685930224580!5m2!1svi!2s\" width=\"800\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 7, 'Site'),
(13, 'site.address', 'address', 'Số 183 đường Bắc Nam, Tổ 11, Phường Gia Sàng, TP Thái Nguyên', NULL, 'text', 8, 'Site'),
(14, 'site.phone', 'phone', '0975888822', NULL, 'text', 9, 'Site'),
(15, 'site.email', 'email', 'quangminh.dp68@gmail.com', NULL, 'text', 10, 'Site'),
(16, 'site.website', 'website', NULL, NULL, 'text', 11, 'Site'),
(18, 'site.breadcrumb', 'breadcrumb', 'settings\\June2023\\ufPgZf4EEZmGwwC7DQI3.jpg', NULL, 'image', 12, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `staticdatas`
--

CREATE TABLE `staticdatas` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticdatas`
--

INSERT INTO `staticdatas` (`id`, `title`, `desc`, `icon`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cam kết chất lượng', 'Chất lượng luôn được ưu tiên trong từng hạng mục, chi tiết nhỏ nhất mang đến sự yên tâm cho khách hàng.', 'staticdatas\\June2023\\9022F4s05F6vukL1VsDd.png', 'about-home', '2023-06-22 18:00:00', '2023-06-22 18:01:43'),
(2, 'Đảm bảo đúng thời gian', 'Cam kết đúng thời gian, tiến độ đã trở thành truyền thống phong cách làm việc của Công ty CP vận tải và xây dựng Quang Minh.', 'staticdatas\\June2023\\BDNM1BSBNcbd1NdlQynN.png', 'about-home', '2023-06-22 18:02:41', '2023-06-22 18:02:41'),
(3, 'Tận tâm với khách hàng', 'Phục vụ khách hàng chu đáo như “thượng đế” trở thành kim chỉ nam hàng đầu cho mọi hành động.', 'staticdatas\\June2023\\edOECmiNIAb5EAKlndMQ.png', 'about-home', '2023-06-22 18:03:00', '2023-06-22 18:03:00'),
(4, 'Bảo hành dài hạn', 'Chính sách bảo hành dài hạn như để khẳng định giá trị cốt lõi, thương hiệu mà chúng tôi luôn hướng tới.', 'staticdatas\\June2023\\uFnoJMv9zlXVMQMkcodJ.png', 'about-home', '2023-06-22 18:03:28', '2023-06-22 18:03:28'),
(5, 'Khách hàng', '1000', 'staticdatas\\June2023\\gTtqnHI1EGjoGW1GpfPY.png', 'achievement', '2023-06-22 18:22:22', '2023-06-22 18:22:22'),
(6, 'Dự án', '3800', 'staticdatas\\June2023\\hbfy7FXQWT8YEIhyteWu.png', 'achievement', '2023-06-22 18:22:47', '2023-06-22 18:22:47'),
(7, 'Nhân viên', '500', 'staticdatas\\June2023\\VLkWCXFBok0oqnzl0GNJ.png', 'achievement', '2023-06-22 18:23:06', '2023-06-22 18:23:06'),
(8, 'Văn phòng', '2', 'staticdatas\\June2023\\aeFsfX9A9wjt5cpXetQC.png', 'achievement', '2023-06-22 18:23:24', '2023-06-22 18:23:24'),
(9, 'Thành tựu của chúng tôi', 'Chúng tôi có đội ngũ nhân viên giàu kinh nghiệm, đủ tay nghề và kiến thức để thực hiện các dự án xây dựng và vận tải một cách chuyên nghiệp, đảm bảo sự thành công và an toàn.', 'staticdatas\\June2023\\MQ1tc45g3UvrTGTUw7Gv.jpg', 'logo', '2023-06-22 18:30:00', '2023-06-22 18:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-06-01 19:44:56', '2023-06-01 19:44:56'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-06-01 19:44:56', '2023-06-01 19:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\June2023\\EVK0whsdjKYc9u3KqczL.png', NULL, '$2y$10$a9xrXCN4ZaPzlPVsmQ8A7eRyjWeNFYS5mHiN83YRv78IxdffOl65m', 'kNW4dyj7eFaUGoM44XvfvABsW9jS38K05fVVB9EUsoLK4fw1fdAT6TE3tuFU', '{\"locale\":\"vi\"}', '2023-06-01 19:44:56', '2023-06-02 00:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advises`
--
ALTER TABLE `advises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `staticdatas`
--
ALTER TABLE `staticdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advises`
--
ALTER TABLE `advises`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `staticdatas`
--
ALTER TABLE `staticdatas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
