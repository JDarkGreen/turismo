# WordPress MySQL database migration
#
# Generated: Tuesday 11. October 2016 22:28 UTC
# Hostname: localhost
# Database: `turismo`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-09-29 22:03:14', '2016-09-29 22:03:14', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/turismo', 'yes'),
(2, 'home', 'http://localhost/turismo', 'yes'),
(3, 'blogname', 'Hatun Tours', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez.4net@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:260:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:14:"theme-tours/?$";s:31:"index.php?post_type=theme-tours";s:44:"theme-tours/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-tours&feed=$matches[1]";s:39:"theme-tours/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-tours&feed=$matches[1]";s:31:"theme-tours/page/([0-9]{1,})/?$";s:49:"index.php?post_type=theme-tours&paged=$matches[1]";s:17:"theme-products/?$";s:34:"index.php?post_type=theme-products";s:47:"theme-products/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:42:"theme-products/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:34:"theme-products/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-products&paged=$matches[1]";s:15:"theme-images/?$";s:32:"index.php?post_type=theme-images";s:45:"theme-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:40:"theme-images/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:32:"theme-images/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-images&paged=$matches[1]";s:15:"theme-videos/?$";s:32:"index.php?post_type=theme-videos";s:45:"theme-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:40:"theme-videos/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:32:"theme-videos/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-videos&paged=$matches[1]";s:19:"theme-promotions/?$";s:36:"index.php?post_type=theme-promotions";s:49:"theme-promotions/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:44:"theme-promotions/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:36:"theme-promotions/page/([0-9]{1,})/?$";s:54:"index.php?post_type=theme-promotions&paged=$matches[1]";s:14:"theme-staff/?$";s:31:"index.php?post_type=theme-staff";s:44:"theme-staff/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:39:"theme-staff/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:31:"theme-staff/page/([0-9]{1,})/?$";s:49:"index.php?post_type=theme-staff&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"images-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:51:"images-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:32:"images-category/([^/]+)/embed/?$";s:48:"index.php?images_category=$matches[1]&embed=true";s:44:"images-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?images_category=$matches[1]&paged=$matches[2]";s:26:"images-category/([^/]+)/?$";s:37:"index.php?images_category=$matches[1]";s:54:"tour-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tour_category=$matches[1]&feed=$matches[2]";s:49:"tour-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tour_category=$matches[1]&feed=$matches[2]";s:30:"tour-category/([^/]+)/embed/?$";s:46:"index.php?tour_category=$matches[1]&embed=true";s:42:"tour-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?tour_category=$matches[1]&paged=$matches[2]";s:24:"tour-category/([^/]+)/?$";s:35:"index.php?tour_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"theme-tours/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"theme-tours/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"theme-tours/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-tours/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-tours/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"theme-tours/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"theme-tours/([^/]+)/embed/?$";s:44:"index.php?theme-tours=$matches[1]&embed=true";s:32:"theme-tours/([^/]+)/trackback/?$";s:38:"index.php?theme-tours=$matches[1]&tb=1";s:52:"theme-tours/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-tours=$matches[1]&feed=$matches[2]";s:47:"theme-tours/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-tours=$matches[1]&feed=$matches[2]";s:40:"theme-tours/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?theme-tours=$matches[1]&paged=$matches[2]";s:47:"theme-tours/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?theme-tours=$matches[1]&cpage=$matches[2]";s:36:"theme-tours/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?theme-tours=$matches[1]&page=$matches[2]";s:28:"theme-tours/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"theme-tours/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"theme-tours/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-tours/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-tours/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"theme-tours/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-products/([^/]+)/embed/?$";s:47:"index.php?theme-products=$matches[1]&embed=true";s:35:"theme-products/([^/]+)/trackback/?$";s:41:"index.php?theme-products=$matches[1]&tb=1";s:55:"theme-products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:50:"theme-products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:43:"theme-products/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&paged=$matches[2]";s:50:"theme-products/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&cpage=$matches[2]";s:39:"theme-products/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-products=$matches[1]&page=$matches[2]";s:31:"theme-products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-images/([^/]+)/embed/?$";s:45:"index.php?theme-images=$matches[1]&embed=true";s:33:"theme-images/([^/]+)/trackback/?$";s:39:"index.php?theme-images=$matches[1]&tb=1";s:53:"theme-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:48:"theme-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:41:"theme-images/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&paged=$matches[2]";s:48:"theme-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&cpage=$matches[2]";s:37:"theme-images/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-images=$matches[1]&page=$matches[2]";s:29:"theme-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-videos/([^/]+)/embed/?$";s:45:"index.php?theme-videos=$matches[1]&embed=true";s:33:"theme-videos/([^/]+)/trackback/?$";s:39:"index.php?theme-videos=$matches[1]&tb=1";s:53:"theme-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:48:"theme-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:41:"theme-videos/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&paged=$matches[2]";s:48:"theme-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&cpage=$matches[2]";s:37:"theme-videos/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-videos=$matches[1]&page=$matches[2]";s:29:"theme-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"theme-promotions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"theme-promotions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"theme-promotions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"theme-promotions/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"theme-promotions/([^/]+)/embed/?$";s:49:"index.php?theme-promotions=$matches[1]&embed=true";s:37:"theme-promotions/([^/]+)/trackback/?$";s:43:"index.php?theme-promotions=$matches[1]&tb=1";s:57:"theme-promotions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:52:"theme-promotions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:45:"theme-promotions/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&paged=$matches[2]";s:52:"theme-promotions/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&cpage=$matches[2]";s:41:"theme-promotions/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?theme-promotions=$matches[1]&page=$matches[2]";s:33:"theme-promotions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"theme-promotions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"theme-promotions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"theme-promotions/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"theme-staff/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"theme-staff/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"theme-staff/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"theme-staff/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"theme-staff/([^/]+)/embed/?$";s:44:"index.php?theme-staff=$matches[1]&embed=true";s:32:"theme-staff/([^/]+)/trackback/?$";s:38:"index.php?theme-staff=$matches[1]&tb=1";s:52:"theme-staff/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:47:"theme-staff/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:40:"theme-staff/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&paged=$matches[2]";s:47:"theme-staff/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&cpage=$matches[2]";s:36:"theme-staff/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?theme-staff=$matches[1]&page=$matches[2]";s:28:"theme-staff/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"theme-staff/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"theme-staff/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"theme-staff/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:31:"live-admin-customzier/index.php";i:3;s:27:"qtranslate-x/qtranslate.php";i:4;s:35:"wp-media-folder/wp-media-folder.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hatun_custom_theme', 'yes'),
(41, 'stylesheet', 'hatun_custom_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:12:"sidebar-main";a:2:{i:0;s:20:"custom_publicity_w-2";i:1;s:20:"custom_publicity_w-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476258421;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476266598;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476301510;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476309887;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:1:{s:26:"ag-custom-admin/plugin.php";i:1475186842;}', 'yes'),
(142, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1475187444;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(143, 'current_theme', 'Hatun Tours', 'yes'),
(144, 'theme_mods_hatun_custom_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:4;}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(152, 'qtranslate_admin_notices', 'a:3:{s:11:"next_thanks";i:1475189852;s:15:"initial-install";i:1475189860;s:26:"survey-translation-service";i:1475189862;}', 'yes'),
(153, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"es";i:1;s:2:"en";}', 'yes'),
(154, 'qtranslate_default_language', 'es', 'yes'),
(155, 'qtranslate_version_previous', '34680', 'yes'),
(156, 'qtranslate_versions', 'a:2:{i:34680;i:1475189852;s:1:"l";i:1475189852;}', 'yes'),
(157, 'qtranslate_admin_config', 'a:7:{s:4:"post";a:4:{s:5:"pages";a:2:{s:8:"post.php";s:0:"";s:12:"post-new.php";s:0:"";}s:7:"anchors";a:1:{s:17:"post-body-content";a:1:{s:5:"where";s:10:"first last";}}s:5:"forms";a:2:{s:4:"post";a:1:{s:6:"fields";a:8:{s:5:"title";a:0:{}s:7:"excerpt";a:0:{}s:18:"attachment_caption";a:0:{}s:14:"attachment_alt";a:0:{}s:13:"view-post-btn";a:1:{s:6:"encode";s:7:"display";}s:14:"wp-editor-area";a:1:{s:6:"jquery";s:15:".wp-editor-area";}s:15:"gallery-caption";a:2:{s:6:"jquery";s:16:".gallery-caption";s:6:"encode";s:4:"none";}s:15:"wp-caption-text";a:2:{s:6:"jquery";s:16:".wp-caption-text";s:6:"encode";s:7:"display";}}}s:14:"wpbody-content";a:1:{s:6:"fields";a:2:{s:7:"wrap-h1";a:2:{s:6:"jquery";s:8:".wrap h1";s:6:"encode";s:7:"display";}s:7:"wrap-h2";a:2:{s:6:"jquery";s:8:".wrap h2";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:9:"post-exec";a:1:{s:3:"src";s:27:"./admin/js/post-exec.min.js";}}}s:15:"options-general";a:3:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:19:"options-general.php";s:21:"^(?!.*page=[^=&]+).*$";}s:5:"forms";a:1:{s:7:"options";a:1:{s:6:"fields";a:3:{s:8:"blogname";a:0:{}s:15:"blogdescription";a:0:{}s:10:"head-title";a:2:{s:6:"jquery";s:10:"head title";s:6:"encode";s:7:"display";}}}}}s:7:"widgets";a:4:{s:5:"pages";a:1:{s:11:"widgets.php";s:0:"";}s:7:"anchors";a:1:{s:13:"widgets-right";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:1:{s:13:"widgets-right";a:1:{s:6:"fields";a:3:{s:12:"widget-title";a:1:{s:6:"jquery";s:34:"input[id^=\'widget-\'][id$=\'-title\']";}s:16:"widget-text-text";a:1:{s:6:"jquery";s:41:"textarea[id^=\'widget-text-\'][id$=\'-text\']";}s:15:"in-widget-title";a:2:{s:6:"jquery";s:20:"span.in-widget-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:12:"widgets-exec";a:1:{s:3:"src";s:30:"./admin/js/widgets-exec.min.js";}}}s:8:"edit-tag";a:3:{s:5:"pages";a:2:{s:8:"term.php";s:0:"";s:13:"edit-tags.php";s:11:"action=edit";}s:5:"forms";a:1:{s:7:"edittag";a:1:{s:6:"fields";a:3:{s:4:"name";a:0:{}s:11:"description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:13:"edit-tag-exec";a:1:{s:3:"src";s:31:"./admin/js/edit-tag-exec.min.js";}}}s:9:"edit-tags";a:5:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:13:"edit-tags.php";s:21:"^(?!.*action=edit).*$";}s:7:"anchors";a:1:{s:12:"posts-filter";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:3:{s:6:"addtag";a:1:{s:6:"fields";a:3:{s:8:"tag-name";a:0:{}s:15:"tag-description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}s:8:"col-left";a:1:{s:6:"fields";a:1:{s:8:"tagcloud";a:2:{s:6:"jquery";s:13:".tagcloud > a";s:6:"encode";s:7:"display";}}}s:8:"the-list";a:1:{s:6:"fields";a:2:{s:9:"row-title";a:2:{s:6:"jquery";s:10:".row-title";s:6:"encode";s:7:"display";}s:11:"description";a:2:{s:6:"jquery";s:12:".description";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"edit-tags-exec";a:1:{s:3:"src";s:32:"./admin/js/edit-tags-exec.min.js";}}}s:9:"nav-menus";a:4:{s:5:"pages";a:1:{s:13:"nav-menus.php";s:23:"action=edit|menu=\\d+|^$";}s:7:"anchors";a:1:{s:12:"menu-to-edit";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:2:{s:15:"update-nav-menu";a:1:{s:6:"fields";a:5:{s:5:"title";a:1:{s:6:"jquery";s:27:"[id^=edit-menu-item-title-]";}s:10:"attr-title";a:1:{s:6:"jquery";s:32:"[id^=edit-menu-item-attr-title-]";}s:11:"description";a:1:{s:6:"jquery";s:33:"[id^=edit-menu-item-description-]";}s:10:"span.title";a:2:{s:6:"jquery";s:20:"span.menu-item-title";s:6:"encode";s:7:"display";}s:16:"link-to-original";a:2:{s:6:"jquery";s:20:".link-to-original >a";s:6:"encode";s:7:"display";}}}s:14:"side-sortables";a:1:{s:6:"fields";a:2:{s:11:"label.title";a:2:{s:6:"jquery";s:21:"label.menu-item-title";s:6:"encode";s:7:"display";}s:23:"accordion-section-title";a:2:{s:6:"jquery";s:26:"h3.accordion-section-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"nav-menus-exec";a:1:{s:3:"src";s:32:"./admin/js/nav-menus-exec.min.js";}}}s:9:"all-pages";a:1:{s:7:"filters";a:1:{s:4:"text";a:1:{s:11:"admin_title";s:2:"20";}}}}', 'yes'),
(158, 'qtranslate_front_config', 'a:1:{s:9:"all-pages";a:1:{s:7:"filters";a:3:{s:4:"text";a:11:{s:12:"widget_title";s:2:"20";s:11:"widget_text";s:2:"20";s:9:"the_title";s:2:"20";s:20:"category_description";s:2:"20";s:9:"list_cats";s:2:"20";s:16:"wp_dropdown_cats";s:2:"20";s:9:"term_name";s:2:"20";s:18:"get_comment_author";s:2:"20";s:10:"the_author";s:2:"20";s:9:"tml_title";s:2:"20";s:16:"term_description";s:2:"20";}s:4:"term";a:10:{s:7:"cat_row";s:1:"0";s:8:"cat_rows";s:1:"0";s:19:"wp_get_object_terms";s:1:"0";s:16:"single_cat_title";s:1:"0";s:16:"single_tag_title";s:1:"0";s:17:"single_term_title";s:1:"0";s:12:"the_category";s:1:"0";s:8:"get_term";s:1:"0";s:9:"get_terms";s:1:"0";s:12:"get_category";s:1:"0";}s:3:"url";a:16:{s:16:"author_feed_link";s:2:"10";s:11:"author_link";s:2:"10";s:27:"get_comment_author_url_link";s:2:"10";s:23:"post_comments_feed_link";s:2:"10";s:8:"day_link";s:2:"10";s:10:"month_link";s:2:"10";s:9:"year_link";s:2:"10";s:9:"page_link";s:2:"10";s:9:"post_link";s:2:"10";s:13:"category_link";s:2:"10";s:18:"category_feed_link";s:2:"10";s:8:"tag_link";s:2:"10";s:9:"term_link";s:2:"10";s:13:"the_permalink";s:2:"10";s:9:"feed_link";s:2:"10";s:13:"tag_feed_link";s:2:"10";}}}}', 'yes'),
(159, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(160, 'qtranslate_next_thanks', '1487545053', 'yes'),
(161, 'qtranslate_next_update_mo', '1476807247', 'yes'),
(184, 'duplicate_post_copyexcerpt', '1', 'yes'),
(185, 'duplicate_post_copyattachments', '0', 'yes'),
(186, 'duplicate_post_copychildren', '0', 'yes'),
(187, 'duplicate_post_copystatus', '0', 'yes'),
(188, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(189, 'duplicate_post_show_row', '1', 'yes'),
(190, 'duplicate_post_show_adminbar', '1', 'yes'),
(191, 'duplicate_post_show_submitbox', '1', 'yes'),
(192, 'duplicate_post_version', '2.6', 'yes'),
(193, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(196, 'wpmf_use_taxonomy', '1', 'yes'),
(197, 'rrrlgvwr_options', 'a:15:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:1;s:11:"lines_count";s:2:"10";s:16:"confirm_filesize";i:474;s:14:"error_log_path";s:44:"C:/xampp/htdocs/turismo/wp-content/debug.log";s:17:"count_visible_log";i:2;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1475529525;s:19:"go_settings_counter";i:6;s:9:"file_path";a:2:{i:0;s:44:"C:\\xampp\\htdocs\\turismo/wp-content/debug.log";i:1;s:44:"C:/xampp/htdocs/turismo/wp-content/debug.log";}s:10:"send_email";i:0;s:15:"0_debug_visible";i:1;}', 'yes'),
(199, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(200, 'wpmf_padding_masonry', '5', 'yes'),
(201, 'wpmf_padding_portfolio', '10', 'yes'),
(202, 'wpmf_usegellery', '1', 'yes'),
(203, 'wpmf_useorder', '1', 'yes'),
(204, 'wpmf_folder_option1', '0', 'yes'),
(205, 'wpmf_option_override', '0', 'yes'),
(206, 'wpmf_active_media', '0', 'yes'),
(207, 'wpmf_folder_option2', '1', 'yes'),
(208, 'wpmf_option_searchall', '0', 'yes'),
(209, 'wpmf_usegellery_lightbox', '1', 'yes'),
(210, 'wpmf_media_rename', '0', 'yes'),
(211, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(212, 'wpmf_rename_number', '0', 'yes'),
(213, 'wpmf_option_media_remove', '0', 'yes'),
(214, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(215, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(216, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(217, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(218, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(219, 'wpmf_option_singlefile', '0', 'yes'),
(220, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476202452;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.2";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.2";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(223, '_wpmf_import_notice_flag', 'yes', 'yes'),
(264, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(265, 'qtranslate_term_name', 'a:3:{s:5:"Costa";a:2:{s:2:"es";s:5:"Costa";s:2:"en";s:0:"";}s:6:"Sierra";a:2:{s:2:"es";s:6:"Sierra";s:2:"en";s:6:"Sierra";}s:5:"Selva";a:2:{s:2:"es";s:5:"Selva";s:2:"en";s:2:"Se";}}', 'yes'),
(276, 'tour_category_children', 'a:0:{}', 'yes'),
(279, 'widget_custom_publicity_w', 'a:3:{i:2;a:3:{s:5:"title";s:10:"Publicidad";s:6:"ad_img";s:68:"http://localhost/turismo/wp-content/uploads/2016/10/widget_image.jpg";s:7:"ad_link";s:1:"#";}i:3;a:3:{s:5:"title";s:35:"[:es]Publicidad 2[:en]Publicidad[:]";s:6:"ad_img";s:95:"http://localhost/turismo/wp-content/uploads/2016/10/boton_2_agencia_viaje_turismo_lima_peru.jpg";s:7:"ad_link";s:34:"http://localhost/turismo/nosotros/";}s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'theme_settings', 'a:17:{s:20:"theme_social_fb_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_twitter_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_youtube_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:27:"theme_social_instagram_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:26:"theme_social_linkedin_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:23:"theme_social_gplus_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:27:"theme_social_pinterest_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:24:"theme_welcome_title_home";s:26:"Bienvenidos a Hatum Tour!!";s:23:"theme_welcome_text_home";s:242:"Ánimese y viaje con nosotros !! La aventura espera por usted, lo esperamos con el corazón abierto y la certeza de sabe que será para ustedes un viaje gratamente memorable.certeza de sabe que será para ustedes un viaje gratamente memorable";s:17:"theme_footer_text";s:73:"Lorem ipsum dolor sit amet, consectetur adipisicing \nelit, sed do eiusmod";s:18:"theme_phone_text_1";s:9:"544754545";s:18:"theme_phone_text_2";s:12:"465456456456";s:16:"theme_cel_text_1";s:6:"147474";s:16:"theme_cel_text_2";s:6:"352241";s:16:"theme_email_text";s:21:"sales@toursdeperu.com";s:18:"theme_address_text";s:73:"Lorem ipsum dolor sit amet, consectetur \nadipisicing elit, sed do eiusmod";s:19:"theme_atention_text";s:0:"";}', 'yes'),
(364, 'wpmf-category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 1, '_edit_lock', '1475195493:1'),
(5, 4, '_edit_last', '1'),
(6, 4, 'mb_image_gallery', ''),
(7, 4, 'mb_rev_slider_select', 'parallaxtoleft'),
(8, 4, '_edit_lock', '1475277579:1'),
(9, 5, '_wp_attached_file', '2016/09/sliderhome1.jpg'),
(10, 5, 'wpmf_size', '347532'),
(11, 5, 'wpmf_filetype', 'jpg'),
(12, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:794;s:4:"file";s:23:"2016/09/sliderhome1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"sliderhome1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"sliderhome1-300x124.jpg";s:5:"width";i:300;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"sliderhome1-768x318.jpg";s:5:"width";i:768;s:6:"height";i:318;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"sliderhome1-1024x423.jpg";s:5:"width";i:1024;s:6:"height";i:423;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"sliderhome1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:23:"sliderhome1-784x324.jpg";s:5:"width";i:784;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 4, '_thumbnail_id', '5'),
(14, 6, '_edit_last', '1'),
(15, 6, 'mb_image_gallery', ''),
(16, 6, 'mb_rev_slider_select', 'boxslide'),
(17, 6, '_edit_lock', '1475265385:1'),
(18, 6, '_thumbnail_id', '5'),
(19, 6, '_dp_original', '4'),
(20, 7, '_edit_last', '1'),
(21, 7, 'mb_image_gallery', ''),
(22, 7, 'mb_rev_slider_select', 'parallaxtoright'),
(23, 7, '_edit_lock', '1475269079:1'),
(24, 7, '_thumbnail_id', '5'),
(26, 7, '_dp_original', '6'),
(27, 2, '_wp_trash_meta_status', 'publish'),
(28, 2, '_wp_trash_meta_time', '1475509272'),
(29, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(30, 9, '_edit_last', '1'),
(31, 9, '_wp_page_template', 'default'),
(32, 9, 'mb_featured_banner', 'http://localhost/turismo/wp-content/uploads/2016/10/sample-banner.jpg'),
(33, 9, 'mb_image_gallery', ',58,58,58'),
(34, 9, '_edit_lock', '1476211514:1'),
(35, 11, '_edit_last', '1'),
(36, 11, '_wp_page_template', 'page-promotions.php'),
(37, 11, 'mb_featured_banner', 'http://localhost/turismo/wp-content/uploads/2016/10/sample-banner.jpg'),
(38, 11, 'mb_image_gallery', ''),
(39, 11, '_edit_lock', '1476218586:1'),
(40, 13, '_edit_last', '1'),
(41, 13, '_wp_page_template', 'default'),
(42, 13, 'mb_featured_banner', ''),
(43, 13, 'mb_image_gallery', ''),
(44, 13, '_edit_lock', '1475509164:1'),
(45, 15, '_edit_last', '1'),
(46, 15, '_wp_page_template', 'page-features.php'),
(47, 15, 'mb_featured_banner', ''),
(48, 15, 'mb_image_gallery', ''),
(49, 15, '_edit_lock', '1476224773:1'),
(50, 17, '_edit_last', '1'),
(51, 17, '_wp_page_template', 'default'),
(52, 17, 'mb_featured_banner', ''),
(53, 17, 'mb_image_gallery', ''),
(54, 17, '_edit_lock', '1475509189:1'),
(55, 19, '_edit_last', '1'),
(56, 19, '_wp_page_template', 'default'),
(57, 19, 'mb_featured_banner', ''),
(58, 19, 'mb_image_gallery', ''),
(59, 19, '_edit_lock', '1475509200:1'),
(60, 21, '_edit_last', '1'),
(61, 21, '_wp_page_template', 'default'),
(62, 21, 'mb_featured_banner', ''),
(63, 21, 'mb_image_gallery', ''),
(64, 21, '_edit_lock', '1475509220:1'),
(65, 23, '_menu_item_type', 'post_type'),
(66, 23, '_menu_item_menu_item_parent', '0'),
(67, 23, '_menu_item_object_id', '21'),
(68, 23, '_menu_item_object', 'page'),
(69, 23, '_menu_item_target', ''),
(70, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 23, '_menu_item_xfn', ''),
(72, 23, '_menu_item_url', ''),
(74, 24, '_menu_item_type', 'post_type'),
(75, 24, '_menu_item_menu_item_parent', '0'),
(76, 24, '_menu_item_object_id', '19'),
(77, 24, '_menu_item_object', 'page'),
(78, 24, '_menu_item_target', ''),
(79, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 24, '_menu_item_xfn', ''),
(81, 24, '_menu_item_url', ''),
(83, 25, '_menu_item_type', 'post_type'),
(84, 25, '_menu_item_menu_item_parent', '0'),
(85, 25, '_menu_item_object_id', '17'),
(86, 25, '_menu_item_object', 'page'),
(87, 25, '_menu_item_target', ''),
(88, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 25, '_menu_item_xfn', ''),
(90, 25, '_menu_item_url', ''),
(91, 25, '_menu_item_orphaned', '1475509379'),
(92, 26, '_menu_item_type', 'post_type'),
(93, 26, '_menu_item_menu_item_parent', '0'),
(94, 26, '_menu_item_object_id', '15'),
(95, 26, '_menu_item_object', 'page'),
(96, 26, '_menu_item_target', ''),
(97, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 26, '_menu_item_xfn', ''),
(99, 26, '_menu_item_url', ''),
(101, 27, '_menu_item_type', 'post_type'),
(102, 27, '_menu_item_menu_item_parent', '0'),
(103, 27, '_menu_item_object_id', '13'),
(104, 27, '_menu_item_object', 'page'),
(105, 27, '_menu_item_target', ''),
(106, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 27, '_menu_item_xfn', ''),
(108, 27, '_menu_item_url', ''),
(110, 28, '_menu_item_type', 'post_type'),
(111, 28, '_menu_item_menu_item_parent', '0'),
(112, 28, '_menu_item_object_id', '11'),
(113, 28, '_menu_item_object', 'page'),
(114, 28, '_menu_item_target', ''),
(115, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 28, '_menu_item_xfn', ''),
(117, 28, '_menu_item_url', ''),
(119, 29, '_menu_item_type', 'post_type'),
(120, 29, '_menu_item_menu_item_parent', '0'),
(121, 29, '_menu_item_object_id', '9'),
(122, 29, '_menu_item_object', 'page'),
(123, 29, '_menu_item_target', ''),
(124, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 29, '_menu_item_xfn', ''),
(126, 29, '_menu_item_url', ''),
(128, 30, '_menu_item_type', 'post_type'),
(129, 30, '_menu_item_menu_item_parent', '0'),
(130, 30, '_menu_item_object_id', '17'),
(131, 30, '_menu_item_object', 'page'),
(132, 30, '_menu_item_target', ''),
(133, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 30, '_menu_item_xfn', ''),
(135, 30, '_menu_item_url', ''),
(137, 31, '_menu_item_type', 'custom'),
(138, 31, '_menu_item_menu_item_parent', '0'),
(139, 31, '_menu_item_object_id', '31'),
(140, 31, '_menu_item_object', 'custom'),
(141, 31, '_menu_item_target', ''),
(142, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 31, '_menu_item_xfn', ''),
(144, 31, '_menu_item_url', '#'),
(146, 32, '_edit_last', '1'),
(147, 32, 'mb_image_gallery', ''),
(148, 32, '_edit_lock', '1475518381:1'),
(149, 33, '_edit_last', '1'),
(150, 33, 'mb_image_gallery', ''),
(151, 33, '_edit_lock', '1475604702:1'),
(152, 36, '_wp_attached_file', '2016/10/widget_image.jpg'),
(153, 36, 'wpmf_size', '17822'),
(154, 36, 'wpmf_filetype', 'jpg'),
(155, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:24:"2016/10/widget_image.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"widget_image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"widget_image-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(160, 38, '_wp_attached_file', '2016/10/boton_2_agencia_viaje_turismo_lima_peru.jpg'),
(161, 38, 'wpmf_size', '15351'),
(162, 38, 'wpmf_filetype', 'jpg'),
(163, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:51:"2016/10/boton_2_agencia_viaje_turismo_lima_peru.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:51:"boton_2_agencia_viaje_turismo_lima_peru-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:51:"boton_2_agencia_viaje_turismo_lima_peru-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(164, 41, '_wp_attached_file', '2016/10/promociones_1_agencia_viaje_turismo_lima_peru.jpg'),
(165, 41, 'wpmf_size', '133907'),
(166, 41, 'wpmf_filetype', 'jpg'),
(167, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:406;s:4:"file";s:57:"2016/10/promociones_1_agencia_viaje_turismo_lima_peru.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"promociones_1_agencia_viaje_turismo_lima_peru-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"promociones_1_agencia_viaje_turismo_lima_peru-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:57:"promociones_1_agencia_viaje_turismo_lima_peru-768x346.jpg";s:5:"width";i:768;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:57:"promociones_1_agencia_viaje_turismo_lima_peru-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:57:"promociones_1_agencia_viaje_turismo_lima_peru-776x350.jpg";s:5:"width";i:776;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(168, 40, '_edit_last', '1'),
(169, 40, '_edit_lock', '1476222937:1'),
(170, 40, '_thumbnail_id', '41'),
(171, 40, 'mb_image_gallery', ''),
(172, 40, 'duration_travel', '2 Días / 1 noche'),
(173, 40, 'price_travel', 'USD $356'),
(174, 42, '_edit_last', '1'),
(175, 42, '_edit_lock', '1475596642:1'),
(176, 42, '_thumbnail_id', '41'),
(177, 42, 'mb_image_gallery', ''),
(178, 42, 'duration_travel', '2 Días / 1 noche'),
(179, 42, 'price_travel', 'USD $356'),
(180, 42, '_dp_original', '40'),
(181, 43, '_edit_last', '1'),
(182, 43, '_edit_lock', '1475596652:1'),
(183, 43, '_thumbnail_id', '41'),
(184, 43, 'mb_image_gallery', ''),
(185, 43, 'duration_travel', '2 Días / 1 noche'),
(186, 43, 'price_travel', 'USD $356'),
(188, 43, '_dp_original', '42'),
(189, 44, '_edit_last', '1'),
(190, 44, '_edit_lock', '1475604856:1'),
(191, 44, '_thumbnail_id', '41'),
(192, 44, 'mb_image_gallery', ''),
(193, 44, 'duration_travel', '2 Días / 1 noche'),
(194, 44, 'price_travel', 'USD $356'),
(196, 44, '_dp_original', '43'),
(197, 45, '_edit_last', '1'),
(198, 45, '_edit_lock', '1475604865:1'),
(199, 45, '_thumbnail_id', '41'),
(200, 45, 'mb_image_gallery', ''),
(201, 45, 'duration_travel', '2 Días / 1 noche'),
(202, 45, 'price_travel', 'USD $356'),
(204, 45, '_dp_original', '44'),
(205, 46, '_edit_last', '1'),
(206, 46, '_edit_lock', '1476214246:1'),
(207, 46, '_thumbnail_id', '41'),
(208, 46, 'mb_image_gallery', ''),
(209, 46, 'duration_travel', '2 Días / 1 noche'),
(210, 46, 'price_travel', 'USD $356'),
(212, 46, '_dp_original', '45'),
(213, 47, '_edit_last', '1'),
(214, 47, 'mb_image_gallery', ''),
(215, 47, '_edit_lock', '1475604903:1'),
(216, 47, '_dp_original', '32'),
(217, 48, '_edit_last', '1'),
(218, 48, 'mb_image_gallery', ''),
(219, 48, '_edit_lock', '1475604911:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(221, 48, '_dp_original', '47'),
(222, 49, '_edit_last', '1'),
(223, 49, 'mb_image_gallery', ''),
(224, 49, '_edit_lock', '1475604919:1'),
(226, 49, '_dp_original', '48'),
(227, 50, '_edit_last', '1'),
(228, 50, 'mb_image_gallery', ''),
(229, 50, '_edit_lock', '1475604926:1'),
(231, 50, '_dp_original', '49'),
(232, 51, '_edit_lock', '1475618902:1'),
(233, 51, '_dp_original', '1'),
(234, 52, '_edit_lock', '1475618908:1'),
(235, 52, '_dp_original', '1'),
(236, 51, '_edit_last', '1'),
(238, 52, '_edit_last', '1'),
(239, 52, '_encloseme', '1'),
(240, 56, '_wp_attached_file', '2016/10/sample-banner.jpg'),
(241, 56, 'wpmf_size', '214502'),
(242, 56, 'wpmf_filetype', 'jpg'),
(243, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:648;s:4:"file";s:25:"2016/10/sample-banner.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sample-banner-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sample-banner-768x259.jpg";s:5:"width";i:768;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"sample-banner-1024x346.jpg";s:5:"width";i:1024;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-banner-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"sample-banner-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 58, '_wp_attached_file', '2016/10/sample-nosotros.jpg'),
(245, 58, 'wpmf_size', '108305'),
(246, 58, 'wpmf_filetype', 'jpg'),
(247, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:582;s:6:"height";i:541;s:4:"file";s:27:"2016/10/sample-nosotros.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-nosotros-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-nosotros-300x279.jpg";s:5:"width";i:300;s:6:"height";i:279;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-nosotros-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-nosotros-377x350.jpg";s:5:"width";i:377;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-29 22:03:14', '2016-09-29 22:03:14', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-09-29 22:03:14', '2016-09-29 22:03:14', '', 0, 'http://localhost/turismo/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-29 22:03:14', '2016-09-29 22:03:14', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/turismo/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-10-03 15:41:12', '2016-10-03 15:41:12', '', 0, 'http://localhost/turismo/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-09-30 19:45:45', '2016-09-30 19:45:45', '', '[:es]El Perú es Increíble[:]', '', 'publish', 'closed', 'closed', '', 'el-peru-es-increible', '', '', '2016-09-30 22:49:39', '2016-09-30 22:49:39', '', 0, 'http://localhost/turismo/?post_type=slider-home&#038;p=4', 0, 'slider-home', '', 0),
(5, 1, '2016-09-30 19:56:00', '2016-09-30 19:56:00', '', 'sliderhome1', '', 'inherit', 'open', 'closed', '', 'sliderhome1', '', '', '2016-09-30 19:56:00', '2016-09-30 19:56:00', '', 4, 'http://localhost/turismo/wp-content/uploads/2016/09/sliderhome1.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-09-30 19:56:17', '2016-09-30 19:56:17', '', '[:es]El Perú es Increíble[:]', '', 'publish', 'closed', 'closed', '', 'el-peru-es-increible-2', '', '', '2016-09-30 19:56:25', '2016-09-30 19:56:25', '', 0, 'http://localhost/turismo/?post_type=slider-home&#038;p=6', 0, 'slider-home', '', 0),
(7, 1, '2016-09-30 19:56:29', '2016-09-30 19:56:29', '', '[:es]El Perú es Increíble[:]', '', 'publish', 'closed', 'closed', '', 'el-peru-es-increible-3', '', '', '2016-09-30 21:00:03', '2016-09-30 21:00:03', '', 0, 'http://localhost/turismo/?post_type=slider-home&#038;p=7', 0, 'slider-home', '', 0),
(8, 1, '2016-10-03 15:41:12', '2016-10-03 15:41:12', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/turismo/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-10-03 15:41:12', '2016-10-03 15:41:12', '', 2, 'http://localhost/turismo/2016/10/03/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-10-03 15:41:25', '2016-10-03 15:41:25', '[:es]<h2>NUESTRO ORGULLO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n<h2>PERÚ, UN LUGAR  FANTÁSTICO Y MARAVILLOSO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo[:]', '[:es]Nosotros[:]', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-11 18:15:15', '2016-10-11 18:15:15', '', 0, 'http://localhost/turismo/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-10-03 15:41:25', '2016-10-03 15:41:25', '', '[:es]Nosotros[:]', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-03 15:41:25', '2016-10-03 15:41:25', '', 9, 'http://localhost/turismo/2016/10/03/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-10-03 15:41:35', '2016-10-03 15:41:35', '[:es]Ánimese y viaje con nosotros !! La aventura espera por usted, lo esperamos con el corazón abierto y la certeza de sabe que será para ustedes un viaje gratamente memorable.certeza de sabe que será para ustedes un viaje gratamente memorable[:]', '[:es]Promociones[:]', '', 'publish', 'closed', 'closed', '', 'promociones', '', '', '2016-10-11 20:03:41', '2016-10-11 20:03:41', '', 0, 'http://localhost/turismo/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-10-03 15:41:35', '2016-10-03 15:41:35', '', '[:es]Promociones[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-10-03 15:41:35', '2016-10-03 15:41:35', '', 11, 'http://localhost/turismo/2016/10/03/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-10-03 15:41:45', '2016-10-03 15:41:45', '', '[:es]Planea tu viaje[:]', '', 'publish', 'closed', 'closed', '', 'planea-tu-viaje', '', '', '2016-10-03 15:41:45', '2016-10-03 15:41:45', '', 0, 'http://localhost/turismo/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-10-03 15:41:45', '2016-10-03 15:41:45', '', '[:es]Planea tu viaje[:]', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-10-03 15:41:45', '2016-10-03 15:41:45', '', 13, 'http://localhost/turismo/2016/10/03/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-10-03 15:41:55', '2016-10-03 15:41:55', '[:es]Ánimese y viaje con nosotros !! La aventura espera por usted, lo esperamos con el corazón abierto y la certeza de sabe que será para ustedes un viaje gratamente memorable.certeza de sabe que será para ustedes un viaje gratamente memorable[:]', '[:es]Destacados[:]', '', 'publish', 'closed', 'closed', '', 'destacados', '', '', '2016-10-11 22:00:18', '2016-10-11 22:00:18', '', 0, 'http://localhost/turismo/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-10-03 15:41:55', '2016-10-03 15:41:55', '', '[:es]Destacados[:]', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-10-03 15:41:55', '2016-10-03 15:41:55', '', 15, 'http://localhost/turismo/2016/10/03/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-10-03 15:42:06', '2016-10-03 15:42:06', '', '[:es]Reservas[:]', '', 'publish', 'closed', 'closed', '', 'reservas', '', '', '2016-10-03 15:42:06', '2016-10-03 15:42:06', '', 0, 'http://localhost/turismo/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-10-03 15:42:06', '2016-10-03 15:42:06', '', '[:es]Reservas[:]', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-10-03 15:42:06', '2016-10-03 15:42:06', '', 17, 'http://localhost/turismo/2016/10/03/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-10-03 15:42:21', '2016-10-03 15:42:21', '', '[:es]Blog[:]', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-03 15:42:21', '2016-10-03 15:42:21', '', 0, 'http://localhost/turismo/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-10-03 15:42:21', '2016-10-03 15:42:21', '', '[:es]Blog[:]', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-10-03 15:42:21', '2016-10-03 15:42:21', '', 19, 'http://localhost/turismo/2016/10/03/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-10-03 15:42:32', '2016-10-03 15:42:32', '', '[:es]Contactanos[:]', '', 'publish', 'closed', 'closed', '', 'contactanos', '', '', '2016-10-03 15:42:32', '2016-10-03 15:42:32', '', 0, 'http://localhost/turismo/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-10-03 15:42:32', '2016-10-03 15:42:32', '', '[:es]Contactanos[:]', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-10-03 15:42:32', '2016-10-03 15:42:32', '', 21, 'http://localhost/turismo/2016/10/03/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-10-03 15:44:28', '2016-10-03 15:44:28', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-10-03 15:44:28', '2016-10-03 15:44:28', '', 0, 'http://localhost/turismo/?p=23', 8, 'nav_menu_item', '', 0),
(24, 1, '2016-10-03 15:44:28', '2016-10-03 15:44:28', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-10-03 15:44:28', '2016-10-03 15:44:28', '', 0, 'http://localhost/turismo/?p=24', 7, 'nav_menu_item', '', 0),
(25, 1, '2016-10-03 15:42:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-10-03 15:42:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/turismo/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2016-10-03 15:44:27', '2016-10-03 15:44:27', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-10-03 15:44:27', '2016-10-03 15:44:27', '', 0, 'http://localhost/turismo/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2016-10-03 15:44:27', '2016-10-03 15:44:27', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-10-03 15:44:27', '2016-10-03 15:44:27', '', 0, 'http://localhost/turismo/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2016-10-03 15:44:27', '2016-10-03 15:44:27', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-10-03 15:44:27', '2016-10-03 15:44:27', '', 0, 'http://localhost/turismo/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2016-10-03 15:44:26', '2016-10-03 15:44:26', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-10-03 15:44:26', '2016-10-03 15:44:26', '', 0, 'http://localhost/turismo/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-10-03 15:44:27', '2016-10-03 15:44:27', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-10-03 15:44:27', '2016-10-03 15:44:27', '', 0, 'http://localhost/turismo/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2016-10-03 15:44:28', '2016-10-03 15:44:28', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2016-10-03 15:44:28', '2016-10-03 15:44:28', '', 0, 'http://localhost/turismo/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2016-10-03 18:12:37', '2016-10-03 18:12:37', '', '[:es]City tour de lima[:]', '', 'publish', 'closed', 'closed', '', 'city-tour-de-lima', '', '', '2016-10-03 18:13:13', '2016-10-03 18:13:13', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=32', 0, 'theme-tours', '', 0),
(33, 1, '2016-10-03 18:12:56', '2016-10-03 18:12:56', '', '[:es]Iquitos[:]', '', 'publish', 'closed', 'closed', '', 'iquitos', '', '', '2016-10-03 18:12:56', '2016-10-03 18:12:56', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=33', 0, 'theme-tours', '', 0),
(36, 1, '2016-10-03 20:48:02', '2016-10-03 20:48:02', '', 'widget_image', '', 'inherit', 'open', 'closed', '', 'widget_image', '', '', '2016-10-03 20:48:02', '2016-10-03 20:48:02', '', 0, 'http://localhost/turismo/wp-content/uploads/2016/10/widget_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-10-03 21:11:41', '2016-10-03 21:11:41', '', 'boton_2_agencia_viaje_turismo_lima_peru', '', 'inherit', 'open', 'closed', '', 'boton_2_agencia_viaje_turismo_lima_peru', '', '', '2016-10-03 21:11:41', '2016-10-03 21:11:41', '', 0, 'http://localhost/turismo/wp-content/uploads/2016/10/boton_2_agencia_viaje_turismo_lima_peru.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-10-04 15:51:52', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-04 15:51:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&p=39', 0, 'theme-promotions', '', 0),
(40, 1, '2016-10-04 15:57:03', '2016-10-04 15:57:03', '[:es]<h2>Incluye</h2>\r\nTranslados in/out\r\n04 noches de hotel en Cusco\r\n01 Noche de Hotel en Machupicchu\r\ncity tour y ruinas aledañas\r\nMachupicchu\r\nTour Valle Sagrado\r\nTour a Salinera de Maras y Moray\r\nTodos los ingresos\r\nAsistencia Permanente\r\nItinerario.\r\n<h2>Día 01:</h2>\r\nRecojo del Aeropuerto y translado al hotel elegido. Mañana libre para aclimatarse.\r\n\r\n&nbsp;\r\n<h2>CITY TOUR:</h2>\r\nRecojo del Hotel a las 13:30 horas, programa tradicional que muestra La Catedral , exponente del arte colocnial , además el Templo del Koricancha, templo del Sol y la Luna. Visita al Parque Arqueológico de Sacsayhuaman, Centro funerario de K´engo, Tambo de Puca , Pucara y Tambomachay , conocida como los Baños del Inca, caracterizado por sus caídas de agua cristalina.\r\n\r\nRetorno a la ciudad a las 18:00 aproximadamente.\r\n\r\nAlimentación: Ninguna.[:]', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas', '', '', '2016-10-11 21:42:14', '2016-10-11 21:42:14', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=40', 0, 'theme-promotions', '', 0),
(41, 1, '2016-10-04 15:55:30', '2016-10-04 15:55:30', '', 'promociones_1_agencia_viaje_turismo_lima_peru', '', 'inherit', 'open', 'closed', '', 'promociones_1_agencia_viaje_turismo_lima_peru', '', '', '2016-10-04 15:55:30', '2016-10-04 15:55:30', '', 40, 'http://localhost/turismo/wp-content/uploads/2016/10/promociones_1_agencia_viaje_turismo_lima_peru.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-10-04 15:57:13', '2016-10-04 15:57:13', '', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas-2', '', '', '2016-10-04 15:57:22', '2016-10-04 15:57:22', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=42', 0, 'theme-promotions', '', 0),
(43, 1, '2016-10-04 15:57:26', '2016-10-04 15:57:26', '', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas-3', '', '', '2016-10-04 15:57:32', '2016-10-04 15:57:32', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=43', 0, 'theme-promotions', '', 0),
(44, 1, '2016-10-04 18:14:10', '2016-10-04 18:14:10', '', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas-4', '', '', '2016-10-04 18:14:16', '2016-10-04 18:14:16', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=44', 0, 'theme-promotions', '', 0),
(45, 1, '2016-10-04 18:14:19', '2016-10-04 18:14:19', '', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas-5', '', '', '2016-10-04 18:14:25', '2016-10-04 18:14:25', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=45', 0, 'theme-promotions', '', 0),
(46, 1, '2016-10-04 18:14:27', '2016-10-04 18:14:27', '', '[:es]Islas Ballestas[:]', '', 'publish', 'closed', 'closed', '', 'islas-ballestas-6', '', '', '2016-10-04 18:14:33', '2016-10-04 18:14:33', '', 0, 'http://localhost/turismo/?post_type=theme-promotions&#038;p=46', 0, 'theme-promotions', '', 0),
(47, 1, '2016-10-04 18:14:58', '2016-10-04 18:14:58', '', '[:es]City tour de lima[:]', '', 'publish', 'closed', 'closed', '', 'city-tour-de-lima-2', '', '', '2016-10-04 18:15:03', '2016-10-04 18:15:03', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=47', 0, 'theme-tours', '', 0),
(48, 1, '2016-10-04 18:15:06', '2016-10-04 18:15:06', '', '[:es]City tour de lima[:]', '', 'publish', 'closed', 'closed', '', 'city-tour-de-lima-3', '', '', '2016-10-04 18:15:11', '2016-10-04 18:15:11', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=48', 0, 'theme-tours', '', 0),
(49, 1, '2016-10-04 18:15:13', '2016-10-04 18:15:13', '', '[:es]City tour de lima[:]', '', 'publish', 'closed', 'closed', '', 'city-tour-de-lima-4', '', '', '2016-10-04 18:15:19', '2016-10-04 18:15:19', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=49', 0, 'theme-tours', '', 0),
(50, 1, '2016-10-04 18:15:21', '2016-10-04 18:15:21', '', '[:es]City tour de lima[:]', '', 'publish', 'closed', 'closed', '', 'city-tour-de-lima-5', '', '', '2016-10-04 18:15:26', '2016-10-04 18:15:26', '', 0, 'http://localhost/turismo/?post_type=theme-tours&#038;p=50', 0, 'theme-tours', '', 0),
(51, 1, '2016-10-04 22:08:11', '2016-10-04 22:08:11', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-2', '', '', '2016-10-04 22:08:22', '2016-10-04 22:08:22', '', 0, 'http://localhost/turismo/?p=51', 0, 'post', '', 0),
(52, 1, '2016-10-04 22:08:16', '2016-10-04 22:08:16', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-3', '', '', '2016-10-04 22:08:28', '2016-10-04 22:08:28', '', 0, 'http://localhost/turismo/?p=52', 0, 'post', '', 0),
(53, 1, '2016-10-04 22:08:22', '2016-10-04 22:08:22', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-10-04 22:08:22', '2016-10-04 22:08:22', '', 51, 'http://localhost/turismo/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-10-04 22:08:28', '2016-10-04 22:08:28', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-10-04 22:08:28', '2016-10-04 22:08:28', '', 52, 'http://localhost/turismo/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-10-11 16:14:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 16:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/turismo/?p=55', 0, 'post', '', 0),
(56, 1, '2016-10-11 16:47:00', '2016-10-11 16:47:00', '', 'sample-banner', '', 'inherit', 'open', 'closed', '', 'sample-banner', '', '', '2016-10-11 16:47:00', '2016-10-11 16:47:00', '', 9, 'http://localhost/turismo/wp-content/uploads/2016/10/sample-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-10-11 17:42:27', '2016-10-11 17:42:27', '[:es]<h2>NUESTRO ORGULLO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n<h2>PERÚ, UN LUGAR  FANTÁSTICO Y MARAVILLOSO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo[:]', '[:es]Nosotros[:]', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-11 17:42:27', '2016-10-11 17:42:27', '', 9, 'http://localhost/turismo/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-10-11 18:14:30', '2016-10-11 18:14:30', '', 'sample-nosotros', '', 'inherit', 'open', 'closed', '', 'sample-nosotros', '', '', '2016-10-11 18:14:30', '2016-10-11 18:14:30', '', 9, 'http://localhost/turismo/wp-content/uploads/2016/10/sample-nosotros.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-10-11 19:24:28', '2016-10-11 19:24:28', '[:es]Ánimese y viaje con nosotros !! La aventura espera por usted, lo esperamos con el corazón abierto y la certeza de sabe que será para ustedes un viaje gratamente memorable.certeza de sabe que será para ustedes un viaje gratamente memorable[:]', '[:es]Promociones[:]', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-10-11 19:24:28', '2016-10-11 19:24:28', '', 11, 'http://localhost/turismo/11-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-10-11 22:00:18', '2016-10-11 22:00:18', '[:es]Ánimese y viaje con nosotros !! La aventura espera por usted, lo esperamos con el corazón abierto y la certeza de sabe que será para ustedes un viaje gratamente memorable.certeza de sabe que será para ustedes un viaje gratamente memorable[:]', '[:es]Destacados[:]', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-10-11 22:00:18', '2016-10-11 22:00:18', '', 15, 'http://localhost/turismo/15-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 3, 0),
(23, 4, 0),
(24, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 5, 0),
(33, 7, 0),
(36, 8, 0),
(38, 8, 0),
(41, 9, 0),
(47, 5, 0),
(48, 5, 0),
(49, 5, 0),
(50, 5, 0),
(51, 1, 0),
(52, 1, 0),
(56, 10, 0),
(58, 10, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wpmf-category', '', 0, 0),
(3, 3, 'wpmf-category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 8),
(5, 5, 'tour_category', '', 0, 5),
(6, 6, 'tour_category', '', 0, 0),
(7, 7, 'tour_category', '', 0, 1),
(8, 8, 'wpmf-category', '', 0, 0),
(9, 9, 'wpmf-category', '', 0, 0),
(10, 10, 'wpmf-category', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'meta_order_taxonomy', '1'),
(2, 5, 'meta_color_taxonomy', '#000000'),
(3, 6, 'meta_order_taxonomy', '2'),
(4, 6, 'meta_color_taxonomy', '#000000'),
(5, 7, 'meta_order_taxonomy', '3'),
(6, 7, 'meta_color_taxonomy', '#000000') ;

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Sin categoría', 'sin-categoria', 0),
(3, 'SLIDER HOME', 'slider-home', 1),
(4, 'Main Menu', 'main-menu', 0),
(5, 'Costa', 'costa', 0),
(6, 'Sierra', 'sierra', 0),
(7, 'Selva', 'selva', 0),
(8, 'WIDGETS', 'widgets', 1),
(9, 'PROMOCIONES', 'promociones', 1),
(10, 'NOSOTROS', 'nosotros', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'hatun_theme'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '55'),
(16, 1, 'session_tokens', 'a:1:{s:64:"5f0797dcad33468216e951e24fdb2e26c8b3636bb537a0c03b00652eb89a0dd8";a:4:{s:10:"expiration";i:1476375245;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476202445;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&editor_plain_text_paste_warning=1'),
(18, 1, 'wp_user-settings-time', '1476222130'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:25:"add-post-type-slider-home";i:1;s:28:"add-post-type-theme-services";i:2;s:28:"add-post-type-theme-products";i:3;s:26:"add-post-type-theme-images";i:4;s:26:"add-post-type-theme-videos";i:5;s:30:"add-post-type-theme-promotions";i:6;s:25:"add-post-type-theme-staff";i:7;s:12:"add-post_tag";i:8;s:15:"add-post_format";i:9;s:19:"add-images_category";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'closedpostboxes_theme-tours', 'a:2:{i:0;s:10:"postcustom";i:1;s:20:"qtranxs-meta-box-lsb";}'),
(23, 1, 'metaboxhidden_theme-tours', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'closedpostboxes_theme-promotions', 'a:2:{i:0;s:10:"postcustom";i:1;s:20:"qtranxs-meta-box-lsb";}'),
(25, 1, 'metaboxhidden_theme-promotions', 'a:1:{i:0;s:7:"slugdiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BkGw0HtE.5B.ys8NCK.uiyeYD06V.S1', 'admin', 'jgomez.4net@gmail.com', '', '2016-09-29 22:03:14', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

