-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2025 at 01:01 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u605342069_forli_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2025-05-13 11:14:31', '2025-05-13 14:14:31', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visitá en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://forli.local', 'yes'),
(2, 'home', 'https://forli.local', 'yes'),
(3, 'blogname', 'Forli', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tomascostapp@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:98:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:27:\"maintenance/maintenance.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oneonetwenty', 'yes'),
(41, 'stylesheet', 'oneonetwenty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '58975', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'on'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Argentina/Buenos_Aires', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'on'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1762697671', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'off'),
(103, 'WPLANG', 'es_AR', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:16:\"custom-sidebar-1\";a:0:{}s:16:\"custom-sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:8:{i:1749734071;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1749737671;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1749737767;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1749737768;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1749950645;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1750175864;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1750256071;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'off'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1749700945;s:7:\"checked\";a:2:{s:12:\"oneonetwenty\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.2.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'off'),
(134, 'nonce_key', '5lhOGa#@3|=ZjMF1/V3w5*<w)&{|1AG<m!-yu#j9fU=(B+t@vI&8Mx^f7$*,Ae}.', 'no'),
(135, 'nonce_salt', '/K9J<R0 <L)joO.f^iJ{.`?-m7e8|VMyp=!gMB!u.^RQB4Ck,M!|b{&)DtMT8.(y', 'no'),
(138, 'secure_auth_key', 'Tf1!-f(ixpxWbw*.[me=W}k[Vclse 1kn(HhG#>jfpF=k?&T3(s}kG@1,KH?#S(L', 'no'),
(139, 'secure_auth_salt', '$[tHe2my=cFD*2u#HM$RmTeqh--5G*Jd}]1Q==4E(E&a3C[*&3/X)UJd%,eQ?R.=', 'no'),
(140, 'logged_in_key', '!?~{TsbPial0;UEv|KTY,b@4g>*ImXL)?Lr2Jq?,AIv&,s{([;7 yD#W].Zb12J2', 'no'),
(141, 'logged_in_salt', 'Q;W[hP{gb>~jugGPsI>DP`&Qc`KFNu;r|*6l1N;Ft@AT~@B{8 YM%ResJ[|.@Z[k', 'no'),
(167, 'auth_key', ']TP#Rel&beX]I)pazeg]G/ VH4lNYpPzfqO*S4gDdkmp-_3RIw~ci68}Ob?V!p_b', 'no'),
(168, 'auth_salt', 'W#%3oTwO7y]U BAtp$c_JDK }giLb]/B*kqSSM#/,6 8gp]^gR$Z+!Z~kF0T($!n', 'no'),
(169, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1747145805;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(170, 'current_theme', 'Oneonetwenty', 'yes'),
(171, 'theme_mods_oneonetwenty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(173, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(174, 'recently_activated', 'a:0:{}', 'off'),
(177, 'finished_updating_comment_type', '1', 'yes'),
(178, 'acf_first_activated_version', '6.2.9', 'yes'),
(179, 'acf_version', '6.4.1', 'yes'),
(186, 'db_upgraded', '', 'on'),
(190, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1749733253;s:15:\"version_checked\";s:5:\"6.8.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.8.1\";s:7:\"updated\";s:19:\"2025-06-10 02:16:41\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.1/es_AR.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(192, 'can_compress_scripts', '1', 'on'),
(195, 'maintenance_meta', 'a:4:{s:13:\"first_version\";s:4:\"4.06\";s:13:\"first_install\";i:1747151908;s:11:\"old_version\";b:0;s:20:\"hide_welcome_pointer\";b:1;}', 'auto'),
(196, 'mtnc_db_version', '2', 'auto'),
(197, 'maintenance_options', 'a:26:{s:5:\"state\";i:1;s:13:\"exclude_pages\";a:2:{s:4:\"post\";a:0:{}s:4:\"page\";a:0:{}}s:10:\"page_title\";s:30:\"Site is undergoing maintenance\";s:7:\"heading\";s:22:\"Maintenance mode is on\";s:11:\"description\";s:57:\"Site will be available soon. Thank you for your patience!\";s:11:\"footer_text\";s:13:\"© Forli 2025\";s:14:\"show_some_love\";b:0;s:8:\"is_login\";b:1;s:10:\"logo_width\";s:3:\"220\";s:11:\"logo_height\";s:0:\"\";s:4:\"logo\";s:1:\"0\";s:11:\"retina_logo\";s:1:\"0\";s:7:\"body_bg\";s:2:\"59\";s:17:\"bg_image_portrait\";s:1:\"0\";s:13:\"preloader_img\";s:1:\"0\";s:13:\"body_bg_color\";s:7:\"#111111\";s:10:\"font_color\";s:7:\"#ffffff\";s:17:\"controls_bg_color\";s:7:\"#111111\";s:16:\"body_font_family\";s:9:\"Open Sans\";s:16:\"body_font_subset\";s:3:\"300\";s:11:\"503_enabled\";b:0;s:7:\"is_blur\";b:0;s:14:\"blur_intensity\";s:1:\"5\";s:15:\"gg_analytics_id\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:16:\"default_settings\";b:0;}', 'auto'),
(251, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":2,\"critical\":1}', 'on'),
(380, 'category_children', 'a:0:{}', 'auto'),
(484, 'acf_site_health', '{\"version\":\"6.4.1\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.1\",\"mysql_version\":\"10.11.10-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Oneonetwenty\",\"version\":\"1.0\",\"theme_uri\":\"#!\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.4.1\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.3\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"},\"maintenance\\/maintenance.php\":{\"name\":\"Maintenance\",\"version\":\"4.17\",\"plugin_uri\":\"https:\\/\\/wpmaintenancemode.com\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page==7\"],\"number_of_fields_by_type\":{\"group\":8},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1749346511}', 'off'),
(1537, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1749700945;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"maintenance/maintenance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/maintenance\";s:4:\"slug\";s:11:\"maintenance\";s:6:\"plugin\";s:27:\"maintenance/maintenance.php\";s:11:\"new_version\";s:4:\"4.17\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/maintenance/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/maintenance.4.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/maintenance/assets/icon-256x256.png?rev=2689583\";s:2:\"1x\";s:64:\"https://ps.w.org/maintenance/assets/icon-128x128.png?rev=2689583\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/maintenance/assets/banner-772x250.png?rev=1637471\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.4.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:27:\"maintenance/maintenance.php\";s:4:\"4.17\";}}', 'off'),
(1553, '_site_transient_timeout_browser_0fe6feb54289f4c67027ec06cc2131f8', '1749937965', 'off'),
(1554, '_site_transient_browser_0fe6feb54289f4c67027ec06cc2131f8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"137.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(1555, '_site_transient_timeout_php_check_1ad0acda4da6c4fcb37046d1f090be2c', '1749937965', 'off'),
(1556, '_site_transient_php_check_1ad0acda4da6c4fcb37046d1f090be2c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(1571, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"745ccfa3922e52d7372bdf0e5739d82e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(1572, '_site_transient_timeout_browser_cd5d5f3ff8f374827248e13d2f7d64ca', '1749938178', 'off'),
(1573, '_site_transient_browser_cd5d5f3ff8f374827248e13d2f7d64ca', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"137.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(1805, '_site_transient_timeout_wp_theme_files_patterns-e42acf8e292b6b7b47194218491fe3a9', '1749735048', 'off'),
(1806, '_site_transient_wp_theme_files_patterns-e42acf8e292b6b7b47194218491fe3a9', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(1807, '_site_transient_timeout_theme_roots', '1749735053', 'off'),
(1808, '_site_transient_theme_roots', 'a:2:{s:12:\"oneonetwenty\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1747145778'),
(5, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1747145779'),
(8, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(9, 7, '_edit_lock', '1749656969:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1749334900:1'),
(12, 59, '_wp_attached_file', '2025/05/mt-sample-background.jpg'),
(13, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2025/05/mt-sample-background.jpg\";s:8:\"filesize\";i:217593;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5634;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"mt-sample-background-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53954;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2574;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30651;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"mt-sample-background-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:117235;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:34:\"mt-sample-background-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122548;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 60, '_wp_attached_file', '2025/05/forli-hero-bg.webp'),
(15, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:26:\"2025/05/forli-hero-bg.webp\";s:8:\"filesize\";i:206118;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"forli-hero-bg-300x169.webp\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16436;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"forli-hero-bg-1024x576.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:109320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"forli-hero-bg-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8262;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"forli-hero-bg-768x432.webp\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:69740;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"forli-hero-bg-1536x864.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:199862;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:27:\"forli-hero-bg-1568x882.webp\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:208210;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 60, '_wp_attachment_image_alt', 'Forli'),
(17, 61, '_wp_attached_file', '2025/05/8f1b0f1df516c452428445b857595a2d6f987eb5.jpg'),
(18, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:52:\"2025/05/8f1b0f1df516c452428445b857595a2d6f987eb5.jpg\";s:8:\"filesize\";i:143947;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"8f1b0f1df516c452428445b857595a2d6f987eb5-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14494;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"8f1b0f1df516c452428445b857595a2d6f987eb5-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112214;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"8f1b0f1df516c452428445b857595a2d6f987eb5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7280;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"8f1b0f1df516c452428445b857595a2d6f987eb5-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69839;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 61, '_wp_attachment_image_alt', 'Forli Viandas Corporativas'),
(20, 62, '_wp_attached_file', '2025/05/a4ffd45e8eafaa69a872e91298b9dc7566db0f1d.webp'),
(21, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1276;s:6:\"height\";i:718;s:4:\"file\";s:53:\"2025/05/a4ffd45e8eafaa69a872e91298b9dc7566db0f1d.webp\";s:8:\"filesize\";i:165300;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"a4ffd45e8eafaa69a872e91298b9dc7566db0f1d-300x169.webp\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14490;}s:5:\"large\";a:5:{s:4:\"file\";s:54:\"a4ffd45e8eafaa69a872e91298b9dc7566db0f1d-1024x576.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:112774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"a4ffd45e8eafaa69a872e91298b9dc7566db0f1d-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7034;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:53:\"a4ffd45e8eafaa69a872e91298b9dc7566db0f1d-768x432.webp\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:69150;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 62, '_wp_attachment_image_alt', 'Forli Catering Para Eventos Publicos y Privados'),
(23, 63, '_wp_attached_file', '2025/05/Layer_1-9.png'),
(24, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:54;s:6:\"height\";i:55;s:4:\"file\";s:21:\"2025/05/Layer_1-9.png\";s:8:\"filesize\";i:2281;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 63, '_wp_attachment_image_alt', 'Forli Menu Semanal'),
(26, 64, '_wp_attached_file', '2025/05/Layer_1-10.png'),
(27, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:22:\"2025/05/Layer_1-10.png\";s:8:\"filesize\";i:1850;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 64, '_wp_attachment_image_alt', 'Forli Entregas'),
(29, 65, '_wp_attached_file', '2025/05/b357e4a7a1535b8ddeeb48529a076e69eb296e9b.webp'),
(30, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:53:\"2025/05/b357e4a7a1535b8ddeeb48529a076e69eb296e9b.webp\";s:8:\"filesize\";i:150138;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15352;}s:5:\"large\";a:5:{s:4:\"file\";s:55:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-1024x1024.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:86478;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5516;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:53:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58270;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-1536x1536.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:147872;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:55:\"b357e4a7a1535b8ddeeb48529a076e69eb296e9b-1568x1568.webp\";s:5:\"width\";i:1568;s:6:\"height\";i:1568;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:150188;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 66, '_wp_attached_file', '2025/05/5f967cae64e3f29110052d8b7ce85e5f03799ecb.webp'),
(32, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:53:\"2025/05/5f967cae64e3f29110052d8b7ce85e5f03799ecb.webp\";s:8:\"filesize\";i:198372;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"5f967cae64e3f29110052d8b7ce85e5f03799ecb-169x300.webp\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19678;}s:5:\"large\";a:5:{s:4:\"file\";s:54:\"5f967cae64e3f29110052d8b7ce85e5f03799ecb-576x1024.webp\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:144978;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"5f967cae64e3f29110052d8b7ce85e5f03799ecb-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10178;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 67, '_wp_attached_file', '2025/05/al5oHR.png'),
(34, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:140;s:6:\"height\";i:47;s:4:\"file\";s:18:\"2025/05/al5oHR.png\";s:8:\"filesize\";i:2747;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 68, '_wp_attached_file', '2025/05/be67d1.png'),
(36, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:70;s:6:\"height\";i:64;s:4:\"file\";s:18:\"2025/05/be67d1.png\";s:8:\"filesize\";i:5909;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 69, '_wp_attached_file', '2025/05/Group.png'),
(38, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:131;s:6:\"height\";i:17;s:4:\"file\";s:17:\"2025/05/Group.png\";s:8:\"filesize\";i:1956;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 70, '_wp_attached_file', '2025/05/nMz9z9.png'),
(40, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:68;s:6:\"height\";i:35;s:4:\"file\";s:18:\"2025/05/nMz9z9.png\";s:8:\"filesize\";i:2781;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 71, '_wp_attached_file', '2025/05/Toratq.png'),
(42, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:88;s:6:\"height\";i:46;s:4:\"file\";s:18:\"2025/05/Toratq.png\";s:8:\"filesize\";i:3273;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 72, '_wp_attached_file', '2025/05/Txb6cn.png'),
(44, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:105;s:6:\"height\";i:27;s:4:\"file\";s:18:\"2025/05/Txb6cn.png\";s:8:\"filesize\";i:5182;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 73, '_wp_attached_file', '2025/05/x32_hzxDm.png'),
(46, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:69;s:6:\"height\";i:74;s:4:\"file\";s:21:\"2025/05/x32_hzxDm.png\";s:8:\"filesize\";i:5030;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 7, '_edit_last', '1'),
(48, 7, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(49, 7, '_hero_titulo', 'field_6823549cb6eaa'),
(50, 7, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(51, 7, '_hero_bajada', 'field_682354a6b6eab'),
(52, 7, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(53, 7, '_hero_boton', 'field_682354b6b6eac'),
(54, 7, 'hero_fondo', '60'),
(55, 7, '_hero_fondo', 'field_682354bfb6ead'),
(56, 7, 'hero', ''),
(57, 7, '_hero', 'field_6823546fb6ea9'),
(58, 7, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(59, 7, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(60, 7, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(61, 7, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(62, 7, 'servicios_imagen_servicio_1', '61'),
(63, 7, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(64, 7, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(65, 7, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(66, 7, 'servicios_imagen_servicio_2', '62'),
(67, 7, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(68, 7, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(69, 7, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(70, 7, 'servicios', ''),
(71, 7, '_servicios', 'field_682354d1b6eae'),
(72, 7, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(73, 7, '_banner_texto_1', 'field_6823553fb6eb6'),
(74, 7, 'banner_texto_2', 'Calidad\r\nque distingue'),
(75, 7, '_banner_texto_2', 'field_68235562b6eb8'),
(76, 7, 'banner', ''),
(77, 7, '_banner', 'field_6844b7b7c04e9'),
(78, 7, 'modalidad_titulo', 'Modalidad del servicio'),
(79, 7, '_modalidad_titulo', 'field_6823557eb6eba'),
(80, 7, 'modalidad_bajada', '¿Cómo trabajamos?'),
(81, 7, '_modalidad_bajada', 'field_68235585b6ebb'),
(82, 7, 'modalidad_icono_1', '63'),
(83, 7, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(84, 7, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(85, 7, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(86, 7, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(87, 7, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(88, 7, 'modalidad_imagen_1', '65'),
(89, 7, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(90, 7, 'modalidad_icono_2', '64'),
(91, 7, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(92, 7, 'modalidad_titulo_2', 'ENTREGAS'),
(93, 7, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(94, 7, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(95, 7, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(96, 7, 'modalidad_imagen_2', '66'),
(97, 7, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(98, 7, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(99, 7, '_modalidad_boton', 'field_682355deb6ec4'),
(100, 7, 'modalidad', ''),
(101, 7, '_modalidad', 'field_6823556db6eb9'),
(102, 7, 'banner_2_titulo', ' Beneficios para empresas'),
(103, 7, '_banner_2_titulo', 'field_6823560db6ec6'),
(104, 7, 'banner_2_bajada', ''),
(105, 7, '_banner_2_bajada', 'field_68235619b6ec7'),
(106, 7, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(107, 7, '_banner_2_boton', 'field_68235620b6ec8'),
(108, 7, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(109, 7, '_banner_2_lista', 'field_6823562cb6ec9'),
(110, 7, 'banner_2', ''),
(111, 7, '_banner_2', 'field_682355f6b6ec5'),
(112, 7, 'clientes_titulo', 'Clientes satisfechos'),
(113, 7, '_clientes_titulo', 'field_68235656b6ecb'),
(114, 7, 'clientes_cliente_1', '69'),
(115, 7, '_clientes_cliente_1', 'field_68235661b6ecc'),
(116, 7, 'clientes_cliente_2', '68'),
(117, 7, '_clientes_cliente_2', 'field_68235675b6ecd'),
(118, 7, 'clientes_cliente_3', '71'),
(119, 7, '_clientes_cliente_3', 'field_68235676b6ece'),
(120, 7, 'clientes_cliente_4', '73'),
(121, 7, '_clientes_cliente_4', 'field_68235678b6ecf'),
(122, 7, 'clientes_cliente_5', '72'),
(123, 7, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(124, 7, 'clientes_cliente_6', '67'),
(125, 7, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(126, 7, 'clientes_cliente_7', '70'),
(127, 7, '_clientes_cliente_7', 'field_68235680b6ed2'),
(128, 7, 'clientes_logo_cliente_destacado', ''),
(129, 7, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(130, 7, 'clientes_texto_cliente_destacado', ''),
(131, 7, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(132, 7, 'clientes_nombre_cliente_destacado', ''),
(133, 7, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(134, 7, 'clientes_puesto_cliente_destacado', ''),
(135, 7, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(136, 7, 'clientes', ''),
(137, 7, '_clientes', 'field_68235649b6eca'),
(138, 7, 'contacto_arriba_del_titulo', 'Contacto'),
(139, 7, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(140, 7, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(141, 7, '_contacto_titulo', 'field_682356fcb6ed9'),
(142, 7, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(143, 7, '_contacto_bajada', 'field_68235702b6eda'),
(144, 7, 'contacto', ''),
(145, 7, '_contacto', 'field_682356dfb6ed7'),
(146, 74, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(147, 74, '_hero_titulo', 'field_6823549cb6eaa'),
(148, 74, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(149, 74, '_hero_bajada', 'field_682354a6b6eab'),
(150, 74, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(151, 74, '_hero_boton', 'field_682354b6b6eac'),
(152, 74, 'hero_fondo', '60'),
(153, 74, '_hero_fondo', 'field_682354bfb6ead'),
(154, 74, 'hero', ''),
(155, 74, '_hero', 'field_6823546fb6ea9'),
(156, 74, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(157, 74, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(158, 74, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.'),
(159, 74, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(160, 74, 'servicios_imagen_servicio_1', '61'),
(161, 74, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(162, 74, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(163, 74, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(164, 74, 'servicios_imagen_servicio_2', '62'),
(165, 74, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(166, 74, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.'),
(167, 74, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(168, 74, 'servicios', ''),
(169, 74, '_servicios', 'field_682354d1b6eae'),
(170, 74, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(171, 74, '_banner_texto_1', 'field_6823553fb6eb6'),
(172, 74, 'banner_texto_2', 'Calidad\r\nque distingue'),
(173, 74, '_banner_texto_2', 'field_68235562b6eb8'),
(174, 74, 'banner', ''),
(175, 74, '_banner', 'field_68235534b6eb5'),
(176, 74, 'modalidad_titulo', 'Modalidad del servicio'),
(177, 74, '_modalidad_titulo', 'field_6823557eb6eba'),
(178, 74, 'modalidad_bajada', '¿Cómo trabajamos?'),
(179, 74, '_modalidad_bajada', 'field_68235585b6ebb'),
(180, 74, 'modalidad_icono_1', '63'),
(181, 74, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(182, 74, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(183, 74, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(184, 74, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(185, 74, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(186, 74, 'modalidad_imagen_1', '65'),
(187, 74, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(188, 74, 'modalidad_icono_2', '64'),
(189, 74, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(190, 74, 'modalidad_titulo_2', 'ENTREGAS'),
(191, 74, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(192, 74, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(193, 74, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(194, 74, 'modalidad_imagen_2', '66'),
(195, 74, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(196, 74, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(197, 74, '_modalidad_boton', 'field_682355deb6ec4'),
(198, 74, 'modalidad', ''),
(199, 74, '_modalidad', 'field_6823556db6eb9'),
(200, 74, 'banner_2_titulo', ' Beneficios para empresas'),
(201, 74, '_banner_2_titulo', 'field_6823560db6ec6'),
(202, 74, 'banner_2_bajada', ''),
(203, 74, '_banner_2_bajada', 'field_68235619b6ec7'),
(204, 74, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(205, 74, '_banner_2_boton', 'field_68235620b6ec8'),
(206, 74, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(207, 74, '_banner_2_lista', 'field_6823562cb6ec9'),
(208, 74, 'banner_2', ''),
(209, 74, '_banner_2', 'field_682355f6b6ec5'),
(210, 74, 'clientes_titulo', 'Clientes satisfechos'),
(211, 74, '_clientes_titulo', 'field_68235656b6ecb'),
(212, 74, 'clientes_cliente_1', '69'),
(213, 74, '_clientes_cliente_1', 'field_68235661b6ecc'),
(214, 74, 'clientes_cliente_2', '68'),
(215, 74, '_clientes_cliente_2', 'field_68235675b6ecd'),
(216, 74, 'clientes_cliente_3', '71'),
(217, 74, '_clientes_cliente_3', 'field_68235676b6ece'),
(218, 74, 'clientes_cliente_4', '73'),
(219, 74, '_clientes_cliente_4', 'field_68235678b6ecf'),
(220, 74, 'clientes_cliente_5', '72'),
(221, 74, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(222, 74, 'clientes_cliente_6', '67'),
(223, 74, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(224, 74, 'clientes_cliente_7', '70'),
(225, 74, '_clientes_cliente_7', 'field_68235680b6ed2'),
(226, 74, 'clientes_logo_cliente_destacado', ''),
(227, 74, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(228, 74, 'clientes_texto_cliente_destacado', ''),
(229, 74, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(230, 74, 'clientes_nombre_cliente_destacado', ''),
(231, 74, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(232, 74, 'clientes_puesto_cliente_destacado', ''),
(233, 74, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(234, 74, 'clientes', ''),
(235, 74, '_clientes', 'field_68235649b6eca'),
(236, 74, 'contacto_arriba_del_titulo', ''),
(237, 74, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(238, 74, 'contacto_titulo', ''),
(239, 74, '_contacto_titulo', 'field_682356fcb6ed9'),
(240, 74, 'contacto_bajada', ''),
(241, 74, '_contacto_bajada', 'field_68235702b6eda'),
(242, 74, 'contacto', ''),
(243, 74, '_contacto', 'field_682356dfb6ed7'),
(244, 75, '_wp_attached_file', '2025/05/image-8.png'),
(245, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:664;s:6:\"height\";i:263;s:4:\"file\";s:19:\"2025/05/image-8.png\";s:8:\"filesize\";i:52813;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"image-8-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6033;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"image-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4974;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 7, 'clientes_cliente_destacado', '75'),
(247, 7, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(248, 76, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(249, 76, '_hero_titulo', 'field_6823549cb6eaa'),
(250, 76, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(251, 76, '_hero_bajada', 'field_682354a6b6eab'),
(252, 76, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(253, 76, '_hero_boton', 'field_682354b6b6eac'),
(254, 76, 'hero_fondo', '60'),
(255, 76, '_hero_fondo', 'field_682354bfb6ead'),
(256, 76, 'hero', ''),
(257, 76, '_hero', 'field_6823546fb6ea9'),
(258, 76, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(259, 76, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(260, 76, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.'),
(261, 76, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(262, 76, 'servicios_imagen_servicio_1', '61'),
(263, 76, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(264, 76, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(265, 76, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(266, 76, 'servicios_imagen_servicio_2', '62'),
(267, 76, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(268, 76, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.'),
(269, 76, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(270, 76, 'servicios', ''),
(271, 76, '_servicios', 'field_682354d1b6eae'),
(272, 76, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(273, 76, '_banner_texto_1', 'field_6823553fb6eb6'),
(274, 76, 'banner_texto_2', 'Calidad\r\nque distingue'),
(275, 76, '_banner_texto_2', 'field_68235562b6eb8'),
(276, 76, 'banner', ''),
(277, 76, '_banner', 'field_68235534b6eb5'),
(278, 76, 'modalidad_titulo', 'Modalidad del servicio'),
(279, 76, '_modalidad_titulo', 'field_6823557eb6eba'),
(280, 76, 'modalidad_bajada', '¿Cómo trabajamos?'),
(281, 76, '_modalidad_bajada', 'field_68235585b6ebb'),
(282, 76, 'modalidad_icono_1', '63'),
(283, 76, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(284, 76, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(285, 76, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(286, 76, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(287, 76, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(288, 76, 'modalidad_imagen_1', '65'),
(289, 76, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(290, 76, 'modalidad_icono_2', '64'),
(291, 76, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(292, 76, 'modalidad_titulo_2', 'ENTREGAS'),
(293, 76, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(294, 76, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(295, 76, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(296, 76, 'modalidad_imagen_2', '66'),
(297, 76, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(298, 76, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(299, 76, '_modalidad_boton', 'field_682355deb6ec4'),
(300, 76, 'modalidad', ''),
(301, 76, '_modalidad', 'field_6823556db6eb9'),
(302, 76, 'banner_2_titulo', ' Beneficios para empresas'),
(303, 76, '_banner_2_titulo', 'field_6823560db6ec6'),
(304, 76, 'banner_2_bajada', ''),
(305, 76, '_banner_2_bajada', 'field_68235619b6ec7'),
(306, 76, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(307, 76, '_banner_2_boton', 'field_68235620b6ec8'),
(308, 76, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(309, 76, '_banner_2_lista', 'field_6823562cb6ec9'),
(310, 76, 'banner_2', ''),
(311, 76, '_banner_2', 'field_682355f6b6ec5'),
(312, 76, 'clientes_titulo', 'Clientes satisfechos'),
(313, 76, '_clientes_titulo', 'field_68235656b6ecb'),
(314, 76, 'clientes_cliente_1', '69'),
(315, 76, '_clientes_cliente_1', 'field_68235661b6ecc'),
(316, 76, 'clientes_cliente_2', '68'),
(317, 76, '_clientes_cliente_2', 'field_68235675b6ecd'),
(318, 76, 'clientes_cliente_3', '71'),
(319, 76, '_clientes_cliente_3', 'field_68235676b6ece'),
(320, 76, 'clientes_cliente_4', '73'),
(321, 76, '_clientes_cliente_4', 'field_68235678b6ecf'),
(322, 76, 'clientes_cliente_5', '72'),
(323, 76, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(324, 76, 'clientes_cliente_6', '67'),
(325, 76, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(326, 76, 'clientes_cliente_7', '70'),
(327, 76, '_clientes_cliente_7', 'field_68235680b6ed2'),
(328, 76, 'clientes_logo_cliente_destacado', ''),
(329, 76, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(330, 76, 'clientes_texto_cliente_destacado', ''),
(331, 76, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(332, 76, 'clientes_nombre_cliente_destacado', ''),
(333, 76, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(334, 76, 'clientes_puesto_cliente_destacado', ''),
(335, 76, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(336, 76, 'clientes', ''),
(337, 76, '_clientes', 'field_68235649b6eca'),
(338, 76, 'contacto_arriba_del_titulo', 'Contacto'),
(339, 76, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(340, 76, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(341, 76, '_contacto_titulo', 'field_682356fcb6ed9'),
(342, 76, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(343, 76, '_contacto_bajada', 'field_68235702b6eda'),
(344, 76, 'contacto', ''),
(345, 76, '_contacto', 'field_682356dfb6ed7'),
(346, 76, 'clientes_cliente_destacado', '75'),
(347, 76, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(348, 78, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(349, 78, '_hero_titulo', 'field_6823549cb6eaa'),
(350, 78, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(351, 78, '_hero_bajada', 'field_682354a6b6eab'),
(352, 78, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(353, 78, '_hero_boton', 'field_682354b6b6eac'),
(354, 78, 'hero_fondo', '60'),
(355, 78, '_hero_fondo', 'field_682354bfb6ead'),
(356, 78, 'hero', ''),
(357, 78, '_hero', 'field_6823546fb6ea9'),
(358, 78, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(359, 78, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(360, 78, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(361, 78, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(362, 78, 'servicios_imagen_servicio_1', '61'),
(363, 78, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(364, 78, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(365, 78, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(366, 78, 'servicios_imagen_servicio_2', '62'),
(367, 78, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(368, 78, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(369, 78, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(370, 78, 'servicios', ''),
(371, 78, '_servicios', 'field_682354d1b6eae'),
(372, 78, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(373, 78, '_banner_texto_1', 'field_6823553fb6eb6'),
(374, 78, 'banner_texto_2', 'Calidad\r\nque distingue'),
(375, 78, '_banner_texto_2', 'field_68235562b6eb8'),
(376, 78, 'banner', ''),
(377, 78, '_banner', 'field_68235534b6eb5'),
(378, 78, 'modalidad_titulo', 'Modalidad del servicio'),
(379, 78, '_modalidad_titulo', 'field_6823557eb6eba'),
(380, 78, 'modalidad_bajada', '¿Cómo trabajamos?'),
(381, 78, '_modalidad_bajada', 'field_68235585b6ebb'),
(382, 78, 'modalidad_icono_1', '63'),
(383, 78, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(384, 78, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(385, 78, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(386, 78, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(387, 78, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(388, 78, 'modalidad_imagen_1', '65'),
(389, 78, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(390, 78, 'modalidad_icono_2', '64'),
(391, 78, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(392, 78, 'modalidad_titulo_2', 'ENTREGAS'),
(393, 78, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(394, 78, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(395, 78, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(396, 78, 'modalidad_imagen_2', '66'),
(397, 78, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(398, 78, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(399, 78, '_modalidad_boton', 'field_682355deb6ec4'),
(400, 78, 'modalidad', ''),
(401, 78, '_modalidad', 'field_6823556db6eb9'),
(402, 78, 'banner_2_titulo', ' Beneficios para empresas'),
(403, 78, '_banner_2_titulo', 'field_6823560db6ec6'),
(404, 78, 'banner_2_bajada', ''),
(405, 78, '_banner_2_bajada', 'field_68235619b6ec7'),
(406, 78, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(407, 78, '_banner_2_boton', 'field_68235620b6ec8'),
(408, 78, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(409, 78, '_banner_2_lista', 'field_6823562cb6ec9'),
(410, 78, 'banner_2', ''),
(411, 78, '_banner_2', 'field_682355f6b6ec5'),
(412, 78, 'clientes_titulo', 'Clientes satisfechos'),
(413, 78, '_clientes_titulo', 'field_68235656b6ecb'),
(414, 78, 'clientes_cliente_1', '69'),
(415, 78, '_clientes_cliente_1', 'field_68235661b6ecc'),
(416, 78, 'clientes_cliente_2', '68'),
(417, 78, '_clientes_cliente_2', 'field_68235675b6ecd'),
(418, 78, 'clientes_cliente_3', '71'),
(419, 78, '_clientes_cliente_3', 'field_68235676b6ece'),
(420, 78, 'clientes_cliente_4', '73'),
(421, 78, '_clientes_cliente_4', 'field_68235678b6ecf'),
(422, 78, 'clientes_cliente_5', '72'),
(423, 78, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(424, 78, 'clientes_cliente_6', '67'),
(425, 78, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(426, 78, 'clientes_cliente_7', '70'),
(427, 78, '_clientes_cliente_7', 'field_68235680b6ed2'),
(428, 78, 'clientes_logo_cliente_destacado', ''),
(429, 78, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(430, 78, 'clientes_texto_cliente_destacado', ''),
(431, 78, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(432, 78, 'clientes_nombre_cliente_destacado', ''),
(433, 78, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(434, 78, 'clientes_puesto_cliente_destacado', ''),
(435, 78, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(436, 78, 'clientes', ''),
(437, 78, '_clientes', 'field_68235649b6eca'),
(438, 78, 'contacto_arriba_del_titulo', 'Contacto'),
(439, 78, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(440, 78, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(441, 78, '_contacto_titulo', 'field_682356fcb6ed9'),
(442, 78, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(443, 78, '_contacto_bajada', 'field_68235702b6eda'),
(444, 78, 'contacto', ''),
(445, 78, '_contacto', 'field_682356dfb6ed7'),
(446, 78, 'clientes_cliente_destacado', '75'),
(447, 78, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(448, 88, '_wp_attached_file', '2025/06/X5gVx9.jpg'),
(449, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:644;s:6:\"height\";i:858;s:4:\"file\";s:18:\"2025/06/X5gVx9.jpg\";s:8:\"filesize\";i:357117;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"X5gVx9-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15135;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"X5gVx9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 89, '_wp_attached_file', '2025/06/banner.jpg'),
(451, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1444;s:6:\"height\";i:456;s:4:\"file\";s:18:\"2025/06/banner.jpg\";s:8:\"filesize\";i:571011;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"banner-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9479;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"banner-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78309;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8235;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"banner-768x243.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48653;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(452, 7, 'servicios_boton', 'a:3:{s:5:\"title\";s:26:\"Conocé nuestros servicios\";s:3:\"url\";s:9:\"#contacto\";s:6:\"target\";s:0:\"\";}'),
(453, 7, '_servicios_boton', 'field_6844b89110017'),
(454, 7, 'banner_imagenbanner', '89'),
(455, 7, '_banner_imagenbanner', 'field_6844b800c04ea'),
(456, 7, 'nosotros_imagen_nosotros', '88'),
(457, 7, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(458, 7, 'nosotros_titulo', 'Sobre Nosotros'),
(459, 7, '_nosotros_titulo', 'field_6844ba076db54'),
(460, 7, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(461, 7, '_nosotros_descripcion', 'field_6844ba896db55'),
(462, 7, 'nosotros', ''),
(463, 7, '_nosotros', 'field_6844b9b6d5528'),
(464, 7, 'beneficios_', ''),
(465, 7, '_beneficios_', 'field_6844badb6db57'),
(466, 7, 'beneficios', ''),
(467, 7, '_beneficios', 'field_6844bac16db56'),
(468, 90, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(469, 90, '_hero_titulo', 'field_6823549cb6eaa'),
(470, 90, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(471, 90, '_hero_bajada', 'field_682354a6b6eab'),
(472, 90, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(473, 90, '_hero_boton', 'field_682354b6b6eac'),
(474, 90, 'hero_fondo', '60'),
(475, 90, '_hero_fondo', 'field_682354bfb6ead'),
(476, 90, 'hero', ''),
(477, 90, '_hero', 'field_6823546fb6ea9'),
(478, 90, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(479, 90, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(480, 90, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(481, 90, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(482, 90, 'servicios_imagen_servicio_1', '61'),
(483, 90, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(484, 90, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(485, 90, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(486, 90, 'servicios_imagen_servicio_2', '62'),
(487, 90, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(488, 90, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(489, 90, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(490, 90, 'servicios', ''),
(491, 90, '_servicios', 'field_682354d1b6eae'),
(492, 90, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(493, 90, '_banner_texto_1', 'field_6823553fb6eb6'),
(494, 90, 'banner_texto_2', 'Calidad\r\nque distingue'),
(495, 90, '_banner_texto_2', 'field_68235562b6eb8'),
(496, 90, 'banner', ''),
(497, 90, '_banner', 'field_6844b7b7c04e9'),
(498, 90, 'modalidad_titulo', 'Modalidad del servicio'),
(499, 90, '_modalidad_titulo', 'field_6823557eb6eba'),
(500, 90, 'modalidad_bajada', '¿Cómo trabajamos?'),
(501, 90, '_modalidad_bajada', 'field_68235585b6ebb'),
(502, 90, 'modalidad_icono_1', '63'),
(503, 90, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(504, 90, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(505, 90, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(506, 90, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(507, 90, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(508, 90, 'modalidad_imagen_1', '65'),
(509, 90, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(510, 90, 'modalidad_icono_2', '64'),
(511, 90, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(512, 90, 'modalidad_titulo_2', 'ENTREGAS'),
(513, 90, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(514, 90, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(515, 90, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(516, 90, 'modalidad_imagen_2', '66'),
(517, 90, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(518, 90, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(519, 90, '_modalidad_boton', 'field_682355deb6ec4'),
(520, 90, 'modalidad', ''),
(521, 90, '_modalidad', 'field_6823556db6eb9'),
(522, 90, 'banner_2_titulo', ' Beneficios para empresas'),
(523, 90, '_banner_2_titulo', 'field_6823560db6ec6'),
(524, 90, 'banner_2_bajada', ''),
(525, 90, '_banner_2_bajada', 'field_68235619b6ec7'),
(526, 90, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(527, 90, '_banner_2_boton', 'field_68235620b6ec8'),
(528, 90, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(529, 90, '_banner_2_lista', 'field_6823562cb6ec9'),
(530, 90, 'banner_2', ''),
(531, 90, '_banner_2', 'field_682355f6b6ec5'),
(532, 90, 'clientes_titulo', 'Clientes satisfechos'),
(533, 90, '_clientes_titulo', 'field_68235656b6ecb'),
(534, 90, 'clientes_cliente_1', '69'),
(535, 90, '_clientes_cliente_1', 'field_68235661b6ecc'),
(536, 90, 'clientes_cliente_2', '68'),
(537, 90, '_clientes_cliente_2', 'field_68235675b6ecd');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(538, 90, 'clientes_cliente_3', '71'),
(539, 90, '_clientes_cliente_3', 'field_68235676b6ece'),
(540, 90, 'clientes_cliente_4', '73'),
(541, 90, '_clientes_cliente_4', 'field_68235678b6ecf'),
(542, 90, 'clientes_cliente_5', '72'),
(543, 90, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(544, 90, 'clientes_cliente_6', '67'),
(545, 90, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(546, 90, 'clientes_cliente_7', '70'),
(547, 90, '_clientes_cliente_7', 'field_68235680b6ed2'),
(548, 90, 'clientes_logo_cliente_destacado', ''),
(549, 90, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(550, 90, 'clientes_texto_cliente_destacado', ''),
(551, 90, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(552, 90, 'clientes_nombre_cliente_destacado', ''),
(553, 90, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(554, 90, 'clientes_puesto_cliente_destacado', ''),
(555, 90, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(556, 90, 'clientes', ''),
(557, 90, '_clientes', 'field_68235649b6eca'),
(558, 90, 'contacto_arriba_del_titulo', 'Contacto'),
(559, 90, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(560, 90, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(561, 90, '_contacto_titulo', 'field_682356fcb6ed9'),
(562, 90, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(563, 90, '_contacto_bajada', 'field_68235702b6eda'),
(564, 90, 'contacto', ''),
(565, 90, '_contacto', 'field_682356dfb6ed7'),
(566, 90, 'clientes_cliente_destacado', '75'),
(567, 90, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(568, 90, 'servicios_boton', ''),
(569, 90, '_servicios_boton', 'field_6844b89110017'),
(570, 90, 'banner_imagenbanner', '89'),
(571, 90, '_banner_imagenbanner', 'field_6844b800c04ea'),
(572, 90, 'nosotros_imagen_nosotros', '88'),
(573, 90, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(574, 90, 'nosotros_titulo', 'Sobre Nosotros'),
(575, 90, '_nosotros_titulo', 'field_6844ba076db54'),
(576, 90, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(577, 90, '_nosotros_descripcion', 'field_6844ba896db55'),
(578, 90, 'nosotros', ''),
(579, 90, '_nosotros', 'field_6844b9b6d5528'),
(580, 90, 'beneficios_', ''),
(581, 90, '_beneficios_', 'field_6844badb6db57'),
(582, 90, 'beneficios', ''),
(583, 90, '_beneficios', 'field_6844bac16db56'),
(584, 91, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(585, 91, '_hero_titulo', 'field_6823549cb6eaa'),
(586, 91, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(587, 91, '_hero_bajada', 'field_682354a6b6eab'),
(588, 91, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(589, 91, '_hero_boton', 'field_682354b6b6eac'),
(590, 91, 'hero_fondo', '60'),
(591, 91, '_hero_fondo', 'field_682354bfb6ead'),
(592, 91, 'hero', ''),
(593, 91, '_hero', 'field_6823546fb6ea9'),
(594, 91, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(595, 91, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(596, 91, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(597, 91, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(598, 91, 'servicios_imagen_servicio_1', '61'),
(599, 91, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(600, 91, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(601, 91, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(602, 91, 'servicios_imagen_servicio_2', '62'),
(603, 91, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(604, 91, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(605, 91, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(606, 91, 'servicios', ''),
(607, 91, '_servicios', 'field_682354d1b6eae'),
(608, 91, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(609, 91, '_banner_texto_1', 'field_6823553fb6eb6'),
(610, 91, 'banner_texto_2', 'Calidad\r\nque distingue'),
(611, 91, '_banner_texto_2', 'field_68235562b6eb8'),
(612, 91, 'banner', ''),
(613, 91, '_banner', 'field_6844b7b7c04e9'),
(614, 91, 'modalidad_titulo', 'Modalidad del servicio'),
(615, 91, '_modalidad_titulo', 'field_6823557eb6eba'),
(616, 91, 'modalidad_bajada', '¿Cómo trabajamos?'),
(617, 91, '_modalidad_bajada', 'field_68235585b6ebb'),
(618, 91, 'modalidad_icono_1', '63'),
(619, 91, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(620, 91, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(621, 91, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(622, 91, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(623, 91, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(624, 91, 'modalidad_imagen_1', '65'),
(625, 91, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(626, 91, 'modalidad_icono_2', '64'),
(627, 91, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(628, 91, 'modalidad_titulo_2', 'ENTREGAS'),
(629, 91, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(630, 91, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(631, 91, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(632, 91, 'modalidad_imagen_2', '66'),
(633, 91, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(634, 91, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(635, 91, '_modalidad_boton', 'field_682355deb6ec4'),
(636, 91, 'modalidad', ''),
(637, 91, '_modalidad', 'field_6823556db6eb9'),
(638, 91, 'banner_2_titulo', ' Beneficios para empresas'),
(639, 91, '_banner_2_titulo', 'field_6823560db6ec6'),
(640, 91, 'banner_2_bajada', ''),
(641, 91, '_banner_2_bajada', 'field_68235619b6ec7'),
(642, 91, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(643, 91, '_banner_2_boton', 'field_68235620b6ec8'),
(644, 91, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(645, 91, '_banner_2_lista', 'field_6823562cb6ec9'),
(646, 91, 'banner_2', ''),
(647, 91, '_banner_2', 'field_682355f6b6ec5'),
(648, 91, 'clientes_titulo', 'Clientes satisfechos'),
(649, 91, '_clientes_titulo', 'field_68235656b6ecb'),
(650, 91, 'clientes_cliente_1', '69'),
(651, 91, '_clientes_cliente_1', 'field_68235661b6ecc'),
(652, 91, 'clientes_cliente_2', '68'),
(653, 91, '_clientes_cliente_2', 'field_68235675b6ecd'),
(654, 91, 'clientes_cliente_3', '71'),
(655, 91, '_clientes_cliente_3', 'field_68235676b6ece'),
(656, 91, 'clientes_cliente_4', '73'),
(657, 91, '_clientes_cliente_4', 'field_68235678b6ecf'),
(658, 91, 'clientes_cliente_5', '72'),
(659, 91, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(660, 91, 'clientes_cliente_6', '67'),
(661, 91, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(662, 91, 'clientes_cliente_7', '70'),
(663, 91, '_clientes_cliente_7', 'field_68235680b6ed2'),
(664, 91, 'clientes_logo_cliente_destacado', ''),
(665, 91, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(666, 91, 'clientes_texto_cliente_destacado', ''),
(667, 91, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(668, 91, 'clientes_nombre_cliente_destacado', ''),
(669, 91, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(670, 91, 'clientes_puesto_cliente_destacado', ''),
(671, 91, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(672, 91, 'clientes', ''),
(673, 91, '_clientes', 'field_68235649b6eca'),
(674, 91, 'contacto_arriba_del_titulo', 'Contacto'),
(675, 91, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(676, 91, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(677, 91, '_contacto_titulo', 'field_682356fcb6ed9'),
(678, 91, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(679, 91, '_contacto_bajada', 'field_68235702b6eda'),
(680, 91, 'contacto', ''),
(681, 91, '_contacto', 'field_682356dfb6ed7'),
(682, 91, 'clientes_cliente_destacado', '75'),
(683, 91, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(684, 91, 'servicios_boton', 'a:3:{s:5:\"title\";s:26:\"Conocé nuestros servicios\";s:3:\"url\";s:9:\"#contacto\";s:6:\"target\";s:0:\"\";}'),
(685, 91, '_servicios_boton', 'field_6844b89110017'),
(686, 91, 'banner_imagenbanner', '89'),
(687, 91, '_banner_imagenbanner', 'field_6844b800c04ea'),
(688, 91, 'nosotros_imagen_nosotros', '88'),
(689, 91, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(690, 91, 'nosotros_titulo', 'Sobre Nosotros'),
(691, 91, '_nosotros_titulo', 'field_6844ba076db54'),
(692, 91, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(693, 91, '_nosotros_descripcion', 'field_6844ba896db55'),
(694, 91, 'nosotros', ''),
(695, 91, '_nosotros', 'field_6844b9b6d5528'),
(696, 91, 'beneficios_', ''),
(697, 91, '_beneficios_', 'field_6844badb6db57'),
(698, 91, 'beneficios', ''),
(699, 91, '_beneficios', 'field_6844bac16db56'),
(700, 92, '_wp_trash_meta_status', 'publish'),
(701, 92, '_wp_trash_meta_time', '1749339686');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-05-13 11:14:31', '2025-05-13 14:14:31', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después ¡empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2025-05-13 11:14:31', '2025-05-13 14:14:31', '', 0, 'https://forli.local/?p=1', 0, 'post', '', 1),
(2, 1, '2025-05-13 11:14:31', '2025-05-13 14:14:31', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página \"Acerca de\" que los presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"https://forli.local/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2025-05-13 11:16:19', '2025-05-13 14:16:19', '', 0, 'https://forli.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-05-13 11:14:31', '2025-05-13 14:14:31', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: https://forli.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Multimedia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tenés una cuenta e iniciás sesión en este sitio, estableceremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y es descartada al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido embebido desde otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitás un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo guardamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tenés sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2025-05-13 11:16:18', '2025-05-13 14:16:18', '', 0, 'https://forli.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2025-05-13 11:16:18', '2025-05-13 14:16:18', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: https://forli.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Multimedia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tenés una cuenta e iniciás sesión en este sitio, estableceremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y es descartada al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido embebido desde otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitás un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo guardamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tenés sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-05-13 11:16:18', '2025-05-13 14:16:18', '', 3, 'https://forli.local/?p=5', 0, 'revision', '', 0),
(6, 1, '2025-05-13 11:16:19', '2025-05-13 14:16:19', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página \"Acerca de\" que los presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"https://forli.local/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-05-13 11:16:19', '2025-05-13 14:16:19', '', 2, 'https://forli.local/?p=6', 0, 'revision', '', 0),
(7, 1, '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 'Forli Gastronomia', '', 'publish', 'closed', 'closed', '', 'forli-gastronomia', '', '', '2025-06-07 19:28:03', '2025-06-07 22:28:03', '', 0, 'https://forli.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 7, 'https://forli.local/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6823546f225ba', '', '', '2025-06-07 19:23:47', '2025-06-07 22:23:47', '', 0, 'https://forli.local/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_6823546fb6ea9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 9, 'https://forli.local/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823549cb6eaa', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forli.local/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_682354a6b6eab', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forli.local/?post_type=acf-field&p=12', 1, 'acf-field', '', 0),
(13, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_682354b6b6eac', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forli.local/?post_type=acf-field&p=13', 2, 'acf-field', '', 0),
(14, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Fondo', 'fondo', 'publish', 'closed', 'closed', '', 'field_682354bfb6ead', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forli.local/?post_type=acf-field&p=14', 3, 'acf-field', '', 0),
(15, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Servicios', 'servicios', 'publish', 'closed', 'closed', '', 'field_682354d1b6eae', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 9, 'https://forli.local/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo Servicio 1', 'titulo_servicio_1', 'publish', 'closed', 'closed', '', 'field_682354ddb6eaf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion Servicio 1', 'descripcion_servicio_1', 'publish', 'closed', 'closed', '', 'field_682354f2b6eb0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Servicio 1', 'imagen_servicio_1', 'publish', 'closed', 'closed', '', 'field_68235503b6eb1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo Servicio 2', 'titulo_servicio_2', 'publish', 'closed', 'closed', '', 'field_6823550fb6eb2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=19', 3, 'acf-field', '', 0),
(20, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Servicio 2', 'imagen_servicio_2', 'publish', 'closed', 'closed', '', 'field_68235522b6eb4', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=20', 4, 'acf-field', '', 0),
(21, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion Servicio 2', 'descripcion_servicio_2', 'publish', 'closed', 'closed', '', 'field_68235513b6eb3', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forli.local/?post_type=acf-field&p=21', 5, 'acf-field', '', 0),
(25, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Modalidad', 'modalidad', 'publish', 'closed', 'closed', '', 'field_6823556db6eb9', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=25', 3, 'acf-field', '', 0),
(26, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823557eb6eba', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235585b6ebb', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icono 1', 'icono_1', 'publish', 'closed', 'closed', '', 'field_6823558cb6ebc', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo 1', 'titulo_1', 'publish', 'closed', 'closed', '', 'field_682355a8b6ebd', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=29', 3, 'acf-field', '', 0),
(30, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripcion 1', 'descripcion_1', 'publish', 'closed', 'closed', '', 'field_682355b1b6ebe', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=30', 4, 'acf-field', '', 0),
(31, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen 1', 'imagen_1', 'publish', 'closed', 'closed', '', 'field_682355bdb6ebf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=31', 5, 'acf-field', '', 0),
(32, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icono 2', 'icono_2', 'publish', 'closed', 'closed', '', 'field_682355c9b6ec0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=32', 6, 'acf-field', '', 0),
(33, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo 2', 'titulo_2', 'publish', 'closed', 'closed', '', 'field_682355ccb6ec1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=33', 7, 'acf-field', '', 0),
(34, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripcion 2', 'descripcion_2', 'publish', 'closed', 'closed', '', 'field_682355ceb6ec2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=34', 8, 'acf-field', '', 0),
(35, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen 2', 'imagen_2', 'publish', 'closed', 'closed', '', 'field_682355d1b6ec3', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=35', 9, 'acf-field', '', 0),
(36, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_682355deb6ec4', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forli.local/?post_type=acf-field&p=36', 10, 'acf-field', '', 0),
(37, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner 2', 'banner_2', 'publish', 'closed', 'closed', '', 'field_682355f6b6ec5', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=37', 5, 'acf-field', '', 0),
(38, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823560db6ec6', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forli.local/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235619b6ec7', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forli.local/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_68235620b6ec8', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forli.local/?post_type=acf-field&p=40', 2, 'acf-field', '', 0),
(41, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Lista', 'lista', 'publish', 'closed', 'closed', '', 'field_6823562cb6ec9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forli.local/?post_type=acf-field&p=41', 3, 'acf-field', '', 0),
(42, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Clientes', 'clientes', 'publish', 'closed', 'closed', '', 'field_68235649b6eca', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=42', 6, 'acf-field', '', 0),
(43, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_68235656b6ecb', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 1', 'cliente_1', 'publish', 'closed', 'closed', '', 'field_68235661b6ecc', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 2', 'cliente_2', 'publish', 'closed', 'closed', '', 'field_68235675b6ecd', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=45', 2, 'acf-field', '', 0),
(46, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 3', 'cliente_3', 'publish', 'closed', 'closed', '', 'field_68235676b6ece', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
(47, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 4', 'cliente_4', 'publish', 'closed', 'closed', '', 'field_68235678b6ecf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=47', 4, 'acf-field', '', 0),
(48, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 5', 'cliente_5', 'publish', 'closed', 'closed', '', 'field_6823567ab6ed0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=48', 5, 'acf-field', '', 0),
(49, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 6', 'cliente_6', 'publish', 'closed', 'closed', '', 'field_6823567eb6ed1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=49', 6, 'acf-field', '', 0),
(50, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 7', 'cliente_7', 'publish', 'closed', 'closed', '', 'field_68235680b6ed2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forli.local/?post_type=acf-field&p=50', 7, 'acf-field', '', 0),
(51, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente Destacado', 'cliente_destacado', 'publish', 'closed', 'closed', '', 'field_68235696b6ed3', '', '', '2025-05-15 10:07:26', '2025-05-15 13:07:26', '', 42, 'https://forli.local/?post_type=acf-field&#038;p=51', 8, 'acf-field', '', 0),
(55, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contacto', 'contacto', 'publish', 'closed', 'closed', '', 'field_682356dfb6ed7', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=55', 7, 'acf-field', '', 0),
(56, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Arriba Del Titulo', 'arriba_del_titulo', 'publish', 'closed', 'closed', '', 'field_682356eeb6ed8', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forli.local/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_682356fcb6ed9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forli.local/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235702b6eda', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forli.local/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2025-05-13 12:58:27', '2025-05-13 15:58:27', '', 'mt-sample-background', '', 'inherit', 'open', 'closed', '', 'mt-sample-background', '', '', '2025-05-13 12:58:27', '2025-05-13 15:58:27', '', 0, 'https://forli.local/wp-content/uploads/2025/05/mt-sample-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2025-05-15 09:50:39', '2025-05-15 12:50:39', '', 'forli-hero-bg', '', 'inherit', 'open', 'closed', '', 'forli-hero-bg', '', '', '2025-05-15 09:50:44', '2025-05-15 12:50:44', '', 7, 'https://forli.local/wp-content/uploads/2025/05/forli-hero-bg.webp', 0, 'attachment', 'image/webp', 0),
(61, 1, '2025-05-15 09:51:38', '2025-05-15 12:51:38', '', 'forli-viandas-corporativas', '', 'inherit', 'open', 'closed', '', '8f1b0f1df516c452428445b857595a2d6f987eb5', '', '', '2025-05-15 09:52:08', '2025-05-15 12:52:08', '', 7, 'https://forli.local/wp-content/uploads/2025/05/8f1b0f1df516c452428445b857595a2d6f987eb5.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2025-05-15 09:52:44', '2025-05-15 12:52:44', '', 'a4ffd45e8eafaa69a872e91298b9dc7566db0f1d', '', 'inherit', 'open', 'closed', '', 'a4ffd45e8eafaa69a872e91298b9dc7566db0f1d', '', '', '2025-05-15 09:53:02', '2025-05-15 12:53:02', '', 7, 'https://forli.local/wp-content/uploads/2025/05/a4ffd45e8eafaa69a872e91298b9dc7566db0f1d.webp', 0, 'attachment', 'image/webp', 0),
(63, 1, '2025-05-15 09:56:30', '2025-05-15 12:56:30', '', 'Layer_1 (9)', '', 'inherit', 'open', 'closed', '', 'layer_1-9', '', '', '2025-05-15 09:56:38', '2025-05-15 12:56:38', '', 7, 'https://forli.local/wp-content/uploads/2025/05/Layer_1-9.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2025-05-15 09:56:50', '2025-05-15 12:56:50', '', 'Layer_1 (10)', '', 'inherit', 'open', 'closed', '', 'layer_1-10', '', '', '2025-05-15 09:56:56', '2025-05-15 12:56:56', '', 7, 'https://forli.local/wp-content/uploads/2025/05/Layer_1-10.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(65, 1, '2025-05-15 09:57:50', '2025-05-15 12:57:50', '', 'b357e4a7a1535b8ddeeb48529a076e69eb296e9b', '', 'inherit', 'open', 'closed', '', 'b357e4a7a1535b8ddeeb48529a076e69eb296e9b', '', '', '2025-05-15 09:57:50', '2025-05-15 12:57:50', '', 7, 'https://forli.local/wp-content/uploads/2025/05/b357e4a7a1535b8ddeeb48529a076e69eb296e9b.webp', 0, 'attachment', 'image/webp', 0),
(66, 1, '2025-05-15 09:57:58', '2025-05-15 12:57:58', '', '5f967cae64e3f29110052d8b7ce85e5f03799ecb', '', 'inherit', 'open', 'closed', '', '5f967cae64e3f29110052d8b7ce85e5f03799ecb', '', '', '2025-05-15 09:57:58', '2025-05-15 12:57:58', '', 7, 'https://forli.local/wp-content/uploads/2025/05/5f967cae64e3f29110052d8b7ce85e5f03799ecb.webp', 0, 'attachment', 'image/webp', 0),
(67, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'al5oHR', '', 'inherit', 'open', 'closed', '', 'al5ohr', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forli.local/wp-content/uploads/2025/05/al5oHR.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'be67d1', '', 'inherit', 'open', 'closed', '', 'be67d1', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forli.local/wp-content/uploads/2025/05/be67d1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'Group', '', 'inherit', 'open', 'closed', '', 'group', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forli.local/wp-content/uploads/2025/05/Group.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'nMz9z9', '', 'inherit', 'open', 'closed', '', 'nmz9z9', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forli.local/wp-content/uploads/2025/05/nMz9z9.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'Toratq', '', 'inherit', 'open', 'closed', '', 'toratq', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forli.local/wp-content/uploads/2025/05/Toratq.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'Txb6cn', '', 'inherit', 'open', 'closed', '', 'txb6cn', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forli.local/wp-content/uploads/2025/05/Txb6cn.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', '_x32_hzxDm', '', 'inherit', 'open', 'closed', '', '_x32_hzxdm', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forli.local/wp-content/uploads/2025/05/x32_hzxDm.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2025-05-15 10:06:53', '2025-05-15 13:06:53', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-15 10:06:53', '2025-05-15 13:06:53', '', 7, 'https://forli.local/?p=74', 0, 'revision', '', 0),
(75, 1, '2025-05-15 10:08:45', '2025-05-15 13:08:45', '', 'image 8', '', 'inherit', 'open', 'closed', '', 'image-8', '', '', '2025-05-15 10:08:45', '2025-05-15 13:08:45', '', 7, 'https://forli.local/wp-content/uploads/2025/05/image-8.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2025-05-15 10:08:48', '2025-05-15 13:08:48', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-15 10:08:48', '2025-05-15 13:08:48', '', 7, 'https://forli.local/?p=76', 0, 'revision', '', 0),
(77, 1, '2025-06-07 18:52:45', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-06-07 18:52:45', '0000-00-00 00:00:00', '', 0, 'https://forli.local/?p=77', 0, 'post', '', 0),
(78, 1, '2025-06-07 19:05:02', '2025-06-07 22:05:02', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:05:02', '2025-06-07 22:05:02', '', 7, 'https://forli.local/?p=78', 0, 'revision', '', 0),
(79, 1, '2025-06-07 19:08:19', '2025-06-07 22:08:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_6844b7b7c04e9', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=79', 2, 'acf-field', '', 0),
(80, 1, '2025-06-07 19:08:19', '2025-06-07 22:08:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'ImagenBanner', 'imagenbanner', 'publish', 'closed', 'closed', '', 'field_6844b800c04ea', '', '', '2025-06-07 19:08:19', '2025-06-07 22:08:19', '', 79, 'https://forli.local/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2025-06-07 19:10:42', '2025-06-07 22:10:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:17:\"allow_in_bindings\";i:0;}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_6844b89110017', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 15, 'https://forli.local/?post_type=acf-field&p=81', 6, 'acf-field', '', 0),
(82, 1, '2025-06-07 19:14:28', '2025-06-07 22:14:28', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nosotros', 'nosotros', 'publish', 'closed', 'closed', '', 'field_6844b9b6d5528', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forli.local/?post_type=acf-field&#038;p=82', 4, 'acf-field', '', 0),
(83, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Nosotros', 'imagen_nosotros', 'publish', 'closed', 'closed', '', 'field_6844b9d16db53', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forli.local/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6844ba076db54', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forli.local/?post_type=acf-field&p=84', 1, 'acf-field', '', 0),
(85, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion', 'descripcion', 'publish', 'closed', 'closed', '', 'field_6844ba896db55', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forli.local/?post_type=acf-field&p=85', 2, 'acf-field', '', 0),
(88, 1, '2025-06-07 19:20:02', '2025-06-07 22:20:02', '', 'X5gVx9', '', 'inherit', 'open', 'closed', '', 'x5gvx9', '', '', '2025-06-07 19:20:02', '2025-06-07 22:20:02', '', 7, 'https://forli.local/wp-content/uploads/2025/06/X5gVx9.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2025-06-07 19:20:42', '2025-06-07 22:20:42', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2025-06-07 19:20:42', '2025-06-07 22:20:42', '', 7, 'https://forli.local/wp-content/uploads/2025/06/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2025-06-07 19:23:05', '2025-06-07 22:23:05', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:23:05', '2025-06-07 22:23:05', '', 7, 'https://forli.local/?p=90', 0, 'revision', '', 0),
(91, 1, '2025-06-07 19:28:03', '2025-06-07 22:28:03', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:28:03', '2025-06-07 22:28:03', '', 7, 'https://forli.local/?p=91', 0, 'revision', '', 0),
(92, 1, '2025-06-07 20:41:26', '2025-06-07 23:41:26', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-06-07 23:41:26\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-06-07 23:41:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3cf6e398-a5b1-4820-8d2e-735c3859594d', '', '', '2025-06-07 20:41:26', '2025-06-07 23:41:26', '', 0, 'https://forli.local/2025/06/07/3cf6e398-a5b1-4820-8d2e-735c3859594d/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Tomas Costa'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"ddf9d9f9d629621b63b900241abaaf1226237c5aff81f23e82c1e3757cc7dfec\";a:4:{s:10:\"expiration\";i:1750542765;s:2:\"ip\";s:13:\"191.82.46.211\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36\";s:5:\"login\";i:1749333165;}s:64:\"ffd7026c543e6e24b2e9f7c1b6009559c86fc247085fc6a6dba4457b4c0a4f06\";a:4:{s:10:\"expiration\";i:1750542898;s:2:\"ip\";s:13:\"190.15.203.90\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36\";s:5:\"login\";i:1749333298;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"190.15.203.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-05-13T14:16:23.836Z\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1747314409');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Tomas Costa', '$wp$2y$10$HU.a/6YxXMvImQBIjDkNNuLm97StfUrlXqix4eZY9V8GBNH6vpCiW', 'tomas-costa', 'tomascostapp@gmail.com', 'https://forli.local', '2025-05-13 14:14:31', '', 0, 'Tomas Costa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1809;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
