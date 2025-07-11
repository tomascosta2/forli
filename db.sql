-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 10, 2025 at 12:44 PM
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
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(107, 'action_scheduler/migration_hook', 'complete', '2025-07-04 14:40:58', '2025-07-04 11:40:58', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1751640058;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1751640058;}', 1, 1, '2025-07-04 14:46:14', '2025-07-04 11:46:14', 0, NULL),
(108, 'wp_mail_smtp_summary_report_email', 'complete', '2025-07-07 17:00:00', '2025-07-07 14:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751907600;s:18:\"\0*\0first_timestamp\";i:1751907600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751907600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-07-07 17:23:34', '2025-07-07 14:23:34', 0, NULL),
(109, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-04 14:47:25', '2025-07-04 11:47:25', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751640445;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751640445;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-04 14:47:50', '2025-07-04 11:47:50', 0, NULL),
(110, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-05 14:47:50', '2025-07-05 11:47:50', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751726870;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751726870;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-05 14:54:57', '2025-07-05 11:54:57', 0, NULL),
(111, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-06 14:54:57', '2025-07-06 11:54:57', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751813697;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751813697;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-06 15:21:23', '2025-07-06 12:21:23', 0, NULL),
(112, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-07 15:21:23', '2025-07-07 12:21:23', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751901683;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751901683;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-07 17:23:34', '2025-07-07 14:23:34', 0, NULL),
(113, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-08 17:23:34', '2025-07-08 14:23:34', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1751995414;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1751995414;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-08 18:26:13', '2025-07-08 15:26:13', 0, NULL),
(114, 'wp_mail_smtp_summary_report_email', 'pending', '2025-07-14 17:23:34', '2025-07-14 14:23:34', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1752513814;s:18:\"\0*\0first_timestamp\";i:1751907600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1752513814;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(115, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-07-09 18:26:13', '2025-07-09 15:26:13', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1752085573;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1752085573;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-07-09 18:34:22', '2025-07-09 15:34:22', 0, NULL),
(116, 'wp_mail_smtp_admin_notifications_update', 'pending', '2025-07-10 18:34:22', '2025-07-10 15:34:22', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1752172462;s:18:\"\0*\0first_timestamp\";i:1751640445;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1752172462;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 107, 'action created', '2025-07-04 14:39:58', '2025-07-04 11:39:58'),
(2, 107, 'action started via WP Cron', '2025-07-04 14:46:14', '2025-07-04 11:46:14'),
(3, 107, 'action complete via WP Cron', '2025-07-04 14:46:14', '2025-07-04 11:46:14'),
(4, 108, 'action created', '2025-07-04 14:46:25', '2025-07-04 11:46:25'),
(5, 109, 'action created', '2025-07-04 14:46:25', '2025-07-04 11:46:25'),
(6, 109, 'action started via WP Cron', '2025-07-04 14:47:50', '2025-07-04 11:47:50'),
(7, 109, 'action complete via WP Cron', '2025-07-04 14:47:50', '2025-07-04 11:47:50'),
(8, 110, 'action created', '2025-07-04 14:47:50', '2025-07-04 11:47:50'),
(9, 110, 'action started via WP Cron', '2025-07-05 14:54:57', '2025-07-05 11:54:57'),
(10, 110, 'action complete via WP Cron', '2025-07-05 14:54:57', '2025-07-05 11:54:57'),
(11, 111, 'action created', '2025-07-05 14:54:57', '2025-07-05 11:54:57'),
(12, 111, 'action started via WP Cron', '2025-07-06 15:21:23', '2025-07-06 12:21:23'),
(13, 111, 'action complete via WP Cron', '2025-07-06 15:21:23', '2025-07-06 12:21:23'),
(14, 112, 'action created', '2025-07-06 15:21:23', '2025-07-06 12:21:23'),
(15, 112, 'action started via WP Cron', '2025-07-07 17:23:32', '2025-07-07 14:23:32'),
(16, 112, 'action complete via WP Cron', '2025-07-07 17:23:34', '2025-07-07 14:23:34'),
(17, 113, 'action created', '2025-07-07 17:23:34', '2025-07-07 14:23:34'),
(18, 108, 'action started via WP Cron', '2025-07-07 17:23:34', '2025-07-07 14:23:34'),
(19, 108, 'action complete via WP Cron', '2025-07-07 17:23:34', '2025-07-07 14:23:34'),
(20, 114, 'action created', '2025-07-07 17:23:34', '2025-07-07 14:23:34'),
(21, 113, 'action started via WP Cron', '2025-07-08 18:26:13', '2025-07-08 15:26:13'),
(22, 113, 'action complete via WP Cron', '2025-07-08 18:26:13', '2025-07-08 15:26:13'),
(23, 115, 'action created', '2025-07-08 18:26:13', '2025-07-08 15:26:13'),
(24, 115, 'action started via WP Cron', '2025-07-09 18:34:22', '2025-07-09 15:34:22'),
(25, 115, 'action complete via WP Cron', '2025-07-09 18:34:22', '2025-07-09 15:34:22'),
(26, 116, 'action created', '2025-07-09 18:34:22', '2025-07-09 15:34:22');

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
(1, 'siteurl', 'https://forligastronomia.com', 'yes'),
(2, 'home', 'https://forligastronomia.com', 'yes'),
(3, 'blogname', 'Forli', 'yes'),
(4, 'blogdescription', 'Soluciones Gastronómicas para empresas y eventos', 'yes'),
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
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:27:\"maintenance/maintenance.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
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
(46, 'db_version', '57155', 'yes'),
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
(105, 'widget_block', 'a:3:{i:6;a:1:{s:7:\"content\";s:925:\"<!-- wp:group {\"className\":\"gap-8\",\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group gap-8\"><!-- wp:image {\"id\":95,\"width\":\"95px\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mr-8\"} -->\n<figure class=\"wp-block-image size-full is-resized mr-8\"><img src=\"https://forligastronomia.com/wp-content/uploads/2025/07/forli-logo-footer.png\" alt=\"\" class=\"wp-image-95\" style=\"width:95px\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:social-links {\"iconColor\":\"white\",\"iconColorValue\":\"#FFFFFF\",\"className\":\"is-style-logos-only w-full ml-8\",\"layout\":{\"type\":\"flex\",\"orientation\":\"horizontal\"}} -->\n<ul class=\"wp-block-social-links has-icon-color is-style-logos-only w-full ml-8\"><!-- wp:social-link {\"url\":\"https://www.instagram.com/forligastronomia\",\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"url\":\"linkedin.com\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:189:\"<!-- wp:paragraph {\"className\":\"text-white text-[12px]\"} -->\n<p class=\"text-white text-[12px]\">Copywrit © 2025 Forli Gastronomía. Todos los derechos reservados.</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:7:\"block-6\";i:1;s:7:\"block-8\";}s:16:\"custom-sidebar-1\";a:0:{}s:16:\"custom-sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1752151438;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1752153271;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1752156871;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1752156967;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1752156968;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1752369845;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1752595064;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1752675271;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
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
(171, 'theme_mods_oneonetwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:110;}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(173, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(174, 'recently_activated', 'a:0:{}', 'off'),
(177, 'finished_updating_comment_type', '1', 'yes'),
(178, 'acf_first_activated_version', '6.2.9', 'yes'),
(179, 'acf_version', '6.2.9', 'yes'),
(186, 'db_upgraded', '', 'on'),
(195, 'maintenance_meta', 'a:4:{s:13:\"first_version\";s:4:\"4.06\";s:13:\"first_install\";i:1747151908;s:11:\"old_version\";b:0;s:20:\"hide_welcome_pointer\";b:1;}', 'auto'),
(196, 'mtnc_db_version', '2', 'auto'),
(197, 'maintenance_options', 'a:26:{s:5:\"state\";i:1;s:13:\"exclude_pages\";a:2:{s:4:\"post\";a:0:{}s:4:\"page\";a:0:{}}s:10:\"page_title\";s:30:\"Site is undergoing maintenance\";s:7:\"heading\";s:22:\"Maintenance mode is on\";s:11:\"description\";s:57:\"Site will be available soon. Thank you for your patience!\";s:11:\"footer_text\";s:13:\"© Forli 2025\";s:14:\"show_some_love\";b:0;s:8:\"is_login\";b:1;s:10:\"logo_width\";s:3:\"220\";s:11:\"logo_height\";s:0:\"\";s:4:\"logo\";s:1:\"0\";s:11:\"retina_logo\";s:1:\"0\";s:7:\"body_bg\";s:2:\"59\";s:17:\"bg_image_portrait\";s:1:\"0\";s:13:\"preloader_img\";s:1:\"0\";s:13:\"body_bg_color\";s:7:\"#111111\";s:10:\"font_color\";s:7:\"#ffffff\";s:17:\"controls_bg_color\";s:7:\"#111111\";s:16:\"body_font_family\";s:9:\"Open Sans\";s:16:\"body_font_subset\";s:3:\"300\";s:11:\"503_enabled\";b:0;s:7:\"is_blur\";b:0;s:14:\"blur_intensity\";s:1:\"5\";s:15:\"gg_analytics_id\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:16:\"default_settings\";b:0;}', 'auto'),
(251, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'on'),
(380, 'category_children', 'a:0:{}', 'auto'),
(484, 'acf_site_health', '{\"version\":\"6.4.1\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.1\",\"mysql_version\":\"10.11.10-MariaDB-log\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Oneonetwenty\",\"version\":\"1.0\",\"theme_uri\":\"#!\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.4.1\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.3\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"},\"maintenance\\/maintenance.php\":{\"name\":\"Maintenance\",\"version\":\"4.17\",\"plugin_uri\":\"https:\\/\\/wpmaintenancemode.com\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page==7\"],\"number_of_fields_by_type\":{\"group\":8},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1750557925}', 'off'),
(1571, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"745ccfa3922e52d7372bdf0e5739d82e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(2592, '_site_transient_timeout_browser_cd5d5f3ff8f374827248e13d2f7d64ca', '1752242250', 'no'),
(2593, '_site_transient_browser_cd5d5f3ff8f374827248e13d2f7d64ca', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"137.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2625, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"6.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1751639917;s:7:\"version\";s:3:\"6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(2628, 'action_scheduler_hybrid_store_demarkation', '106', 'auto'),
(2629, 'schema-ActionScheduler_StoreSchema', '7.0.1751639998', 'auto'),
(2630, 'schema-ActionScheduler_LoggerSchema', '3.0.1751639998', 'auto'),
(2631, 'wp_mail_smtp_initial_version', '4.5.0', 'off'),
(2632, 'wp_mail_smtp_version', '4.5.0', 'off'),
(2633, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"tomascostapp@gmail.com\";s:9:\"from_name\";s:5:\"Forli\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'off'),
(2634, 'wp_mail_smtp_activated_time', '1751639998', 'off'),
(2635, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1751639998;}', 'auto'),
(2640, 'action_scheduler_lock_async-request-runner', '68680c79803f62.21014793|1751649461', 'no'),
(2644, 'wp_mail_smtp_migration_version', '5', 'on'),
(2645, 'wp_mail_smtp_debug_events_db_version', '1', 'on'),
(2646, 'wp_mail_smtp_activation_prevent_redirect', '1', 'auto'),
(2648, 'action_scheduler_migration_status', 'complete', 'auto'),
(2649, 'as_has_wp_comment_logs', 'no', 'on'),
(2650, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1751640374;s:9:\"dismissed\";b:0;}', 'auto'),
(2654, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1752086062;s:4:\"feed\";a:1:{i:0;a:7:{s:5:\"title\";s:35:\"It\'s Heating Up – Save up to $70!\";s:7:\"content\";s:321:\"Upgrade your WordPress emails this summer with <strong>PRO features at big savings</strong> - up to $70 off!\r\nEnjoy Email Logging, Failure Alerts, Backup Connections, Smart Routing, One‑click Gmail/SMTP setup, Priority Support &amp; more.\r\nYour coolest deal of the year is here—but it <strong>ends this week</strong>.\";s:4:\"type\";a:1:{i:0;s:4:\"lite\";}s:2:\"id\";i:44;s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:159:\"https://wpmailsmtp.com/wpmailsmtp-lite-upgrade/?utm_source=WordPress&utm_medium=liteplugin&utm_campaign=Plugin Notification&utm_content=Heating Up Lite Upgrade\";s:4:\"text\";s:14:\"Upgrade & Save\";}}s:5:\"start\";s:19:\"2025-07-07 17:53:00\";s:3:\"end\";s:19:\"2025-07-14 00:00:00\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'auto'),
(2657, 'secret_key', 'HPD7P#jV9GCfl<s@`ly]fYSK:.L(:6~ ?W $U?aQXd6f45dYHs$r2zK+>rw8Dj[M', 'no'),
(2664, 'can_compress_scripts', '1', 'yes'),
(2776, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(2777, 'site_logo', '110', 'yes'),
(2956, 'wp_mail_smtp_summary_report_email_last_sent_week', '28', 'yes'),
(2957, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(2958, 'wp_mail_smtp_lite_sent_email_counter', '1', 'yes'),
(2959, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:1:{i:28;i:1;}', 'yes'),
(3061, '_site_transient_timeout_php_check_1ad0acda4da6c4fcb37046d1f090be2c', '1752677198', 'no'),
(3062, '_site_transient_php_check_1ad0acda4da6c4fcb37046d1f090be2c', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3070, '_site_transient_timeout_available_translations', '1752084213', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3071, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.26/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-30 08:30:39\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 06:53:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-26 15:51:34\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-07 05:56:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.5.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:33:29\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:33:50\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-10 15:46:47\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-09 22:55:03\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-05-22 11:31:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-30 13:49:56\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:13:53\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 07:04:13\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 22:56:09\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-07 13:44:02\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.1.7\";s:7:\"updated\";s:19:\"2024-10-17 17:16:56\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.10/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.16/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.21/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-10-10 00:21:34\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-29 01:16:02\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-03 13:45:51\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 20:04:15\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 20:10:38\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2025-03-11 09:39:56\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.33\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.33/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-16 07:24:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-14 10:28:57\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-25 15:08:47\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:44:44\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-24 07:16:04\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.26/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.21/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.7\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.7/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-07 06:00:31\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 22:34:43\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-26 16:49:07\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-09 18:37:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-17 13:37:48\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-28 08:03:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-18 13:37:11\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.15\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-28 13:47:52\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-03 18:00:13\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-05 08:03:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 21:12:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-18 10:04:51\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 04:35:31\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.34\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.34/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-29 14:17:38\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-03 12:43:10\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.5.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-06 19:04:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:26:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.16/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-07 08:38:34\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-03-25 15:04:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-02 19:46:48\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-08 19:36:14\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.25/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-16 14:03:15\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-04 03:17:26\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2025-04-06 13:26:14\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.16/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-03 15:44:41\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-04-28 13:05:34\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3089, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.5.5.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.5.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.5\";s:7:\"version\";s:5:\"6.5.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1752151414;s:15:\"version_checked\";s:5:\"6.5.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.2\";s:7:\"updated\";s:19:\"2024-05-07 13:44:02\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.2/es_AR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(3090, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1752129465;s:7:\"checked\";a:2:{s:12:\"oneonetwenty\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.2.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'no'),
(3091, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1752129465;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"6.1\";s:7:\"updated\";s:19:\"2024-05-08 07:23:50\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/6.1/es_AR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.5.0\";s:7:\"updated\";s:19:\"2022-10-11 02:26:16\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/4.5.0/es_AR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"6.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:27:\"maintenance/maintenance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/maintenance\";s:4:\"slug\";s:11:\"maintenance\";s:6:\"plugin\";s:27:\"maintenance/maintenance.php\";s:11:\"new_version\";s:4:\"4.17\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/maintenance/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/maintenance.4.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/maintenance/assets/icon-256x256.png?rev=2689583\";s:2:\"1x\";s:64:\"https://ps.w.org/maintenance/assets/icon-128x128.png?rev=2689583\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/maintenance/assets/banner-772x250.png?rev=1637471\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.4.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=3206423\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=3206423\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.9\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"6.1\";s:27:\"maintenance/maintenance.php\";s:4:\"4.17\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"4.5.0\";}}', 'no'),
(3102, '_site_transient_timeout_theme_roots', '1752153213', 'no'),
(3103, '_site_transient_theme_roots', 'a:2:{s:12:\"oneonetwenty\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'no');

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
(9, 7, '_edit_lock', '1751639688:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1751638427:1'),
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
(54, 7, 'hero_fondo', '103'),
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
(80, 7, 'modalidad_bajada', '99'),
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
(104, 7, 'banner_2_bajada', '100'),
(105, 7, '_banner_2_bajada', 'field_68235619b6ec7'),
(106, 7, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(107, 7, '_banner_2_boton', 'field_68235620b6ec8'),
(108, 7, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(109, 7, '_banner_2_lista', 'field_6823562cb6ec9'),
(110, 7, 'banner_2', ''),
(111, 7, '_banner_2', 'field_682355f6b6ec5'),
(112, 7, 'clientes_titulo', '101'),
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
(537, 90, '_clientes_cliente_2', 'field_68235675b6ecd'),
(538, 90, 'clientes_cliente_3', '71'),
(539, 90, '_clientes_cliente_3', 'field_68235676b6ece'),
(540, 90, 'clientes_cliente_4', '73'),
(541, 90, '_clientes_cliente_4', 'field_68235678b6ecf'),
(542, 90, 'clientes_cliente_5', '72'),
(543, 90, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(544, 90, 'clientes_cliente_6', '67'),
(545, 90, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(546, 90, 'clientes_cliente_7', '70');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(702, 95, '_wp_attached_file', '2025/07/forli-logo-footer.png'),
(703, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:88;s:6:\"height\";i:42;s:4:\"file\";s:29:\"2025/07/forli-logo-footer.png\";s:8:\"filesize\";i:1403;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 97, '_wp_attached_file', '2025/07/X5gVx9.jpg'),
(705, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:922;s:6:\"height\";i:708;s:4:\"file\";s:18:\"2025/07/X5gVx9.jpg\";s:8:\"filesize\";i:461532;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"X5gVx9-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18351;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"X5gVx9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7285;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"X5gVx9-768x590.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:590;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82881;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 7, 'contacto_imagen', '97'),
(707, 7, '_contacto_imagen', 'field_6867e16a54a98'),
(708, 98, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(709, 98, '_hero_titulo', 'field_6823549cb6eaa'),
(710, 98, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(711, 98, '_hero_bajada', 'field_682354a6b6eab'),
(712, 98, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(713, 98, '_hero_boton', 'field_682354b6b6eac'),
(714, 98, 'hero_fondo', '60'),
(715, 98, '_hero_fondo', 'field_682354bfb6ead'),
(716, 98, 'hero', ''),
(717, 98, '_hero', 'field_6823546fb6ea9'),
(718, 98, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(719, 98, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(720, 98, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(721, 98, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(722, 98, 'servicios_imagen_servicio_1', '61'),
(723, 98, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(724, 98, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(725, 98, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(726, 98, 'servicios_imagen_servicio_2', '62'),
(727, 98, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(728, 98, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(729, 98, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(730, 98, 'servicios', ''),
(731, 98, '_servicios', 'field_682354d1b6eae'),
(732, 98, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(733, 98, '_banner_texto_1', 'field_6823553fb6eb6'),
(734, 98, 'banner_texto_2', 'Calidad\r\nque distingue'),
(735, 98, '_banner_texto_2', 'field_68235562b6eb8'),
(736, 98, 'banner', ''),
(737, 98, '_banner', 'field_6844b7b7c04e9'),
(738, 98, 'modalidad_titulo', 'Modalidad del servicio'),
(739, 98, '_modalidad_titulo', 'field_6823557eb6eba'),
(740, 98, 'modalidad_bajada', '¿Cómo trabajamos?'),
(741, 98, '_modalidad_bajada', 'field_68235585b6ebb'),
(742, 98, 'modalidad_icono_1', '63'),
(743, 98, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(744, 98, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(745, 98, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(746, 98, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(747, 98, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(748, 98, 'modalidad_imagen_1', '65'),
(749, 98, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(750, 98, 'modalidad_icono_2', '64'),
(751, 98, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(752, 98, 'modalidad_titulo_2', 'ENTREGAS'),
(753, 98, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(754, 98, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(755, 98, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(756, 98, 'modalidad_imagen_2', '66'),
(757, 98, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(758, 98, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(759, 98, '_modalidad_boton', 'field_682355deb6ec4'),
(760, 98, 'modalidad', ''),
(761, 98, '_modalidad', 'field_6823556db6eb9'),
(762, 98, 'banner_2_titulo', ' Beneficios para empresas'),
(763, 98, '_banner_2_titulo', 'field_6823560db6ec6'),
(764, 98, 'banner_2_bajada', ''),
(765, 98, '_banner_2_bajada', 'field_68235619b6ec7'),
(766, 98, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(767, 98, '_banner_2_boton', 'field_68235620b6ec8'),
(768, 98, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(769, 98, '_banner_2_lista', 'field_6823562cb6ec9'),
(770, 98, 'banner_2', ''),
(771, 98, '_banner_2', 'field_682355f6b6ec5'),
(772, 98, 'clientes_titulo', 'Clientes satisfechos'),
(773, 98, '_clientes_titulo', 'field_68235656b6ecb'),
(774, 98, 'clientes_cliente_1', '69'),
(775, 98, '_clientes_cliente_1', 'field_68235661b6ecc'),
(776, 98, 'clientes_cliente_2', '68'),
(777, 98, '_clientes_cliente_2', 'field_68235675b6ecd'),
(778, 98, 'clientes_cliente_3', '71'),
(779, 98, '_clientes_cliente_3', 'field_68235676b6ece'),
(780, 98, 'clientes_cliente_4', '73'),
(781, 98, '_clientes_cliente_4', 'field_68235678b6ecf'),
(782, 98, 'clientes_cliente_5', '72'),
(783, 98, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(784, 98, 'clientes_cliente_6', '67'),
(785, 98, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(786, 98, 'clientes_cliente_7', '70'),
(787, 98, '_clientes_cliente_7', 'field_68235680b6ed2'),
(788, 98, 'clientes_logo_cliente_destacado', ''),
(789, 98, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(790, 98, 'clientes_texto_cliente_destacado', ''),
(791, 98, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(792, 98, 'clientes_nombre_cliente_destacado', ''),
(793, 98, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(794, 98, 'clientes_puesto_cliente_destacado', ''),
(795, 98, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(796, 98, 'clientes', ''),
(797, 98, '_clientes', 'field_68235649b6eca'),
(798, 98, 'contacto_arriba_del_titulo', 'Contacto'),
(799, 98, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(800, 98, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(801, 98, '_contacto_titulo', 'field_682356fcb6ed9'),
(802, 98, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(803, 98, '_contacto_bajada', 'field_68235702b6eda'),
(804, 98, 'contacto', ''),
(805, 98, '_contacto', 'field_682356dfb6ed7'),
(806, 98, 'clientes_cliente_destacado', '75'),
(807, 98, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(808, 98, 'servicios_boton', 'a:3:{s:5:\"title\";s:26:\"Conocé nuestros servicios\";s:3:\"url\";s:9:\"#contacto\";s:6:\"target\";s:0:\"\";}'),
(809, 98, '_servicios_boton', 'field_6844b89110017'),
(810, 98, 'banner_imagenbanner', '89'),
(811, 98, '_banner_imagenbanner', 'field_6844b800c04ea'),
(812, 98, 'nosotros_imagen_nosotros', '88'),
(813, 98, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(814, 98, 'nosotros_titulo', 'Sobre Nosotros'),
(815, 98, '_nosotros_titulo', 'field_6844ba076db54'),
(816, 98, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(817, 98, '_nosotros_descripcion', 'field_6844ba896db55'),
(818, 98, 'nosotros', ''),
(819, 98, '_nosotros', 'field_6844b9b6d5528'),
(820, 98, 'beneficios_', ''),
(821, 98, '_beneficios_', 'field_6844badb6db57'),
(822, 98, 'beneficios', ''),
(823, 98, '_beneficios', 'field_6844bac16db56'),
(824, 98, 'contacto_imagen', '97'),
(825, 98, '_contacto_imagen', 'field_6867e16a54a98'),
(826, 99, '_wp_attached_file', '2025/07/bajada-1.png'),
(827, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:807;s:6:\"height\";i:132;s:4:\"file\";s:20:\"2025/07/bajada-1.png\";s:8:\"filesize\";i:48975;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"bajada-1-300x49.png\";s:5:\"width\";i:300;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14125;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"bajada-1-150x132.png\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11477;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"bajada-1-768x126.png\";s:5:\"width\";i:768;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55972;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(828, 100, '_wp_attached_file', '2025/07/bajada-2.png'),
(829, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:519;s:6:\"height\";i:104;s:4:\"file\";s:20:\"2025/07/bajada-2.png\";s:8:\"filesize\";i:13592;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"bajada-2-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8865;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"bajada-2-150x104.png\";s:5:\"width\";i:150;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4771;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(830, 101, '_wp_attached_file', '2025/07/titulo-1.png'),
(831, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:689;s:6:\"height\";i:145;s:4:\"file\";s:20:\"2025/07/titulo-1.png\";s:8:\"filesize\";i:39935;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"titulo-1-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15461;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"titulo-1-150x145.png\";s:5:\"width\";i:150;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8829;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(832, 102, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(833, 102, '_hero_titulo', 'field_6823549cb6eaa'),
(834, 102, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(835, 102, '_hero_bajada', 'field_682354a6b6eab'),
(836, 102, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(837, 102, '_hero_boton', 'field_682354b6b6eac'),
(838, 102, 'hero_fondo', '60'),
(839, 102, '_hero_fondo', 'field_682354bfb6ead'),
(840, 102, 'hero', ''),
(841, 102, '_hero', 'field_6823546fb6ea9'),
(842, 102, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(843, 102, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(844, 102, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(845, 102, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(846, 102, 'servicios_imagen_servicio_1', '61'),
(847, 102, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(848, 102, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(849, 102, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(850, 102, 'servicios_imagen_servicio_2', '62'),
(851, 102, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(852, 102, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(853, 102, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(854, 102, 'servicios', ''),
(855, 102, '_servicios', 'field_682354d1b6eae'),
(856, 102, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(857, 102, '_banner_texto_1', 'field_6823553fb6eb6'),
(858, 102, 'banner_texto_2', 'Calidad\r\nque distingue'),
(859, 102, '_banner_texto_2', 'field_68235562b6eb8'),
(860, 102, 'banner', ''),
(861, 102, '_banner', 'field_6844b7b7c04e9'),
(862, 102, 'modalidad_titulo', 'Modalidad del servicio'),
(863, 102, '_modalidad_titulo', 'field_6823557eb6eba'),
(864, 102, 'modalidad_bajada', '99'),
(865, 102, '_modalidad_bajada', 'field_68235585b6ebb'),
(866, 102, 'modalidad_icono_1', '63'),
(867, 102, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(868, 102, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(869, 102, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(870, 102, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(871, 102, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(872, 102, 'modalidad_imagen_1', '65'),
(873, 102, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(874, 102, 'modalidad_icono_2', '64'),
(875, 102, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(876, 102, 'modalidad_titulo_2', 'ENTREGAS'),
(877, 102, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(878, 102, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(879, 102, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(880, 102, 'modalidad_imagen_2', '66'),
(881, 102, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(882, 102, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(883, 102, '_modalidad_boton', 'field_682355deb6ec4'),
(884, 102, 'modalidad', ''),
(885, 102, '_modalidad', 'field_6823556db6eb9'),
(886, 102, 'banner_2_titulo', ' Beneficios para empresas'),
(887, 102, '_banner_2_titulo', 'field_6823560db6ec6'),
(888, 102, 'banner_2_bajada', '100'),
(889, 102, '_banner_2_bajada', 'field_68235619b6ec7'),
(890, 102, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(891, 102, '_banner_2_boton', 'field_68235620b6ec8'),
(892, 102, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(893, 102, '_banner_2_lista', 'field_6823562cb6ec9'),
(894, 102, 'banner_2', ''),
(895, 102, '_banner_2', 'field_682355f6b6ec5'),
(896, 102, 'clientes_titulo', '101'),
(897, 102, '_clientes_titulo', 'field_68235656b6ecb'),
(898, 102, 'clientes_cliente_1', '69'),
(899, 102, '_clientes_cliente_1', 'field_68235661b6ecc'),
(900, 102, 'clientes_cliente_2', '68'),
(901, 102, '_clientes_cliente_2', 'field_68235675b6ecd'),
(902, 102, 'clientes_cliente_3', '71'),
(903, 102, '_clientes_cliente_3', 'field_68235676b6ece'),
(904, 102, 'clientes_cliente_4', '73'),
(905, 102, '_clientes_cliente_4', 'field_68235678b6ecf'),
(906, 102, 'clientes_cliente_5', '72'),
(907, 102, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(908, 102, 'clientes_cliente_6', '67'),
(909, 102, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(910, 102, 'clientes_cliente_7', '70'),
(911, 102, '_clientes_cliente_7', 'field_68235680b6ed2'),
(912, 102, 'clientes_logo_cliente_destacado', ''),
(913, 102, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(914, 102, 'clientes_texto_cliente_destacado', ''),
(915, 102, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(916, 102, 'clientes_nombre_cliente_destacado', ''),
(917, 102, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(918, 102, 'clientes_puesto_cliente_destacado', ''),
(919, 102, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(920, 102, 'clientes', ''),
(921, 102, '_clientes', 'field_68235649b6eca'),
(922, 102, 'contacto_arriba_del_titulo', 'Contacto'),
(923, 102, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(924, 102, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(925, 102, '_contacto_titulo', 'field_682356fcb6ed9'),
(926, 102, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(927, 102, '_contacto_bajada', 'field_68235702b6eda'),
(928, 102, 'contacto', ''),
(929, 102, '_contacto', 'field_682356dfb6ed7'),
(930, 102, 'clientes_cliente_destacado', '75'),
(931, 102, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(932, 102, 'servicios_boton', 'a:3:{s:5:\"title\";s:26:\"Conocé nuestros servicios\";s:3:\"url\";s:9:\"#contacto\";s:6:\"target\";s:0:\"\";}'),
(933, 102, '_servicios_boton', 'field_6844b89110017'),
(934, 102, 'banner_imagenbanner', '89'),
(935, 102, '_banner_imagenbanner', 'field_6844b800c04ea'),
(936, 102, 'nosotros_imagen_nosotros', '88'),
(937, 102, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(938, 102, 'nosotros_titulo', 'Sobre Nosotros'),
(939, 102, '_nosotros_titulo', 'field_6844ba076db54'),
(940, 102, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(941, 102, '_nosotros_descripcion', 'field_6844ba896db55'),
(942, 102, 'nosotros', ''),
(943, 102, '_nosotros', 'field_6844b9b6d5528'),
(944, 102, 'beneficios_', ''),
(945, 102, '_beneficios_', 'field_6844badb6db57'),
(946, 102, 'beneficios', ''),
(947, 102, '_beneficios', 'field_6844bac16db56'),
(948, 102, 'contacto_imagen', '97'),
(949, 102, '_contacto_imagen', 'field_6867e16a54a98'),
(950, 103, '_wp_attached_file', '2025/07/Hero.jpg'),
(951, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:677;s:4:\"file\";s:16:\"2025/07/Hero.jpg\";s:8:\"filesize\";i:684521;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"Hero-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12843;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"Hero-1024x481.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:481;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93640;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"Hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6650;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"Hero-768x361.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:361;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59439;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(952, 104, 'hero_titulo', 'Soluciones Gastronómicas para empresas y eventos'),
(953, 104, '_hero_titulo', 'field_6823549cb6eaa'),
(954, 104, 'hero_bajada', 'Desde 2013, FORLI ofrece viandas empresariales, catering y desayunos corporativos.'),
(955, 104, '_hero_bajada', 'field_682354a6b6eab'),
(956, 104, 'hero_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(957, 104, '_hero_boton', 'field_682354b6b6eac'),
(958, 104, 'hero_fondo', '103'),
(959, 104, '_hero_fondo', 'field_682354bfb6ead'),
(960, 104, 'hero', ''),
(961, 104, '_hero', 'field_6823546fb6ea9'),
(962, 104, 'servicios_titulo_servicio_1', 'Viandas Corporativas'),
(963, 104, '_servicios_titulo_servicio_1', 'field_682354ddb6eaf'),
(964, 104, 'servicios_descripcion_servicio_1', 'Ofrecemos un servicio especializado de viandas para empresas, diseñado para cubrir las necesidades nutricionales de los colaboradores sin comprometer la calidad ni el sabor.\r\n\r\nNuestras viandas se elaboran con ingredientes frescos, siguiendo estrictos controles de higiene y con asesoramiento nutricional profesional.\r\n\r\nBrindamos opciones personalizadas según requerimientos específicos (vegetarianas, celíacas, bajas en sodio, etc.), promoviendo una alimentación saludable en el ámbito laboral.'),
(965, 104, '_servicios_descripcion_servicio_1', 'field_682354f2b6eb0'),
(966, 104, 'servicios_imagen_servicio_1', '61'),
(967, 104, '_servicios_imagen_servicio_1', 'field_68235503b6eb1'),
(968, 104, 'servicios_titulo_servicio_2', 'Catering para Eventos Privados y Gubernamentales'),
(969, 104, '_servicios_titulo_servicio_2', 'field_6823550fb6eb2'),
(970, 104, 'servicios_imagen_servicio_2', '62'),
(971, 104, '_servicios_imagen_servicio_2', 'field_68235522b6eb4'),
(972, 104, 'servicios_descripcion_servicio_2', 'Contamos con una amplia experiencia en la organización y provisión de catering para eventos tanto del ámbito privado como gubernamental.\r\n\r\nNos adaptamos a las necesidades y protocolos de cada ocasión, ofreciendo desde desayunos ejecutivos, coffee breaks y almuerzos corporativos, hasta recepciones formales, cócteles y celebraciones especiales.\r\n\r\nCada propuesta es personalizada, cuidando la presentación, el sabor y la logística integral del servicio.'),
(973, 104, '_servicios_descripcion_servicio_2', 'field_68235513b6eb3'),
(974, 104, 'servicios', ''),
(975, 104, '_servicios', 'field_682354d1b6eae'),
(976, 104, 'banner_texto_1', 'Sabores\r\nque inspiran'),
(977, 104, '_banner_texto_1', 'field_6823553fb6eb6'),
(978, 104, 'banner_texto_2', 'Calidad\r\nque distingue'),
(979, 104, '_banner_texto_2', 'field_68235562b6eb8'),
(980, 104, 'banner', ''),
(981, 104, '_banner', 'field_6844b7b7c04e9'),
(982, 104, 'modalidad_titulo', 'Modalidad del servicio'),
(983, 104, '_modalidad_titulo', 'field_6823557eb6eba'),
(984, 104, 'modalidad_bajada', '99'),
(985, 104, '_modalidad_bajada', 'field_68235585b6ebb'),
(986, 104, 'modalidad_icono_1', '63'),
(987, 104, '_modalidad_icono_1', 'field_6823558cb6ebc'),
(988, 104, 'modalidad_titulo_1', 'MENÚ SEMANAL'),
(989, 104, '_modalidad_titulo_1', 'field_682355a8b6ebd'),
(990, 104, 'modalidad_descripcion_1', 'Diseñado según los requerimientos de cada cliente '),
(991, 104, '_modalidad_descripcion_1', 'field_682355b1b6ebe'),
(992, 104, 'modalidad_imagen_1', '65'),
(993, 104, '_modalidad_imagen_1', 'field_682355bdb6ebf'),
(994, 104, 'modalidad_icono_2', '64'),
(995, 104, '_modalidad_icono_2', 'field_682355c9b6ec0'),
(996, 104, 'modalidad_titulo_2', 'ENTREGAS'),
(997, 104, '_modalidad_titulo_2', 'field_682355ccb6ec1'),
(998, 104, 'modalidad_descripcion_2', 'Entregas diarias en horarios pactados'),
(999, 104, '_modalidad_descripcion_2', 'field_682355ceb6ec2'),
(1000, 104, 'modalidad_imagen_2', '66'),
(1001, 104, '_modalidad_imagen_2', 'field_682355d1b6ec3'),
(1002, 104, 'modalidad_boton', 'a:3:{s:5:\"title\";s:18:\"Solicitá tu menú\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(1003, 104, '_modalidad_boton', 'field_682355deb6ec4'),
(1004, 104, 'modalidad', ''),
(1005, 104, '_modalidad', 'field_6823556db6eb9'),
(1006, 104, 'banner_2_titulo', ' Beneficios para empresas'),
(1007, 104, '_banner_2_titulo', 'field_6823560db6ec6'),
(1008, 104, 'banner_2_bajada', '100'),
(1009, 104, '_banner_2_bajada', 'field_68235619b6ec7'),
(1010, 104, 'banner_2_boton', 'a:3:{s:5:\"title\";s:11:\"Contactanos\";s:3:\"url\";s:2:\"#!\";s:6:\"target\";s:0:\"\";}'),
(1011, 104, '_banner_2_boton', 'field_68235620b6ec8'),
(1012, 104, 'banner_2_lista', '<ul>\r\n 	<li>Comidas de calidad con ingredientes frescos</li>\r\n 	<li>Mejora del bienestar y la productividad de los empleados</li>\r\n 	<li>Opciones personalizadas según necesidades nutricionales</li>\r\n 	<li>Entrega confiable y puntual</li>\r\n</ul>'),
(1013, 104, '_banner_2_lista', 'field_6823562cb6ec9'),
(1014, 104, 'banner_2', ''),
(1015, 104, '_banner_2', 'field_682355f6b6ec5'),
(1016, 104, 'clientes_titulo', '101'),
(1017, 104, '_clientes_titulo', 'field_68235656b6ecb'),
(1018, 104, 'clientes_cliente_1', '69'),
(1019, 104, '_clientes_cliente_1', 'field_68235661b6ecc'),
(1020, 104, 'clientes_cliente_2', '68'),
(1021, 104, '_clientes_cliente_2', 'field_68235675b6ecd'),
(1022, 104, 'clientes_cliente_3', '71'),
(1023, 104, '_clientes_cliente_3', 'field_68235676b6ece'),
(1024, 104, 'clientes_cliente_4', '73'),
(1025, 104, '_clientes_cliente_4', 'field_68235678b6ecf'),
(1026, 104, 'clientes_cliente_5', '72'),
(1027, 104, '_clientes_cliente_5', 'field_6823567ab6ed0'),
(1028, 104, 'clientes_cliente_6', '67'),
(1029, 104, '_clientes_cliente_6', 'field_6823567eb6ed1'),
(1030, 104, 'clientes_cliente_7', '70'),
(1031, 104, '_clientes_cliente_7', 'field_68235680b6ed2'),
(1032, 104, 'clientes_logo_cliente_destacado', ''),
(1033, 104, '_clientes_logo_cliente_destacado', 'field_68235696b6ed3'),
(1034, 104, 'clientes_texto_cliente_destacado', ''),
(1035, 104, '_clientes_texto_cliente_destacado', 'field_682356acb6ed4'),
(1036, 104, 'clientes_nombre_cliente_destacado', ''),
(1037, 104, '_clientes_nombre_cliente_destacado', 'field_682356beb6ed5'),
(1038, 104, 'clientes_puesto_cliente_destacado', ''),
(1039, 104, '_clientes_puesto_cliente_destacado', 'field_682356cdb6ed6'),
(1040, 104, 'clientes', ''),
(1041, 104, '_clientes', 'field_68235649b6eca'),
(1042, 104, 'contacto_arriba_del_titulo', 'Contacto'),
(1043, 104, '_contacto_arriba_del_titulo', 'field_682356eeb6ed8'),
(1044, 104, 'contacto_titulo', '¿Necesitás viandas, catering o un servicio gastronómico para tu empresa? '),
(1045, 104, '_contacto_titulo', 'field_682356fcb6ed9'),
(1046, 104, 'contacto_bajada', 'Completá el formulario y te contactamos.'),
(1047, 104, '_contacto_bajada', 'field_68235702b6eda'),
(1048, 104, 'contacto', ''),
(1049, 104, '_contacto', 'field_682356dfb6ed7'),
(1050, 104, 'clientes_cliente_destacado', '75'),
(1051, 104, '_clientes_cliente_destacado', 'field_68235696b6ed3'),
(1052, 104, 'servicios_boton', 'a:3:{s:5:\"title\";s:26:\"Conocé nuestros servicios\";s:3:\"url\";s:9:\"#contacto\";s:6:\"target\";s:0:\"\";}'),
(1053, 104, '_servicios_boton', 'field_6844b89110017'),
(1054, 104, 'banner_imagenbanner', '89'),
(1055, 104, '_banner_imagenbanner', 'field_6844b800c04ea'),
(1056, 104, 'nosotros_imagen_nosotros', '88'),
(1057, 104, '_nosotros_imagen_nosotros', 'field_6844b9d16db53'),
(1058, 104, 'nosotros_titulo', 'Sobre Nosotros'),
(1059, 104, '_nosotros_titulo', 'field_6844ba076db54'),
(1060, 104, 'nosotros_descripcion', 'Contamos con la experiencia del Cvhef Orlando Díaz Masa, quien fue jefe de cocina durante varios años en el prestigioso restaurante 1884 de Francis Mallmann. Desde 2013, nos especializamos en catering ejecutivo, viandas corporativas y la organización de eventos tanto privados como gubernamentales, incluyendo la Cumbre de las Américas y encuentros presidenciales latinoamericanos entre 2012 y 2015.\r\n\r\nEntre nuestros clientes se destacan el Consulado de Chile, la Dirección General de Escuelas, y fundaciones como Siemens y Cimientos (Buenos Aires), así como empresas de renombre como YPF y Bunge &amp; Born, entre otros.\r\n\r\nActualmente, brindamos el servicio de almuerzo para el personal de una reconocida bodega de la región.\r\n\r\nRecientemente, nos fue otorgada la concesión del buffet de la Facultad de Derecho de la Universidad Nacional de Cuyo, un nuevo paso que reafirma nuestro compromiso con la calidad y el servicio.'),
(1061, 104, '_nosotros_descripcion', 'field_6844ba896db55'),
(1062, 104, 'nosotros', ''),
(1063, 104, '_nosotros', 'field_6844b9b6d5528'),
(1064, 104, 'beneficios_', ''),
(1065, 104, '_beneficios_', 'field_6844badb6db57'),
(1066, 104, 'beneficios', ''),
(1067, 104, '_beneficios', 'field_6844bac16db56'),
(1068, 104, 'contacto_imagen', '97'),
(1069, 104, '_contacto_imagen', 'field_6867e16a54a98'),
(1070, 105, '_form', '<div class=\"formulario-contacto\">\n  <label class=\"block mb-4\">Nombre y apellido<br />\n    [text* your-name placeholder \"Nombre y apellido\"]\n  </label><br />\n\n  <label class=\"block mb-4\">Email<br />\n    [email* your-email placeholder \"Email\"]\n  </label><br />\n\n  <label class=\"block mb-4\">Teléfono<br />\n    [tel your-phone placeholder \"Teléfono\"]\n  </label><br />\n\n  <label class=\"block mb-4\">Empresa<br />\n    [text your-company placeholder \"Empresa\"]\n  </label><br />\n\n  <label class=\"block mb-4\">Mensaje<br />\n    [textarea your-message placeholder \"Mensaje\"]\n  </label><br />\n\n  [submit \"Enviar\"]\n</div>'),
(1071, 105, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <wordpress@forligastronomia.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(1072, 105, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <wordpress@forligastronomia.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(1073, 105, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(1074, 105, '_additional_settings', ''),
(1075, 105, '_locale', 'es_AR'),
(1076, 105, '_hash', 'c0a414278a95600c8952a88bef77d924f84b14d24ccac25b09091f629531214a'),
(1077, 106, '_menu_item_type', 'custom'),
(1078, 106, '_menu_item_menu_item_parent', '0'),
(1079, 106, '_menu_item_object_id', '106'),
(1080, 106, '_menu_item_object', 'custom'),
(1081, 106, '_menu_item_target', ''),
(1082, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1083, 106, '_menu_item_xfn', ''),
(1084, 106, '_menu_item_url', '#servicios'),
(1086, 107, '_menu_item_type', 'custom'),
(1087, 107, '_menu_item_menu_item_parent', '0'),
(1088, 107, '_menu_item_object_id', '107'),
(1089, 107, '_menu_item_object', 'custom'),
(1090, 107, '_menu_item_target', ''),
(1091, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1092, 107, '_menu_item_xfn', ''),
(1093, 107, '_menu_item_url', '#nosotros'),
(1095, 108, '_menu_item_type', 'custom'),
(1096, 108, '_menu_item_menu_item_parent', '0'),
(1097, 108, '_menu_item_object_id', '108'),
(1098, 108, '_menu_item_object', 'custom'),
(1099, 108, '_menu_item_target', ''),
(1100, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1101, 108, '_menu_item_xfn', ''),
(1102, 108, '_menu_item_url', '#clientes'),
(1104, 109, '_menu_item_type', 'custom'),
(1105, 109, '_menu_item_menu_item_parent', '0'),
(1106, 109, '_menu_item_object_id', '109'),
(1107, 109, '_menu_item_object', 'custom'),
(1108, 109, '_menu_item_target', ''),
(1109, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1110, 109, '_menu_item_xfn', ''),
(1111, 109, '_menu_item_url', '#contacto'),
(1113, 110, '_wp_attached_file', '2025/07/forli-logo-header.png'),
(1114, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:171;s:6:\"height\";i:81;s:4:\"file\";s:29:\"2025/07/forli-logo-header.png\";s:8:\"filesize\";i:2841;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"forli-logo-header-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2303;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1115, 111, '_wp_trash_meta_status', 'publish'),
(1116, 111, '_wp_trash_meta_time', '1751647741');

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
(1, 1, '2025-05-13 11:14:31', '2025-05-13 14:14:31', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después ¡empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2025-05-13 11:14:31', '2025-05-13 14:14:31', '', 0, 'https://forligastronomia.com/?p=1', 0, 'post', '', 1),
(7, 1, '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 'Forli Gastronomia', '', 'publish', 'closed', 'closed', '', 'forli-gastronomia', '', '', '2025-07-04 11:30:29', '2025-07-04 14:30:29', '', 0, 'https://forligastronomia.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-13 11:16:31', '2025-05-13 14:16:31', '', 7, 'https://forligastronomia.com/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6823546f225ba', '', '', '2025-07-04 11:15:58', '2025-07-04 14:15:58', '', 0, 'https://forligastronomia.com/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_6823546fb6ea9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 9, 'https://forligastronomia.com/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823549cb6eaa', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forligastronomia.com/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_682354a6b6eab', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forligastronomia.com/?post_type=acf-field&p=12', 1, 'acf-field', '', 0),
(13, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_682354b6b6eac', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forligastronomia.com/?post_type=acf-field&p=13', 2, 'acf-field', '', 0),
(14, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Fondo', 'fondo', 'publish', 'closed', 'closed', '', 'field_682354bfb6ead', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 10, 'https://forligastronomia.com/?post_type=acf-field&p=14', 3, 'acf-field', '', 0),
(15, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Servicios', 'servicios', 'publish', 'closed', 'closed', '', 'field_682354d1b6eae', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 9, 'https://forligastronomia.com/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo Servicio 1', 'titulo_servicio_1', 'publish', 'closed', 'closed', '', 'field_682354ddb6eaf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion Servicio 1', 'descripcion_servicio_1', 'publish', 'closed', 'closed', '', 'field_682354f2b6eb0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Servicio 1', 'imagen_servicio_1', 'publish', 'closed', 'closed', '', 'field_68235503b6eb1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo Servicio 2', 'titulo_servicio_2', 'publish', 'closed', 'closed', '', 'field_6823550fb6eb2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=19', 3, 'acf-field', '', 0),
(20, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Servicio 2', 'imagen_servicio_2', 'publish', 'closed', 'closed', '', 'field_68235522b6eb4', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=20', 4, 'acf-field', '', 0),
(21, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion Servicio 2', 'descripcion_servicio_2', 'publish', 'closed', 'closed', '', 'field_68235513b6eb3', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=21', 5, 'acf-field', '', 0),
(25, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Modalidad', 'modalidad', 'publish', 'closed', 'closed', '', 'field_6823556db6eb9', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=25', 3, 'acf-field', '', 0),
(26, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823557eb6eba', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235585b6ebb', '', '', '2025-07-04 11:15:58', '2025-07-04 14:15:58', '', 25, 'https://forligastronomia.com/?post_type=acf-field&#038;p=27', 1, 'acf-field', '', 0),
(28, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icono 1', 'icono_1', 'publish', 'closed', 'closed', '', 'field_6823558cb6ebc', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo 1', 'titulo_1', 'publish', 'closed', 'closed', '', 'field_682355a8b6ebd', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=29', 3, 'acf-field', '', 0),
(30, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripcion 1', 'descripcion_1', 'publish', 'closed', 'closed', '', 'field_682355b1b6ebe', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=30', 4, 'acf-field', '', 0),
(31, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen 1', 'imagen_1', 'publish', 'closed', 'closed', '', 'field_682355bdb6ebf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=31', 5, 'acf-field', '', 0),
(32, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icono 2', 'icono_2', 'publish', 'closed', 'closed', '', 'field_682355c9b6ec0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=32', 6, 'acf-field', '', 0),
(33, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo 2', 'titulo_2', 'publish', 'closed', 'closed', '', 'field_682355ccb6ec1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=33', 7, 'acf-field', '', 0),
(34, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripcion 2', 'descripcion_2', 'publish', 'closed', 'closed', '', 'field_682355ceb6ec2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=34', 8, 'acf-field', '', 0),
(35, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen 2', 'imagen_2', 'publish', 'closed', 'closed', '', 'field_682355d1b6ec3', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=35', 9, 'acf-field', '', 0),
(36, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_682355deb6ec4', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 25, 'https://forligastronomia.com/?post_type=acf-field&p=36', 10, 'acf-field', '', 0),
(37, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner 2', 'banner_2', 'publish', 'closed', 'closed', '', 'field_682355f6b6ec5', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=37', 5, 'acf-field', '', 0),
(38, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6823560db6ec6', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forligastronomia.com/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235619b6ec7', '', '', '2025-07-04 11:15:58', '2025-07-04 14:15:58', '', 37, 'https://forligastronomia.com/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_68235620b6ec8', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forligastronomia.com/?post_type=acf-field&p=40', 2, 'acf-field', '', 0),
(41, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Lista', 'lista', 'publish', 'closed', 'closed', '', 'field_6823562cb6ec9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 37, 'https://forligastronomia.com/?post_type=acf-field&p=41', 3, 'acf-field', '', 0),
(42, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Clientes', 'clientes', 'publish', 'closed', 'closed', '', 'field_68235649b6eca', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=42', 6, 'acf-field', '', 0),
(43, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_68235656b6ecb', '', '', '2025-07-04 11:15:58', '2025-07-04 14:15:58', '', 42, 'https://forligastronomia.com/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(44, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 1', 'cliente_1', 'publish', 'closed', 'closed', '', 'field_68235661b6ecc', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 2', 'cliente_2', 'publish', 'closed', 'closed', '', 'field_68235675b6ecd', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=45', 2, 'acf-field', '', 0),
(46, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 3', 'cliente_3', 'publish', 'closed', 'closed', '', 'field_68235676b6ece', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
(47, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 4', 'cliente_4', 'publish', 'closed', 'closed', '', 'field_68235678b6ecf', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=47', 4, 'acf-field', '', 0),
(48, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 5', 'cliente_5', 'publish', 'closed', 'closed', '', 'field_6823567ab6ed0', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=48', 5, 'acf-field', '', 0),
(49, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 6', 'cliente_6', 'publish', 'closed', 'closed', '', 'field_6823567eb6ed1', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=49', 6, 'acf-field', '', 0),
(50, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente 7', 'cliente_7', 'publish', 'closed', 'closed', '', 'field_68235680b6ed2', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 42, 'https://forligastronomia.com/?post_type=acf-field&p=50', 7, 'acf-field', '', 0),
(51, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Cliente Destacado', 'cliente_destacado', 'publish', 'closed', 'closed', '', 'field_68235696b6ed3', '', '', '2025-05-15 10:07:26', '2025-05-15 13:07:26', '', 42, 'https://forligastronomia.com/?post_type=acf-field&#038;p=51', 8, 'acf-field', '', 0),
(55, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contacto', 'contacto', 'publish', 'closed', 'closed', '', 'field_682356dfb6ed7', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=55', 7, 'acf-field', '', 0),
(56, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Arriba Del Titulo', 'arriba_del_titulo', 'publish', 'closed', 'closed', '', 'field_682356eeb6ed8', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forligastronomia.com/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_682356fcb6ed9', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forligastronomia.com/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2025-05-13 11:28:27', '2025-05-13 14:28:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_68235702b6eda', '', '', '2025-05-13 11:28:27', '2025-05-13 14:28:27', '', 55, 'https://forligastronomia.com/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2025-05-13 12:58:27', '2025-05-13 15:58:27', '', 'mt-sample-background', '', 'inherit', 'open', 'closed', '', 'mt-sample-background', '', '', '2025-05-13 12:58:27', '2025-05-13 15:58:27', '', 0, 'https://forligastronomia.com/wp-content/uploads/2025/05/mt-sample-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2025-05-15 09:50:39', '2025-05-15 12:50:39', '', 'forli-hero-bg', '', 'inherit', 'open', 'closed', '', 'forli-hero-bg', '', '', '2025-05-15 09:50:44', '2025-05-15 12:50:44', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/forli-hero-bg.webp', 0, 'attachment', 'image/webp', 0),
(61, 1, '2025-05-15 09:51:38', '2025-05-15 12:51:38', '', 'forli-viandas-corporativas', '', 'inherit', 'open', 'closed', '', '8f1b0f1df516c452428445b857595a2d6f987eb5', '', '', '2025-05-15 09:52:08', '2025-05-15 12:52:08', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/8f1b0f1df516c452428445b857595a2d6f987eb5.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2025-05-15 09:52:44', '2025-05-15 12:52:44', '', 'a4ffd45e8eafaa69a872e91298b9dc7566db0f1d', '', 'inherit', 'open', 'closed', '', 'a4ffd45e8eafaa69a872e91298b9dc7566db0f1d', '', '', '2025-05-15 09:53:02', '2025-05-15 12:53:02', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/a4ffd45e8eafaa69a872e91298b9dc7566db0f1d.webp', 0, 'attachment', 'image/webp', 0),
(63, 1, '2025-05-15 09:56:30', '2025-05-15 12:56:30', '', 'Layer_1 (9)', '', 'inherit', 'open', 'closed', '', 'layer_1-9', '', '', '2025-05-15 09:56:38', '2025-05-15 12:56:38', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/Layer_1-9.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2025-05-15 09:56:50', '2025-05-15 12:56:50', '', 'Layer_1 (10)', '', 'inherit', 'open', 'closed', '', 'layer_1-10', '', '', '2025-05-15 09:56:56', '2025-05-15 12:56:56', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/Layer_1-10.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2025-05-15 09:57:50', '2025-05-15 12:57:50', '', 'b357e4a7a1535b8ddeeb48529a076e69eb296e9b', '', 'inherit', 'open', 'closed', '', 'b357e4a7a1535b8ddeeb48529a076e69eb296e9b', '', '', '2025-05-15 09:57:50', '2025-05-15 12:57:50', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/b357e4a7a1535b8ddeeb48529a076e69eb296e9b.webp', 0, 'attachment', 'image/webp', 0),
(66, 1, '2025-05-15 09:57:58', '2025-05-15 12:57:58', '', '5f967cae64e3f29110052d8b7ce85e5f03799ecb', '', 'inherit', 'open', 'closed', '', '5f967cae64e3f29110052d8b7ce85e5f03799ecb', '', '', '2025-05-15 09:57:58', '2025-05-15 12:57:58', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/5f967cae64e3f29110052d8b7ce85e5f03799ecb.webp', 0, 'attachment', 'image/webp', 0),
(67, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'al5oHR', '', 'inherit', 'open', 'closed', '', 'al5ohr', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/al5oHR.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'be67d1', '', 'inherit', 'open', 'closed', '', 'be67d1', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/be67d1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 'Group', '', 'inherit', 'open', 'closed', '', 'group', '', '', '2025-05-15 10:05:57', '2025-05-15 13:05:57', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/Group.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'nMz9z9', '', 'inherit', 'open', 'closed', '', 'nmz9z9', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/nMz9z9.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'Toratq', '', 'inherit', 'open', 'closed', '', 'toratq', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/Toratq.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 'Txb6cn', '', 'inherit', 'open', 'closed', '', 'txb6cn', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/Txb6cn.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', '_x32_hzxDm', '', 'inherit', 'open', 'closed', '', '_x32_hzxdm', '', '', '2025-05-15 10:05:58', '2025-05-15 13:05:58', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/x32_hzxDm.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2025-05-15 10:06:53', '2025-05-15 13:06:53', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-15 10:06:53', '2025-05-15 13:06:53', '', 7, 'https://forligastronomia.com/?p=74', 0, 'revision', '', 0),
(75, 1, '2025-05-15 10:08:45', '2025-05-15 13:08:45', '', 'image 8', '', 'inherit', 'open', 'closed', '', 'image-8', '', '', '2025-05-15 10:08:45', '2025-05-15 13:08:45', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/05/image-8.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2025-05-15 10:08:48', '2025-05-15 13:08:48', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-05-15 10:08:48', '2025-05-15 13:08:48', '', 7, 'https://forligastronomia.com/?p=76', 0, 'revision', '', 0),
(78, 1, '2025-06-07 19:05:02', '2025-06-07 22:05:02', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:05:02', '2025-06-07 22:05:02', '', 7, 'https://forligastronomia.com/?p=78', 0, 'revision', '', 0),
(79, 1, '2025-06-07 19:08:19', '2025-06-07 22:08:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_6844b7b7c04e9', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=79', 2, 'acf-field', '', 0),
(80, 1, '2025-06-07 19:08:19', '2025-06-07 22:08:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'ImagenBanner', 'imagenbanner', 'publish', 'closed', 'closed', '', 'field_6844b800c04ea', '', '', '2025-06-07 19:08:19', '2025-06-07 22:08:19', '', 79, 'https://forligastronomia.com/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2025-06-07 19:10:42', '2025-06-07 22:10:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:17:\"allow_in_bindings\";i:0;}', 'Boton', 'boton', 'publish', 'closed', 'closed', '', 'field_6844b89110017', '', '', '2025-06-07 19:10:42', '2025-06-07 22:10:42', '', 15, 'https://forligastronomia.com/?post_type=acf-field&p=81', 6, 'acf-field', '', 0),
(82, 1, '2025-06-07 19:14:28', '2025-06-07 22:14:28', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nosotros', 'nosotros', 'publish', 'closed', 'closed', '', 'field_6844b9b6d5528', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 9, 'https://forligastronomia.com/?post_type=acf-field&#038;p=82', 4, 'acf-field', '', 0),
(83, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen Nosotros', 'imagen_nosotros', 'publish', 'closed', 'closed', '', 'field_6844b9d16db53', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forligastronomia.com/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_6844ba076db54', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forligastronomia.com/?post_type=acf-field&p=84', 1, 'acf-field', '', 0),
(85, 1, '2025-06-07 19:19:33', '2025-06-07 22:19:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion', 'descripcion', 'publish', 'closed', 'closed', '', 'field_6844ba896db55', '', '', '2025-06-07 19:19:33', '2025-06-07 22:19:33', '', 82, 'https://forligastronomia.com/?post_type=acf-field&p=85', 2, 'acf-field', '', 0),
(88, 1, '2025-06-07 19:20:02', '2025-06-07 22:20:02', '', 'X5gVx9', '', 'inherit', 'open', 'closed', '', 'x5gvx9', '', '', '2025-06-07 19:20:02', '2025-06-07 22:20:02', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/06/X5gVx9.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2025-06-07 19:20:42', '2025-06-07 22:20:42', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2025-06-07 19:20:42', '2025-06-07 22:20:42', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/06/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2025-06-07 19:23:05', '2025-06-07 22:23:05', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:23:05', '2025-06-07 22:23:05', '', 7, 'https://forligastronomia.com/?p=90', 0, 'revision', '', 0),
(91, 1, '2025-06-07 19:28:03', '2025-06-07 22:28:03', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-06-07 19:28:03', '2025-06-07 22:28:03', '', 7, 'https://forligastronomia.com/?p=91', 0, 'revision', '', 0),
(94, 1, '2025-07-04 10:57:30', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-07-04 10:57:30', '0000-00-00 00:00:00', '', 0, 'https://forligastronomia.com/?p=94', 0, 'post', '', 0),
(95, 1, '2025-07-04 11:01:00', '2025-07-04 14:01:00', '', 'forli-logo-footer', '', 'inherit', 'open', 'closed', '', 'forli-logo-footer', '', '', '2025-07-04 11:01:00', '2025-07-04 14:01:00', '', 0, 'https://forligastronomia.com/wp-content/uploads/2025/07/forli-logo-footer.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2025-07-04 11:13:09', '2025-07-04 14:13:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_6867e16a54a98', '', '', '2025-07-04 11:13:09', '2025-07-04 14:13:09', '', 55, 'https://forligastronomia.com/?post_type=acf-field&p=96', 3, 'acf-field', '', 0),
(97, 1, '2025-07-04 11:13:26', '2025-07-04 14:13:26', '', 'X5gVx9', '', 'inherit', 'open', 'closed', '', 'x5gvx9-2', '', '', '2025-07-04 11:13:26', '2025-07-04 14:13:26', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/07/X5gVx9.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2025-07-04 11:13:45', '2025-07-04 14:13:45', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-07-04 11:13:45', '2025-07-04 14:13:45', '', 7, 'https://forligastronomia.com/?p=98', 0, 'revision', '', 0),
(99, 1, '2025-07-04 11:16:29', '2025-07-04 14:16:29', '', 'bajada-1', '', 'inherit', 'open', 'closed', '', 'bajada-1', '', '', '2025-07-04 11:16:29', '2025-07-04 14:16:29', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/07/bajada-1.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2025-07-04 11:16:42', '2025-07-04 14:16:42', '', 'bajada-2', '', 'inherit', 'open', 'closed', '', 'bajada-2', '', '', '2025-07-04 11:16:42', '2025-07-04 14:16:42', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/07/bajada-2.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2025-07-04 11:16:50', '2025-07-04 14:16:50', '', 'titulo-1', '', 'inherit', 'open', 'closed', '', 'titulo-1', '', '', '2025-07-04 11:16:50', '2025-07-04 14:16:50', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/07/titulo-1.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2025-07-04 11:16:56', '2025-07-04 14:16:56', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-07-04 11:16:56', '2025-07-04 14:16:56', '', 7, 'https://forligastronomia.com/?p=102', 0, 'revision', '', 0),
(103, 1, '2025-07-04 11:30:25', '2025-07-04 14:30:25', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2025-07-04 11:30:25', '2025-07-04 14:30:25', '', 7, 'https://forligastronomia.com/wp-content/uploads/2025/07/Hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2025-07-04 11:30:29', '2025-07-04 14:30:29', '', 'Forli Gastronomia', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-07-04 11:30:29', '2025-07-04 14:30:29', '', 7, 'https://forligastronomia.com/?p=104', 0, 'revision', '', 0),
(105, 1, '2025-07-04 11:38:37', '2025-07-04 14:38:37', '<div class=\"formulario-contacto\">\r\n  <label class=\"block mb-4\">Nombre y apellido<br />\r\n    [text* your-name placeholder \"Nombre y apellido\"]\r\n  </label><br />\r\n\r\n  <label class=\"block mb-4\">Email<br />\r\n    [email* your-email placeholder \"Email\"]\r\n  </label><br />\r\n\r\n  <label class=\"block mb-4\">Teléfono<br />\r\n    [tel your-phone placeholder \"Teléfono\"]\r\n  </label><br />\r\n\r\n  <label class=\"block mb-4\">Empresa<br />\r\n    [text your-company placeholder \"Empresa\"]\r\n  </label><br />\r\n\r\n  <label class=\"block mb-4\">Mensaje<br />\r\n    [textarea your-message placeholder \"Mensaje\"]\r\n  </label><br />\r\n\r\n  [submit \"Enviar\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@forligastronomia.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@forligastronomia.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n1\n1\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Formulario de contacto', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2025-07-04 11:58:53', '2025-07-04 14:58:53', '', 0, 'https://forligastronomia.com/?post_type=wpcf7_contact_form&#038;p=105', 0, 'wpcf7_contact_form', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2025-07-04 13:48:41', '2025-07-04 16:48:18', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2025-07-04 13:48:41', '2025-07-04 16:48:41', '', 0, 'https://forligastronomia.com/?p=106', 1, 'nav_menu_item', '', 0),
(107, 1, '2025-07-04 13:48:41', '2025-07-04 16:48:18', '', 'Quiénes Somos', '', 'publish', 'closed', 'closed', '', 'quienes-somos', '', '', '2025-07-04 13:48:41', '2025-07-04 16:48:41', '', 0, 'https://forligastronomia.com/?p=107', 2, 'nav_menu_item', '', 0),
(108, 1, '2025-07-04 13:48:41', '2025-07-04 16:48:18', '', 'Clientes', '', 'publish', 'closed', 'closed', '', 'clientes', '', '', '2025-07-04 13:48:41', '2025-07-04 16:48:41', '', 0, 'https://forligastronomia.com/?p=108', 3, 'nav_menu_item', '', 0),
(109, 1, '2025-07-04 13:48:41', '2025-07-04 16:48:18', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2025-07-04 13:48:41', '2025-07-04 16:48:41', '', 0, 'https://forligastronomia.com/?p=109', 4, 'nav_menu_item', '', 0),
(110, 1, '2025-07-04 13:48:50', '2025-07-04 16:48:50', '', 'forli-logo-header', '', 'inherit', 'open', 'closed', '', 'forli-logo-header', '', '', '2025-07-04 13:48:50', '2025-07-04 16:48:50', '', 0, 'https://forligastronomia.com/wp-content/uploads/2025/07/forli-logo-header.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2025-07-04 13:49:01', '2025-07-04 16:49:01', '{\n    \"blogdescription\": {\n        \"value\": \"Soluciones Gastron\\u00f3micas para empresas y eventos\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-04 16:49:01\"\n    },\n    \"oneonetwenty::custom_logo\": {\n        \"value\": 110,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-04 16:49:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3f047a0-01fe-4e31-815b-dc4646ff6689', '', '', '2025-07-04 13:49:01', '2025-07-04 16:49:01', '', 0, 'https://forligastronomia.com/2025/07/04/d3f047a0-01fe-4e31-815b-dc4646ff6689/', 0, 'customize_changeset', '', 0);

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
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0);

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
(1, 1, 0),
(106, 2, 0),
(107, 2, 0),
(108, 2, 0),
(109, 2, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

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
(16, 1, 'session_tokens', 'a:2:{s:64:\"71f8124729fdeb770b817c824c422d2e9cd9be9e9b574fd0c8c58d78a4ec1ff5\";a:4:{s:10:\"expiration\";i:1751850656;s:2:\"ip\";s:13:\"190.15.220.53\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36\";s:5:\"login\";i:1750641056;}s:64:\"269833e9edfdf8a2d020d97d7d2d5be694e59c1530aa995a0f60fade4309d0ce\";a:4:{s:10:\"expiration\";i:1752846979;s:2:\"ip\";s:13:\"190.15.220.53\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36\";s:5:\"login\";i:1751637379;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '94'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"190.15.220.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-07-04T14:09:42.717Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:1:{s:34:\"isInspectorControlsTabsHintVisible\";b:0;}}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1747314409'),
(22, 1, 'default_password_nag', ''),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

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
(1, 'Tomas Costa', '$P$BVttkTCwCx3kZAQTreEEntKnKXuWGJ/', 'tomas-costa', 'tomascostapp@gmail.com', 'https://forligastronomia.com', '2025-05-13 14:14:31', '', 0, 'Tomas Costa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2025-07-04 14:46:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3104;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
