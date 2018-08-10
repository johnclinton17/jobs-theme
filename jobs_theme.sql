-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2018 at 10:37 AM
-- Server version: 5.6.26-74.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `niyatmek_agility`
--

-- --------------------------------------------------------
--
-- Table structure for table `wp_cf7_vdata`
--

CREATE TABLE `wp_cf7_vdata` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_cf7_vdata`
--

INSERT INTO `wp_cf7_vdata` (`id`, `created`) VALUES
(1, '2018-06-28 00:59:10'),
(2, '2018-06-28 01:02:15'),
(3, '2018-06-28 01:05:55'),
(4, '2018-06-28 01:06:30'),
(5, '2018-06-28 01:08:04'),
(6, '2018-06-28 01:10:42'),
(7, '2018-06-28 01:11:23'),
(8, '2018-06-28 01:19:24'),
(9, '2018-06-28 01:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7_vdata_entry`
--

CREATE TABLE `wp_cf7_vdata_entry` (
  `id` int(11) NOT NULL,
  `cf7_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_cf7_vdata_entry`
--

INSERT INTO `wp_cf7_vdata_entry` (`id`, `cf7_id`, `data_id`, `name`, `value`) VALUES
(1, 41, 1, 'email', 'prabavathy@niyati.com'),
(2, 41, 1, 'submit_time', '2018-06-28 06:29:10'),
(3, 41, 1, 'submit_ip', '192.168.1.25'),
(4, 4, 2, 'email-9', 'kalpana@niyati.com'),
(5, 4, 2, 'submit_time', '2018-06-28 06:32:15'),
(6, 4, 2, 'submit_ip', '192.168.1.25'),
(7, 4, 3, 'email-9', 'kumar@niyati.com'),
(8, 4, 3, 'submit_time', '2018-06-28 06:35:55'),
(9, 4, 3, 'submit_ip', '192.168.1.28'),
(10, 41, 4, 'email', 'kumar@niyati.com'),
(11, 41, 4, 'submit_time', '2018-06-28 06:36:30'),
(12, 41, 4, 'submit_ip', '192.168.1.28'),
(13, 41, 5, 'email', 'john@niyati.com'),
(14, 41, 5, 'submit_time', '2018-06-28 06:38:04'),
(15, 41, 5, 'submit_ip', '192.168.1.81'),
(16, 41, 6, 'email', 'johnclinton17@gmail.com'),
(17, 41, 6, 'submit_time', '2018-06-28 06:40:42'),
(18, 41, 6, 'submit_ip', '192.168.1.81'),
(19, 41, 7, 'email', 'johnclinton17@gmail.com'),
(20, 41, 7, 'submit_time', '2018-06-28 06:41:23'),
(21, 41, 7, 'submit_ip', '192.168.1.81'),
(22, 4, 8, 'email-9', 'john@Niyati.com'),
(23, 4, 8, 'submit_time', '2018-06-28 06:49:24'),
(24, 4, 8, 'submit_ip', '192.168.1.81'),
(25, 41, 9, 'email', 'johnclinton17@gmail.com'),
(26, 41, 9, 'submit_time', '2018-06-28 06:49:40'),
(27, 41, 9, 'submit_ip', '192.168.1.81');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-05 07:32:41', '2018-06-05 07:32:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_deliverreport`
--

CREATE TABLE `wp_es_deliverreport` (
  `es_deliver_id` int(10) UNSIGNED NOT NULL,
  `es_deliver_sentguid` varchar(255) NOT NULL,
  `es_deliver_emailid` int(10) UNSIGNED NOT NULL,
  `es_deliver_emailmail` varchar(255) NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) NOT NULL DEFAULT 'Immediately'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_emaillist`
--

CREATE TABLE `wp_es_emaillist` (
  `es_email_id` int(10) UNSIGNED NOT NULL,
  `es_email_name` varchar(255) NOT NULL,
  `es_email_mail` varchar(255) NOT NULL,
  `es_email_status` varchar(25) NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) NOT NULL,
  `es_email_group` varchar(255) NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_es_emaillist`
--

INSERT INTO `wp_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'john@niyati.com', 'Confirmed', '2018-06-28 05:26:09', '0', 'Public', 'aklmij-gtounw-aqcfjt-wskiov-fozmug'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2018-06-28 05:26:09', '0', 'Public', 'xselum-rxnoap-yjiwnu-cfypvb-aeikdn'),
(3, '', 'prabavathy@niyati.com', 'Unconfirmed', '2018-06-28 05:55:42', '0', 'Public', 'dcwfpu-tzgvkr-nioegc-sfalyk-jefloa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_notification`
--

CREATE TABLE `wp_es_notification` (
  `es_note_id` int(10) UNSIGNED NOT NULL,
  `es_note_cat` text,
  `es_note_group` varchar(255) NOT NULL,
  `es_note_templ` int(10) UNSIGNED NOT NULL,
  `es_note_status` varchar(10) NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_es_notification`
--

INSERT INTO `wp_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Administrative## -- ##Alabama## -- ##location## -- ##Uncategorized## ', 'Public', 115, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_sentdetails`
--

CREATE TABLE `wp_es_sentdetails` (
  `es_sent_id` int(10) UNSIGNED NOT NULL,
  `es_sent_guid` varchar(255) NOT NULL,
  `es_sent_qstring` varchar(255) NOT NULL,
  `es_sent_source` varchar(255) NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) UNSIGNED NOT NULL,
  `es_sent_preview` text,
  `es_sent_status` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_fields`
--

CREATE TABLE `wp_mf_custom_fields` (
  `id` int(19) NOT NULL,
  `name` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `description` text,
  `post_type` varchar(120) NOT NULL,
  `custom_group_id` int(19) NOT NULL,
  `type` varchar(100) NOT NULL,
  `required_field` tinyint(1) DEFAULT NULL,
  `display_order` mediumint(9) DEFAULT '0',
  `duplicated` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_groups`
--

CREATE TABLE `wp_mf_custom_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `duplicated` tinyint(1) DEFAULT '0',
  `expanded` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_taxonomy`
--

CREATE TABLE `wp_mf_custom_taxonomy` (
  `id` mediumint(9) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_posttypes`
--

CREATE TABLE `wp_mf_posttypes` (
  `id` mediumint(9) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_post_meta`
--

CREATE TABLE `wp_mf_post_meta` (
  `meta_id` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_count` int(11) NOT NULL,
  `group_count` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(1) NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `profile` mediumtext,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL DEFAULT '0',
  `last_activity` int(11) NOT NULL DEFAULT '0',
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(4) NOT NULL DEFAULT '',
  `region` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `bounce_type` varchar(50) NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `list_21` tinyint(4) NOT NULL DEFAULT '0',
  `list_22` tinyint(4) NOT NULL DEFAULT '0',
  `list_23` tinyint(4) NOT NULL DEFAULT '0',
  `list_24` tinyint(4) NOT NULL DEFAULT '0',
  `list_25` tinyint(4) NOT NULL DEFAULT '0',
  `list_26` tinyint(4) NOT NULL DEFAULT '0',
  `list_27` tinyint(4) NOT NULL DEFAULT '0',
  `list_28` tinyint(4) NOT NULL DEFAULT '0',
  `list_29` tinyint(4) NOT NULL DEFAULT '0',
  `list_30` tinyint(4) NOT NULL DEFAULT '0',
  `list_31` tinyint(4) NOT NULL DEFAULT '0',
  `list_32` tinyint(4) NOT NULL DEFAULT '0',
  `list_33` tinyint(4) NOT NULL DEFAULT '0',
  `list_34` tinyint(4) NOT NULL DEFAULT '0',
  `list_35` tinyint(4) NOT NULL DEFAULT '0',
  `list_36` tinyint(4) NOT NULL DEFAULT '0',
  `list_37` tinyint(4) NOT NULL DEFAULT '0',
  `list_38` tinyint(4) NOT NULL DEFAULT '0',
  `list_39` tinyint(4) NOT NULL DEFAULT '0',
  `list_40` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` longtext,
  `subject2` varchar(255) NOT NULL DEFAULT '',
  `message2` longtext,
  `name2` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `track` int(11) NOT NULL DEFAULT '0',
  `list` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `query` longtext,
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` varchar(20) NOT NULL DEFAULT '',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `message_text` longtext,
  `preferences` longtext,
  `send_on` int(11) NOT NULL DEFAULT '0',
  `token` varchar(10) NOT NULL DEFAULT '',
  `options` longtext,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(10) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(4) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_user_logs`
--

CREATE TABLE `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `source` varchar(50) NOT NULL DEFAULT '',
  `data` longtext,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nls_subscribers`
--

CREATE TABLE `wp_nls_subscribers` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `act_code` varchar(255) NOT NULL,
  `deact_code` varchar(255) NOT NULL,
  `extra_detail` text,
  `form_type` varchar(255) NOT NULL,
  `flag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://niyati.website/AgilityPersonnel', 'yes'),
(2, 'home', 'http://niyati.website/AgilityPersonnel', 'yes'),
(3, 'blogname', 'AgilityPersonnel', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'john@niyati.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:138:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"home_banner/?$\";s:31:\"index.php?post_type=home_banner\";s:44:\"home_banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_banner&feed=$matches[1]\";s:39:\"home_banner/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_banner&feed=$matches[1]\";s:31:\"home_banner/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=home_banner&paged=$matches[1]\";s:7:\"jobs/?$\";s:24:\"index.php?post_type=jobs\";s:37:\"jobs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=jobs&feed=$matches[1]\";s:32:\"jobs/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=jobs&feed=$matches[1]\";s:24:\"jobs/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=jobs&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:51:\"job_search/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?job_search=$matches[1]&feed=$matches[2]\";s:46:\"job_search/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?job_search=$matches[1]&feed=$matches[2]\";s:27:\"job_search/([^/]+)/embed/?$\";s:43:\"index.php?job_search=$matches[1]&embed=true\";s:39:\"job_search/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?job_search=$matches[1]&page=$matches[2]\";s:21:\"job_search/([^/]+)/?$\";s:32:\"index.php?job_search=$matches[1]\";s:39:\"home_banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_banner/([^/]+)/embed/?$\";s:44:\"index.php?home_banner=$matches[1]&embed=true\";s:32:\"home_banner/([^/]+)/trackback/?$\";s:38:\"index.php?home_banner=$matches[1]&tb=1\";s:52:\"home_banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_banner=$matches[1]&feed=$matches[2]\";s:47:\"home_banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_banner=$matches[1]&feed=$matches[2]\";s:40:\"home_banner/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_banner=$matches[1]&paged=$matches[2]\";s:47:\"home_banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_banner=$matches[1]&cpage=$matches[2]\";s:36:\"home_banner/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_banner=$matches[1]&page=$matches[2]\";s:28:\"home_banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"jobs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"jobs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"jobs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"jobs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"jobs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"jobs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"jobs/([^/]+)/embed/?$\";s:37:\"index.php?jobs=$matches[1]&embed=true\";s:25:\"jobs/([^/]+)/trackback/?$\";s:31:\"index.php?jobs=$matches[1]&tb=1\";s:45:\"jobs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?jobs=$matches[1]&feed=$matches[2]\";s:40:\"jobs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?jobs=$matches[1]&feed=$matches[2]\";s:33:\"jobs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?jobs=$matches[1]&paged=$matches[2]\";s:40:\"jobs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?jobs=$matches[1]&cpage=$matches[2]\";s:29:\"jobs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?jobs=$matches[1]&page=$matches[2]\";s:21:\"jobs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"jobs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"jobs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"jobs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"jobs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"jobs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:35:\"advanced-cf7-db/advanced-cf7-db.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:101:\"D:\\webs\\John\\AgilityPersonnel\\website/wp-content/plugins/category-pagination-fix/category-pagefix.php\";i:1;s:87:\"D:\\webs\\John\\AgilityPersonnel\\website/wp-content/plugins/advanced-custom-fields/acf.php\";i:2;s:73:\"D:\\webs\\John\\AgilityPersonnel\\website/wp-content/themes/agility/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'agility', 'yes'),
(41, 'stylesheet', 'agility', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '33', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '36', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:77:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"cf7_db_form_view102\";b:1;s:20:\"cf7_db_form_edit_102\";b:1;s:18:\"cf7_db_form_view98\";b:1;s:19:\"cf7_db_form_edit_98\";b:1;s:18:\"cf7_db_form_view94\";b:1;s:19:\"cf7_db_form_edit_94\";b:1;s:18:\"cf7_db_form_view92\";b:1;s:19:\"cf7_db_form_edit_92\";b:1;s:18:\"cf7_db_form_view69\";b:1;s:19:\"cf7_db_form_edit_69\";b:1;s:18:\"cf7_db_form_view46\";b:1;s:19:\"cf7_db_form_edit_46\";b:1;s:18:\"cf7_db_form_view41\";b:1;s:19:\"cf7_db_form_edit_41\";b:1;s:17:\"cf7_db_form_view4\";b:1;s:18:\"cf7_db_form_edit_4\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:13:\"custom_html-3\";i:1;s:13:\"custom_html-4\";i:2;s:13:\"custom_html-5\";i:3;s:13:\"custom_html-6\";}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:13:\"custom_html-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:13:\"custom_html-7\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:7:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:155:\"<h5>Talent</h5>\r\n<ul>  \r\n<a href=\"#\"><li>Submit Resume</li></a>\r\n<a href=\"#\"><li>Browse Jobs </li></a>\r\n<a href=\"#\"><li>Contact a Recruiter</li></a>\r\n</ul>\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:155:\"<h5>Talent</h5>\r\n<ul>  \r\n<a href=\"#\"><li>Submit Resume</li></a>\r\n<a href=\"#\"><li>Browse Jobs </li></a>\r\n<a href=\"#\"><li>Contact a Recruiter</li></a>\r\n</ul>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:121:\"<h5>Companies</h5>\r\n<ul>  \r\n<a href=\"#\"><li>Request Talent</li></a>\r\n<a href=\"#\"><li>Contact a Recruiter </li></a>\r\n</ul>\";}i:5;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:112:\"<h5>What We Do</h5>\r\n<ul>  \r\n<a href=\"#\"><li>Corporate Blog</li></a>\r\n<a href=\"#\"><li>Contact Us</li></a>\r\n</ul>\";}i:6;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:131:\"<h5>Agility Personnel</h5>\r\n<p> 32238 Paseo Adelanto Ste. D\r\nSan Juan Capistrano, CA 92675\r\nagilityjobs@agilitypersonnel.com </p>\r\n\";}i:7;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:168:\"<p>\r\n32238 Paseo Adelanto Ste. D\r\nSan Juan Capistrano, CA 92675            <a href=\"mailto:agilityjobs@agilitypersonnel.com\">agilityjobs@agilitypersonnel.com </a>\r\n</p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:7:{i:1533573380;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533583974;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533627224;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533627381;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533632066;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533632146;a:1:{s:29:\"newsletter_extension_versions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentysixteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528184271;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(138, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'current_theme', 'agility', 'yes'),
(146, 'theme_mods_danex', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:7:\"m1_logo\";s:79:\"http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/logo.png\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528192234;s:4:\"data\";a:7:{s:11:\"footer-left\";a:1:{i:0;s:13:\"custom_html-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"footer1\";a:1:{i:0;s:13:\"custom_html-3\";}s:7:\"footer2\";a:1:{i:0;s:13:\"custom_html-4\";}s:7:\"footer3\";a:1:{i:0;s:13:\"custom_html-5\";}s:7:\"footer4\";a:1:{i:0;s:13:\"custom_html-6\";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(154, 'recently_activated', 'a:5:{s:39:\"email-subscribers/email-subscribers.php\";i:1530165845;s:61:\"newsletter-subscription-form/newsletter-subscription-form.php\";i:1530090272;s:21:\"newsletter/plugin.php\";i:1530089759;s:23:\"wordfence/wordfence.php\";i:1529643764;s:44:\"category-pagination-fix/category-pagefix.php\";i:1529587837;}', 'yes'),
(155, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1528188189;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(156, 'mf_db_version', '3', 'yes'),
(157, 'acf_version', '4.4.12', 'yes'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(174, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533570845;s:7:\"checked\";a:1:{s:7:\"agility\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(176, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528192254;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:13:\"custom_html-3\";i:1;s:13:\"custom_html-4\";i:2;s:13:\"custom_html-5\";i:3;s:13:\"custom_html-6\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:13:\"custom_html-2\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(178, 'theme_mods_agility', 'a:2:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(195, 'category_children', 'a:1:{i:7;a:1:{i:0;i:8;}}', 'yes'),
(325, 'jobs_category_children', 'a:2:{i:9;a:16:{i:0;i:10;i:1;i:11;i:2;i:12;i:3;i:30;i:4;i:31;i:5;i:32;i:6;i:33;i:7;i:34;i:8;i:35;i:9;i:36;i:10;i:37;i:11;i:38;i:12;i:39;i:13;i:40;i:14;i:41;i:15;i:42;}i:13;a:16:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:18;i:4;i:19;i:5;i:20;i:6;i:21;i:7;i:28;i:8;i:43;i:9;i:44;i:10;i:45;i:11;i:46;i:12;i:47;i:13;i:48;i:14;i:49;i:15;i:50;}}', 'yes'),
(329, 'job search_children', 'a:1:{i:52;a:1:{i:0;i:51;}}', 'yes'),
(474, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(477, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(479, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(480, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(482, 'addtoany_options', 'a:36:{s:8:\"position\";s:6:\"bottom\";s:30:\"display_in_posts_on_front_page\";s:2:\"-1\";s:33:\"display_in_posts_on_archive_pages\";s:2:\"-1\";s:19:\"display_in_excerpts\";s:2:\"-1\";s:16:\"display_in_posts\";s:2:\"-1\";s:16:\"display_in_pages\";s:2:\"-1\";s:22:\"display_in_attachments\";s:2:\"-1\";s:15:\"display_in_feed\";s:2:\"-1\";s:7:\"onclick\";s:2:\"-1\";s:9:\"icon_size\";s:2:\"32\";s:7:\"icon_bg\";s:8:\"original\";s:13:\"icon_bg_color\";s:7:\"#2a2a2a\";s:7:\"icon_fg\";s:8:\"original\";s:13:\"icon_fg_color\";s:7:\"#ffffff\";s:6:\"button\";s:4:\"TEXT\";s:13:\"button_custom\";s:0:\"\";s:17:\"button_show_count\";s:2:\"-1\";s:6:\"header\";s:0:\"\";s:23:\"additional_js_variables\";s:0:\"\";s:14:\"additional_css\";s:0:\"\";s:12:\"custom_icons\";s:2:\"-1\";s:16:\"custom_icons_url\";s:1:\"/\";s:17:\"custom_icons_type\";s:3:\"png\";s:18:\"custom_icons_width\";s:0:\"\";s:19:\"custom_icons_height\";s:0:\"\";s:5:\"cache\";s:2:\"-1\";s:26:\"display_in_cpt_home_banner\";s:2:\"-1\";s:19:\"display_in_cpt_jobs\";s:1:\"1\";s:11:\"button_text\";s:5:\"Share\";s:24:\"special_facebook_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:15:\"active_services\";a:3:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";}s:29:\"special_facebook_like_options\";a:1:{s:4:\"verb\";s:4:\"like\";}s:29:\"special_twitter_tweet_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:30:\"special_google_plusone_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:33:\"special_google_plus_share_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:29:\"special_pinterest_pin_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}}', 'yes'),
(483, 'addthis_shared_settings', 'a:52:{s:28:\"addthis_asynchronous_loading\";b:0;s:24:\"addthis_per_post_enabled\";b:1;s:15:\"addthis_profile\";s:0:\"\";s:15:\"addthis_rate_us\";s:0:\"\";s:15:\"profile_edition\";s:9:\"anonymous\";s:7:\"api_key\";s:0:\"\";s:12:\"ajax_support\";b:0;s:28:\"credential_validation_status\";s:1:\"0\";s:22:\"filter_get_the_excerpt\";b:1;s:18:\"filter_the_excerpt\";b:1;s:22:\"filter_wp_trim_excerpt\";b:0;s:8:\"wpfooter\";b:1;s:11:\"xmlns_attrs\";b:1;s:30:\"follow_buttons_feature_enabled\";b:0;s:35:\"recommended_content_feature_enabled\";b:0;s:31:\"sharing_buttons_feature_enabled\";b:0;s:14:\"enqueue_client\";b:1;s:22:\"enqueue_local_settings\";b:0;s:12:\"debug_enable\";b:0;s:19:\"addthis_environment\";s:0:\"\";s:23:\"addthis_plugin_controls\";s:9:\"WordPress\";s:20:\"darkseid_environment\";s:0:\"\";s:20:\"settings_ui_base_url\";s:0:\"\";s:24:\"addthis_twitter_template\";s:0:\"\";s:13:\"addthis_bitly\";b:0;s:18:\"addthis_share_json\";s:0:\"\";s:25:\"addthis_share_follow_json\";s:0:\"\";s:30:\"addthis_share_recommended_json\";s:0:\"\";s:27:\"addthis_share_trending_json\";s:0:\"\";s:26:\"addthis_share_welcome_json\";s:0:\"\";s:19:\"addthis_layers_json\";s:0:\"\";s:26:\"addthis_layers_follow_json\";s:0:\"\";s:31:\"addthis_layers_recommended_json\";s:0:\"\";s:28:\"addthis_layers_trending_json\";s:0:\"\";s:27:\"addthis_layers_welcome_json\";s:0:\"\";s:16:\"data_ga_property\";s:0:\"\";s:16:\"addthis_language\";s:0:\"\";s:9:\"atversion\";s:3:\"300\";s:19:\"addthis_append_data\";b:1;s:18:\"addthis_addressbar\";b:0;s:11:\"addthis_508\";b:0;s:19:\"addthis_config_json\";s:0:\"\";s:26:\"addthis_config_follow_json\";s:0:\"\";s:31:\"addthis_config_recommended_json\";s:0:\"\";s:28:\"addthis_config_trending_json\";s:0:\"\";s:27:\"addthis_config_welcome_json\";s:0:\"\";s:14:\"startUpgradeAt\";i:4;s:25:\"addthis_anonymous_profile\";s:35:\"wp-da917b9aa9ebbf3c414fa803ba30a561\";s:28:\"registration_feature_enabled\";b:0;s:0:\"\";s:0:\"\";s:25:\"addthis_layers_share_json\";s:0:\"\";s:15:\"script_location\";s:6:\"footer\";}', 'yes'),
(484, 'addthis_follow_buttons_settings', 'a:3:{s:4:\"flwh\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}s:4:\"flwv\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:5:\"title\";s:0:\"\";s:8:\"thankyou\";b:1;s:8:\"services\";O:8:\"stdClass\":0:{}}s:5:\"smlfw\";a:7:{s:7:\"enabled\";b:0;s:5:\"theme\";s:11:\"transparent\";s:10:\"responsive\";i:979;s:6:\"offset\";a:3:{s:8:\"location\";s:3:\"top\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}}', 'yes'),
(485, 'addthis_sharing_buttons_settings', 'a:2:{s:14:\"startUpgradeAt\";i:6;s:4:\"74mz\";a:10:{s:2:\"id\";s:4:\"shin\";s:7:\"enabled\";b:1;s:6:\"counts\";s:4:\"none\";s:20:\"numPreferredServices\";i:3;s:20:\"auto_personalization\";b:0;s:4:\"size\";s:4:\"32px\";s:5:\"style\";s:10:\"responsive\";s:8:\"elements\";a:1:{i:0;s:34:\".addthis_inline_share_toolbox_74mz\";}s:8:\"widgetId\";s:4:\"74mz\";s:8:\"services\";a:4:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:5:\"email\";i:3;s:20:\"google_plusone_share\";}}}', 'yes'),
(486, 'addthis_recommended_content_settings', 'a:2:{s:5:\"smlre\";a:3:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";}s:5:\"smlwn\";a:4:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";s:6:\"offset\";a:3:{s:8:\"location\";s:5:\"right\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}}}', 'yes'),
(487, 'widget_addthis_tool_by_class_name_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(488, 'widget_addthis_global_options_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(497, 'widget_st_button_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(498, 'sharethis_button_config', 'a:2:{s:6:\"inline\";a:14:{s:9:\"alignment\";s:6:\"center\";s:7:\"enabled\";s:4:\"true\";s:9:\"font_size\";s:2:\"11\";s:6:\"labels\";s:4:\"none\";s:9:\"min_count\";s:2:\"10\";s:7:\"padding\";s:1:\"8\";s:6:\"radius\";s:3:\"4px\";s:8:\"networks\";a:1:{i:0;s:9:\"sharethis\";}s:10:\"show_total\";s:5:\"false\";s:19:\"show_mobile_buttons\";s:4:\"true\";s:17:\"use_native_counts\";s:4:\"true\";s:4:\"size\";s:2:\"32\";s:7:\"spacing\";s:1:\"8\";s:10:\"updated_at\";s:13:\"1528873344739\";}s:6:\"sticky\";a:14:{s:9:\"alignment\";s:4:\"left\";s:7:\"enabled\";s:5:\"false\";s:6:\"labels\";s:3:\"cta\";s:9:\"min_count\";s:2:\"10\";s:6:\"radius\";s:1:\"4\";s:17:\"mobile_breakpoint\";s:4:\"1024\";s:3:\"top\";s:3:\"160\";s:11:\"show_mobile\";s:4:\"true\";s:10:\"show_total\";s:4:\"true\";s:12:\"show_desktop\";s:5:\"false\";s:17:\"use_native_counts\";s:4:\"true\";s:2:\"ts\";s:13:\"1528873614132\";s:10:\"updated_at\";s:13:\"1528873614132\";s:8:\"networks\";N;}}', 'yes'),
(499, 'sharethis_first_product', 'inline', 'yes'),
(501, 'sharethis_property_id', '5b20c179a9f66c001162f628-b56f62c0-6ed7-11e8-a0a4-5587ce9fbf94', 'yes'),
(502, 'sharethis_token', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfaWQiOiI1YjIwYzE3ODBjNDhjZjAwMTFmYWYyODAiLCJlbWFpbCI6ImpvaG5Abml5YXRpLmNvbSJ9.-jCeXhqH_0WsG6emjD0y4LQ4uakCie_xja_T0crFZ-w', 'yes'),
(511, 'cross_share_settings', 'a:15:{s:13:\"share_options\";a:1:{i:0;s:4:\"post\";}s:15:\"social_icon_set\";s:1:\"1\";s:15:\"share_positions\";s:13:\"above_content\";s:15:\"social_networks\";a:5:{s:8:\"facebook\";i:1;s:9:\"pinterest\";i:1;s:7:\"twitter\";i:1;s:11:\"google-plus\";i:0;s:8:\"qiikchat\";i:0;}s:23:\"disable_frontend_assets\";s:1:\"0\";s:10:\"share_text\";s:0:\"\";s:16:\"twitter_username\";s:0:\"\";s:22:\"counter_enable_options\";s:1:\"0\";s:19:\"twitter_counter_api\";s:1:\"1\";s:28:\"total_counter_enable_options\";s:1:\"0\";s:12:\"cache_period\";s:2:\"24\";s:18:\"dialog_box_options\";s:1:\"1\";s:18:\"apss_email_subject\";s:13:\"email subjetc\";s:15:\"apss_email_body\";s:10:\"email body\";s:29:\"apss_social_counts_transients\";a:0:{}}', 'yes'),
(512, 'apss_social_counts_transients', 'a:3:{i:0;s:35:\"fb_49e2007b5a8c5b4c6db8859cdacb0505\";i:1;s:42:\"pinterest_49e2007b5a8c5b4c6db8859cdacb0505\";i:2;s:40:\"twitter_49e2007b5a8c5b4c6db8859cdacb0505\";}', 'yes'),
(698, 'wp_paginate_options', 'a:20:{s:5:\"title\";s:6:\"Pages:\";s:8:\"nextpage\";s:7:\"&raquo;\";s:12:\"previouspage\";s:7:\"&laquo;\";s:3:\"css\";b:1;s:6:\"before\";s:42:\"&lt;div class=\\&quot;navigation\\&quot;&gt;\";s:5:\"after\";s:12:\"&lt;/div&gt;\";s:5:\"empty\";b:1;s:5:\"range\";i:3;s:6:\"anchor\";i:1;s:3:\"gap\";i:3;s:10:\"everywhere\";b:0;s:9:\"home-page\";b:0;s:9:\"blog-page\";b:0;s:11:\"search-page\";b:0;s:13:\"category-page\";b:1;s:12:\"archive-page\";b:1;s:8:\"position\";s:4:\"none\";s:24:\"hide-standard-pagination\";b:0;s:4:\"font\";s:12:\"font-inherit\";s:6:\"preset\";s:15:\"wpp-modern-grey\";}', 'yes'),
(707, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:0:\"\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:8:\"« First\";s:9:\"last_text\";s:7:\"Last »\";s:9:\"prev_text\";s:2:\"«\";s:9:\"next_text\";s:2:\"»\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";i:0;s:16:\"use_pagenavi_css\";i:1;s:5:\"style\";i:1;}', 'yes'),
(785, 'wordfence_version', '7.1.7', 'yes'),
(786, 'wordfence_installed', '1', 'yes'),
(787, 'wordfenceActivated', '0', 'yes'),
(788, 'wf_plugin_act_error', '', 'yes'),
(953, 'newsletter_logger_secret', '1b43914f', 'yes'),
(955, 'newsletter_main_first_install_time', '1530089714', 'no'),
(956, 'newsletter_main', 'a:29:{s:11:\"return_path\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"sender_email\";s:17:\"newsletter@server\";s:11:\"sender_name\";s:16:\"AgilityPersonnel\";s:6:\"editor\";i:0;s:13:\"scheduler_max\";i:100;s:9:\"phpmailer\";i:0;s:5:\"debug\";i:0;s:5:\"track\";i:1;s:3:\"css\";s:0:\"\";s:12:\"css_disabled\";i:0;s:2:\"ip\";s:0:\"\";s:11:\"header_logo\";s:0:\"\";s:12:\"header_title\";s:16:\"AgilityPersonnel\";s:10:\"header_sub\";s:27:\"Just another WordPress site\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:14:\"googleplus_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";s:4:\"page\";i:112;}', 'yes'),
(957, 'newsletter_main_info', 'a:16:{s:11:\"header_logo\";s:0:\"\";s:12:\"header_title\";s:16:\"AgilityPersonnel\";s:10:\"header_sub\";s:27:\"Just another WordPress site\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:14:\"googleplus_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";}', 'yes'),
(958, 'newsletter_main_smtp', 'a:7:{s:7:\"enabled\";i:0;s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"port\";i:25;s:6:\"secure\";s:0:\"\";s:12:\"ssl_insecure\";i:0;}', 'yes'),
(959, 'newsletter_main_version', '1.4.9', 'yes'),
(960, 'newsletter_subscription_first_install_time', '1530089715', 'no'),
(961, 'newsletter', 'a:26:{s:14:\"noconfirmation\";i:1;s:9:\"antiflood\";i:10;s:12:\"ip_blacklist\";a:0:{}s:17:\"address_blacklist\";a:0:{}s:12:\"domain_check\";i:0;s:7:\"akismet\";i:0;s:7:\"captcha\";i:0;s:12:\"notify_email\";s:15:\"john@niyati.com\";s:8:\"multiple\";i:1;s:6:\"notify\";i:0;s:10:\"error_text\";s:102:\"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>\";s:17:\"subscription_text\";s:19:\"{subscription_form}\";s:17:\"confirmation_text\";s:104:\"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>\";s:20:\"confirmation_subject\";s:32:\"Please confirm your subscription\";s:21:\"confirmation_tracking\";s:0:\"\";s:20:\"confirmation_message\";s:94:\"<p>Please confirm your subscription <a href=\"{subscription_confirm_url}\">clicking here</a></p>\";s:14:\"confirmed_text\";s:43:\"<p>Your subscription has been confirmed</p>\";s:17:\"confirmed_subject\";s:7:\"Welcome\";s:17:\"confirmed_message\";s:130:\"<p>This message confirms your subscription to our newsletter. Thank you!</p><hr><p><a href=\"{profile_url}\">Change your profile</p>\";s:18:\"confirmed_tracking\";s:0:\"\";s:19:\"unsubscription_text\";s:103:\"<p>Please confirm you want to unsubscribe <a href=\"{unsubscription_confirm_url}\">clicking here</a>.</p>\";s:25:\"unsubscription_error_text\";s:99:\"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>\";s:17:\"unsubscribed_text\";s:124:\"<p>Your subscription has been deleted. If that was an error you can <a href=\"{reactivate_url}\">subscribe again here</a>.</p>\";s:20:\"unsubscribed_subject\";s:7:\"Goodbye\";s:20:\"unsubscribed_message\";s:87:\"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>\";s:16:\"reactivated_text\";s:46:\"<p>Your subscription has been reactivated.</p>\";}', 'yes'),
(962, 'newsletter_subscription_lists', 'a:160:{s:6:\"list_1\";s:0:\"\";s:13:\"list_1_status\";i:0;s:14:\"list_1_checked\";i:0;s:13:\"list_1_forced\";i:0;s:6:\"list_2\";s:0:\"\";s:13:\"list_2_status\";i:0;s:14:\"list_2_checked\";i:0;s:13:\"list_2_forced\";i:0;s:6:\"list_3\";s:0:\"\";s:13:\"list_3_status\";i:0;s:14:\"list_3_checked\";i:0;s:13:\"list_3_forced\";i:0;s:6:\"list_4\";s:0:\"\";s:13:\"list_4_status\";i:0;s:14:\"list_4_checked\";i:0;s:13:\"list_4_forced\";i:0;s:6:\"list_5\";s:0:\"\";s:13:\"list_5_status\";i:0;s:14:\"list_5_checked\";i:0;s:13:\"list_5_forced\";i:0;s:6:\"list_6\";s:0:\"\";s:13:\"list_6_status\";i:0;s:14:\"list_6_checked\";i:0;s:13:\"list_6_forced\";i:0;s:6:\"list_7\";s:0:\"\";s:13:\"list_7_status\";i:0;s:14:\"list_7_checked\";i:0;s:13:\"list_7_forced\";i:0;s:6:\"list_8\";s:0:\"\";s:13:\"list_8_status\";i:0;s:14:\"list_8_checked\";i:0;s:13:\"list_8_forced\";i:0;s:6:\"list_9\";s:0:\"\";s:13:\"list_9_status\";i:0;s:14:\"list_9_checked\";i:0;s:13:\"list_9_forced\";i:0;s:7:\"list_10\";s:0:\"\";s:14:\"list_10_status\";i:0;s:15:\"list_10_checked\";i:0;s:14:\"list_10_forced\";i:0;s:7:\"list_11\";s:0:\"\";s:14:\"list_11_status\";i:0;s:15:\"list_11_checked\";i:0;s:14:\"list_11_forced\";i:0;s:7:\"list_12\";s:0:\"\";s:14:\"list_12_status\";i:0;s:15:\"list_12_checked\";i:0;s:14:\"list_12_forced\";i:0;s:7:\"list_13\";s:0:\"\";s:14:\"list_13_status\";i:0;s:15:\"list_13_checked\";i:0;s:14:\"list_13_forced\";i:0;s:7:\"list_14\";s:0:\"\";s:14:\"list_14_status\";i:0;s:15:\"list_14_checked\";i:0;s:14:\"list_14_forced\";i:0;s:7:\"list_15\";s:0:\"\";s:14:\"list_15_status\";i:0;s:15:\"list_15_checked\";i:0;s:14:\"list_15_forced\";i:0;s:7:\"list_16\";s:0:\"\";s:14:\"list_16_status\";i:0;s:15:\"list_16_checked\";i:0;s:14:\"list_16_forced\";i:0;s:7:\"list_17\";s:0:\"\";s:14:\"list_17_status\";i:0;s:15:\"list_17_checked\";i:0;s:14:\"list_17_forced\";i:0;s:7:\"list_18\";s:0:\"\";s:14:\"list_18_status\";i:0;s:15:\"list_18_checked\";i:0;s:14:\"list_18_forced\";i:0;s:7:\"list_19\";s:0:\"\";s:14:\"list_19_status\";i:0;s:15:\"list_19_checked\";i:0;s:14:\"list_19_forced\";i:0;s:7:\"list_20\";s:0:\"\";s:14:\"list_20_status\";i:0;s:15:\"list_20_checked\";i:0;s:14:\"list_20_forced\";i:0;s:7:\"list_21\";s:0:\"\";s:14:\"list_21_status\";i:0;s:15:\"list_21_checked\";i:0;s:14:\"list_21_forced\";i:0;s:7:\"list_22\";s:0:\"\";s:14:\"list_22_status\";i:0;s:15:\"list_22_checked\";i:0;s:14:\"list_22_forced\";i:0;s:7:\"list_23\";s:0:\"\";s:14:\"list_23_status\";i:0;s:15:\"list_23_checked\";i:0;s:14:\"list_23_forced\";i:0;s:7:\"list_24\";s:0:\"\";s:14:\"list_24_status\";i:0;s:15:\"list_24_checked\";i:0;s:14:\"list_24_forced\";i:0;s:7:\"list_25\";s:0:\"\";s:14:\"list_25_status\";i:0;s:15:\"list_25_checked\";i:0;s:14:\"list_25_forced\";i:0;s:7:\"list_26\";s:0:\"\";s:14:\"list_26_status\";i:0;s:15:\"list_26_checked\";i:0;s:14:\"list_26_forced\";i:0;s:7:\"list_27\";s:0:\"\";s:14:\"list_27_status\";i:0;s:15:\"list_27_checked\";i:0;s:14:\"list_27_forced\";i:0;s:7:\"list_28\";s:0:\"\";s:14:\"list_28_status\";i:0;s:15:\"list_28_checked\";i:0;s:14:\"list_28_forced\";i:0;s:7:\"list_29\";s:0:\"\";s:14:\"list_29_status\";i:0;s:15:\"list_29_checked\";i:0;s:14:\"list_29_forced\";i:0;s:7:\"list_30\";s:0:\"\";s:14:\"list_30_status\";i:0;s:15:\"list_30_checked\";i:0;s:14:\"list_30_forced\";i:0;s:7:\"list_31\";s:0:\"\";s:14:\"list_31_status\";i:0;s:15:\"list_31_checked\";i:0;s:14:\"list_31_forced\";i:0;s:7:\"list_32\";s:0:\"\";s:14:\"list_32_status\";i:0;s:15:\"list_32_checked\";i:0;s:14:\"list_32_forced\";i:0;s:7:\"list_33\";s:0:\"\";s:14:\"list_33_status\";i:0;s:15:\"list_33_checked\";i:0;s:14:\"list_33_forced\";i:0;s:7:\"list_34\";s:0:\"\";s:14:\"list_34_status\";i:0;s:15:\"list_34_checked\";i:0;s:14:\"list_34_forced\";i:0;s:7:\"list_35\";s:0:\"\";s:14:\"list_35_status\";i:0;s:15:\"list_35_checked\";i:0;s:14:\"list_35_forced\";i:0;s:7:\"list_36\";s:0:\"\";s:14:\"list_36_status\";i:0;s:15:\"list_36_checked\";i:0;s:14:\"list_36_forced\";i:0;s:7:\"list_37\";s:0:\"\";s:14:\"list_37_status\";i:0;s:15:\"list_37_checked\";i:0;s:14:\"list_37_forced\";i:0;s:7:\"list_38\";s:0:\"\";s:14:\"list_38_status\";i:0;s:15:\"list_38_checked\";i:0;s:14:\"list_38_forced\";i:0;s:7:\"list_39\";s:0:\"\";s:14:\"list_39_status\";i:0;s:15:\"list_39_checked\";i:0;s:14:\"list_39_forced\";i:0;s:7:\"list_40\";s:0:\"\";s:14:\"list_40_status\";i:0;s:15:\"list_40_checked\";i:0;s:14:\"list_40_forced\";i:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(963, 'newsletter_subscription_template', 'a:1:{s:8:\"template\";s:2359:\"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type=\"text/css\" media=\"all\">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style=\"margin: 0; padding: 0;\">\n\n        <!-- Top title with dark background -->\n        <table style=\"background-color: #444; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px\">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style=\"background-color: #eee; width: 100%;\">\n            <tr>\n                <td align=\"center\" style=\"padding: 15px;\">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style=\"background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;\">\n                        <tr>\n                            <td style=\"padding: 15px; color: #333; font-size: 16px; font-family: sans-serif\">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href=\"{blog_url}\">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>\";}', 'yes'),
(964, 'newsletter_profile', 'a:183:{s:5:\"email\";s:5:\"Email\";s:11:\"email_error\";s:28:\"Email address is not correct\";s:4:\"name\";s:23:\"First name or full name\";s:10:\"name_error\";s:16:\"Name is required\";s:11:\"name_status\";i:0;s:10:\"name_rules\";i:0;s:7:\"surname\";s:9:\"Last name\";s:13:\"surname_error\";s:21:\"Last name is required\";s:14:\"surname_status\";i:0;s:10:\"sex_status\";i:0;s:3:\"sex\";s:3:\"I\'m\";s:7:\"privacy\";s:44:\"By continuing, you accept the privacy policy\";s:13:\"privacy_error\";s:34:\"You must accept the privacy policy\";s:14:\"privacy_status\";i:0;s:11:\"privacy_url\";s:0:\"\";s:18:\"privacy_use_wp_url\";i:0;s:9:\"subscribe\";s:9:\"Subscribe\";s:12:\"title_female\";s:3:\"Ms.\";s:10:\"title_male\";s:3:\"Mr.\";s:10:\"title_none\";s:4:\"Dear\";s:8:\"sex_male\";s:3:\"Man\";s:10:\"sex_female\";s:5:\"Woman\";s:8:\"sex_none\";s:13:\"Not specified\";s:16:\"profile_1_status\";i:0;s:9:\"profile_1\";s:0:\"\";s:14:\"profile_1_type\";s:4:\"text\";s:21:\"profile_1_placeholder\";s:0:\"\";s:15:\"profile_1_rules\";i:0;s:17:\"profile_1_options\";s:0:\"\";s:16:\"profile_2_status\";i:0;s:9:\"profile_2\";s:0:\"\";s:14:\"profile_2_type\";s:4:\"text\";s:21:\"profile_2_placeholder\";s:0:\"\";s:15:\"profile_2_rules\";i:0;s:17:\"profile_2_options\";s:0:\"\";s:16:\"profile_3_status\";i:0;s:9:\"profile_3\";s:0:\"\";s:14:\"profile_3_type\";s:4:\"text\";s:21:\"profile_3_placeholder\";s:0:\"\";s:15:\"profile_3_rules\";i:0;s:17:\"profile_3_options\";s:0:\"\";s:16:\"profile_4_status\";i:0;s:9:\"profile_4\";s:0:\"\";s:14:\"profile_4_type\";s:4:\"text\";s:21:\"profile_4_placeholder\";s:0:\"\";s:15:\"profile_4_rules\";i:0;s:17:\"profile_4_options\";s:0:\"\";s:16:\"profile_5_status\";i:0;s:9:\"profile_5\";s:0:\"\";s:14:\"profile_5_type\";s:4:\"text\";s:21:\"profile_5_placeholder\";s:0:\"\";s:15:\"profile_5_rules\";i:0;s:17:\"profile_5_options\";s:0:\"\";s:16:\"profile_6_status\";i:0;s:9:\"profile_6\";s:0:\"\";s:14:\"profile_6_type\";s:4:\"text\";s:21:\"profile_6_placeholder\";s:0:\"\";s:15:\"profile_6_rules\";i:0;s:17:\"profile_6_options\";s:0:\"\";s:16:\"profile_7_status\";i:0;s:9:\"profile_7\";s:0:\"\";s:14:\"profile_7_type\";s:4:\"text\";s:21:\"profile_7_placeholder\";s:0:\"\";s:15:\"profile_7_rules\";i:0;s:17:\"profile_7_options\";s:0:\"\";s:16:\"profile_8_status\";i:0;s:9:\"profile_8\";s:0:\"\";s:14:\"profile_8_type\";s:4:\"text\";s:21:\"profile_8_placeholder\";s:0:\"\";s:15:\"profile_8_rules\";i:0;s:17:\"profile_8_options\";s:0:\"\";s:16:\"profile_9_status\";i:0;s:9:\"profile_9\";s:0:\"\";s:14:\"profile_9_type\";s:4:\"text\";s:21:\"profile_9_placeholder\";s:0:\"\";s:15:\"profile_9_rules\";i:0;s:17:\"profile_9_options\";s:0:\"\";s:17:\"profile_10_status\";i:0;s:10:\"profile_10\";s:0:\"\";s:15:\"profile_10_type\";s:4:\"text\";s:22:\"profile_10_placeholder\";s:0:\"\";s:16:\"profile_10_rules\";i:0;s:18:\"profile_10_options\";s:0:\"\";s:17:\"profile_11_status\";i:0;s:10:\"profile_11\";s:0:\"\";s:15:\"profile_11_type\";s:4:\"text\";s:22:\"profile_11_placeholder\";s:0:\"\";s:16:\"profile_11_rules\";i:0;s:18:\"profile_11_options\";s:0:\"\";s:17:\"profile_12_status\";i:0;s:10:\"profile_12\";s:0:\"\";s:15:\"profile_12_type\";s:4:\"text\";s:22:\"profile_12_placeholder\";s:0:\"\";s:16:\"profile_12_rules\";i:0;s:18:\"profile_12_options\";s:0:\"\";s:17:\"profile_13_status\";i:0;s:10:\"profile_13\";s:0:\"\";s:15:\"profile_13_type\";s:4:\"text\";s:22:\"profile_13_placeholder\";s:0:\"\";s:16:\"profile_13_rules\";i:0;s:18:\"profile_13_options\";s:0:\"\";s:17:\"profile_14_status\";i:0;s:10:\"profile_14\";s:0:\"\";s:15:\"profile_14_type\";s:4:\"text\";s:22:\"profile_14_placeholder\";s:0:\"\";s:16:\"profile_14_rules\";i:0;s:18:\"profile_14_options\";s:0:\"\";s:17:\"profile_15_status\";i:0;s:10:\"profile_15\";s:0:\"\";s:15:\"profile_15_type\";s:4:\"text\";s:22:\"profile_15_placeholder\";s:0:\"\";s:16:\"profile_15_rules\";i:0;s:18:\"profile_15_options\";s:0:\"\";s:17:\"profile_16_status\";i:0;s:10:\"profile_16\";s:0:\"\";s:15:\"profile_16_type\";s:4:\"text\";s:22:\"profile_16_placeholder\";s:0:\"\";s:16:\"profile_16_rules\";i:0;s:18:\"profile_16_options\";s:0:\"\";s:17:\"profile_17_status\";i:0;s:10:\"profile_17\";s:0:\"\";s:15:\"profile_17_type\";s:4:\"text\";s:22:\"profile_17_placeholder\";s:0:\"\";s:16:\"profile_17_rules\";i:0;s:18:\"profile_17_options\";s:0:\"\";s:17:\"profile_18_status\";i:0;s:10:\"profile_18\";s:0:\"\";s:15:\"profile_18_type\";s:4:\"text\";s:22:\"profile_18_placeholder\";s:0:\"\";s:16:\"profile_18_rules\";i:0;s:18:\"profile_18_options\";s:0:\"\";s:17:\"profile_19_status\";i:0;s:10:\"profile_19\";s:0:\"\";s:15:\"profile_19_type\";s:4:\"text\";s:22:\"profile_19_placeholder\";s:0:\"\";s:16:\"profile_19_rules\";i:0;s:18:\"profile_19_options\";s:0:\"\";s:17:\"profile_20_status\";i:0;s:10:\"profile_20\";s:0:\"\";s:15:\"profile_20_type\";s:4:\"text\";s:22:\"profile_20_placeholder\";s:0:\"\";s:16:\"profile_20_rules\";i:0;s:18:\"profile_20_options\";s:0:\"\";s:13:\"list_1_forced\";i:0;s:13:\"list_2_forced\";i:0;s:13:\"list_3_forced\";i:0;s:13:\"list_4_forced\";i:0;s:13:\"list_5_forced\";i:0;s:13:\"list_6_forced\";i:0;s:13:\"list_7_forced\";i:0;s:13:\"list_8_forced\";i:0;s:13:\"list_9_forced\";i:0;s:14:\"list_10_forced\";i:0;s:14:\"list_11_forced\";i:0;s:14:\"list_12_forced\";i:0;s:14:\"list_13_forced\";i:0;s:14:\"list_14_forced\";i:0;s:14:\"list_15_forced\";i:0;s:14:\"list_16_forced\";i:0;s:14:\"list_17_forced\";i:0;s:14:\"list_18_forced\";i:0;s:14:\"list_19_forced\";i:0;s:14:\"list_20_forced\";i:0;s:14:\"list_21_forced\";i:0;s:14:\"list_22_forced\";i:0;s:14:\"list_23_forced\";i:0;s:14:\"list_24_forced\";i:0;s:14:\"list_25_forced\";i:0;s:14:\"list_26_forced\";i:0;s:14:\"list_27_forced\";i:0;s:14:\"list_28_forced\";i:0;s:14:\"list_29_forced\";i:0;s:14:\"list_30_forced\";i:0;s:14:\"list_31_forced\";i:0;s:14:\"list_32_forced\";i:0;s:14:\"list_33_forced\";i:0;s:14:\"list_34_forced\";i:0;s:14:\"list_35_forced\";i:0;s:14:\"list_36_forced\";i:0;s:14:\"list_37_forced\";i:0;s:14:\"list_38_forced\";i:0;s:14:\"list_39_forced\";i:0;s:14:\"list_40_forced\";i:0;}', 'yes'),
(965, 'newsletter_subscription_version', '2.1.7', 'yes'),
(966, 'newsletter_profile_first_install_time', '1530089715', 'no'),
(967, 'newsletter_profile_main', 'a:7:{s:4:\"text\";s:188:\"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href=\"{unsubscription_confirm_url}\">Cancel your subscription</a></p>\";s:13:\"email_changed\";s:81:\"Your email has been changed, an activation email has been sent with instructions.\";s:5:\"error\";s:42:\"Your email is not valid or already in use.\";s:10:\"save_label\";s:4:\"Save\";s:13:\"privacy_label\";s:21:\"Read our privacy note\";s:5:\"saved\";s:14:\"Profile saved.\";s:18:\"export_newsletters\";i:0;}', 'yes'),
(968, 'newsletter_profile_version', '1.1.0', 'yes'),
(969, 'newsletter_emails_first_install_time', '1530089715', 'no'),
(970, 'newsletter_emails', 'a:1:{s:5:\"theme\";s:7:\"default\";}', 'yes'),
(971, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(972, 'newsletter_emails_version', '1.1.5', 'yes'),
(973, 'newsletter_users_first_install_time', '1530089715', 'no'),
(974, 'newsletter_users', 'a:0:{}', 'yes'),
(975, 'newsletter_users_version', '1.2.3', 'yes'),
(976, 'newsletter_statistics_first_install_time', '1530089716', 'no'),
(977, 'newsletter_statistics', 'a:1:{s:3:\"key\";s:32:\"640321122d50b7d6dd2c604e76a03b9e\";}', 'yes'),
(978, 'newsletter_statistics_version', '1.1.8', 'yes'),
(979, 'newsletter_install_time', '1530089716', 'no'),
(980, 'widget_newsletterwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(981, 'widget_newsletterwidgetminimal', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(984, 'newsletter_diagnostic_cron_calls', 'a:1:{i:0;i:1530089753;}', 'no'),
(985, 'newsletter_diagnostic_cron_data', '', 'no'),
(990, 'weblizar_nls_options', 'a:72:{s:15:\"select_template\";s:16:\"select_template1\";s:19:\"theme_color_schemes\";s:13:\"default_color\";s:20:\"custom_color_schemes\";s:7:\"#FF2E34\";s:21:\"default_color_schemes\";s:7:\"#eb5054\";s:17:\"theme_font_family\";s:5:\"Khand\";s:20:\"section_heading_size\";s:2:\"30\";s:24:\"section_sub_heading_size\";s:2:\"18\";s:24:\"section_description_size\";s:2:\"18\";s:17:\"section_icon_size\";s:2:\"30\";s:24:\"sub_section_heading_size\";s:2:\"20\";s:28:\"sub_section_sub_heading_size\";s:2:\"17\";s:28:\"sub_section_description_size\";s:2:\"15\";s:21:\"sub_section_icon_size\";s:2:\"28\";s:16:\"social_link_size\";s:2:\"14\";s:18:\"social_icons_onoff\";s:2:\"on\";s:13:\"social_icon_1\";s:14:\"fa fa-facebook\";s:13:\"social_icon_2\";s:17:\"fa fa-google-plus\";s:13:\"social_icon_3\";s:14:\"fa fa-linkedin\";s:13:\"social_icon_4\";s:13:\"fa fa-twitter\";s:13:\"social_icon_5\";s:15:\"fa fa-instagram\";s:13:\"social_link_1\";s:1:\"#\";s:13:\"social_link_2\";s:1:\"#\";s:13:\"social_link_3\";s:1:\"#\";s:13:\"social_link_4\";s:1:\"#\";s:13:\"social_link_5\";s:1:\"#\";s:15:\"social_icolor_1\";s:7:\"#3b5998\";s:15:\"social_icolor_2\";s:7:\"#c92228\";s:15:\"social_icolor_3\";s:7:\"#3b5998\";s:15:\"social_icolor_4\";s:7:\"#00aced\";s:15:\"social_icolor_5\";s:7:\"#3f729b\";s:17:\"social_link_tab_1\";s:3:\"off\";s:17:\"social_link_tab_2\";s:3:\"off\";s:17:\"social_link_tab_3\";s:3:\"off\";s:17:\"social_link_tab_4\";s:3:\"off\";s:17:\"social_link_tab_5\";s:3:\"off\";s:18:\"total_Social_links\";s:1:\"5\";s:16:\"social_icon_list\";s:0:\"\";s:15:\"subscriber_form\";s:2:\"on\";s:21:\"subscriber_form_title\";s:23:\"SUBSCRIBE TO NEWSLETTER\";s:20:\"subscriber_form_icon\";s:16:\"fa fa-envelope-o\";s:25:\"subscriber_form_sub_title\";s:65:\"Subscribe to our mailing list to get updates to your email inbox.\";s:23:\"subscriber_form_message\";s:22:\"GET MONTHLY NEWSLETTER\";s:17:\"sub_form_bg_color\";s:7:\"#333333\";s:20:\"sub_form_button_text\";s:9:\"Subscribe\";s:22:\"sub_form_button_f_name\";s:10:\"First Name\";s:22:\"sub_form_button_l_name\";s:9:\"Last Name\";s:24:\"sub_form_subscribe_title\";s:5:\"Email\";s:24:\"sub_form_button_ht_color\";s:7:\"#333333\";s:24:\"sub_form_button_hb_color\";s:7:\"#FFFFFF\";s:22:\"sub_form_ph_text_color\";s:0:\"\";s:9:\"user_sets\";s:14:\"$user_sets_all\";s:35:\"sub_form_subscribe_seuccess_message\";s:42:\"Thank you! We will be back with the quote.\";s:34:\"sub_form_subscribe_invalid_message\";s:28:\"You have already subscribed.\";s:19:\"subscriber_msg_body\";s:0:\"\";s:42:\"sub_form_subscribe_confirm_success_message\";s:83:\"Thank You!!! Subscription has been confirmed. We will notify when the site is live.\";s:42:\"sub_form_subscribe_already_confirm_message\";s:73:\"You subscription is already active. We will notify when the site is live.\";s:37:\"sub_form_invalid_confirmation_message\";s:36:\"Error: Invalid subscription details.\";s:16:\"subscribe_select\";s:7:\"wp_mail\";s:16:\"wp_mail_email_id\";s:15:\"john@niyati.com\";s:13:\"php_user_name\";s:7:\"agility\";s:17:\"php_user_email_id\";s:15:\"john@niyati.com\";s:23:\"confirm_email_subscribe\";s:3:\"off\";s:17:\"mailchimp_api_key\";s:0:\"\";s:17:\"mailchimp_list_id\";s:0:\"\";s:16:\"madmimi_username\";s:0:\"\";s:15:\"madmimi_api_key\";s:0:\"\";s:19:\"madmimi_list_option\";s:0:\"\";s:28:\"subscriber_users_mail_option\";s:9:\"all_users\";s:23:\"subscriber_mail_subject\";s:0:\"\";s:23:\"subscriber_mail_message\";s:0:\"\";s:42:\"weblizar_nls_settings_save_template_option\";s:1:\"1\";s:44:\"weblizar_nls_settings_save_subscriber_option\";s:1:\"1\";}', 'yes'),
(991, 'weblizar_nls_mailchimp_key', 's:7:\"s:0:\"\";\";', 'yes'),
(992, 'weblizar_nls_madmimi_list', 's:7:\"s:0:\"\";\";', 'yes'),
(994, 'widget_nls_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1014, 'email-subscribers', '2.9', 'yes'),
(1015, 'ig_es_fromname', 'AgilityPersonnel', 'yes'),
(1016, 'ig_es_fromemail', 'john@niyati.com', 'yes'),
(1017, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(1018, 'ig_es_notifyadmin', 'YES', 'yes'),
(1019, 'ig_es_adminemail', 'john@niyati.com', 'yes'),
(1020, 'ig_es_admin_new_sub_subject', 'AgilityPersonnel - New email subscription', 'yes'),
(1021, 'ig_es_admin_new_sub_content', 'Hi Admin,\r\n\r\nCongratulations! You have a new subscriber.\r\n\r\nName : {{NAME}}\r\nEmail: {{EMAIL}}\r\nGroup: {{GROUP}}\r\n\r\nHave a nice day :)\r\nAgilityPersonnel', 'yes'),
(1022, 'ig_es_welcomeemail', 'YES', 'yes'),
(1023, 'ig_es_welcomesubject', 'AgilityPersonnel - Welcome!', 'yes'),
(1024, 'ig_es_welcomecontent', 'Hi {{NAME}},\r\n\r\nThank you for subscribing to AgilityPersonnel.\r\n\r\nWe are glad to have you onboard.\r\n\r\nBest,\r\nAgilityPersonnel\r\n\r\nGot subscribed to AgilityPersonnel by mistake? Click <a href=\\\'{{LINK}}\\\'>here</a> to unsubscribe.', 'yes'),
(1025, 'ig_es_optintype', 'Double Opt In', 'yes'),
(1026, 'ig_es_confirmsubject', 'AgilityPersonnel - Please confirm your subscription', 'yes'),
(1027, 'ig_es_confirmcontent', 'Hi {{NAME}},\r\n\r\nWe have received a subscription request from this email address. Please confirm it by <a href=\\\'{{LINK}}\\\'>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please copy this link and paste it in your browser :\r\n{{LINK}} \r\n\r\nThank You\r\nAgilityPersonnel', 'yes'),
(1028, 'ig_es_optinlink', 'http://niyati.website/AgilityPersonnel/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(1029, 'ig_es_unsublink', 'http://niyati.website/AgilityPersonnel/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(1030, 'ig_es_unsubcontent', 'No longer interested in emails from AgilityPersonnel? Please <a href=\\\'{{LINK}}\\\'>click here</a> to unsubscribe.', 'yes'),
(1031, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(1032, 'ig_es_successmsg', 'You have been successfully subscribed.', 'yes'),
(1033, 'ig_es_suberror', 'Oops.. Your request couldn\\\'t be completed. This email address seems to be already subscribed / blocked.', 'yes'),
(1034, 'ig_es_unsuberror', 'Oops.. There was some technical error. Please try again later or contact us.', 'yes'),
(1035, 'ig_es_sample_data_imported', 'yes', 'yes'),
(1038, 'widget_email-subscribers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1039, 'ig_es_sync_wp_users', 's:4:\"b:0;\";', 'yes'),
(1040, 'current_sa_email_subscribers_db_version', '3.4.0', 'yes'),
(1042, 'ig_es_post_image_size', 'full', 'yes'),
(1043, 'ig_es_sentreport', 'Hi Admin,\r\n\r\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\r\n\r\nUnique ID: {{UNIQUE}}\r\nStart Time: {{STARTTIME}}\r\nEnd Time: {{ENDTIME}}\r\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\r\n\r\nThank You.', 'yes'),
(1044, 'ig_es_sentreport_subject', 'Your email has been sent', 'yes'),
(1045, 'ig_es_cronurl', 'http://niyati.website/AgilityPersonnel/?es=cron&guid=oucvma-wtkxjv-fakspl-dwbext-fuomwh', 'yes'),
(1046, 'ig_es_cron_mailcount', '50', 'yes'),
(1047, 'ig_es_cron_adminmail', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email \\\'{{SUBJECT}}\\\'. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nAgilityPersonnel', 'yes'),
(1048, 'es_roles_subscriber', 'manage_options', 'yes'),
(1049, 'es_roles_mail', 'manage_options', 'yes'),
(1050, 'es_roles_notification', 'manage_options', 'yes'),
(1051, 'es_roles_sendmail', 'manage_options', 'yes'),
(1052, 'es_roles_sentmail', 'manage_options', 'yes'),
(1053, 'ig_es_rolesandcapabilities', 'a:5:{s:19:\"es_roles_subscriber\";s:14:\"manage_options\";s:13:\"es_roles_mail\";s:14:\"manage_options\";s:21:\"es_roles_notification\";s:14:\"manage_options\";s:17:\"es_roles_sendmail\";s:14:\"manage_options\";s:17:\"es_roles_sentmail\";s:14:\"manage_options\";}', 'yes'),
(1058, 'WPLANG', '', 'yes'),
(1059, 'new_admin_email', 'john@niyati.com', 'yes'),
(1075, 'vsz_cf7_db_version', '1.4.1', 'yes'),
(1146, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"john@niyati.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533570853;}', 'no'),
(1149, '_site_transient_timeout_theme_roots', '1533572644', 'no'),
(1150, '_site_transient_theme_roots', 'a:1:{s:7:\"agility\";s:7:\"/themes\";}', 'no'),
(1152, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533570852;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1153, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533570854;s:7:\"checked\";a:7:{s:35:\"advanced-cf7-db/advanced-cf7-db.php\";s:5:\"1.4.1\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.0.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:35:\"responsive-menu/responsive-menu.php\";s:6:\"3.1.14\";s:23:\"wordfence/wordfence.php\";s:5:\"7.1.7\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:4:\"2.92\";}s:8:\"response\";a:4:{s:35:\"advanced-cf7-db/advanced-cf7-db.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/advanced-cf7-db\";s:4:\"slug\";s:15:\"advanced-cf7-db\";s:6:\"plugin\";s:35:\"advanced-cf7-db/advanced-cf7-db.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/advanced-cf7-db/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/advanced-cf7-db.1.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/advanced-cf7-db/assets/icon-256x256.jpg?rev=1696186\";s:2:\"1x\";s:68:\"https://ps.w.org/advanced-cf7-db/assets/icon-128x128.jpg?rev=1696186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/advanced-cf7-db/assets/banner-1544x500.jpg?rev=1696186\";s:2:\"1x\";s:70:\"https://ps.w.org/advanced-cf7-db/assets/banner-772x250.jpg?rev=1696186\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"responsive-menu/responsive-menu.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/responsive-menu\";s:4:\"slug\";s:15:\"responsive-menu\";s:6:\"plugin\";s:35:\"responsive-menu/responsive-menu.php\";s:11:\"new_version\";s:6:\"3.1.15\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/responsive-menu/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/responsive-menu.3.1.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=1782326\";s:2:\"1x\";s:68:\"https://ps.w.org/responsive-menu/assets/icon-128x128.png?rev=1782326\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1782326\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.1.10\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724\";s:2:\"1x\";s:62:\"https://ps.w.org/wordfence/assets/icon-128x128.png?rev=1457724\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.png?rev=1808795\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.png?rev=1808795\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:4:\"2.92\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1154, '_site_transient_timeout_browser_f9d97daae4bfc87faa966e34c03c6f54', '1534175658', 'no'),
(1155, '_site_transient_browser_f9d97daae4bfc87faa966e34c03c6f54', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1156, '_site_transient_timeout_community-events-2d36b54b12e70e44d83edae6986597bc', '1533614063', 'no'),
(1157, '_site_transient_community-events-2d36b54b12e70e44d83edae6986597bc', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"103.53.40.0\";}s:6:\"events\";a:0:{}}', 'no'),
(1158, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1533614064', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1159, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Thu, 02 Aug 2018 22:13:06 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43555\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.9.8 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 21:25:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6165\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:398:\"We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme. Following are the highlights of what is now available. “Try Gutenberg” callout Most users will now be presented with a notice in their WordPress dashboard. This “Try Gutenberg” [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Biron\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10398:\"<p>We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme.</p>\n<p><span style=\"font-weight: 400\">Following are the highlights of what is now available.</span></p>\n<h2>“Try Gutenberg” callout</h2>\n<p><span style=\"font-weight: 400\">Most users will now be presented with a notice in their WordPress dashboard. This </span>“Try Gutenberg” is an opportunity for users to use the Gutenberg block editor before it is released in WordPress 5.0.</p>\n<p><img class=\"alignnone wp-image-6168 size-full\" src=\"https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=632%2C392&#038;ssl=1\" alt=\"\" width=\"632\" height=\"392\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=2528&amp;ssl=1 2528w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=300%2C186&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=768%2C476&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=1024%2C634&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></p>\n<p>In WordPress 4.9.8, the callout will be shown to the following users:</p>\n<ul>\n<li>If Gutenberg <em>is not</em> installed or activated, the callout will be shown to Admin users on single sites, and Super Admin users on multisites.</li>\n<li>If Gutenberg <em>is</em> installed and activated, the callout will be shown to Contributor users and above.</li>\n<li>If the Classic Editor plugin is installed and activated, the callout will be hidden for all users.</li>\n</ul>\n<p class=\"entry-title\"><span style=\"font-weight: 400\">You can learn more by reading  </span><a href=\"https://make.wordpress.org/core/2018/08/02/try-gutenberg-callout-in-wordpress-4-9-8/\">“Try Gutenberg” Callout in WordPress 4.9.8</a>.</p>\n<h2>Privacy fixes/enhancements</h2>\n<p>This release includes 18 Privacy fixes focused on ensuring consistency and flexibility in the new personal data tools <span style=\"font-weight: 400\">that were </span>added in 4.9.6, including:</p>\n<ul>\n<li>The type of request being confirmed is now included in the subject line for all privacy confirmation emails.</li>\n<li>Improved consistency with site name being used for privacy emails in multisite.</li>\n<li>Pagination for Privacy request admin screens can now be adjusted.</li>\n<li>Increased the test coverage for several core privacy functions.</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/\">This post has more information about all of the issues fixed in 4.9.8 if you&#8217;d like to learn more</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.8</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n<p>Thank you to everyone who contributed to WordPress 4.9.8:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">Abdullah Ramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1/\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chrislema/\">Chris Lema</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/dontstealmyfish/\">dontstealmyfish</a>, <a href=\"https://profiles.wordpress.org/dyrer/\">dyrer</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/gm_alex/\">GM_Alex</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jpry/\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/michelleweber/\">michelleweber</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/xpertone/\">Muhammad Kashif</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/nathanatmoz/\">Nathan Johnson</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/rafsuntaskin/\">Rafsun Chowdhury</a>, <a href=\"https://profiles.wordpress.org/redcastor/\">redcastor</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/pross/\">Simon Prosser</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/spyderbytes/\">spyderbytes</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tharsheblows/\">tharsheblows</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">Thomas Patrick Levy</a>, <a href=\"https://profiles.wordpress.org/timbowesohft/\">timbowesohft</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/usmankhalid/\">Usman Khalid</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"The Month in WordPress: July 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/08/the-month-in-wordpress-july-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Aug 2018 09:11:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6158\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:333:\"With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July. Release of WordPress 4.9.7 On July 5, WordPress 4.9.7 was released,  fixing one security issue and 17 other bugs across the platform. While this is a minor release, incremental fixes [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6411:\"<p>With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Release of WordPress 4.9.7</h2>\n\n<p>On July 5, <a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">WordPress 4.9.7 was released</a>,  fixing one security issue and 17 other bugs across the platform.<br /></p>\n\n<p>While this is a minor release, incremental fixes are essential to keep WordPress running smoothly. Everyone is encouraged to update as soon as possible and to make sure that automatic updates are switched on.<br /></p>\n\n<p>Would you like to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>The New WordPress Editor</h2>\n\n<p>In the upcoming minor release of WordPress, 4.9.8, a new section in the dashboard will feature Gutenberg, the upcoming content editor for WordPress.<br /></p>\n\n<p>While the official release of Gutenberg <a href=\"https://wordpress.org/news/2018/07/update-on-gutenberg/\">is scheduled</a> for the coming months, you can already install it as <a href=\"https://wordpress.org/plugins/gutenberg/\">a plugin</a> to test it out right now. Additionally, <a href=\"https://wordpress.org/gutenberg/\">a brand new demo page</a> is now available — play around with the many features the editor has to offer, without installing it on your own site.<br /></p>\n\n<p>Would you like to help build or test Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Page Design Updates on WordPress.org</h2>\n\n<p>Bit by bit we’re refreshing the design of WordPress.org. The latest pages to get a new treatment have been <a href=\"https://wordpress.org/download/\">the Download page</a> and <a href=\"https://profiles.wordpress.org/matt/\">user profiles</a>.<br /></p>\n\n<p>The Meta and Design teams worked hard to make these new designs a reality, with notable contributions from <a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>, <a href=\'https://profiles.wordpress.org/obenland/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>obenland</a>, <a href=\'https://profiles.wordpress.org/mapk/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mapk</a>, and <a href=\'https://profiles.wordpress.org/kjellr/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kjellr</a>. The new designs enhance the overall look of the site and provide more relevant information to those searching.<br /></p>\n\n<p>Would you like to get involved in the design refresh? Follow the <a href=\"https://make.wordpress.org/meta/\">Meta</a> and <a href=\"https://make.wordpress.org/design/\">Design</a> team blogs and join the #meta and #design channels in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>The First WP-CLI Hack Day</h2>\n\n<p>On Friday July 20, the WP-CLI team <a href=\"https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/\">held their first hack day</a> — a global event encouraging people to contribute to the official command line tool for WordPress.<br /></p>\n\n<p>Run by <a href=\'https://profiles.wordpress.org/schlessera/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>schlessera</a>, the event <a href=\"https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/\"> was a great success</a>. Twelve pull requests were  merged and another 13 submitted. It also included a video chat to give all contributors a space to meet each other and connect directly.<br /></p>\n\n<p>Would  you like to get involved in contributing to WP-CLI? Follow <a href=\"https://make.wordpress.org/cli/\">the team blog</a> and join the #cli channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul><li>The WordPress Foundation is <a href=\"https://wordpressfoundation.org/2018/call-for-organizers-introduction-to-open-source-workshops-for-2018/\">looking for local community organizers to run introductory open-source workshops</a> in 2018.</li><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> compiled <a href=\"https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/\">updates for the last quarter</a> from the contribution teams all across the WordPress project.</li><li>In a great move for internationalization, <a href=\"https://en.blog.wordpress.com/2018/03/29/the-wordpress-mobile-apps-now-support-right-to-left-languages/\">the WordPress Mobile Apps now support right-to-left languages</a>.</li><li><a href=\"https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/\">WordCamp events can now accept payment via Stripe</a> — PayPal remains an alternative option.</li><li>The WP-CLI team will soon <a href=\"https://make.wordpress.org/cli/2018/07/19/details-on-the-upcoming-major-release/\">release v2.0</a> of the official WordPress command line tool.</li><li>The Fields API project in WordPress Core <a href=\"https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership\">is looking for a new lead</a> to drive it forward.</li><li>In WordPress 4.9.8, <a href=\"https://make.wordpress.org/core/2018/07/27/registering-metadata-in-4-9-8/\">it will  be possible</a> for developers to fully register the meta fields used by their plugins and themes.</li><li>After many years of hard work, <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">v1.0.0 of the WordPress Coding Standards for PHP_CodeSniffer</a> has been released.</li><li>The Mobile team <a href=\"https://make.wordpress.org/mobile/2018/07/31/call-for-testing-wordpress-for-ios-10-6/\">is looking for people to help test</a> v10.6 of WordPress for iOS.</li></ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6158\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Quarterly Updates | Q2 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Jul 2018 14:50:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6140\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:347:\"To keep everyone aware of big projects and efforts across WordPress contributor teams, I&#8217;ve reached out to each team&#8217;s listed representatives. I asked each of them to share their Top Priority (and when they hope for it to be completed), as well as their biggest Wins and Worries. Have questions? I&#8217;ve included a link to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:15622:\"<p><em>To keep everyone aware of big projects and efforts across WordPress contributor teams, I&#8217;ve reached out to each team&#8217;s <a href=\"https://make.wordpress.org/updates/team-reps/\">listed representatives</a>. I asked each of them to share their Top Priority (and when they hope for it to be completed), as well as their biggest Wins and Worries. Have questions? I&#8217;ve included a link to each team&#8217;s site in the headings.﻿</em></p>\n\n<h2><a href=\"https://make.wordpress.org/accessibility/\">Accessibility</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/rianrietveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>rianrietveld</a>, <a href=\'https://profiles.wordpress.org/joedolson/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joedolson</a>, <a href=\'https://profiles.wordpress.org/afercia/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>afercia</a></li>\n	<li><strong>Priority</strong>: Working to make sure that Gutenberg is reasonably accessible prior to merge. ETA is before 5.0</li>\n	<li><strong>Struggle</strong>: Lack of developers and accessibility experts to help test and code the milestone issues. <em>The team is doing outreach to help solve this problem.</em></li>\n	<li><strong>Big Win</strong>: Interest from companies like The Paciello Group and Tenon.io to help out with Gutenberg code review and testing tools.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/cli/\">CLI</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: @danielbachhuber, <a href=\'https://profiles.wordpress.org/schlessera/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>schlessera</a></li>\n	<li><strong>Priority</strong>: Very first global <a href=\"https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/\">Hack Day</a> is coming up July 20. Version 2.0.0 is still in progress (new <a href=\"https://github.com/wp-cli/wp-cli/issues/4752\">ETA</a> is end of July).</li>\n	<li><strong>Struggle</strong>: The team continues to need new contributors. The current team is tiny but tough.</li>\n	<li><strong>Big Win</strong>: WP-CLI is currently one of the project&#8217;s four main focuses, as mentioned in the Summer Update at WordCamp Europe.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/community/\">Community</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/francina/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>francina</a>, <a href=\'https://profiles.wordpress.org/hlashbrooke/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hlashbrooke</a></li>\n	<li><strong>Priority</strong>: Focusing on smoothing out the processes in our community management by building up our team of volunteers and establishing what tools we need to keep things running well. ETA is ongoing.</li>\n	<li><strong>Struggle</strong>: Our two biggest struggles at the moment are tracking what we need to get done, and making final decisions on things. <em>There is current work on the tools available to assist with tracking progress.﻿</em></li>\n	<li><strong>Big Win</strong>: After making a concerted effort to get more contributors on the Community Team, we now have a much larger group of volunteers working as deputies and WordCamp mentors</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/core/\">Core</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a></li>\n	<li><strong>Priority</strong>: Following the <a href=\"https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/\">WordCamp Europe summer update</a> ﻿(and the companion post <a href=\"https://wordpress.org/news/2018/07/update-on-gutenberg/\">here</a>), the team is getting Gutenberg (the new WordPress editing experience) into a strong state for the 5.0 release. Potential ETA as soon as August.</li>\n	<li><strong>Struggle</strong>: Coordinating momentum and direction as we start seeing more contributors offering their time. Still working our way through open issues. <em>﻿The team is starting multiple bug scrubs each week to work through these more quickly and transparently.</em></li>\n	<li><strong>Big Win</strong>: Had a <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">sizable release in 4.9.6</a> which featured major updates around privacy tools and functionality in Core.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/design/\">Design</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>, <a href=\'https://profiles.wordpress.org/karmatosed/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>karmatosed</a>, <a href=\'https://profiles.wordpress.org/boemedia/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>boemedia</a>, <a href=\'https://profiles.wordpress.org/joshuawold/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joshuawold</a>, <a href=\'https://profiles.wordpress.org/mizejewski/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mizejewski</a></li>\n	<li><strong>Priority</strong>: Better on-boarding of new contributors, especially creating better documentation. ETA is end of July.</li>\n	<li><strong>Struggle</strong>: It&#8217;s hard to identify reasonably small tasks for first-time contributors.</li>\n	<li><strong>Big Win</strong>: The team is much more organized now which has helped clear out the design backlog, bring in new contributors, and also keep current contributors coming back. <em>Bonus: Joshua Wold will co-lead the upcoming release.</em></li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/docs/\">Documentation</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/kenshino/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kenshino</a><br /></li>\n	<li><strong>Priority</strong>: Opening up the work on <a href=\"https://make.wordpress.org/docs/2018/02/26/state-of-helphub-february-2018/\">HelpHub</a> to new contributors and easing the onboarding process. No ETA.<br /></li>\n	<li><strong>Struggle</strong>: Some blockers with making sure the code and database can be ready to launch on https://wordpress.org/support/<br /></li>\n	<li><strong>Big Win</strong>: The <a href=\"https://wp-helphub.com/\">first phase of HelpHub</a> creation is complete, which means content updates (current info, more readable, easier discovery), internal search, design improvements, and REST API endpoints.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/hosting/\">Hosting</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/mikeschroder/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mikeschroder</a>, <a href=\'https://profiles.wordpress.org/jadonn/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jadonn</a></li>\n	<li><strong>Priority</strong>: Preparing hosts for supporting Gutenberg, especially support questions they&#8217;re likely to see when the &#8220;Try Gutenberg&#8221; callout is released. ETA July 31st, then before WordPress 5.0<br /><strong></strong></li>\n	<li><strong>Struggle</strong>: Most contributions are still made a by a small team of volunteers. Seeing a few more people join, but progress is slow.<br /><strong></strong></li>\n	<li><strong>﻿Big Win</strong>: New team members and hosting companies have joined the #hosting-community team and have started contributing.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/marketing/\">Marketing</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/bridgetwillard/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>bridgetwillard</a></li>\n	<li><strong>Priority</strong>: Continuing to write and publish case studies from the community. ETA is ongoing.</li>\n	<li><strong>Struggle</strong>: No current team struggles.</li>\n	<li><strong>Big Win</strong>: Wrote and designed a short <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">Contributor Day onboarding card</a>. It was used at Contributor Day at WCEU and onboarding time went down to 1 hour instead of 3 hours.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/meta/\">Meta</a> (WordPress.org Site)</h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/tellyworth/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tellyworth</a>, <a href=\'https://profiles.wordpress.org/coffee2code/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>coffee2code</a></li>\n	<li><strong>Priority</strong>: Reducing manual work around the contributor space (theme review, GDPR/privacy, plugin review). ETA for small wins is end of quarter, larger efforts after that.</li>\n	<li><strong>Struggle</strong>: Maintaining momentum on tickets. <em>There are also some discussions about updating the ticket management process across teams that use the Meta trac system.</em></li>\n	<li><strong>Big Win</strong>: The new About page launched and has been translated across most locale sites.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/mobile/\">Mobile</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/elibud/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>elibud</a></li>\n	<li><strong>Priority</strong>: Getting Gutenberg in the mobile applications. ETA is late December.</li>\n	<li><strong>Struggle</strong>: Consuming the Gutenberg source in the ReactNative app directly. <em>More info can be found here: https://make.wordpress.org/mobile/2018/07/09/next-steps-for-gutenberg-mobile/</em></li>\n	<li><strong>Big Win</strong>: The WordPress mobile applications now fully support right-to-left languages and are compliant with the latest standards for accessibility.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/plugins/\">Plugins</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/ipstenu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ipstenu</a></li>\n	<li><strong>Priority</strong>: Clearing ~8,000 unused plugins from the queues. Likely ETA is September.<br /></li>\n	<li><strong>Struggles</strong>: Had to triage a lot of false claims around plugins offering GDPR compliance.</li>\n	<li><strong>Big Win</strong>: Released 4.9.6 and <a href=\"https://make.wordpress.org/plugins/2018/05/17/wp-4-9-6-privacy-hooks-and-you/\">updated expectations</a> with plugin authors. Huge thanks to the Core Privacy team for their hard work on this.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/polyglots/\">Polyglots</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/petya/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>petya</a>, <a href=\'https://profiles.wordpress.org/ocean90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ocean90</a>, <a href=\'https://profiles.wordpress.org/nao/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nao</a>, <a href=\'https://profiles.wordpress.org/chantalc/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chantalc</a>, <a href=\'https://profiles.wordpress.org/deconf/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>deconf</a>, <a href=\'https://profiles.wordpress.org/casiepa/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>casiepa</a></li>\n	<li><strong>Priority</strong>: Keep WordPress releases translated to 100% and then concentrate on the top 100 plugins and themes. ETA is ongoing.<br /><strong></strong></li>\n	<li><strong>﻿Struggle</strong>: Getting new PTEs fast enough, and complex tools/systems. Overall, the volume of strings awaiting approval.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/support/\">Support</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/clorith/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>clorith</a></li>\n	<li><strong>Priority:</strong> Getting ready for the Gutenberg callout (it got pushed last quarter). Needing a better presence on the official support forums, and outreach for that is underway, ETA end of July. <br /></li>\n	<li><strong>Struggle</strong>: Keeping contributors participating post-contributor days/drives. <em>﻿Considering the creation of a dedicated post-contributor day survey to get some insight here.</em></li>\n	<li><strong>Big Win</strong>: The increase in international liaisons joining for weekly meetings, helping bring the wider support community together.</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/themes/\">Theme Review</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/acosmin/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>acosmin</a>, <a href=\'https://profiles.wordpress.org/rabmalin/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>rabmalin</a>, <a href=\'https://profiles.wordpress.org/thinkupthemes/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thinkupthemes</a>, <a href=\'https://profiles.wordpress.org/williampatton/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>williampatton</a></li>\n	<li><strong>Priority</strong>: Building a better Theme Check/Sniffer in order to automate most of the checks done right now by reviewers. ETA late 2018, early 2019.</li>\n	<li><strong>Struggle</strong>: Bringing in new contributors to the team.</li>\n	<li><strong>Big Win</strong>: <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">Trusted Authors program﻿</a></li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/tide/\">Tide</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/valendesigns/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>valendesigns</a> (but usually <a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a>)</li>\n	<li><strong>Priority</strong>: Storing PHPCompatibilty results inside the WordPress.org API and building a UI to display those results, an endpoint to request an audit is required for this work to continue.</li>\n	<li><strong>Struggle</strong>: Development has dramatically slowed down while team members are on leave or pulled into internal client work.</li>\n	<li><strong>Big Win</strong>: Migration to Google Cloud Platform (GCP) from Amazon Web Services (AWS) is complete and the audit servers have all been rewritten in Go. (This allows us to be faster with greater capacity and less cost.)</li>\n</ul>\n\n<h2><a href=\"https://make.wordpress.org/training/\">Training</a></h2>\n\n<ul>\n	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/bethsoderberg/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>bethsoderberg</a>, <a href=\'https://profiles.wordpress.org/juliek/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>juliek</a></li>\n	<li><strong>Priority:</strong> Lesson plan production. ETA is ongoing.</li>\n	<li><strong>Struggle:</strong> The workflow is a little complex, so recruiting and training enough contributors to keep the process moving is a struggle.</li>\n	<li><strong>Big Win</strong>: WordCamp Europe&#8217;s Contributor Day was very productive. New tools/workflow are in place and two team representatives were there to lead and help.</li>\n</ul>\n\n<p><em>Interested in updates from the first quarter of this year? You can find those here: <a href=\"https://make.wordpress.org/updates/2018/04/24/quarterly-updates-q1-2018/\"><em>https://make.wordpress.org/updates/2018/04/24/quarterly-updates-q1-2018/</em></a>\n	</em>\n</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6140\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Update on Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/news/2018/07/update-on-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 19:23:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Focus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6118\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Tammie Lister\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2261:\"<p>Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. As the work on phase one moves into its final stretch, here is what you can expect.<br /></p>\n\n<h4>In Progress</h4>\n\n<ul>\n	<li>Freeze new features in Gutenberg (the feature list can be found <a href=\"https://github.com/WordPress/gutenberg/issues/4894\">here</a>).</li>\n	<li>Hosts, agencies, teachers invited to opt-in sites they have influence over.</li>\n	<li>WordPress.com has opt-in for wp-admin users. The number of sites and posts will be tracked.</li>\n	<li>Mobile app support for Gutenberg will be across iOS and Android.</li>\n</ul>\n\n<h4>July</h4>\n\n<ul>\n	<li>4.9.x release with an invitation to install either Gutenberg or Classic Editor plugin.</li>\n	<li>WordPress.com will move to opt-out. There will be tracking to see who opts out and why.</li>\n	<li>Triage increases and bug gardening escalates to get blockers in Gutenberg down to zero.</li>\n	<li>Gutenberg phase two, Customization exploration begins by moving beyond the post.</li>\n</ul>\n\n<h4>August and beyond</h4>\n\n<ul>\n	<li>All critical issues within Gutenberg are resolved.</li>\n	<li>There is full integration with Calypso and there is opt-in for users there.</li>\n	<li>A goal will be 100k+ sites having made 250k+ posts using Gutenberg.</li>\n	<li>Core merge of Gutenberg begins the 5.0 release cycle.</li>\n	<li>5.0 moves into beta releases and translations are completed.</li>\n	<li>There will be a mobile version of Gutenberg by the end of the year.</li>\n</ul>\n\n<p>WordPress 5.0 could be as soon as August with hundreds of thousands of sites using Gutenberg before release. Learn more about Gutenberg <a href=\"https://wordpress.org/gutenberg/\">here</a>, take it for a <a href=\"https://testgutenberg.com/\">test drive</a>, <a href=\"https://wordpress.org/plugins/gutenberg/\">install</a> on your site, follow along on <a href=\"https://github.com/WordPress/gutenberg\">GitHub</a> and give your <a href=\"https://wordpressdotorg.polldaddy.com/s/gutenberg-support\">feedback</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6118\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.7 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 17:00:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6091\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"WordPress 4.9.7 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3984:\"<p>WordPress 4.9.7 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads directory.</p>\n\n<p>Thank you to <a href=\"https://hackerone.com/slavco\">Slavco</a> for reporting the original issue and <a href=\"https://www.wordfence.com/\">Matt Barry</a> for reporting related issues.</p>\n\n<p>Seventeen other bugs were fixed in WordPress 4.9.7. Particularly of note were:</p>\n\n<ul>\n	<li>Taxonomy: Improve cache handling for term queries.</li>\n	<li>Posts, Post Types: Clear post password cookie when logging out.</li>\n	<li>Widgets: Allow basic HTML tags in sidebar descriptions on Widgets admin screen.</li>\n	<li>Community Events Dashboard: Always show the nearest WordCamp if one is coming up, even if there are multiple Meetups happening first.</li>\n	<li>Privacy: Make sure default privacy policy content does not cause a fatal error when flushing rewrite rules outside of the admin context.</li>\n</ul>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.7</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>The previously scheduled 4.9.7 is now referred to as 4.9.8, and will follow the <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">release schedule posted yesterday</a>.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.7:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"The Month in WordPress: June 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 09:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6087\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June. Another Successful WordCamp Europe On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4627:\"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Another Successful WordCamp Europe</h2>\n\n<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>\n\n<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href=\"https://www.flickr.com/photos/wceu/albums\">photos from the event</a>.</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">fill in the application form</a>.</p>\n\n<h2>Updated Roadmap for the New WordPress Content Editor</h2>\n\n<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">an updated roadmap</a> for <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>\n\n<p>While the editor is in rapid development, <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>\n\n<p>If you would like to contribute to Gutenberg, read <a href=\"https://wordpress.org/gutenberg/handbook/\">the handbook</a>, follow the <a href=\"https://make.wordpress.org/core/\">Core team blog</a>, and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>WordCamp Incubator Cities Announced</h2>\n\n<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>\n\n<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>\n\n<p>To find out more about the Incubator program follow the <a href=\"https://make.wordpress.org/community/\">Community team blog</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>The WordPress community of Spain recently <a href=\"https://twitter.com/wp_es/status/1004681694660603904\">received an award</a> for being the best open-source community in the country.</li>\n	<li>This month, WordPress reached <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">the milestone of powering 31% of websites</a>.</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>\n	<li>Near the end of the month, Zac Gordon hosted <a href=\"https://javascriptforwp.com/conference/\">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"The Month in WordPress: May 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 09:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6065\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May. Local Communities Celebrate the 15th Anniversary of WordPress Last Sunday, May [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4537:\"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>\n\n<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href=\"https://wp15.wordpress.net/\">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>\n\n<p>Altogether, there were 224 events globally, with <a href=\"https://wp15.wordpress.net/about/\">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>\n\n<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Privacy Tools added to WordPress core</h2>\n\n<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>\n\n<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>\n\n<p>To find out more about these features and the other updates, read the <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updates to the WordPress.org Privacy Policy</h2>\n\n<p>In a similar vein, WordPress.org itself has received <a href=\"https://wordpress.org/about/privacy/\">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href=\"https://wordpress.org/about/privacy/cookies/\">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>\n\n<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>WordCamp US 2018 has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">opened up speaker submissions</a> for the December event.</li>\n	<li><a href=\"https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/\">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>\n	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href=\"https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/\">a major update</a> this month.</li>\n	<li>In preparation for Gutenberg, <a href=\"https://core.trac.wordpress.org/changeset/43309\">significant work has been done</a> to improve WordPress Core’s build process.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"privacy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"The WordPress.org privacy policy has been updated, hurray! While we weren&#8217;t able to remove all the long sentences, we hope you find the revisions make it easier to understand: how we collect and use data, how long the data we collect is retained, and how you can request a copy of the data you&#8217;ve shared [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:657:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:358:\"WordPress 4.9.6 is now available. This is a privacy and maintenance release. We encourage you to update your sites to take advantage of the new privacy features. Privacy The European Union&#8217;s General Data Protection Regulation (GDPR) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13399:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&#038;ssl=1\" alt=\"A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background.\" class=\"wp-image-5988\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=1024%2C512&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<h2 style=\"text-align:left\">Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2 style=\"text-align:left\">Comments</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&#038;ssl=1\" alt=\"A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured.\" class=\"wp-image-5986\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=300%2C291&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=768%2C744&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=1024%2C992&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2 style=\"text-align:left\">Privacy Policy Page</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1898&amp;ssl=1 1898w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=300%2C177&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=768%2C453&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=1024%2C604&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2 style=\"text-align:left\">Data Handling</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=2372&amp;ssl=1 2372w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=300%2C221&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=768%2C565&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=1024%2C753&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"#\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"#\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2 style=\"text-align:left\">Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4981:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 06 Aug 2018 15:54:25 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 02 Aug 2018 22:13:06 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20180621125313\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1160, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1533614064', 'no'),
(1161, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1533570864', 'no'),
(1162, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1533614066', 'no'),
(1163, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1533614066', 'no'),
(1164, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1533570866', 'no'),
(1165, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1533614066', 'no'),
(1166, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\'>WordPress 4.9.8 Maintenance Release</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://poststatus.com/considerations-for-ecommerce-merchants-with-andrew-youderian-of-ecommerce-fuel/\'>Post Status: Considerations for eCommerce merchants, with Andrew Youderian of eCommerce Fuel</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-4-9-8-released\'>WPTavern: WordPress 4.9.8 Released</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-com-partners-with-pexels-to-offer-diverse-free-stock-photo-library\'>WPTavern: WordPress.com Partners with Pexels to Offer Diverse, Free Stock Photo Library</a></li></ul></div>', 'no'),
(1209, 'job_search_children', 'a:1:{i:53;a:2:{i:0;i:71;i:1;i:72;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '[email* email-9 class:email placeholder \"Enter your Email  \"]<span class=\"subscribe-button\">[submit \"&nbsp;\"]</span>'),
(3, 4, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"AgilityPersonnel \"Subscriber Form\"\";s:6:\"sender\";s:30:\"[your-name] <wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:17:\"Email : [email-9]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 6, '_edit_last', '1'),
(9, 6, 'field_5b164fcdc7a3c', 'a:14:{s:3:\"key\";s:19:\"field_5b164fcdc7a3c\";s:5:\"label\";s:5:\"title\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(10, 6, 'field_5b164fd5c7a3d', 'a:11:{s:3:\"key\";s:19:\"field_5b164fd5c7a3d\";s:5:\"label\";s:7:\"content\";s:4:\"name\";s:7:\"content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(12, 6, 'position', 'normal'),
(13, 6, 'layout', 'no_box'),
(14, 6, 'hide_on_screen', ''),
(15, 6, '_edit_lock', '1529396641:1'),
(16, 7, '_edit_last', '1'),
(17, 7, '_edit_lock', '1530177113:1'),
(20, 9, '_wp_attached_file', '2018/06/banner.png'),
(21, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:851;s:4:\"file\";s:18:\"2018/06/banner.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x408.png\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x545.png\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 7, '_thumbnail_id', '9'),
(23, 7, 'title', 'get on to the right career path '),
(24, 7, '_title', 'field_5b164fcdc7a3c'),
(25, 7, 'content', 'Attaining the right career is the first step towards achieving your goals.\r\nAt Agility Personnel, we can help you find the career that\'s just right for you.'),
(26, 7, '_content', 'field_5b164fd5c7a3d'),
(27, 10, '_wp_attached_file', '2018/06/logo.png'),
(28, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:96;s:4:\"file\";s:16:\"2018/06/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x96.png\";s:5:\"width\";i:150;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 12, '_edit_last', '1'),
(32, 12, '_edit_lock', '1530270335:1'),
(33, 12, '_thumbnail_id', '85'),
(34, 12, 'title', 'get on to the right career path '),
(35, 12, '_title', 'field_5b164fcdc7a3c'),
(36, 12, 'content', 'Attaining the right career is the first step towards achieving your goals.\r\nAt Agility Personnel, we can help you find the career that\'s just right for you.'),
(37, 12, '_content', 'field_5b164fd5c7a3d'),
(38, 6, 'field_5b1655c2d99fd', 'a:14:{s:3:\"key\";s:19:\"field_5b1655c2d99fd\";s:5:\"label\";s:4:\"link\";s:4:\"name\";s:4:\"link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(39, 6, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home_banner\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(40, 7, 'link', 'jobs'),
(41, 7, '_link', 'field_5b1655c2d99fd'),
(42, 13, '_menu_item_type', 'custom'),
(43, 13, '_menu_item_menu_item_parent', '0'),
(44, 13, '_menu_item_object_id', '13'),
(45, 13, '_menu_item_object', 'custom'),
(46, 13, '_menu_item_target', ''),
(47, 13, '_menu_item_classes', 'a:1:{i:0;s:23:\"hvr-underline-from-left\";}'),
(48, 13, '_menu_item_xfn', ''),
(49, 13, '_menu_item_url', '#'),
(51, 14, '_menu_item_type', 'custom'),
(52, 14, '_menu_item_menu_item_parent', '0'),
(53, 14, '_menu_item_object_id', '14'),
(54, 14, '_menu_item_object', 'custom'),
(55, 14, '_menu_item_target', ''),
(56, 14, '_menu_item_classes', 'a:1:{i:0;s:23:\"hvr-underline-from-left\";}'),
(57, 14, '_menu_item_xfn', ''),
(58, 14, '_menu_item_url', '#'),
(96, 19, '_menu_item_type', 'custom'),
(97, 19, '_menu_item_menu_item_parent', '0'),
(98, 19, '_menu_item_object_id', '19'),
(99, 19, '_menu_item_object', 'custom'),
(100, 19, '_menu_item_target', ''),
(101, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 19, '_menu_item_xfn', ''),
(103, 19, '_menu_item_url', 'http://niyati.website/AgilityPersonnel/jobs/'),
(161, 26, '_edit_last', '1'),
(162, 26, '_edit_lock', '1528200905:1'),
(166, 29, '_edit_last', '1'),
(167, 29, '_edit_lock', '1529902892:1'),
(174, 29, '_thumbnail_id', '9'),
(175, 33, '_edit_last', '1'),
(176, 33, '_edit_lock', '1533571006:1'),
(177, 33, '_wp_page_template', 'front-page.php'),
(178, 36, '_wp_attached_file', '2018/06/a-icon.jpg'),
(179, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:22;s:6:\"height\";i:22;s:4:\"file\";s:18:\"2018/06/a-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 38, '_edit_last', '1'),
(183, 38, 'field_5b1e50535d58d', 'a:14:{s:3:\"key\";s:19:\"field_5b1e50535d58d\";s:5:\"label\";s:12:\"company name\";s:4:\"name\";s:12:\"company_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(184, 38, 'field_5b1e50615d58e', 'a:14:{s:3:\"key\";s:19:\"field_5b1e50615d58e\";s:5:\"label\";s:18:\"year of experience\";s:4:\"name\";s:18:\"year_of_experience\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(185, 38, 'field_5b1e507e5d58f', 'a:14:{s:3:\"key\";s:19:\"field_5b1e507e5d58f\";s:5:\"label\";s:7:\"country\";s:4:\"name\";s:7:\"country\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(187, 38, 'position', 'normal'),
(188, 38, 'layout', 'no_box'),
(189, 38, 'hide_on_screen', ''),
(190, 38, '_edit_lock', '1528976820:1'),
(191, 29, 'company_name', 'TransCanada'),
(192, 29, '_company_name', 'field_5b1e50535d58d'),
(193, 29, 'year_of_experience', '2.5 years'),
(194, 29, '_year_of_experience', 'field_5b1e50615d58e'),
(195, 29, 'country', 'India'),
(196, 29, '_country', 'field_5b1e507e5d58f'),
(197, 39, '_edit_last', '1'),
(198, 39, '_edit_lock', '1530174187:1'),
(199, 39, 'company_name', 'The Dow Chemical Company '),
(200, 39, '_company_name', 'field_5b1e50535d58d'),
(201, 39, 'year_of_experience', '2 years'),
(202, 39, '_year_of_experience', 'field_5b1e50615d58e'),
(203, 39, 'country', 'USA'),
(204, 39, '_country', 'field_5b1e507e5d58f'),
(205, 40, '_edit_last', '1'),
(206, 40, '_edit_lock', '1529902874:1'),
(207, 40, 'company_name', 'Syncrude'),
(208, 40, '_company_name', 'field_5b1e50535d58d'),
(209, 40, 'year_of_experience', '2.5 years'),
(210, 40, '_year_of_experience', 'field_5b1e50615d58e'),
(211, 40, 'country', 'Los Angeles County, CA'),
(212, 40, '_country', 'field_5b1e507e5d58f'),
(216, 41, '_form', '[email* email class:email-sub placeholder \"Email Address\"]\n[submit class:subscribe-button \"subscribe\"]'),
(217, 41, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:28:\"AgilityPersonnel \"Job Alert\"\";s:6:\"sender\";s:30:\"[your-name] <wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:15:\"Email : [email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(218, 41, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(219, 41, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(220, 41, '_additional_settings', ''),
(221, 41, '_locale', 'en_US'),
(223, 42, '_edit_last', '1'),
(224, 42, '_edit_lock', '1529469032:1'),
(225, 42, 'company_name', 'Aecon Group '),
(226, 42, '_company_name', 'field_5b1e50535d58d'),
(227, 42, 'year_of_experience', '1.5 years'),
(228, 42, '_year_of_experience', 'field_5b1e50615d58e'),
(229, 42, 'country', 'India'),
(230, 42, '_country', 'field_5b1e507e5d58f'),
(231, 43, '_edit_last', '1'),
(232, 43, '_edit_lock', '1529902846:1'),
(233, 43, 'company_name', 'Syncrude'),
(234, 43, '_company_name', 'field_5b1e50535d58d'),
(235, 43, 'year_of_experience', '2.5 years	'),
(236, 43, '_year_of_experience', 'field_5b1e50615d58e'),
(237, 43, 'country', 'Los Angeles County, CA'),
(238, 43, '_country', 'field_5b1e507e5d58f'),
(239, 38, 'field_5b20afe1fb1bf', 'a:14:{s:3:\"key\";s:19:\"field_5b20afe1fb1bf\";s:5:\"label\";s:8:\"industry\";s:4:\"name\";s:8:\"industry\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(240, 38, 'field_5b20afe7fb1c0', 'a:14:{s:3:\"key\";s:19:\"field_5b20afe7fb1c0\";s:5:\"label\";s:5:\"title\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(241, 38, 'field_5b20aff1fb1c1', 'a:14:{s:3:\"key\";s:19:\"field_5b20aff1fb1c1\";s:5:\"label\";s:9:\"education\";s:4:\"name\";s:9:\"education\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(243, 38, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"jobs\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(244, 43, 'industry', 'Recruitment/Staffing/RPO'),
(245, 43, '_industry', 'field_5b20afe1fb1bf'),
(246, 43, 'title', 'Quality Assurance/ Control'),
(247, 43, '_title', 'field_5b20afe7fb1c0'),
(248, 43, 'education', 'B.E/B.Tech'),
(249, 43, '_education', 'field_5b20aff1fb1c1'),
(250, 46, '_form', '[text* candidatename class:name1 placeholder \"name*\"]\n[email* email class:email1 placeholder \"email*\"]\n[tel* phone class:phone1 placeholder \"phone*\"]\n[text* city class:city1 placeholder \"city*\"]\n[text* state class:state1 placeholder \"state*\"]\n<span class=\"attach\">Attach Resume*</span>[file* resume class:resume]\n[submit]'),
(251, 46, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:42:\"AgilityPersonnel \"applied for [jobtitle] \"\";s:6:\"sender\";s:18:\"<wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:84:\"Name : [candidatename]\nEmail : [email]\nPhone : [phone]\nCity : [city]\nState : [state]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:8:\"[resume]\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(252, 46, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(253, 46, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(254, 46, '_additional_settings', ''),
(255, 46, '_locale', 'en_US'),
(263, 41, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(266, 4, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(267, 42, 'industry', 'IT'),
(268, 42, '_industry', 'field_5b20afe1fb1bf'),
(269, 42, 'title', 'Mechanical Engineer'),
(270, 42, '_title', 'field_5b20afe7fb1c0'),
(271, 42, 'education', 'B.E/B.Tech'),
(272, 42, '_education', 'field_5b20aff1fb1c1'),
(273, 47, '_edit_last', '1'),
(274, 47, '_edit_lock', '1533570942:1'),
(275, 47, 'company_name', 'The Dow Chemical Company '),
(276, 47, '_company_name', 'field_5b1e50535d58d'),
(277, 47, 'year_of_experience', '2 years'),
(278, 47, '_year_of_experience', 'field_5b1e50615d58e'),
(279, 47, 'country', 'USA'),
(280, 47, '_country', 'field_5b1e507e5d58f'),
(281, 47, 'industry', 'Recruitment/Staffing/RPO'),
(282, 47, '_industry', 'field_5b20afe1fb1bf'),
(283, 47, 'title', 'Reliability Engineer'),
(284, 47, '_title', 'field_5b20afe7fb1c0'),
(285, 47, 'education', 'B.E/B.Tech'),
(286, 47, '_education', 'field_5b20aff1fb1c1'),
(287, 52, '_edit_last', '1'),
(288, 52, '_edit_lock', '1533572704:1'),
(289, 53, '_wp_attached_file', '2018/06/about.png'),
(290, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2018/06/about.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(291, 52, '_thumbnail_id', '56'),
(292, 52, '_wp_page_template', 'about-us.php'),
(293, 56, '_wp_attached_file', '2018/06/about-banner.png'),
(294, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:406;s:4:\"file\";s:24:\"2018/06/about-banner.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"about-banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"about-banner-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"about-banner-768x195.png\";s:5:\"width\";i:768;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"about-banner-1024x260.png\";s:5:\"width\";i:1024;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(295, 58, '_edit_last', '1'),
(296, 58, 'field_5b23860564321', 'a:11:{s:3:\"key\";s:19:\"field_5b23860564321\";s:5:\"label\";s:13:\"about content\";s:4:\"name\";s:13:\"about_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(297, 58, 'field_5b23860e64322', 'a:11:{s:3:\"key\";s:19:\"field_5b23860e64322\";s:5:\"label\";s:5:\"image\";s:4:\"name\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(299, 58, 'position', 'normal'),
(300, 58, 'layout', 'no_box'),
(301, 58, 'hide_on_screen', ''),
(302, 58, '_edit_lock', '1529064652:1'),
(303, 59, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(304, 59, '_about_content', 'field_5b23860564321'),
(305, 59, 'image', '53'),
(306, 59, '_image', 'field_5b23860e64322'),
(307, 52, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(308, 52, '_about_content', 'field_5b23860564321'),
(309, 52, 'image', '53'),
(310, 52, '_image', 'field_5b23860e64322'),
(311, 58, 'field_5b23a89431b85', 'a:11:{s:3:\"key\";s:19:\"field_5b23a89431b85\";s:5:\"label\";s:12:\"get in touch\";s:4:\"name\";s:12:\"get_in_touch\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(312, 58, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"about-us.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(313, 60, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(314, 60, '_about_content', 'field_5b23860564321'),
(315, 60, 'image', '53'),
(316, 60, '_image', 'field_5b23860e64322'),
(317, 60, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"#\">Get in touch</a>'),
(318, 60, '_get_in_touch', 'field_5b23a89431b85'),
(319, 52, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(320, 52, '_get_in_touch', 'field_5b23a89431b85'),
(321, 61, '_edit_last', '1'),
(322, 61, '_edit_lock', '1530177876:1'),
(323, 61, '_wp_page_template', 'default'),
(324, 65, '_edit_last', '1'),
(325, 65, '_edit_lock', '1530270360:1'),
(329, 65, '_wp_page_template', 'contact.php'),
(330, 69, '_form', '[text* company class:contactcompany placeholder \"Company Name*\"]\n[email* email class:contactemail placeholder \"Email Address*\"]\n[tel* phone class:contactphone placeholder \"Phone Number*\"]\n[text* city class:contactcity placeholder \"City*\"]\n[text* state class:contactcity placeholder \"State*\"]\n[textarea* comments 1x6 class:contactcomments placeholder \"Your Requirement\"]\n<span class=\"mandatory\">* fields are mandatory</span>\n[submit \"Submit\"]'),
(331, 69, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:31:\"AgilityPersonnel \"contact form\"\";s:6:\"sender\";s:18:\"<wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(332, 69, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(333, 69, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(334, 69, '_additional_settings', ''),
(335, 69, '_locale', 'en_US'),
(352, 71, '_menu_item_type', 'post_type'),
(353, 71, '_menu_item_menu_item_parent', '0'),
(354, 71, '_menu_item_object_id', '65'),
(355, 71, '_menu_item_object', 'page'),
(356, 71, '_menu_item_target', ''),
(357, 71, '_menu_item_classes', 'a:1:{i:0;s:23:\"hvr-underline-from-left\";}'),
(358, 71, '_menu_item_xfn', ''),
(359, 71, '_menu_item_url', ''),
(360, 72, '_edit_last', '1'),
(361, 72, '_edit_lock', '1529902827:1'),
(362, 72, 'company_name', 'Niyati Technology'),
(363, 72, '_company_name', 'field_5b1e50535d58d'),
(364, 72, 'year_of_experience', '2 years'),
(365, 72, '_year_of_experience', 'field_5b1e50615d58e'),
(366, 72, 'country', 'india'),
(367, 72, '_country', 'field_5b1e507e5d58f'),
(368, 72, 'industry', 'IT'),
(369, 72, '_industry', 'field_5b20afe1fb1bf'),
(370, 72, 'title', 'IT Manager'),
(371, 72, '_title', 'field_5b20afe7fb1c0'),
(372, 72, 'education', 'BE'),
(373, 72, '_education', 'field_5b20aff1fb1c1'),
(374, 39, 'industry', 'IT'),
(375, 39, '_industry', 'field_5b20afe1fb1bf'),
(376, 39, 'title', 'Reliability Engineer'),
(377, 39, '_title', 'field_5b20afe7fb1c0'),
(378, 39, 'education', 'BE'),
(379, 39, '_education', 'field_5b20aff1fb1c1'),
(380, 40, 'industry', 'Recruitment/Staffing/RPO'),
(381, 40, '_industry', 'field_5b20afe1fb1bf'),
(382, 40, 'title', 'Inspector-Quality Assurance'),
(383, 40, '_title', 'field_5b20afe7fb1c0'),
(384, 40, 'education', 'B.E/B.Tech'),
(385, 40, '_education', 'field_5b20aff1fb1c1'),
(386, 29, 'industry', 'IT'),
(387, 29, '_industry', 'field_5b20afe1fb1bf'),
(388, 29, 'title', 'Quality Assurance/ Control'),
(389, 29, '_title', 'field_5b20afe7fb1c0'),
(390, 29, 'education', 'B.E/B.Tech'),
(391, 29, '_education', 'field_5b20aff1fb1c1'),
(392, 73, '_edit_last', '1'),
(393, 73, '_edit_lock', '1529902818:1'),
(394, 73, 'company_name', 'Niyati Technology'),
(395, 73, '_company_name', 'field_5b1e50535d58d'),
(396, 73, 'year_of_experience', '2 years'),
(397, 73, '_year_of_experience', 'field_5b1e50615d58e'),
(398, 73, 'country', 'india'),
(399, 73, '_country', 'field_5b1e507e5d58f'),
(400, 73, 'industry', 'IT'),
(401, 73, '_industry', 'field_5b20afe1fb1bf'),
(402, 73, 'title', ''),
(403, 73, '_title', 'field_5b20afe7fb1c0'),
(404, 73, 'education', ''),
(405, 73, '_education', 'field_5b20aff1fb1c1'),
(406, 74, '_edit_last', '1'),
(407, 74, '_edit_lock', '1530270107:1'),
(408, 74, 'company_name', 'Niyati Technologies'),
(409, 74, '_company_name', 'field_5b1e50535d58d'),
(410, 74, 'year_of_experience', '3+ Years'),
(411, 74, '_year_of_experience', 'field_5b1e50615d58e'),
(412, 74, 'country', 'USA'),
(413, 74, '_country', 'field_5b1e507e5d58f'),
(414, 74, 'industry', 'IT'),
(415, 74, '_industry', 'field_5b20afe1fb1bf'),
(416, 74, 'title', 'PHP Lead'),
(417, 74, '_title', 'field_5b20afe7fb1c0'),
(418, 74, 'education', ''),
(419, 74, '_education', 'field_5b20aff1fb1c1'),
(420, 75, '_edit_last', '1'),
(421, 75, '_edit_lock', '1529902801:1'),
(422, 75, 'company_name', 'Niyati Technology'),
(423, 75, '_company_name', 'field_5b1e50535d58d'),
(424, 75, 'year_of_experience', '3+ Years'),
(425, 75, '_year_of_experience', 'field_5b1e50615d58e'),
(426, 75, 'country', 'USA'),
(427, 75, '_country', 'field_5b1e507e5d58f'),
(428, 75, 'industry', 'IT'),
(429, 75, '_industry', 'field_5b20afe1fb1bf'),
(430, 75, 'title', ''),
(431, 75, '_title', 'field_5b20afe7fb1c0'),
(432, 75, 'education', ''),
(433, 75, '_education', 'field_5b20aff1fb1c1'),
(434, 76, '_edit_last', '1'),
(435, 76, '_edit_lock', '1530183234:1'),
(436, 76, 'company_name', 'Niyati Technology'),
(437, 76, '_company_name', 'field_5b1e50535d58d'),
(438, 76, 'year_of_experience', '3+ Years'),
(439, 76, '_year_of_experience', 'field_5b1e50615d58e'),
(440, 76, 'country', 'india'),
(441, 76, '_country', 'field_5b1e507e5d58f'),
(442, 76, 'industry', 'IT'),
(443, 76, '_industry', 'field_5b20afe1fb1bf'),
(444, 76, 'title', ''),
(445, 76, '_title', 'field_5b20afe7fb1c0'),
(446, 76, 'education', ''),
(447, 76, '_education', 'field_5b20aff1fb1c1'),
(451, 79, '_menu_item_type', 'post_type'),
(452, 79, '_menu_item_menu_item_parent', '0'),
(453, 79, '_menu_item_object_id', '52'),
(454, 79, '_menu_item_object', 'page'),
(455, 79, '_menu_item_target', ''),
(456, 79, '_menu_item_classes', 'a:1:{i:0;s:23:\"hvr-underline-from-left\";}'),
(457, 79, '_menu_item_xfn', ''),
(458, 79, '_menu_item_url', ''),
(478, 82, '_menu_item_type', 'custom'),
(479, 82, '_menu_item_menu_item_parent', '13'),
(480, 82, '_menu_item_object_id', '82'),
(481, 82, '_menu_item_object', 'custom'),
(482, 82, '_menu_item_target', ''),
(483, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 82, '_menu_item_xfn', ''),
(485, 82, '_menu_item_url', 'http://niyati.website/AgilityPersonnel/jobs/'),
(505, 85, '_wp_attached_file', '2018/06/banner2.png'),
(506, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:851;s:4:\"file\";s:19:\"2018/06/banner2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x408.png\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x545.png\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(507, 12, 'link', 'http://niyati.website/AgilityPersonnel/jobs/'),
(508, 12, '_link', 'field_5b1655c2d99fd'),
(509, 87, '_wp_attached_file', '2018/06/contact.jpg'),
(510, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1056;s:4:\"file\";s:19:\"2018/06/contact.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"contact-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"contact-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"contact-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"contact-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(511, 65, '_thumbnail_id', '87'),
(515, 90, '_edit_last', '1'),
(516, 90, '_edit_lock', '1530166704:1'),
(517, 90, '_wp_page_template', 'submit-resume.php'),
(521, 90, '_thumbnail_id', '87'),
(522, 92, '_form', '<div class=\"col-md-6 pad-left\">[text* jobtitle class:job1 placeholder \"job title*\"]</div><div class=\"col-md-6 pad-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"attach\">Attach Resume*</span>[file* resume class:resume]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">All fields are mandatory</span>[submit]</div>'),
(523, 92, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:13:\"Submit resume\";s:6:\"sender\";s:30:\"[your-name] <wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:107:\"job title : [jobtitle]\nName : [candidatename]\nEmail : [email]\nPhone : [phone]\nCity : [city]\nState : [state]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:8:\"[resume]\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(524, 92, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(525, 92, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(526, 92, '_additional_settings', ''),
(527, 92, '_locale', 'en_US'),
(529, 93, '_menu_item_type', 'post_type'),
(530, 93, '_menu_item_menu_item_parent', '13'),
(531, 93, '_menu_item_object_id', '90'),
(532, 93, '_menu_item_object', 'page'),
(533, 93, '_menu_item_target', ''),
(534, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(535, 93, '_menu_item_xfn', ''),
(536, 93, '_menu_item_url', ''),
(539, 94, '_form', '<div class=\"col-md-12 padleft-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\">[textarea textarea 5x5 class:message1 placeholder \"Comments\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit]</div>'),
(540, 94, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:40:\"AgilityPersonnel \"talent recruiter form\"\";s:6:\"sender\";s:18:\"<wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:106:\"name : [candidatename]\nEmail : [email]\nPhone : [phone]\nCity : [city]\nState : [state]\nComments : [textarea]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(541, 94, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(542, 94, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(543, 94, '_additional_settings', ''),
(544, 94, '_locale', 'en_US'),
(546, 95, '_edit_last', '1'),
(547, 95, '_wp_page_template', 'recuriter-talent.php'),
(548, 95, '_edit_lock', '1533570986:1'),
(549, 97, '_menu_item_type', 'post_type'),
(550, 97, '_menu_item_menu_item_parent', '13'),
(551, 97, '_menu_item_object_id', '95'),
(552, 97, '_menu_item_object', 'page'),
(553, 97, '_menu_item_target', ''),
(554, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(555, 97, '_menu_item_xfn', ''),
(556, 97, '_menu_item_url', ''),
(558, 95, '_thumbnail_id', '87'),
(571, 98, '_form', '<div class=\"col-md-12 padleft-right\">[text* company class:company1 placeholder \"Company Name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"Email Address*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"Phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"City*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"State*\"]</div><div class=\"col-md-12 padleft-right\">[textarea* comments 4x4 class:comments1 placeholder \"Your Requirement\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"attach\">Attach Resume*</span>[file* resume class:resume]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit \"Submit\"]</div>'),
(572, 98, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"AgilityPersonnel \"Talent Finder\"\";s:6:\"sender\";s:18:\"<wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:103:\"Company : [company]\nEmail : [email]\nPhone : [phone]\nCity : [city]\nState : [state]\nComments : [comments]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:8:\"[resume]\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(573, 98, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(574, 98, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(575, 98, '_additional_settings', ''),
(576, 98, '_locale', 'en_US'),
(581, 99, '_edit_last', '1'),
(582, 99, '_edit_lock', '1530166757:1'),
(583, 99, '_thumbnail_id', '87'),
(584, 99, '_wp_page_template', 'talent-finder.php'),
(585, 101, '_menu_item_type', 'post_type'),
(586, 101, '_menu_item_menu_item_parent', '14'),
(587, 101, '_menu_item_object_id', '99'),
(588, 101, '_menu_item_object', 'page'),
(589, 101, '_menu_item_target', ''),
(590, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 101, '_menu_item_xfn', ''),
(592, 101, '_menu_item_url', ''),
(600, 94, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(601, 102, '_form', '<div class=\"col-md-12 padleft-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\">[textarea textarea 5x5 class:message1 placeholder \"Comments\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit]</div>'),
(602, 102, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:41:\"AgilityPersonnel \"company recruiter form\"\";s:6:\"sender\";s:30:\"[your-name] <wordpress@server>\";s:9:\"recipient\";s:15:\"john@niyati.com\";s:4:\"body\";s:106:\"name : [candidatename]\nEmail : [email]\nPhone : [phone]\nCity : [city]\nState : [state]\nComments : [textarea]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(603, 102, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"AgilityPersonnel \"[your-subject]\"\";s:6:\"sender\";s:35:\"AgilityPersonnel <wordpress@server>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\";s:18:\"additional_headers\";s:25:\"Reply-To: john@niyati.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(604, 102, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(605, 102, '_additional_settings', ''),
(606, 102, '_locale', 'en_US'),
(608, 102, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(609, 103, '_edit_last', '1'),
(610, 103, '_edit_lock', '1530167655:1'),
(611, 103, '_thumbnail_id', '87'),
(612, 103, '_wp_page_template', 'Request-HR.php'),
(613, 105, '_menu_item_type', 'post_type'),
(614, 105, '_menu_item_menu_item_parent', '14'),
(615, 105, '_menu_item_object_id', '103'),
(616, 105, '_menu_item_object', 'page'),
(617, 105, '_menu_item_target', ''),
(618, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(619, 105, '_menu_item_xfn', ''),
(620, 105, '_menu_item_url', ''),
(623, 92, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(624, 46, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(625, 98, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(626, 106, '_menu_item_type', 'post_type'),
(627, 106, '_menu_item_menu_item_parent', '0'),
(628, 106, '_menu_item_object_id', '103'),
(629, 106, '_menu_item_object', 'page'),
(630, 106, '_menu_item_target', ''),
(631, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(632, 106, '_menu_item_xfn', ''),
(633, 106, '_menu_item_url', ''),
(635, 107, '_menu_item_type', 'post_type'),
(636, 107, '_menu_item_menu_item_parent', '0'),
(637, 107, '_menu_item_object_id', '99'),
(638, 107, '_menu_item_object', 'page'),
(639, 107, '_menu_item_target', ''),
(640, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(641, 107, '_menu_item_xfn', ''),
(642, 107, '_menu_item_url', ''),
(644, 108, '_menu_item_type', 'post_type'),
(645, 108, '_menu_item_menu_item_parent', '0'),
(646, 108, '_menu_item_object_id', '95'),
(647, 108, '_menu_item_object', 'page'),
(648, 108, '_menu_item_target', ''),
(649, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(650, 108, '_menu_item_xfn', ''),
(651, 108, '_menu_item_url', ''),
(653, 109, '_menu_item_type', 'post_type'),
(654, 109, '_menu_item_menu_item_parent', '0'),
(655, 109, '_menu_item_object_id', '90'),
(656, 109, '_menu_item_object', 'page'),
(657, 109, '_menu_item_target', ''),
(658, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(659, 109, '_menu_item_xfn', ''),
(660, 109, '_menu_item_url', ''),
(662, 110, '_menu_item_type', 'post_type'),
(663, 110, '_menu_item_menu_item_parent', '0'),
(664, 110, '_menu_item_object_id', '65'),
(665, 110, '_menu_item_object', 'page'),
(666, 110, '_menu_item_target', ''),
(667, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(668, 110, '_menu_item_xfn', ''),
(669, 110, '_menu_item_url', ''),
(671, 111, '_menu_item_type', 'post_type'),
(672, 111, '_menu_item_menu_item_parent', '0'),
(673, 111, '_menu_item_object_id', '52'),
(674, 111, '_menu_item_object', 'page'),
(675, 111, '_menu_item_target', ''),
(676, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(677, 111, '_menu_item_xfn', ''),
(678, 111, '_menu_item_url', ''),
(680, 69, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(683, 115, 'es_template_type', 'Post Notification'),
(684, 116, 'es_template_type', 'Newsletter'),
(685, 116, '_edit_lock', '1530165434:1'),
(686, 115, '_edit_lock', '1530163739:1'),
(705, 123, '_menu_item_type', 'post_type'),
(706, 123, '_menu_item_menu_item_parent', '79'),
(707, 123, '_menu_item_object_id', '52'),
(708, 123, '_menu_item_object', 'page'),
(709, 123, '_menu_item_target', ''),
(710, 123, '_menu_item_classes', 'a:1:{i:0;s:10:\"mobileshow\";}'),
(711, 123, '_menu_item_xfn', ''),
(712, 123, '_menu_item_url', ''),
(716, 125, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(717, 125, '_about_content', 'field_5b23860564321'),
(718, 125, 'image', '53'),
(719, 125, '_image', 'field_5b23860e64322'),
(720, 125, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(721, 125, '_get_in_touch', 'field_5b23a89431b85'),
(722, 126, '_edit_last', '1'),
(723, 126, '_edit_lock', '1530170091:1'),
(724, 126, '_thumbnail_id', '56'),
(725, 126, '_wp_page_template', 'about-us.php'),
(726, 127, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(727, 127, '_about_content', 'field_5b23860564321'),
(728, 127, 'image', '53'),
(729, 127, '_image', 'field_5b23860e64322'),
(730, 127, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(731, 127, '_get_in_touch', 'field_5b23a89431b85'),
(732, 126, 'about_content', '<h2>Talent Solutions</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(733, 126, '_about_content', 'field_5b23860564321'),
(734, 126, 'image', '53'),
(735, 126, '_image', 'field_5b23860e64322'),
(736, 126, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(737, 126, '_get_in_touch', 'field_5b23a89431b85'),
(738, 128, '_menu_item_type', 'post_type'),
(739, 128, '_menu_item_menu_item_parent', '79'),
(740, 128, '_menu_item_object_id', '126'),
(741, 128, '_menu_item_object', 'page'),
(742, 128, '_menu_item_target', ''),
(743, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(744, 128, '_menu_item_xfn', ''),
(745, 128, '_menu_item_url', ''),
(747, 129, '_edit_last', '1'),
(748, 129, '_edit_lock', '1530170121:1'),
(749, 129, '_wp_page_template', 'about-us.php'),
(750, 130, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(751, 130, '_about_content', 'field_5b23860564321'),
(752, 130, 'image', '53'),
(753, 130, '_image', 'field_5b23860e64322'),
(754, 130, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(755, 130, '_get_in_touch', 'field_5b23a89431b85'),
(756, 129, 'about_content', '<h2>HR Consulting</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(757, 129, '_about_content', 'field_5b23860564321'),
(758, 129, 'image', '53'),
(759, 129, '_image', 'field_5b23860e64322'),
(760, 129, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(761, 129, '_get_in_touch', 'field_5b23a89431b85'),
(762, 129, '_thumbnail_id', '56'),
(763, 131, '_menu_item_type', 'post_type'),
(764, 131, '_menu_item_menu_item_parent', '79'),
(765, 131, '_menu_item_object_id', '129'),
(766, 131, '_menu_item_object', 'page'),
(767, 131, '_menu_item_target', ''),
(768, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(769, 131, '_menu_item_xfn', ''),
(770, 131, '_menu_item_url', ''),
(772, 132, '_menu_item_type', 'post_type'),
(773, 132, '_menu_item_menu_item_parent', '0'),
(774, 132, '_menu_item_object_id', '129'),
(775, 132, '_menu_item_object', 'page'),
(776, 132, '_menu_item_target', ''),
(777, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(778, 132, '_menu_item_xfn', ''),
(779, 132, '_menu_item_url', ''),
(781, 133, '_menu_item_type', 'post_type'),
(782, 133, '_menu_item_menu_item_parent', '0'),
(783, 133, '_menu_item_object_id', '126'),
(784, 133, '_menu_item_object', 'page'),
(785, 133, '_menu_item_target', ''),
(786, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(787, 133, '_menu_item_xfn', ''),
(788, 133, '_menu_item_url', ''),
(790, 134, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(791, 134, '_about_content', 'field_5b23860564321'),
(792, 134, 'image', '53'),
(793, 134, '_image', 'field_5b23860e64322'),
(794, 134, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(795, 134, '_get_in_touch', 'field_5b23a89431b85'),
(796, 135, 'about_content', '<h2>Talent Solutions</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(797, 135, '_about_content', 'field_5b23860564321'),
(798, 135, 'image', '53'),
(799, 135, '_image', 'field_5b23860e64322'),
(800, 135, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(801, 135, '_get_in_touch', 'field_5b23a89431b85'),
(802, 136, 'about_content', '<h2>HR Consulting</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!'),
(803, 136, '_about_content', 'field_5b23860564321'),
(804, 136, 'image', '53'),
(805, 136, '_image', 'field_5b23860e64322'),
(806, 136, 'get_in_touch', '<h2>We would love the opportunity to form a partnership with you</h2>\r\n<h4>And provide you with the most strategic talent solutions so that you can focus on running your business.</h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(807, 136, '_get_in_touch', 'field_5b23a89431b85'),
(821, 76, '_wp_trash_meta_status', 'publish'),
(822, 76, '_wp_trash_meta_time', '1533571474'),
(823, 76, '_wp_desired_post_slug', 'project-manager'),
(824, 75, '_wp_trash_meta_status', 'publish'),
(825, 75, '_wp_trash_meta_time', '1533571474'),
(826, 75, '_wp_desired_post_slug', 'ios-developer'),
(827, 74, '_wp_trash_meta_status', 'publish'),
(828, 74, '_wp_trash_meta_time', '1533571474'),
(829, 74, '_wp_desired_post_slug', 'senior-php-developer'),
(830, 73, '_wp_trash_meta_status', 'publish'),
(831, 73, '_wp_trash_meta_time', '1533571474'),
(832, 73, '_wp_desired_post_slug', 'php-developer'),
(833, 72, '_wp_trash_meta_status', 'publish'),
(834, 72, '_wp_trash_meta_time', '1533571474'),
(835, 72, '_wp_desired_post_slug', 'it-manager'),
(836, 47, '_wp_trash_meta_status', 'publish'),
(837, 47, '_wp_trash_meta_time', '1533571474'),
(838, 47, '_wp_desired_post_slug', 'reliability-engineer-2'),
(839, 43, '_wp_trash_meta_status', 'publish'),
(840, 43, '_wp_trash_meta_time', '1533571474'),
(841, 43, '_wp_desired_post_slug', 'quality-engineer-in-training'),
(842, 42, '_wp_trash_meta_status', 'publish'),
(843, 42, '_wp_trash_meta_time', '1533571474'),
(844, 42, '_wp_desired_post_slug', 'mechanical-engineer'),
(845, 40, '_wp_trash_meta_status', 'publish'),
(846, 40, '_wp_trash_meta_time', '1533571474'),
(847, 40, '_wp_desired_post_slug', 'inspector-quality-assurance'),
(848, 39, '_wp_trash_meta_status', 'publish'),
(849, 39, '_wp_trash_meta_time', '1533571474'),
(850, 39, '_wp_desired_post_slug', 'reliability-engineer'),
(851, 29, '_wp_trash_meta_status', 'publish'),
(852, 29, '_wp_trash_meta_time', '1533571474'),
(853, 29, '_wp_desired_post_slug', 'test'),
(854, 143, '_edit_last', '1'),
(855, 143, '_edit_lock', '1533571793:1'),
(856, 143, 'company_name', ''),
(857, 143, '_company_name', 'field_5b1e50535d58d'),
(858, 143, 'year_of_experience', ''),
(859, 143, '_year_of_experience', 'field_5b1e50615d58e'),
(860, 143, 'country', 'Stockton, CA'),
(861, 143, '_country', 'field_5b1e507e5d58f'),
(862, 143, 'industry', 'Metal Manufacturing'),
(863, 143, '_industry', 'field_5b20afe1fb1bf'),
(864, 143, 'title', 'Industrial Maintenance Tech'),
(865, 143, '_title', 'field_5b20afe7fb1c0'),
(866, 143, 'education', 'N/A'),
(867, 143, '_education', 'field_5b20aff1fb1c1'),
(868, 144, '_edit_last', '1'),
(869, 144, '_edit_lock', '1533571789:1'),
(870, 144, 'company_name', ''),
(871, 144, '_company_name', 'field_5b1e50535d58d'),
(872, 144, 'year_of_experience', ''),
(873, 144, '_year_of_experience', 'field_5b1e50615d58e'),
(874, 144, 'country', ''),
(875, 144, '_country', 'field_5b1e507e5d58f'),
(876, 144, 'industry', ''),
(877, 144, '_industry', 'field_5b20afe1fb1bf'),
(878, 144, 'title', ''),
(879, 144, '_title', 'field_5b20afe7fb1c0'),
(880, 144, 'education', ''),
(881, 144, '_education', 'field_5b20aff1fb1c1'),
(882, 55, 'about_content', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients. We do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!</h2>'),
(883, 55, '_about_content', 'field_5b23860564321'),
(884, 55, 'image', '53'),
(885, 55, '_image', 'field_5b23860e64322'),
(886, 55, 'get_in_touch', '<h4></h4>\r\n<a class=\"getintouch\" href=\"http://niyati.website/AgilityPersonnel/contact-us/\">Get in touch</a>'),
(887, 55, '_get_in_touch', 'field_5b23a89431b85');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-05 07:32:41', '2018-06-05 07:32:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-05 07:32:41', '2018-06-05 07:32:41', '', 0, 'http://niyati.website/AgilityPersonnel/?p=1', 0, 'post', '', 1),
(4, 1, '2018-06-05 08:43:09', '2018-06-05 08:43:09', '[email* email-9 class:email placeholder \"Enter your Email  \"]<span class=\"subscribe-button\">[submit \"&nbsp;\"]</span>\n1\nAgilityPersonnel \"Subscriber Form\"\n[your-name] <wordpress@server>\njohn@niyati.com\nEmail : [email-9]\n\n\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'subscribe', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-06-13 10:15:07', '2018-06-13 10:15:07', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-06-05 08:55:19', '2018-06-05 08:55:19', '', 'home banner', '', 'publish', 'closed', 'closed', '', 'acf_home-banner', '', '', '2018-06-05 09:20:32', '2018-06-05 09:20:32', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=acf&#038;p=6', 0, 'acf', '', 0),
(7, 1, '2018-06-05 08:59:03', '2018-06-05 08:59:03', '', 'banner1', '', 'publish', 'closed', 'closed', '', 'banner1', '', '', '2018-06-25 04:56:18', '2018-06-25 04:56:18', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=home_banner&#038;p=7', 0, 'home_banner', '', 0),
(9, 1, '2018-06-05 08:58:36', '2018-06-05 08:58:36', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-06-05 08:58:36', '2018-06-05 08:58:36', '', 7, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/banner.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-06-05 09:02:42', '2018-06-05 09:02:42', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-06-05 09:02:42', '2018-06-05 09:02:42', '', 0, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-06-05 09:11:25', '2018-06-05 09:11:25', '', 'banner2', '', 'publish', 'closed', 'closed', '', 'banner2', '', '', '2018-06-28 09:16:29', '2018-06-28 09:16:29', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=home_banner&#038;p=12', 0, 'home_banner', '', 0),
(13, 1, '2018-06-05 09:29:12', '2018-06-05 09:29:12', '', 'talent', '', 'publish', 'closed', 'closed', '', 'talent', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-06-05 09:29:12', '2018-06-05 09:29:12', '', 'companies', '', 'publish', 'closed', 'closed', '', 'companies', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=14', 5, 'nav_menu_item', '', 0),
(19, 1, '2018-06-05 09:54:44', '2018-06-05 09:54:44', '', 'Browse Jobs', '', 'publish', 'closed', 'closed', '', 'browse-jobs', '', '', '2018-06-27 06:49:50', '2018-06-27 06:49:50', '', 0, 'http://niyati.website/AgilityPersonnel/?p=19', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-06-05 12:13:19', '2018-06-05 12:13:19', '<h2>Quality Engineer Responsibilities:</h2>\r\n<ul>\r\n 	<li>Perform Internal Process Audits and develop quality plans and other process control procedures to ensure processes, work in progress and finished goods meet the specified quality standards</li>\r\n 	<li>Assist in developing, achieving, and maintaining KPIs</li>\r\n 	<li>Lead continuous improvement activities (Six Sigma, 5S, Kaizen) and root cause analysis/corrective actions</li>\r\n</ul>\r\n<h2>\r\nRequired Qualifications</h2>\r\n<ul>\r\n 	<li>B.S. degree in Engineering</li>\r\n 	<li>3+ years experience as Quality Engineer in semiconductor manufacturer</li>\r\n 	<li>ISO, Six Sigma, Lean, Kaizen, Lean experience - Certifications preferred</li>\r\n 	<li>ASQC Certified</li>\r\n</ul>', 'Quality Engineer', '', 'publish', 'closed', 'closed', '', 'quality-engineer', '', '', '2018-06-05 12:13:58', '2018-06-05 12:13:58', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=job_post&#038;p=26', 0, 'job_post', '', 0),
(29, 1, '2018-06-05 12:25:28', '2018-06-05 12:25:28', 'Responsible for ensureing of non-conformities material at slitting &amp; cut to length machine in processing stage to reduce process rejection.Ensure monitoring, measurement, and review of internal processes, especially those that affect the quality of the organization’s products. It applies to in-house as well as outsourced processes Responsible for accuracy and timely inspection/calibration of monitoring and measuring devicesWork with customers to develop product requirements as a standard or as per customer specificationswork with other relevant departments Oversee inspection (examination) of incoming materials, ensuring that they meet requirements Ensure timely closure of customer issuesReporting effect of customer issues to management Ensure actions on mitigation of customer issues\r\n\r\nExperience range 2.5 years in an Engineering / Steel industryQualification: B.E / B. Tech(Electrical) Should be able to work together in a team Work independently, and proactively Exc', 'Quality Engineer-in-Training', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=29', 0, 'jobs', '', 0),
(33, 1, '2018-06-06 06:11:01', '2018-06-06 06:11:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.', 'Home', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2018-06-25 09:00:22', '2018-06-25 09:00:22', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-06 06:11:01', '2018-06-06 06:11:01', '', 'homepage', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-06 06:11:01', '2018-06-06 06:11:01', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-06 06:12:01', '2018-06-06 06:12:01', '<h2>join our <span>talent network</span></h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.</p>', 'homepage', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-06 06:12:01', '2018-06-06 06:12:01', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-06-11 06:07:40', '2018-06-11 06:07:40', '', 'a-icon', '', 'inherit', 'open', 'closed', '', 'a-icon', '', '', '2018-06-11 06:07:40', '2018-06-11 06:07:40', '', 0, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/a-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-06-11 10:36:14', '2018-06-11 10:36:14', '', 'job', '', 'publish', 'closed', 'closed', '', 'acf_job', '', '', '2018-06-13 05:49:06', '2018-06-13 05:49:06', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=acf&#038;p=38', 0, 'acf', '', 0),
(39, 1, '2018-06-11 11:40:39', '2018-06-11 11:40:39', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Reliability Engineer', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'trash', 'open', 'closed', '', 'reliability-engineer__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=39', 0, 'jobs', '', 0),
(40, 1, '2018-06-11 11:41:20', '2018-06-11 11:41:20', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div>\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>', 'Inspector-Quality Assurance', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'trash', 'open', 'closed', '', 'inspector-quality-assurance__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=40', 0, 'jobs', '', 0),
(41, 1, '2018-06-12 05:28:28', '2018-06-12 05:28:28', '[email* email class:email-sub placeholder \"Email Address\"]\r\n[submit class:subscribe-button \"subscribe\"]\n1\nAgilityPersonnel \"Job Alert\"\n[your-name] <wordpress@server>\njohn@niyati.com\nEmail : [email]\n\n\n\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'job alerts', '', 'publish', 'closed', 'closed', '', 'job-alerts', '', '', '2018-06-13 10:12:12', '2018-06-13 10:12:12', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=41', 0, 'wpcf7_contact_form', '', 0),
(42, 1, '2018-06-12 09:39:58', '2018-06-12 09:39:58', 'Responsible for ensureing of non-conformities material at slitting &amp; cut to length machine in processing stage to reduce process rejection.Ensure monitoring, measurement, and review of internal processes, especially those that affect the quality of the organization’s products. It applies to in-house as well as outsourced processes Responsible for accuracy and timely inspection/calibration of monitoring and measuring devices Work with customers to develop product requirements as a standard or as per customer specifications work with other relevant departments Oversee inspection (examination) of incoming materials, ensuring that they meet requirements Ensure timely closure of customer issues Reporting effect of customer issues to management Ensure actions on mitigation of customer issues\r\n\r\nExperience range 2.5 years in an Engineering / Steel industry Qualification: B.E / B. Tech(Electrical) Should be able to work together in a team Work independently, and proactively Exc', 'Mechanical Engineer', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'trash', 'open', 'closed', '', 'mechanical-engineer__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=42', 0, 'jobs', '', 0),
(43, 1, '2018-06-12 09:40:31', '2018-06-12 09:40:31', 'Responsible for ensureing of non-conformities material at slitting &amp; cut to length machine in processing stage to reduce process rejection.Ensure monitoring, measurement, and review of internal processes, especially those that affect the quality of the organization’s products. It applies to in-house as well as outsourced processes Responsible for accuracy and timely inspection/calibration of monitoring and measuring devices Work with customers to develop product requirements as a standard or as per customer specifications work with other relevant departments Oversee inspection (examination) of incoming materials, ensuring that they meet requirements Ensure timely closure of customer issues Reporting effect of customer issues to management Ensure actions on mitigation of customer issues\r\n\r\nExperience range 2.5 years in an Engineering / Steel industry Qualification: B.E / B. Tech(Electrical) Should be able to work together in a team Work independently, and proactively Exc', 'Quality Engineer-in-Training', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'trash', 'open', 'closed', '', 'quality-engineer-in-training__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=43', 0, 'jobs', '', 0),
(44, 1, '2018-06-12 10:41:11', '2018-06-12 10:41:11', 'Responsible for ensureing of non-conformities material at slitting &amp; cut to length machine in processing stage to reduce process rejection.Ensure monitoring, measurement, and review of internal processes, especially those that affect the quality of the organization’s products. It applies to in-house as well as outsourced processes Responsible for accuracy and timely inspection/calibration of monitoring and measuring devicesWork with customers to develop product requirements as a standard or as per customer specificationswork with other relevant departments Oversee inspection (examination) of incoming materials, ensuring that they meet requirements Ensure timely closure of customer issuesReporting effect of customer issues to management Ensure actions on mitigation of customer issues\n\nExperience range 2.5 years in an Engineering / Steel industryQualification: B.E / B. Tech(Electrical) Should be able to work together in a team Work independently, and proactively Exc', 'Quality Engineer-in-Training', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a...', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2018-06-12 10:41:11', '2018-06-12 10:41:11', '', 29, 'http://niyati.website/AgilityPersonnel/29-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2018-06-13 07:24:45', '2018-06-13 07:24:45', '[text* candidatename class:name1 placeholder \"name*\"]\r\n[email* email class:email1 placeholder \"email*\"]\r\n[tel* phone class:phone1 placeholder \"phone*\"]\r\n[text* city class:city1 placeholder \"city*\"]\r\n[text* state class:state1 placeholder \"state*\"]\r\n<span class=\"attach\">Attach Resume*</span>[file* resume class:resume]\r\n[submit]\n1\nAgilityPersonnel \"applied for [jobtitle] \"\n<wordpress@server>\njohn@niyati.com\nName : [candidatename]\r\nEmail : [email]\r\nPhone : [phone]\r\nCity : [city]\r\nState : [state]\n\n[resume]\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'apply form', '', 'publish', 'closed', 'closed', '', 'apply-form', '', '', '2018-06-27 06:38:13', '2018-06-27 06:38:13', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=46', 0, 'wpcf7_contact_form', '', 0),
(47, 1, '2018-06-13 10:29:46', '2018-06-13 10:29:46', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div>\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>', 'Reliability Engineer', 'Represent development function in multi-discipline agile/SCRUM teams. Thoroughly understand the new product features being implemented in Sprints a…', 'trash', 'open', 'closed', '', 'reliability-engineer-2__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=47', 0, 'jobs', '', 0),
(52, 1, '2018-06-15 08:53:45', '2018-06-15 08:53:45', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-06-28 06:30:15', '2018-06-28 06:30:15', '', 61, 'http://niyati.website/AgilityPersonnel/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-06-15 08:53:37', '2018-06-15 08:53:37', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2018-06-15 08:53:37', '2018-06-15 08:53:37', '', 52, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/about.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-06-15 08:53:45', '2018-06-15 08:53:45', '<h2>We have more than 15 years of combined recruiting experience providing strategic talent solutions to our clients.</h2>\r\nWe do this by leveraging our large candidate pool, our years of experience staffing both internally and for clients, and by conducting candidate searches tailored to each client’s unique needs. With our intimate approach you will connect directly with a recruiter who will learn about your company and identify what sort of candidate will fit best with your company culture. No more wasted time, just quality candidates and fast!', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-06-15 08:53:45', '2018-06-15 08:53:45', '', 52, 'http://niyati.website/AgilityPersonnel/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-06 16:14:36', '2018-08-06 16:14:36', '<h2>Strategic Talent Solutions</h2>', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2018-08-06 16:14:36', '2018-08-06 16:14:36', '', 52, 'http://niyati.website/AgilityPersonnel/52-autosave-v1/', 0, 'revision', '', 0),
(56, 1, '2018-06-15 08:57:27', '2018-06-15 08:57:27', '', 'about-banner', '', 'inherit', 'open', 'closed', '', 'about-banner', '', '', '2018-06-15 08:57:27', '2018-06-15 08:57:27', '', 52, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/about-banner.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2018-06-15 08:57:34', '2018-06-15 08:57:34', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-06-15 08:57:34', '2018-06-15 08:57:34', '', 52, 'http://niyati.website/AgilityPersonnel/52-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-06-15 09:26:11', '2018-06-15 09:26:11', '', 'about us', '', 'publish', 'closed', 'closed', '', 'acf_about-us', '', '', '2018-06-15 11:53:29', '2018-06-15 11:53:29', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=acf&#038;p=58', 0, 'acf', '', 0),
(59, 1, '2018-06-15 09:27:26', '2018-06-15 09:27:26', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-06-15 09:27:26', '2018-06-15 09:27:26', '', 52, 'http://niyati.website/AgilityPersonnel/52-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-06-15 11:54:08', '2018-06-15 11:54:08', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-06-15 11:54:08', '2018-06-15 11:54:08', '', 52, 'http://niyati.website/AgilityPersonnel/52-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-06-15 11:56:36', '2018-06-15 11:56:36', '', 'what we do', '', 'publish', 'closed', 'closed', '', 'what-we-do', '', '', '2018-06-15 11:56:36', '2018-06-15 11:56:36', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-06-15 11:56:36', '2018-06-15 11:56:36', '', 'what we do', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-06-15 11:56:36', '2018-06-15 11:56:36', '', 61, 'http://niyati.website/AgilityPersonnel/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-06-15 12:01:18', '2018-06-15 12:01:18', '<h2>join our talent network</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.', 'home', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-15 12:01:18', '2018-06-15 12:01:18', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-06-15 12:01:26', '2018-06-15 12:01:26', '<h2>join our talent network</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.', 'Home', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-15 12:01:26', '2018-06-15 12:01:26', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-06-18 05:54:57', '2018-06-18 05:54:57', '<h2>Reach out to us, we’d love to hear from you.</h2>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-06-25 09:09:26', '2018-06-25 09:09:26', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=65', 0, 'page', '', 0),
(67, 1, '2018-06-18 05:54:57', '2018-06-18 05:54:57', 'Reach out to us, we’d love to hear from you.', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-06-18 05:54:57', '2018-06-18 05:54:57', '', 65, 'http://niyati.website/AgilityPersonnel/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-06-18 05:57:05', '2018-06-18 05:57:05', '<h2>Reach out to us, we’d love to hear from you.</h2>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-06-18 05:57:05', '2018-06-18 05:57:05', '', 65, 'http://niyati.website/AgilityPersonnel/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-06-18 08:55:24', '2018-06-18 08:55:24', '[text* company class:contactcompany placeholder \"Company Name*\"]\r\n[email* email class:contactemail placeholder \"Email Address*\"]\r\n[tel* phone class:contactphone placeholder \"Phone Number*\"]\r\n[text* city class:contactcity placeholder \"City*\"]\r\n[text* state class:contactcity placeholder \"State*\"]\r\n[textarea* comments 1x6 class:contactcomments placeholder \"Your Requirement\"]\r\n<span class=\"mandatory\">* fields are mandatory</span>\r\n[submit \"Submit\"]\n1\nAgilityPersonnel \"contact form\"\n<wordpress@server>\njohn@niyati.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\n\n\n\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-27 09:20:36', '2018-06-27 09:20:36', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=69', 0, 'wpcf7_contact_form', '', 0),
(71, 1, '2018-06-18 09:54:44', '2018-06-18 09:54:44', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=71', 12, 'nav_menu_item', '', 0),
(72, 1, '2018-06-19 11:26:54', '2018-06-19 11:26:54', '1. To understand and contribute towards attainment of institutes vision and mission.\r\n\r\n2. To follow all rules and regulations as laid down by the institute which include working time in the institute.\r\n\r\n3. To work sincerely to execute all duties towards academics which include planning and conduct of lectures, preparation for the course assigned, conduct of internal exams and to maintain the Course file and personal file in appropriate format.\r\n\r\n4. To use innovative teaching aids and adopt innovative teaching learning methodologies.\r\n\r\n5. To counsel students and conduct extra lectures/ revision lectures for students requiring help.\r\n\r\n6. To organize/ coordinate/ attend various seminars/ workshops/training programs.\r\n\r\n7. To participate proactively in any research and development activities conducted in the department.\r\n\r\n8. To perform other academic/ administrative duties assigned by Head of the Department. PHP', 'IT Manager', '1. To understand and contribute towards attainment of institutes vision and mission.\r\n\r\n2. To follow all rules and regulations as laid down by the institute which include working time in the institute.\r\n\r\n3. To work sincerely to execute all duties towards academics which include planning and conduct of lectures, preparation for the course assigned, conduct of internal exams and to maintain the Course file and personal file in appropriate format.\r\n', 'trash', 'open', 'closed', '', 'it-manager__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=72', 0, 'jobs', '', 0),
(73, 1, '2018-06-20 08:38:27', '2018-06-20 08:38:27', '&nbsp;\r\n<ul>\r\n 	<li>4+ years of hand on experience in <span class=\"hlite\">PHP</span>, Javascript, JQuery, YUI, MySQL, AJAX, CodeIgniter framework</li>\r\n 	<li>Very Strong experience in creating Responsive Designs</li>\r\n 	<li>Good knowledge of relational databases and experience in third party integration from <span class=\"hlite\">PHP</span> using Rest based Web Service</li>\r\n 	<li>Exposure in google maps integration, payment gateway integrations, common third-party APIs like facebook, twitter</li>\r\n 	<li>Strong in OOPS and web concepts, javascript debugging using various tools,</li>\r\n 	<li>Experience in using SVN, GitHub and defect tracking tools.</li>\r\n</ul>\r\n&nbsp;', 'PHP Developer', '', 'trash', 'open', 'closed', '', 'php-developer__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=73', 0, 'jobs', '', 0),
(74, 1, '2018-06-20 08:39:39', '2018-06-20 08:39:39', '1)Must have Experience in PHP\r\n2)Must have Experience at least in any one framework i.e. Code Igniter, Laravel, Yii, Wordpress ,Cake PHP (Mandatory)\r\n3)Should have experience in SQL , OOPS Concept\r\n4)Should have experience in HTML , CSS , jquery', 'Senior PHP Developer', '', 'trash', 'open', 'closed', '', 'senior-php-developer__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=74', 0, 'jobs', '', 0),
(75, 1, '2018-06-20 08:58:46', '2018-06-20 08:58:46', '<ul>\r\n 	<li>Basic syntax</li>\r\n 	<li>Optionals</li>\r\n 	<li>Control Flow (If and Switch Statements)</li>\r\n 	<li>Classes, inheritance &amp; initialization</li>\r\n 	<li>Error handling</li>\r\n 	<li>Objective-C Interoperability</li>\r\n</ul>', 'IOS Developer', '', 'trash', 'open', 'closed', '', 'ios-developer__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=75', 0, 'jobs', '', 0),
(76, 1, '2018-06-20 08:59:27', '2018-06-20 08:59:27', '<ul>\r\n 	<li>Basic syntax</li>\r\n 	<li>Optionals</li>\r\n 	<li>Control Flow (If and Switch Statements)</li>\r\n 	<li>Classes, inheritance &amp; initialization</li>\r\n 	<li>Error handling</li>\r\n 	<li>Objective-C Interoperability</li>\r\n</ul>', 'Project Manager', '', 'trash', 'open', 'closed', '', 'project-manager__trashed', '', '', '2018-08-06 16:04:34', '2018-08-06 16:04:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=76', 0, 'jobs', '', 0),
(78, 1, '2018-06-22 09:26:59', '2018-06-22 09:26:59', '<h2>join our <span class=\"red\">talent network</span></h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.', 'Home', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-22 09:26:59', '2018-06-22 09:26:59', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-06-25 05:55:19', '2018-06-25 05:55:19', '', 'what we do', '', 'publish', 'closed', 'closed', '', 'what-we-do-2', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 61, 'http://niyati.website/AgilityPersonnel/?p=79', 8, 'nav_menu_item', '', 0),
(82, 1, '2018-06-25 05:59:50', '2018-06-25 05:59:50', '', 'Browse Jobs', '', 'publish', 'closed', 'closed', '', 'browse-jobs-2', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=82', 3, 'nav_menu_item', '', 0),
(85, 1, '2018-06-25 08:56:49', '2018-06-25 08:56:49', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2-2', '', '', '2018-06-25 08:56:49', '2018-06-25 08:56:49', '', 12, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/banner2.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2018-06-25 09:00:22', '2018-06-25 09:00:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor hendrerit faucibus. Suspendisse dapibus posuere felis.', 'Home', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-25 09:00:22', '2018-06-25 09:00:22', '', 33, 'http://niyati.website/AgilityPersonnel/33-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-06-25 09:09:20', '2018-06-25 09:09:20', '', 'contact', '', 'inherit', 'open', 'closed', '', 'contact-2', '', '', '2018-06-25 09:09:20', '2018-06-25 09:09:20', '', 65, 'http://niyati.website/AgilityPersonnel/wp-content/uploads/2018/06/contact.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-06-27 04:53:45', '2018-06-27 04:53:45', '<h3>Submit Resume</h3>\r\n<h4>If you on the looking for a promising career, we may have just the right openings!</h4>\r\nPlease submit your contact details and attach your resume and we will get in touch with you when a suitable opening comes in.', 'Submit Resume', '', 'publish', 'closed', 'closed', '', 'submit-resume', '', '', '2018-06-28 06:20:43', '2018-06-28 06:20:43', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=90', 0, 'page', '', 0),
(91, 1, '2018-06-27 04:53:45', '2018-06-27 04:53:45', '', 'Submit Resume', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-06-27 04:53:45', '2018-06-27 04:53:45', '', 90, 'http://niyati.website/AgilityPersonnel/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-06-27 05:01:47', '2018-06-27 05:01:47', '<div class=\"col-md-6 pad-left\">[text* jobtitle class:job1 placeholder \"job title*\"]</div><div class=\"col-md-6 pad-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"attach\">Attach Resume*</span>[file* resume class:resume]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">All fields are mandatory</span>[submit]</div>\n1\nSubmit resume\n[your-name] <wordpress@server>\njohn@niyati.com\njob title : [jobtitle]\r\nName : [candidatename]\r\nEmail : [email]\r\nPhone : [phone]\r\nCity : [city]\r\nState : [state]\n\n[resume]\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'submit resume', '', 'publish', 'closed', 'closed', '', 'submit-resume', '', '', '2018-06-27 06:37:59', '2018-06-27 06:37:59', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=92', 0, 'wpcf7_contact_form', '', 0),
(93, 1, '2018-06-27 05:05:53', '2018-06-27 05:05:53', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=93', 2, 'nav_menu_item', '', 0),
(94, 1, '2018-06-27 05:11:54', '2018-06-27 05:11:54', '<div class=\"col-md-12 padleft-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\">[textarea textarea 5x5 class:message1 placeholder \"Comments\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit]</div>\n1\nAgilityPersonnel \"talent recruiter form\"\n<wordpress@server>\njohn@niyati.com\nname : [candidatename]\r\nEmail : [email]\r\nPhone : [phone]\r\nCity : [city]\r\nState : [state]\r\nComments : [textarea]\n\n\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Recruiter talent', '', 'publish', 'closed', 'closed', '', 'recruiter-talent', '', '', '2018-06-27 06:30:06', '2018-06-27 06:30:06', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=94', 0, 'wpcf7_contact_form', '', 0),
(95, 1, '2018-06-27 05:13:37', '2018-06-27 05:13:37', '<h3>Contact a Recruiter</h3>', 'Contact a Recruiter', '', 'publish', 'closed', 'closed', '', 'contact-a-recruiter', '', '', '2018-06-28 06:21:25', '2018-06-28 06:21:25', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=95', 0, 'page', '', 0),
(96, 1, '2018-06-27 05:13:37', '2018-06-27 05:13:37', '', 'Contact a Recruiter', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-27 05:13:37', '2018-06-27 05:13:37', '', 95, 'http://niyati.website/AgilityPersonnel/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-06-27 05:14:06', '2018-06-27 05:14:06', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=97', 4, 'nav_menu_item', '', 0),
(98, 1, '2018-06-27 06:09:15', '2018-06-27 06:09:15', '<div class=\"col-md-12 padleft-right\">[text* company class:company1 placeholder \"Company Name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"Email Address*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"Phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"City*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"State*\"]</div><div class=\"col-md-12 padleft-right\">[textarea* comments 4x4 class:comments1 placeholder \"Your Requirement\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"attach\">Attach Resume*</span>[file* resume class:resume]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit \"Submit\"]</div>\n1\nAgilityPersonnel \"Talent Finder\"\n<wordpress@server>\njohn@niyati.com\nCompany : [company]\r\nEmail : [email]\r\nPhone : [phone]\r\nCity : [city]\r\nState : [state]\r\nComments : [comments]\n\n[resume]\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'talent finder', '', 'publish', 'closed', 'closed', '', 'talent-finder', '', '', '2018-06-27 06:41:03', '2018-06-27 06:41:03', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=98', 0, 'wpcf7_contact_form', '', 0),
(99, 1, '2018-06-27 06:16:25', '2018-06-27 06:16:25', '<h3>Talent Finder</h3>\r\n<h4>If you are looking for well-qualified and experienced professionals for your recruitment needs</h4>\r\nplease enter your details or a job description in the form below.', 'Request Talent', '', 'publish', 'closed', 'closed', '', 'request-talent', '', '', '2018-06-28 06:15:44', '2018-06-28 06:15:44', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=99', 0, 'page', '', 0),
(100, 1, '2018-06-27 06:16:25', '2018-06-27 06:16:25', '', 'Request Talent', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-06-27 06:16:25', '2018-06-27 06:16:25', '', 99, 'http://niyati.website/AgilityPersonnel/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-06-27 06:16:43', '2018-06-27 06:16:43', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=101', 6, 'nav_menu_item', '', 0),
(102, 1, '2018-06-27 06:32:23', '2018-06-27 06:32:23', '<div class=\"col-md-12 padleft-right\">[text* candidatename class:name1 placeholder \"name*\"]</div><div class=\"col-md-6 pad-left\">[email* email class:email1 placeholder \"email*\"]</div><div class=\"col-md-6 pad-right\">[tel* phone class:phone1 placeholder \"phone*\"]</div><div class=\"col-md-6 pad-left\">[text* city class:city1 placeholder \"city*\"]</div><div class=\"col-md-6 pad-right\">[text* state class:state1 placeholder \"state*\"]</div><div class=\"col-md-12 padleft-right\">[textarea textarea 5x5 class:message1 placeholder \"Comments\"]</div><div class=\"col-md-12 padleft-right\"><span class=\"mandatory\">* fields are mandatory</span>[submit]</div>\n1\nAgilityPersonnel \"company recruiter form\"\n[your-name] <wordpress@server>\njohn@niyati.com\nname : [candidatename]\r\nEmail : [email]\r\nPhone : [phone]\r\nCity : [city]\r\nState : [state]\r\nComments : [textarea]\n\n\n1\n\n\nAgilityPersonnel \"[your-subject]\"\nAgilityPersonnel <wordpress@server>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AgilityPersonnel (http://niyati.website/AgilityPersonnel)\nReply-To: john@niyati.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Recruiter company', '', 'publish', 'closed', 'closed', '', 'recruiter-company', '', '', '2018-06-27 06:32:34', '2018-06-27 06:32:34', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=wpcf7_contact_form&#038;p=102', 0, 'wpcf7_contact_form', '', 0),
(103, 1, '2018-06-27 06:33:59', '2018-06-27 06:33:59', '<h3>Contact an HR Consultant</h3>', 'Request HR Consult', '', 'publish', 'closed', 'closed', '', 'request-hr-consult', '', '', '2018-06-28 06:35:27', '2018-06-28 06:35:27', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=103', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2018-06-27 06:33:59', '2018-06-27 06:33:59', '', 'Contact a Recruiter', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-06-27 06:33:59', '2018-06-27 06:33:59', '', 103, 'http://niyati.website/AgilityPersonnel/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-06-27 06:34:29', '2018-06-27 06:34:29', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=105', 7, 'nav_menu_item', '', 0),
(106, 1, '2018-06-27 06:49:07', '2018-06-27 06:49:07', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2018-06-27 06:49:07', '2018-06-27 06:49:07', '', 0, 'http://niyati.website/AgilityPersonnel/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2018-06-27 06:49:06', '2018-06-27 06:49:06', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2018-06-27 06:49:06', '2018-06-27 06:49:06', '', 0, 'http://niyati.website/AgilityPersonnel/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2018-06-27 06:49:50', '2018-06-27 06:49:50', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2018-06-27 06:49:50', '2018-06-27 06:49:50', '', 0, 'http://niyati.website/AgilityPersonnel/?p=108', 3, 'nav_menu_item', '', 0),
(109, 1, '2018-06-27 06:49:50', '2018-06-27 06:49:50', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2018-06-27 06:49:50', '2018-06-27 06:49:50', '', 0, 'http://niyati.website/AgilityPersonnel/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2018-06-27 06:50:16', '2018-06-27 06:50:16', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2018-06-28 06:52:55', '2018-06-28 06:52:55', '', 0, 'http://niyati.website/AgilityPersonnel/?p=110', 4, 'nav_menu_item', '', 0),
(111, 1, '2018-06-27 06:50:16', '2018-06-27 06:50:16', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2018-06-28 06:52:54', '2018-06-28 06:52:54', '', 61, 'http://niyati.website/AgilityPersonnel/?p=111', 1, 'nav_menu_item', '', 0),
(115, 1, '2018-06-28 05:26:08', '2018-06-28 05:26:08', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'New Post Published - {{POSTTITLE}}', '', 'publish', 'closed', 'closed', '', 'new-post-published-posttitle', '', '', '2018-06-28 05:26:08', '2018-06-28 05:26:08', '', 0, 'http://niyati.website/AgilityPersonnel/new-post-published-posttitle/', 0, 'es_template', '', 0),
(116, 1, '2018-06-28 05:26:09', '2018-06-28 05:26:09', '<strong style=\"color: #990000\">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style=\"color: #990000\">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Welcome To Email Subscribers', '', 'publish', 'closed', 'closed', '', 'welcome-to-email-subscribers', '', '', '2018-06-28 05:26:09', '2018-06-28 05:26:09', '', 0, 'http://niyati.website/AgilityPersonnel/welcome-to-email-subscribers/', 0, 'es_template', '', 0),
(119, 1, '2018-06-28 06:13:56', '2018-06-28 06:13:56', '<h3>Contact an HR Consultant</h3>', 'Request HR Consult', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-06-28 06:13:56', '2018-06-28 06:13:56', '', 103, 'http://niyati.website/AgilityPersonnel/103-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-06-28 06:15:44', '2018-06-28 06:15:44', '<h3>Talent Finder</h3>\r\n<h4>If you are looking for well-qualified and experienced professionals for your recruitment needs</h4>\r\nplease enter your details or a job description in the form below.', 'Request Talent', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-06-28 06:15:44', '2018-06-28 06:15:44', '', 99, 'http://niyati.website/AgilityPersonnel/99-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-28 06:20:43', '2018-06-28 06:20:43', '<h3>Submit Resume</h3>\r\n<h4>If you on the looking for a promising career, we may have just the right openings!</h4>\r\nPlease submit your contact details and attach your resume and we will get in touch with you when a suitable opening comes in.', 'Submit Resume', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-06-28 06:20:43', '2018-06-28 06:20:43', '', 90, 'http://niyati.website/AgilityPersonnel/90-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-06-28 06:21:25', '2018-06-28 06:21:25', '<h3>Contact a Recruiter</h3>', 'Contact a Recruiter', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-06-28 06:21:25', '2018-06-28 06:21:25', '', 95, 'http://niyati.website/AgilityPersonnel/95-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-06-28 06:27:21', '2018-06-28 06:27:21', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 61, 'http://niyati.website/AgilityPersonnel/?p=123', 9, 'nav_menu_item', '', 0),
(125, 1, '2018-06-28 06:30:15', '2018-06-28 06:30:15', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-06-28 06:30:15', '2018-06-28 06:30:15', '', 52, 'http://niyati.website/AgilityPersonnel/52-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-06-28 06:31:47', '2018-06-28 06:31:47', '<h2>Talent Solutions</h2>', 'Talent Solutions', '', 'publish', 'closed', 'closed', '', 'talent-solutions', '', '', '2018-06-28 07:17:13', '2018-06-28 07:17:13', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=126', 0, 'page', '', 0),
(127, 1, '2018-06-28 06:31:47', '2018-06-28 06:31:47', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'Talent Solutions', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-06-28 06:31:47', '2018-06-28 06:31:47', '', 126, 'http://niyati.website/AgilityPersonnel/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-06-28 06:32:10', '2018-06-28 06:32:10', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=128', 10, 'nav_menu_item', '', 0),
(129, 1, '2018-06-28 06:33:02', '2018-06-28 06:33:02', '<h2>HR Consulting</h2>', 'HR Consulting', '', 'publish', 'closed', 'closed', '', 'hr-consulting', '', '', '2018-06-28 07:17:42', '2018-06-28 07:17:42', '', 0, 'http://niyati.website/AgilityPersonnel/?page_id=129', 0, 'page', '', 0),
(130, 1, '2018-06-28 06:33:02', '2018-06-28 06:33:02', '<h2>We’re Helping People Find Great Jobs, and Helping Employers Build Great Companies</h2>', 'HR Consulting', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-06-28 06:33:02', '2018-06-28 06:33:02', '', 129, 'http://niyati.website/AgilityPersonnel/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-06-28 06:33:41', '2018-06-28 06:33:41', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-06-28 06:58:26', '2018-06-28 06:58:26', '', 0, 'http://niyati.website/AgilityPersonnel/?p=131', 11, 'nav_menu_item', '', 0),
(132, 1, '2018-06-28 06:52:55', '2018-06-28 06:52:55', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-06-28 06:52:55', '2018-06-28 06:52:55', '', 0, 'http://niyati.website/AgilityPersonnel/?p=132', 3, 'nav_menu_item', '', 0),
(133, 1, '2018-06-28 06:52:54', '2018-06-28 06:52:54', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-06-28 06:52:54', '2018-06-28 06:52:54', '', 0, 'http://niyati.website/AgilityPersonnel/?p=133', 2, 'nav_menu_item', '', 0),
(134, 1, '2018-06-28 07:16:36', '2018-06-28 07:16:36', '<h2>Talent Solutions</h2>', 'Talent Solutions', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-06-28 07:16:36', '2018-06-28 07:16:36', '', 126, 'http://niyati.website/AgilityPersonnel/126-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-06-28 07:17:13', '2018-06-28 07:17:13', '<h2>Talent Solutions</h2>', 'Talent Solutions', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-06-28 07:17:13', '2018-06-28 07:17:13', '', 126, 'http://niyati.website/AgilityPersonnel/126-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-06-28 07:17:42', '2018-06-28 07:17:42', '<h2>HR Consulting</h2>', 'HR Consulting', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-06-28 07:17:42', '2018-06-28 07:17:42', '', 129, 'http://niyati.website/AgilityPersonnel/129-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-08-06 15:54:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-06 15:54:18', '0000-00-00 00:00:00', '', 0, 'http://niyati.website/AgilityPersonnel/?p=142', 0, 'post', '', 0),
(143, 1, '2018-08-06 16:08:25', '2018-08-06 16:08:25', 'We are currently seeking an Industrial Maintenance Technician!\r\n\r\n<strong>Responsibilities:</strong>\r\n<ul>\r\n 	<li>Install and repair electrical equipment and fixtures</li>\r\n 	<li>Troubleshoot motor and control systems</li>\r\n 	<li>Perform routine maintenance on electrical wiring and systems</li>\r\n 	<li>Perform mechanical troubleshooting and repairs</li>\r\n 	<li>Adhere to all quality and safety codes</li>\r\n</ul>\r\n​​<strong>Qualifications:</strong>\r\n<ul>\r\n 	<li>Previous experience in industrial maintenance and electricity required</li>\r\n 	<li>Familiarity with electrical schematics, blueprints, and manuals</li>\r\n 	<li>Familiarity with electrical equipment and hand tools</li>\r\n 	<li>Strong problem solving and critical thinking skills</li>\r\n</ul>', 'Maintenance Technician', '', 'publish', 'open', 'closed', '', 'maintenance-technician', '', '', '2018-08-06 16:09:52', '2018-08-06 16:09:52', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=143', 0, 'jobs', '', 0),
(144, 1, '2018-08-06 16:12:07', '2018-08-06 16:12:07', 'We are currently seeking an Industrial Maintenance Technician!\r\n\r\n<strong>Responsibilities:</strong>\r\n<ul>\r\n 	<li>Install and repair electrical equipment and fixtures</li>\r\n 	<li>Troubleshoot motor and control systems</li>\r\n 	<li>Perform routine maintenance on electrical wiring and systems</li>\r\n 	<li>Perform mechanical troubleshooting and repairs</li>\r\n 	<li>Adhere to all quality and safety codes</li>\r\n</ul>\r\n​​<strong>Qualifications:</strong>\r\n<ul>\r\n 	<li>Previous experience in industrial maintenance and electricity required</li>\r\n 	<li>Familiarity with electrical schematics, blueprints, and manuals</li>\r\n 	<li>Familiarity with electrical equipment and hand tools</li>\r\n 	<li>Strong problem solving and critical thinking skills</li>\r\n</ul>', 'Production Manager', '', 'publish', 'open', 'closed', '', 'production-manager', '', '', '2018-08-06 16:12:07', '2018-08-06 16:12:07', '', 0, 'http://niyati.website/AgilityPersonnel/?post_type=jobs&#038;p=144', 0, 'jobs', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'talent', 'talent', 0),
(4, 'Companies', 'companies', 0),
(5, 'What We Do', 'what-we-do', 0),
(6, 'Administrative', 'administrative', 0),
(7, 'location', 'location', 0),
(8, 'Alabama', 'alabama', 0),
(9, 'location', 'location', 0),
(10, 'Alabama', 'alabama', 0),
(11, 'Alaska', 'alaska', 0),
(12, 'Arizona', 'arizona', 0),
(13, 'featured job', 'featured-job', 0),
(14, 'Jobs in Administrative', 'administrative', 0),
(15, 'Web Developer Jobs', 'web-developer', 0),
(16, 'Mechanical Engineer Jobs', 'mechanical-engineer', 0),
(18, 'Human Resources Jobs', 'human-resources', 0),
(19, 'Consultant Jobs', 'consultant', 0),
(20, 'Civil Engineer Jobs', 'civil-engineer', 0),
(21, 'Call Center Jobs', 'call-center', 0),
(28, 'Marketing Job', 'marketing', 0),
(30, 'Arkansas', 'arkansas', 0),
(31, 'California', 'california', 0),
(32, 'Colorado', 'colorado', 0),
(33, 'Connecticut', 'connecticut', 0),
(34, 'Delaware', 'delaware', 0),
(35, 'Iowa', 'iowa', 0),
(36, 'Kansas', 'kansas', 0),
(37, 'Kentucky', 'kentucky', 0),
(38, 'Louisiana', 'louisiana', 0),
(39, 'Maine', 'maine', 0),
(40, 'Maryland', 'maryland', 0),
(41, 'Massachusetts', 'massachusetts', 0),
(42, 'Michigan', 'michigan', 0),
(43, 'Digital &amp; Website Marketing Manager', 'digital-website-marketing-manager', 0),
(44, 'Website Editor', 'website-editor', 0),
(45, 'Search Engine Optimisation', 'search-engine-optimisation', 0),
(46, 'Senior Web Development Coordinator', 'senior-web-development-coordinator', 0),
(47, 'Accreditation Scheme Coordinator', 'accreditation-scheme-coordinator', 0),
(48, 'Digital Marketing Executive', 'digital-marketing-executive', 0),
(49, 'Part-Time Night Nurse', 'part-time-night-nurse', 0),
(50, 'Staff Nurse', 'staff-nurse', 0),
(51, 'Jobs in Administrative', 'administrative', 0),
(52, 'featured job', 'featured-job', 0),
(53, 'featured jobs', 'featured-jobs', 0),
(71, 'Industrial Maintenance', 'industrial-maintenance', 0),
(72, 'Production Management', 'production-management', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(19, 3, 0),
(26, 6, 0),
(26, 8, 0),
(29, 6, 0),
(29, 8, 0),
(29, 11, 0),
(29, 14, 0),
(29, 51, 0),
(32, 10, 0),
(32, 14, 0),
(71, 2, 0),
(79, 2, 0),
(82, 2, 0),
(93, 2, 0),
(97, 2, 0),
(101, 2, 0),
(105, 2, 0),
(106, 4, 0),
(107, 4, 0),
(108, 3, 0),
(109, 3, 0),
(110, 5, 0),
(111, 5, 0),
(123, 2, 0),
(128, 2, 0),
(131, 2, 0),
(132, 5, 0),
(133, 5, 0),
(143, 53, 0),
(143, 71, 0),
(144, 53, 0),
(144, 72, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 7, 1),
(9, 9, 'jobs_category', '', 0, 0),
(10, 10, 'jobs_category', '', 9, 1),
(11, 11, 'jobs_category', '', 9, 1),
(12, 12, 'jobs_category', '', 9, 0),
(13, 13, 'jobs_category', '', 0, 0),
(14, 14, 'jobs_category', '', 13, 2),
(15, 15, 'jobs_category', '', 13, 0),
(16, 16, 'jobs_category', '', 13, 0),
(18, 18, 'jobs_category', '', 13, 0),
(19, 19, 'jobs_category', '', 13, 0),
(20, 20, 'jobs_category', '', 13, 0),
(21, 21, 'jobs_category', '', 13, 0),
(28, 28, 'jobs_category', '', 13, 0),
(30, 30, 'jobs_category', '', 9, 0),
(31, 31, 'jobs_category', '', 9, 0),
(32, 32, 'jobs_category', '', 9, 0),
(33, 33, 'jobs_category', '', 9, 0),
(34, 34, 'jobs_category', '', 9, 0),
(35, 35, 'jobs_category', '', 9, 0),
(36, 36, 'jobs_category', '', 9, 0),
(37, 37, 'jobs_category', '', 9, 0),
(38, 38, 'jobs_category', '', 9, 0),
(39, 39, 'jobs_category', '', 9, 0),
(40, 40, 'jobs_category', '', 9, 0),
(41, 41, 'jobs_category', '', 9, 0),
(42, 42, 'jobs_category', '', 9, 0),
(43, 43, 'jobs_category', '', 13, 0),
(44, 44, 'jobs_category', '', 13, 0),
(45, 45, 'jobs_category', '', 13, 0),
(46, 46, 'jobs_category', '', 13, 0),
(47, 47, 'jobs_category', '', 13, 0),
(48, 48, 'jobs_category', '', 13, 0),
(49, 49, 'jobs_category', '', 13, 0),
(50, 50, 'jobs_category', '', 13, 0),
(51, 51, 'job search', '', 52, 1),
(52, 52, 'job search', '', 0, 0),
(53, 53, 'job_search', '', 0, 2),
(71, 71, 'job_search', '', 53, 1),
(72, 72, 'job_search', '', 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'agility'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'wp496_privacy,addtoany_settings_pointer,theme_editor_notice,plugin_editor_notice'),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"5ab1cd0cce357ecd575678209bb88dc99484050386bb848de608ed0ccbe42162\";a:4:{s:10:\"expiration\";i:1534780456;s:2:\"ip\";s:13:\"98.191.205.94\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533570856;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '142'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"103.53.40.0\";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1530174305'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:\"add-post-type-home_banner\";i:1;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(24, 1, 'wpp_review_notice', '2018-06-22');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'agility', '$P$Bfem184gkupEj3mPptFTvmTja7FuT70', 'agility', 'john@niyati.com', '', '2018-06-05 07:32:41', '', 0, 'agility');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfbadleechers`
--

CREATE TABLE `wp_wfbadleechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockedcommentlog`
--

CREATE TABLE `wp_wfblockedcommentlog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'gsb'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT '0',
  `blockedHits` int(10) UNSIGNED DEFAULT '0',
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `parameters` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3139322e3136382e312e3831, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminUserList', 0x623a303b, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', 0x6a6f686e406e69796174692e636f6d, 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_critical', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_warnings', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', '', 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('betaThreatDefenseFeed', 0x30, 'yes'),
('blockedTime', 0x333030, 'yes'),
('blockFakeBots', 0x30, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x35623263383237633638666633, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyRecommendation', '', 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableCookies', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x31, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('encKey', 0x37343930326461636532636463376236, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('hasKeyConflict', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastEmailHash', 0x313532393634333736333a3935653637366236353234643261626337663536666135663834646461613761, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x31, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('maxScanHits', 0x44495341424c4544, 'yes'),
('maxScanHits_action', 0x7468726f74746c65, 'yes'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x6c6963656e7365, 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x30, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_noAnonMemberComments', 0x31, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_dns', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x2d31, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b7d, 'no'),
('supportHash', '', 'no'),
('timeoffset_wf_updated', 0x30, 'yes'),
('totalAlertsSent', 0x31, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', 0x30, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('whitelisted', '', 'yes'),
('wp_home_url', 0x687474703a2f2f7365727665722f4a6f686e2f4167696c697479506572736f6e6e656c2f77656273697465, 'yes'),
('wp_site_url', 0x687474703a2f2f7365727665722f4a6f686e2f4167696c697479506572736f6e6e656c2f77656273697465, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfleechers`
--

CREATE TABLE `wp_wfleechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfreversecache`
--

INSERT INTO `wp_wfreversecache` (`IP`, `host`, `lastUpdate`) VALUES
(0x000000000000000000003f3f3f3f0151, 'john', 1529643762);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfscanners`
--

CREATE TABLE `wp_wfscanners` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfstatus`
--

INSERT INTO `wp_wfstatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1529643763.107458, 2, 'error', 'Call to Wordfence API to resolve IPs failed: There was an error connecting to the Wordfence scanning servers: cURL error 35: Unknown SSL protocol error in connection to noc1.wordfence.com:443 ');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfvulnscanners`
--

CREATE TABLE `wp_wfvulnscanners` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cf7_vdata`
--
ALTER TABLE `wp_cf7_vdata`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cf7_vdata_entry`
--
ALTER TABLE `wp_cf7_vdata_entry`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mf_custom_fields`
--
ALTER TABLE `wp_mf_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_custom_groups`
--
ALTER TABLE `wp_mf_custom_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_custom_taxonomy`
--
ALTER TABLE `wp_mf_custom_taxonomy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_posttypes`
--
ALTER TABLE `wp_mf_posttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_post_meta`
--
ALTER TABLE `wp_mf_post_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `idx_post_field` (`post_id`,`meta_id`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nls_subscribers`
--
ALTER TABLE `wp_nls_subscribers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_wfbadleechers`
--
ALTER TABLE `wp_wfbadleechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfblockedcommentlog`
--
ALTER TABLE `wp_wfblockedcommentlog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indexes for table `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfleechers`
--
ALTER TABLE `wp_wfleechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfscanners`
--
ALTER TABLE `wp_wfscanners`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wfvulnscanners`
--
ALTER TABLE `wp_wfvulnscanners`
  ADD PRIMARY KEY (`IP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_cf7_vdata`
--
ALTER TABLE `wp_cf7_vdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_cf7_vdata_entry`
--
ALTER TABLE `wp_cf7_vdata_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
-- AUTO_INCREMENT for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  MODIFY `es_deliver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  MODIFY `es_email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  MODIFY `es_note_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  MODIFY `es_sent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_fields`
--
ALTER TABLE `wp_mf_custom_fields`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_groups`
--
ALTER TABLE `wp_mf_custom_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_taxonomy`
--
ALTER TABLE `wp_mf_custom_taxonomy`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_posttypes`
--
ALTER TABLE `wp_mf_posttypes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nls_subscribers`
--
ALTER TABLE `wp_nls_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1210;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=888;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
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
-- AUTO_INCREMENT for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
