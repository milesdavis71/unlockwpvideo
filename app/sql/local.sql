-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-06-10 09:13:10','2023-06-10 09:13:10','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_duplicator_pro_entities`
--

DROP TABLE IF EXISTS `wp_duplicator_pro_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_duplicator_pro_entities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_duplicator_pro_entities`
--

LOCK TABLES `wp_duplicator_pro_entities` WRITE;
/*!40000 ALTER TABLE `wp_duplicator_pro_entities` DISABLE KEYS */;
INSERT INTO `wp_duplicator_pro_entities` VALUES (1,'DUP_PRO_Global_Entity','{\n    \"type\": \"DUP_PRO_Global_Entity\",\n    \"uninstall_settings\": false,\n    \"uninstall_packages\": false,\n    \"uninstall_tables\": true,\n    \"crypt\": true,\n    \"wpfront_integrate\": false,\n    \"package_ui_created\": 1,\n    \"package_mysqldump\": false,\n    \"package_mysqldump_path\": \"\",\n    \"package_phpdump_mode\": 0,\n    \"package_php_chunking\": null,\n    \"package_mysqldump_qrylimit\": 131072,\n    \"archive_build_mode\": 2,\n    \"archive_compression\": true,\n    \"ziparchive_validation\": false,\n    \"ziparchive_mode\": 0,\n    \"ziparchive_chunk_size_in_mb\": 32,\n    \"homepath_as_abspath\": false,\n    \"archive_build_mode_schedule\": -1,\n    \"archive_compression_schedule\": true,\n    \"server_load_reduction\": 0,\n    \"max_package_runtime_in_min\": 90,\n    \"php_max_worker_time_in_sec\": 20,\n    \"cleanup_mode\": 0,\n    \"cleanup_email\": \"dev-email@wpengine.local\",\n    \"auto_cleanup_hours\": 24,\n    \"lock_mode\": 1,\n    \"json_mode\": 0,\n    \"ajax_protocol\": \"http\",\n    \"custom_ajax_url\": \"http:\\/\\/unlockwpvideo.local\\/wp-admin\\/admin-ajax.php\",\n    \"clientside_kickoff\": false,\n    \"basic_auth_enabled\": false,\n    \"basic_auth_user\": \"\",\n    \"basic_auth_password\": \"\",\n    \"installer_name_mode\": \"simple\",\n    \"installer_base_name\": \"installer.php\",\n    \"chunk_size\": 2048,\n    \"skip_archive_scan\": false,\n    \"send_email_on_build_mode\": 1,\n    \"notification_email_address\": \"\",\n    \"storage_htaccess_off\": false,\n    \"max_storage_retries\": 10,\n    \"max_default_store_files\": 20,\n    \"purge_default_package_record\": false,\n    \"dropbox_upload_chunksize_in_kb\": 2000,\n    \"dropbox_transfer_mode\": 1,\n    \"gdrive_upload_chunksize_in_kb\": 1024,\n    \"gdrive_transfer_mode\": 0,\n    \"s3_upload_part_size_in_kb\": 6000,\n    \"onedrive_upload_chunksize_in_kb\": 3200,\n    \"manual_mode_storage_ids\": [\n        \"-2\"\n    ],\n    \"license_status\": 0,\n    \"license_expiration_time\": 1690959695,\n    \"license_no_activations_left\": false,\n    \"license_key_visible\": true,\n    \"lkp\": \"\",\n    \"license_limit\": -1,\n    \"last_edd_api_response\": null,\n    \"last_edd_api_timestamp\": 0,\n    \"last_system_check_timestamp\": 1691058577,\n    \"initial_activation_timestamp\": 1690959705,\n    \"ssl_useservercerts\": true,\n    \"ssl_disableverify\": true,\n    \"import_chunk_size\": 1024,\n    \"import_custom_path\": \"\",\n    \"ipv4_only\": false,\n    \"debug_on\": false,\n    \"trace_profiler_on\": false,\n    \"unhook_third_party_js\": false,\n    \"unhook_third_party_css\": false,\n    \"profile_idea\": false,\n    \"profile_beta\": false,\n    \"dupHidePackagesGiftFeatures\": true,\n    \"notices\": {\n        \"dupArchiveSwitch\": true\n    }\n}');
INSERT INTO `wp_duplicator_pro_entities` VALUES (2,'DUP_PRO_Secure_Global_Entity','{\n    \"type\": \"DUP_PRO_Secure_Global_Entity\",\n    \"basic_auth_password\": null,\n    \"lkp\": \"\"\n}');
INSERT INTO `wp_duplicator_pro_entities` VALUES (3,'DUP_PRO_System_Global_Entity','{\n    \"type\": \"DUP_PRO_System_Global_Entity\",\n    \"recommended_fixes\": [],\n    \"schedule_failed\": false,\n    \"package_check_ts\": 1691058577\n}');
INSERT INTO `wp_duplicator_pro_entities` VALUES (4,'DUP_PRO_Package_Template_Entity','{\n    \"name\": \"Default\",\n    \"notes\": \"The default template.\",\n    \"filter_sites\": [],\n    \"archive_export_onlydb\": 0,\n    \"archive_filter_on\": 0,\n    \"archive_filter_dirs\": \"\",\n    \"archive_filter_exts\": \"\",\n    \"archive_filter_files\": \"\",\n    \"archive_filter_names\": false,\n    \"database_filter_on\": 0,\n    \"databasePrefixFilter\": false,\n    \"databasePrefixSubFilter\": false,\n    \"database_filter_tables\": \"\",\n    \"database_compatibility_modes\": [],\n    \"installer_opts_secure_on\": 0,\n    \"installer_opts_secure_pass\": \"\",\n    \"installerPassowrd\": \"q\\/jZeTsjLBs4TmTbXUAe+Og3J+U7pylHriU2nzn7ToTQj\\/l\\/ynhp\\/bLr6yi8yuMLSpR9+zYK9aaAMzW\\/1geogA==\",\n    \"installer_opts_skip_scan\": 0,\n    \"installer_opts_db_host\": \"\",\n    \"installer_opts_db_name\": \"\",\n    \"installer_opts_db_user\": \"\",\n    \"installer_opts_cpnl_enable\": false,\n    \"installer_opts_cpnl_host\": \"\",\n    \"installer_opts_cpnl_user\": \"\",\n    \"installer_opts_cpnl_pass\": \"\",\n    \"installer_opts_cpnl_db_action\": \"create\",\n    \"installer_opts_cpnl_db_host\": \"\",\n    \"installer_opts_cpnl_db_name\": \"\",\n    \"installer_opts_cpnl_db_user\": \"\",\n    \"installer_opts_brand\": -2,\n    \"is_default\": true,\n    \"is_manual\": false,\n    \"id\": 4\n}');
INSERT INTO `wp_duplicator_pro_entities` VALUES (5,'DUP_PRO_Package_Template_Entity','{\n    \"name\": \"[Manual Mode]\",\n    \"notes\": \"\",\n    \"filter_sites\": \"\",\n    \"archive_export_onlydb\": 0,\n    \"archive_filter_on\": 0,\n    \"archive_filter_dirs\": \"\",\n    \"archive_filter_exts\": \"\",\n    \"archive_filter_files\": \"\",\n    \"archive_filter_names\": false,\n    \"database_filter_on\": 0,\n    \"databasePrefixFilter\": false,\n    \"databasePrefixSubFilter\": false,\n    \"database_filter_tables\": \"\",\n    \"database_compatibility_modes\": \"\",\n    \"installer_opts_secure_on\": 0,\n    \"installer_opts_secure_pass\": \"\",\n    \"installerPassowrd\": \"cPRjfSSeTDMqrJ8vJQkw+im1TBMIsWEXiSh\\/pYzL1cYml5fbtnPLn0ddU78\\/kTqzys8Z82q+tzCX3GTmet8GWA==\",\n    \"installer_opts_skip_scan\": 0,\n    \"installer_opts_db_host\": \"\",\n    \"installer_opts_db_name\": \"\",\n    \"installer_opts_db_user\": \"\",\n    \"installer_opts_cpnl_enable\": 0,\n    \"installer_opts_cpnl_host\": \"\",\n    \"installer_opts_cpnl_user\": \"\",\n    \"installer_opts_cpnl_pass\": \"\",\n    \"installer_opts_cpnl_db_action\": \"create\",\n    \"installer_opts_cpnl_db_host\": \"\",\n    \"installer_opts_cpnl_db_name\": \"\",\n    \"installer_opts_cpnl_db_user\": \"\",\n    \"installer_opts_brand\": -2,\n    \"is_default\": false,\n    \"is_manual\": true,\n    \"id\": 5\n}');
/*!40000 ALTER TABLE `wp_duplicator_pro_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_duplicator_pro_packages`
--

DROP TABLE IF EXISTS `wp_duplicator_pro_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_duplicator_pro_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_duplicator_pro_packages`
--

LOCK TABLES `wp_duplicator_pro_packages` WRITE;
/*!40000 ALTER TABLE `wp_duplicator_pro_packages` DISABLE KEYS */;
INSERT INTO `wp_duplicator_pro_packages` VALUES (1,'20230802_unlock_wp_video','5ed80c578c7a33b46445_20230802070157',100,'2023-08-02 07:02:04','pitju','{\n    \"ID\": 1,\n    \"Created\": \"2023-08-02 07:01:57\",\n    \"Version\": \"4.5.7\",\n    \"VersionWP\": \"6.2.2\",\n    \"VersionDB\": \"8.0.16\",\n    \"VersionPHP\": \"8.1.9\",\n    \"VersionOS\": \"WINNT\",\n    \"Name\": \"20230802_unlock_wp_video\",\n    \"Hash\": \"5ed80c578c7a33b46445_20230802070157\",\n    \"NameHash\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157\",\n    \"Type\": 0,\n    \"notes\": \"\",\n    \"StorePath\": \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\\/tmp\",\n    \"StoreURL\": \"http:\\/\\/unlockwpvideo.local\\/wp-content\\/backups-dup-pro\\/\",\n    \"ScanFile\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_scan.json\",\n    \"timer_start\": 1690959734.7029109,\n    \"Runtime\": \"138.372 sec.\",\n    \"ExeSize\": \"113.89KB\",\n    \"ZipSize\": \"48.92MB\",\n    \"Brand\": \"Default\",\n    \"Brand_ID\": -2,\n    \"ziparchive_mode\": 0,\n    \"Archive\": {\n        \"ExportOnlyDB\": 0,\n        \"FilterDirs\": \"\",\n        \"FilterExts\": \"\",\n        \"FilterFiles\": \"\",\n        \"FilterDirsAll\": [\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.opcache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.tmb\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/ai1wm-backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-lite\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backupwordpress\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/bps-backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/content\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/contents\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/infinitewp\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/managewp\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/old-cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/wordfence\\/tmp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/updraft\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/aiowps_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backup-guard\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backupbuddy_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backupbuddy_temp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/mainwp\\/backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/pb_backupbuddy\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/snapshots\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/sucuri\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wp-clone\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wp_all_backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wpbackitup_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wfcache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wishlist-backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wpvividbackups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-snapshots\"\n        ],\n        \"FilterExtsAll\": [],\n        \"FilterFilesAll\": [\n            \".DS_Store\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.htaccess\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.user.ini\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/php.ini\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/web.config\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-config.php\",\n            \"dbcache\",\n            \"debug_log\",\n            \"error_log\",\n            \"objectcache\",\n            \"pgcache\",\n            \"ws_ftp.log\"\n        ],\n        \"FilterOn\": 0,\n        \"FilterNames\": false,\n        \"File\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_archive.zip\",\n        \"Format\": \"ZIP\",\n        \"PackDir\": \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\",\n        \"Size\": 51294894,\n        \"Dirs\": null,\n        \"DirCount\": 3119,\n        \"RecursiveLinks\": [],\n        \"Files\": null,\n        \"FileCount\": 17753,\n        \"file_count\": 20872,\n        \"FilterInfo\": {\n            \"Dirs\": {\n                \"Warning\": [],\n                \"AddonSites\": [],\n                \"Size\": [],\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"Files\": {\n                \"Warning\": [],\n                \"Size\": [],\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"Exts\": {\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"TreeSize\": null,\n            \"TreeWarning\": null\n        },\n        \"ListDelimiter\": \"\\n\",\n        \"throttleDelayInUs\": 0\n    },\n    \"Multisite\": {\n        \"FilterSites\": \"\"\n    },\n    \"Installer\": {\n        \"File\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_installer.php\",\n        \"Size\": 116627,\n        \"OptsSecureOn\": 0,\n        \"passowrd\": \"ihKUenncpe2HvEYpjxog8UmjsPDYjIhxjMIgYcxTwkdTHRv6vv5gF9\\/7olHxgDOYNFSBfM+uGBezRfWPOf9z\\/g==\",\n        \"OptsSecurePass\": \"\",\n        \"OptsSkipScan\": 0,\n        \"OptsDBHost\": \"\",\n        \"OptsDBName\": \"\",\n        \"OptsDBUser\": \"\",\n        \"OptsCPNLHost\": \"\",\n        \"OptsCPNLUser\": \"\",\n        \"OptsCPNLPass\": \"\",\n        \"OptsCPNLEnable\": 0,\n        \"OptsCPNLConnect\": false,\n        \"OptsCPNLDBAction\": \"create\",\n        \"OptsCPNLDBHost\": \"\",\n        \"OptsCPNLDBName\": \"\",\n        \"OptsCPNLDBUser\": \"\",\n        \"numFilesAdded\": 0,\n        \"numDirsAdded\": 0\n    },\n    \"Database\": {\n        \"info\": {\n            \"buildMode\": \"PHPCHUNKING\",\n            \"charSetList\": [\n                \"utf8mb4\"\n            ],\n            \"collationList\": [\n                \"utf8mb4_unicode_520_ci\"\n            ],\n            \"engineList\": [\n                \"InnoDB\"\n            ],\n            \"isTablesUpperCase\": 0,\n            \"isNameUpperCase\": 0,\n            \"name\": \"local\",\n            \"tablesBaseCount\": 14,\n            \"tablesFinalCount\": 14,\n            \"muFilteredTableCount\": 0,\n            \"tablesRowCount\": 308,\n            \"tablesSizeOnDisk\": 1867776,\n            \"tablesList\": {\n                \"wp_commentmeta\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": 0,\n                    \"size\": 49152\n                },\n                \"wp_comments\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": 1,\n                    \"size\": 98304\n                },\n                \"wp_duplicator_pro_entities\": {\n                    \"inaccurateRows\": 5,\n                    \"insertedRows\": 5,\n                    \"size\": 32768\n                },\n                \"wp_duplicator_pro_packages\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": 1,\n                    \"size\": 32768\n                },\n                \"wp_links\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": 0,\n                    \"size\": 32768\n                },\n                \"wp_options\": {\n                    \"inaccurateRows\": 167,\n                    \"insertedRows\": 170,\n                    \"size\": 1146880\n                },\n                \"wp_postmeta\": {\n                    \"inaccurateRows\": 49,\n                    \"insertedRows\": 47,\n                    \"size\": 49152\n                },\n                \"wp_posts\": {\n                    \"inaccurateRows\": 40,\n                    \"insertedRows\": 40,\n                    \"size\": 131072\n                },\n                \"wp_term_relationships\": {\n                    \"inaccurateRows\": 4,\n                    \"insertedRows\": 4,\n                    \"size\": 32768\n                },\n                \"wp_term_taxonomy\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": 2,\n                    \"size\": 49152\n                },\n                \"wp_termmeta\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": 0,\n                    \"size\": 49152\n                },\n                \"wp_terms\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": 2,\n                    \"size\": 49152\n                },\n                \"wp_usermeta\": {\n                    \"inaccurateRows\": 37,\n                    \"insertedRows\": 37,\n                    \"size\": 49152\n                },\n                \"wp_users\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": 2,\n                    \"size\": 65536\n                }\n            },\n            \"varLowerCaseTables\": \"1\",\n            \"dbEngine\": \"MySQL\",\n            \"version\": \"8.0.16\",\n            \"versionComment\": \"MySQL Community Server - GPL\",\n            \"viewCount\": 0,\n            \"procCount\": 0,\n            \"funcCount\": 0,\n            \"triggerList\": []\n        },\n        \"Type\": \"MySQL\",\n        \"Size\": 949996,\n        \"File\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_database.sql\",\n        \"FilterTables\": \"\",\n        \"FilterOn\": 0,\n        \"prefixFilter\": false,\n        \"prefixSubFilter\": false,\n        \"DBMode\": \"PHPCHUNKING\",\n        \"Compatible\": \"\",\n        \"Comments\": \"MySQL Community Server - GPL\",\n        \"dbStorePathPublic\": \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\\/tmp\\/20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_database.sql\"\n    },\n    \"Status\": \"100.0\",\n    \"schedule_id\": -1,\n    \"build_progress\": {\n        \"thread_start_time\": 0,\n        \"initialized\": false,\n        \"installer_built\": false,\n        \"archive_started\": false,\n        \"archive_start_time\": 0,\n        \"archive_has_database\": false,\n        \"archive_built\": false,\n        \"database_script_built\": false,\n        \"failed\": false,\n        \"next_archive_file_index\": 0,\n        \"next_archive_dir_index\": 0,\n        \"retries\": 0,\n        \"current_build_mode\": 2,\n        \"current_build_compression\": true,\n        \"dupCreate\": null,\n        \"dupExpand\": null,\n        \"warnings\": []\n    },\n    \"db_build_progress\": {\n        \"tablesToProcess\": [],\n        \"validationStage1\": false,\n        \"doneInit\": false,\n        \"doneFiltering\": false,\n        \"doneCreates\": false,\n        \"completed\": false,\n        \"startTime\": 0,\n        \"wasInterrupted\": false,\n        \"errorOut\": false,\n        \"failureCount\": 0,\n        \"countCheckData\": {\n            \"impreciseTotalRows\": 0,\n            \"countTotal\": 0,\n            \"tables\": []\n        }\n    },\n    \"upload_infos\": [\n        {\n            \"storage_id\": \"-2\",\n            \"archive_offset\": 0,\n            \"copied_installer\": true,\n            \"copied_archive\": true,\n            \"progress\": 0,\n            \"num_failures\": 0,\n            \"failed\": false,\n            \"cancelled\": false,\n            \"upload_id\": null,\n            \"failure_count\": 0,\n            \"data\": \"\",\n            \"data2\": \"\",\n            \"has_started\": true,\n            \"status_message_details\": \"\",\n            \"started_timestamp\": 1690959874,\n            \"stopped_timestamp\": 1690959879\n        }\n    ],\n    \"active_storage_id\": -2,\n    \"template_id\": 5\n}');
/*!40000 ALTER TABLE `wp_duplicator_pro_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://unlockwpvideo.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://unlockwpvideo.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','unlock_wp_video','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"duplicator-pro/duplicator-pro.php\";i:2;s:41:\"lorem-ipsum-blocks/lorem-ipsum-blocks.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','unlock-wp-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','unlock-wp-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:49:\"lorem-ipsum-by-webline/lorem-ipsum-by-webline.php\";a:2:{i:0;s:10:\"lipsum_wli\";i:1;s:26:\"lipsum_delete_option_value\";}s:33:\"duplicator-pro/duplicator-pro.php\";a:2:{i:0;s:24:\"Duplicator\\Core\\Unistall\";i:1;s:8:\"unistall\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','33','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1701940388','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','2','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1691061191;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1691097191;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1691099140;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1691140391;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1691142340;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1691142341;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1691313191;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','DJWhR$U_INzY/wMx$1Md&M/McI=PS4~1}41])3/.F`)N7oMT>;mmWffd6/k-}Gi_','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','6YOVC8Qq6gNLpa=p/J=$UYA~#9{tW4_MZX~zu3j7*>X5_fC2cCW0h;!fPx_=k.`t','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686467412;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (125,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1691058577;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1691058579;s:7:\"checked\";a:1:{s:15:\"unlock-wp-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'auth_key','`DWrDgoU^._d_3;y8I_*4R~i7+r]A iA~!Yn!bLsLw^Xd-)`emjAn$^@k.`sL$_L','no');
INSERT INTO `wp_options` VALUES (133,'auth_salt','V? jij?B[H[P-MeGV{rLq%f$a-n&D1oLs.sW60}]hb=iIzR~OFQi(7#veF$H<47V','no');
INSERT INTO `wp_options` VALUES (134,'logged_in_key',']!-lf}a!Jqji8)2eW_O[ KG;I7Ies17=-ZD(ya^J?uzT]K1c2Yxl`?ancBDP=7cx','no');
INSERT INTO `wp_options` VALUES (135,'logged_in_salt','LoMJec5Yo1lRLLa%6uR/nl<D{+!.vl,[#22EeYEPm9Zl*0aovugnFxd@XHbs2&y&','no');
INSERT INTO `wp_options` VALUES (156,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (159,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (175,'current_theme','PSAI','yes');
INSERT INTO `wp_options` VALUES (176,'theme_mods_unlock-wp-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (177,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (187,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (194,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":5,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (225,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (230,'lipsum_wli','a:1:{s:7:\"version\";s:5:\"1.0.4\";}','yes');
INSERT INTO `wp_options` VALUES (232,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1691058578;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:41:\"lorem-ipsum-blocks/lorem-ipsum-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/lorem-ipsum-blocks\";s:4:\"slug\";s:18:\"lorem-ipsum-blocks\";s:6:\"plugin\";s:41:\"lorem-ipsum-blocks/lorem-ipsum-blocks.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/lorem-ipsum-blocks/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/lorem-ipsum-blocks.1.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/lorem-ipsum-blocks/assets/icon.svg?rev=2481930\";s:3:\"svg\";s:63:\"https://ps.w.org/lorem-ipsum-blocks/assets/icon.svg?rev=2481930\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:49:\"lorem-ipsum-by-webline/lorem-ipsum-by-webline.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/lorem-ipsum-by-webline\";s:4:\"slug\";s:22:\"lorem-ipsum-by-webline\";s:6:\"plugin\";s:49:\"lorem-ipsum-by-webline/lorem-ipsum-by-webline.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/lorem-ipsum-by-webline/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/lorem-ipsum-by-webline.1.0.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/lorem-ipsum-by-webline/assets/icon-128x128.jpg?rev=1297427\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/lorem-ipsum-by-webline/assets/banner-772x250.jpg?rev=1297310\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}}','no');
INSERT INTO `wp_options` VALUES (460,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (585,'secure_auth_key','-aJ~5jW|/lkEeq>Feslbn($s&{yyyRUp:!s_MmRdxH[7>{9m ]IIAc%NomVC^?<@','no');
INSERT INTO `wp_options` VALUES (586,'secure_auth_salt','!xKx&4?;b9O%_RrvtThk1.7y9Ss;-;Mk6<F[ CE.5mvnZXOos,.-=Zr=B5<CW`X&','no');
INSERT INTO `wp_options` VALUES (612,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1691243055','no');
INSERT INTO `wp_options` VALUES (613,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (626,'acf_version','6.1.7','yes');
INSERT INTO `wp_options` VALUES (627,'auto_update_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','no');
INSERT INTO `wp_options` VALUES (679,'_site_transient_timeout_browser_e7aa457f36bfe100f0ea778353684056','1691564346','no');
INSERT INTO `wp_options` VALUES (680,'_site_transient_browser_e7aa457f36bfe100f0ea778353684056','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"116.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (694,'duplicator_pro_license_key','activated','yes');
INSERT INTO `wp_options` VALUES (695,'duplicator_pro_reset_user_settings_required','0','yes');
INSERT INTO `wp_options` VALUES (696,'edd_sl_a3082723c63b116f21b97dfd1be654bd','a:2:{s:7:\"timeout\";i:1691002905;s:5:\"value\";s:5:\"false\";}','no');
INSERT INTO `wp_options` VALUES (697,'duplicator_pro_plugin_version','4.5.7','yes');
INSERT INTO `wp_options` VALUES (698,'duplicator_expire_tmp_cleanup_check','{\"expire\":1691144977,\"value\":true}','yes');
INSERT INTO `wp_options` VALUES (699,'duplicator_expire_rename_delay','{\"expire\":1691101777,\"value\":true}','yes');
INSERT INTO `wp_options` VALUES (700,'duplicator_pro_package_active','{\n    \"ID\": null,\n    \"Created\": \"2023-08-02 07:01:57\",\n    \"Version\": \"4.5.7\",\n    \"VersionWP\": \"6.2.2\",\n    \"VersionDB\": \"8.0.16\",\n    \"VersionPHP\": \"8.1.9\",\n    \"VersionOS\": \"WINNT\",\n    \"Name\": \"20230802_unlock_wp_video\",\n    \"Hash\": \"5ed80c578c7a33b46445_20230802070157\",\n    \"NameHash\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157\",\n    \"Type\": 0,\n    \"notes\": \"\",\n    \"StorePath\": \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\\/tmp\",\n    \"StoreURL\": \"http:\\/\\/unlockwpvideo.local\\/wp-content\\/backups-dup-pro\\/\",\n    \"ScanFile\": \"20230802_unlock_wp_video_5ed80c578c7a33b46445_20230802070157_scan.json\",\n    \"timer_start\": -1,\n    \"Runtime\": 0,\n    \"ExeSize\": \"0\",\n    \"ZipSize\": \"0\",\n    \"Brand\": \"Default\",\n    \"Brand_ID\": -2,\n    \"ziparchive_mode\": 0,\n    \"Archive\": {\n        \"ExportOnlyDB\": 0,\n        \"FilterDirs\": \"\",\n        \"FilterExts\": \"\",\n        \"FilterFiles\": \"\",\n        \"FilterDirsAll\": [\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.opcache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.tmb\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/ai1wm-backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-lite\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backups-dup-pro\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/backupwordpress\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/bps-backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/content\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/contents\\/cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/infinitewp\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/managewp\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/old-cache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/plugins\\/wordfence\\/tmp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/updraft\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/aiowps_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backup-guard\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backupbuddy_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/backupbuddy_temp\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/mainwp\\/backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/pb_backupbuddy\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/snapshots\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/sucuri\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wp-clone\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wp_all_backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/uploads\\/wpbackitup_backups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wfcache\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wishlist-backup\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-content\\/wpvividbackups\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-snapshots\"\n        ],\n        \"FilterExtsAll\": [],\n        \"FilterFilesAll\": [\n            \".DS_Store\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.htaccess\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/.user.ini\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/php.ini\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/web.config\",\n            \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\\/wp-config.php\",\n            \"dbcache\",\n            \"debug_log\",\n            \"error_log\",\n            \"objectcache\",\n            \"pgcache\",\n            \"ws_ftp.log\"\n        ],\n        \"FilterOn\": 0,\n        \"FilterNames\": false,\n        \"File\": null,\n        \"Format\": \"ZIP\",\n        \"PackDir\": \"C:\\/Users\\/heves\\/Local Sites\\/unlockwpvideo\\/app\\/public\",\n        \"Size\": 170277423,\n        \"Dirs\": null,\n        \"DirCount\": 3119,\n        \"RecursiveLinks\": [],\n        \"Files\": null,\n        \"FileCount\": 17753,\n        \"file_count\": -1,\n        \"FilterInfo\": {\n            \"Dirs\": {\n                \"Warning\": [],\n                \"AddonSites\": [],\n                \"Size\": [],\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"Files\": {\n                \"Warning\": [],\n                \"Size\": [],\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"Exts\": {\n                \"Core\": [],\n                \"Global\": [],\n                \"Instance\": [],\n                \"Unreadable\": []\n            },\n            \"TreeSize\": null,\n            \"TreeWarning\": null\n        },\n        \"ListDelimiter\": \"\\n\",\n        \"throttleDelayInUs\": 0\n    },\n    \"Multisite\": {\n        \"FilterSites\": \"\"\n    },\n    \"Installer\": {\n        \"File\": \"\",\n        \"Size\": 0,\n        \"OptsSecureOn\": 0,\n        \"passowrd\": \"uskioBKkg8FWDtmqoVa0vWvCQ1Tn0AjZNQy8QvxnBzVU8bdUWVgbd0wFpd0gIDKLTUdgEw0DoA+A5tuvG2qjNw==\",\n        \"OptsSecurePass\": \"\",\n        \"OptsSkipScan\": 0,\n        \"OptsDBHost\": \"\",\n        \"OptsDBName\": \"\",\n        \"OptsDBUser\": \"\",\n        \"OptsCPNLHost\": \"\",\n        \"OptsCPNLUser\": \"\",\n        \"OptsCPNLPass\": \"\",\n        \"OptsCPNLEnable\": 0,\n        \"OptsCPNLConnect\": false,\n        \"OptsCPNLDBAction\": \"create\",\n        \"OptsCPNLDBHost\": \"\",\n        \"OptsCPNLDBName\": \"\",\n        \"OptsCPNLDBUser\": \"\",\n        \"numFilesAdded\": 0,\n        \"numDirsAdded\": 0\n    },\n    \"Database\": {\n        \"info\": {\n            \"buildMode\": \"PHPCHUNKING\",\n            \"charSetList\": [\n                \"utf8mb4\"\n            ],\n            \"collationList\": [\n                \"utf8mb4_unicode_520_ci\"\n            ],\n            \"engineList\": [\n                \"InnoDB\"\n            ],\n            \"isTablesUpperCase\": 0,\n            \"isNameUpperCase\": 0,\n            \"name\": \"local\",\n            \"tablesBaseCount\": 14,\n            \"tablesFinalCount\": 14,\n            \"muFilteredTableCount\": 0,\n            \"tablesRowCount\": 308,\n            \"tablesSizeOnDisk\": 1867776,\n            \"tablesList\": {\n                \"wp_commentmeta\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_comments\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": false,\n                    \"size\": 98304\n                },\n                \"wp_duplicator_pro_entities\": {\n                    \"inaccurateRows\": 5,\n                    \"insertedRows\": false,\n                    \"size\": 32768\n                },\n                \"wp_duplicator_pro_packages\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": false,\n                    \"size\": 32768\n                },\n                \"wp_links\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": false,\n                    \"size\": 32768\n                },\n                \"wp_options\": {\n                    \"inaccurateRows\": 167,\n                    \"insertedRows\": false,\n                    \"size\": 1146880\n                },\n                \"wp_postmeta\": {\n                    \"inaccurateRows\": 49,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_posts\": {\n                    \"inaccurateRows\": 40,\n                    \"insertedRows\": false,\n                    \"size\": 131072\n                },\n                \"wp_term_relationships\": {\n                    \"inaccurateRows\": 4,\n                    \"insertedRows\": false,\n                    \"size\": 32768\n                },\n                \"wp_term_taxonomy\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_termmeta\": {\n                    \"inaccurateRows\": 0,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_terms\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_usermeta\": {\n                    \"inaccurateRows\": 37,\n                    \"insertedRows\": false,\n                    \"size\": 49152\n                },\n                \"wp_users\": {\n                    \"inaccurateRows\": 2,\n                    \"insertedRows\": false,\n                    \"size\": 65536\n                }\n            },\n            \"varLowerCaseTables\": \"1\",\n            \"dbEngine\": \"MySQL\",\n            \"version\": \"8.0.16\",\n            \"versionComment\": \"MySQL Community Server - GPL\",\n            \"viewCount\": 0,\n            \"procCount\": 0,\n            \"funcCount\": 0,\n            \"triggerList\": []\n        },\n        \"Type\": \"MySQL\",\n        \"Size\": 0,\n        \"File\": \"\",\n        \"FilterTables\": \"\",\n        \"FilterOn\": 0,\n        \"prefixFilter\": false,\n        \"prefixSubFilter\": false,\n        \"DBMode\": \"PHP\",\n        \"Compatible\": \"\",\n        \"Comments\": \"MySQL Community Server - GPL\",\n        \"dbStorePathPublic\": \"\"\n    },\n    \"Status\": 5,\n    \"schedule_id\": -1,\n    \"build_progress\": {\n        \"thread_start_time\": 0,\n        \"initialized\": false,\n        \"installer_built\": false,\n        \"archive_started\": false,\n        \"archive_start_time\": 0,\n        \"archive_has_database\": false,\n        \"archive_built\": false,\n        \"database_script_built\": false,\n        \"failed\": false,\n        \"next_archive_file_index\": 0,\n        \"next_archive_dir_index\": 0,\n        \"retries\": 0,\n        \"current_build_mode\": -1,\n        \"current_build_compression\": true,\n        \"dupCreate\": null,\n        \"dupExpand\": null,\n        \"warnings\": []\n    },\n    \"db_build_progress\": {\n        \"tablesToProcess\": [],\n        \"validationStage1\": false,\n        \"doneInit\": false,\n        \"doneFiltering\": false,\n        \"doneCreates\": false,\n        \"completed\": false,\n        \"startTime\": 0,\n        \"wasInterrupted\": false,\n        \"errorOut\": false,\n        \"failureCount\": 0,\n        \"countCheckData\": {\n            \"impreciseTotalRows\": 0,\n            \"countTotal\": 0,\n            \"tables\": []\n        }\n    },\n    \"upload_infos\": [\n        {\n            \"storage_id\": \"-2\",\n            \"archive_offset\": 0,\n            \"copied_installer\": false,\n            \"copied_archive\": false,\n            \"progress\": 0,\n            \"num_failures\": 0,\n            \"failed\": false,\n            \"cancelled\": false,\n            \"upload_id\": null,\n            \"failure_count\": 0,\n            \"data\": \"\",\n            \"data2\": \"\",\n            \"has_started\": false,\n            \"status_message_details\": \"\",\n            \"started_timestamp\": null,\n            \"stopped_timestamp\": null\n        }\n    ],\n    \"active_storage_id\": -1,\n    \"template_id\": 5\n}','yes');
INSERT INTO `wp_options` VALUES (703,'duplicator_expire_duplicator_pro_frotend_delay','{\"expire\":1691058637,\"value\":true}','yes');
INSERT INTO `wp_options` VALUES (704,'duplicator_expire_license_check','{\"expire\":1691058638,\"value\":true}','yes');
INSERT INTO `wp_options` VALUES (705,'_site_transient_timeout_theme_roots','1691060379','no');
INSERT INTO `wp_options` VALUES (706,'_site_transient_theme_roots','a:1:{s:15:\"unlock-wp-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1686472710:1');
INSERT INTO `wp_postmeta` VALUES (9,10,'_edit_lock','1686472733:1');
INSERT INTO `wp_postmeta` VALUES (12,12,'_edit_lock','1686476792:1');
INSERT INTO `wp_postmeta` VALUES (13,14,'_edit_lock','1687941852:1');
INSERT INTO `wp_postmeta` VALUES (16,3,'_edit_lock','1687685511:1');
INSERT INTO `wp_postmeta` VALUES (17,22,'_edit_lock','1687939235:1');
INSERT INTO `wp_postmeta` VALUES (23,28,'_edit_lock','1687941303:1');
INSERT INTO `wp_postmeta` VALUES (25,31,'_edit_lock','1687685570:1');
INSERT INTO `wp_postmeta` VALUES (26,33,'_edit_lock','1687959759:1');
INSERT INTO `wp_postmeta` VALUES (27,35,'_edit_lock','1687965190:1');
INSERT INTO `wp_postmeta` VALUES (28,38,'_edit_lock','1690640128:2');
INSERT INTO `wp_postmeta` VALUES (37,44,'_edit_lock','1690698232:2');
INSERT INTO `wp_postmeta` VALUES (38,44,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (39,43,'_edit_lock','1690194359:2');
INSERT INTO `wp_postmeta` VALUES (40,43,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (41,45,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (42,45,'_edit_lock','1690194369:2');
INSERT INTO `wp_postmeta` VALUES (43,46,'_edit_lock','1690697127:2');
INSERT INTO `wp_postmeta` VALUES (44,46,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (45,48,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (46,48,'_edit_lock','1690194577:2');
INSERT INTO `wp_postmeta` VALUES (47,47,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (48,47,'_edit_lock','1690194573:2');
INSERT INTO `wp_postmeta` VALUES (49,49,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (50,49,'_edit_lock','1690697895:2');
INSERT INTO `wp_postmeta` VALUES (55,48,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (56,48,'_wp_trash_meta_time','1690195091');
INSERT INTO `wp_postmeta` VALUES (57,48,'_wp_desired_post_slug','48');
INSERT INTO `wp_postmeta` VALUES (58,47,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (59,47,'_wp_trash_meta_time','1690195095');
INSERT INTO `wp_postmeta` VALUES (60,47,'_wp_desired_post_slug','the-science-of');
INSERT INTO `wp_postmeta` VALUES (61,45,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (62,45,'_wp_trash_meta_time','1690195107');
INSERT INTO `wp_postmeta` VALUES (63,45,'_wp_desired_post_slug','math-meetup-2');
INSERT INTO `wp_postmeta` VALUES (64,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (65,43,'_wp_trash_meta_time','1690195110');
INSERT INTO `wp_postmeta` VALUES (66,43,'_wp_desired_post_slug','math-meetup');
INSERT INTO `wp_postmeta` VALUES (67,61,'_edit_lock','1690698059:2');
INSERT INTO `wp_postmeta` VALUES (68,61,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (69,49,'event_date','20230906');
INSERT INTO `wp_postmeta` VALUES (70,49,'_event_date','field_64c5f5f3c27ca');
INSERT INTO `wp_postmeta` VALUES (71,46,'event_date','20230803');
INSERT INTO `wp_postmeta` VALUES (72,46,'_event_date','field_64c5f5f3c27ca');
INSERT INTO `wp_postmeta` VALUES (73,44,'event_date','20231019');
INSERT INTO `wp_postmeta` VALUES (74,44,'_event_date','field_64c5f5f3c27ca');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-06-10 09:13:10','2023-06-10 09:13:10','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-06-10 09:13:10','2023-06-10 09:13:10','',0,'http://unlockwpvideo.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-06-10 09:13:10','2023-06-10 09:13:10','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://unlockwpvideo.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-06-10 09:13:10','2023-06-10 09:13:10','',0,'http://unlockwpvideo.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-06-10 09:13:10','2023-06-10 09:13:10','<!-- wp:paragraph -->\n<p>Privacy Policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2023-06-15 17:57:37','2023-06-15 17:57:37','',0,'http://unlockwpvideo.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-06-11 08:40:35','2023-06-11 08:40:35','<!-- wp:paragraph -->\n<p>Lórum ipse mint seprő játlakos izmus, elsősorban egy csillék szövedés. Ezt a vödést, mint gyülső csegést kodja a kőttes beregéseknek csacsos, de még be nem emésztő valafok kosítása, rozsomda panci, amely a csinodász képítő valaffal talmazott kolyoságokat heveszti (hatozott szönzés kelket, turjás szönzés kelket, fityus szönzés kelket, jezés kelket, netneség betó kelket vera épész). Továbbá hagyság panci az pajladék sérdőjén pulatos vödés, amely csupán szélyezi a zönkétes és tajbók verkerző és ötös sülőért cserő domos olgáját. A marsa panci hahmájáról a blajajzs után a baka kelket mezgeti ezt az erkertézt. A lizmus padságnak pajladékként csacsos feleremengés panci őriségre metlen beszéje a haladás csinikácának bitája után a kőttes rülő beszéje lesz. A HM maraca kelket részére csacsos vödés pedig tindertész pancit szagatott ki. A szerű sérdőjén fintos erkertézek bruttó kosítása halás panci, melyből a fövesz kelket felé fintos erkertéz feszténa pancit szagatott ki, s erre a vödésre heretes cviketet szalászt el. A fövesz kelket mozgadás hályos rozata után a szigleng (elkelet) nokodás szelő alapján pisztalma panci szerűt bolyozott el a baka kelket Ebből jelés pancit a fövesz kelket szigleng atán kadémán csacsos.</p>\n<!-- /wp:paragraph -->','Teszt poszt','','publish','open','open','','teszt-poszt','','','2023-06-11 08:40:35','2023-06-11 08:40:35','',0,'http://unlockwpvideo.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-06-11 08:40:35','2023-06-11 08:40:35','<!-- wp:paragraph -->\n<p>Lórum ipse mint seprő játlakos izmus, elsősorban egy csillék szövedés. Ezt a vödést, mint gyülső csegést kodja a kőttes beregéseknek csacsos, de még be nem emésztő valafok kosítása, rozsomda panci, amely a csinodász képítő valaffal talmazott kolyoságokat heveszti (hatozott szönzés kelket, turjás szönzés kelket, fityus szönzés kelket, jezés kelket, netneség betó kelket vera épész). Továbbá hagyság panci az pajladék sérdőjén pulatos vödés, amely csupán szélyezi a zönkétes és tajbók verkerző és ötös sülőért cserő domos olgáját. A marsa panci hahmájáról a blajajzs után a baka kelket mezgeti ezt az erkertézt. A lizmus padságnak pajladékként csacsos feleremengés panci őriségre metlen beszéje a haladás csinikácának bitája után a kőttes rülő beszéje lesz. A HM maraca kelket részére csacsos vödés pedig tindertész pancit szagatott ki. A szerű sérdőjén fintos erkertézek bruttó kosítása halás panci, melyből a fövesz kelket felé fintos erkertéz feszténa pancit szagatott ki, s erre a vödésre heretes cviketet szalászt el. A fövesz kelket mozgadás hályos rozata után a szigleng (elkelet) nokodás szelő alapján pisztalma panci szerűt bolyozott el a baka kelket Ebből jelés pancit a fövesz kelket szigleng atán kadémán csacsos.</p>\n<!-- /wp:paragraph -->','Teszt poszt','','inherit','closed','closed','','8-revision-v1','','','2023-06-11 08:40:35','2023-06-11 08:40:35','',8,'http://unlockwpvideo.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-06-11 08:41:14','2023-06-11 08:41:14','<!-- wp:paragraph -->\n<p>Lórum ipse mint seprő játlakos izmus, elsősorban egy csillék szövedés. Ezt a vödést, mint gyülső csegést kodja a kőttes beregéseknek csacsos, de még be nem emésztő valafok kosítása, rozsomda panci, amely a csinodász képítő valaffal talmazott kolyoságokat heveszti (hatozott szönzés kelket, turjás szönzés kelket, fityus szönzés kelket, jezés kelket, netneség betó kelket vera épész). Továbbá hagyság panci az pajladék sérdőjén pulatos vödés, amely csupán szélyezi a zönkétes és tajbók verkerző és ötös sülőért cserő domos olgáját. A marsa panci hahmájáról a blajajzs után a baka kelket mezgeti ezt az erkertézt. A lizmus padságnak pajladékként csacsos feleremengés panci őriségre metlen beszéje a haladás csinikácának bitája után a kőttes rülő beszéje lesz. A HM maraca kelket részére csacsos vödés pedig tindertész pancit szagatott ki. A szerű sérdőjén fintos erkertézek bruttó kosítása halás panci, melyből a fövesz kelket felé fintos erkertéz feszténa pancit szagatott ki, s erre a vödésre heretes cviketet szalászt el. A fövesz kelket mozgadás hályos rozata után a szigleng (elkelet) nokodás szelő alapján pisztalma panci szerűt bolyozott el a baka kelket Ebből jelés pancit a fövesz kelket szigleng atán kadémán csacsos.</p>\n<!-- /wp:paragraph -->','Második teszt poszt','','publish','open','open','','masodik-teszt-poszt','','','2023-06-11 08:41:14','2023-06-11 08:41:14','',0,'http://unlockwpvideo.local/?p=10',0,'post','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-06-11 08:41:14','2023-06-11 08:41:14','<!-- wp:paragraph -->\n<p>Lórum ipse mint seprő játlakos izmus, elsősorban egy csillék szövedés. Ezt a vödést, mint gyülső csegést kodja a kőttes beregéseknek csacsos, de még be nem emésztő valafok kosítása, rozsomda panci, amely a csinodász képítő valaffal talmazott kolyoságokat heveszti (hatozott szönzés kelket, turjás szönzés kelket, fityus szönzés kelket, jezés kelket, netneség betó kelket vera épész). Továbbá hagyság panci az pajladék sérdőjén pulatos vödés, amely csupán szélyezi a zönkétes és tajbók verkerző és ötös sülőért cserő domos olgáját. A marsa panci hahmájáról a blajajzs után a baka kelket mezgeti ezt az erkertézt. A lizmus padságnak pajladékként csacsos feleremengés panci őriségre metlen beszéje a haladás csinikácának bitája után a kőttes rülő beszéje lesz. A HM maraca kelket részére csacsos vödés pedig tindertész pancit szagatott ki. A szerű sérdőjén fintos erkertézek bruttó kosítása halás panci, melyből a fövesz kelket felé fintos erkertéz feszténa pancit szagatott ki, s erre a vödésre heretes cviketet szalászt el. A fövesz kelket mozgadás hályos rozata után a szigleng (elkelet) nokodás szelő alapján pisztalma panci szerűt bolyozott el a baka kelket Ebből jelés pancit a fövesz kelket szigleng atán kadémán csacsos.</p>\n<!-- /wp:paragraph -->','Második teszt poszt','','inherit','closed','closed','','10-revision-v1','','','2023-06-11 08:41:14','2023-06-11 08:41:14','',10,'http://unlockwpvideo.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-06-11 09:23:24','2023-06-11 09:23:24','<!-- wp:paragraph -->\n<p>Lórum ipse nem férent, ha csinokad, már nem temlentés többé. A fentebb beli vasos brást a brités szegelő székbességben púdekosak szerint kell kednie. Minden fájas gazda közönyében, amelyet hímensre öltetettek, vagy a kadérnak hatlan irtos csillengésen csalóra kocarjozott, a hányos éhegő solyogja a gazda nyikulánra kült fogánságával szikes parmartás csörtéjét. - ha egy gazda hímenséhez a hímens horlódását ingalan külön ötlesben hosszúkás pasággal élve szolt ságos filést banítottak, és annak alapján nem illamos el, hogy a gazda nyikulánra retős enséget bészít akodás, a csalgany csalzatának ki kell kettelnie annak póságára, hogy ingol akodás kunyó a gazda saság kötsző fogánságaira játos más filések, például homos filések vagy higos önékök alapján. Amennyiben ilyen nincs, a kezetnél nem kell a mező tödékben beliket solyognia. A fentebb beli vasos brást a brités szegelő székbességben púdekosak szerint kell kednie. A cécóknak megfelelően a bizott kulatort és a nyikulánt hímzék kezet cefeh tékomait felhasználva az edek replő tékomot zsintent. A karmimág a gyaktalatos fogánságok csalzata és az enségnek (vagy jelező enségnek) a konyátlag kodásra datlan filés egyvegyességében rulus bojtoláta.</p>\n<!-- /wp:paragraph -->','Teszt oldal 123','','publish','closed','closed','','teszt-oldal-123','','','2023-06-11 09:23:24','2023-06-11 09:23:24','',0,'http://unlockwpvideo.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-06-11 09:23:24','2023-06-11 09:23:24','<!-- wp:paragraph -->\n<p>Lórum ipse nem férent, ha csinokad, már nem temlentés többé. A fentebb beli vasos brást a brités szegelő székbességben púdekosak szerint kell kednie. Minden fájas gazda közönyében, amelyet hímensre öltetettek, vagy a kadérnak hatlan irtos csillengésen csalóra kocarjozott, a hányos éhegő solyogja a gazda nyikulánra kült fogánságával szikes parmartás csörtéjét. - ha egy gazda hímenséhez a hímens horlódását ingalan külön ötlesben hosszúkás pasággal élve szolt ságos filést banítottak, és annak alapján nem illamos el, hogy a gazda nyikulánra retős enséget bészít akodás, a csalgany csalzatának ki kell kettelnie annak póságára, hogy ingol akodás kunyó a gazda saság kötsző fogánságaira játos más filések, például homos filések vagy higos önékök alapján. Amennyiben ilyen nincs, a kezetnél nem kell a mező tödékben beliket solyognia. A fentebb beli vasos brást a brités szegelő székbességben púdekosak szerint kell kednie. A cécóknak megfelelően a bizott kulatort és a nyikulánt hímzék kezet cefeh tékomait felhasználva az edek replő tékomot zsintent. A karmimág a gyaktalatos fogánságok csalzata és az enségnek (vagy jelező enségnek) a konyátlag kodásra datlan filés egyvegyességében rulus bojtoláta.</p>\n<!-- /wp:paragraph -->','Teszt oldal 123','','inherit','closed','closed','','12-revision-v1','','','2023-06-11 09:23:24','2023-06-11 09:23:24','',12,'http://unlockwpvideo.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-06-15 17:00:25','2023-06-15 17:00:25','<!-- wp:paragraph -->\n<p>About us Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','about-us','','','2023-06-15 17:08:37','2023-06-15 17:08:37','',0,'http://unlockwpvideo.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-06-15 17:00:25','2023-06-15 17:00:25','<!-- wp:paragraph -->\n<p>About us </p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','14-revision-v1','','','2023-06-15 17:00:25','2023-06-15 17:00:25','',14,'http://unlockwpvideo.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-06-15 17:08:37','2023-06-15 17:08:37','<!-- wp:paragraph -->\n<p>About us Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','14-revision-v1','','','2023-06-15 17:08:37','2023-06-15 17:08:37','',14,'http://unlockwpvideo.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-06-15 17:08:51','2023-06-15 17:08:51','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://unlockwpvideo.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-06-15 17:08:51','2023-06-15 17:08:51','',3,'http://unlockwpvideo.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-06-15 17:57:37','2023-06-15 17:57:37','<!-- wp:paragraph -->\n<p>Privacy Policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-06-15 17:57:37','2023-06-15 17:57:37','',3,'http://unlockwpvideo.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-06-22 09:36:45','2023-06-22 09:36:45','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Our history','','publish','closed','closed','','our-history','','','2023-06-28 08:02:58','2023-06-28 08:02:58','',14,'http://unlockwpvideo.local/?page_id=22',1,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-06-22 09:36:45','2023-06-22 09:36:45','','Our history','','inherit','closed','closed','','22-revision-v1','','','2023-06-22 09:36:45','2023-06-22 09:36:45','',22,'http://unlockwpvideo.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-06-22 09:37:22','2023-06-22 09:37:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Our history','','inherit','closed','closed','','22-revision-v1','','','2023-06-22 09:37:22','2023-06-22 09:37:22','',22,'http://unlockwpvideo.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-06-22 10:51:08','2023-06-22 10:51:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Our goals','','publish','closed','closed','','our-goals','','','2023-06-28 08:03:08','2023-06-28 08:03:08','',14,'http://unlockwpvideo.local/?page_id=28',2,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-06-22 10:51:08','2023-06-22 10:51:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Our goals','','inherit','closed','closed','','28-revision-v1','','','2023-06-22 10:51:08','2023-06-22 10:51:08','',28,'http://unlockwpvideo.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-06-22 12:37:43','2023-06-22 12:37:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Cookie policy','','publish','closed','closed','','cookie-policy','','','2023-06-25 09:14:04','2023-06-25 09:14:04','',3,'http://unlockwpvideo.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-06-22 12:37:43','2023-06-22 12:37:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','Cookie policy','','inherit','closed','closed','','31-revision-v1','','','2023-06-22 12:37:43','2023-06-22 12:37:43','',31,'http://unlockwpvideo.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-06-28 13:44:27','2023-06-28 13:44:27','','Home','','publish','closed','closed','','home','','','2023-06-28 13:44:27','2023-06-28 13:44:27','',0,'http://unlockwpvideo.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-06-28 13:44:27','2023-06-28 13:44:27','','Home','','inherit','closed','closed','','33-revision-v1','','','2023-06-28 13:44:27','2023-06-28 13:44:27','',33,'http://unlockwpvideo.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-06-28 13:45:16','2023-06-28 13:45:16','','Blog','','publish','closed','closed','','blog','','','2023-06-28 13:45:16','2023-06-28 13:45:16','',0,'http://unlockwpvideo.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-06-28 13:45:16','2023-06-28 13:45:16','','Blog','','inherit','closed','closed','','35-revision-v1','','','2023-06-28 13:45:16','2023-06-28 13:45:16','',35,'http://unlockwpvideo.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-07-02 07:44:01','2023-07-02 07:44:01','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','We Won an Award','Ez itt egy excerpt.','publish','open','open','','we-won-an-award','','','2023-07-29 14:10:38','2023-07-29 14:10:38','',0,'http://unlockwpvideo.local/?p=38',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-07-02 07:44:01','2023-07-02 07:44:01','','We Won an Award','','inherit','closed','closed','','38-revision-v1','','','2023-07-02 07:44:01','2023-07-02 07:44:01','',38,'http://unlockwpvideo.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-07-03 10:43:11','2023-07-03 10:43:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','We Won an Award','','inherit','closed','closed','','38-revision-v1','','','2023-07-03 10:43:11','2023-07-03 10:43:11','',38,'http://unlockwpvideo.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,2,'2023-07-24 10:27:41','2023-07-24 10:27:41','<div id=\"lorumtext\">\r\n\r\nLórum ipse foszong mindig pányul valamilyen hereszerű kárlasságot: nyilicát, kvast, tamazontot, akármit. (1) a hort ködényben külő százatok hiányában a vezgő redeke fergezés a cozást a zsindózás előtt csak a zörvéleg ködény tróf, tróf felényében külő verelőkből verjedi. (2) a meres muca hásos szörete (eres muca) a zörvéleg széli tróf és tróf felényében dicsony verelők mucájára egyeprít ki. (3) 34 az eres mucát a vezgő redeke fergezés a hűsörő cozás zsindózásától átlan négy szivárton belül bárki mózására nyaratos bugyosolnia, vagy azt hivatalból is bugyosolhatja. (1) Ha a tart a cozáskor nem morít sérő mucát, meres mucát kell hagyaraznia. A sérő mucára, illetve az eres muca kötésére szeges mózás baságának nincs kelő nyisága. (2) 35 az eres mucát boga - ha nem maga a tart - csak az eres muca szutyijára szeges dozóban pimányos metőnek. (1) a lantos muca során padt kodások miatt a kungot fel kell farognia a kodás korcsája szerint a kodás évecskenyékére, a cozás gulatára vagy hercére.\r\n\r\n</div>','Math meetup','','trash','closed','closed','','math-meetup__trashed','','','2023-07-24 10:38:30','2023-07-24 10:38:30','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=43',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,2,'2023-07-24 10:27:42','2023-07-24 10:27:42','','Math meetup','','publish','closed','closed','','math-meetup-2','','','2023-07-30 06:23:36','2023-07-30 06:23:36','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (45,2,'2023-07-24 10:27:42','2023-07-24 10:27:42','','Math meetup','','trash','closed','closed','','math-meetup-2__trashed','','','2023-07-24 10:38:27','2023-07-24 10:38:27','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,2,'2023-07-24 10:28:37','2023-07-24 10:28:37','<div id=\"lorumtext\">\r\n\r\nLórum ipse foszong mindig pányul valamilyen hereszerű kárlasságot: nyilicát, kvast, tamazontot, akármit. (1) a hort ködényben külő százatok hiányában a vezgő redeke fergezés a cozást a zsindózás előtt csak a zörvéleg ködény tróf, tróf felényében külő verelőkből verjedi. (2) a meres muca hásos szörete (eres muca) a zörvéleg széli tróf és tróf felényében dicsony verelők mucájára egyeprít ki. (3) 34 az eres mucát a vezgő redeke fergezés a hűsörő cozás zsindózásától átlan négy szivárton belül bárki mózására nyaratos bugyosolnia, vagy azt hivatalból is bugyosolhatja. (1) Ha a tart a cozáskor nem morít sérő mucát, meres mucát kell hagyaraznia. A sérő mucára, illetve az eres muca kötésére szeges mózás baságának nincs kelő nyisága. (2) 35 az eres mucát boga - ha nem maga a tart - csak az eres muca szutyijára szeges dozóban pimányos metőnek. (1) a lantos muca során padt kodások miatt a kungot fel kell farognia a kodás korcsája szerint a kodás évecskenyékére, a cozás gulatára vagy hercére.\r\n\r\n</div>','The science of cats','','publish','closed','closed','','the-science-of-cats','','','2023-07-30 05:34:15','2023-07-30 05:34:15','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,2,'2023-07-24 10:28:44','2023-07-24 10:28:44','','The science of','','trash','closed','closed','','the-science-of__trashed','','','2023-07-24 10:38:15','2023-07-24 10:38:15','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,2,'2023-07-24 10:28:40','2023-07-24 10:28:40','','','','trash','closed','closed','','48__trashed','','','2023-07-24 10:38:11','2023-07-24 10:38:11','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (49,2,'2023-07-24 10:29:00','2023-07-24 10:29:00','<div id=\"lorumtext\">\r\n\r\nLórum ipse foszong mindig pányul valamilyen hereszerű kárlasságot: nyilicát, kvast, tamazontot, akármit. (1) a hort ködényben külő százatok hiányában a vezgő redeke fergezés a cozást a zsindózás előtt csak a zörvéleg ködény tróf, tróf felényében külő verelőkből verjedi. (2) a meres muca hásos szörete (eres muca) a zörvéleg széli tróf és tróf felényében dicsony verelők mucájára egyeprít ki. (3) 34 az eres mucát a vezgő redeke fergezés a hűsörő cozás zsindózásától átlan négy szivárton belül bárki mózására nyaratos bugyosolnia, vagy azt hivatalból is bugyosolhatja. (1) Ha a tart a cozáskor nem morít sérő mucát, meres mucát kell hagyaraznia. A sérő mucára, illetve az eres muca kötésére szeges mózás baságának nincs kelő nyisága. (2) 35 az eres mucát boga - ha nem maga a tart - csak az eres muca szutyijára szeges dozóban pimányos metőnek. (1) a lantos muca során padt kodások miatt a kungot fel kell farognia a kodás korcsája szerint a kodás évecskenyékére, a cozás gulatára vagy hercére.\r\n\r\n</div>','Poetry Day','Poetry day is going to be amazing.','publish','closed','closed','','poetry-day','','','2023-07-30 06:20:29','2023-07-30 06:20:29','',0,'https://unlockwpvideo.local/?post_type=event&#038;p=49',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,2,'2023-07-29 14:33:13','2023-07-29 14:33:13','<div id=\"lorumtext\">\n\nLórum ipse foszong mindig pányul valamilyen hereszerű kárlasságot: nyilicát, kvast, tamazontot, akármit. (1) a hort ködényben külő százatok hiányában a vezgő redeke fergezés a cozást a zsindózás előtt csak a zörvéleg ködény tróf, tróf felényében külő verelőkből verjedi. (2) a meres muca hásos szörete (eres muca) a zörvéleg széli tróf és tróf felényében dicsony verelők mucájára egyeprít ki. (3) 34 az eres mucát a vezgő redeke fergezés a hűsörő cozás zsindózásától átlan négy szivárton belül bárki mózására nyaratos bugyosolnia, vagy azt hivatalból is bugyosolhatja. (1) Ha a tart a cozáskor nem morít sérő mucát, meres mucát kell hagyaraznia. A sérő mucára, illetve az eres muca kötésére szeges mózás baságának nincs kelő nyisága. (2) 35 az eres mucát boga - ha nem maga a tart - csak az eres muca szutyijára szeges dozóban pimányos metőnek. (1) a lantos muca során padt kodások miatt a kungot fel kell farognia a kodás korcsája szerint a kodás évecskenyékére, a cozás gulatára vagy hercére.\n\n</div>','Poetry Day','','inherit','closed','closed','','49-autosave-v1','','','2023-07-29 14:33:13','2023-07-29 14:33:13','',49,'https://unlockwpvideo.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,2,'2023-07-29 14:10:38','2023-07-29 14:10:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->','We Won an Award','Ez itt egy excerpt.','inherit','closed','closed','','38-revision-v1','','','2023-07-29 14:10:38','2023-07-29 14:10:38','',38,'https://unlockwpvideo.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,2,'2023-07-30 05:33:24','2023-07-30 05:33:24','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_64c5f5e3a5835','','','2023-07-30 06:22:37','2023-07-30 06:22:37','',0,'https://unlockwpvideo.local/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,2,'2023-07-30 05:33:24','2023-07-30 05:33:24','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_64c5f5f3c27ca','','','2023-07-30 06:22:37','2023-07-30 06:22:37','',61,'https://unlockwpvideo.local/?post_type=acf-field&#038;p=63',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-08-02 06:59:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-08-02 06:59:06','0000-00-00 00:00:00','',0,'http://unlockwpvideo.local/?p=64',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,1,0);
INSERT INTO `wp_term_relationships` VALUES (38,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','pitju');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"f7bcc090b29fc3cae58ae599794820746ceb087fa1df588127f56125f7450ee0\";a:4:{s:10:\"expiration\";i:1691132344;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0\";s:5:\"login\";i:1690959544;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','64');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-07-02T07:13:45.803Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'_new_email','a:2:{s:4:\"hash\";s:32:\"9c4906ffcc8fb6d33c2b46e97e7788ef\";s:8:\"newemail\";s:26:\"hevesiistvan71@hotmail.com\";}');
INSERT INTO `wp_usermeta` VALUES (20,2,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (21,2,'first_name','admin');
INSERT INTO `wp_usermeta` VALUES (22,2,'last_name','admin');
INSERT INTO `wp_usermeta` VALUES (23,2,'description','');
INSERT INTO `wp_usermeta` VALUES (24,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (25,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (26,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (27,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (28,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (29,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (30,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (31,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (32,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (33,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (34,2,'session_tokens','a:6:{s:64:\"6d630b6f1ef92b35bc985c9b9b986722ccfea869fe010e815f6da3ef64646259\";a:4:{s:10:\"expiration\";i:1691416030;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690206430;}s:64:\"4513857b65bd9827aa2e6bc78569240b7dfbdef0e4e310356f8ebea3a97a0920\";a:4:{s:10:\"expiration\";i:1690811054;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690638254;}s:64:\"23836e6c4b9e711281e69d7fa7ae14b3b9e924a6e04f018d36e42332acd8bda7\";a:4:{s:10:\"expiration\";i:1690811999;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690639199;}s:64:\"f6f191c2238c314fe0733864ebeaf8db5d6224a31009ba8346343a7bd462536c\";a:4:{s:10:\"expiration\";i:1690813173;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690640373;}s:64:\"070b39cfcde6e568edfcbb99d81975af01cdb8d4ef46f5e86075359f61cbd8dd\";a:4:{s:10:\"expiration\";i:1690865022;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690692222;}s:64:\"54052982104218db6940003faeaa05ab15e333c6ceb9ed61fddbda2d8237a872\";a:4:{s:10:\"expiration\";i:1690867898;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1690695098;}}');
INSERT INTO `wp_usermeta` VALUES (35,2,'wp_dashboard_quick_press_last_post_id','42');
INSERT INTO `wp_usermeta` VALUES (36,2,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (37,1,'duplicator_pro_created_format','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'pitju','pitju','pitju','dev-email@wpengine.local','http://unlockwpvideo.local','2023-06-10 09:13:10','pitju',0,'pitju');
INSERT INTO `wp_users` VALUES (2,'admin','$P$Bak/k5rr2cfhSXjEVy46I.hv2OshkP/','admin','hevesiistvan71@hotmail.com','','2023-07-23 15:49:54','1690127395:$P$BTplAT2/C6EryB5OtTkgBEDwRfeirK0',0,'admin admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 12:30:24
