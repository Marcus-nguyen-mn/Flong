-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 08, 2024 lúc 05:18 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `flong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://vi.wordpress.org/', '', '2024-08-07 02:14:15', '2024-08-07 02:14:15', 'Xin chào, đây là một bình luận.\nĐể bắt đầu kiểm duyệt, chỉnh sửa và xóa nhận xét, vui lòng truy cập màn hình Nhận xét trong bảng điều khiển.\nHình đại diện của người bình luận đến từ <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1723088655;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1723090455;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1723090456;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1723126465;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1723130055;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1723169656;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1723169665;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1723169670;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1723602173;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1723602234;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1723688056;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'http://localhost/flong', 'on'),
(3, 'home', 'http://localhost/flong', 'on'),
(4, 'blogname', 'Flong', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'marcusnguyen271297@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '16', 'on'),
(24, 'date_format', 'j F, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'j F, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%', 'on'),
(30, 'rewrite_rules', 'a:114:{s:10:\"product/?$\";s:27:\"index.php?post_type=product\";s:40:\"product/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:35:\"product/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:27:\"product/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:33:\"product/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"product/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"product/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"product/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"product/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"product/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"product/(.+?)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:26:\"product/(.+?)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"product/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:41:\"product/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:34:\"product/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:41:\"product/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:30:\"product/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:57:\"product-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product-category=$matches[1]&feed=$matches[2]\";s:52:\"product-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product-category=$matches[1]&feed=$matches[2]\";s:33:\"product-category/([^/]+)/embed/?$\";s:49:\"index.php?product-category=$matches[1]&embed=true\";s:45:\"product-category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product-category=$matches[1]&paged=$matches[2]\";s:27:\"product-category/([^/]+)/?$\";s:38:\"index.php?product-category=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'Flong', 'on'),
(42, 'stylesheet', 'Flong', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '12', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1738548855', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'WPLANG', '', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bình luận gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Danh mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'auto'),
(127, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1722999922;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(135, '_site_transient_timeout_browser_362d7fe3d8b2581bffa359f0eeda7106', '1723601669', 'off'),
(136, '_site_transient_browser_362d7fe3d8b2581bffa359f0eeda7106', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"127.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(137, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1723601670', 'off'),
(138, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(142, 'can_compress_scripts', '1', 'on'),
(147, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1723040075', 'off'),
(154, 'finished_updating_comment_type', '1', 'auto'),
(155, 'current_theme', 'Poha Theme', 'auto'),
(156, 'theme_mods_poha-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1722999861;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(157, 'theme_switched', '', 'auto'),
(160, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(161, 'recently_activated', 'a:0:{}', 'auto'),
(173, 'acf_first_activated_version', '6.3.5', 'on'),
(174, 'acf_site_health', '{\"version\":\"6.3.5\",\"plugin_type\":\"PRO\",\"activated\":false,\"activated_url\":\"\",\"license_type\":\"\",\"license_status\":\"\",\"subscription_expires\":\"\",\"wp_version\":\"6.6.1\",\"mysql_version\":\"5.5.5-10.4.22-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Poha Theme\",\"version\":\"1.0\",\"theme_uri\":\"http:\\/\\/pohatech.vn\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.5\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.4\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"1\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1722997434,\"last_updated\":1722997435}', 'off'),
(176, 'acf_version', '6.1.3', 'auto'),
(177, 'new_admin_email', 'marcusnguyen271297@gmail.com', 'auto'),
(191, 'acf_pro_license', '', 'off'),
(192, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:1705474325;s:6:\"expiry\";i:1737082325;s:4:\"name\";s:8:\"Personal\";s:8:\"lifetime\";b:0;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:73:\"https://www.advancedcustomfields.com/my-account/view-subscription/462688/\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1723084013;s:16:\"legacy_multisite\";b:1;}', 'on'),
(200, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1723604369', 'no'),
(201, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(223, 'theme_mods_Flong', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(226, '_transient_timeout_acf_plugin_updates', '1723173299', 'no'),
(227, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240801\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.3\";}}', 'no'),
(231, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.1\";s:7:\"version\";s:5:\"6.6.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1723086945;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}', 'off'),
(234, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"marcusnguyen271297@gmail.com\";s:7:\"version\";s:5:\"6.6.1\";s:9:\"timestamp\";i:1723000572;}', 'no'),
(272, 'product-category_children', 'a:0:{}', 'auto'),
(304, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(305, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":7,\"critical\":0}', 'on'),
(306, '_transient_timeout_acf_plugin_info_pro', '1723172903', 'off'),
(307, '_transient_acf_plugin_info_pro', 'a:19:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"6.3.5\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:155:\"<a href=\"https://wpengine.com/?utm_source=wordpress.org&utm_medium=referral&utm_campaign=plugin_directory&utm_content=advanced_custom_fields\">WP Engine</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:6:\"tested\";s:5:\"6.6.1\";s:5:\"added\";s:10:\"2024-07-23\";s:12:\"last_updated\";s:10:\"2024-08-01\";s:11:\"description\";s:5268:\"<p>Advanced Custom Fields (ACF) turns WordPress sites into a fully-fledged content management system by giving you all the tools to do more with your data.</p>\n\n<p>Use the ACF plugin to take full control of your WordPress edit screens, custom field data, and more.</p>\n\n<p>https://www.youtube.com/watch?v=9C6_roqghZQ&rel=0</p>\n\n<p><strong>Add fields on demand.</strong></p>\n<p>The ACF field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons! Whether it\'s something simple like adding an “author” field to a book review post, or something more complex like the structured data needs of an ecommerce site or marketplace, ACF makes adding fields to your content model easy.</p>\n\n<p><strong>Add them anywhere.</strong></p>\n<p>Fields can be added all over WordPress including posts, pages, users, taxonomy terms, media, comments and even custom options pages! It couldn\'t be simpler to bring structure to the WordPress content creation experience.</p>\n\n<p><strong>Show them everywhere.</strong></p>\n<p>Load and display your custom field values in any theme template file with our hassle-free, developer friendly functions! Whether you need to display a single value or generate content based on a more complex query, the out-of-the-box functions of ACF make templating a dream for developers of all levels of experience.</p>\n\n<p><strong>Any Content, Fast.</strong></p>\n<p>Turning WordPress into a true content management system is not just about custom fields. Creating new custom post types and taxonomies is an essential part of building custom WordPress sites. Registering post types and taxonomies is now possible right in the ACF UI, speeding up the content modeling workflow without the need to touch code or use another plugin.</p>\n\n<p><strong>Simply beautiful and intentionally accessible.</strong></p>\n<p>For content creators and those tasked with data entry, the field user experience is as intuitive as they could desire while fitting neatly into the native WordPress experience. Accessibility standards are regularly reviewed and applied, ensuring ACF is able to empower as close to anyone as possible.</p>\n\n<p><strong>Documentation and developer guides.</strong></p>\n<p>Over 10 plus years of vibrant community contribution alongside an ongoing commitment to clear documentation means that you\'ll be able to find the guidance you need to build what you want.</p>\n\n<h4>Features</h4>\n<ul>\n<li>Simple & Intuitive</li>\n<li>Powerful Functions</li>\n<li>Over 30 Field Types</li>\n<li>Extensive Documentation</li>\n<li>Millions of Users</li>\n</ul>\n\n<h4>Links</h4>\n<ul>\n<li><a href=\"https://www.advancedcustomfields.com/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Website</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Documentation</a></li>\n<li><a href=\"https://support.advancedcustomfields.com\">Support</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF PRO</a></li>\n</ul>\n\n<h4>PRO</h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility. The ACF PRO plugin features:</p>\n\n<ul>\n<li>The <a href=\"https://www.advancedcustomfields.com/resources/repeater/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Repeater Field</a> allows you to create a set of sub fields which can be repeated again, and again, and again.</li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/blocks/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF Blocks</a>, a powerful PHP-based framework for developing custom block types for the WordPress Block Editor (aka Gutenberg).</li>\n<li>Define, create, and manage content with the <a href=\"https://www.advancedcustomfields.com/resources/flexible-content/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Flexible Content Field</a>, which provides for multiple layout and sub field options.</li>\n<li>Use the <a href=\"https://www.advancedcustomfields.com/resources/options-page/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Options Page</a> feature to add custom admin pages to edit ACF fields.</li>\n<li>Build fully customisable image galleries with the <a href=\"https://www.advancedcustomfields.com/resources/gallery/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Gallery Field</a>.</li>\n<li>Unlock a more efficient workflow for managing field settings by reusing existing fields and field groups on demand with the <a href=\"https://www.advancedcustomfields.com/resources/clone/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Clone Field</a>.</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Upgrade to ACF PRO</a></p>\";s:12:\"installation\";s:649:\"<p>From your WordPress dashboard</p>\n\n<ol>\n<li><strong>Visit</strong> Plugins > Add New</li>\n<li><strong>Search</strong> for \"Advanced Custom Fields\" or “ACF”</li>\n<li><strong>Install and Activate</strong> Advanced Custom Fields from your Plugins page</li>\n<li><strong>Click</strong> on the new menu item \"ACF\" and create your first custom field group, or register a custom post type or taxonomy.</li>\n<li><strong>Read</strong> the documentation to <a href=\"https://www.advancedcustomfields.com/resources/getting-started-with-acf/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">get started</a></li>\n</ol>\";s:9:\"changelog\";s:2516:\"<h4>6.3.5</h4>\n<p><em>Release Date 1st August 2024</em></p>\n\n<ul>\n<li>Fix - The ACF Shortcode now correctly outputs a comma separated list of values for arrays</li>\n<li>Fix - ACF Blocks rendered in auto mode now correctly re-render their previews after editing fields</li>\n<li>Fix - ACF Block validation no longer raises required validation messages if HTML will automatically select the first value when rendered</li>\n<li>Fix - ACF Block validation no longer raises required validation messages if a default value will be rendered as the field value</li>\n<li>Fix - ACF Block validation no longer raises required validation messages for fields hidden by conditional logic when adding a new block</li>\n</ul>\n\n<h4>6.3.4</h4>\n<p><em>Release Date 18th July 2024</em></p>\n\n<ul>\n<li>Security Fix - The ACF shortcode now prevents access to fields from different private posts by default. View the <a href=\"https://www.advancedcustomfields.com/blog/acf-6-3-4\">release notes</a> for more information</li>\n<li>Fix - Users without the <code>edit_posts</code> capability but with custom capabilities for a editing a custom post type, can now correctly load field groups loaded via conditional location rules</li>\n<li>Fix - Block validation no longer validates a field’s sub fields on page load, only on edit. This resolves inconsistent validation errors on page load or when first adding a block</li>\n<li>Fix - Deactivating an ACF PRO license will now remove the license key even if the server call fails</li>\n<li>Fix - Field types returning objects no longer cause PHP warnings and errors when output via <code>the_field</code>, <code>the_sub_field</code> or the ACF shortcode, or when retrieved by a <code>get_</code> function with the escape html parameter set</li>\n<li>Fix - Server side errors during block rendering now gracefully displays an error to the editor</li>\n</ul>\n\n<h4>6.3.3</h4>\n<p><em>Release Date 27th June 2024</em></p>\n\n<ul>\n<li>Enhancement - All dashicons are now available to the icon picker field type</li>\n<li>Fix - The True/False field now correctly shows it’s description message beside the switch when using the Stylized UI setting</li>\n<li>Fix - Conditional logic values now correctly load options when loaded over AJAX</li>\n<li>Fix - ACF PRO will no longer trigger license validation calls when loading a front-end page</li>\n<li>i18n - Fixed an untranslatable string on Option Page previews</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/changelog/\">View the full changelog</a></p>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:201:{i:0;s:5:\"6.3.4\";i:1;s:5:\"6.3.3\";i:2;s:7:\"6.3.2.1\";i:3;s:5:\"6.3.2\";i:4;s:7:\"6.3.1.2\";i:5;s:7:\"6.3.1.1\";i:6;s:5:\"6.3.1\";i:7;s:7:\"6.3.0.1\";i:8;s:5:\"6.3.0\";i:9;s:11:\"6.3.0-beta1\";i:10;s:6:\"6.2.10\";i:11;s:5:\"6.2.9\";i:12;s:5:\"6.2.8\";i:13;s:9:\"6.2.8-RC1\";i:14;s:5:\"6.2.7\";i:15;s:7:\"6.2.6.1\";i:16;s:5:\"6.2.6\";i:17;s:5:\"6.2.5\";i:18;s:5:\"6.2.4\";i:19;s:5:\"6.2.3\";i:20;s:5:\"6.2.2\";i:21;s:7:\"6.2.1.1\";i:22;s:5:\"6.2.1\";i:23;s:5:\"6.2.0\";i:24;s:9:\"6.2.0-RC1\";i:25;s:11:\"6.2.0-beta1\";i:26;s:5:\"6.1.8\";i:27;s:5:\"6.1.7\";i:28;s:5:\"6.1.6\";i:29;s:5:\"6.1.5\";i:30;s:5:\"6.1.4\";i:31;s:5:\"6.1.3\";i:32;s:5:\"6.1.2\";i:33;s:5:\"6.1.1\";i:34;s:5:\"6.1.0\";i:35;s:11:\"6.1.0-beta1\";i:36;s:12:\"6.1.0-alpha1\";i:37;s:5:\"6.0.7\";i:38;s:5:\"6.0.6\";i:39;s:5:\"6.0.5\";i:40;s:5:\"6.0.4\";i:41;s:5:\"6.0.3\";i:42;s:5:\"6.0.2\";i:43;s:5:\"6.0.1\";i:44;s:5:\"6.0.0\";i:45;s:9:\"6.0.0-RC3\";i:46;s:9:\"6.0.0-RC2\";i:47;s:9:\"6.0.0-RC1\";i:48;s:11:\"6.0.0-beta1\";i:49;s:12:\"6.0.0-alpha4\";i:50;s:12:\"6.0.0-alpha3\";i:51;s:12:\"6.0.0-alpha2\";i:52;s:12:\"6.0.0-alpha1\";i:53;s:6:\"5.12.6\";i:54;s:6:\"5.12.5\";i:55;s:6:\"5.12.4\";i:56;s:6:\"5.12.3\";i:57;s:6:\"5.12.2\";i:58;s:6:\"5.12.1\";i:59;s:4:\"5.12\";i:60;s:8:\"5.12-RC1\";i:61;s:10:\"5.12-beta2\";i:62;s:10:\"5.12-beta1\";i:63;s:6:\"5.11.4\";i:64;s:6:\"5.11.3\";i:65;s:6:\"5.11.2\";i:66;s:6:\"5.11.1\";i:67;s:4:\"5.11\";i:68;s:8:\"5.11-RC1\";i:69;s:6:\"5.10.2\";i:70;s:6:\"5.10.1\";i:71;s:10:\"5.10.0-RC2\";i:72;s:10:\"5.10.0-RC1\";i:73;s:4:\"5.10\";i:74;s:5:\"5.9.9\";i:75;s:5:\"5.9.8\";i:76;s:5:\"5.9.7\";i:77;s:5:\"5.9.6\";i:78;s:5:\"5.9.5\";i:79;s:5:\"5.9.4\";i:80;s:5:\"5.9.3\";i:81;s:5:\"5.9.2\";i:82;s:5:\"5.9.1\";i:83;s:5:\"5.9.0\";i:84;s:9:\"5.9.0-RC1\";i:85;s:11:\"5.9.0-beta5\";i:86;s:11:\"5.9.0-beta4\";i:87;s:11:\"5.9.0-beta3\";i:88;s:11:\"5.9.0-beta2\";i:89;s:11:\"5.9.0-beta1\";i:90;s:6:\"5.8.14\";i:91;s:6:\"5.8.13\";i:92;s:6:\"5.8.12\";i:93;s:6:\"5.8.11\";i:94;s:5:\"5.8.9\";i:95;s:5:\"5.8.8\";i:96;s:5:\"5.8.7\";i:97;s:5:\"5.8.6\";i:98;s:5:\"5.8.5\";i:99;s:5:\"5.8.4\";i:100;s:5:\"5.8.3\";i:101;s:5:\"5.8.2\";i:102;s:5:\"5.8.1\";i:103;s:5:\"5.8.0\";i:104;s:9:\"5.8.0-RC2\";i:105;s:9:\"5.8.0-RC1\";i:106;s:13:\"5.8.0-beta4.1\";i:107;s:11:\"5.8.0-beta4\";i:108;s:11:\"5.8.0-beta3\";i:109;s:11:\"5.8.0-beta2\";i:110;s:11:\"5.8.0-beta1\";i:111;s:6:\"5.7.13\";i:112;s:6:\"5.7.12\";i:113;s:6:\"5.7.10\";i:114;s:5:\"5.7.9\";i:115;s:5:\"5.7.8\";i:116;s:5:\"5.7.7\";i:117;s:5:\"5.7.6\";i:118;s:5:\"5.7.5\";i:119;s:5:\"5.7.4\";i:120;s:5:\"5.7.3\";i:121;s:5:\"5.7.2\";i:122;s:5:\"5.7.1\";i:123;s:5:\"5.7.0\";i:124;s:6:\"5.6.10\";i:125;s:5:\"5.6.9\";i:126;s:5:\"5.6.8\";i:127;s:5:\"5.6.7\";i:128;s:5:\"5.6.6\";i:129;s:5:\"5.6.5\";i:130;s:5:\"5.6.4\";i:131;s:5:\"5.6.3\";i:132;s:5:\"5.6.2\";i:133;s:5:\"5.6.1\";i:134;s:5:\"5.6.0\";i:135;s:9:\"5.6.0-RC2\";i:136;s:9:\"5.6.0-RC1\";i:137;s:11:\"5.6.0-beta2\";i:138;s:11:\"5.6.0-beta1\";i:139;s:6:\"5.5.14\";i:140;s:6:\"5.5.13\";i:141;s:6:\"5.5.12\";i:142;s:6:\"5.5.11\";i:143;s:6:\"5.5.10\";i:144;s:5:\"5.5.9\";i:145;s:5:\"5.5.7\";i:146;s:5:\"5.5.5\";i:147;s:5:\"5.5.3\";i:148;s:5:\"5.5.2\";i:149;s:5:\"5.5.1\";i:150;s:5:\"5.5.0\";i:151;s:5:\"5.4.8\";i:152;s:5:\"5.4.7\";i:153;s:5:\"5.4.6\";i:154;s:5:\"5.4.5\";i:155;s:5:\"5.4.4\";i:156;s:5:\"5.4.3\";i:157;s:5:\"5.4.2\";i:158;s:5:\"5.4.1\";i:159;s:5:\"5.4.0\";i:160;s:6:\"5.3.10\";i:161;s:5:\"5.3.9\";i:162;s:5:\"5.3.8\";i:163;s:5:\"5.3.7\";i:164;s:5:\"5.3.6\";i:165;s:5:\"5.3.5\";i:166;s:5:\"5.3.4\";i:167;s:5:\"5.3.3\";i:168;s:5:\"5.3.2\";i:169;s:5:\"5.3.1\";i:170;s:5:\"5.3.0\";i:171;s:5:\"5.2.9\";i:172;s:5:\"5.2.8\";i:173;s:5:\"5.2.7\";i:174;s:5:\"5.2.6\";i:175;s:5:\"5.2.5\";i:176;s:5:\"5.2.4\";i:177;s:5:\"5.2.3\";i:178;s:5:\"5.2.2\";i:179;s:5:\"5.2.1\";i:180;s:5:\"5.2.0\";i:181;s:5:\"5.1.9\";i:182;s:5:\"5.1.8\";i:183;s:5:\"5.1.7\";i:184;s:5:\"5.1.6\";i:185;s:5:\"5.1.5\";i:186;s:5:\"5.1.4\";i:187;s:5:\"5.1.3\";i:188;s:5:\"5.1.2\";i:189;s:5:\"5.1.1\";i:190;s:5:\"5.1.0\";i:191;s:5:\"5.0.9\";i:192;s:5:\"5.0.8\";i:193;s:5:\"5.0.7\";i:194;s:5:\"5.0.6\";i:195;s:5:\"5.0.5\";i:196;s:5:\"5.0.4\";i:197;s:5:\"5.0.3\";i:198;s:5:\"5.0.2\";i:199;s:5:\"5.0.1\";i:200;s:5:\"5.0.0\";}s:13:\"release_dates\";a:88:{s:5:\"6.3.5\";s:8:\"20240801\";s:5:\"6.3.4\";s:8:\"20240718\";s:5:\"6.3.3\";s:8:\"20240627\";s:7:\"6.3.2.1\";s:8:\"20240624\";s:5:\"6.3.2\";s:8:\"20240624\";s:7:\"6.3.1.2\";s:8:\"20240606\";s:7:\"6.3.1.1\";s:8:\"20240606\";s:5:\"6.3.1\";s:8:\"20240604\";s:7:\"6.3.0.1\";s:8:\"20240522\";s:5:\"6.3.0\";s:8:\"20240522\";s:6:\"6.2.10\";s:8:\"20240515\";s:5:\"6.2.9\";s:8:\"20240408\";s:5:\"6.2.8\";s:8:\"20240402\";s:5:\"6.2.7\";s:8:\"20240227\";s:7:\"6.2.6.1\";s:8:\"20240207\";s:5:\"6.2.6\";s:8:\"20240206\";s:5:\"6.2.5\";s:8:\"20240116\";s:5:\"6.2.4\";s:8:\"20231128\";s:5:\"6.2.3\";s:8:\"20231115\";s:5:\"6.2.2\";s:8:\"20231025\";s:7:\"6.2.1.1\";s:8:\"20230908\";s:5:\"6.2.1\";s:8:\"20230907\";s:5:\"6.2.0\";s:8:\"20230809\";s:5:\"6.1.8\";s:8:\"20230803\";s:5:\"6.1.7\";s:8:\"20230627\";s:5:\"6.1.6\";s:8:\"20230504\";s:5:\"6.1.5\";s:8:\"20230502\";s:5:\"6.1.4\";s:8:\"20230412\";s:5:\"6.1.3\";s:8:\"20230405\";s:5:\"6.1.2\";s:8:\"20230404\";s:5:\"6.1.1\";s:8:\"20230403\";s:5:\"6.1.0\";s:8:\"20230403\";s:5:\"6.0.7\";s:8:\"20230118\";s:5:\"6.0.6\";s:8:\"20221213\";s:5:\"6.0.5\";s:8:\"20221118\";s:5:\"6.0.4\";s:8:\"20221108\";s:5:\"6.0.3\";s:8:\"20221018\";s:5:\"6.0.2\";s:8:\"20220929\";s:5:\"6.0.1\";s:8:\"20220928\";s:5:\"6.0.0\";s:8:\"20220921\";s:6:\"5.12.6\";s:8:\"20230504\";s:6:\"5.12.5\";s:8:\"20230403\";s:6:\"5.12.4\";s:8:\"20221018\";s:6:\"5.12.3\";s:8:\"20220714\";s:6:\"5.12.2\";s:8:\"20220406\";s:6:\"5.12.1\";s:8:\"20220323\";s:4:\"5.12\";s:8:\"20220223\";s:6:\"5.11.4\";s:8:\"20211202\";s:6:\"5.11.3\";s:8:\"20211124\";s:6:\"5.11.2\";s:8:\"20211124\";s:6:\"5.11.1\";s:8:\"20211118\";s:4:\"5.11\";s:8:\"20211110\";s:6:\"5.10.2\";s:8:\"20210831\";s:6:\"5.10.1\";s:8:\"20210826\";s:4:\"5.10\";s:8:\"20210825\";s:5:\"5.9.9\";s:8:\"20210720\";s:5:\"5.9.8\";s:8:\"20210708\";s:5:\"5.9.7\";s:8:\"20210622\";s:5:\"5.9.6\";s:8:\"20210520\";s:5:\"5.9.5\";s:8:\"20210211\";s:5:\"5.9.4\";s:8:\"20210114\";s:5:\"5.9.3\";s:8:\"20201103\";s:5:\"5.9.2\";s:8:\"20201029\";s:5:\"5.9.1\";s:8:\"20200908\";s:5:\"5.9.0\";s:8:\"20200817\";s:6:\"5.8.14\";s:8:\"20200813\";s:6:\"5.8.13\";s:8:\"20200810\";s:6:\"5.8.12\";s:8:\"20200610\";s:6:\"5.8.11\";s:8:\"20200512\";s:6:\"5.8.10\";s:8:\"20200512\";s:5:\"5.8.9\";s:8:\"20200326\";s:5:\"5.8.8\";s:8:\"20200304\";s:5:\"5.8.7\";s:8:\"20191112\";s:5:\"5.8.6\";s:8:\"20191024\";s:5:\"5.8.5\";s:8:\"20191008\";s:5:\"5.8.4\";s:8:\"20190903\";s:5:\"5.8.3\";s:8:\"20190807\";s:5:\"5.8.2\";s:8:\"20190715\";s:5:\"5.8.1\";s:8:\"20190603\";s:5:\"5.8.0\";s:8:\"20190508\";s:6:\"5.7.13\";s:8:\"20190306\";s:6:\"5.7.12\";s:8:\"20190215\";s:6:\"5.7.11\";s:8:\"20190211\";s:6:\"5.7.10\";s:8:\"20190116\";s:5:\"5.7.9\";s:8:\"20181217\";s:5:\"5.7.8\";s:8:\"20181207\";s:5:\"5.7.7\";s:8:\"20181001\";s:5:\"5.7.6\";s:8:\"20180912\";}}', 'off'),
(312, '_site_transient_timeout_theme_roots', '1723088745', 'off'),
(313, '_site_transient_theme_roots', 'a:4:{s:5:\"Flong\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(314, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1723086945;s:7:\"checked\";a:4:{s:5:\"Flong\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.2.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.5.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.8.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(315, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1723086945;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.6.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240801\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'off'),
(316, '_site_transient_timeout_wp_theme_files_patterns-54e7c92656ecfbfe6be4995f2eaa268b', '1723088864', 'off'),
(317, '_site_transient_wp_theme_files_patterns-54e7c92656ecfbfe6be4995f2eaa268b', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1722997541:1'),
(15, 12, '_wp_page_template', 'page-templates/home-page.php'),
(18, 16, '_edit_last', '1'),
(19, 16, '_edit_lock', '1723013666:1'),
(20, 16, '_wp_page_template', 'page-templates/products.php'),
(21, 18, '_edit_last', '1'),
(22, 18, '_edit_lock', '1723086520:1'),
(23, 19, '_wp_attached_file', '2024/08/xe-nang-tay.png'),
(24, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:198;s:6:\"height\";i:198;s:4:\"file\";s:23:\"2024/08/xe-nang-tay.png\";s:8:\"filesize\";i:20381;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"xe-nang-tay-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17064;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 18, '_thumbnail_id', '19'),
(26, 20, '_edit_last', '1'),
(27, 20, '_edit_lock', '1723004113:1'),
(28, 20, '_thumbnail_id', '19'),
(29, 21, '_edit_last', '1'),
(30, 21, '_edit_lock', '1723004127:1'),
(31, 21, '_thumbnail_id', '19'),
(32, 22, '_edit_last', '1'),
(33, 22, '_edit_lock', '1723004136:1'),
(34, 22, '_thumbnail_id', '19'),
(35, 23, '_edit_last', '1'),
(36, 23, '_edit_lock', '1723004158:1'),
(37, 23, '_thumbnail_id', '19'),
(38, 24, '_edit_last', '1'),
(39, 24, '_edit_lock', '1723004165:1'),
(40, 24, '_thumbnail_id', '19'),
(41, 25, '_edit_last', '1'),
(42, 25, '_edit_lock', '1723004174:1'),
(43, 25, '_thumbnail_id', '19'),
(44, 26, '_edit_last', '1'),
(45, 26, '_edit_lock', '1723004179:1'),
(46, 26, '_thumbnail_id', '19'),
(47, 27, '_edit_last', '1'),
(48, 27, '_edit_lock', '1723004184:1'),
(49, 27, '_thumbnail_id', '19'),
(50, 28, '_edit_last', '1'),
(51, 28, '_edit_lock', '1723004195:1'),
(52, 28, '_thumbnail_id', '19'),
(53, 29, '_edit_last', '1'),
(54, 29, '_edit_lock', '1723004201:1'),
(55, 29, '_thumbnail_id', '19'),
(56, 30, '_edit_last', '1'),
(57, 30, '_edit_lock', '1723004216:1'),
(58, 30, '_thumbnail_id', '19'),
(59, 31, '_edit_last', '1'),
(60, 31, '_edit_lock', '1723004225:1'),
(61, 31, '_thumbnail_id', '19'),
(62, 32, '_edit_last', '1'),
(63, 32, '_edit_lock', '1723004233:1'),
(64, 32, '_thumbnail_id', '19'),
(65, 33, '_edit_last', '1'),
(66, 33, '_edit_lock', '1723004241:1'),
(67, 33, '_thumbnail_id', '19'),
(68, 34, '_edit_last', '1'),
(69, 34, '_edit_lock', '1723004246:1'),
(70, 34, '_thumbnail_id', '19'),
(71, 35, '_edit_last', '1'),
(72, 35, '_edit_lock', '1723004251:1'),
(73, 35, '_thumbnail_id', '19'),
(74, 36, '_edit_last', '1'),
(75, 36, '_edit_lock', '1723005977:1'),
(76, 36, '_thumbnail_id', '19'),
(77, 38, '_edit_last', '1'),
(78, 38, '_edit_lock', '1723017333:1'),
(79, 44, '_wp_attached_file', '2024/08/product.png'),
(80, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:474;s:4:\"file\";s:19:\"2024/08/product.png\";s:8:\"filesize\";i:169245;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"product-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46476;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"product-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 45, '_wp_attached_file', '2024/08/product-1.png'),
(82, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:474;s:4:\"file\";s:21:\"2024/08/product-1.png\";s:8:\"filesize\";i:169245;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46476;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 46, '_wp_attached_file', '2024/08/product-2.png'),
(84, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:474;s:4:\"file\";s:21:\"2024/08/product-2.png\";s:8:\"filesize\";i:169245;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product-2-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46476;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 47, '_wp_attached_file', '2024/08/product-3.png'),
(86, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:474;s:4:\"file\";s:21:\"2024/08/product-3.png\";s:8:\"filesize\";i:169245;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product-3-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46476;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 18, 'image_gallery', 'a:4:{i:0;s:2:\"44\";i:1;s:2:\"45\";i:2;s:2:\"46\";i:3;s:2:\"47\";}'),
(88, 18, '_image_gallery', 'field_66b328164739f'),
(89, 18, 'short_desc', ''),
(90, 18, '_short_desc', 'field_66b3283b473a0'),
(91, 18, 'product_feature', ''),
(92, 18, '_product_feature', 'field_66b32858473a1'),
(93, 18, 'product_highlights', ''),
(94, 18, '_product_highlights', 'field_66b32892473a2'),
(95, 18, 'specifications', ''),
(96, 18, '_specifications', 'field_66b328cd473a3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-08-07 02:14:15', '2024-08-07 02:14:15', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2024-08-07 02:14:15', '2024-08-07 02:14:15', '', 0, 'http://localhost/flong/?p=1', 0, 'post', '', 1),
(4, 0, '2024-08-07 02:14:18', '2024-08-07 02:14:18', '<!-- wp:page-list /-->', 'Điều hướng', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-08-07 02:14:18', '2024-08-07 02:14:18', '', 0, 'http://localhost/flong/2024/08/07/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-08-07 02:14:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-08-07 02:14:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/flong/?p=5', 0, 'post', '', 0),
(7, 1, '2024-08-07 02:24:00', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-08-07 02:24:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/flong/?post_type=acf-field-group&p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2024-08-07 02:24:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-08-07 02:24:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/flong/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0),
(12, 1, '2024-08-07 02:28:03', '2024-08-07 02:28:03', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2024-08-07 02:28:03', '2024-08-07 02:28:03', '', 0, 'http://localhost/flong/?page_id=12', 0, 'page', '', 0),
(13, 1, '2024-08-07 02:28:03', '2024-08-07 02:28:03', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-08-07 02:28:03', '2024-08-07 02:28:03', '', 12, 'http://localhost/flong/?p=13', 0, 'revision', '', 0),
(15, 1, '2024-08-07 03:00:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-08-07 03:00:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/flong/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2024-08-07 03:38:40', '2024-08-07 03:38:40', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2024-08-07 06:56:47', '2024-08-07 06:56:47', '', 0, 'http://localhost/flong/?page_id=16', 0, 'page', '', 0),
(17, 1, '2024-08-07 03:38:40', '2024-08-07 03:38:40', '', 'Sản phẩm', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-08-07 03:38:40', '2024-08-07 03:38:40', '', 16, 'http://localhost/flong/?p=17', 0, 'revision', '', 0),
(18, 1, '2024-08-07 04:17:25', '2024-08-07 04:17:25', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay', '', '', '2024-08-08 03:08:39', '2024-08-08 03:08:39', '', 0, 'http://localhost/flong/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2024-08-07 04:17:20', '2024-08-07 04:17:20', '', 'xe-nang-tay', '', 'inherit', 'open', 'closed', '', 'xe-nang-tay', '', '', '2024-08-07 04:17:20', '2024-08-07 04:17:20', '', 18, 'http://localhost/flong/wp-content/uploads/2024/08/xe-nang-tay.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2024-08-07 04:17:35', '2024-08-07 04:17:35', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-2', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2024-08-07 04:17:50', '2024-08-07 04:17:50', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-2-2', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2024-08-07 04:17:58', '2024-08-07 04:17:58', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-2-3', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2024-08-07 04:18:17', '2024-08-07 04:18:17', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-3', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=23', 0, 'product', '', 0),
(24, 1, '2024-08-07 04:18:27', '2024-08-07 04:18:27', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-4', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=24', 0, 'product', '', 0),
(25, 1, '2024-08-07 04:18:36', '2024-08-07 04:18:36', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-5', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2024-08-07 04:18:42', '2024-08-07 04:18:42', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-6', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2024-08-07 04:18:47', '2024-08-07 04:18:47', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-7', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2024-08-07 04:18:57', '2024-08-07 04:18:57', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-8', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2024-08-07 04:19:03', '2024-08-07 04:19:03', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-9', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2024-08-07 04:19:19', '2024-08-07 04:19:19', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-10', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2024-08-07 04:19:28', '2024-08-07 04:19:28', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-11', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2024-08-07 04:19:34', '2024-08-07 04:19:34', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-12', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2024-08-07 04:19:43', '2024-08-07 04:19:43', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-13', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2024-08-07 04:19:49', '2024-08-07 04:19:49', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-14', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2024-08-07 04:19:54', '2024-08-07 04:19:54', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-15', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2024-08-07 04:20:01', '2024-08-07 04:20:01', '', 'Xe nâng tay', 'Lorem ipsum dolor sit amet consectetur.', 'publish', 'open', 'closed', '', 'xe-nang-tay-16', '', '', '2024-08-07 06:52:29', '2024-08-07 06:52:29', '', 0, 'http://localhost/flong/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2024-08-07 06:51:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2024-08-07 06:51:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/flong/?post_type=product&p=37', 0, 'product', '', 0),
(38, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình sản phẩm', 'cau-hinh-san-pham', 'publish', 'closed', 'closed', '', 'group_66b3281610d81', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 0, 'http://localhost/flong/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:19:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:12:\"preview_size\";s:6:\"medium\";}', 'Danh sách hình ảnh', 'image_gallery', 'publish', 'closed', 'closed', '', 'field_66b328164739f', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 38, 'http://localhost/flong/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Mô tả ngắn sản phẩm', 'short_desc', 'publish', 'closed', 'closed', '', 'field_66b3283b473a0', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 38, 'http://localhost/flong/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Đặc điểm sản phẩm', 'product_feature', 'publish', 'closed', 'closed', '', 'field_66b32858473a1', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 38, 'http://localhost/flong/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Đặc điểm nổi bật', 'product_highlights', 'publish', 'closed', 'closed', '', 'field_66b32892473a2', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 38, 'http://localhost/flong/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2024-08-07 07:57:53', '2024-08-07 07:57:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Thông số kỹ thuật', 'specifications', 'publish', 'closed', 'closed', '', 'field_66b328cd473a3', '', '', '2024-08-07 07:57:53', '2024-08-07 07:57:53', '', 38, 'http://localhost/flong/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2024-08-07 07:58:31', '2024-08-07 07:58:31', '', 'product', '', 'inherit', 'open', 'closed', '', 'product', '', '', '2024-08-07 07:58:35', '2024-08-07 07:58:35', '', 18, 'http://localhost/flong/wp-content/uploads/2024/08/product.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2024-08-07 07:58:50', '2024-08-07 07:58:50', '', 'product', '', 'inherit', 'open', 'closed', '', 'product-2', '', '', '2024-08-07 07:58:51', '2024-08-07 07:58:51', '', 18, 'http://localhost/flong/wp-content/uploads/2024/08/product-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2024-08-07 07:59:00', '2024-08-07 07:59:00', '', 'product', '', 'inherit', 'open', 'closed', '', 'product-3', '', '', '2024-08-07 07:59:03', '2024-08-07 07:59:03', '', 18, 'http://localhost/flong/wp-content/uploads/2024/08/product-2.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2024-08-07 07:59:02', '2024-08-07 07:59:02', '', 'product', '', 'inherit', 'open', 'closed', '', 'product-4', '', '', '2024-08-07 07:59:02', '2024-08-07 07:59:02', '', 18, 'http://localhost/flong/wp-content/uploads/2024/08/product-3.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Sản phẩm', 'san-pham', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product-category', '', 0, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminFlong'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"a3d0ab509a6f10e0d73d20d9eb59d8037915f2e5a733c7b73c64b9954cc03afd\";a:4:{s:10:\"expiration\";i:1723169664;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36\";s:5:\"login\";i:1722996864;}s:64:\"7661af4b9da3d4706b44fdca56233a250b8073ebf172e3728356fb6a66579714\";a:4:{s:10:\"expiration\";i:1723172366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36\";s:5:\"login\";i:1722999566;}s:64:\"48aa6144d1652a73d8269f25866d4d6ade43ec7ca0151a2f5f7c2d109fd7bce9\";a:4:{s:10:\"expiration\";i:1723259302;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36\";s:5:\"login\";i:1723086502;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1723004240');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminFlong', '$P$BLIiyFwmnuo0GdRYk4bPNrXsaJUPk61', 'adminflong', 'marcusnguyen271297@gmail.com', 'http://localhost/flong', '2024-08-07 02:14:15', '', 0, 'adminFlong');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
