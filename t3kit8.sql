-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: db    Database: t3kit
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category`
--

DROP TABLE IF EXISTS `cf_cache_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category`
--

LOCK TABLES `cf_cache_news_category` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category_tags`
--

DROP TABLE IF EXISTS `cf_cache_news_category_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category_tags`
--

LOCK TABLES `cf_cache_news_category_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache`
--

DROP TABLE IF EXISTS `cf_themes_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache`
--

LOCK TABLES `cf_themes_cache` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_themes_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache_tags`
--

DROP TABLE IF EXISTS `cf_themes_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache_tags`
--

LOCK TABLES `cf_themes_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_themes_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr`
--

DROP TABLE IF EXISTS `cf_tx_solr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_tx_solr`
--

LOCK TABLES `cf_tx_solr` WRITE;
/*!40000 ALTER TABLE `cf_tx_solr` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_tx_solr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr_configuration`
--

DROP TABLE IF EXISTS `cf_tx_solr_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_tx_solr_configuration`
--

LOCK TABLES `cf_tx_solr_configuration` WRITE;
/*!40000 ALTER TABLE `cf_tx_solr_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_tx_solr_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr_configuration_tags`
--

DROP TABLE IF EXISTS `cf_tx_solr_configuration_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr_configuration_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_tx_solr_configuration_tags`
--

LOCK TABLES `cf_tx_solr_configuration_tags` WRITE;
/*!40000 ALTER TABLE `cf_tx_solr_configuration_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_tx_solr_configuration_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr_tags`
--

DROP TABLE IF EXISTS `cf_tx_solr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_tx_solr_tags`
--

LOCK TABLES `cf_tx_solr_tags` WRITE;
/*!40000 ALTER TABLE `cf_tx_solr_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_tx_solr_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_themes_icon` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(11) NOT NULL DEFAULT '0',
  `tx_themet3kit_fixed_post_var_conf` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `content_from_pid_deleted` (`content_from_pid`,`deleted`),
  KEY `doktype_no_search_deleted` (`doktype`,`no_search`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1489566843,256,0,1,0,31,27,0,0,1489509716,1,0,'Home',1,NULL,1,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1489567236,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__StartPage','',NULL,0,0,'','',0,0,0,'0');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_countries`
--

DROP TABLE IF EXISTS `static_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_countries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `cn_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `cn_parent_tr_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_official_name_local` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_official_name_en` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_capital` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_tldomain` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_currency_uid` int(11) NOT NULL DEFAULT '0',
  `cn_currency_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_currency_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_phone` int(11) NOT NULL DEFAULT '0',
  `cn_eu_member` smallint(6) NOT NULL DEFAULT '0',
  `cn_uno_member` smallint(6) NOT NULL DEFAULT '0',
  `cn_address_format` smallint(6) NOT NULL DEFAULT '0',
  `cn_zone_flag` smallint(6) NOT NULL DEFAULT '0',
  `cn_short_local` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_short_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_country_zones` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_countries`
--

LOCK TABLES `static_countries` WRITE;
/*!40000 ALTER TABLE `static_countries` DISABLE KEYS */;
INSERT INTO `static_countries` VALUES (1,0,0,'AD','AND',20,10,39,'Principat d\'Andorra','Principality of Andorra','Andorra la Vella','ad',49,'EUR',978,376,0,1,1,0,'Andorra','Andorra',0),(2,0,0,'AE','ARE',784,9,145,'الإمارات العربيّة المتّحدة','United Arab Emirates','Abu Dhabi','ae',2,'AED',784,971,0,1,1,0,'الإمارات العربيّة المتّحدة','United Arab Emirates',0),(3,0,0,'AF','AFG',4,30,34,'د افغانستان اسلامي دولت','Islamic Republic of Afghanistan','Kabul','af',171,'AFN',971,93,0,1,2,0,'افغانستان','Afghanistan',0),(4,0,0,'AG','ATG',28,19,29,'Antigua and Barbuda','Antigua and Barbuda','St John\'s','ag',163,'XCD',951,1268,0,1,1,0,'Antigua and Barbuda','Antigua and Barbuda',0),(5,0,0,'AI','AIA',660,19,29,'Anguilla','Anguilla','The Valley','ai',163,'XCD',951,1264,0,0,1,0,'Anguilla','Anguilla',0),(6,0,0,'AL','ALB',8,10,39,'Republika e Shqipërisë','Republic of Albania','Tirana','al',4,'ALL',8,355,0,1,1,0,'Shqipëria','Albania',0),(7,0,0,'AM','ARM',51,9,145,'Հայաստանի Հանրապետություն','Republic of Armenia','Yerevan','am',5,'AMD',51,374,0,1,1,0,'Հայաստան','Armenia',0),(8,0,1,'AN','ANT',530,19,29,'Nederlandse Antillen','Netherlands Antilles','Willemstad','an',6,'ANG',532,599,0,0,1,0,'Nederlandse Antillen','Netherlands Antilles',0),(9,0,0,'AO','AGO',24,23,17,'República de Angola','Republic of Angola','Luanda','ao',7,'AOA',973,244,0,1,1,0,'Angola','Angola',0),(10,0,0,'AQ','ATA',10,0,0,'Antarctica','Antarctica','','aq',0,'',0,67212,0,0,1,0,'Antarctica','Antarctica',0),(11,0,0,'AR','ARG',32,16,5,'República Argentina','Argentine Republic','Buenos Aires','ar',8,'ARS',32,54,0,1,2,0,'Argentina','Argentina',0),(12,0,0,'AS','ASM',16,28,61,'Amerika Samoa','American Samoa','Pago Pago','as',155,'USD',840,685,0,0,1,0,'Amerika Samoa','American Samoa',0),(13,0,0,'AT','AUT',40,13,155,'Republik Österreich','Republic of Austria','Vienna','at',49,'EUR',978,43,1,1,1,0,'Österreich','Austria',9),(14,0,0,'AU','AUS',36,25,53,'Commonwealth of Australia','Commonwealth of Australia','Canberra','au',9,'AUD',36,61,0,1,3,0,'Australia','Australia',8),(15,0,0,'AW','ABW',533,19,29,'Aruba','Aruba','Oranjestad','aw',10,'AWG',533,297,0,0,0,0,'Aruba','Aruba',0),(16,0,0,'AZ','AZE',31,9,145,'Azərbaycan Respublikası','Republic of Azerbaijan','Baku','az',11,'AZN',944,994,0,1,1,0,'Azərbaycan','Azerbaijan',0),(17,0,0,'BA','BIH',70,10,39,'Bosna i Hercegovina / Босна и Херцеговина','Bosnia and Herzegovina','Sarajevo','ba',12,'BAM',977,387,0,1,0,0,'BiH/БиХ','Bosnia and Herzegovina',0),(18,0,0,'BB','BRB',52,19,29,'Barbados','Barbados','Bridgetown','bb',13,'BBD',52,1246,0,1,1,0,'Barbados','Barbados',0),(19,0,0,'BD','BGD',50,30,34,'গনপ্রজাতন্ত্রী বাংলা','People’s Republic of Bangladesh','Dhaka','bd',14,'BDT',50,880,0,1,1,0,'বাংলাদেশ','Bangladesh',0),(20,0,0,'BE','BEL',56,13,155,'Koninkrijk België / Royaume de Belgique','Kingdom of Belgium','Brussels','be',49,'EUR',978,32,1,1,1,0,'Belgique','Belgium',0),(21,0,0,'BF','BFA',854,20,11,'Burkina Faso','Burkina Faso','Ouagadougou','bf',164,'XOF',952,226,0,1,1,0,'Burkina','Burkina Faso',0),(22,0,0,'BG','BGR',100,11,151,'Република България','Republic of Bulgaria','Sofia','bg',16,'BGN',975,359,1,1,1,0,'Bulgaria','Bulgaria',0),(23,0,0,'BH','BHR',48,9,145,'مملكة البحرين','Kingdom of Bahrain','Manama','bh',17,'BHD',48,973,0,1,1,0,'البحري','Bahrain',0),(24,0,0,'BI','BDI',108,21,14,'Republika y\'u Burundi','Republic of Burundi','Bujumbura','bi',18,'BIF',108,257,0,1,1,0,'Burundi','Burundi',0),(25,0,0,'BJ','BEN',204,20,11,'République du Bénin','Republic of Benin','Porto Novo','bj',164,'XOF',952,229,0,1,1,0,'Bénin','Benin',0),(26,0,0,'BM','BMU',60,18,21,'Bermuda','Bermuda','Hamilton','bm',19,'BMD',60,1441,0,0,1,0,'Bermuda','Bermuda',0),(27,0,0,'BN','BRN',96,7,35,'برني دارالسلام','Sultanate of Brunei','Bandar Seri Begawan','bn',20,'BND',96,673,0,1,1,0,'دارالسلام','Brunei',0),(28,0,0,'BO','BOL',68,16,5,'Estado Plurinacional de Bolivia','Plurinational State of Bolivia','Sucre','bo',21,'BOB',68,591,0,1,1,0,'Bolivia','Bolivia',0),(29,0,0,'BR','BRA',76,16,5,'República Federativa do Brasil','Federative Republic of Brazil','Brasilia','br',23,'BRL',986,55,0,1,9,0,'Brasil','Brazil',27),(30,0,0,'BS','BHS',44,19,29,'Commonwealth of The Bahamas','Commonwealth of The Bahamas','Nassau','bs',24,'BSD',44,1242,0,1,1,0,'The Bahamas','The Bahamas',0),(31,0,0,'BT','BTN',64,30,34,'Druk-Yul','Kingdom of Bhutan','Thimphu','bt',25,'BTN',64,975,0,1,1,0,'Druk-Yul','Bhutan',0),(32,0,0,'BV','BVT',74,0,0,'Bouvet Island','Bouvet Island','','bv',111,'NOK',578,0,0,0,1,0,'Bouvetøya','Bouvet Island',0),(33,0,0,'BW','BWA',72,24,18,'Republic of Botswana','Republic of Botswana','Gaborone','bw',26,'BWP',72,267,0,1,1,0,'Botswana','Botswana',0),(34,0,0,'BY','BLR',112,11,151,'Рэспубліка Беларусь','Republic of Belarus','Minsk','by',27,'BYR',974,375,0,1,1,0,'Беларусь','Belarus',0),(35,0,0,'BZ','BLZ',84,17,13,'Belize','Belize','Belmopan','bz',28,'BZD',84,501,0,1,1,0,'Belize','Belize',0),(36,0,0,'CA','CAN',124,18,21,'Canada','Canada','Ottawa','ca',29,'CAD',124,1,0,1,4,0,'Canada','Canada',13),(37,0,0,'CC','CCK',166,25,53,'Territory of Cocos (Keeling) Islands','Territory of Cocos (Keeling) Islands','Bantam','cc',9,'AUD',36,6722,0,0,1,0,'Cocos (Keeling) Islands','Cocos (Keeling) Islands',0),(38,0,0,'CD','COD',180,23,17,'République Démocratique du Congo','Democratic Republic of the Congo','Kinshasa','cd',30,'CDF',976,243,0,1,0,0,'Congo','Congo',0),(39,0,0,'CF','CAF',140,23,17,'République centrafricaine','Central African Republic','Bangui','cf',162,'XAF',950,236,0,1,1,0,'République centrafricaine','Central African Republic',0),(40,0,0,'CG','COG',178,23,17,'République du Congo','Republic of the Congo','Brazzaville','cg',162,'XAF',950,242,0,1,1,0,'Congo-Brazzaville','Congo-Brazzaville',0),(41,0,0,'CH','CHE',756,13,155,'Confédération suisse / Schweizerische Eidgenossenschaft','Swiss Confederation','Berne','ch',31,'CHF',756,41,0,1,1,0,'Schweiz','Switzerland',26),(42,0,0,'CI','CIV',384,20,11,'République de Côte d’Ivoire','Republic of Côte d\'Ivoire','Yamoussoukro','ci',164,'XOF',952,225,0,1,2,0,'Côte d’Ivoire','Côte d’Ivoire',0),(43,0,0,'CK','COK',184,28,61,'Cook Islands','Cook Islands','Avarua','ck',113,'NZD',554,682,0,0,1,0,'Cook Islands','Cook Islands',0),(44,0,0,'CL','CHL',152,16,5,'República de Chile','Republic of Chile','Santiago','cl',33,'CLP',152,56,0,1,1,0,'Chile','Chile',0),(45,0,0,'CM','CMR',120,23,17,'Republic of Cameroon / République du Cameroun','Republic of Cameroon','Yaoundé','cm',162,'XAF',950,237,0,1,1,0,'Cameroun','Cameroon',0),(46,0,0,'CN','CHN',156,6,30,'中华人民共和国','People’s Republic of China','Beijing','cn',34,'CNY',156,86,0,1,1,0,'中华','China',0),(47,0,0,'CO','COL',170,16,5,'República de Colombia','Republic of Colombia','Bogotá','co',35,'COP',170,57,0,1,1,0,'Colombia','Colombia',0),(48,0,0,'CR','CRI',188,17,13,'República de Costa Rica','Republic of Costa Rica','San José','cr',36,'CRC',188,506,0,1,1,0,'Costa Rica','Costa Rica',0),(49,0,0,'CU','CUB',192,19,29,'República de Cuba','Republic of Cuba','Havana','cu',37,'CUP',192,53,0,1,1,0,'Cuba','Cuba',0),(50,0,0,'CV','CPV',132,20,11,'República de Cabo Verde','Republic of Cape Verde','Praia','cv',38,'CVE',132,238,0,1,1,0,'Cabo Verde','Cape Verde',0),(51,0,0,'CX','CXR',162,0,0,'Territory of Christmas Island','Territory of Christmas Island','Flying Fish Cove','cx',9,'AUD',36,6724,0,0,1,0,'Christmas Island','Christmas Island',0),(52,0,0,'CY','CYP',196,9,145,'Κυπριακή Δημοκρατία / Kıbrıs Cumhuriyeti','Republic of Cyprus','Nicosia','cy',49,'EUR',978,357,1,1,1,0,'Κύπρος / Kıbrıs','Cyprus',0),(53,0,0,'CZ','CZE',203,11,151,'Česká republika','Czech Republic','Prague','cz',40,'CZK',203,420,1,1,1,0,'Česko','Czech Republic',0),(54,0,0,'DE','DEU',276,13,155,'Bundesrepublik Deutschland','Federal Republic of Germany','Berlin','de',49,'EUR',978,49,1,1,1,0,'Deutschland','Germany',16),(55,0,0,'DJ','DJI',262,21,14,'جمهورية جيبوتي / République de Djibouti','Republic of Djibouti','Djibouti','dj',41,'DJF',262,253,0,1,1,0,'جيبوتي /Djibouti','Djibouti',0),(56,0,0,'DK','DNK',208,12,154,'Kongeriget Danmark','Kingdom of Denmark','Copenhagen','dk',42,'DKK',208,45,1,1,1,0,'Danmark','Denmark',0),(57,0,0,'DM','DMA',212,19,29,'Commonwealth of Dominica','Commonwealth of Dominica','Roseau','dm',163,'XCD',951,1767,0,1,1,0,'Dominica','Dominica',0),(58,0,0,'DO','DOM',214,19,29,'República Dominicana','Dominican Republic','Santo Domingo','do',43,'DOP',214,1809,0,1,1,0,'Quisqueya','Dominican Republic',0),(59,0,0,'DZ','DZA',12,22,15,'الجمهورية الجزائرية الديمقراطية','People’s Democratic Republic of Algeria','Algiers','dz',44,'DZD',12,213,0,1,1,0,'الجزائ','Algeria',0),(60,0,0,'EC','ECU',218,16,5,'República del Ecuador','Republic of Ecuador','Quito','ec',155,'USD',840,593,0,1,1,0,'Ecuador','Ecuador',0),(61,0,0,'EE','EST',233,12,154,'Eesti Vabariik','Republic of Estonia','Tallinn','ee',49,'EUR',978,372,1,1,1,0,'Eesti','Estonia',0),(62,0,0,'EG','EGY',818,22,15,'جمهوريّة مصر العربيّة','Arab Republic of Egypt','Cairo','eg',46,'EGP',818,20,0,1,1,0,'مصر','Egypt',0),(63,0,0,'EH','ESH',732,22,15,'الصحراء الغربية','Western Sahara','El Aaiún','eh',92,'MAD',504,212,0,0,1,0,'الصحراء الغربي','Western Sahara',0),(64,0,0,'ER','ERI',232,21,14,'ሃግሬ ኤርትራ','State of Eritrea','Asmara','er',47,'ERN',232,291,0,1,1,0,'ኤርትራ','Eritrea',0),(65,0,0,'ES','ESP',724,10,39,'Reino de España','Kingdom of Spain','Madrid','es',49,'EUR',978,34,1,1,8,0,'España','Spain',52),(66,0,0,'ET','ETH',231,21,14,'የኢትዮጵያ ፌዴራላዊ','Federal Democratic Republic of Ethiopia','Addis Ababa','et',48,'ETB',230,251,0,1,1,0,'ኢትዮጵያ','Ethiopia',0),(67,0,0,'FI','FIN',246,12,154,'Suomen Tasavalta / Republiken Finland','Republic of Finland','Helsinki','fi',49,'EUR',978,358,1,1,1,0,'Suomi','Finland',0),(68,0,0,'FJ','FJI',242,26,54,'Republic of Fiji / Matanitu Tu-Vaka-i-koya ko Vi','Republic of Fiji','Suva','fj',50,'FJD',242,679,0,1,1,0,'Fiji / Viti','Fiji',0),(69,0,0,'FK','FLK',238,16,5,'Falkland Islands','Falkland Islands','Stanley','fk',51,'FKP',238,500,0,0,1,0,'Falkland Islands','Falkland Islands',0),(70,0,0,'FM','FSM',583,27,57,'Federated States of Micronesia','Federated States of Micronesia','Palikir','fm',155,'USD',840,691,0,1,1,0,'Micronesia','Micronesia',0),(71,0,0,'FO','FRO',234,12,154,'Føroyar / Færøerne','Faroe Islands','Thorshavn','fo',42,'DKK',208,298,0,0,1,0,'Føroyar / Færøerne','Faroes',0),(72,0,0,'FR','FRA',250,13,155,'République française','French Republic','Paris','fr',49,'EUR',978,33,1,1,1,0,'France','France',131),(73,0,0,'GA','GAB',266,23,17,'République Gabonaise','Gabonese Republic','Libreville','ga',162,'XAF',950,241,0,1,1,0,'Gabon','Gabon',0),(74,0,0,'GB','GBR',826,12,154,'United Kingdom of Great Britain and Northern Ireland','United Kingdom of Great Britain and Northern Ireland','London','uk',52,'GBP',826,44,1,1,5,0,'United Kingdom','United Kingdom',105),(75,0,0,'GD','GRD',308,19,29,'Grenada','Grenada','St George\'s','gd',163,'XCD',951,1473,0,1,1,0,'Grenada','Grenada',0),(76,0,0,'GE','GEO',268,9,145,'საქართველო','Georgia','Tbilisi','ge',53,'GEL',981,995,0,1,1,0,'საქართველო','Georgia',0),(77,0,0,'GF','GUF',254,16,5,'Guyane française','French Guiana','Cayenne','gf',49,'EUR',978,594,0,0,1,0,'Guyane française','French Guiana',0),(78,0,0,'GH','GHA',288,20,11,'Republic of Ghana','Republic of Ghana','Accra','gh',177,'GHS',936,233,0,1,1,0,'Ghana','Ghana',0),(79,0,0,'GI','GIB',292,10,39,'Gibraltar','Gibraltar','Gibraltar','gi',55,'GIP',292,350,0,0,1,0,'Gibraltar','Gibraltar',0),(80,0,0,'GL','GRL',304,18,21,'Kalaallit Nunaat / Grønland','Greenland','Nuuk','gl',42,'DKK',208,299,0,0,1,0,'Grønland','Greenland',0),(81,0,0,'GM','GMB',270,20,11,'Republic of The Gambia','Republic of The Gambia','Banjul','gm',56,'GMD',270,220,0,1,1,0,'Gambia','Gambia',0),(82,0,0,'GN','GIN',324,20,11,'République de Guinée','Republic of Guinea','Conakry','gn',57,'GNF',324,224,0,1,1,0,'Guinée','Guinea',0),(83,0,0,'GP','GLP',312,19,29,'Département de la Guadeloupe','Department of Guadeloupe','Basse Terre','gp',49,'EUR',978,590,0,0,1,0,'Guadeloupe','Guadeloupe',0),(84,0,0,'GQ','GNQ',226,23,17,'República de Guinea Ecuatorial','Republic of Equatorial Guinea','Malabo','gq',162,'XAF',950,240,0,1,1,0,'Guinea Ecuatorial','Equatorial Guinea',0),(85,0,0,'GR','GRC',300,10,39,'Ελληνική Δημοκρατία','Hellenic Republic','Athens','gr',49,'EUR',978,30,1,1,1,0,'Ελλάδα','Greece',0),(86,0,0,'GS','SGS',239,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','','gs',52,'GBP',826,0,0,0,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands',0),(87,0,0,'GT','GTM',320,17,13,'República de Guatemala','Republic of Guatemala','Guatemala City','gt',58,'GTQ',320,502,0,1,1,0,'Guatemala','Guatemala',0),(88,0,0,'GU','GUM',316,27,57,'The Territory of Guam / Guåhån','The Territory of Guam','Hagåtña','gu',155,'USD',840,671,0,0,1,0,'Guåhån','Guam',0),(89,0,0,'GW','GNB',624,20,11,'República da Guiné-Bissau','Republic of Guinea-Bissau','Bissau','gw',164,'XOF',952,245,0,1,1,0,'Guiné-Bissau','Guinea-Bissau',0),(90,0,0,'GY','GUY',328,16,5,'Co-operative Republic of Guyana','Co-operative Republic of Guyana','Georgetown','gy',60,'GYD',328,592,0,1,1,0,'Guyana','Guyana',0),(91,0,0,'HK','HKG',344,6,30,'香港特別行政區','Hong Kong SAR of the People’s Republic of China','','hk',61,'HKD',344,852,0,0,1,0,'香港','Hong Kong SAR of China',0),(92,0,0,'HN','HND',340,17,13,'República de Honduras','Republic of Honduras','Tegucigalpa','hn',62,'HNL',340,504,0,1,1,0,'Honduras','Honduras',0),(93,0,0,'HR','HRV',191,10,39,'Republika Hrvatska','Republic of Croatia','Zagreb','hr',63,'HRK',191,385,0,1,1,0,'Hrvatska','Croatia',21),(94,0,0,'HT','HTI',332,19,29,'Repiblik d Ayiti / République d\'Haïti','Republic of Haiti','Port-au-Prince','ht',64,'HTG',332,509,0,1,1,0,'Ayiti','Haiti',0),(95,0,0,'HU','HUN',348,11,151,'Magyar Köztársaság','Hungary','Budapest','hu',65,'HUF',348,36,1,1,1,0,'Magyarország','Hungary',0),(96,0,0,'ID','IDN',360,7,35,'Republik Indonesia','Republic of Indonesia','Jakarta','id',66,'IDR',360,62,0,1,2,0,'Indonesia','Indonesia',0),(97,0,0,'IE','IRL',372,12,154,'Poblacht na hÉireann / Republic of Ireland','Republic of Ireland','Dublin','ie',49,'EUR',978,353,1,1,1,0,'Éire','Ireland',26),(98,0,0,'IL','ISR',376,9,145,'دولة إسرائيل / מדינת ישראלل','State of Israel','Tel Aviv','il',67,'ILS',376,972,0,1,2,0,'ישראל','Israel',0),(99,0,0,'IN','IND',356,30,34,'Bharat; Republic of India','Republic of India','New Delhi','in',68,'INR',356,91,0,1,2,0,'India','India',0),(100,0,0,'IO','IOT',86,30,34,'British Indian Ocean Territory','British Indian Ocean Territory','','io',52,'GBP',826,0,0,0,1,0,'British Indian Ocean Territory','British Indian Ocean Territory',0),(101,0,0,'IQ','IRQ',368,9,145,'الجمهورية العراقية','Republic of Iraq','Baghdad','iq',69,'IQD',368,964,0,1,1,0,'العراق / عيَراق','Iraq',0),(102,0,0,'IR','IRN',364,30,34,'جمهوری اسلامی ايران','Islamic Republic of Iran','Tehran','ir',70,'IRR',364,98,0,1,1,0,'ايران','Iran',0),(103,0,0,'IS','ISL',352,12,154,'Lýðveldið Ísland','Republic of Iceland','Reykjavík','is',71,'ISK',352,354,0,1,1,0,'Ísland','Iceland',0),(104,0,0,'IT','ITA',380,10,39,'Repubblica Italiana','Italian Republic','Rome','it',49,'EUR',978,39,1,1,7,0,'Italia','Italy',110),(105,0,0,'JM','JAM',388,19,29,'Commonwealth of Jamaica','Commonwealth of Jamaica','Kingston','jm',72,'JMD',388,1876,0,1,2,0,'Jamaica','Jamaica',0),(106,0,0,'JO','JOR',400,9,145,'المملكة الأردنية الهاشمية','Hashemite Kingdom of Jordan','Amman','jo',73,'JOD',400,962,0,1,1,0,'أردنّ','Jordan',0),(107,0,0,'JP','JPN',392,6,30,'日本国','Japan','Tokyo','jp',74,'JPY',392,81,0,1,2,0,'日本','Japan',0),(108,0,0,'KE','KEN',404,21,14,'Jamhuri va Kenya','Republic of Kenia','Nairobi','ke',75,'KES',404,254,0,1,1,0,'Kenya','Kenya',0),(109,0,0,'KG','KGZ',417,8,143,'Кыргызстан','Kyrgyzstan','Bishkek','kg',76,'KGS',417,996,0,1,1,0,'Кыргызстан','Kyrgyzstan',0),(110,0,0,'KH','KHM',116,7,35,'Preăh Réachéanachâkr Kâmpŭchea','Kingdom of Cambodia','Phnom Penh','kh',77,'KHR',116,855,0,1,1,0,'Kâmpŭchea','Cambodia',0),(111,0,0,'KI','KIR',296,27,57,'Republic of Kiribati','Republic of Kiribati','Bairiki','ki',9,'AUD',36,686,0,1,0,0,'Kiribati','Kiribati',0),(112,0,0,'KM','COM',174,21,14,'Udzima wa Komori /Union des Comores /اتحاد القمر','Union of the Comoros','Moroni','km',78,'KMF',174,269,0,1,1,0,'اتحاد القمر','Comoros',0),(113,0,0,'KN','KNA',659,19,29,'Federation of Saint Kitts and Nevis','Federation of Saint Kitts and Nevis','Basseterre','kn',163,'XCD',951,1869,0,1,1,0,'Saint Kitts and Nevis','Saint Kitts and Nevis',0),(114,0,0,'KP','PRK',408,6,30,'조선민주주의인민화국','Democratic People’s Republic of Korea','Pyongyang','kp',79,'KPW',408,850,0,1,0,0,'북조선','North Korea',0),(115,0,0,'KR','KOR',410,6,30,'대한민국','Republic of Korea','Seoul','kr',80,'KRW',410,82,0,1,1,0,'한국','South Korea',0),(116,0,0,'KW','KWT',414,9,145,'دولة الكويت','State of Kuweit','Kuwait City','kw',81,'KWD',414,965,0,1,1,0,'الكويت','Kuwait',0),(117,0,0,'KY','CYM',136,19,29,'Cayman Islands','Cayman Islands','George Town','ky',82,'KYD',136,1345,0,0,1,0,'Cayman Islands','Cayman Islands',0),(118,0,0,'KZ','KAZ',398,8,143,'Қазақстан Республикасы /Республика Казахстан','Republic of Kazakhstan','Astana','kz',83,'KZT',398,7,0,1,1,0,'Қазақстан /Казахстан','Kazakhstan',0),(119,0,0,'LA','LAO',418,7,35,'ສາທາລະນະລັດປະຊາທິປະໄຕປະຊາຊົນລາວ','Lao People’s Democratic Republic','Vientiane','la',84,'LAK',418,856,0,1,1,0,'ເມືອງລາວ','Laos',0),(120,0,0,'LB','LBN',422,9,145,'الجمهوريّة اللبنانيّة','Republic of Lebanon','Beirut','lb',85,'LBP',422,961,0,1,1,0,'لبنان','Lebanon',0),(121,0,0,'LC','LCA',662,19,29,'Saint Lucia','Saint Lucia','Castries','lc',163,'XCD',951,1758,0,1,1,0,'Saint Lucia','Saint Lucia',0),(122,0,0,'LI','LIE',438,13,155,'Fürstentum Liechtenstein','Principality of Liechtenstein','Vaduz','li',31,'CHF',756,423,0,1,1,0,'Liechtenstein','Liechtenstein',0),(123,0,0,'LK','LKA',144,30,34,'ශ්‍රී ලංකා / இலங்கை சனநாயக சோஷலிசக் குடியரசு','Democratic Socialist Republic of Sri Lanka','Colombo','lk',86,'LKR',144,94,0,1,2,0,'ශ්‍රී ලංකා / இலங்கை','Sri Lanka',0),(124,0,0,'LR','LBR',430,20,11,'Republic of Liberia','Republic of Liberia','Monrovia','lr',87,'LRD',430,231,0,1,1,0,'Liberia','Liberia',0),(125,0,0,'LS','LSO',426,24,18,'Muso oa Lesotho / Kingdom of Lesotho','Kingdon of Lesotho','Maseru','ls',88,'LSL',426,266,0,1,1,0,'Lesotho','Lesotho',0),(126,0,0,'LT','LTU',440,12,154,'Lietuvos Respublika','Republic of Lithuania','Vilnius','lt',49,'EUR',978,370,1,1,1,0,'Lietuva','Lithuania',0),(127,0,0,'LU','LUX',442,13,155,'Grand-Duché de Luxembourg / Großherzogtum Luxemburg / Groussherzogtum Lëtzebuerg','Grand Duchy of Luxembourg','Luxembourg','lu',49,'EUR',978,352,1,1,1,0,'Luxemburg','Luxembourg',0),(128,0,0,'LV','LVA',428,12,154,'Latvijas Republika','Republic of Latvia','Riga','lv',49,'EUR',978,371,1,1,1,0,'Latvija','Latvia',0),(129,0,0,'LY','LBY',434,22,15,'‏ليبيا‎','Libya','Tripoli','ly',91,'LYD',434,218,0,1,1,0,'‏ليبيا‎','Libya',0),(130,0,0,'MA','MAR',504,22,15,'المملكة المغربية','Kingdom of Morocco','Rabat','ma',92,'MAD',504,212,0,1,1,0,'المغربية','Morocco',0),(131,0,0,'MC','MCO',492,13,155,'Principauté de Monaco / Principatu de Munegu','Principality of Monaco','Monaco','mc',49,'EUR',978,377,0,1,1,0,'Monaco','Monaco',0),(132,0,0,'MD','MDA',498,11,151,'Republica Moldova','Republic of Moldova','Chisinau','md',93,'MDL',498,373,0,1,1,0,'Moldova','Moldova',0),(133,0,0,'MG','MDG',450,21,14,'Repoblikan\'i Madagasikara / République de Madagascar','Republic of Madagascar','Antananarivo','mg',173,'MGA',969,261,0,1,1,0,'Madagascar','Madagascar',0),(134,0,0,'MH','MHL',584,27,57,'Aolepān Aorōkin M̧ajeļ / Republic of the Marshall Islands','Republic of the Marshall Islands','Dalap-Uliga-Darrit (DUD)','mh',155,'USD',840,692,0,1,1,0,'Marshall Islands','Marshall Islands',0),(135,0,0,'MK','MKD',807,10,39,'Република Македонија','Republic of Macedonia','Skopje','mk',95,'MKD',807,389,0,1,1,0,'Македонија','Macedonia',0),(136,0,0,'ML','MLI',466,20,11,'République du Mali','Republik Mali','Bamako','ml',164,'XOF',952,223,0,1,1,0,'Mali','Mali',0),(137,0,0,'MM','MMR',104,7,35,'Pyidaungzu Myanma Naingngandaw','Republic of the Union of Myanmar','Yangon','mm',96,'MMK',104,95,0,1,1,0,'Myanmar','Myanmar',0),(138,0,0,'MN','MNG',496,6,30,'Монгол Улс','Mongolia','Ulan Bator','mn',97,'MNT',496,976,0,1,1,0,'Монгол Улс','Mongolia',0),(139,0,0,'MO','MAC',446,6,30,'中華人民共和國澳門特別行政區 / Região Administrativa Especial de Macau da República Popular da China','Macao SAR of the People’s Republic of China','Macau','mo',98,'MOP',446,853,0,0,1,0,'澳門 / Macau','Macao SAR of China',0),(140,0,0,'MP','MNP',580,27,57,'Commonwealth of the Northern Mariana Islands','Commonwealth of the Northern Mariana Islands','Garapan','mp',155,'USD',840,1670,0,0,0,0,'Northern Marianas','Northern Marianas',0),(141,0,0,'MQ','MTQ',474,19,29,'Département de la Martinique','Department of Martinique','Fort-de-France','mq',49,'EUR',978,596,0,0,1,0,'Martinique','Martinique',0),(142,0,0,'MR','MRT',478,20,11,'الجمهورية الإسلامية الموريتانية','Islamic Republic of Mauritania','Nouakchott','mr',99,'MRO',478,222,0,1,1,0,'الموريتانية','Mauritania',0),(143,0,0,'MS','MSR',500,19,29,'Montserrat','Montserrat','Plymouth','ms',163,'XCD',951,1664,0,0,1,0,'Montserrat','Montserrat',0),(144,0,0,'MT','MLT',470,10,39,'Repubblika ta\' Malta / Republic of Malta','Republic of Malta','Valletta','mt',49,'EUR',978,356,1,1,1,0,'Malta','Malta',0),(145,0,0,'MU','MUS',480,21,14,'Republic of Mauritius','Republic of Mauritius','Port Louis','mu',101,'MUR',480,230,0,1,1,0,'Mauritius','Mauritius',0),(146,0,0,'MV','MDV',462,30,34,'ދިވެހިރާއްޖޭގެ ޖުމުހޫރިއްޔާ','Republic of Maldives','Malé','mv',102,'MVR',462,960,0,1,1,0,'ޖުމުހޫރިއްޔ','Maldives',0),(147,0,0,'MW','MWI',454,21,14,'Republic of Malawi / Dziko la Malaŵi','Republic of Malawi','Lilongwe','mw',103,'MWK',454,265,0,1,1,0,'Malawi','Malawi',0),(148,0,0,'MX','MEX',484,17,13,'Estados Unidos Mexicanos','United Mexican States','Mexico City','mx',104,'MXN',484,52,0,1,6,0,'México','Mexico',32),(149,0,0,'MY','MYS',458,7,35,'ڤرسكوتوان مليسيا','Malaysia','Kuala Lumpur','my',106,'MYR',458,60,0,1,1,0,'مليسيا','Malaysia',0),(150,0,0,'MZ','MOZ',508,21,14,'República de Moçambique','Republic of Mozambique','Maputo','mz',178,'MZN',943,258,0,1,1,0,'Moçambique','Mozambique',0),(151,0,0,'NA','NAM',516,24,18,'Republic of Namibia','Republic of Namibia','Windhoek','na',108,'NAD',516,264,0,1,1,0,'Namibia','Namibia',0),(152,0,0,'NC','NCL',540,26,54,'Territoire de Nouvelle-Caledonie et Dépendances','Territory of New Caledonia','Nouméa','nc',165,'XPF',953,687,0,0,1,0,'Nouvelle-Calédonie','New Caledonia',0),(153,0,0,'NE','NER',562,20,11,'République du Niger','Republic of Niger','Niamey','ne',164,'XOF',952,227,0,1,1,0,'Niger','Niger',0),(154,0,0,'NF','NFK',574,25,53,'Territory of Norfolk Island','Territory of Norfolk Island','Kingston','nf',9,'AUD',36,6723,0,0,1,0,'Norfolk Island','Norfolk Island',0),(155,0,0,'NG','NGA',566,20,11,'Federal Republic of Nigeria','Federal Republic of Nigeria','Abuja','ng',109,'NGN',566,234,0,1,1,0,'Nigeria','Nigeria',0),(156,0,0,'NI','NIC',558,17,13,'República de Nicaragua','Republic of Nicaragua','Managua','ni',110,'NIO',558,505,0,1,1,0,'Nicaragua','Nicaragua',0),(157,0,0,'NL','NLD',528,13,155,'Koninkrijk der Nederlanden','Kingdom of the Netherlands','Amsterdam','nl',49,'EUR',978,31,1,1,1,0,'Nederland','Netherlands',12),(158,0,0,'NO','NOR',578,12,154,'Kongeriket Norge','Kingdom of Norway','Oslo','no',111,'NOK',578,47,0,1,1,0,'Norge','Norway',0),(159,0,0,'NP','NPL',524,30,34,'सङ्घीय लोकतान्त्रिक गणतन्त्र नेपाल','Federal Democratic Republic of Nepal','Kathmandu','np',112,'NPR',524,977,0,1,1,0,'नेपाल','Nepal',0),(160,0,0,'NR','NRU',520,27,57,'Ripublik Naoero','Republic of Nauru','Yaren','nr',9,'AUD',36,674,0,1,1,0,'Naoero','Nauru',0),(161,0,0,'NU','NIU',570,28,61,'Niue','Niue','Alofi','nu',113,'NZD',554,683,0,0,1,0,'Niue','Niue',0),(162,0,0,'NZ','NZL',554,25,53,'New Zealand / Aotearoa','New Zealand','Wellington','nz',113,'NZD',554,64,0,1,2,0,'New Zealand / Aotearoa','New Zealand',0),(163,0,0,'OM','OMN',512,9,145,'سلطنة عُمان','Sultanate of Oman','Muscat','om',114,'OMR',512,968,0,1,1,0,'عُمان','Oman',0),(164,0,0,'PA','PAN',591,17,13,'República de Panamá','Repulic of Panama','Panama City','pa',115,'PAB',590,507,0,1,2,0,'Panamá','Panama',0),(165,0,0,'PE','PER',604,16,5,'República del Perú','Republic of Peru','Lima','pe',116,'PEN',604,51,0,1,2,0,'Perú','Peru',0),(166,0,0,'PF','PYF',258,28,61,'Polynésie française','French Polynesia','Papeete','pf',165,'XPF',953,689,0,0,1,0,'Polynésie française','French Polynesia',0),(167,0,0,'PG','PNG',598,26,54,'Independent State of Papua New Guinea / Papua Niugini','Independent State of Papua New Guinea','Port Moresby','pg',117,'PGK',598,675,0,1,1,0,'Papua New Guinea  / Papua Niugini','Papua New Guinea',0),(168,0,0,'PH','PHL',608,7,35,'Republika ng Pilipinas / Republic of the Philippines','Republic of the Philippines','Manila','ph',118,'PHP',608,63,0,1,2,0,'Philippines','Philippines',0),(169,0,0,'PK','PAK',586,30,34,'Islamic Republic of Pakistan / اسلامی جمہوریۂ پاکستان','Islamic Republic of Pakistan','Islamabad','pk',119,'PKR',586,92,0,1,1,0,'پاکستان','Pakistan',0),(170,0,0,'PL','POL',616,11,151,'Rzeczpospolita Polska','Republic of Poland','Warsaw','pl',120,'PLN',985,48,1,1,1,0,'Polska','Poland',16),(171,0,0,'PM','SPM',666,18,21,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon','Saint-Pierre','pm',49,'EUR',978,508,0,0,1,0,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',0),(172,0,0,'PN','PCN',612,28,61,'Pitcairn Islands','Pitcairn Islands','Adamstown','pn',113,'NZD',554,0,0,0,1,0,'Pitcairn Islands','Pitcairn Islands',0),(173,0,0,'PR','PRI',630,19,29,'Estado Libre Asociado de Puerto Rico / Commonwealth of Puerto Rico','Commonwealth of Puerto Rico','San Juan','pr',155,'USD',840,1787,0,0,2,0,'Puerto Rico','Puerto Rico',0),(174,0,0,'PT','PRT',620,10,39,'República Portuguesa','Portuguese Republic','Lisbon','pt',49,'EUR',978,351,1,1,1,0,'Portugal','Portugal',0),(175,0,0,'PW','PLW',585,27,57,'Belu\'u era Belau / Republic of Palau','Republic of Palau','Koror','pw',155,'USD',840,680,0,1,1,0,'Belau / Palau','Palau',0),(176,0,0,'PY','PRY',600,16,5,'República del Paraguay / Tetä Paraguáype','Republic of Paraguay','Asunción','py',121,'PYG',600,595,0,1,1,0,'Paraguay','Paraguay',0),(177,0,0,'QA','QAT',634,9,145,'دولة قطر','State of Qatar','Doha','qa',122,'QAR',634,974,0,1,1,0,'قطر','Qatar',0),(178,0,0,'RE','REU',638,21,14,'Département de la Réunion','Department of Réunion','Saint-Denis','re',49,'EUR',978,262,0,0,1,0,'Réunion','Reunion',0),(179,0,0,'RO','ROU',642,11,151,'România','Romania','Bucharest','ro',179,'RON',946,40,1,1,1,0,'România','Romania',0),(180,0,0,'RU','RUS',643,11,151,'Российская Федерация','Russian Federation','Moscow','ru',124,'RUB',643,7,0,1,1,0,'Росси́я','Russia',0),(181,0,0,'RW','RWA',646,21,14,'Repubulika y\'u Rwanda / République Rwandaise','Republic of Rwanda','Kigali','rw',126,'RWF',646,250,0,1,1,0,'Rwanda','Rwanda',0),(182,0,0,'SA','SAU',682,9,145,'المملكة العربية السعودية','Kingdom of Saudi Arabia','Riyadh','sa',127,'SAR',682,966,0,1,2,0,'السعودية','Saudi Arabia',0),(183,0,0,'SB','SLB',90,26,54,'Solomon Islands','Solomon Islands','Honiara','sb',128,'SBD',90,677,0,1,1,0,'Solomon Islands','Solomon Islands',0),(184,0,0,'SC','SYC',690,21,14,'Repiblik Sesel / Republic of Seychelles / République des Seychelles','Republic of Seychelles','Victoria','sc',129,'SCR',690,248,0,1,1,0,'Seychelles','Seychelles',0),(185,0,0,'SD','SDN',729,22,15,'جمهورية السودان','Republic of the Sudan','Khartoum','sd',130,'SDG',938,249,0,1,1,0,'السودان','Sudan',0),(186,0,0,'SE','SWE',752,12,154,'Konungariket Sverige','Kingdom of Sweden','Stockholm','se',131,'SEK',752,46,1,1,1,0,'Sverige','Sweden',0),(187,0,0,'SG','SGP',702,7,35,'Republic of Singapore / 新加坡共和国 / Republik Singapura / சிங்கப்பூர் குடியரசு','Republic of Singapore','Singapore','sg',132,'SGD',702,65,0,1,2,0,'Singapore','Singapore',0),(188,0,0,'SH','SHN',654,20,11,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha','Jamestown','sh',133,'SHP',654,290,0,0,1,0,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha',0),(189,0,0,'SI','SVN',705,10,39,'Republika Slovenija','Republic of Slovenia','Ljubljana','si',49,'EUR',978,386,1,1,1,0,'Slovenija','Slovenia',0),(190,0,0,'SJ','SJM',744,12,154,'Svalbard','Svalbard','Longyearbyen','sj',111,'NOK',578,47,0,0,1,0,'Svalbard','Svalbard',0),(191,0,0,'SK','SVK',703,11,151,'Slovenská republika','Slovak Republic','Bratislava','sk',49,'EUR',978,421,1,1,1,0,'Slovensko','Slovakia',0),(192,0,0,'SL','SLE',694,20,11,'Republic of Sierra Leone','Republic of Sierra Leone','Freetown','sl',136,'SLL',694,232,0,1,1,0,'Sierra Leone','Sierra Leone',0),(193,0,0,'SM','SMR',674,10,39,'Serenissima Repubblica di San Marino','Most Serene Republic of San Marino','San Marino','sm',49,'EUR',978,378,0,1,1,0,'San Marino','San Marino',0),(194,0,0,'SN','SEN',686,20,11,'République de Sénégal','Republic of Senegal','Dakar','sn',164,'XOF',952,221,0,1,1,0,'Sénégal','Senegal',0),(195,0,0,'SO','SOM',706,21,14,'Soomaaliya','Federal Republic of Somalia','Mogadishu','so',137,'SOS',706,252,0,1,1,0,'Soomaaliya','Somalia',0),(196,0,0,'SR','SUR',740,16,5,'Republiek Suriname','Republic of Surinam','Paramaribo','sr',174,'SRD',968,597,0,1,1,0,'Suriname','Suriname',0),(197,0,0,'ST','STP',678,23,17,'República Democrática de São Tomé e Príncipe','Democratic Republic of São Tomé e Príncipe','São Tomé','st',139,'STD',678,239,0,1,1,0,'São Tomé e Príncipe','São Tomé e Príncipe',0),(198,0,0,'SV','SLV',222,17,13,'República de El Salvador','Republic of El Salvador','San Salvador','sv',140,'SVC',222,503,0,1,1,0,'El Salvador','El Salvador',0),(199,0,0,'SY','SYR',760,9,145,'الجمهوريّة العربيّة السّوريّة','Syrian Arab Republic','Damascus','sy',141,'SYP',760,963,0,1,1,0,'سوري','Syria',0),(200,0,0,'SZ','SWZ',748,24,18,'Umboso weSwatini / Kingdom of Swaziland','Kingdom of Swaziland','Mbabane','sz',142,'SZL',748,268,0,1,1,0,'weSwatini','Swaziland',0),(201,0,0,'TC','TCA',796,19,29,'Turks and Caicos Islands','Turks and Caicos Islands','Cockburn Town','tc',155,'USD',840,1649,0,0,1,0,'Turks and Caicos Islands','Turks and Caicos Islands',0),(202,0,0,'TD','TCD',148,23,17,'جمهورية تشاد / République du Tchad','Republic of Chad','N\'Djamena','td',162,'XAF',950,235,0,1,1,0,'تشاد / Tchad','Chad',0),(203,0,0,'TF','ATF',260,0,0,'Terres australes françaises','French Southern Territories','','tf',49,'EUR',978,0,0,0,0,0,'Terres australes françaises','French Southern Territories',0),(204,0,0,'TG','TGO',768,20,11,'République Togolaise','Republic of Togo','Lomé','tg',164,'XOF',952,228,0,1,1,0,'Togo','Togo',0),(205,0,0,'TH','THA',764,7,35,'ราชอาณาจักรไทย','Kingdom of Thailand','Bangkok','th',143,'THB',764,66,0,1,2,0,'ไทย','Thailand',0),(206,0,0,'TJ','TJK',762,8,143,'Ҷумҳурии Тоҷикистон','Republic of Tajikistan','Dushanbe','tj',144,'TJS',972,992,0,1,1,0,'Тоҷикистон','Tajikistan',0),(207,0,0,'TK','TKL',772,28,61,'Tokelau','Tokelau','Fakaofo','tk',113,'NZD',554,0,0,0,1,0,'Tokelau','Tokelau',0),(208,0,0,'TM','TKM',795,8,143,'Türkmenistan Jumhuriyäti','Republic of Turkmenistan','Ashgabat','tm',180,'TMT',934,993,0,1,1,0,'Türkmenistan','Turkmenistan',0),(209,0,0,'TN','TUN',788,22,15,'الجمهورية التونسية','Republic of Tunisia','Tunis','tn',146,'TND',788,216,0,1,1,0,'التونسية','Tunisia',0),(210,0,0,'TO','TON',776,28,61,'Pule\'anga Fakatu\'i \'o Tonga / Kingdom of Tonga','Kingdom of Tonga','Nuku\'alofa','to',147,'TOP',776,676,0,1,1,0,'Tonga','Tonga',0),(211,0,0,'TL','TLS',626,7,35,'Repúblika Demokrátika Timor Lorosa\'e / República Democrática de Timor-Leste','Democratic Republic of Timor-Leste','Dili','tp',155,'USD',840,670,0,1,1,0,'Timor Lorosa\'e','Timor-Leste',0),(212,0,0,'TR','TUR',792,9,145,'Türkiye Cumhuriyeti','Republic of Turkey','Ankara','tr',175,'TRY',949,90,0,1,1,0,'Türkiye','Turkey',0),(213,0,0,'TT','TTO',780,19,29,'Republic of Trinidad and Tobago','Republic of Trinidad and Tobago','Port of Spain','tt',150,'TTD',780,1868,0,1,1,0,'Trinidad and Tobago','Trinidad and Tobago',0),(214,0,0,'TV','TUV',798,28,61,'Tuvalu','Tuvalu','Fongafale','tv',9,'AUD',36,688,0,1,1,0,'Tuvalu','Tuvalu',0),(215,0,0,'TW','TWN',158,6,30,'中華民國','Republic of China','Taipei','tw',151,'TWD',901,886,0,0,1,0,'中華','Taiwan',0),(216,0,0,'TZ','TZA',834,21,14,'Jamhuri ya Muungano wa Tanzania','United Republic of Tanzania','Dodoma','tz',152,'TZS',834,255,0,1,1,0,'Tanzania','Tanzania',0),(217,0,0,'UA','UKR',804,11,151,'Україна','Ukraine','Kiev','ua',153,'UAH',980,380,0,1,1,0,'Україна','Ukraine',0),(218,0,0,'UG','UGA',800,21,14,'Republic of Uganda','Republic of Uganda','Kampala','ug',154,'UGX',800,256,0,1,1,0,'Uganda','Uganda',0),(219,0,0,'UM','UMI',581,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands','','um',155,'USD',840,0,0,0,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands',0),(220,0,0,'US','USA',840,18,21,'United States of America','United States of America','Washington DC','us',155,'USD',840,1,0,1,3,1,'United States','United States',53),(221,0,0,'UY','URY',858,16,5,'República Oriental del Uruguay','Eastern Republic of Uruguay','Montevideo','uy',156,'UYU',858,598,0,1,1,0,'Uruguay','Uruguay',0),(222,0,0,'UZ','UZB',860,8,143,'O‘zbekiston Respublikasi','Republic of Uzbekistan','Tashkent','uz',157,'UZS',860,998,0,1,1,0,'O‘zbekiston','Uzbekistan',0),(223,0,0,'VA','VAT',336,10,39,'Status Civitatis Vaticanae / Città del Vaticano','Vatican City','Vatican City','va',49,'EUR',978,396,0,0,1,0,'Vaticano','Vatican City',0),(224,0,0,'VC','VCT',670,19,29,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','Kingstown','vc',163,'XCD',951,1784,0,1,1,0,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines',0),(225,0,0,'VE','VEN',862,16,5,'República Bolivariana de Venezuela','Bolivarian Republic of Venezuela','Caracas','ve',158,'VEF',937,58,0,1,1,0,'Venezuela','Venezuela',0),(226,0,0,'VG','VGB',92,19,29,'British Virgin Islands','British Virgin Islands','Road Town','vg',155,'USD',840,1284,0,0,1,0,'British Virgin Islands','British Virgin Islands',0),(227,0,0,'VI','VIR',850,19,29,'United States Virgin Islands','United States Virgin Islands','Charlotte Amalie','vi',155,'USD',840,1340,0,0,1,0,'US Virgin Islands','US Virgin Islands',0),(228,0,0,'VN','VNM',704,7,35,'Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam','Socialist Republic of Vietnam','Hanoi','vn',159,'VND',704,84,0,1,1,0,'Việt Nam','Vietnam',0),(229,0,0,'VU','VUT',548,26,54,'Ripablik blong Vanuatu / Republic of Vanuatu / République du Vanuatu','Republic of Vanuatu','Port Vila','vu',160,'VUV',548,678,0,1,1,0,'Vanuatu','Vanuatu',0),(230,0,0,'WF','WLF',876,28,61,'Territoire de Wallis et Futuna','Territory of Wallis and Futuna Islands','Mata-Utu','wf',165,'XPF',953,681,0,0,1,0,'Wallis and Futuna','Wallis and Futuna',0),(231,0,0,'WS','WSM',882,28,61,'Malo Sa\'oloto Tuto\'atasi o Samoa / Independent State of Samoa','Independent State of Samoa','Apia','ws',161,'WST',882,685,0,1,1,0,'Samoa','Samoa',0),(232,0,0,'YE','YEM',887,9,145,'الجمهوريّة اليمنية','Republic of Yemen','San\'a','ye',166,'YER',886,967,0,1,1,0,'اليمنية','Yemen',0),(233,0,0,'YT','MYT',175,21,14,'Mayotte','Mayotte','Mamoudzou','yt',49,'EUR',978,269,0,0,0,0,'Mayotte','Mayotte',0),(235,0,0,'ZA','ZAF',710,24,18,'Republic of South Africa / Republiek van Suid-Afrika / Rephaboliki ya Afrika-Borwa','Republic of South Africa','Pretoria','za',168,'ZAR',710,27,0,1,2,0,'Afrika-Borwa','South Africa',0),(236,0,0,'ZM','ZMB',894,21,14,'Republic of Zambia','Republic of Zambia','Lusaka','zm',169,'ZMW',967,260,0,1,1,0,'Zambia','Zambia',0),(237,0,0,'ZW','ZWE',716,21,14,'Republic of Zimbabwe','Republic of Zimbabwe','Harare','zw',169,'ZMW',967,263,0,1,1,0,'Zimbabwe','Zimbabwe',0),(238,0,0,'PS','PSE',275,9,145,'دولة فلسطين','State of Palestine','','ps',0,'',0,0,0,0,0,0,'فلسطين','Palestine',0),(239,0,1,'CS','CSG',891,10,39,'Државна заједница Србија и Црна Гора','State Union of Serbia and Montenegro','Belgrade','cs',0,'CSD',891,381,0,1,0,0,'Србија и Црна Гора','Serbia and Montenegro',0),(240,0,0,'AX','ALA',248,12,154,'Landskapet Åland','Åland Islands','Mariehamn','ax',49,'EUR',978,35818,1,0,0,0,'Åland','Åland',0),(241,0,0,'HM','HMD',334,25,53,'Heard Island and McDonald Islands','Heard Island and McDonald Islands','','',9,'AUD',36,0,0,0,0,0,'Heard Island and McDonald Islands','Heard Island and McDonald Islands',0),(242,0,0,'ME','MNE',499,10,39,'Republike Crne Gore','Montenegro','Podgorica','me',49,'EUR',978,382,0,1,1,0,'Crna Gora','Montenegro',0),(243,0,0,'RS','SRB',688,10,39,'Republika Srbija','Republic of Serbia','Belgrade','rs',172,'RSD',941,381,0,1,1,0,'Srbija','Serbia',0),(244,0,0,'JE','JEY',832,12,154,'Bailiwick of Jersey','Bailiwick of Jersey','Saint Helier','je',52,'GBP',826,44,0,0,5,0,'Jersey','Jersey',0),(245,0,0,'GG','GGY',831,12,154,'Bailiwick of Guernsey','Bailiwick of Guernsey','Saint Peter Port','gg',52,'GBP',826,44,0,0,5,0,'Guernsey','Guernsey',0),(246,0,0,'IM','IMN',833,12,154,'Isle of Man / Ellan Vannin','Isle of Man','Douglas','im',52,'GBP',826,44,0,0,5,0,'Mann / Mannin','Isle of Man',0),(247,0,0,'MF','MAF',652,19,29,'Collectivité de Saint-Martin','Collectivity of Saint Martin','Marigot','fr',49,'EUR',978,590,0,0,1,0,'Saint-Martin','Saint Martin',0),(248,0,0,'BL','BLM',652,19,29,'Collectivité de Saint-Barthélemy','Collectivity of Saint Barthélemy','Gustavia','fr',49,'EUR',978,590,0,0,1,0,'Saint-Barthélemy','Saint Barthélemy',0),(249,0,0,'BQ','BES',535,19,29,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba','Oranjestad','bq',155,'USD',840,599,0,0,0,0,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba',0),(250,0,0,'CW','CUW',531,19,29,'Curaçao','Curaçao','Willemstad','cw',6,'ANG',532,599,0,0,0,0,'Curaçao','Curaçao',0),(251,0,0,'SX','SXM',534,19,29,'Sint Maarten','Sint Maarten','Philipsburg','sx',6,'ANG',532,599,0,0,0,0,'Sint Maarten','Sint Maarten',0),(252,0,0,'SS','SSD',728,22,15,'Republic of South Sudan','Republic of South Sudan','Juba','ss',176,'SSP',728,211,0,0,0,0,'South Sudan','South Sudan',0);
/*!40000 ALTER TABLE `static_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_country_zones`
--

DROP TABLE IF EXISTS `static_country_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_country_zones` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `zn_country_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_iso_nr` int(11) NOT NULL DEFAULT '0',
  `zn_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_name_local` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_uid` int(11) NOT NULL DEFAULT '0',
  `zn_country_table` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_country_zones`
--

LOCK TABLES `static_country_zones` WRITE;
/*!40000 ALTER TABLE `static_country_zones` DISABLE KEYS */;
INSERT INTO `static_country_zones` VALUES (1,0,0,'US','USA',840,'AL','Alabama','',220,'static_countries'),(2,0,0,'US','USA',840,'AK','Alaska','',220,'static_countries'),(4,0,0,'US','USA',840,'AZ','Arizona','',220,'static_countries'),(5,0,0,'US','USA',840,'AR','Arkansas','',220,'static_countries'),(12,0,0,'US','USA',840,'CA','California','',220,'static_countries'),(13,0,0,'US','USA',840,'CO','Colorado','',220,'static_countries'),(14,0,0,'US','USA',840,'CT','Connecticut','',220,'static_countries'),(15,0,0,'US','USA',840,'DE','Delaware','',220,'static_countries'),(16,0,0,'US','USA',840,'DC','District of Columbia','',220,'static_countries'),(18,0,0,'US','USA',840,'FL','Florida','',220,'static_countries'),(19,0,0,'US','USA',840,'GA','Georgia','',220,'static_countries'),(20,0,0,'US','USA',840,'GU','Guam','',220,'static_countries'),(21,0,0,'US','USA',840,'HI','Hawaii','',220,'static_countries'),(22,0,0,'US','USA',840,'ID','Idaho','',220,'static_countries'),(23,0,0,'US','USA',840,'IL','Illinois','',220,'static_countries'),(24,0,0,'US','USA',840,'IN','Indiana','',220,'static_countries'),(25,0,0,'US','USA',840,'IA','Iowa','',220,'static_countries'),(26,0,0,'US','USA',840,'KS','Kansas','',220,'static_countries'),(27,0,0,'US','USA',840,'KY','Kentucky','',220,'static_countries'),(28,0,0,'US','USA',840,'LA','Louisiana','',220,'static_countries'),(29,0,0,'US','USA',840,'ME','Maine','',220,'static_countries'),(31,0,0,'US','USA',840,'MD','Maryland','',220,'static_countries'),(32,0,0,'US','USA',840,'MA','Massachusetts','',220,'static_countries'),(33,0,0,'US','USA',840,'MI','Michigan','',220,'static_countries'),(34,0,0,'US','USA',840,'MN','Minnesota','',220,'static_countries'),(35,0,0,'US','USA',840,'MS','Mississippi','',220,'static_countries'),(36,0,0,'US','USA',840,'MO','Missouri','',220,'static_countries'),(37,0,0,'US','USA',840,'MT','Montana','',220,'static_countries'),(38,0,0,'US','USA',840,'NE','Nebraska','',220,'static_countries'),(39,0,0,'US','USA',840,'NV','Nevada','',220,'static_countries'),(40,0,0,'US','USA',840,'NH','New Hampshire','',220,'static_countries'),(41,0,0,'US','USA',840,'NJ','New Jersey','',220,'static_countries'),(42,0,0,'US','USA',840,'NM','New Mexico','',220,'static_countries'),(43,0,0,'US','USA',840,'NY','New York','',220,'static_countries'),(44,0,0,'US','USA',840,'NC','North Carolina','',220,'static_countries'),(45,0,0,'US','USA',840,'ND','North Dakota','',220,'static_countries'),(47,0,0,'US','USA',840,'OH','Ohio','',220,'static_countries'),(48,0,0,'US','USA',840,'OK','Oklahoma','',220,'static_countries'),(49,0,0,'US','USA',840,'OR','Oregon','',220,'static_countries'),(51,0,0,'US','USA',840,'PA','Pennsylvania','',220,'static_countries'),(52,0,0,'US','USA',840,'PR','Puerto Rico','',220,'static_countries'),(53,0,0,'US','USA',840,'RI','Rhode Island','',220,'static_countries'),(54,0,0,'US','USA',840,'SC','South Carolina','',220,'static_countries'),(55,0,0,'US','USA',840,'SD','South Dakota','',220,'static_countries'),(56,0,0,'US','USA',840,'TN','Tennessee','',220,'static_countries'),(57,0,0,'US','USA',840,'TX','Texas','',220,'static_countries'),(58,0,0,'US','USA',840,'UT','Utah','',220,'static_countries'),(59,0,0,'US','USA',840,'VT','Vermont','',220,'static_countries'),(61,0,0,'US','USA',840,'VA','Virginia','',220,'static_countries'),(62,0,0,'US','USA',840,'WA','Washington','',220,'static_countries'),(63,0,0,'US','USA',840,'WV','West Virginia','',220,'static_countries'),(64,0,0,'US','USA',840,'WI','Wisconsin','',220,'static_countries'),(65,0,0,'US','USA',840,'WY','Wyoming','',220,'static_countries'),(66,0,0,'CA','CAN',124,'AB','Alberta','',36,'static_countries'),(67,0,0,'CA','CAN',124,'BC','British Columbia','',36,'static_countries'),(68,0,0,'CA','CAN',124,'MB','Manitoba','',36,'static_countries'),(69,0,0,'CA','CAN',124,'NF','Newfoundland and Labrabor','',36,'static_countries'),(70,0,0,'CA','CAN',124,'NB','New Brunswick','',36,'static_countries'),(71,0,0,'CA','CAN',124,'NS','Nova Scotia','',36,'static_countries'),(72,0,0,'CA','CAN',124,'NT','Northwest Territories','',36,'static_countries'),(73,0,0,'CA','CAN',124,'NU','Nunavut','',36,'static_countries'),(74,0,0,'CA','CAN',124,'ON','Ontario','',36,'static_countries'),(75,0,0,'CA','CAN',124,'PE','Prince Edward Island','',36,'static_countries'),(76,0,0,'CA','CAN',124,'QC','Québec','Quebec',36,'static_countries'),(77,0,0,'CA','CAN',124,'SK','Saskatchewan','',36,'static_countries'),(78,0,0,'CA','CAN',124,'YT','Yukon Territory','',36,'static_countries'),(79,0,0,'DE','DEU',276,'NI','Niedersachsen','Lower Saxony',54,'static_countries'),(80,0,0,'DE','DEU',276,'BW','Baden-Württemberg','',54,'static_countries'),(81,0,0,'DE','DEU',276,'BY','Bayern','Bavaria',54,'static_countries'),(82,0,0,'DE','DEU',276,'BE','Berlin','',54,'static_countries'),(83,0,0,'DE','DEU',276,'BB','Brandenburg','',54,'static_countries'),(84,0,0,'DE','DEU',276,'HB','Bremen','',54,'static_countries'),(85,0,0,'DE','DEU',276,'HH','Hamburg','',54,'static_countries'),(86,0,0,'DE','DEU',276,'HE','Hessen','Hesse',54,'static_countries'),(87,0,0,'DE','DEU',276,'MV','Mecklenburg-Vorpommern','Mecklenburg-Western Pomerania',54,'static_countries'),(88,0,0,'DE','DEU',276,'NW','Nordrhein-Westfalen','North Rhine-Westphalia',54,'static_countries'),(89,0,0,'DE','DEU',276,'RP','Rheinland-Pfalz','Rhineland-Palatinate',54,'static_countries'),(90,0,0,'DE','DEU',276,'SL','Saarland','',54,'static_countries'),(91,0,0,'DE','DEU',276,'SN','Sachsen','Saxony',54,'static_countries'),(92,0,0,'DE','DEU',276,'ST','Sachsen-Anhalt','Saxony-Anhalt',54,'static_countries'),(93,0,0,'DE','DEU',276,'SH','Schleswig-Holstein','',54,'static_countries'),(94,0,0,'DE','DEU',276,'TH','Thüringen','Thuringia',54,'static_countries'),(95,0,0,'AT','AUT',40,'9','Wien','Vienna',13,'static_countries'),(96,0,0,'AT','AUT',40,'3','Niederösterreich','Lower Austria',13,'static_countries'),(97,0,0,'AT','AUT',40,'4','Oberösterreich','Upper Austria',13,'static_countries'),(98,0,0,'AT','AUT',40,'5','Salzburg','',13,'static_countries'),(99,0,0,'AT','AUT',40,'2','Kärnten','Carinthia',13,'static_countries'),(100,0,0,'AT','AUT',40,'6','Steiermark','Styria',13,'static_countries'),(101,0,0,'AT','AUT',40,'7','Tirol','Tyrol',13,'static_countries'),(102,0,0,'AT','AUT',40,'1','Burgenland','',13,'static_countries'),(103,0,0,'AT','AUT',40,'8','Vorarlberg','',13,'static_countries'),(104,0,0,'CH','CHE',756,'AG','Aargau','',41,'static_countries'),(105,0,0,'CH','CHE',756,'AI','Appenzell Innerrhoden','',41,'static_countries'),(106,0,0,'CH','CHE',756,'AR','Appenzell Ausserrhoden','',41,'static_countries'),(107,0,0,'CH','CHE',756,'BE','Bern','',41,'static_countries'),(108,0,0,'CH','CHE',756,'BL','Basel-Landschaft','',41,'static_countries'),(109,0,0,'CH','CHE',756,'BS','Basel-Stadt','',41,'static_countries'),(110,0,0,'CH','CHE',756,'FR','Freiburg','',41,'static_countries'),(111,0,0,'CH','CHE',756,'GE','Genf','Geneve',41,'static_countries'),(112,0,0,'CH','CHE',756,'GL','Glarus','',41,'static_countries'),(113,0,0,'CH','CHE',756,'GR','Graubünden','',41,'static_countries'),(114,0,0,'CH','CHE',756,'JU','Jura','',41,'static_countries'),(115,0,0,'CH','CHE',756,'LU','Luzern','',41,'static_countries'),(116,0,0,'CH','CHE',756,'NE','Neuenburg','',41,'static_countries'),(117,0,0,'CH','CHE',756,'NW','Nidwalden','',41,'static_countries'),(118,0,0,'CH','CHE',756,'OW','Obwalden','',41,'static_countries'),(119,0,0,'CH','CHE',756,'SG','St. Gallen','',41,'static_countries'),(120,0,0,'CH','CHE',756,'SH','Schaffhausen','',41,'static_countries'),(121,0,0,'CH','CHE',756,'SO','Solothurn','',41,'static_countries'),(122,0,0,'CH','CHE',756,'SZ','Schwyz','',41,'static_countries'),(123,0,0,'CH','CHE',756,'TG','Thurgau','',41,'static_countries'),(124,0,0,'CH','CHE',756,'TI','Tessin','',41,'static_countries'),(125,0,0,'CH','CHE',756,'UR','Uri','',41,'static_countries'),(126,0,0,'CH','CHE',756,'VD','Waadt','',41,'static_countries'),(127,0,0,'CH','CHE',756,'VS','Wallis','',41,'static_countries'),(128,0,0,'CH','CHE',756,'ZG','Zug','',41,'static_countries'),(129,0,0,'CH','CHE',756,'ZH','Zürich','',41,'static_countries'),(130,0,0,'ES','ESP',724,'Alava','Alava','',65,'static_countries'),(131,0,0,'ES','ESP',724,'Malaga','Malaga','',65,'static_countries'),(132,0,0,'ES','ESP',724,'Segovia','Segovia','',65,'static_countries'),(133,0,0,'ES','ESP',724,'Granada','Granada','',65,'static_countries'),(134,0,0,'ES','ESP',724,'Jaen','Jaen','',65,'static_countries'),(135,0,0,'ES','ESP',724,'Sevilla','Sevilla','',65,'static_countries'),(136,0,0,'ES','ESP',724,'Barcelona','Barcelona','',65,'static_countries'),(137,0,0,'ES','ESP',724,'Valencia','Valencia','',65,'static_countries'),(138,0,0,'ES','ESP',724,'Albacete','Albacete','',65,'static_countries'),(139,0,0,'ES','ESP',724,'Alicante','Alicante','',65,'static_countries'),(140,0,0,'ES','ESP',724,'Almeria','Almeria','',65,'static_countries'),(141,0,0,'ES','ESP',724,'Asturias','Asturias','',65,'static_countries'),(142,0,0,'ES','ESP',724,'Avila','Avila','',65,'static_countries'),(143,0,0,'ES','ESP',724,'Badajoz','Badajoz','',65,'static_countries'),(144,0,0,'ES','ESP',724,'Burgos','Burgos','',65,'static_countries'),(145,0,0,'ES','ESP',724,'Caceres','Caceres','',65,'static_countries'),(146,0,0,'ES','ESP',724,'Cadiz','Cadiz','',65,'static_countries'),(147,0,0,'ES','ESP',724,'Cantabria','Cantabria','',65,'static_countries'),(148,0,0,'ES','ESP',724,'Castellon','Castellon','',65,'static_countries'),(149,0,0,'ES','ESP',724,'Ceuta','Ceuta','',65,'static_countries'),(150,0,0,'ES','ESP',724,'Ciudad Real','Ciudad Real','',65,'static_countries'),(151,0,0,'ES','ESP',724,'Cordoba','Cordoba','',65,'static_countries'),(152,0,0,'ES','ESP',724,'Cuenca','Cuenca','',65,'static_countries'),(153,0,0,'ES','ESP',724,'Girona','Girona','',65,'static_countries'),(154,0,0,'ES','ESP',724,'Las Palmas','Las Palmas','',65,'static_countries'),(155,0,0,'ES','ESP',724,'Guadalajara','Guadalajara','',65,'static_countries'),(156,0,0,'ES','ESP',724,'Guipuzcoa','Guipuzcoa','',65,'static_countries'),(157,0,0,'ES','ESP',724,'Huelva','Huelva','',65,'static_countries'),(158,0,0,'ES','ESP',724,'Huesca','Huesca','',65,'static_countries'),(159,0,0,'ES','ESP',724,'A Coruña','A Coruña','',65,'static_countries'),(160,0,0,'ES','ESP',724,'La Rioja','La Rioja','',65,'static_countries'),(161,0,0,'ES','ESP',724,'Leon','Leon','',65,'static_countries'),(162,0,0,'ES','ESP',724,'Lugo','Lugo','',65,'static_countries'),(163,0,0,'ES','ESP',724,'Lleida','Lleida','',65,'static_countries'),(164,0,0,'ES','ESP',724,'Madrid','Madrid','',65,'static_countries'),(165,0,0,'ES','ESP',724,'Baleares','Baleares','',65,'static_countries'),(166,0,0,'ES','ESP',724,'Murcia','Murcia','',65,'static_countries'),(167,0,0,'ES','ESP',724,'Navarra','Navarra','',65,'static_countries'),(168,0,0,'ES','ESP',724,'Ourense','Ourense','',65,'static_countries'),(169,0,0,'ES','ESP',724,'Palencia','Palencia','',65,'static_countries'),(170,0,0,'ES','ESP',724,'Pontevedra','Pontevedra','',65,'static_countries'),(171,0,0,'ES','ESP',724,'Salamanca','Salamanca','',65,'static_countries'),(172,0,0,'ES','ESP',724,'Soria','Soria','',65,'static_countries'),(173,0,0,'ES','ESP',724,'Tarragona','Tarragona','',65,'static_countries'),(174,0,0,'ES','ESP',724,'Tenerife','Tenerife','',65,'static_countries'),(175,0,0,'ES','ESP',724,'Teruel','Teruel','',65,'static_countries'),(176,0,0,'ES','ESP',724,'Toledo','Toledo','',65,'static_countries'),(177,0,0,'ES','ESP',724,'Valladolid','Valladolid','',65,'static_countries'),(178,0,0,'ES','ESP',724,'Vizcaya','Vizcaya','',65,'static_countries'),(179,0,0,'ES','ESP',724,'Zamora','Zamora','',65,'static_countries'),(180,0,0,'ES','ESP',724,'Zaragoza','Zaragoza','',65,'static_countries'),(181,0,0,'ES','ESP',724,'Melilla','Melilla','',65,'static_countries'),(182,0,0,'MX','MEX',484,'AGS','Aguascalientes','',148,'static_countries'),(183,0,0,'MX','MEX',484,'BCS','Baja California Sur','',148,'static_countries'),(184,0,0,'MX','MEX',484,'BC','Baja California Norte','',148,'static_countries'),(185,0,0,'MX','MEX',484,'CAM','Campeche','',148,'static_countries'),(186,0,0,'MX','MEX',484,'CHIS','Chiapas','',148,'static_countries'),(187,0,0,'MX','MEX',484,'CHIH','Chihuahua','',148,'static_countries'),(188,0,0,'MX','MEX',484,'COAH','Coahuila','',148,'static_countries'),(189,0,0,'MX','MEX',484,'COL','Colima','',148,'static_countries'),(190,0,0,'MX','MEX',484,'DIF','Distrito Federal','',148,'static_countries'),(191,0,0,'MX','MEX',484,'DGO','Durango','',148,'static_countries'),(192,0,0,'MX','MEX',484,'GTO','Guanajuato','',148,'static_countries'),(193,0,0,'MX','MEX',484,'GRO','Guerrero','',148,'static_countries'),(194,0,0,'MX','MEX',484,'HGO','Hidalgo','',148,'static_countries'),(195,0,0,'MX','MEX',484,'JAL','Jalisco','',148,'static_countries'),(196,0,0,'MX','MEX',484,'MEX','México','',148,'static_countries'),(197,0,0,'MX','MEX',484,'MICH','Michoacán','',148,'static_countries'),(198,0,0,'MX','MEX',484,'MOR','Morelos','',148,'static_countries'),(199,0,0,'MX','MEX',484,'NAY','Nayarit','',148,'static_countries'),(200,0,0,'MX','MEX',484,'NL','Nuevo León','',148,'static_countries'),(201,0,0,'MX','MEX',484,'OAX','Oaxaca','',148,'static_countries'),(202,0,0,'MX','MEX',484,'PUE','Puebla','',148,'static_countries'),(203,0,0,'MX','MEX',484,'QRO','Querétaro','',148,'static_countries'),(204,0,0,'MX','MEX',484,'QROO','Quintana Roo','',148,'static_countries'),(205,0,0,'MX','MEX',484,'SLP','San Luis Potosí','',148,'static_countries'),(206,0,0,'MX','MEX',484,'SIN','Sinaloa','',148,'static_countries'),(207,0,0,'MX','MEX',484,'SON','Sonora','',148,'static_countries'),(208,0,0,'MX','MEX',484,'TAB','Tabasco','',148,'static_countries'),(209,0,0,'MX','MEX',484,'TAMPS','Tamaulipas','',148,'static_countries'),(210,0,0,'MX','MEX',484,'TLAX','Tlaxcala','',148,'static_countries'),(211,0,0,'MX','MEX',484,'VER','Veracruz','',148,'static_countries'),(212,0,0,'MX','MEX',484,'YUC','Yucatán','',148,'static_countries'),(213,0,0,'MX','MEX',484,'ZAC','Zacatecas','',148,'static_countries'),(214,0,0,'AU','AUS',36,'ACT','Australian Capital Territory','',14,'static_countries'),(215,0,0,'AU','AUS',36,'NSW','New South Wales','',14,'static_countries'),(216,0,0,'AU','AUS',36,'NT','Northern Territory','',14,'static_countries'),(217,0,0,'AU','AUS',36,'QLD','Queensland','',14,'static_countries'),(218,0,0,'AU','AUS',36,'SA','South Australia','',14,'static_countries'),(219,0,0,'AU','AUS',36,'TAS','Tasmania','',14,'static_countries'),(220,0,0,'AU','AUS',36,'VIC','Victoria','',14,'static_countries'),(221,0,0,'AU','AUS',36,'WA','Western Australia','',14,'static_countries'),(222,0,0,'IT','ITA',380,'AG','Agrigento','',104,'static_countries'),(223,0,0,'IT','ITA',380,'AL','Alessandria','',104,'static_countries'),(224,0,0,'IT','ITA',380,'AN','Ancona','',104,'static_countries'),(225,0,0,'IT','ITA',380,'AO','Aosta','',104,'static_countries'),(226,0,0,'IT','ITA',380,'AP','Ascoli Piceno','',104,'static_countries'),(227,0,0,'IT','ITA',380,'AQ','L\'Aquila','',104,'static_countries'),(228,0,0,'IT','ITA',380,'AR','Arezzo','',104,'static_countries'),(229,0,0,'IT','ITA',380,'AT','Asti','',104,'static_countries'),(230,0,0,'IT','ITA',380,'AV','Avellino','',104,'static_countries'),(231,0,0,'IT','ITA',380,'BA','Bari','',104,'static_countries'),(232,0,0,'IT','ITA',380,'BG','Bergamo','',104,'static_countries'),(233,0,0,'IT','ITA',380,'BI','Biella','',104,'static_countries'),(234,0,0,'IT','ITA',380,'BL','Belluno','',104,'static_countries'),(235,0,0,'IT','ITA',380,'BN','Benevento','',104,'static_countries'),(236,0,0,'IT','ITA',380,'BO','Bologna','',104,'static_countries'),(237,0,0,'IT','ITA',380,'BR','Brindisi','',104,'static_countries'),(238,0,0,'IT','ITA',380,'BS','Brescia','',104,'static_countries'),(239,0,0,'IT','ITA',380,'BT','Barletta-Andria-Trani','',104,'static_countries'),(240,0,0,'IT','ITA',380,'BZ','Bozen','',104,'static_countries'),(241,0,0,'IT','ITA',380,'CA','Cagliari','',104,'static_countries'),(242,0,0,'IT','ITA',380,'CB','Campobasso','',104,'static_countries'),(243,0,0,'IT','ITA',380,'CE','Caserta','',104,'static_countries'),(244,0,0,'IT','ITA',380,'CH','Chieti','',104,'static_countries'),(245,0,0,'IT','ITA',380,'CI','Carbonia-Iglesias','',104,'static_countries'),(246,0,0,'IT','ITA',380,'CL','Caltanissetta','',104,'static_countries'),(247,0,0,'IT','ITA',380,'CN','Cuneo','',104,'static_countries'),(248,0,0,'IT','ITA',380,'CO','Como','',104,'static_countries'),(249,0,0,'IT','ITA',380,'CR','Cremona','',104,'static_countries'),(250,0,0,'IT','ITA',380,'CS','Cosenza','',104,'static_countries'),(251,0,0,'IT','ITA',380,'CT','Catania','',104,'static_countries'),(252,0,0,'IT','ITA',380,'CZ','Catanzaro','',104,'static_countries'),(253,0,0,'IT','ITA',380,'EN','Enna','',104,'static_countries'),(254,0,0,'IT','ITA',380,'FE','Ferrara','',104,'static_countries'),(255,0,0,'IT','ITA',380,'FG','Foggia','',104,'static_countries'),(256,0,0,'IT','ITA',380,'FI','Firenze','Florence',104,'static_countries'),(257,0,0,'IT','ITA',380,'FM','Fermo','',104,'static_countries'),(258,0,0,'IT','ITA',380,'FC','Forlì-Cesena','',104,'static_countries'),(259,0,0,'IT','ITA',380,'FR','Frosinone','',104,'static_countries'),(260,0,0,'IT','ITA',380,'GE','Genova','',104,'static_countries'),(261,0,0,'IT','ITA',380,'GO','Gorizia','',104,'static_countries'),(262,0,0,'IT','ITA',380,'GR','Grosseto','',104,'static_countries'),(263,0,0,'IT','ITA',380,'IM','Imperia','',104,'static_countries'),(264,0,0,'IT','ITA',380,'IS','Isernia','',104,'static_countries'),(265,0,0,'IT','ITA',380,'KR','Crotone','',104,'static_countries'),(266,0,0,'IT','ITA',380,'LC','Lecco','',104,'static_countries'),(267,0,0,'IT','ITA',380,'LE','Lecce','',104,'static_countries'),(268,0,0,'IT','ITA',380,'LI','Livorno','',104,'static_countries'),(269,0,0,'IT','ITA',380,'LO','Lodi','',104,'static_countries'),(270,0,0,'IT','ITA',380,'LT','Latina','',104,'static_countries'),(271,0,0,'IT','ITA',380,'LU','Lucca','',104,'static_countries'),(272,0,0,'IT','ITA',380,'MB','Monza e Brianza','',104,'static_countries'),(273,0,0,'IT','ITA',380,'MC','Macerata','',104,'static_countries'),(274,0,0,'IT','ITA',380,'ME','Messina','',104,'static_countries'),(275,0,0,'IT','ITA',380,'MI','Milano','',104,'static_countries'),(276,0,0,'IT','ITA',380,'MN','Mantova','',104,'static_countries'),(277,0,0,'IT','ITA',380,'MO','Modena','',104,'static_countries'),(278,0,0,'IT','ITA',380,'MS','Massa Carrara','',104,'static_countries'),(279,0,0,'IT','ITA',380,'MT','Matera','',104,'static_countries'),(280,0,0,'IT','ITA',380,'NA','Napoli','Naples',104,'static_countries'),(281,0,0,'IT','ITA',380,'NO','Novara','',104,'static_countries'),(282,0,0,'IT','ITA',380,'NU','Nuoro','',104,'static_countries'),(283,0,0,'IT','ITA',380,'OG','Ogliastra','',104,'static_countries'),(284,0,0,'IT','ITA',380,'OR','Oristano','',104,'static_countries'),(285,0,0,'IT','ITA',380,'OT','Olbia-Tempio','',104,'static_countries'),(286,0,0,'IT','ITA',380,'PA','Palermo','',104,'static_countries'),(287,0,0,'IT','ITA',380,'PC','Piacenza','',104,'static_countries'),(288,0,0,'IT','ITA',380,'PD','Padova','',104,'static_countries'),(289,0,0,'IT','ITA',380,'PE','Pescara','',104,'static_countries'),(290,0,0,'IT','ITA',380,'PG','Perugia','',104,'static_countries'),(291,0,0,'IT','ITA',380,'PI','Pisa','',104,'static_countries'),(292,0,0,'IT','ITA',380,'PN','Pordenone','',104,'static_countries'),(293,0,0,'IT','ITA',380,'PR','Parma','',104,'static_countries'),(294,0,0,'IT','ITA',380,'PT','Pistoia','',104,'static_countries'),(295,0,0,'IT','ITA',380,'PU','Pesaro e Urbino','',104,'static_countries'),(296,0,0,'IT','ITA',380,'PV','Pavia','',104,'static_countries'),(297,0,0,'IT','ITA',380,'PO','Prato','',104,'static_countries'),(298,0,0,'IT','ITA',380,'PZ','Potenza','',104,'static_countries'),(299,0,0,'IT','ITA',380,'RA','Ravenna','',104,'static_countries'),(300,0,0,'IT','ITA',380,'RC','Reggio Calabria','',104,'static_countries'),(301,0,0,'IT','ITA',380,'RE','Reggio Emilia','',104,'static_countries'),(302,0,0,'IT','ITA',380,'RG','Ragusa','',104,'static_countries'),(303,0,0,'IT','ITA',380,'RI','Rieti','',104,'static_countries'),(304,0,0,'IT','ITA',380,'RM','Roma','Rome',104,'static_countries'),(305,0,0,'IT','ITA',380,'RN','Rimini','',104,'static_countries'),(306,0,0,'IT','ITA',380,'RO','Rovigo','',104,'static_countries'),(307,0,0,'IT','ITA',380,'SA','Salerno','',104,'static_countries'),(308,0,0,'IT','ITA',380,'SI','Siena','',104,'static_countries'),(309,0,0,'IT','ITA',380,'SO','Sondrio','',104,'static_countries'),(310,0,0,'IT','ITA',380,'SP','La Spezia','',104,'static_countries'),(311,0,0,'IT','ITA',380,'SR','Siracusa','',104,'static_countries'),(312,0,0,'IT','ITA',380,'SS','Sassari','',104,'static_countries'),(313,0,0,'IT','ITA',380,'SV','Savona','',104,'static_countries'),(314,0,0,'IT','ITA',380,'TA','Taranto','',104,'static_countries'),(315,0,0,'IT','ITA',380,'TE','Teramo','',104,'static_countries'),(316,0,0,'IT','ITA',380,'TN','Trento','',104,'static_countries'),(317,0,0,'IT','ITA',380,'TO','Torino','',104,'static_countries'),(318,0,0,'IT','ITA',380,'TP','Trapani','',104,'static_countries'),(319,0,0,'IT','ITA',380,'TR','Terni','',104,'static_countries'),(320,0,0,'IT','ITA',380,'TS','Trieste','',104,'static_countries'),(321,0,0,'IT','ITA',380,'TV','Treviso','',104,'static_countries'),(322,0,0,'IT','ITA',380,'UD','Udine','',104,'static_countries'),(323,0,0,'IT','ITA',380,'VA','Varese','',104,'static_countries'),(324,0,0,'IT','ITA',380,'VB','Verbano-Cusio-Ossola','',104,'static_countries'),(325,0,0,'IT','ITA',380,'VC','Vercelli','',104,'static_countries'),(326,0,0,'IT','ITA',380,'VE','Venezia','Venice',104,'static_countries'),(327,0,0,'IT','ITA',380,'VI','Vicenza','',104,'static_countries'),(328,0,0,'IT','ITA',380,'VR','Verona','',104,'static_countries'),(329,0,0,'IT','ITA',380,'VS','Medio Campidano','',104,'static_countries'),(330,0,0,'IT','ITA',380,'VT','Viterbo','',104,'static_countries'),(331,0,0,'IT','ITA',380,'VV','Vibo Valentia','',104,'static_countries'),(332,0,0,'GB','GBR',826,'ALD','Alderney','',74,'static_countries'),(333,0,0,'GB','GBR',826,'ARM','Armagh','',74,'static_countries'),(334,0,0,'GB','GBR',826,'ATM','Antrim','',74,'static_countries'),(335,0,0,'GB','GBR',826,'BDS','Borders','',74,'static_countries'),(336,0,0,'GB','GBR',826,'BFD','Bedfordshire','',74,'static_countries'),(337,0,0,'GB','GBR',826,'BIR','Birmingham','',74,'static_countries'),(338,0,0,'GB','GBR',826,'BLG','Blaenau Gwent','',74,'static_countries'),(339,0,0,'GB','GBR',826,'BRI','Bridgend','',74,'static_countries'),(340,0,0,'GB','GBR',826,'BRK','Berkshire','',74,'static_countries'),(341,0,0,'GB','GBR',826,'BRS','Bristol','',74,'static_countries'),(342,0,0,'GB','GBR',826,'BUX','Buckinghamshire','',74,'static_countries'),(343,0,0,'GB','GBR',826,'CAP','Caerphilly','',74,'static_countries'),(344,0,0,'GB','GBR',826,'CAR','Cardiff','',74,'static_countries'),(345,0,0,'GB','GBR',826,'CAS','Carmarthenshire','',74,'static_countries'),(346,0,0,'GB','GBR',826,'CBA','Cumbria','',74,'static_countries'),(347,0,0,'GB','GBR',826,'CBE','Cambridgeshire','',74,'static_countries'),(348,0,0,'GB','GBR',826,'CER','Ceredigion','',74,'static_countries'),(349,0,0,'GB','GBR',826,'CHI','Channel Islands','',74,'static_countries'),(350,0,0,'GB','GBR',826,'CHS','Cheshire','',74,'static_countries'),(351,0,0,'GB','GBR',826,'CLD','Clwyd','',74,'static_countries'),(352,0,0,'GB','GBR',826,'CNL','Cornwall','',74,'static_countries'),(353,0,0,'GB','GBR',826,'CON','Conway','',74,'static_countries'),(354,0,0,'GB','GBR',826,'CTR','Central','',74,'static_countries'),(355,0,0,'GB','GBR',826,'CVE','Cleveland','',74,'static_countries'),(356,0,0,'GB','GBR',826,'DEN','Denbighshire','',74,'static_countries'),(357,0,0,'GB','GBR',826,'DFD','Dyfed','',74,'static_countries'),(358,0,0,'GB','GBR',826,'DGL','Dumfries and Galloway','',74,'static_countries'),(359,0,0,'GB','GBR',826,'DHM','Durham','',74,'static_countries'),(360,0,0,'GB','GBR',826,'DOR','Dorset','',74,'static_countries'),(361,0,0,'GB','GBR',826,'DVN','Devon','',74,'static_countries'),(362,0,0,'GB','GBR',826,'DWN','Down','',74,'static_countries'),(363,0,0,'GB','GBR',826,'DYS','Derbyshire','',74,'static_countries'),(364,0,0,'GB','GBR',826,'ESX','Essex','',74,'static_countries'),(365,0,0,'GB','GBR',826,'FER','Fermanagh','',74,'static_countries'),(366,0,0,'GB','GBR',826,'FFE','Fife','',74,'static_countries'),(367,0,0,'GB','GBR',826,'FLI','Flintshire','',74,'static_countries'),(368,0,0,'GB','GBR',826,'FMH','County Fermanagh','',74,'static_countries'),(369,0,0,'GB','GBR',826,'GDD','Gwynedd','',74,'static_countries'),(370,0,0,'GB','GBR',826,'GLO','Gloucestershire','',74,'static_countries'),(371,0,0,'GB','GBR',826,'GLR','Gloucester','',74,'static_countries'),(372,0,0,'GB','GBR',826,'GNM','Mid Glamorgan','',74,'static_countries'),(373,0,0,'GB','GBR',826,'GNS','South Glamorgan','',74,'static_countries'),(374,0,0,'GB','GBR',826,'GNW','West Glamorgan','',74,'static_countries'),(375,0,0,'GB','GBR',826,'GRN','Grampian','',74,'static_countries'),(376,0,0,'GB','GBR',826,'GUR','Guernsey','',74,'static_countries'),(377,0,0,'GB','GBR',826,'GWT','Gwent','',74,'static_countries'),(378,0,0,'GB','GBR',826,'HBS','Humberside','',74,'static_countries'),(379,0,0,'GB','GBR',826,'HFD','Hertfordshire','',74,'static_countries'),(380,0,0,'GB','GBR',826,'HLD','Highlands','',74,'static_countries'),(381,0,0,'GB','GBR',826,'HPH','Hampshire','',74,'static_countries'),(382,0,0,'GB','GBR',826,'HWR','Hereford and Worcester','',74,'static_countries'),(383,0,0,'GB','GBR',826,'IOM','Isle of Man','',74,'static_countries'),(384,0,0,'GB','GBR',826,'IOW','Isle of Wight','',74,'static_countries'),(385,0,0,'GB','GBR',826,'ISL','Isle of Anglesey','',74,'static_countries'),(386,0,0,'GB','GBR',826,'JER','Jersey','',74,'static_countries'),(387,0,0,'GB','GBR',826,'KNT','Kent','',74,'static_countries'),(388,0,0,'GB','GBR',826,'LCN','Lincolnshire','',74,'static_countries'),(389,0,0,'GB','GBR',826,'LDN','Greater London','',74,'static_countries'),(390,0,0,'GB','GBR',826,'LDR','Londonderry','',74,'static_countries'),(391,0,0,'GB','GBR',826,'LEC','Leicestershire','',74,'static_countries'),(392,0,0,'GB','GBR',826,'LNH','Lancashire','',74,'static_countries'),(393,0,0,'GB','GBR',826,'LON','London','',74,'static_countries'),(394,0,0,'GB','GBR',826,'LTE','East Lothian','',74,'static_countries'),(395,0,0,'GB','GBR',826,'LTM','Mid Lothian','',74,'static_countries'),(396,0,0,'GB','GBR',826,'LTW','West Lothian','',74,'static_countries'),(397,0,0,'GB','GBR',826,'MCH','Greater Manchester','',74,'static_countries'),(398,0,0,'GB','GBR',826,'MER','Merthyr Tydfil','',74,'static_countries'),(399,0,0,'GB','GBR',826,'MON','Monmouthshire','',74,'static_countries'),(400,0,0,'GB','GBR',826,'MSY','Merseyside','',74,'static_countries'),(401,0,0,'GB','GBR',826,'NET','Neath Port Talbot','',74,'static_countries'),(402,0,0,'GB','GBR',826,'NEW','Newport','',74,'static_countries'),(403,0,0,'GB','GBR',826,'NHM','Northamptonshire','',74,'static_countries'),(404,0,0,'GB','GBR',826,'NLD','Northumberland','',74,'static_countries'),(405,0,0,'GB','GBR',826,'NOR','Norfolk','',74,'static_countries'),(406,0,0,'GB','GBR',826,'NOT','Nottinghamshire','',74,'static_countries'),(407,0,0,'GB','GBR',826,'NWH','North West Highlands','',74,'static_countries'),(408,0,0,'GB','GBR',826,'OFE','Oxfordshire','',74,'static_countries'),(409,0,0,'GB','GBR',826,'ORK','Orkney','',74,'static_countries'),(410,0,0,'GB','GBR',826,'PEM','Pembrokeshire','',74,'static_countries'),(411,0,0,'GB','GBR',826,'PWS','Powys','',74,'static_countries'),(412,0,0,'GB','GBR',826,'SCD','Strathclyde','',74,'static_countries'),(413,0,0,'GB','GBR',826,'SFD','Staffordshire','',74,'static_countries'),(414,0,0,'GB','GBR',826,'SFK','Suffolk','',74,'static_countries'),(415,0,0,'GB','GBR',826,'SLD','Shetland','',74,'static_countries'),(416,0,0,'GB','GBR',826,'SOM','Somerset','',74,'static_countries'),(417,0,0,'GB','GBR',826,'SPE','Shropshire','',74,'static_countries'),(418,0,0,'GB','GBR',826,'SRK','Sark','',74,'static_countries'),(419,0,0,'GB','GBR',826,'SRY','Surrey','',74,'static_countries'),(420,0,0,'GB','GBR',826,'SWA','Swansea','',74,'static_countries'),(421,0,0,'GB','GBR',826,'SXE','East Sussex','',74,'static_countries'),(422,0,0,'GB','GBR',826,'SXW','West Sussex','',74,'static_countries'),(423,0,0,'GB','GBR',826,'TAF','Rhondda Cynon Taff','',74,'static_countries'),(424,0,0,'GB','GBR',826,'TOR','Torfaen','',74,'static_countries'),(425,0,0,'GB','GBR',826,'TWR','Tyne and Wear','',74,'static_countries'),(426,0,0,'GB','GBR',826,'TYR','Tyrone','',74,'static_countries'),(427,0,0,'GB','GBR',826,'TYS','Tayside','',74,'static_countries'),(428,0,0,'GB','GBR',826,'VAL','Vale of Glamorgan','',74,'static_countries'),(429,0,0,'GB','GBR',826,'WIL','Western Isles','',74,'static_countries'),(430,0,0,'GB','GBR',826,'WKS','Warwickshire','',74,'static_countries'),(431,0,0,'GB','GBR',826,'WLT','Wiltshire','',74,'static_countries'),(432,0,0,'GB','GBR',826,'WMD','West Midlands','',74,'static_countries'),(433,0,0,'GB','GBR',826,'WRE','Wrexham','',74,'static_countries'),(434,0,0,'GB','GBR',826,'YSN','North Yorkshire','',74,'static_countries'),(435,0,0,'GB','GBR',826,'YSS','South Yorkshire','',74,'static_countries'),(436,0,0,'GB','GBR',826,'YSW','West Yorkshire','',74,'static_countries'),(460,0,0,'IE','IRL',372,'CAR','Carlow','',97,'static_countries'),(461,0,0,'IE','IRL',372,'CAV','Cavan','',97,'static_countries'),(462,0,0,'IE','IRL',372,'CLA','Clare','',97,'static_countries'),(463,0,0,'IE','IRL',372,'COR','Cork','',97,'static_countries'),(464,0,0,'IE','IRL',372,'DON','Donegal','',97,'static_countries'),(465,0,0,'IE','IRL',372,'DUB','Dublin','',97,'static_countries'),(466,0,0,'IE','IRL',372,'GAL','Galway','',97,'static_countries'),(467,0,0,'IE','IRL',372,'KER','Kerry','',97,'static_countries'),(468,0,0,'IE','IRL',372,'KIL','Kildare','',97,'static_countries'),(469,0,0,'IE','IRL',372,'KLK','Kilkenny','',97,'static_countries'),(470,0,0,'IE','IRL',372,'LAO','Laois','',97,'static_countries'),(471,0,0,'IE','IRL',372,'LEI','Leitrim','',97,'static_countries'),(472,0,0,'IE','IRL',372,'LIM','Limerick','',97,'static_countries'),(473,0,0,'IE','IRL',372,'LON','Longford','',97,'static_countries'),(474,0,0,'IE','IRL',372,'LOU','Louth','',97,'static_countries'),(475,0,0,'IE','IRL',372,'MAY','Mayo','',97,'static_countries'),(476,0,0,'IE','IRL',372,'MEA','Meath','',97,'static_countries'),(477,0,0,'IE','IRL',372,'MON','Monaghan','',97,'static_countries'),(478,0,0,'IE','IRL',372,'OFF','Offaly','',97,'static_countries'),(479,0,0,'IE','IRL',372,'ROS','Roscommon','',97,'static_countries'),(480,0,0,'IE','IRL',372,'SLI','Sligo','',97,'static_countries'),(481,0,0,'IE','IRL',372,'TIP','Tipperary','',97,'static_countries'),(482,0,0,'IE','IRL',372,'WAT','Waterford','',97,'static_countries'),(483,0,0,'IE','IRL',372,'WES','Westmeath','',97,'static_countries'),(484,0,0,'IE','IRL',372,'WEX','Wexford','',97,'static_countries'),(485,0,0,'IE','IRL',372,'WIC','Wicklow','',97,'static_countries'),(490,0,0,'BR','BRA',76,'AC','Acre','',29,'static_countries'),(491,0,0,'BR','BRA',76,'AP','Amapá','',29,'static_countries'),(492,0,0,'BR','BRA',76,'AL','Alagoas','',29,'static_countries'),(493,0,0,'BR','BRA',76,'AM','Amazonas','',29,'static_countries'),(494,0,0,'BR','BRA',76,'BA','Bahia','',29,'static_countries'),(495,0,0,'BR','BRA',76,'CE','Ceará','',29,'static_countries'),(496,0,0,'BR','BRA',76,'DF','Distrito Federal','',29,'static_countries'),(497,0,0,'BR','BRA',76,'ES','Espírito Santo','',29,'static_countries'),(498,0,0,'BR','BRA',76,'GO','Goiás','',29,'static_countries'),(499,0,0,'BR','BRA',76,'MA','Maranhão','',29,'static_countries'),(500,0,0,'BR','BRA',76,'MG','Minas Gerais','',29,'static_countries'),(501,0,0,'BR','BRA',76,'MS','Mato Grosso do Sul','',29,'static_countries'),(502,0,0,'BR','BRA',76,'MT','Mato Grosso','',29,'static_countries'),(503,0,0,'BR','BRA',76,'PA','Pará','',29,'static_countries'),(504,0,0,'BR','BRA',76,'PB','Paraíba','',29,'static_countries'),(505,0,0,'BR','BRA',76,'PE','Pernambuco','',29,'static_countries'),(506,0,0,'BR','BRA',76,'PI','Piauí','',29,'static_countries'),(507,0,0,'BR','BRA',76,'PR','Paraná','',29,'static_countries'),(508,0,0,'BR','BRA',76,'RJ','Rio de Janeiro','',29,'static_countries'),(509,0,0,'BR','BRA',76,'RN','Rio Grande do Norte','',29,'static_countries'),(510,0,0,'BR','BRA',76,'RO','Rondônia','',29,'static_countries'),(511,0,0,'BR','BRA',76,'RR','Roraima','',29,'static_countries'),(512,0,0,'BR','BRA',76,'RS','Rio Grande do Sul','',29,'static_countries'),(513,0,0,'BR','BRA',76,'SC','Santa Catarina','',29,'static_countries'),(514,0,0,'BR','BRA',76,'SE','Sergipe','',29,'static_countries'),(515,0,0,'BR','BRA',76,'SP','São Paulo','',29,'static_countries'),(516,0,0,'BR','BRA',76,'TO','Tocantins','',29,'static_countries'),(530,0,0,'NL','NLD',528,'DR','Drenthe','',157,'static_countries'),(531,0,0,'NL','NLD',528,'FL','Flevoland','',157,'static_countries'),(532,0,0,'NL','NLD',528,'FR','Friesland','',157,'static_countries'),(533,0,0,'NL','NLD',528,'GE','Gelderland','',157,'static_countries'),(534,0,0,'NL','NLD',528,'GR','Groningen','',157,'static_countries'),(535,0,0,'NL','NLD',528,'LI','Limburg','',157,'static_countries'),(536,0,0,'NL','NLD',528,'NB','Noord-Brabant','',157,'static_countries'),(537,0,0,'NL','NLD',528,'NH','Noord-Holland','',157,'static_countries'),(538,0,0,'NL','NLD',528,'OV','Overijssel','',157,'static_countries'),(539,0,0,'NL','NLD',528,'UT','Utrecht','',157,'static_countries'),(540,0,0,'NL','NLD',528,'ZH','Zuid-Holland','',157,'static_countries'),(541,0,0,'NL','NLD',528,'ZE','Zeeland','',157,'static_countries'),(542,0,0,'FR','FRA',250,'A','Alsace','',72,'static_countries'),(543,0,0,'FR','FRA',250,'B','Aquitaine','',72,'static_countries'),(544,0,0,'FR','FRA',250,'C','Auvergne','',72,'static_countries'),(545,0,0,'FR','FRA',250,'D','Bourgogne','',72,'static_countries'),(546,0,0,'FR','FRA',250,'E','Bretagne','',72,'static_countries'),(547,0,0,'FR','FRA',250,'F','Centre','',72,'static_countries'),(548,0,0,'FR','FRA',250,'G','Champagne-Ardenne','',72,'static_countries'),(549,0,0,'FR','FRA',250,'H','Corse','',72,'static_countries'),(550,0,0,'FR','FRA',250,'I','Franche-Comté','',72,'static_countries'),(551,0,0,'FR','FRA',250,'J','Île-de-France','',72,'static_countries'),(552,0,0,'FR','FRA',250,'K','Languedoc-Roussillon','',72,'static_countries'),(553,0,0,'FR','FRA',250,'L','Limousin','',72,'static_countries'),(554,0,0,'FR','FRA',250,'M','Lorraine','',72,'static_countries'),(555,0,0,'FR','FRA',250,'N','Midi-Pyrénées','',72,'static_countries'),(556,0,0,'FR','FRA',250,'O','Nord-Pas-de-Calais','',72,'static_countries'),(557,0,0,'FR','FRA',250,'P','Basse-Normandie','',72,'static_countries'),(558,0,0,'FR','FRA',250,'Q','Haute-Normandie','',72,'static_countries'),(559,0,0,'FR','FRA',250,'R','Pays de la Loire','',72,'static_countries'),(560,0,0,'FR','FRA',250,'S','Picardie','',72,'static_countries'),(561,0,0,'FR','FRA',250,'T','Poitou-Charentes','',72,'static_countries'),(562,0,0,'FR','FRA',250,'U','Provence-Alpes-Côte d\'Azur','',72,'static_countries'),(563,0,0,'FR','FRA',250,'V','Rhône-Alpes','',72,'static_countries'),(564,0,0,'FR','FRA',250,'01','Ain','',72,'static_countries'),(565,0,0,'FR','FRA',250,'02','Aisne','',72,'static_countries'),(566,0,0,'FR','FRA',250,'03','Allier','',72,'static_countries'),(567,0,0,'FR','FRA',250,'04','Alpes-de-Haute-Provence','',72,'static_countries'),(568,0,0,'FR','FRA',250,'05','Hautes-Alpes','',72,'static_countries'),(569,0,0,'FR','FRA',250,'06','Alpes-Maritimes','',72,'static_countries'),(570,0,0,'FR','FRA',250,'07','Ardèche','',72,'static_countries'),(571,0,0,'FR','FRA',250,'08','Ardennes','',72,'static_countries'),(572,0,0,'FR','FRA',250,'09','Ariège','',72,'static_countries'),(573,0,0,'FR','FRA',250,'10','Aube','',72,'static_countries'),(574,0,0,'FR','FRA',250,'11','Aude','',72,'static_countries'),(575,0,0,'FR','FRA',250,'12','Aveyron','',72,'static_countries'),(576,0,0,'FR','FRA',250,'13','Bouches-du-Rhône','',72,'static_countries'),(577,0,0,'FR','FRA',250,'14','Calvados','',72,'static_countries'),(578,0,0,'FR','FRA',250,'15','Cantal','',72,'static_countries'),(579,0,0,'FR','FRA',250,'16','Charente','',72,'static_countries'),(580,0,0,'FR','FRA',250,'17','Charente-Maritime','',72,'static_countries'),(581,0,0,'FR','FRA',250,'18','Cher','',72,'static_countries'),(582,0,0,'FR','FRA',250,'19','Corrèze','',72,'static_countries'),(583,0,0,'FR','FRA',250,'2A','Corse-du-Sud','',72,'static_countries'),(584,0,0,'FR','FRA',250,'2B','Haute-Corse','',72,'static_countries'),(585,0,0,'FR','FRA',250,'21','Côte-d\'Or','',72,'static_countries'),(586,0,0,'FR','FRA',250,'22','Côtes-d\'Armor','',72,'static_countries'),(587,0,0,'FR','FRA',250,'23','Creuse','',72,'static_countries'),(588,0,0,'FR','FRA',250,'24','Dordogne','',72,'static_countries'),(589,0,0,'FR','FRA',250,'25','Doubs','',72,'static_countries'),(590,0,0,'FR','FRA',250,'26','Drôme','',72,'static_countries'),(591,0,0,'FR','FRA',250,'27','Eure','',72,'static_countries'),(592,0,0,'FR','FRA',250,'28','Eure-et-Loir','',72,'static_countries'),(593,0,0,'FR','FRA',250,'29','Finistère','',72,'static_countries'),(594,0,0,'FR','FRA',250,'30','Gard','',72,'static_countries'),(595,0,0,'FR','FRA',250,'31','Haute-Garonne','',72,'static_countries'),(596,0,0,'FR','FRA',250,'32','Gers','',72,'static_countries'),(597,0,0,'FR','FRA',250,'33','Gironde','',72,'static_countries'),(598,0,0,'FR','FRA',250,'34','Hérault','',72,'static_countries'),(599,0,0,'FR','FRA',250,'35','Ille-et-Vilaine','',72,'static_countries'),(600,0,0,'FR','FRA',250,'36','Indre','',72,'static_countries'),(601,0,0,'FR','FRA',250,'37','Indre-et-Loire','',72,'static_countries'),(602,0,0,'FR','FRA',250,'38','Isère','',72,'static_countries'),(603,0,0,'FR','FRA',250,'39','Jura','',72,'static_countries'),(604,0,0,'FR','FRA',250,'40','Landes','',72,'static_countries'),(605,0,0,'FR','FRA',250,'41','Loir-et-Cher','',72,'static_countries'),(606,0,0,'FR','FRA',250,'42','Loire','',72,'static_countries'),(607,0,0,'FR','FRA',250,'43','Haute-Loire','',72,'static_countries'),(608,0,0,'FR','FRA',250,'44','Loire-Atlantique','',72,'static_countries'),(609,0,0,'FR','FRA',250,'45','Loiret','',72,'static_countries'),(610,0,0,'FR','FRA',250,'46','Lot','',72,'static_countries'),(611,0,0,'FR','FRA',250,'47','Lot-et-Garonne','',72,'static_countries'),(612,0,0,'FR','FRA',250,'48','Lozère','',72,'static_countries'),(613,0,0,'FR','FRA',250,'49','Maine-et-Loire','',72,'static_countries'),(614,0,0,'FR','FRA',250,'50','Manche','',72,'static_countries'),(615,0,0,'FR','FRA',250,'51','Marne','',72,'static_countries'),(616,0,0,'FR','FRA',250,'52','Haute-Marne','',72,'static_countries'),(617,0,0,'FR','FRA',250,'53','Mayenne','',72,'static_countries'),(618,0,0,'FR','FRA',250,'54','Meurthe-et-Moselle','',72,'static_countries'),(619,0,0,'FR','FRA',250,'55','Meuse','',72,'static_countries'),(620,0,0,'FR','FRA',250,'56','Morbihan','',72,'static_countries'),(621,0,0,'FR','FRA',250,'57','Moselle','',72,'static_countries'),(622,0,0,'FR','FRA',250,'58','Nièvre','',72,'static_countries'),(623,0,0,'FR','FRA',250,'59','Nord','',72,'static_countries'),(624,0,0,'FR','FRA',250,'60','Oise','',72,'static_countries'),(625,0,0,'FR','FRA',250,'61','Orne','',72,'static_countries'),(626,0,0,'FR','FRA',250,'62','Pas-de-Calais','',72,'static_countries'),(627,0,0,'FR','FRA',250,'63','Puy-de-Dôme','',72,'static_countries'),(628,0,0,'FR','FRA',250,'64','Pyrénées-Atlantiques','',72,'static_countries'),(629,0,0,'FR','FRA',250,'65','Hautes-Pyrénées','',72,'static_countries'),(630,0,0,'FR','FRA',250,'66','Pyrénées-Orientales','',72,'static_countries'),(631,0,0,'FR','FRA',250,'67','Bas-Rhin','',72,'static_countries'),(632,0,0,'FR','FRA',250,'68','Haut-Rhin','',72,'static_countries'),(633,0,0,'FR','FRA',250,'69','Rhône','',72,'static_countries'),(634,0,0,'FR','FRA',250,'70','Haute-Saône','',72,'static_countries'),(635,0,0,'FR','FRA',250,'71','Saône-et-Loire','',72,'static_countries'),(636,0,0,'FR','FRA',250,'72','Sarthe','',72,'static_countries'),(637,0,0,'FR','FRA',250,'73','Savoie','',72,'static_countries'),(638,0,0,'FR','FRA',250,'74','Haute-Savoie','',72,'static_countries'),(639,0,0,'FR','FRA',250,'75','Paris','',72,'static_countries'),(640,0,0,'FR','FRA',250,'76','Seine-Maritime','',72,'static_countries'),(641,0,0,'FR','FRA',250,'77','Seine-et-Marne','',72,'static_countries'),(642,0,0,'FR','FRA',250,'78','Yvelines','',72,'static_countries'),(643,0,0,'FR','FRA',250,'79','Deux-Sèvres','',72,'static_countries'),(644,0,0,'FR','FRA',250,'80','Somme','',72,'static_countries'),(645,0,0,'FR','FRA',250,'81','Tarn','',72,'static_countries'),(646,0,0,'FR','FRA',250,'82','Tarn-et-Garonne','',72,'static_countries'),(647,0,0,'FR','FRA',250,'83','Var','',72,'static_countries'),(648,0,0,'FR','FRA',250,'84','Vaucluse','',72,'static_countries'),(649,0,0,'FR','FRA',250,'85','Vendée','',72,'static_countries'),(650,0,0,'FR','FRA',250,'86','Vienne','',72,'static_countries'),(651,0,0,'FR','FRA',250,'87','Haute-Vienne','',72,'static_countries'),(652,0,0,'FR','FRA',250,'88','Vosges','',72,'static_countries'),(653,0,0,'FR','FRA',250,'89','Yonne','',72,'static_countries'),(654,0,0,'FR','FRA',250,'90','Territoire de Belfort','',72,'static_countries'),(655,0,0,'FR','FRA',250,'91','Essonne','',72,'static_countries'),(656,0,0,'FR','FRA',250,'92','Hauts-de-Seine','',72,'static_countries'),(657,0,0,'FR','FRA',250,'93','Seine-Saint-Denis','',72,'static_countries'),(658,0,0,'FR','FRA',250,'94','Val-de-Marne','',72,'static_countries'),(659,0,0,'FR','FRA',250,'95','Val-d\'Oise','',72,'static_countries'),(660,0,0,'FR','FRA',250,'GP','Guadeloupe','',72,'static_countries'),(661,0,0,'FR','FRA',250,'GF','Guyane française','French Guiana',72,'static_countries'),(662,0,0,'FR','FRA',250,'MQ','Martinique','Martinique',72,'static_countries'),(663,0,0,'FR','FRA',250,'RE','La Réunion','Réunion',72,'static_countries'),(664,0,0,'FR','FRA',250,'CP','Clipperton','',72,'static_countries'),(665,0,0,'FR','FRA',250,'YT','Mayotte','',72,'static_countries'),(666,0,0,'FR','FRA',250,'NC','Nouvelle-Calédonie','New Caledonia',72,'static_countries'),(667,0,0,'FR','FRA',250,'PF','Polynésie française','French Polynesia',72,'static_countries'),(668,0,0,'FR','FRA',250,'BL','Saint-Barthélemy','Saint Barthélemy',72,'static_countries'),(669,0,0,'FR','FRA',250,'MF','Saint-Martin','Saint Martin',72,'static_countries'),(670,0,0,'FR','FRA',250,'PM','Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',72,'static_countries'),(671,0,0,'FR','FRA',250,'TF','Terres australes françaises','French Southern Territories',72,'static_countries'),(672,0,0,'FR','FRA',250,'WF','Wallis-et-Futuna','Wallis and Futuna',72,'static_countries'),(673,0,0,'PL','POL',616,'DS','dolnośląskie','',170,'static_countries'),(674,0,0,'PL','POL',616,'KP','kujawsko-pomorskie','',170,'static_countries'),(675,0,0,'PL','POL',616,'LU','lubelskie','',170,'static_countries'),(676,0,0,'PL','POL',616,'LB','lubuskie','',170,'static_countries'),(677,0,0,'PL','POL',616,'LD','łódzkie','',170,'static_countries'),(678,0,0,'PL','POL',616,'MA','małopolskie','',170,'static_countries'),(679,0,0,'PL','POL',616,'MZ','mazowieckie','',170,'static_countries'),(680,0,0,'PL','POL',616,'OP','opolskie','',170,'static_countries'),(681,0,0,'PL','POL',616,'PK','podkarpackie','',170,'static_countries'),(682,0,0,'PL','POL',616,'PD','podlaskie','',170,'static_countries'),(683,0,0,'PL','POL',616,'PM','pomorskie','',170,'static_countries'),(684,0,0,'PL','POL',616,'SL','śląskie','',170,'static_countries'),(685,0,0,'PL','POL',616,'SK','świętokrzyskie','',170,'static_countries'),(686,0,0,'PL','POL',616,'WN','warmińsko-mazurskie','',170,'static_countries'),(687,0,0,'PL','POL',616,'WP','wielkopolskie','',170,'static_countries'),(688,0,0,'PL','POL',616,'ZP','zachodniopomorskie','',170,'static_countries'),(689,0,0,'HR','HRV',191,'21','Grad Zagreb','City of Zagreb',93,'static_countries'),(690,0,0,'HR','HRV',191,'07','Bjelovarsko-bilogorska županija','Bjelovar-Bilogora',93,'static_countries'),(691,0,0,'HR','HRV',191,'12','Brodsko-posavska županija','Brod-Posavina',93,'static_countries'),(692,0,0,'HR','HRV',191,'19','Dubrovačko-neretvanska županija','Dubrovnik-Neretva',93,'static_countries'),(693,0,0,'HR','HRV',191,'18','Istarska županija','Istria',93,'static_countries'),(694,0,0,'HR','HRV',191,'04','Karlovačka županija','Karlovac',93,'static_countries'),(695,0,0,'HR','HRV',191,'06','Koprivničko-križevačka županija','Koprivnica-Križevci',93,'static_countries'),(696,0,0,'HR','HRV',191,'02','Krapinsko-zagorska županija','Krapina-Zagorje',93,'static_countries'),(697,0,0,'HR','HRV',191,'09','Ličko-senjska županija','Lika-Senj',93,'static_countries'),(698,0,0,'HR','HRV',191,'20','Međimurska županija','Međimurje',93,'static_countries'),(699,0,0,'HR','HRV',191,'14','Osječko-baranjska županija','Osijek-Baranja',93,'static_countries'),(700,0,0,'HR','HRV',191,'11','Požeško-slavonska županija','Požega-Slavonia',93,'static_countries'),(701,0,0,'HR','HRV',191,'08','Primorsko-goranska županija','Primorje-Gorski Kotar',93,'static_countries'),(702,0,0,'HR','HRV',191,'03','Sisačko-moslavačka županija','Sisak-Moslavina',93,'static_countries'),(703,0,0,'HR','HRV',191,'17','Splitsko-dalmatinska županija','Split-Dalmatia',93,'static_countries'),(704,0,0,'HR','HRV',191,'15','Šibensko-kninska županija','Šibenik-Knin',93,'static_countries'),(705,0,0,'HR','HRV',191,'05','Varaždinska županija','Varaždin',93,'static_countries'),(706,0,0,'HR','HRV',191,'10','Virovitičko-podravska županija','Virovitica-Podravina',93,'static_countries'),(707,0,0,'HR','HRV',191,'16','Vukovarsko-srijemska županija','Vukovar-Syrmia',93,'static_countries'),(708,0,0,'HR','HRV',191,'13','Zadarska županija','Zadar',93,'static_countries'),(709,0,0,'HR','HRV',191,'01','Zagrebačka županija','Zagreb',93,'static_countries');
/*!40000 ALTER TABLE `static_country_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_currencies`
--

DROP TABLE IF EXISTS `static_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_currencies` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `cu_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cu_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_thousands_point` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_decimal_point` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_decimal_digits` smallint(6) NOT NULL DEFAULT '0',
  `cu_sub_name_en` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_sub_divisor` int(11) NOT NULL DEFAULT '1',
  `cu_sub_symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_sub_symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_currencies`
--

LOCK TABLES `static_currencies` WRITE;
/*!40000 ALTER TABLE `static_currencies` DISABLE KEYS */;
INSERT INTO `static_currencies` VALUES (2,0,0,'AED',784,'United Arab Emirates dirham','Dhs.','','.',',',2,'fils',100,'',''),(4,0,0,'ALL',8,'Albanian Lek','L','','.',',',2,'qindarka',100,'',''),(5,0,0,'AMD',51,'Armenian Dram','Dram','','.',',',2,'luma',100,'',''),(6,0,0,'ANG',532,'Netherlands Antillean gulden','NAƒ','','.',',',2,'cent',100,'',''),(7,0,0,'AOA',973,'Angolan Kwanza','Kz','','.',',',2,'centavo',100,'',''),(8,0,0,'ARS',32,'Argentine Peso','$','','.',',',2,'centavo',100,'',''),(9,0,0,'AUD',36,'Australian Dollar','$A','','.',',',2,'cent',100,'',''),(10,0,0,'AWG',533,'Aruban Guilder','Af.','','.',',',2,'cent',100,'',''),(11,0,0,'AZN',944,'Azerbaijani Manat','','','.',',',2,'qəpik',100,'',''),(12,0,0,'BAM',977,'Bosnia-Herzegovina Convertible Mark','KM','','.',',',2,'feninga',100,'',''),(13,0,0,'BBD',52,'Barbados Dollar','Bds$','','.',',',2,'cent',100,'',''),(14,0,0,'BDT',50,'Bangladeshi taka','Tk','','.',',',2,'paisa',100,'',''),(16,0,0,'BGN',975,'Bulgarian Lev','lv','','.',',',2,'stotinka',100,'',''),(17,0,0,'BHD',48,'Bahraini Dinar','BD','','.',',',3,'fils',1000,'',''),(18,0,0,'BIF',108,'Burundi Franc','FBu','','.','',2,'centime',100,'',''),(19,0,0,'BMD',60,'Bermuda Dollar','BM$','','.',',',2,'cent',100,'',''),(20,0,0,'BND',96,'Brunei Dollar','B$','','.',',',2,'sen',100,'',''),(21,0,0,'BOB',68,'Boliviano','Bs','','.',',',2,'centavo',100,'',''),(23,0,0,'BRL',986,'Brazilian Real','R$','','.',',',2,'centavo',100,'',''),(24,0,0,'BSD',44,'Bahamian Dollar','$','','.',',',2,'cent',100,'',''),(25,0,0,'BTN',64,'Bhutanese Ngultrum','Nu','','.',',',2,'chetrum',100,'',''),(26,0,0,'BWP',72,'Botswana pula','P','','.',',',2,'thebe',100,'',''),(27,0,0,'BYR',974,'Belarussian Ruble','Br','','.',',',2,'kapiejka',100,'',''),(28,0,0,'BZD',84,'Belize Dollar','BZ','','.',',',2,'cent',100,'',''),(29,0,0,'CAD',124,'Canadian Dollar','$','','.',',',2,'cent',100,'','¢'),(30,0,0,'CDF',976,'Congolese franc','FC','','.',',',2,'centime',100,'',''),(31,0,0,'CHF',756,'Swiss franc','SFr.','','\'','.',2,'centime',100,'',''),(33,0,0,'CLP',152,'Chilean Peso','$','','.','',0,'',1,'',''),(34,0,0,'CNY',156,'Chinese Yuan Renminbi','Ұ','','.',',',2,'fen',100,'',''),(35,0,0,'COP',170,'Colombian Peso','$','','.',',',2,'centavo',100,'',''),(36,0,0,'CRC',188,'Costa Rican colón','₡','','.',',',2,'centimo',100,'',''),(37,0,0,'CUP',192,'Cuban peso','Cub$','','.',',',2,'centavo',100,'',''),(38,0,0,'CVE',132,'Cape Verde Escudo','CVEsc.','','.',',',2,'centavo',100,'',''),(39,0,1,'CYP',196,'Cypriot pound','C£','','.',',',2,'cent',100,'',''),(40,0,0,'CZK',203,'Czech koruna','','Kč','.',',',2,'haléř',100,'',''),(41,0,0,'DJF',262,'Djibouti franc','FD','','.','',0,'',1,'',''),(42,0,0,'DKK',208,'Danish krone','kr.','','.',',',2,'Øre',100,'',''),(43,0,0,'DOP',214,'Dominican peso','RD$','','.',',',2,'centavo',100,'',''),(44,0,0,'DZD',12,'Algerian Dinar','DA','','.',',',2,'centime',100,'',''),(45,0,0,'EEK',233,'Estonian kroon','','ekr','.',',',2,'sent',100,'',''),(46,0,0,'EGP',818,'Egyptian pound','LE','','.',',',2,'piastre',100,'',''),(47,0,0,'ERN',232,'Eritrean nakfa','Nfa','','.',',',2,'cent',100,'',''),(48,0,0,'ETB',230,'Ethiopian birr','Br','','.',',',2,'santim',100,'',''),(49,0,0,'EUR',978,'Euro','€','','.',',',2,'cent',100,'¢',''),(50,0,0,'FJD',242,'Fijian dollar','FJ$','','.',',',2,'cent',100,'',''),(51,0,0,'FKP',238,'Falkland Islands pound','Fl£','','.',',',2,'penny',100,'',''),(52,0,0,'GBP',826,'Pound sterling','£','',',','.',2,'penny',100,'','p'),(53,0,0,'GEL',981,'Georgian lari','','lari','.',',',2,'tetri',100,'',''),(54,0,1,'GHC',288,'Ghanaian cedi','','','.',',',2,'pesewa',100,'',''),(55,0,0,'GIP',292,'Gibraltar pound','£','','.',',',2,'penny',100,'',''),(56,0,0,'GMD',270,'Gambian dalasi','D','','.',',',2,'butut',100,'',''),(57,0,0,'GNF',324,'Guinea Franc','GF','','.','',0,'',1,'',''),(58,0,0,'GTQ',320,'Guatemalan quetzal','Q.','','.',',',2,'centavo',100,'',''),(59,0,0,'GWP',624,'Guinea-Bissau Peso','','','.',',',2,'',100,'',''),(60,0,0,'GYD',328,'Guyana Dollar','G$','','.',',',2,'Cent',100,'',''),(61,0,0,'HKD',344,'Hong Kong dollar','HK$','','.',',',2,'cent',100,'',''),(62,0,0,'HNL',340,'Honduran lempira','L','','.',',',2,'centavo',100,'',''),(63,0,0,'HRK',191,'Croatian kuna','kn','','.',',',2,'lipa',100,'',''),(64,0,0,'HTG',332,'Haitian gourde','Gde.','','.',',',2,'centime',100,'',''),(65,0,0,'HUF',348,'Hungarian forint','','Ft','.',',',2,'fillér',100,'',''),(66,0,0,'IDR',360,'Indonesian rupiah','Rp.','','.',',',2,'sen',100,'',''),(67,0,0,'ILS',376,'New Israeli Sheqel','','NIS','.',',',2,'agora',100,'',''),(68,0,0,'INR',356,'Indian rupee','Rs','','.',',',2,'paisha',100,'',''),(69,0,0,'IQD',368,'Iraqi dinar','ID','','.',',',3,'fils',1000,'',''),(70,0,0,'IRR',364,'Iranian rial','Rls','','.',',',2,'dinar',100,'',''),(71,0,0,'ISK',352,'Icelandic króna','','ikr','.',',',2,'aurar',100,'',''),(72,0,0,'JMD',388,'Jamaican dollar','J$','','.',',',2,'cent',100,'',''),(73,0,0,'JOD',400,'Jordanian dinar','JD','','.',',',2,'piastre',100,'',''),(74,0,0,'JPY',392,'Japanese yen','¥','','.','',2,'sen',100,'',''),(75,0,0,'KES',404,'Kenyan shilling','Kshs.','','.',',',2,'cent',100,'',''),(76,0,0,'KGS',417,'Kyrgyzstani som','K.S.','','.',',',2,'tyiyn',100,'',''),(77,0,0,'KHR',116,'Cambodian riel','CR','','.',',',2,'sen',100,'',''),(78,0,0,'KMF',174,'Comorian Franc','CF','','.','',0,'',1,'',''),(79,0,0,'KPW',408,'North Korean won','₩n','','.',',',2,'chon',100,'',''),(80,0,0,'KRW',410,'South Corean won','￦','','.','',2,'jeon',100,'',''),(81,0,0,'KWD',414,'Kuwaiti dinar','KD','','.',',',3,'fils',1000,'',''),(82,0,0,'KYD',136,'Cayman Islands Dollar','$','','.',',',2,'cent',100,'',''),(83,0,0,'KZT',398,'Kazakhstani tenge','T','','.',',',2,'tiyin',100,'',''),(84,0,0,'LAK',418,'Lao kip','₭','','.',',',2,'at',100,'',''),(85,0,0,'LBP',422,'Lebanese pound','','LL','.',',',2,'piastre',100,'',''),(86,0,0,'LKR',144,'Sri Lankan rupee','Re','','.',',',2,'cent',100,'',''),(87,0,0,'LRD',430,'Liberian dollar','Lib$','','.',',',2,'cent',100,'',''),(88,0,0,'LSL',426,'Lesotho loti','M','','.',',',2,'sente',100,'',''),(89,0,0,'LTL',440,'Lithuanian litas','','Lt','.',',',2,'centas',100,'',''),(90,0,0,'LVL',428,'Latvian lats','Ls','','.',',',2,'santim',100,'',''),(91,0,0,'LYD',434,'Libyan dinar','LD.','','.',',',3,'dirham',1000,'',''),(92,0,0,'MAD',504,'Moroccan dirham','Dh','','.',',',2,'centime',100,'',''),(93,0,0,'MDL',498,'Moldovan leu','','','.',',',2,'ban',100,'',''),(95,0,0,'MKD',807,'Macedonian denar','Den','','.',',',2,'deni',100,'',''),(96,0,0,'MMK',104,'Myanmar kyat','K','','.',',',2,'pya',100,'',''),(97,0,0,'MNT',496,'Mongolian tugrug','₮','','.',',',2,'mongo',100,'',''),(98,0,0,'MOP',446,'Macanese pataca','Pat.','','.',',',2,'avo',100,'',''),(99,0,0,'MRO',478,'Mauritanian ouguiya','UM','','.',',',2,'khoum',100,'',''),(100,0,1,'MTL',470,'Maltese lira','Lm','','.',',',2,'cent',100,'',''),(101,0,0,'MUR',480,'Mauritian rupee','Rs','','.',',',2,'cent',100,'',''),(102,0,0,'MVR',462,'Maldivian rufiyaa','Rf','','.',',',2,'laari',100,'',''),(103,0,0,'MWK',454,'Malawian kwacha','MK','','.',',',2,'tambala',100,'',''),(104,0,0,'MXN',484,'Mexican peso','$','','.',',',2,'centavo',100,'',''),(106,0,0,'MYR',458,'Malaysian ringgit','RM','','.',',',2,'sen',100,'',''),(107,0,1,'MZM',508,'Mozambican metical','','Mt','.',',',2,'centavo',100,'',''),(108,0,0,'NAD',516,'Namibian dollar','N$','','.',',',2,'cent',100,'',''),(109,0,0,'NGN',566,'Nigerian naira','₦','','.',',',2,'kobo',100,'',''),(110,0,0,'NIO',558,'Nicaraguan córdoba','C$','','.',',',2,'centavo',100,'',''),(111,0,0,'NOK',578,'Norvegian krone','kr','','.',',',2,'øre',100,'',''),(112,0,0,'NPR',524,'Nepalese rupee','Rs.','','.',',',2,'paisa',100,'',''),(113,0,0,'NZD',554,'New Zealand dollar','$','',',','.',2,'cent',100,'',''),(114,0,0,'OMR',512,'Omani rial','OR','','.',',',3,'baiza',1000,'',''),(115,0,0,'PAB',590,'Panamanian balboa','B','','.',',',2,'centésimo',100,'',''),(116,0,0,'PEN',604,'Peruvian nuevo sol','Sl.','','.',',',2,'centimo',100,'',''),(117,0,0,'PGK',598,'Papua New Guinean kina','K','','.',',',2,'toea',100,'',''),(118,0,0,'PHP',608,'Philippine peso','P','','.',',',2,'centavo',100,'',''),(119,0,0,'PKR',586,'Pakistani rupee','Rs.','','.',',',2,'paisa',100,'',''),(120,0,0,'PLN',985,'Polish złoty','','zł','.',',',2,'grosz',100,'',''),(121,0,0,'PYG',600,'Paraguayan guaraní','G','','.','',2,'centimo',100,'',''),(122,0,0,'QAR',634,'Qatari riyal','QR','','.',',',2,'dirham',100,'',''),(123,0,1,'ROL',642,'Romanian leu','','l','.',',',2,'ban',100,'',''),(124,0,0,'RUB',643,'Russian ruble','','R','.',',',2,'kopek',100,'',''),(126,0,0,'RWF',646,'Rwandan franc','frw','','.','',0,'centime',1,'',''),(127,0,0,'SAR',682,'Saudi riyal','SR','','.',',',2,'hallalah',100,'',''),(128,0,0,'SBD',90,'Solomon Islands dollar','SI$','','.',',',2,'cent',100,'',''),(129,0,0,'SCR',690,'Seychelles rupee','SR','','.',',',2,'cent',100,'',''),(130,0,0,'SDG',938,'Sudanese pound','£','','.',',',2,'piastre',100,'',''),(131,0,0,'SEK',752,'Swedish krona','','kr','.',',',2,'öre',100,'',''),(132,0,0,'SGD',702,'Singapore dollar','$','','.',',',2,'cent',100,'',''),(133,0,0,'SHP',654,'Saint Helena pound','£','','.',',',2,'penny',100,'',''),(134,0,1,'SIT',705,'Slovenian tolar','SIT','','.',',',2,'stotin',100,'',''),(135,0,1,'SKK',703,'Slovak koruna','','Sk','.',',',2,'halier',100,'','h'),(136,0,0,'SLL',694,'Sierra Leonean leone','Le','','.',',',2,'cent',100,'',''),(137,0,0,'SOS',706,'Somali shilling','So.','','.',',',2,'centesimo',100,'',''),(139,0,0,'STD',678,'São Tomé and Príncipe dobra','Db','','.',',',2,'cêntimo',100,'',''),(140,0,0,'SVC',222,'Salvadoran colón','₡','','.',',',2,'centavo',100,'',''),(141,0,0,'SYP',760,'Syrian pound','£S','','.',',',2,'piastre',100,'',''),(142,0,0,'SZL',748,'Swazi lilangeni','','','.',',',2,'cent',100,'',''),(143,0,0,'THB',764,'Baht','','Bt','.',',',2,'satang',100,'',''),(144,0,0,'TJS',972,'Tajikistani somoni','','','.',',',2,'diram',100,'',''),(145,0,1,'TMM',795,'Turkmenistani manat','','','.',',',2,'tenge',100,'',''),(146,0,0,'TND',788,'Tunisian dinar','TD','','.',',',3,'millime',1000,'',''),(147,0,0,'TOP',776,'Tongan pa\'anga','T$','','.',',',2,'seniti',100,'',''),(150,0,0,'TTD',780,'Trinidad and Tobago dollar','TT$','','.',',',2,'cent',100,'',''),(151,0,0,'TWD',901,'New Taiwan dollar','NT$','','.',',',2,'cent',100,'',''),(152,0,0,'TZS',834,'Tanzanian shilling','TSh','','.',',',2,'cent',100,'',''),(153,0,0,'UAH',980,'Ukrainian hryvnia','hrn','','.',',',2,'kopiyka',100,'',''),(154,0,0,'UGX',800,'Ugandan shilling','USh','','.',',',2,'cent',100,'',''),(155,0,0,'USD',840,'US dollar','$','',',','.',2,'cent',100,'','¢'),(156,0,0,'UYU',858,'Uruguayan peso','UR$','','.',',',2,'centésimo',100,'',''),(157,0,0,'UZS',860,'Uzbekistani som','U.S.','','.',',',2,'tiyin',100,'',''),(158,0,0,'VEF',937,'Bolivar','Bs.','','.',',',2,'céntimo',100,'',''),(159,0,0,'VND',704,'Vietnamese đồng','','₫','.',',',2,'xu',100,'',''),(160,0,0,'VUV',548,'Vatu','','VT','.','',0,'centime',1,'',''),(161,0,0,'WST',882,'Samoan tala','WS$','','.',',',2,'sene',100,'',''),(162,0,0,'XAF',950,'CFA Franc BEAC','CFAF','','.','',0,'',1,'',''),(163,0,0,'XCD',951,'East Caribbean dollar','EC$','','.',',',2,'cent',100,'',''),(164,0,0,'XOF',952,'CFA Franc BCEAO','CFAF','','.','',0,'',1,'',''),(165,0,0,'XPF',953,'CFP Franc','CFPF','','.','',0,'',1,'',''),(166,0,0,'YER',886,'Yemeni rial','RI','','.',',',2,'fils',100,'',''),(168,0,0,'ZAR',710,'South African rand','R','','.',',',2,'cent',100,'',''),(169,0,0,'ZMW',967,'Zambian kwacha','K','','.',',',2,'ngwee',100,'',''),(170,0,1,'ZWD',716,'Zimbabwean dollar','$','','.',',',2,'cent',100,'',''),(171,0,0,'AFN',971,'Afghan afghani','Af','','.',',',2,'pul',100,'',''),(172,0,0,'RSD',941,'Serbian dinar','','','.',',',2,'para',100,'',''),(173,0,0,'MGA',969,'Malagasy ariary','','','.',',',1,'iraimbilanja',5,'',''),(174,0,0,'SRD',968,'Suriname dollar','$','','.',',',2,'cent',100,'',''),(175,0,0,'TRY',949,'Turkish lira','₺','','.',',',2,'kuruş',100,'',''),(176,0,0,'SSP',728,'South Sudanese pound','£','','.',',',2,'piastre',100,'',''),(177,0,0,'GHS',936,'Ghanaian cedi','GH₵','','.',',',2,'pesewa',100,'','Gp'),(178,0,0,'MZN',943,'Mozambican metical','MT','','.',',',2,'centavo',100,'',''),(179,0,0,'RON',946,'Romanian new leu','','l','.',',',2,'ban',100,'',''),(180,0,0,'TMT',934,'Turkmenistani manat','T','','.',',',2,'tenge',100,'','');
/*!40000 ALTER TABLE `static_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_languages`
--

DROP TABLE IF EXISTS `static_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_languages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `lg_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_name_local` varchar(99) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_typo3` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_country_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_collate_locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_sacred` smallint(6) NOT NULL DEFAULT '0',
  `lg_constructed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_languages`
--

LOCK TABLES `static_languages` WRITE;
/*!40000 ALTER TABLE `static_languages` DISABLE KEYS */;
INSERT INTO `static_languages` VALUES (1,0,0,'AB','Аҧсуа бызшәа','Abkhazian','','','',0,0),(2,0,0,'AA','Afaraf','Afar','','','',0,0),(3,0,0,'AF','Afrikaans','Afrikaans','','','',0,0),(4,0,0,'SQ','Gjuha shqipe','Albanian','sq','','sq',0,0),(5,0,0,'AM','አማርኛ','Amharic','','','',0,0),(6,0,0,'AR','العربية','Arabic','ar','','ar_SA',0,0),(7,0,0,'HY','Հայերեն','Armenian','','','',0,0),(8,0,0,'AS','অসমীয়া','Assamese','','','',0,0),(9,0,0,'AY','Aymar aru','Aymara','','','',0,0),(10,0,0,'AZ','Azərbaycan dili','Azerbaijani','','','',0,0),(11,0,0,'BA','Башҡорт','Bashkir','','','',0,0),(12,0,0,'EU','Euskara','Basque','eu','','eu_ES',0,0),(13,0,0,'BN','বাংলা','Bengali','','','',0,0),(14,0,0,'DZ','ཇོང་ཁ','Dzongkha','','','',0,0),(15,0,0,'BH','भोजपुरी','Bihari','','','',0,0),(16,0,0,'BI','Bislama','Bislama','','','',0,0),(17,0,0,'BR','Brezhoneg','Breton','','','',0,0),(18,0,0,'BG','Български','Bulgarian','bg','','bg_BG',0,0),(19,0,0,'MY','မ္ရန္‌မာစာ','Burmese','my','','my_MM',0,0),(20,0,0,'BE','Беларуская','Belarusian','','','',0,0),(21,0,0,'KM','ភាសាខ្មែរ','Khmer','km','','km',0,0),(22,0,0,'CA','Català','Catalan','ca','','ca_ES',0,0),(23,0,0,'ZA','Sawcuengh','Zhuang','','','',0,0),(24,0,0,'ZH','漢語','Chinese (Traditional)','hk','HK','zh_HK',0,0),(25,0,0,'CO','Corsu','Corsican','','','',0,0),(26,0,0,'HR','Hrvatski','Croatian','hr','','hr_HR',0,0),(27,0,0,'CS','Čeština','Czech','cz','','cs_CZ',0,0),(28,0,0,'DA','Dansk','Danish','dk','','da_DK',0,0),(29,0,0,'NL','Nederlands','Dutch','nl','','nl_NL',0,0),(30,0,0,'EN','English','English','','','en',0,0),(31,0,0,'EO','Esperanto','Esperanto','eo','','',0,1),(32,0,0,'ET','Eesti','Estonian','et','','et_EE',0,0),(33,0,0,'FO','Føroyskt','Faeroese','fo','','fo_FO',0,0),(34,0,0,'FA','فارسی','Persian','fa','','fa_IR',0,0),(35,0,0,'FJ','Na Vosa Vakaviti','Fijian','','','',0,0),(36,0,0,'FI','Suomi','Finnish','fi','','fi_FI',0,0),(37,0,0,'FR','Français','French','fr','','fr_FR',0,0),(38,0,0,'FY','Frysk','Frisian','','','',0,0),(39,0,0,'GL','Galego','Galician','ga','','gl_ES',0,0),(40,0,0,'GD','Gàidhlig','Scottish Gaelic','','','',0,0),(41,0,0,'GV','Gaelg','Manx','','','',0,0),(42,0,0,'KA','ქართული','Georgian','ge','','ka',0,0),(43,0,0,'DE','Deutsch','German','de','','de_DE',0,0),(44,0,0,'EL','Ελληνικά','Greek','gr','','el_GR',0,0),(45,0,0,'KL','Kalaallisut','Greenlandic','gl','','kl_DK',0,0),(46,0,0,'GN','Avañe\'ẽ','Guaraní','','','',0,0),(47,0,0,'GU','ગુજરાતી','Gujarati','','','',0,0),(48,0,0,'HA','Hausa','Hausa','','','',0,0),(49,0,0,'HE','עברית','Hebrew','he','','he_IL',0,0),(50,0,0,'HI','हिन्दी','Hindi','hi','','hi_IN',0,0),(51,0,0,'HU','Magyar','Hungarian','hu','','hu_HU',0,0),(52,0,0,'IS','Íslenska','Icelandic','is','','is_IS',0,0),(53,0,0,'ID','Bahasa Indonesia','Indonesian','','','',0,0),(54,0,0,'IA','Interlingua','Interlingua','','','',0,1),(55,0,0,'IE','Interlingue','Interlingue','','','',0,1),(56,0,0,'IU','ᐃᓄᒃᑎᑐᑦ','Inuktitut','','','',0,0),(57,0,0,'IK','Iñupiak','Inupiaq','','','',0,0),(58,0,0,'GA','Gaeilge','Irish','','','',0,0),(59,0,0,'IT','Italiano','Italian','it','','it_IT',0,0),(60,0,0,'JA','日本語','Japanese','jp','','ja_JP',0,0),(62,0,0,'KN','ಕನ್ನಡ','Kannada','','','',0,0),(63,0,0,'KS','कॉशुर','Kashmiri','','','',0,0),(64,0,0,'KK','Қазақ тілі','Kazakh','','','',0,0),(65,0,0,'RW','Kinyarwanda','Kinyarwanda','','','',0,0),(66,0,0,'KY','Кыргыз тили','Kirghiz','','','',0,0),(67,0,0,'RN','kiRundi','Kirundi','','','',0,0),(68,0,0,'KO','한국말','Korean','kr','','ko_KR',0,0),(69,0,0,'KU','Kurdî','Kurdish','','','',0,0),(70,0,0,'LO','ພາສາລາວ','Lao','','','',0,0),(71,0,0,'LA','Lingua latina','Latin','','','',1,0),(72,0,0,'LV','Latviešu','Latvian','lv','','lv_LV',0,0),(73,0,0,'LN','Lingála','Lingala','','','',0,0),(74,0,0,'LT','Lietuvių','Lithuanian','lt','','lt_LT',0,0),(75,0,0,'MK','Македонски','Macedonian','','','',0,0),(76,0,0,'MG','Merina','Malagasy','','','',0,0),(77,0,0,'MS','Bahasa Melayu','Malay','','','',0,0),(78,0,0,'ML','മലയാളം','Malayalam','','','',0,0),(79,0,0,'MT','Malti','Maltese','','','mt_MT',0,0),(80,0,0,'MI','Māori','Māori','','','',0,0),(81,0,0,'MR','मराठी','Marathi','','','',0,0),(82,0,0,'MO','молдовеняскэ','Moldavian','','','',0,0),(83,0,0,'MN','Монгол','Mongolian','','','',0,0),(84,0,0,'NA','Ekakairũ Naoero','Nauru','','','',0,0),(85,0,0,'NE','नेपाली','Nepali','','','',0,0),(86,0,0,'NO','Norsk','Norwegian','no','','no_NO',0,0),(87,0,0,'OC','Occitan','Occitan','','','',0,0),(88,0,0,'OR','ଓଡ଼ିଆ','Oriya','','','',0,0),(89,0,0,'OM','Afaan Oromoo','Oromo','','','',0,0),(90,0,0,'PS','پښت','Pashto','','','',0,0),(91,0,0,'PL','Polski','Polish','pl','','pl_PL',0,0),(92,0,0,'PT','Português','Portuguese','pt','','pt_PT',0,0),(93,0,0,'PA','ਪੰਜਾਬੀ / پنجابی','Punjabi','','','',0,0),(94,0,0,'QU','Runa Simi','Quechua','','','',0,0),(95,0,0,'RM','Rumantsch','Rhaeto-Romance','','','',0,0),(96,0,0,'RO','Română','Romanian','ro','','ro_RO',0,0),(97,0,0,'RU','Русский','Russian','ru','','ru_RU',0,0),(98,0,0,'SM','Gagana faʼa Samoa','Samoan','','','',0,0),(99,0,0,'SG','Sängö','Sango','','','',0,0),(100,0,0,'SA','संस्कृतम्','Sanskrit','','','',1,0),(101,0,0,'SR','Српски / Srpski','Serbian','sr','','sr_YU',0,0),(103,0,0,'ST','seSotho','Sesotho','','','',0,0),(104,0,0,'TN','Setswana','Setswana','','','',0,0),(105,0,0,'SN','chiShona','Shona','','','',0,0),(106,0,0,'SD','سنڌي، سندھی','Sindhi','','','',0,0),(107,0,0,'SI','සිංහල','Sinhala','','','',0,0),(108,0,0,'SS','siSwati','Swati','','','',0,0),(109,0,0,'SK','Slovenčina','Slovak','sk','','sk_SK',0,0),(110,0,0,'SL','Slovenščina','Slovenian','si','','sl_SI',0,0),(111,0,0,'SO','af Soomaali','Somali','','','',0,0),(112,0,0,'ES','Español','Spanish','es','','es_ES',0,0),(113,0,0,'SU','Basa Sunda','Sundanese','','','',0,0),(114,0,0,'SW','Kiswahili','Swahili','','','',0,0),(115,0,0,'SV','Svenska','Swedish','se','','sv_SE',0,0),(116,0,0,'TL','Tagalog','Tagalog','','','',0,0),(117,0,0,'TG','тоҷикӣ / تاجیکی','Tajik','','','',0,0),(118,0,0,'TA','தமிழ்','Tamil','','','',0,0),(119,0,0,'TT','татарча / tatarça / تاتارچ','Tatar','','','',0,0),(120,0,0,'TE','తెలుగు','Telugu','','','',0,0),(121,0,0,'TH','ภาษาไทย','Thai','th','','th_TH',0,0),(122,0,0,'BO','བོད་ཡིག','Tibetan','','','',0,0),(123,0,0,'TI','ትግርኛ','Tigrinya','','','',0,0),(124,0,0,'TO','faka-Tonga','Tongan','','','',0,0),(125,0,0,'TS','Tsonga','Tsonga','','','',0,0),(126,0,0,'TR','Türkçe','Turkish','tr','','tr_TR',0,0),(127,0,0,'TK','Türkmen dili','Turkmen','','','',0,0),(128,0,0,'TW','Twi','Twi','','','',0,0),(129,0,0,'UG','ئۇيغۇرچه','Uyghur','','','',0,0),(130,0,0,'UK','Українська','Ukrainian','ua','','uk_UA',0,0),(131,0,0,'UR','اردو','Urdu','','','',0,0),(132,0,0,'UZ','Ўзбек / O\'zbek','Uzbek','','','',0,0),(133,0,0,'VI','Tiếng Việt','Vietnamese','vn','','vi_VN',0,0),(134,0,0,'VO','Volapük','Volapük','','','',0,1),(135,0,0,'CY','Cymraeg','Welsh','','','',0,0),(136,0,0,'WO','Wolof','Wolof','','','',0,0),(137,0,0,'XH','isiXhosa','Xhosa','','','',0,0),(138,0,0,'YI','ייִדיש','Yiddish','','','',0,0),(139,0,0,'YO','Yorùbá','Yoruba','','','',0,0),(140,0,0,'ZU','isiZulu','Zulu','','','',0,0),(141,0,0,'BS','Bosanski','Bosnian','ba','','bs_BA',0,0),(142,0,0,'AE','Avestan','Avestan','','','',1,0),(143,0,0,'AK','Akan','Akan','','','',0,0),(144,0,0,'AN','Aragonés','Aragonese','','','',0,0),(145,0,0,'AV','магӀарул мацӀ','Avar','','','',0,0),(146,0,0,'BM','Bamanankan','Bambara','','','',0,0),(147,0,0,'CE','Нохчийн','Chechen','','','',0,0),(148,0,0,'CH','Chamoru','Chamorro','','','',0,0),(149,0,0,'CR','ᓀᐦᐃᔭᐤ','Cree','','','',0,0),(150,0,0,'CU','церковнославя́нский язы́к','Church Slavonic','','','',1,0),(151,0,0,'CV','Чăваш чěлхи','Chuvash','','','',0,0),(152,0,0,'DV','ދިވެހި','Dhivehi','','','',0,0),(153,0,0,'EE','Ɛʋɛgbɛ','Ewe','','','',0,0),(154,0,0,'FF','Fulfulde / Pulaar','Fula','','','',0,0),(155,0,0,'HO','Hiri motu','Hiri motu','','','',0,0),(156,0,0,'HT','Krèyol ayisyen','Haïtian Creole','','','',0,0),(157,0,0,'HZ','otsiHerero','Herero','','','',0,0),(158,0,0,'IG','Igbo','Igbo','','','',0,0),(159,0,0,'II','ꆇꉙ','Yi','','','',0,0),(160,0,0,'IO','Ido','Ido','','','',0,1),(161,0,0,'JV','Basa Jawa','Javanese','','','',0,0),(162,0,0,'KG','Kikongo','Kongo','','','',0,0),(163,0,0,'KI','Gĩkũyũ','Kikuyu','','','',0,0),(164,0,0,'KJ','Kuanyama','Kuanyama','','','',0,0),(165,0,0,'KR','Kanuri','Kanuri','','','',0,0),(166,0,0,'KV','коми кыв','Komi','','','',0,0),(167,0,0,'KW','Kernewek','Cornish','','','',0,0),(168,0,0,'LB','Lëtzebuergesch','Luxembourgish','','','',0,0),(169,0,0,'LG','Luganda','Luganda','','','',0,0),(170,0,0,'LI','Limburgs','Limburgish','','','',0,0),(171,0,0,'LU','Luba-Katanga','Luba-Katanga','','','',0,0),(172,0,0,'MH','Kajin M̧ajeļ','Marshallese','','','',0,0),(173,0,0,'NB','Norsk bokmål','Norwegian Bokmål','','','',0,0),(174,0,0,'ND','isiNdebele','North Ndebele','','','',0,0),(175,0,0,'NG','Owambo','Ndonga','','','',0,0),(176,0,0,'NN','Norsk nynorsk','Norwegian Nynorsk','','','',0,0),(177,0,0,'NR','Ndébélé','South Ndebele','','','',0,0),(178,0,0,'NV','Dinékʼehǰí','Navajo','','','',0,0),(179,0,0,'NY','chiCheŵa','Chichewa','','','',0,0),(180,0,0,'OJ','ᐊᓂᔑᓈᐯᒧᐎᓐ','Ojibwa','','','',0,0),(181,0,0,'OS','Ирон æвзаг','Ossetic','','','',0,0),(182,0,0,'PI','Pāli','Pali','','','',1,0),(183,0,0,'SC','Sardu','Sardinian','','','',0,0),(184,0,0,'SE',' Sámegiella','Northern Sami','','','',0,0),(186,0,0,'TY','Reo Tahiti','Tahitian','','','',0,0),(187,0,0,'VE','tshiVenḓa','Venda','','','',0,0),(188,0,0,'WA','Walon','Walloon','','','',0,0),(189,0,0,'PT','Português brasileiro','Brazilian Portuguese','br','BR','pt_BR',0,0),(190,0,0,'ZH','汉语','Chinese (Simplified)','ch','CN','zh_CN',0,0),(191,0,0,'FR','Français canadien','Canadian French','qc','CA','fr_CA',0,0),(192,0,0,'TL','Filipino','Filipino','','PH','fil',0,0),(193,0,0,'SR','Crnogorski jezik','Montenegrin','','ME','sr_ME',0,0),(194,0,0,'DE','Deutsch (Schweiz)','German (Switzerland)','de','CH','de_CH',0,0),(195,0,0,'DE','Deutsch (Österreich)','German (Austria)','de','AT','de_AT',0,0),(196,0,0,'EN','English (USA)','English (USA)','','US','en_US',0,0),(197,0,0,'EN','English (United Kingdom)','English (United Kingdom)','','GB','en_GB',0,0);
/*!40000 ALTER TABLE `static_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_territories`
--

DROP TABLE IF EXISTS `static_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_territories` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `tr_iso_nr` int(11) NOT NULL DEFAULT '0',
  `tr_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `tr_parent_iso_nr` int(11) NOT NULL DEFAULT '0',
  `tr_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_territories`
--

LOCK TABLES `static_territories` WRITE;
/*!40000 ALTER TABLE `static_territories` DISABLE KEYS */;
INSERT INTO `static_territories` VALUES (1,0,0,2,0,0,'Africa'),(2,0,0,9,0,0,'Oceania'),(3,0,0,19,0,0,'Americas'),(4,0,0,142,0,0,'Asia'),(5,0,0,150,0,0,'Europe'),(6,0,0,30,4,142,'Eastern Asia'),(7,0,0,35,4,142,'South-eastern Asia'),(8,0,0,143,4,142,'Central Asia'),(9,0,0,145,4,142,'Western Asia'),(10,0,0,39,5,150,'Southern Europe'),(11,0,0,151,5,150,'Eastern Europe'),(12,0,0,154,5,150,'Northern Europe'),(13,0,0,155,5,150,'Western Europe'),(16,0,0,5,31,419,'South America'),(17,0,0,13,31,419,'Central America'),(18,0,0,21,3,19,'Northern America'),(19,0,0,29,31,419,'Caribbean'),(20,0,0,11,1,2,'Western Africa'),(21,0,0,14,1,2,'Eastern Africa'),(22,0,0,15,1,2,'Northern Africa'),(23,0,0,17,1,2,'Middle Africa'),(24,0,0,18,1,2,'Southern Africa'),(25,0,0,53,2,9,'Australia and New Zealand'),(26,0,0,54,2,9,'Melanesia'),(27,0,0,57,2,9,'Micronesian Region'),(28,0,0,61,2,9,'Polynesia'),(30,0,0,34,4,142,'Southern Asia'),(31,0,0,419,3,19,'Latin America and the Caribbean');
/*!40000 ALTER TABLE `static_territories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) unsigned DEFAULT '0',
  `single_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(10) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(11) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `visible` int(10) unsigned DEFAULT '1',
  `status` varchar(24) COLLATE utf8_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `creator_tool` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `download_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `publisher` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `copyright` text COLLATE utf8_unicode_ci,
  `location_country` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `location_region` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `location_city` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `latitude` decimal(24,14) DEFAULT '0.00000000000000',
  `longitude` decimal(24,14) DEFAULT '0.00000000000000',
  `ranking` int(10) unsigned DEFAULT '0',
  `content_creation_date` int(10) unsigned DEFAULT '0',
  `content_modification_date` int(10) unsigned DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `unit` varchar(3) COLLATE utf8_unicode_ci DEFAULT '',
  `duration` double DEFAULT '0',
  `color_space` varchar(4) COLLATE utf8_unicode_ci DEFAULT '',
  `pages` int(10) unsigned DEFAULT '0',
  `language` varchar(12) COLLATE utf8_unicode_ci DEFAULT '',
  `fe_groups` tinytext COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `showinpreview` smallint(6) NOT NULL DEFAULT '0',
  `tx_themet3kit_slide_btn_txt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themet3kit_slide_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1489056893,1489056893,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (17,1,1489567236,'tt_content',1,1,'admin',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(10) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('000960cf100ac613e2599090b3153503','static_countries',104,'cn_country_zones','','','',97,0,0,'static_country_zones',318,''),('00404f44186d9ab4a21bf809521f9bcc','static_countries',36,'cn_country_zones','','','',3,0,0,'static_country_zones',70,''),('0046c2957ec4dd8979f3171fa7eec417','static_countries',61,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('005b4042044290c46a8978ee6f1c3bc5','static_countries',57,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('00b8e05676f85ed80e2161aefe864b8d','static_countries',74,'cn_country_zones','','','',47,0,0,'static_country_zones',381,''),('018a4a8c31bea275fc2a3b08fece27d5','static_countries',60,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('02390f42c793d1577418b3f5b464694e','static_countries',74,'cn_country_zones','','','',14,0,0,'static_country_zones',345,''),('0342d392f465768d4b3e82b5c391a5c1','static_countries',118,'cn_currency_uid','','','',0,0,0,'static_currencies',83,''),('036003a4e4c4c4b89a11569df3b2e0e1','static_countries',26,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('03955dab567cae651a21405ccdb8dcb6','static_territories',31,'tr_parent_territory_uid','','','',0,0,0,'static_territories',3,''),('048b71e0b3608a1add56b5807eb7ff72','static_countries',51,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('056ee95aeffe7c32064e9f6e98cb0768','static_territories',25,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('0599f68325b39b51b3001328f1a93b01','static_countries',74,'cn_country_zones','','','',26,0,0,'static_country_zones',363,''),('0602416bcee8233336131c30ff9d5608','static_countries',147,'cn_currency_uid','','','',0,0,0,'static_currencies',103,''),('0608ed753e9b49b1509f9a50ef7ad016','static_countries',157,'cn_country_zones','','','',4,0,0,'static_country_zones',534,''),('062c6e7c5843a099aeb653563a3ea7d8','static_countries',72,'cn_country_zones','','','',120,0,0,'static_country_zones',654,''),('063b854772d23c9cb4664ad8d5f2305b','static_countries',74,'cn_country_zones','','','',54,0,0,'static_country_zones',384,''),('0661321a8e4744221a36077eab40b016','static_countries',170,'cn_country_zones','','','',15,0,0,'static_country_zones',688,''),('0672841beb48d2dc069f86ea71a72f4c','static_countries',196,'cn_currency_uid','','','',0,0,0,'static_currencies',174,''),('0674ac29e7b0d98b24b44c8f89bf562d','static_countries',72,'cn_country_zones','','','',58,0,0,'static_country_zones',656,''),('06fff2bd787e45be72ec75fe880d298f','static_countries',74,'cn_country_zones','','','',41,0,0,'static_country_zones',375,''),('0716ddbac1db1d509bacf0665c38d5d8','static_countries',119,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('0756af1081681ec4eff5f0b3af70c48b','static_countries',72,'cn_country_zones','','','',72,0,0,'static_country_zones',608,''),('077d17137c01ff634b70f900062bce32','static_countries',168,'cn_currency_uid','','','',0,0,0,'static_currencies',118,''),('079800d7be6f9224ab24219fd844733e','static_countries',162,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('07c908a1addc5f40d3f31c949f0e1089','static_countries',170,'cn_country_zones','','','',14,0,0,'static_country_zones',687,''),('07d63f2bbf4a20ba4cd16e1189763991','static_countries',74,'cn_country_zones','','','',87,0,0,'static_country_zones',412,''),('07df58be55dc3d3ecd5fb16e371d492e','static_countries',72,'cn_country_zones','','','',2,0,0,'static_country_zones',566,''),('084866fd9f36697bf1149d66f245afc1','static_countries',93,'cn_country_zones','','','',1,0,0,'static_country_zones',691,''),('08565facf4757476426771f944a13cd4','static_countries',95,'cn_currency_uid','','','',0,0,0,'static_currencies',65,''),('08f2c56429cdc851e909d36fef83b61c','static_countries',41,'cn_country_zones','','','',13,0,0,'static_country_zones',117,''),('090bdf7b8ad2abaa22905fbf2f18d67b','static_countries',58,'cn_currency_uid','','','',0,0,0,'static_currencies',43,''),('0916540f4ba379a1041cb113f5dd00b8','static_countries',157,'cn_country_zones','','','',10,0,0,'static_country_zones',541,''),('094f25ebc1a747b0bf0c2dc9dd7145fa','static_countries',104,'cn_country_zones','','','',101,0,0,'static_country_zones',322,''),('09704560549b718c894dc4b7b6779512','static_countries',104,'cn_country_zones','','','',76,0,0,'static_country_zones',292,''),('09afb148070e288352af8347c3fcc63b','static_countries',220,'cn_country_zones','','','',49,0,0,'static_country_zones',62,''),('09e22661dcc4654007cfaaf28f30b8a8','static_countries',207,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('09f1ec6f7e28e7760c15c9f17b55ef44','static_countries',216,'cn_currency_uid','','','',0,0,0,'static_currencies',152,''),('0a2a30c1f70f0f7b838eb38fecd8c16f','static_countries',72,'cn_country_zones','','','',22,0,0,'static_country_zones',548,''),('0a4e926a60e964ae3d9417bbbaa26571','static_countries',230,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('0a862d43db0d38c60816a85a467af054','static_countries',204,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('0ac2e6640d8158e4af78fe580b451f74','static_countries',182,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('0b7979fd67c02beb6924784748958b04','static_countries',110,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('0bed3a53ad1bdb486a838da7fae944f3','static_countries',177,'cn_currency_uid','','','',0,0,0,'static_currencies',122,''),('0c0815179e115ed642b09e72d7f6fec9','static_countries',93,'cn_country_zones','','','',5,0,0,'static_country_zones',694,''),('0c166d8c43f41a5fa35369f80110975e','static_countries',220,'cn_country_zones','','','',22,0,0,'static_country_zones',32,''),('0c956a3b8258316ac57d72c60d98baeb','static_countries',65,'cn_country_zones','','','',42,0,0,'static_country_zones',172,''),('0d3be11129dfdf8debf38797afd6f1d5','static_countries',72,'cn_country_zones','','','',67,0,0,'static_country_zones',604,''),('0d77fe4bd61f8ab524842f9e183ccad5','static_countries',38,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('0d790ae9c3272e5a995bc126de941b4c','static_countries',104,'cn_country_zones','','','',105,0,0,'static_country_zones',325,''),('0d7bcf2e3ab8574688679a90666106e0','static_countries',220,'cn_country_zones','','','',24,0,0,'static_country_zones',34,''),('0e0501310f012ca537e198dd92f8ed6c','static_countries',220,'cn_country_zones','','','',0,0,0,'static_country_zones',1,''),('0e0ffe7e301ed9f79b4bd7cea34ccd26','static_countries',72,'cn_country_zones','','','',99,0,0,'static_country_zones',561,''),('0e72116b5a91484407952c9e4f64e2d4','static_countries',155,'cn_currency_uid','','','',0,0,0,'static_currencies',109,''),('0e8e86baf2ef574643023b25acd81e0e','static_territories',23,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('0ebaae339f0bcdc4b65d911543f01ece','static_countries',65,'cn_country_zones','','','',0,0,0,'static_country_zones',159,''),('0f10e68939ac47c5c18f3520c0ff3050','static_countries',101,'cn_currency_uid','','','',0,0,0,'static_currencies',69,''),('0f115690c74902e72268712b59f353a8','static_countries',74,'cn_country_zones','','','',34,0,0,'static_country_zones',421,''),('0f59b4a81d5a70a0100c37f16f2bc6ae','static_countries',164,'cn_currency_uid','','','',0,0,0,'static_currencies',115,''),('0f63b49df7931fb31d2ac6ddd861f0b5','static_countries',72,'cn_country_zones','','','',3,0,0,'static_country_zones',567,''),('0f79acd49a62124bf962c55ddf110515','static_countries',6,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('0fc6cb7f1091386c50b8055c75c82b92','static_countries',50,'cn_currency_uid','','','',0,0,0,'static_currencies',38,''),('0fd9fc3113bc787de949501f8b8d4cec','static_countries',204,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('0fdb1448c72eb0625eb37c13a59290fe','static_countries',190,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('0ffa69e71e55dfbc0a5f732f6e01d1c5','static_countries',74,'cn_country_zones','','','',72,0,0,'static_country_zones',403,''),('10adf135f60abab6d60e7fddbdc0269c','static_countries',148,'cn_country_zones','','','',21,0,0,'static_country_zones',203,''),('10c559349dfcb1b3aac314a82ae9c4b9','static_countries',21,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('1223595f51f05719eac88c369b491c7d','static_countries',55,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('128df13dc25fa21950b6eb466968622d','static_countries',1,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('12c3c100a29cc54eb42b9dc1ce45852d','static_countries',104,'cn_country_zones','','','',2,0,0,'static_country_zones',224,''),('1307034ddcbcedd8b42e10c12037d54b','static_countries',29,'cn_country_zones','','','',3,0,0,'static_country_zones',493,''),('1344e1d9cb7ea01f98c3c4c1844e4459','static_countries',43,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('134ba10461a8484c002f0a25a75a3987','static_countries',70,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('13d8dff81f7ad8911a356b4f406add40','static_countries',65,'cn_country_zones','','','',9,0,0,'static_country_zones',136,''),('1424effc8e5768ce12f57332fa81ad2f','static_countries',206,'cn_currency_uid','','','',0,0,0,'static_currencies',144,''),('144310ea71516242f3401111b830626e','static_countries',104,'cn_country_zones','','','',3,0,0,'static_country_zones',225,''),('1453086485b34a1b2744d39012f7be11','static_countries',104,'cn_country_zones','','','',89,0,0,'static_country_zones',313,''),('146401c611eee338fafc0b44f7d5df36','static_countries',74,'cn_country_zones','','','',70,0,0,'static_country_zones',407,''),('14be16c3e528b8679e14abb79d8dc470','static_territories',12,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('14d28bb062a7f8169c371e954c1d9aaf','static_territories',13,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('14f6d02073b053562b9f3348611230bf','static_countries',104,'cn_country_zones','','','',91,0,0,'static_country_zones',311,''),('14fe885dce6429cb5555465b7031912f','static_countries',148,'cn_country_zones','','','',23,0,0,'static_country_zones',205,''),('1550ee50867b9baed0cd1dc38d128682','static_countries',24,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('157b1c7a3e0fd99807f0eb2c78dfa94f','static_countries',13,'cn_country_zones','','','',1,0,0,'static_country_zones',99,''),('163288bd59236618bb096ef4707a24d3','static_countries',14,'cn_country_zones','','','',1,0,0,'static_country_zones',215,''),('163866d9da74aa64fc472ff0ff5afe3a','static_countries',74,'cn_country_zones','','','',8,0,0,'static_country_zones',339,''),('16722196ee4d4eb86e5c3e3778be3525','static_countries',243,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('16895af3ed406ec7375c6592dab3be97','static_countries',65,'cn_country_zones','','','',1,0,0,'static_country_zones',130,''),('16db4dcf58703c602976bd0518da33ce','static_countries',65,'cn_country_zones','','','',34,0,0,'static_country_zones',166,''),('16fd42bfb0fb74d9e975aaa4c14e2d78','static_countries',225,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('1719a51cd7dbe673f03e4b1175e23dd5','static_countries',143,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('17b3e1b8c16976d1480ee6186ed22d44','static_countries',29,'cn_country_zones','','','',1,0,0,'static_country_zones',492,''),('17b8b560b198a8df08236bff9e6afbf2','static_countries',77,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('17c1c29b90c3124f289847ab16fac6aa','static_countries',14,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('17ebfacc717ba6efe1c333793aa80dfa','static_countries',104,'cn_country_zones','','','',30,0,0,'static_country_zones',247,''),('181ceef6e71ab78134dac24d93f82081','static_countries',171,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('185611a6c74b7a186fca2187414efe88','static_countries',104,'cn_country_zones','','','',8,0,0,'static_country_zones',231,''),('1856894e4449d5dfc8a2a309fe2df993','static_countries',74,'cn_country_zones','','','',44,0,0,'static_country_zones',376,''),('1874126b4bb0de62ef5910edaaf7ab4c','static_countries',148,'cn_country_zones','','','',13,0,0,'static_country_zones',195,''),('18ace264890318a2a0a86f4de9964425','static_countries',29,'cn_currency_uid','','','',0,0,0,'static_currencies',23,''),('1911bf9e2c0e8b8b02fbbbb776e5a636','static_countries',11,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('1956e70d9978d23eb1e0b28488f8a4b1','static_countries',148,'cn_country_zones','','','',20,0,0,'static_country_zones',202,''),('196869b7fcfdabbc15008f411aacb082','static_countries',148,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('19cbd72358bc58a0de76a16cec4bd7eb','static_countries',36,'cn_currency_uid','','','',0,0,0,'static_currencies',29,''),('19d3cb91630bcf83ab664b4320fa789a','static_countries',123,'cn_currency_uid','','','',0,0,0,'static_currencies',86,''),('19e28941c0bf1625eb0f1a79106de025','static_countries',72,'cn_country_zones','','','',19,0,0,'static_country_zones',577,''),('1a02abd05ec5bd7db9b5f5270dff5a69','static_countries',74,'cn_country_zones','','','',35,0,0,'static_country_zones',364,''),('1a5a01a49cf2196c94d0c3e0c0ef78c3','static_countries',104,'cn_country_zones','','','',100,0,0,'static_country_zones',320,''),('1a78e37c4b2b91b8fe6f4e48f7c98034','static_countries',145,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1a9b279c4ac334b8479263513ee3a1db','static_countries',74,'cn_country_zones','','','',73,0,0,'static_country_zones',404,''),('1a9bb641d48c8d57a73918c90d79f730','static_countries',36,'cn_country_zones','','','',1,0,0,'static_country_zones',67,''),('1af672bafb9ddb7fd61efea23bfe4a79','static_countries',104,'cn_country_zones','','','',41,0,0,'static_country_zones',263,''),('1b7602569302bc12e4acc40139ac7cb0','static_countries',70,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('1b8902390257ad52e3bbc0ce40201946','static_countries',201,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('1b8da0f565d99883eebc5623c6a23776','static_countries',214,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('1ba117b5850fc5cdbf1da7704cbdc85a','static_countries',72,'cn_country_zones','','','',71,0,0,'static_country_zones',606,''),('1bc4791166ad93d703076c701d4296cc','static_countries',104,'cn_country_zones','','','',68,0,0,'static_country_zones',293,''),('1bf18105efe62e0950b9697f7149c08d','static_countries',36,'cn_country_zones','','','',2,0,0,'static_country_zones',68,''),('1c3277d0897e68babc985ee65ef2a172','static_countries',104,'cn_country_zones','','','',108,0,0,'static_country_zones',327,''),('1c774c0a3302e2de766c30f1122ce6cc','static_countries',127,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1ca5e9c35b017496457f5ceafb436746','static_countries',233,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1cae69f61859f790220ac1963cf76df4','static_countries',74,'cn_country_zones','','','',65,0,0,'static_country_zones',395,''),('1cc81d3ca1bbba7036cd21e5d40da207','static_countries',33,'cn_currency_uid','','','',0,0,0,'static_currencies',26,''),('1ce4be6668175e5f850ebb06a5bfe680','static_countries',104,'cn_country_zones','','','',65,0,0,'static_country_zones',284,''),('1deaba77b8907e7a5ab43222b1ad2eba','static_countries',220,'cn_country_zones','','','',30,0,0,'static_country_zones',40,''),('1df778f539542fe4eef95bcda0a660d4','static_countries',65,'cn_country_zones','','','',27,0,0,'static_country_zones',154,''),('1e48d65e22ec9ae3f3f264021669096e','static_countries',147,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1e8846ef33b1c6b77f360f349c662b62','static_countries',4,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('1e8f404095be870112a341b4379de0ed','static_countries',247,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1e9927aa988086408ba3a0c4c0e91cdb','static_countries',104,'cn_country_zones','','','',31,0,0,'static_country_zones',253,''),('1ea9a9b51d2447905066db26da647852','static_countries',65,'cn_country_zones','','','',20,0,0,'static_country_zones',133,''),('1eb7a6820e30bad886717378c1dbb9b7','static_countries',126,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('1ee568cf690add7f68f33c848c453d70','static_countries',252,'cn_currency_uid','','','',0,0,0,'static_currencies',176,''),('1f692449a712401ea1193a8347744478','static_countries',233,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1f7f542402faeb3745cd545278be24cd','static_countries',65,'cn_country_zones','','','',3,0,0,'static_country_zones',139,''),('201f47f6f504e221609de4afe25230b2','static_countries',65,'cn_country_zones','','','',18,0,0,'static_country_zones',152,''),('203b24512a5f2ac0fdd3d62ff3b0ce6b','static_countries',29,'cn_country_zones','','','',9,0,0,'static_country_zones',499,''),('205b5525833f68379161bf6593df1e02','static_countries',171,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('20b70db46bf30aed5fb0ec0cd18d0621','static_countries',160,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('211bf2ac7ec12f17f67c8810d335bf43','static_countries',121,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('2128fdf4d4f1286fb0f9a011d78c4a5a','static_countries',72,'cn_country_zones','','','',83,0,0,'static_country_zones',665,''),('218b6b2411367c2c8e0094d970f35124','static_countries',40,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('2192758c7cbbe8b12237adfce26a7680','static_countries',5,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('219d149ce2a011d93e5d9273463a7e2d','static_countries',220,'cn_country_zones','','','',35,0,0,'static_country_zones',45,''),('21c80dabd6761c0c40db272f84ad2790','static_countries',104,'cn_country_zones','','','',10,0,0,'static_country_zones',234,''),('220e7598329e76aa2fd2e55dffc8a332','static_countries',201,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('224c8c9cdb2c922b9a2245bfb7c4321f','static_countries',121,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('22b5a76c9d65e4953f25f7e943f2365b','static_countries',220,'cn_country_zones','','','',7,0,0,'static_country_zones',15,''),('22f026b234a01aaecd490f7d384746d6','static_countries',72,'cn_country_zones','','','',112,0,0,'static_country_zones',637,''),('230cde3200d19a1d7aecaacd56438e55','static_countries',45,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('23103ce1d2d246520f316e6bffe84d76','static_countries',104,'cn_country_zones','','','',21,0,0,'static_country_zones',245,''),('232ae35f150c9f8a371d7691195c7427','static_countries',83,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('233772150a1a508ceb889fbb8cdb94fb','static_countries',72,'cn_country_zones','','','',7,0,0,'static_country_zones',570,''),('23629fb4cee257cd5c3d3cf14e13c64c','static_countries',92,'cn_currency_uid','','','',0,0,0,'static_currencies',62,''),('23bf304a730d0269a8a536f2b38742c9','static_countries',103,'cn_currency_uid','','','',0,0,0,'static_currencies',71,''),('24074b51dfce96135be9c05dc86e0be9','static_countries',148,'cn_country_zones','','','',8,0,0,'static_country_zones',190,''),('241eda258a8925cc362b3496f371c206','static_countries',105,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('245fc841059288271591da1fac7b7ea9','static_countries',170,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('247330c3e088c1608105029b9a84c444','static_countries',221,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('247e14e9f07911bfbd34db17205f1e1d','static_countries',72,'cn_country_zones','','','',88,0,0,'static_country_zones',621,''),('24a12896c9644313894f7a485ff3a230','static_countries',117,'cn_currency_uid','','','',0,0,0,'static_currencies',82,''),('24a1aaf0d99e6f14a935c433299dcfca','static_countries',12,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('24ba533cb002d4827145c6285838481a','static_countries',93,'cn_country_zones','','','',16,0,0,'static_country_zones',705,''),('24c9e7d81daaa394ef5fc257d7bbfab8','static_countries',220,'cn_country_zones','','','',32,0,0,'static_country_zones',42,''),('24e304e8f25451bd09208f49dfca9b42','static_countries',13,'cn_country_zones','','','',0,0,0,'static_country_zones',102,''),('257e3d887bc50d2e3d952e506589b955','static_countries',158,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('25cda87bbb1dec030537acf6aee50b00','static_countries',72,'cn_country_zones','','','',11,0,0,'static_country_zones',574,''),('26ed0af592cbf41005cd70d8d43ec3ad','static_countries',104,'cn_country_zones','','','',12,0,0,'static_country_zones',232,''),('2703722a4dab88898cfa8755dcb6e35c','static_countries',78,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('27191593005d575cbbe17adea5bcb4c9','static_countries',220,'cn_country_zones','','','',26,0,0,'static_country_zones',36,''),('2738234ea74c61864a1e0c261844a520','static_countries',20,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('2770651a2eeb99132a5ea4f6ed400ba7','static_countries',77,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2777df29f2f82a605cb9bccf475f31ea','static_countries',104,'cn_country_zones','','','',42,0,0,'static_country_zones',264,''),('277dbaa5b5789fda317b0b1e75602ef0','static_countries',29,'cn_country_zones','','','',8,0,0,'static_country_zones',498,''),('2780ccd79887fc4eb83f49b037c3db44','static_countries',72,'cn_country_zones','','','',47,0,0,'static_country_zones',632,''),('27f204e28dfb02c954748ea3fc283320','static_countries',82,'cn_currency_uid','','','',0,0,0,'static_currencies',57,''),('27fe6bf00d4345bd0d630e8502b11bdb','static_countries',29,'cn_country_zones','','','',4,0,0,'static_country_zones',494,''),('2842258cb57e2f3ad4ec6460febac2c9','static_countries',57,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('2843213266c8019fc904ee5bdc81ce59','static_countries',54,'cn_country_zones','','','',7,0,0,'static_country_zones',87,''),('288c3217db45cda9858b746e629cf03f','static_countries',239,'cn_parent_territory_uid','','','',0,1,0,'static_territories',10,''),('28ba9eb65bfe14d845ec0a11e26c3a9d','static_countries',237,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('28edc6ce04bb02354874bb005a8d1800','static_countries',124,'cn_currency_uid','','','',0,0,0,'static_currencies',87,''),('29a0c54a24e78a941135f8c9fd406583','static_countries',68,'cn_currency_uid','','','',0,0,0,'static_currencies',50,''),('29b6606fc57c95c7aee0f4d4d4e627b8','static_countries',220,'cn_country_zones','','','',38,0,0,'static_country_zones',49,''),('2a2d853764cc2c31c1fab647adeb0024','static_countries',236,'cn_currency_uid','','','',0,0,0,'static_currencies',169,''),('2a42979c22456db4dd1194f696bea515','static_countries',104,'cn_country_zones','','','',106,0,0,'static_country_zones',328,''),('2a48a67ec7e1e1f5a606d88b3f3fedb4','static_countries',217,'cn_currency_uid','','','',0,0,0,'static_currencies',153,''),('2a521ac6ef86f14d16b96827c03409af','static_countries',104,'cn_country_zones','','','',9,0,0,'static_country_zones',239,''),('2a6294056ac735153f7a9b6e52fb4bd5','static_countries',184,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('2a8ddaef88f43c61d930a3bf57e64f6d','static_countries',74,'cn_country_zones','','','',43,0,0,'static_country_zones',397,''),('2aa320ac0372f85f01f70e05b4f83d8a','static_countries',97,'cn_country_zones','','','',20,0,0,'static_country_zones',480,''),('2af70442e7c591084879b1ac99752c0d','static_countries',65,'cn_country_zones','','','',39,0,0,'static_country_zones',171,''),('2b209d80e7e6510f40f2ca1549a7451e','static_countries',9,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('2b49290783d27c0edff3d7be1c669416','static_countries',41,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('2b5b7858ca5303221bbcc5e725ecb103','static_countries',54,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2b892016c16791ea2c4d5db439b62c3d','static_countries',54,'cn_country_zones','','','',5,0,0,'static_country_zones',85,''),('2b9ad2f236a14d3a6459e46978f072b1','static_countries',54,'cn_country_zones','','','',0,0,0,'static_country_zones',80,''),('2c19a5cc983ee2361f862f7cc89bbfbe','static_countries',64,'cn_currency_uid','','','',0,0,0,'static_currencies',47,''),('2c7c12e1d4f74350dd35a60864296678','static_countries',74,'cn_country_zones','','','',74,0,0,'static_country_zones',406,''),('2c94ed842329734b28e0ce7b30851bea','static_countries',41,'cn_country_zones','','','',11,0,0,'static_country_zones',115,''),('2ca4778b942d72fd27b3f8b23e461204','static_countries',52,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2d00f80af86bc1dfde2eaa5965eb4a27','static_countries',29,'cn_country_zones','','','',11,0,0,'static_country_zones',501,''),('2d888d96d9bd774c2ff90bf77f7bc162','static_countries',223,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2e32ccf5758058cfce83d0233a193684','static_countries',13,'cn_country_zones','','','',2,0,0,'static_country_zones',96,''),('2e845cfed354eb630b814206e0e3a226','static_countries',104,'cn_country_zones','','','',14,0,0,'static_country_zones',236,''),('2ea3923e1b391e95c11800666ee71bb9','static_countries',65,'cn_country_zones','','','',19,0,0,'static_country_zones',153,''),('2f4c0037102251306fe84d8baf3ee8ae','static_countries',93,'cn_country_zones','','','',0,0,0,'static_country_zones',690,''),('2f58828387dfab53a20785814c1b399c','static_countries',104,'cn_country_zones','','','',15,0,0,'static_country_zones',240,''),('2f6ed7714f6d8129284d4e09e40b70d6','static_countries',65,'cn_country_zones','','','',12,0,0,'static_country_zones',146,''),('2f8f24e7ab39ce1646cadcc0737b425f','static_countries',138,'cn_currency_uid','','','',0,0,0,'static_currencies',97,''),('2fa34f2998ceeeb36e6f14e9f45ef257','static_countries',74,'cn_country_zones','','','',80,0,0,'static_country_zones',418,''),('2fac7266e6e146cac20fe69b06ff49b8','static_countries',72,'cn_country_zones','','','',80,0,0,'static_country_zones',615,''),('2fbfbd51fadfa3ca21dd049585c663c6','static_countries',65,'cn_country_zones','','','',4,0,0,'static_country_zones',140,''),('2fd0a97c12ef6ea454bec7fb65b8f644','static_countries',189,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('3048743cfd840aa9096af7b7dd1ab866','static_countries',14,'cn_country_zones','','','',7,0,0,'static_country_zones',221,''),('3050547dc0a8d7f54d06283db33ed15e','static_countries',104,'cn_country_zones','','','',16,0,0,'static_country_zones',238,''),('309f4abcd48dc8408ed5ac938c67d9a9','static_countries',72,'cn_country_zones','','','',91,0,0,'static_country_zones',556,''),('30b39cd94d76b6a14e1a7c6e6c82f862','static_countries',160,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('30ebf9853e40d264f2db68cbc7932e7a','static_countries',41,'cn_country_zones','','','',21,0,0,'static_country_zones',125,''),('30f3d3ce79c5b71ebbfa1d795e5a7742','static_countries',75,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('3122f9afe5d3daffb1be49ab6b401b66','static_countries',72,'cn_country_zones','','','',62,0,0,'static_country_zones',600,''),('31987bee7d7294e454ea41b5cb39a121','static_countries',72,'cn_country_zones','','','',61,0,0,'static_country_zones',599,''),('323a54a854bfff0da04c6ad69b0c8ea9','static_countries',5,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('32cfc55c0e0f73239fa408fbf12974f9','static_countries',148,'cn_country_zones','','','',15,0,0,'static_country_zones',197,''),('32d8ef7a2a8955ad163e92d800299e9e','static_countries',212,'cn_currency_uid','','','',0,0,0,'static_currencies',175,''),('330cf07ad1a72ac5029879a6f1f85ab2','static_countries',99,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('336a9f660507f280942fb7f3db6d6777','static_countries',74,'cn_country_zones','','','',16,0,0,'static_country_zones',348,''),('33976d9135ebf7e2991a99003d0a3088','static_countries',72,'cn_country_zones','','','',111,0,0,'static_country_zones',636,''),('33a1c27f4fb46b57b0fa05cb45604105','static_countries',186,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('33c12217a946d7860c7f7b57c48dd1c5','static_countries',211,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('33e177b07a571c2d7e347307da6a3478','static_countries',220,'cn_country_zones','','','',11,0,0,'static_country_zones',20,''),('3449c8ba528ed417f803881d8a707677','static_countries',72,'cn_country_zones','','','',70,0,0,'static_country_zones',605,''),('3452f3ace9e65210da64d6456fbc2200','static_countries',104,'cn_country_zones','','','',84,0,0,'static_country_zones',305,''),('347779877836653d7a99ea89ee85852d','static_countries',95,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('34de8d30c3518b54e18b819e0e680d3b','static_countries',252,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('34eac459d6623bd05b992e4ffb41dcff','static_countries',169,'cn_currency_uid','','','',0,0,0,'static_currencies',119,''),('3597f248df0b98b2e1dd45bb77c8e5d7','static_territories',16,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('35b6eea9726218a8bf4b5ff7f2b028b4','static_countries',89,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('35cc81e6dc46df0dee865bdb940f16e9','static_countries',74,'cn_country_zones','','','',42,0,0,'static_country_zones',389,''),('35d8a0db85dda6a01efcd7e542cebd50','static_countries',29,'cn_country_zones','','','',25,0,0,'static_country_zones',514,''),('36061b3d4da401544045fac73261265e','static_countries',72,'cn_country_zones','','','',32,0,0,'static_country_zones',587,''),('3632897033e9467877462f31a280ee1c','static_countries',125,'cn_currency_uid','','','',0,0,0,'static_currencies',88,''),('369854c68f7bd1e7c857d4c153bd3465','static_countries',25,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('36a02c9854d8884fed48978247a70490','static_countries',104,'cn_country_zones','','','',32,0,0,'static_country_zones',257,''),('37ea27e2ecb10291171069d857c714e5','static_countries',65,'cn_country_zones','','','',32,0,0,'static_country_zones',131,''),('382e6cbd99d62b7a9239e9c0b17006c6','static_countries',74,'cn_country_zones','','','',11,0,0,'static_country_zones',343,''),('3838d0463f8ac7e4f87254db89bf8cdd','static_countries',220,'cn_country_zones','','','',5,0,0,'static_country_zones',13,''),('384d7a129ed8d97d679058c4160a797b','static_countries',15,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('388f74ff1d90c370605a36df969c73c7','static_countries',66,'cn_currency_uid','','','',0,0,0,'static_currencies',48,''),('38e5aa8a83f349da745ed5d1d77f6def','static_countries',251,'cn_currency_uid','','','',0,0,0,'static_currencies',6,''),('39034f2d3bcc93a2d9995910b003118f','static_countries',74,'cn_country_zones','','','',104,0,0,'static_country_zones',433,''),('390f2b2be83ca6f6afb80d4c1fead895','static_countries',65,'cn_country_zones','','','',7,0,0,'static_country_zones',143,''),('39475000b2d96d57171a0a9655c9e429','static_countries',74,'cn_country_zones','','','',12,0,0,'static_country_zones',347,''),('3955ac0828349abc054408ca5eb6cc2b','static_countries',72,'cn_country_zones','','','',85,0,0,'static_country_zones',619,''),('39ce49f2cd9f96cba43a55f4fec064f1','static_territories',10,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('39f11f69cd84bbbdc2e45b6679b72508','static_countries',104,'cn_country_zones','','','',77,0,0,'static_country_zones',298,''),('3a00e8d349e73dbbbf4bd548ccdfd38b','static_countries',6,'cn_currency_uid','','','',0,0,0,'static_currencies',4,''),('3a13e3c09015855332c98c9a9e6b7104','static_countries',105,'cn_currency_uid','','','',0,0,0,'static_currencies',72,''),('3a59bb6474f7cedfa9d6c4e64edebdad','static_countries',72,'cn_country_zones','','','',10,0,0,'static_country_zones',573,''),('3a5c0166db6f5036c521e68bbae85ef5','static_countries',113,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('3a7ccf6ffeb4ccda853e751b7bec4adb','static_countries',211,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3a83e6f063e94cace0603ce3e69549a4','static_countries',17,'cn_currency_uid','','','',0,0,0,'static_currencies',12,''),('3ad2e42ca7080f7184875c1ef1eb4510','static_countries',104,'cn_country_zones','','','',75,0,0,'static_country_zones',294,''),('3af3df6ae908246d49185a64e2a1889f','static_territories',27,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('3b1527628529744f59032ae9f1b42468','static_countries',180,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('3b1cabe0c88107e2444dae50334e789b','static_countries',49,'cn_currency_uid','','','',0,0,0,'static_currencies',37,''),('3b4831dc59d7a308cd5a27512c856034','static_countries',56,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('3b4fe841c41123c54d7f5412aa8ce20c','static_countries',167,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('3b56eca52e2da48f500d87538270528c','static_countries',31,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('3b7640c61083d6ff4e2bad4646816fd9','static_countries',104,'cn_country_zones','','','',23,0,0,'static_country_zones',251,''),('3bacff09ab103de5c56f493dba4f1cc9','static_countries',74,'cn_country_zones','','','',7,0,0,'static_country_zones',335,''),('3bc2fb8270a7e4732940b6d325355c52','static_countries',41,'cn_currency_uid','','','',0,0,0,'static_currencies',31,''),('3c19b4be306190a10c6fa216cb2a7216','static_countries',74,'cn_country_zones','','','',0,0,0,'static_country_zones',332,''),('3c6ffcd034ff0b6d0fe43dd06858e8c5','static_countries',219,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3c7c208ae7843da1585aa6357089b32a','static_countries',34,'cn_currency_uid','','','',0,0,0,'static_currencies',27,''),('3ca275c9e1f45ffb20a250acc5fa5bdf','static_countries',72,'cn_country_zones','','','',21,0,0,'static_country_zones',547,''),('3cbeaa56007f4273bedc42461e93f1ab','static_countries',13,'cn_country_zones','','','',4,0,0,'static_country_zones',98,''),('3cc54dd00137e03bcdecbb3c99334498','static_countries',11,'cn_currency_uid','','','',0,0,0,'static_currencies',8,''),('3cd02831eb3b982f8c053f87450f730c','static_countries',148,'cn_country_zones','','','',10,0,0,'static_country_zones',192,''),('3cf81bd682bcde42042d23a1f2949d1d','static_countries',54,'cn_country_zones','','','',8,0,0,'static_country_zones',79,''),('3d08f315a440e331b5f1015260888d51','static_countries',173,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3d2fff3a05a1df7fa98b39bcbb6e94b2','static_countries',36,'cn_country_zones','','','',10,0,0,'static_country_zones',76,''),('3d304f812dc515493452d84ec65fa02f','static_countries',97,'cn_country_zones','','','',23,0,0,'static_country_zones',483,''),('3d479194d77602311fbbdc2d7ce1e7d0','static_countries',244,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('3d4eecbb12feaef89b23d115628bf1c4','static_countries',72,'cn_country_zones','','','',76,0,0,'static_country_zones',611,''),('3d75a21dc0bdd53fb7ac0a5d2aa2ed66','static_countries',72,'cn_country_zones','','','',37,0,0,'static_country_zones',655,''),('3d82e279f30d1eca82e3308ecbca474a','static_countries',104,'cn_country_zones','','','',87,0,0,'static_country_zones',307,''),('3df7667a6b244fedcf1798ffaf9f7b6b','static_countries',194,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('3e28381aa3d0d5b2fc87f0acb04470c6','static_countries',155,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('3e57a518cf30017a73409ce527122edc','static_countries',74,'cn_country_zones','','','',103,0,0,'static_country_zones',431,''),('3e5ff71ae1090f79e5436cf6cae12ee3','static_countries',104,'cn_country_zones','','','',83,0,0,'static_country_zones',303,''),('3e6ab11ad0ced244357cf323b662df6a','static_countries',74,'cn_country_zones','','','',75,0,0,'static_country_zones',409,''),('3fcc8d9e5233ba20829a85ad9eda1064','static_countries',104,'cn_country_zones','','','',94,0,0,'static_country_zones',315,''),('405cc4d9c1b5d40779072c5694b7a385','static_countries',33,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('4087c60385425fa0e493c09b57abf07d','static_countries',241,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('40a35e608f07bcab65fde510b6966eda','static_countries',14,'cn_country_zones','','','',3,0,0,'static_country_zones',217,''),('40e8f3ff3d3413cf5a070fb5f1865880','static_countries',104,'cn_country_zones','','','',24,0,0,'static_country_zones',252,''),('414718ea4a6212d700c2fb339edd06dc','static_countries',73,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('418c5ad2ec90238998768f247f8c3061','static_countries',72,'cn_country_zones','','','',66,0,0,'static_country_zones',663,''),('41d7d6596189e8ecf86cf799633adf24','static_countries',41,'cn_country_zones','','','',9,0,0,'static_country_zones',113,''),('42218514c39a1cb84952e229fc0f2bcb','static_countries',65,'cn_country_zones','','','',40,0,0,'static_country_zones',132,''),('4267888d812b641cf9ef3a70d7d9494a','static_countries',235,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('4275276ec7492b846e5742c9d742d527','static_countries',74,'cn_country_zones','','','',61,0,0,'static_country_zones',390,''),('42b14b1b40346654d273615ff24a4272','static_territories',24,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('42b20e8eddf9148accba636a83a5bd60','static_countries',220,'cn_country_zones','','','',40,0,0,'static_country_zones',52,''),('42bcff4cd7721a44779744287e16d45b','static_countries',148,'cn_country_zones','','','',3,0,0,'static_country_zones',185,''),('434ce8f483892a40cbbf9e7e42c316d4','static_countries',74,'cn_country_zones','','','',5,0,0,'static_country_zones',337,''),('436d7981334627cd7c89acf02f73522a','static_countries',104,'cn_country_zones','','','',102,0,0,'static_country_zones',323,''),('4376c8b29a1e950ac677f89bf68bbe5b','static_countries',14,'cn_country_zones','','','',0,0,0,'static_country_zones',214,''),('437e13d42c38a0e0dc61ab57487a9402','static_countries',193,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('43b82cb2405bd535ac68ca5792392e45','static_countries',247,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('43dcd22125983b5b3ca7350336bd205b','static_countries',93,'cn_country_zones','','','',6,0,0,'static_country_zones',695,''),('43ff668d97b0e7feb35eb13d7106ab00','static_countries',13,'cn_country_zones','','','',5,0,0,'static_country_zones',100,''),('4450791b4d81a3bb77d226815fdccf7c','static_countries',72,'cn_country_zones','','','',106,0,0,'static_country_zones',563,''),('44b960c8da691d962ca9f4ba109341b6','static_countries',220,'cn_country_zones','','','',12,0,0,'static_country_zones',21,''),('44fe4dd30c34775fbd5b58d042ae85ee','static_countries',104,'cn_country_zones','','','',18,0,0,'static_country_zones',241,''),('45136d7775ba139a635189dd7d4d3985','static_countries',71,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('45afeb6a796975fd8c6e768db3211046','static_countries',72,'cn_country_zones','','','',102,0,0,'static_country_zones',627,''),('46abb76ac29ac1af11babd12941c9e42','static_countries',220,'cn_country_zones','','','',41,0,0,'static_country_zones',53,''),('46c631d13211cd6b9d1249e093db70fe','static_countries',108,'cn_currency_uid','','','',0,0,0,'static_currencies',75,''),('46c82094094b539b10ba4f43a5f292c7','static_countries',44,'cn_currency_uid','','','',0,0,0,'static_currencies',33,''),('4784a4f1a0168efb2d7f531bd6db9511','static_countries',157,'cn_country_zones','','','',3,0,0,'static_country_zones',533,''),('47dde2cf4bb571ce0571037200c0ee2b','static_countries',90,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('484db17c2f3964b2f4af19411615fa86','static_countries',14,'cn_country_zones','','','',2,0,0,'static_country_zones',216,''),('4857a7ed7cedb0413d31c65b1b8a1ae8','static_countries',65,'cn_country_zones','','','',35,0,0,'static_country_zones',167,''),('48ea8fa6863e14157c2d926a339e0160','static_countries',104,'cn_country_zones','','','',95,0,0,'static_country_zones',319,''),('48ead7977b8cf484df5082e272329877','static_countries',104,'cn_country_zones','','','',20,0,0,'static_country_zones',242,''),('49201ff5bfe73e28c92400ceb1eba33c','static_countries',3,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('4930ae6005330f1d68b8c754f70074f9','static_countries',72,'cn_country_zones','','','',18,0,0,'static_country_zones',546,''),('495e1f3b1dc15f65f3c388c4f4f52031','static_countries',19,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('4970a8bca53b37e7934db79d4e535cbc','static_countries',148,'cn_country_zones','','','',22,0,0,'static_country_zones',204,''),('49fafbfe6b16abdecbd58aca81cd63f9','static_countries',220,'cn_country_zones','','','',25,0,0,'static_country_zones',35,''),('4a452843423ffd573b9e6b3f90c45d4b','static_countries',148,'cn_country_zones','','','',25,0,0,'static_country_zones',207,''),('4a4eadb5dfdbbcc5e8099f2ef73c6d36','static_countries',246,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('4a6654f4fd64f5380e1060aaa6523ed1','static_countries',104,'cn_country_zones','','','',4,0,0,'static_country_zones',228,''),('4a86f53f5ef4b9421f79b5fb71f867d6','static_countries',72,'cn_country_zones','','','',96,0,0,'static_country_zones',626,''),('4ad5f1d636d8d01379f0b87af64aef6a','static_countries',115,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('4ae4dedef9586b178b1e85e2c62229ed','static_countries',82,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('4afdb1265c8bdf300e9fad138fb73a7f','static_countries',104,'cn_country_zones','','','',70,0,0,'static_country_zones',290,''),('4b2bfe8aa3509b054d83946a2e78855e','static_countries',72,'cn_country_zones','','','',101,0,0,'static_country_zones',562,''),('4b925bf0d5a367b36dbf3cc0fe317de1','static_countries',170,'cn_country_zones','','','',8,0,0,'static_country_zones',681,''),('4be63b49327d6e01ef54435a155e36da','static_countries',72,'cn_country_zones','','','',20,0,0,'static_country_zones',578,''),('4c010c3d4e441edb0ec3264dbe4a98d0','static_countries',81,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('4cad7ea107187c0f5b1b815c2be15285','static_countries',72,'cn_country_zones','','','',1,0,0,'static_country_zones',565,''),('4cbd9d7f84264f760c0534d3827b6be5','static_countries',74,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('4cfb040156eadc1357eeafdcafc4e814','static_countries',141,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('4d108704d5184d81cb5a03f0e3260f93','static_countries',74,'cn_country_zones','','','',55,0,0,'static_country_zones',386,''),('4d7d3d99585e597eafd64fb622dc12ee','static_countries',230,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('4d7d851eb16c3e2738a356be97b40afa','static_countries',65,'cn_country_zones','','','',14,0,0,'static_country_zones',148,''),('4d8338456b9dd3da5f826d42027b88e2','static_countries',175,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('4dc6761ca6cfceae97353137f31728bf','static_countries',145,'cn_currency_uid','','','',0,0,0,'static_currencies',101,''),('4e47bd23de439d6483f42d96b5448bd3','static_countries',146,'cn_currency_uid','','','',0,0,0,'static_currencies',102,''),('4e5d3607fb7ce7cb74f67dd782b68293','static_countries',59,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('4e664eb89c508880f3e2cbf918aa37c5','static_countries',72,'cn_country_zones','','','',68,0,0,'static_country_zones',552,''),('4eb003bca3c8f0a2e8c31291824eb37f','static_countries',74,'cn_country_zones','','','',20,0,0,'static_country_zones',351,''),('4eb2a39af242efed0f6f81d7d337eab4','static_territories',20,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('4efdad5b75a9d3ea73489f469c56ce94','static_countries',29,'cn_country_zones','','','',20,0,0,'static_country_zones',512,''),('4f1fdcdb112b5383a63cbdd508a1cbbe','static_countries',65,'cn_country_zones','','','',46,0,0,'static_country_zones',176,''),('4fb0e7ce8371218868c09ce1a2717e3b','static_countries',182,'cn_currency_uid','','','',0,0,0,'static_currencies',127,''),('4fb217d9109af71fd830e441899ba56e','static_countries',72,'cn_country_zones','','','',103,0,0,'static_country_zones',628,''),('500f1e89cc4088427f2e3ac074f19f01','static_countries',72,'cn_country_zones','','','',130,0,0,'static_country_zones',642,''),('502ee338ce09ad826387e99b0cbfa345','static_territories',30,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('5051371aa670d88d1e7b5d0eaed8f8b5','static_countries',186,'cn_currency_uid','','','',0,0,0,'static_currencies',131,''),('505e705b90728e13f3e2fa3e61814e48','static_countries',104,'cn_country_zones','','','',72,0,0,'static_country_zones',289,''),('50754f807e82b42b17881b3486548617','static_countries',29,'cn_country_zones','','','',16,0,0,'static_country_zones',505,''),('507eec35d0badda6c3785b3ed4301370','static_countries',97,'cn_country_zones','','','',11,0,0,'static_country_zones',471,''),('50b4d8d8e8c56583335080a79026341e','static_countries',22,'cn_currency_uid','','','',0,0,0,'static_currencies',16,''),('50c3b860b9261b87faef634978ef4f08','static_countries',220,'cn_country_zones','','','',10,0,0,'static_country_zones',19,''),('50c72534ad33e287f331583f21b09255','static_countries',41,'cn_country_zones','','','',0,0,0,'static_country_zones',104,''),('50e6263c9f798bbba1e03e8c3519eb5d','static_countries',27,'cn_currency_uid','','','',0,0,0,'static_currencies',20,''),('5235fe35476eda70828fab1644a20c1b','static_countries',107,'cn_currency_uid','','','',0,0,0,'static_currencies',74,''),('5266c55c6471917d370890b0e38d4d9c','static_countries',71,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('5277bdfdb0d519c2ac53c645582c311f','static_countries',72,'cn_country_zones','','','',74,0,0,'static_country_zones',554,''),('529113d186577788720980a8c108023c','static_countries',23,'cn_currency_uid','','','',0,0,0,'static_currencies',17,''),('529c34e38487146e69d35f4aaf8199d4','static_countries',93,'cn_country_zones','','','',19,0,0,'static_country_zones',708,''),('52a3bd105cfffae70e0681c3fc326ba7','static_countries',74,'cn_country_zones','','','',27,0,0,'static_country_zones',361,''),('52a52cbaf57b6c337d323da07ad2f8c9','static_countries',54,'cn_country_zones','','','',14,0,0,'static_country_zones',93,''),('52ec4b7fa53b31f47b98094c3d7696d1','static_countries',65,'cn_country_zones','','','',6,0,0,'static_country_zones',142,''),('53254d8b94bb96ad7d6528fc165ea065','static_countries',220,'cn_country_zones','','','',36,0,0,'static_country_zones',47,''),('532b5525a2153e091c7095451a019931','static_countries',150,'cn_currency_uid','','','',0,0,0,'static_currencies',178,''),('53b7da3ee5a362f768225c942d8e47be','static_countries',104,'cn_country_zones','','','',98,0,0,'static_country_zones',316,''),('5405a38fc5f472830b9d2d93c2617717','static_countries',104,'cn_country_zones','','','',79,0,0,'static_country_zones',302,''),('540f8e8d341ca2dbdc7fbc51da8021f9','static_countries',1,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('541daf2bfbceb900f32361bf672d8af9','static_countries',104,'cn_country_zones','','','',73,0,0,'static_country_zones',287,''),('546717514a1103b22d25034dd40e1a8d','static_countries',220,'cn_country_zones','','','',51,0,0,'static_country_zones',64,''),('547834c1a91916a0a169834c73c07057','static_countries',192,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('54c17abd2aa3d92e346c69e7f7d17077','static_countries',104,'cn_country_zones','','','',5,0,0,'static_country_zones',226,''),('54d14e00cda68ec08f689163c7424303','static_countries',74,'cn_country_zones','','','',50,0,0,'static_country_zones',380,''),('557bd9392740db0a8b32db0b02994cdd','static_countries',139,'cn_currency_uid','','','',0,0,0,'static_currencies',98,''),('562bb300f1f3546b68acd0a73081bcc3','static_countries',65,'cn_country_zones','','','',26,0,0,'static_country_zones',160,''),('562e9e5a179da39424bba1dd5dc91de2','static_countries',104,'cn_country_zones','','','',99,0,0,'static_country_zones',321,''),('56721b1a2d2722a965457aae6d188299','static_countries',74,'cn_country_zones','','','',52,0,0,'static_country_zones',385,''),('568bd73ea08636f3e2131de800d21327','static_countries',103,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('56929a6c6e7e0305fc08b4b47f5c9174','static_countries',104,'cn_country_zones','','','',74,0,0,'static_country_zones',291,''),('56d8d756c2f4e0321638e57708619437','static_countries',54,'cn_country_zones','','','',1,0,0,'static_country_zones',81,''),('5716f3ad6231832680e5fea58047b508','static_countries',72,'cn_country_zones','','','',6,0,0,'static_country_zones',543,''),('575dc91597adfea22fef31083efd0be3','static_countries',93,'cn_country_zones','','','',3,0,0,'static_country_zones',689,''),('57992d65d3cbeb1e0b5dbf9f30be8f67','static_countries',129,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('57ca3e27a722958fd804e39841585322','static_countries',29,'cn_country_zones','','','',6,0,0,'static_country_zones',496,''),('57f699e3677a706d09d2a8a7f2db6ae7','static_countries',185,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('58cff31a441aaa134870a0bf5ee6ea39','static_countries',104,'cn_country_zones','','','',71,0,0,'static_country_zones',295,''),('59b472bd91365187964e81779c5920e1','static_countries',148,'cn_country_zones','','','',31,0,0,'static_country_zones',213,''),('59b578dc09ba6e0a1b6b7f88de443a5d','static_countries',9,'cn_currency_uid','','','',0,0,0,'static_currencies',7,''),('5a7e43592f396a84a22513dedee6071d','static_countries',93,'cn_country_zones','','','',10,0,0,'static_country_zones',699,''),('5a9e3fc55ce0d44ce58e02421b7d8ece','static_countries',69,'cn_currency_uid','','','',0,0,0,'static_currencies',51,''),('5ab691278fdeec69994e419e5f738541','static_countries',72,'cn_country_zones','','','',56,0,0,'static_country_zones',568,''),('5ad207b3dc308914465aedf83e565cdf','static_countries',38,'cn_currency_uid','','','',0,0,0,'static_currencies',30,''),('5ae13fbb180cff76ba8a9e765ab495e6','static_territories',7,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('5af675446b1fba20abee6872f3ba7b9a','static_countries',104,'cn_country_zones','','','',66,0,0,'static_country_zones',288,''),('5b04c6671401c636eb12c20ec73082ef','static_countries',220,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('5b26ad4da9c0b2db07bb5a3667d55971','static_countries',72,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('5bc73fdbb848863622d7cbb240c202c5','static_countries',151,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('5bcaa37d1609ab827a01d61adf857ca2','static_countries',220,'cn_country_zones','','','',29,0,0,'static_country_zones',39,''),('5bd5a49e4b718b7044933662c4a94bec','static_countries',148,'cn_country_zones','','','',24,0,0,'static_country_zones',206,''),('5c020a87a21b0856b5192600e9189b74','static_countries',133,'cn_currency_uid','','','',0,0,0,'static_currencies',173,''),('5c155f3a8f9a9de246cbb90a84e92666','static_countries',72,'cn_country_zones','','','',28,0,0,'static_country_zones',549,''),('5c1908c1ace84c0e79fa658f72abd5f1','static_countries',74,'cn_country_zones','','','',66,0,0,'static_country_zones',399,''),('5c38ff1a0491eb6e668cc1082658f682','static_countries',49,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('5d67befbd38cf6224629f41136387d8c','static_countries',104,'cn_country_zones','','','',96,0,0,'static_country_zones',317,''),('5d720f725460f684b2ec35c594e26457','static_countries',72,'cn_country_zones','','','',41,0,0,'static_country_zones',550,''),('5e142047a04075e69585d5cd5130723a','static_countries',104,'cn_country_zones','','','',80,0,0,'static_country_zones',299,''),('5e990d2e7575323171e74525d7645bf1','static_countries',53,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('5e9ed785fd61a095c7a02ec719169641','static_countries',74,'cn_country_zones','','','',89,0,0,'static_country_zones',419,''),('5ec2c87258be8a66bb8c7800d15889cb','static_countries',227,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('5ef1e1b0817277fdb8fc1b3c051e3c56','static_countries',209,'cn_currency_uid','','','',0,0,0,'static_currencies',146,''),('5f334411adb22a29eca7e4378b8a643d','static_countries',65,'cn_country_zones','','','',41,0,0,'static_country_zones',135,''),('5f6cabd3c5a425f8a9eced664e714baf','static_countries',65,'cn_country_zones','','','',43,0,0,'static_country_zones',173,''),('5f75b76dbc7fc717cc23c5d8e299fced','static_countries',170,'cn_country_zones','','','',3,0,0,'static_country_zones',676,''),('5f99a59e5e1b738465757d86d2b920aa','static_countries',93,'cn_country_zones','','','',14,0,0,'static_country_zones',702,''),('5fe0535690f30d63fd5fe5ed356038b0','static_countries',17,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('5fe145d4e903e57212c56b32b721f0da','static_countries',241,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('5ff6d823677f808ade56e74796ebf7c0','static_countries',74,'cn_country_zones','','','',15,0,0,'static_country_zones',354,''),('5ff8233dc394b2907f8c8b3879e97301','static_countries',41,'cn_country_zones','','','',2,0,0,'static_country_zones',105,''),('60045e19d3571b54336c2735f3f3a0f5','static_countries',40,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('6038375d1c9fa3d114914d905103d5fe','static_countries',220,'cn_country_zones','','','',45,0,0,'static_country_zones',57,''),('61122d794454997c8576351c9b1ea40b','static_countries',12,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('611fea31ef484647ccee9e6ea3d71056','static_countries',74,'cn_country_zones','','','',39,0,0,'static_country_zones',371,''),('61241dcad1e3278defd6bd836c2bbe4f','static_countries',106,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('612550ae64a5e9550cfde05e85b11adf','static_countries',72,'cn_country_zones','','','',75,0,0,'static_country_zones',610,''),('615e9fcc525514668c8c75811a18ce7a','static_countries',74,'cn_country_zones','','','',62,0,0,'static_country_zones',400,''),('6180810cb037519eee4a869ccb11084a','static_countries',63,'cn_currency_uid','','','',0,0,0,'static_currencies',92,''),('6191cae26d62680e7f38b928e8cf57d4','static_countries',197,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('61a15d4e7790b9017d3cfd9d87eb1870','static_countries',97,'cn_country_zones','','','',18,0,0,'static_country_zones',478,''),('628b0849fa0926183cb8f7af6d5f3639','static_countries',72,'cn_country_zones','','','',42,0,0,'static_country_zones',594,''),('62a6061bb337c8ebe4f7b9dcf3e924e4','static_countries',72,'cn_country_zones','','','',35,0,0,'static_country_zones',589,''),('63294cf8b9178552d8b55ecc108a6431','static_countries',65,'cn_country_zones','','','',24,0,0,'static_country_zones',158,''),('636ec7117df0422904c94fbb58ca81d9','static_countries',128,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('6373846061bc6a4ec46259bce1a74c16','static_countries',29,'cn_country_zones','','','',23,0,0,'static_country_zones',513,''),('638e41fe07bfc39a1c4f3de6128198c6','static_territories',9,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('639973677a11c28bedb74daaac17abb6','static_countries',36,'cn_country_zones','','','',7,0,0,'static_country_zones',73,''),('647ade48f16d3fef6a98ce06e00febda','static_countries',136,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('64955e70f61f35d15c1ec57674cc623c','static_countries',170,'cn_country_zones','','','',11,0,0,'static_country_zones',684,''),('64ddcc58e9a95c7232adbb9b4838c283','static_countries',236,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('64fd067ad1ed39b0973f1302d71931fd','static_countries',72,'cn_country_zones','','','',97,0,0,'static_country_zones',559,''),('65533699e67cdec0d349aac605ab4b6e','static_countries',74,'cn_country_zones','','','',37,0,0,'static_country_zones',366,''),('658fd2bb5a31d9b13dd3f50002f7162b','static_countries',104,'cn_country_zones','','','',25,0,0,'static_country_zones',244,''),('659b94cf3174e244ba74a3c19ba447a1','static_countries',74,'cn_country_zones','','','',23,0,0,'static_country_zones',368,''),('65fb4175374c27f4f66cc5c7b35be4f8','static_countries',178,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('66242c76c410468b40ac2da870cbffb2','static_countries',18,'cn_currency_uid','','','',0,0,0,'static_currencies',13,''),('6628767cc0a723b6192dec8861816e1e','static_countries',170,'cn_currency_uid','','','',0,0,0,'static_currencies',120,''),('668abcff16924267571cef633edf73ca','static_countries',112,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('668caedbadae860e21562788472e1c3a','static_countries',29,'cn_country_zones','','','',13,0,0,'static_country_zones',503,''),('67086bbfd943b39d29d39777f29f25ab','static_countries',183,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('67a0a424856583acf77c541803d118d9','static_countries',123,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('6860c2473e24df357088bb321123ad85','static_countries',223,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('687510d0be7d378cdd0c8a939aa648ec','static_countries',220,'cn_country_zones','','','',6,0,0,'static_country_zones',14,''),('68c2b48ced0d5d617f50c9d89496ba42','static_countries',84,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('68ce39cdf7a96103e8e4088a61b817f2','static_countries',174,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('68d2560bb309e6f765b0d5cb85cbbc53','static_countries',93,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('68f81caacac26244b946e6782af1271c','static_countries',72,'cn_country_zones','','','',116,0,0,'static_country_zones',644,''),('6951777a87bb229bc8a21e1c31353f4a','static_countries',157,'cn_country_zones','','','',2,0,0,'static_country_zones',532,''),('6960c66826fdc760f7673c8a5918ca7e','static_countries',104,'cn_country_zones','','','',39,0,0,'static_country_zones',261,''),('69c193d9f73f442d170c3532dfc6ffb2','static_countries',74,'cn_country_zones','','','',13,0,0,'static_country_zones',344,''),('69da5888602485f21bfe9f8fc6ef0084','static_countries',151,'cn_currency_uid','','','',0,0,0,'static_currencies',108,''),('69dd3acaf87b0d271b26160d817f2578','static_countries',104,'cn_country_zones','','','',19,0,0,'static_country_zones',246,''),('6a11ba9f399b0a5c637cb58113762c5b','static_countries',249,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('6a8500405f45a32db3689e6d69808235','static_countries',224,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('6ab8ef0d259bd083a403592a9f88c638','static_countries',97,'cn_country_zones','','','',17,0,0,'static_country_zones',477,''),('6ac6dd7a5142989a46d3ac77ef2b3f1c','static_countries',148,'cn_country_zones','','','',1,0,0,'static_country_zones',184,''),('6ad1e2dc3bba07298cab0fe36600adc9','static_countries',220,'cn_country_zones','','','',15,0,0,'static_country_zones',24,''),('6af2e623d12a14d4a8e0dbbce7d47012','static_countries',72,'cn_country_zones','','','',8,0,0,'static_country_zones',571,''),('6bcd72ef97d5026f24913ce33272d032','static_countries',165,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('6bd28a2d26af3f07092d3509e34d6c97','static_countries',93,'cn_country_zones','','','',17,0,0,'static_country_zones',706,''),('6bd47c5177229560706ee45c701a8cf0','static_countries',104,'cn_country_zones','','','',90,0,0,'static_country_zones',308,''),('6c1b134a522a9c98a900a9038f51e783','static_countries',72,'cn_country_zones','','','',34,0,0,'static_country_zones',588,''),('6c889226c8fc7319c498565c6864dbc7','static_countries',97,'cn_country_zones','','','',16,0,0,'static_country_zones',476,''),('6cf50aaa039f45ce9946a4d20a4b7ece','static_countries',148,'cn_country_zones','','','',17,0,0,'static_country_zones',199,''),('6dcd4d83bc17eb8221855308259d3b00','static_countries',74,'cn_country_zones','','','',102,0,0,'static_country_zones',429,''),('6df4f30063964303acd5eb1975f8665c','static_countries',74,'cn_country_zones','','','',76,0,0,'static_country_zones',408,''),('6e01f63b1b9d1b8eaae9d17b5ef8dd62','static_countries',65,'cn_country_zones','','','',33,0,0,'static_country_zones',181,''),('6f0568fb8734cc88cf49631519256834','static_countries',119,'cn_currency_uid','','','',0,0,0,'static_currencies',84,''),('6f22663aca9ca34710ab92cb7658c09f','static_countries',210,'cn_currency_uid','','','',0,0,0,'static_currencies',147,''),('6f3029a1ceec4d2a5f617ce9707da2c0','static_countries',156,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('6f404129c5d682710fe323b9f2264a4c','static_countries',166,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('6f6f25deb35ed0bb78b3b2b6c8182d92','static_countries',65,'cn_country_zones','','','',15,0,0,'static_country_zones',149,''),('6f98f018f8f7d6f0bd32e7306ce9997b','static_countries',118,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('6fad753400cc020356c73ef779bbb6b9','static_countries',163,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('6fb1950be98c9c2ab01a0067eddea8e5','static_countries',250,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('6fe0000cd87900d327f46098245af092','static_countries',74,'cn_country_zones','','','',57,0,0,'static_country_zones',392,''),('705345c07a4663d6e85680e177c2034b','static_countries',79,'cn_currency_uid','','','',0,0,0,'static_currencies',55,''),('70a9e361c4e214eb46811153412c1c9d','static_countries',242,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('70b54e7b9c69914c2bf3581a6b545a0d','static_countries',170,'cn_country_zones','','','',13,0,0,'static_country_zones',686,''),('70d7ecf296110f8ee26f306d0a29a709','static_countries',29,'cn_country_zones','','','',0,0,0,'static_country_zones',490,''),('711e87ce7ea30667b8f33946a11642a4','static_countries',74,'cn_country_zones','','','',6,0,0,'static_country_zones',338,''),('7242ee4b2c97aa9bcbb8fc51e522a5fb','static_countries',220,'cn_country_zones','','','',34,0,0,'static_country_zones',44,''),('7247a025a17d2d2d1a5ade1aa8b6c646','static_countries',65,'cn_country_zones','','','',29,0,0,'static_country_zones',163,''),('7270d94e31e83bac279825ceb460be10','static_countries',104,'cn_country_zones','','','',58,0,0,'static_country_zones',277,''),('72b3f8e4f762ddd2e1b2b15ab601d076','static_countries',154,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('72cc854ab5be1e9b0d8b8885f6acef4c','static_countries',72,'cn_country_zones','','','',31,0,0,'static_country_zones',586,''),('738ea63dc9c7f732359ac8363c97497a','static_countries',104,'cn_country_zones','','','',48,0,0,'static_country_zones',268,''),('73aa15167da704293ff95033fd1b8722','static_countries',72,'cn_country_zones','','','',119,0,0,'static_country_zones',671,''),('73bc9c274e0afa197cfb7ed33a8be994','static_countries',115,'cn_currency_uid','','','',0,0,0,'static_currencies',80,''),('73d451a0dcfbafe190d5bc4e7a58c942','static_countries',14,'cn_country_zones','','','',4,0,0,'static_country_zones',218,''),('74355507689ece9d265ef1ac76ab139b','static_countries',74,'cn_country_zones','','','',81,0,0,'static_country_zones',415,''),('746fb67a74b31e2451ff755953b63774','static_countries',74,'cn_country_zones','','','',53,0,0,'static_country_zones',383,''),('74e31771f84be16db3d68f92e273f95a','static_countries',88,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('758afb3425cb8dfbbb41d4dd6f864f18','static_countries',29,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('75919bded3e71adeef765afd8495671f','static_countries',74,'cn_country_zones','','','',100,0,0,'static_country_zones',422,''),('7599fee20c873668a78eb8c9d3adcc14','static_countries',165,'cn_currency_uid','','','',0,0,0,'static_currencies',116,''),('75fdfff71e171162473ce90dda61b048','static_countries',43,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('7646998ca782f4b157b6d7728f970d15','static_countries',13,'cn_country_zones','','','',6,0,0,'static_country_zones',101,''),('7653e77bda5d5f4f2b1ff961f16f50f6','static_countries',185,'cn_currency_uid','','','',0,0,0,'static_currencies',130,''),('76dcd21ab998910629349ff8a0500410','static_countries',47,'cn_currency_uid','','','',0,0,0,'static_currencies',35,''),('76dfdbb732f6ea83bec2230d8d0c7f2f','static_countries',65,'cn_country_zones','','','',45,0,0,'static_country_zones',175,''),('770d7759e08ae27f1170a1b95a902528','static_countries',104,'cn_country_zones','','','',78,0,0,'static_country_zones',297,''),('7718e472308fa908d2b21380689dd333','static_countries',97,'cn_country_zones','','','',15,0,0,'static_country_zones',475,''),('772580e42ca3939afdee322c2688c9db','static_countries',94,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('773f33002cfc57bac636b326bcb6bf6b','static_countries',205,'cn_currency_uid','','','',0,0,0,'static_currencies',143,''),('774467fabe349693a5080ba9dee95a4d','static_countries',104,'cn_country_zones','','','',47,0,0,'static_country_zones',266,''),('77b06f2c5f02514c568cdce7c1f48842','static_countries',74,'cn_country_zones','','','',38,0,0,'static_country_zones',367,''),('77b82e57ff062a04cd89e43170812671','static_countries',72,'cn_country_zones','','','',82,0,0,'static_country_zones',617,''),('77d726aa2687056f67da51dba2ceb7d4','static_countries',54,'cn_country_zones','','','',4,0,0,'static_country_zones',84,''),('77f8557bbb9b6463a0c9090bc3bd1b7e','static_countries',41,'cn_country_zones','','','',14,0,0,'static_country_zones',118,''),('7846c8ff7db9a02226f6fc0ee2be082a','static_countries',30,'cn_currency_uid','','','',0,0,0,'static_currencies',24,''),('7859f16ee47267e615b11e3b4c010d17','static_countries',72,'cn_country_zones','','','',107,0,0,'static_country_zones',668,''),('789b26b86b54477e5d30850a370162d5','static_countries',97,'cn_country_zones','','','',2,0,0,'static_country_zones',462,''),('78d9a3925e8e1ce57243a7ea0b18eeda','static_countries',29,'cn_country_zones','','','',21,0,0,'static_country_zones',510,''),('795416a81147cfb98ff6cefaee648c58','static_countries',74,'cn_country_zones','','','',33,0,0,'static_country_zones',394,''),('798cdc7510e03ad33624cb28beec479b','static_countries',72,'cn_country_zones','','','',52,0,0,'static_country_zones',558,''),('79d5658b803322c93934a58c0bfe6905','static_countries',72,'cn_country_zones','','','',113,0,0,'static_country_zones',641,''),('79ee253ed702e0d47fa685854a5accb3','static_countries',104,'cn_country_zones','','','',33,0,0,'static_country_zones',254,''),('7a137a8599116d37d5148851784e6c38','static_countries',72,'cn_country_zones','','','',104,0,0,'static_country_zones',630,''),('7a401c52347c5d2e170b6a843bb31dda','static_countries',195,'cn_currency_uid','','','',0,0,0,'static_currencies',137,''),('7a50cb4d61ae63101f8c277c66126670','static_countries',74,'cn_country_zones','','','',60,0,0,'static_country_zones',393,''),('7aa35c4e68c6a4581f77562395fd0980','static_countries',36,'cn_country_zones','','','',6,0,0,'static_country_zones',71,''),('7ab33bbe83dfb228c902123ddf6d13bd','static_countries',98,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('7abd7002f60cdc6bd1524f426aa01f30','static_countries',190,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('7ac474ffd2e682c8f95f88056652bebb','static_countries',104,'cn_country_zones','','','',28,0,0,'static_country_zones',249,''),('7adb3ef461bebcb668e78829b6737257','static_countries',74,'cn_country_zones','','','',71,0,0,'static_country_zones',434,''),('7b58704d49dc70b1ac50e0369c7f5bac','static_countries',65,'cn_country_zones','','','',5,0,0,'static_country_zones',141,''),('7bac9335aa28fc2d5690de9a6a6fb354','static_countries',104,'cn_country_zones','','','',107,0,0,'static_country_zones',331,''),('7bff9472f4ec6b10e7a98b9f839e1e7a','static_countries',36,'cn_country_zones','','','',5,0,0,'static_country_zones',72,''),('7c140f19f978b49389c6a39e41c0c1c8','static_countries',13,'cn_country_zones','','','',3,0,0,'static_country_zones',97,''),('7c9e4fd025cbb7d6968e793239b42be9','static_countries',177,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('7cf5194f985f5a0744f6550081145126','static_countries',35,'cn_currency_uid','','','',0,0,0,'static_currencies',28,''),('7d234bfff41b1ad7f97776eda8f30e52','static_countries',42,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('7d429346419c069d06d6c05d287f14f0','static_countries',74,'cn_country_zones','','','',82,0,0,'static_country_zones',417,''),('7d55b4334640876fda4a23bc27a96919','static_countries',58,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('7d744d5f7e9c39412cd411d44d24b59f','static_territories',6,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('7dda489529b8e692ab45805eeb79c7a5','static_countries',97,'cn_country_zones','','','',12,0,0,'static_country_zones',472,''),('7df36a57d5032d4f07ad3aa50b8d8f27','static_countries',72,'cn_country_zones','','','',129,0,0,'static_country_zones',653,''),('7df54f70471fdf00fbf64be0f55f1c68','static_countries',65,'cn_country_zones','','','',36,0,0,'static_country_zones',168,''),('7e03dcc95dadd1e95318a9e245f637b0','static_countries',148,'cn_country_zones','','','',19,0,0,'static_country_zones',201,''),('7e538c7ba047d77a2d2b8fa11a835a05','static_countries',72,'cn_country_zones','','','',117,0,0,'static_country_zones',645,''),('7e715a8b02f080aa15f4268cb4a47d85','static_countries',148,'cn_country_zones','','','',29,0,0,'static_country_zones',211,''),('7e919c2c2c8153c65c2341a3750823ea','static_countries',74,'cn_country_zones','','','',10,0,0,'static_country_zones',342,''),('7e93cf40f720f868c78ddcf2a852bdc4','static_countries',195,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('7eaa7a85678fdc11e89dfd621f1d867e','static_countries',86,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('7f2a46e429a6de3340ae8a4d8920e0f9','static_countries',104,'cn_country_zones','','','',11,0,0,'static_country_zones',235,''),('8035d3d6b361b13450a2e00adf666ec3','static_countries',29,'cn_country_zones','','','',2,0,0,'static_country_zones',491,''),('815a4bc45035f0c32826e2be60a14446','static_countries',93,'cn_country_zones','','','',8,0,0,'static_country_zones',697,''),('817767e6c2654c474369819943ce2b69','static_countries',36,'cn_country_zones','','','',8,0,0,'static_country_zones',74,''),('81ae1aa6bfce306b3ce21c0394ab400e','static_countries',229,'cn_currency_uid','','','',0,0,0,'static_currencies',160,''),('81dae76ff60a6878ac7f6e91a30b079a','static_countries',72,'cn_country_zones','','','',49,0,0,'static_country_zones',595,''),('81fe8893a5d57f17647d448a8bca83d5','static_countries',87,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('8232292faa2eeafe2de0f172b2684e2a','static_countries',157,'cn_country_zones','','','',0,0,0,'static_country_zones',530,''),('823e0922994c19464d0195f1764b7a9b','static_territories',17,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('82713cc70fdb931e90f4a16c2c12416b','static_countries',220,'cn_country_zones','','','',1,0,0,'static_country_zones',2,''),('828c503c980ffc80d68f759c722f251e','static_countries',249,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('832265aa65bbe301e3f5e1e8ec984a26','static_countries',54,'cn_country_zones','','','',13,0,0,'static_country_zones',92,''),('83447e0f0300924350f67804c9d742db','static_countries',91,'cn_currency_uid','','','',0,0,0,'static_currencies',61,''),('835f5fc3888eaef64007c822c97d7858','static_countries',202,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('837b895df5447f345e270b14dba8f937','static_countries',93,'cn_country_zones','','','',4,0,0,'static_country_zones',693,''),('838af64bc7198f0d0717064c85b299a4','static_countries',65,'cn_country_zones','','','',28,0,0,'static_country_zones',161,''),('839380d9e37bc05d09724bb1b3612d58','static_territories',21,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('839394a4f2c53c9fac76b84493ad32a1','static_countries',74,'cn_country_zones','','','',97,0,0,'static_country_zones',374,''),('83ae3368ec75d97d10e44716b299ab35','static_countries',28,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('83d8c16cec8b0d66039f393a5c1476c6','static_countries',104,'cn_country_zones','','','',43,0,0,'static_country_zones',227,''),('846c75683b0694c2cb66602fb8aa1d6d','static_countries',54,'cn_country_zones','','','',12,0,0,'static_country_zones',91,''),('846db0a4366e67ff5e7c5298143250e4','static_countries',97,'cn_country_zones','','','',1,0,0,'static_country_zones',461,''),('849ff8c7b72b5865100f6d0062581763','static_countries',248,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('84b2780d3f22e4fdc5e4ab4ff7fd478b','static_countries',78,'cn_currency_uid','','','',0,0,0,'static_currencies',177,''),('85b12584cd7a3a4a95057d1ed9c91b1b','static_countries',200,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('85bd7d2b264895c2cbc29e1f0a047a05','static_countries',200,'cn_currency_uid','','','',0,0,0,'static_currencies',142,''),('85c667ec749f225bde40413c96492455','static_countries',104,'cn_country_zones','','','',88,0,0,'static_country_zones',312,''),('86515f417503f484474ffb15289dcffc','static_countries',41,'cn_country_zones','','','',6,0,0,'static_country_zones',110,''),('865f24864ee02eb9f4fc56ef2a2e32a1','static_countries',220,'cn_country_zones','','','',23,0,0,'static_country_zones',33,''),('8698d43b3bd5b6d8d352780b66f0a2b9','static_countries',179,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('86da65d2271d74447a35222c2a0f8ffd','static_countries',129,'cn_currency_uid','','','',0,0,0,'static_currencies',91,''),('874c6c07f9cb563364e3ab9a90a5be20','static_countries',104,'cn_country_zones','','','',7,0,0,'static_country_zones',230,''),('87af65a040ea23f97f9a4644fa27978d','static_countries',76,'cn_currency_uid','','','',0,0,0,'static_currencies',53,''),('87d8082f3af15f6332b019f737277833','static_countries',104,'cn_country_zones','','','',92,0,0,'static_country_zones',309,''),('87f3fff8d9c1b2739d2409c8669caf12','static_countries',72,'cn_country_zones','','','',115,0,0,'static_country_zones',657,''),('884a3324f22d7d57d64c229bf6868786','static_countries',218,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('889b55f25ecf76cc02a9f7d978d28109','static_countries',97,'cn_country_zones','','','',13,0,0,'static_country_zones',473,''),('889c24f312cab36b80720be5a3b4983a','static_countries',220,'cn_country_zones','','','',21,0,0,'static_country_zones',31,''),('8903d3cca327b3cdbce09734e3d699b0','static_countries',216,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('894b0ca17b1deae62dce1be1fe3f3257','static_countries',97,'cn_country_zones','','','',22,0,0,'static_country_zones',482,''),('897c21ef229d4f55c4aa2b15ec6db725','static_countries',97,'cn_country_zones','','','',7,0,0,'static_country_zones',467,''),('89c669ea1c151be0462f1adfad097ee1','static_countries',72,'cn_country_zones','','','',94,0,0,'static_country_zones',625,''),('89c8d42bfc8895b03dde3b2f4954a200','static_countries',59,'cn_currency_uid','','','',0,0,0,'static_currencies',44,''),('89cbaa3992ccea9ce0dab4dcb9a2bfcf','static_countries',74,'cn_country_zones','','','',28,0,0,'static_country_zones',360,''),('8a2d91664c654d8d299595b9c3f22efe','static_countries',54,'cn_country_zones','','','',2,0,0,'static_country_zones',82,''),('8a461d8512579d42372ddc1418a4e0df','static_countries',4,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('8a639254e6e23075ce48e1fcf0146da1','static_countries',104,'cn_country_zones','','','',93,0,0,'static_country_zones',314,''),('8a672780f903b92b3bd6cb3e4c57b412','static_countries',157,'cn_country_zones','','','',9,0,0,'static_country_zones',539,''),('8a92ec08e4f108dca88b46cadf2d4584','static_countries',65,'cn_country_zones','','','',8,0,0,'static_country_zones',165,''),('8ab4f8f92d90aa555239d5375965c6ef','static_countries',72,'cn_country_zones','','','',105,0,0,'static_country_zones',633,''),('8aec7a0efe29ed06f78abaf784c3d9ce','static_countries',93,'cn_country_zones','','','',18,0,0,'static_country_zones',707,''),('8af58cda8523f0670ab2649b35dacba2','static_countries',65,'cn_country_zones','','','',11,0,0,'static_country_zones',145,''),('8afc100af7484101253529752049dbf6','static_countries',148,'cn_country_zones','','','',2,0,0,'static_country_zones',183,''),('8b2173802252a4bdd1097f838bd1db36','static_countries',220,'cn_country_zones','','','',48,0,0,'static_country_zones',61,''),('8b6d4357b05b821402db1b0cda2a96d0','static_countries',148,'cn_country_zones','','','',9,0,0,'static_country_zones',191,''),('8b72593aa128fb8f32091809ed0df40d','static_countries',41,'cn_country_zones','','','',18,0,0,'static_country_zones',119,''),('8bd9408c535b95a880092b611b652d36','static_countries',93,'cn_country_zones','','','',11,0,0,'static_country_zones',700,''),('8bfb391523ff61c0aaa13cf45e33d85d','static_countries',93,'cn_country_zones','','','',12,0,0,'static_country_zones',701,''),('8c0f4fe7b32165efa1c21e696371fa6e','static_countries',169,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('8c36e3b716980652b339a885b3dd5410','static_countries',72,'cn_country_zones','','','',122,0,0,'static_country_zones',658,''),('8c5cc8a5564c5bbbdaf66a5d97b0f1a1','static_countries',72,'cn_country_zones','','','',43,0,0,'static_country_zones',596,''),('8c6607122578e8bd13cddbf5bb3e29c9','static_countries',153,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('8ca36b5d95669e09790ee59db1a4a521','static_countries',65,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('8cd779e99d7ce1a10e9105b71ded0d0d','static_countries',72,'cn_country_zones','','','',89,0,0,'static_country_zones',622,''),('8d0631a10637d62e0ca3135d85a6da20','static_countries',104,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('8d94e1526fe88dabd886997790ca3def','static_countries',232,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('8e48101aba59d565572a9308493791f2','static_countries',111,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('8ea836cff238fa8fe19944bdd1c53991','static_countries',136,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('8f0d2612bc6d70546dd206b2fb0c9727','static_countries',149,'cn_currency_uid','','','',0,0,0,'static_currencies',106,''),('8f374dbf6cd47f2cf7cd3d93344c445d','static_countries',36,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('8ff706e772dd919fd6c3ecf59214443b','static_countries',202,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('8ff8d269136beaf4b76ef17712bd1d9d','static_countries',13,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('9007cad8193495f971d145521c090ee3','static_countries',159,'cn_currency_uid','','','',0,0,0,'static_currencies',112,''),('90155434cfe2c8f5df14f80adcd53c32','static_countries',65,'cn_country_zones','','','',44,0,0,'static_country_zones',174,''),('90608fe0cacb15ff7eacc7ef45c657c2','static_countries',126,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('90686c32aa613cdad7aac14adf70da7c','static_countries',74,'cn_country_zones','','','',22,0,0,'static_country_zones',352,''),('9077b4b047c3c60ef0520e2c99d61db7','static_countries',199,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('9096d000727ec551d1ef45f21667fd8a','static_countries',220,'cn_country_zones','','','',52,0,0,'static_country_zones',65,''),('90baa8864f530b8e316f83a952d27377','static_countries',65,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('9121c0eeb9ac44c4e837f160f86df1b0','static_countries',104,'cn_country_zones','','','',51,0,0,'static_country_zones',273,''),('913a0406b03b52ee86d9aba0ba4cdc1f','static_countries',96,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('916b75ed2bde0633834b37083de74968','static_countries',72,'cn_country_zones','','','',121,0,0,'static_country_zones',659,''),('9195eb5162d127ca7b8fd83bbffedbdb','static_territories',19,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('91976f3a02b65084616bd10338081e30','static_countries',54,'cn_country_zones','','','',3,0,0,'static_country_zones',83,''),('91c9d2e46c3d1db14ceeba25ab85ceb0','static_countries',29,'cn_country_zones','','','',19,0,0,'static_country_zones',509,''),('92130b04183c51b4a8d767c1f0ba2360','static_countries',54,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('9217f144ee52bd3744e1d5f69d6208b2','static_countries',104,'cn_country_zones','','','',50,0,0,'static_country_zones',271,''),('923114b4f85f6308a7dc3f566a9f8c3c','static_countries',72,'cn_country_zones','','','',26,0,0,'static_country_zones',664,''),('9233c133136342cde48ca22780fbe221','static_countries',111,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('92ab13a784abb38d3c3f6d82d2da360b','static_countries',2,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('92e369d931def1ed7c7ba3c9dff8419e','static_countries',72,'cn_country_zones','','','',69,0,0,'static_country_zones',553,''),('930953ef9b1036d5dff16ee57a1bfc12','static_countries',54,'cn_country_zones','','','',10,0,0,'static_country_zones',89,''),('933ce5fcf30aa0bd9c5f9e06a35aafe0','static_countries',104,'cn_country_zones','','','',17,0,0,'static_country_zones',237,''),('934c2489a6cdc5980ff5d175f4055cf3','static_countries',175,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('934e13c1139aa38328f1b0dfbe1df8f5','static_countries',148,'cn_country_zones','','','',26,0,0,'static_country_zones',208,''),('936423b754a5dac1e3efbbeb9bf816da','static_countries',170,'cn_country_zones','','','',7,0,0,'static_country_zones',680,''),('9375cafbe5a4f0677f7fb537eb229f04','static_countries',41,'cn_country_zones','','','',17,0,0,'static_country_zones',121,''),('9486888d2bd0770d42ae4c0c385f7307','static_countries',157,'cn_country_zones','','','',8,0,0,'static_country_zones',538,''),('949cec572b52c3a71f68ec44898858be','static_countries',54,'cn_country_zones','','','',15,0,0,'static_country_zones',94,''),('9512ac6d6de7874e0d422eb05fcd3eb4','static_countries',213,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('951f540c3924c97f2c93d983a86d7843','static_countries',29,'cn_country_zones','','','',18,0,0,'static_country_zones',508,''),('957033f48ae3f54159b54496d3bc15ba','static_countries',148,'cn_country_zones','','','',11,0,0,'static_country_zones',193,''),('957abbc18e670c495da8c09710e59c73','static_countries',84,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('9580b0f4c3061fab6d84abc2e23f0525','static_countries',104,'cn_country_zones','','','',54,0,0,'static_country_zones',279,''),('9596b73c0400d4723f54d16ee26a122f','static_countries',80,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('95d00c137f13aca898544d0402527b68','static_countries',53,'cn_currency_uid','','','',0,0,0,'static_currencies',40,''),('95f38442b9e7d4708e32bfdc26dd4986','static_countries',161,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('961b9c2515fe3241d7db0c78616bd29d','static_countries',135,'cn_currency_uid','','','',0,0,0,'static_currencies',95,''),('965951071ab9dce91f9c8570a650003b','static_countries',159,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('965b0b68c83b18b56694b2ad71ab7787','static_countries',72,'cn_country_zones','','','',23,0,0,'static_country_zones',579,''),('96a7c1b05da354ac3f5c1d889a4f1e72','static_countries',250,'cn_currency_uid','','','',0,0,0,'static_currencies',6,''),('96c20495c44cf2cfd890156a7f55f850','static_countries',8,'cn_currency_uid','','','',0,1,0,'static_currencies',6,''),('96daed76bc1b66181af83f6097dbd0e2','static_countries',26,'cn_currency_uid','','','',0,0,0,'static_currencies',19,''),('9747d62b54fefc009c66f86a2d1e876f','static_countries',97,'cn_country_zones','','','',4,0,0,'static_country_zones',464,''),('97d5e808a0cec2e993a518725174b5bf','static_countries',228,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('97fea077397ae6aa53136354ed5fc401','static_countries',142,'cn_currency_uid','','','',0,0,0,'static_currencies',99,''),('98088d207f6a37d034c0a680f8dc514f','static_countries',46,'cn_currency_uid','','','',0,0,0,'static_currencies',34,''),('98504e63513ea9c42f89c6fcaf32cc5a','static_countries',41,'cn_country_zones','','','',12,0,0,'static_country_zones',116,''),('986bf0af016da12e75a09a2f156b472a','static_countries',74,'cn_country_zones','','','',90,0,0,'static_country_zones',420,''),('98ca43284d0fa5febdd953544af325ba','static_countries',65,'cn_country_zones','','','',47,0,0,'static_country_zones',137,''),('992dd65df223fa1f56bdfc2421c3a2cf','static_countries',148,'cn_country_zones','','','',27,0,0,'static_country_zones',209,''),('99e244d575b3843ee43cb9db0a05df74','static_countries',97,'cn_country_zones','','','',19,0,0,'static_country_zones',479,''),('9a617ae068b23b21bc7c2fe10bc9cd0a','static_countries',116,'cn_currency_uid','','','',0,0,0,'static_currencies',81,''),('9ab3e050d4ff36e50e37e3a818bcf112','static_countries',104,'cn_country_zones','','','',40,0,0,'static_country_zones',262,''),('9ad3386679b989c4b9335885609ea5fd','static_countries',72,'cn_country_zones','','','',29,0,0,'static_country_zones',583,''),('9b5d9a67e2025d4474df9b522d4b3c9d','static_countries',65,'cn_country_zones','','','',10,0,0,'static_country_zones',144,''),('9b80baa061e45573496b29e501ae59fc','static_countries',65,'cn_country_zones','','','',2,0,0,'static_country_zones',138,''),('9ba71b075d4e3ee3937b1d14aa9ce3e4','static_countries',72,'cn_country_zones','','','',73,0,0,'static_country_zones',609,''),('9bb40c41abaab2911817604842a6ab9d','static_countries',176,'cn_currency_uid','','','',0,0,0,'static_currencies',121,''),('9bba044f5081c639b8fc5b255d8c480c','static_countries',91,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('9c60f8cbde0f0edaf128e86a7f4e80cf','static_countries',107,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('9c71cb951bde96846557a17903fb32cf','static_countries',19,'cn_currency_uid','','','',0,0,0,'static_currencies',14,''),('9ca325e7d07f3683b6100d938cea39a8','static_countries',170,'cn_country_zones','','','',12,0,0,'static_country_zones',685,''),('9cdbcc213e87a7eee462cbba3271d3dc','static_countries',41,'cn_country_zones','','','',3,0,0,'static_country_zones',108,''),('9d135e8b2bf36de7ed4718ed9f0e5d4e','static_countries',65,'cn_country_zones','','','',31,0,0,'static_country_zones',164,''),('9d15002b8d50209bac4e2bffb34233c7','static_countries',170,'cn_country_zones','','','',9,0,0,'static_country_zones',682,''),('9d6791e5d6e659625d2884ec4f8aa648','static_countries',148,'cn_country_zones','','','',0,0,0,'static_country_zones',182,''),('9da928e713ab679a512a4afa1993f33a','static_countries',65,'cn_country_zones','','','',23,0,0,'static_country_zones',157,''),('9e4e87ea6daf31c4c920dbc60f69445f','static_countries',251,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('9e7836d3e31c7cec8ffa57d55351bb11','static_countries',240,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('9ed04e1349e39ff0ca94271d7e8fd8a1','static_countries',97,'cn_country_zones','','','',8,0,0,'static_country_zones',468,''),('9fac9796d9d417a08f16d2eb043c0040','static_countries',104,'cn_country_zones','','','',57,0,0,'static_country_zones',275,''),('9fc34af1e3a5a53b1e6f7c71366f15b5','static_countries',104,'cn_country_zones','','','',44,0,0,'static_country_zones',310,''),('9fe4a9a2fbfb3d6b8fc90d31093f3137','static_countries',72,'cn_country_zones','','','',84,0,0,'static_country_zones',618,''),('a02f4c1afba39666f072804e82afc5be','static_countries',74,'cn_country_zones','','','',85,0,0,'static_country_zones',435,''),('a0661a2813da137cd4fb493d59e92dce','static_countries',16,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('a069c917b1ac182f5d61dea5a5d33c8c','static_countries',65,'cn_country_zones','','','',17,0,0,'static_country_zones',151,''),('a0f82909e5cc44cf7472f7f8794c7427','static_countries',72,'cn_country_zones','','','',36,0,0,'static_country_zones',590,''),('a106e86233390366371366cc78e9a86a','static_countries',143,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('a1310deef2cdbe516c87866ac6864784','static_countries',65,'cn_country_zones','','','',30,0,0,'static_country_zones',162,''),('a14d33956fce5643e9624f1b500f994a','static_countries',48,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('a14f24e92e48d24abe6bfb09c710b7bd','static_countries',99,'cn_currency_uid','','','',0,0,0,'static_currencies',68,''),('a15f0208c7a758437d2eb64a1f2d8022','static_countries',170,'cn_country_zones','','','',5,0,0,'static_country_zones',678,''),('a180748abfc4768ddcc0489d5ced8b51','static_countries',13,'cn_country_zones','','','',8,0,0,'static_country_zones',95,''),('a182dc5656ef36e4d3db3148e1fcc8e3','static_countries',7,'cn_currency_uid','','','',0,0,0,'static_currencies',5,''),('a187cfc57ed06836dee28e30c156a51c','static_countries',31,'cn_currency_uid','','','',0,0,0,'static_currencies',25,''),('a1a9579734b44ef659032b7fc65718bb','static_countries',72,'cn_country_zones','','','',90,0,0,'static_country_zones',623,''),('a1b9158cbced812482a2aa4bc9717631','static_countries',88,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('a1c0f5a6ed88ce667c3e534a7880ea09','static_countries',74,'cn_country_zones','','','',19,0,0,'static_country_zones',355,''),('a1fd59e04a86f1450c66e310ed58af43','static_countries',153,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a275c6941b0da288a8f08eb5c2583afe','static_countries',142,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a2a9f701d355dd5dcedd94302c962af0','static_countries',93,'cn_country_zones','','','',7,0,0,'static_country_zones',696,''),('a2ffcc59e94b66b54bbf25a4bc173f12','static_countries',104,'cn_country_zones','','','',22,0,0,'static_country_zones',243,''),('a3062d8508fbcb523ce27f9d2e6399e5','static_countries',68,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('a3550bad5fd2e3f12535a7ead71e786d','static_countries',104,'cn_country_zones','','','',69,0,0,'static_country_zones',296,''),('a385fb81178deacd24fa9a0235487168','static_countries',18,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('a3896c728cf6302ee832563bd002b746','static_countries',96,'cn_currency_uid','','','',0,0,0,'static_currencies',66,''),('a3d2158bc96e7d13e9312fa81dcb706c','static_countries',220,'cn_country_zones','','','',33,0,0,'static_country_zones',43,''),('a3dc721e995d242c51a043dbf115374f','static_countries',170,'cn_country_zones','','','',1,0,0,'static_country_zones',674,''),('a407e1b0d4a6258bc8fdb12f1cde7fe0','static_countries',162,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('a4386464a8873d9b366a45757839e12a','static_countries',74,'cn_country_zones','','','',99,0,0,'static_country_zones',432,''),('a459cbf7c778a7bb7d6c3da6de03646c','static_countries',72,'cn_country_zones','','','',30,0,0,'static_country_zones',585,''),('a49a5bcffb09f64f4a749d79b59bed5c','static_countries',124,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a4f1f332c1ae2a6f72f46f8420d46fd4','static_countries',74,'cn_country_zones','','','',32,0,0,'static_country_zones',357,''),('a50e1a30204bfe1b4b3f877e36d959d3','static_countries',128,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('a52d0a0d95c5fbaaeeb7b17c678e71e4','static_countries',41,'cn_country_zones','','','',15,0,0,'static_country_zones',120,''),('a5809931ec09aeafbb36dbb8a4d5926c','static_countries',85,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('a5ba8b669fbe1b2885e11e783bafa04d','static_countries',198,'cn_currency_uid','','','',0,0,0,'static_currencies',140,''),('a5c129068d2f07ffac6e5eb516bdd211','static_countries',74,'cn_country_zones','','','',92,0,0,'static_country_zones',424,''),('a5c82231f07705cb152865a3b21620df','static_countries',29,'cn_country_zones','','','',15,0,0,'static_country_zones',507,''),('a5dcb9da149c75b88b47dc4c27b2193a','static_countries',191,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('a5f36fdc8d7778e6fa5c8210d7d0c570','static_countries',97,'cn_country_zones','','','',0,0,0,'static_country_zones',460,''),('a5fd369085d5eaa15038f0ed5dd2a29b','static_countries',97,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('a66e6785a7e9f06d44bed3672c8cd3d8','static_countries',104,'cn_country_zones','','','',37,0,0,'static_country_zones',259,''),('a68fc8f139013bda051bd1e27111f9a1','static_countries',187,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('a6d3472d54196c57148650796e1ef520','static_countries',21,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('a70066610763f77065aaeace9f91b2c3','static_countries',72,'cn_country_zones','','','',65,0,0,'static_country_zones',603,''),('a756ddc7a0e25e7f8bf9b74064109ecc','static_countries',72,'cn_country_zones','','','',46,0,0,'static_country_zones',661,''),('a79e8dc1f9b883c154bd3e5107c09468','static_countries',181,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('a7f734da1a906b9ecc58762396d7beb0','static_countries',74,'cn_country_zones','','','',9,0,0,'static_country_zones',341,''),('a7fe5428faebee8218cf9f477c4df531','static_countries',104,'cn_country_zones','','','',62,0,0,'static_country_zones',282,''),('a890f2215049a8d1c6fd54826d8821c5','static_countries',170,'cn_country_zones','','','',6,0,0,'static_country_zones',679,''),('a8bd15e75d3655fc4fa4d6f046d61631','static_countries',104,'cn_country_zones','','','',26,0,0,'static_country_zones',248,''),('a8f15d91b94e124b0268f324100a3727','static_countries',72,'cn_country_zones','','','',100,0,0,'static_country_zones',667,''),('a9676a22a56b9e3aedccd4091f43e0f7','static_countries',93,'cn_country_zones','','','',13,0,0,'static_country_zones',704,''),('a9d183af939c0897e460b3c93b1a1996','static_countries',72,'cn_country_zones','','','',98,0,0,'static_country_zones',560,''),('aa0396fd5747fe7adc2191d5eecee9fd','static_countries',152,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('aa6b56fdb1fbd7b97e98e5d6783633f5','static_countries',29,'cn_country_zones','','','',5,0,0,'static_country_zones',495,''),('aa7f033988dbe57ecb3a1b0de2e4ab61','static_countries',45,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('aa9821378d790c2091c9166e10305498','static_countries',2,'cn_currency_uid','','','',0,0,0,'static_currencies',2,''),('aaa2d16626ccf1656ab4c08738f75bb0','static_countries',74,'cn_country_zones','','','',31,0,0,'static_country_zones',359,''),('aaf239696b692bd8c2bd060fdb8449fc','static_countries',116,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('ab5672460e20845963667d9d68e83316','static_countries',220,'cn_country_zones','','','',43,0,0,'static_country_zones',55,''),('ab69b4d205dcbc61ba13e7a7286b6af0','static_countries',72,'cn_country_zones','','','',24,0,0,'static_country_zones',580,''),('ab8325185000388fbc3e95dc61e06c40','static_countries',41,'cn_country_zones','','','',16,0,0,'static_country_zones',122,''),('ac28871fea88e05b1099a48b2431e292','static_countries',104,'cn_country_zones','','','',34,0,0,'static_country_zones',256,''),('ac33bf31be318b154a3bdd332ee20c29','static_countries',109,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('ac4fd07c876922d5ac3332787f969ff4','static_countries',35,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('ac520582bf9f56182e36c68837b9d201','static_countries',72,'cn_country_zones','','','',59,0,0,'static_country_zones',598,''),('ac6bdd4d3cbd3fae246958a3e0f57db4','static_countries',85,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('acaad6d6d9bb9b7341016d100569ddbc','static_countries',220,'cn_country_zones','','','',4,0,0,'static_country_zones',12,''),('ad0bd534312166add2e0f153c63074a1','static_countries',29,'cn_country_zones','','','',17,0,0,'static_country_zones',506,''),('ae09e00e24e055b23a068d02fc0d3e59','static_countries',157,'cn_country_zones','','','',5,0,0,'static_country_zones',535,''),('ae41070400b2568939cb2c628debd528','static_countries',74,'cn_country_zones','','','',59,0,0,'static_country_zones',388,''),('aea93a60d2819d548843b6ec7cd11a89','static_countries',37,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('aec5db3bfaeeb83b91360efb0a2cdb09','static_countries',196,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('aece045e7e576fb39b15814c6c3c4ab4','static_countries',131,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('af1f8d852b717456b1ba813d9ee81287','static_countries',25,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('af3a8f7276d0840f248bd07050ae7559','static_countries',120,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('afa98f3d026a9b2de52d6b6ea882a37d','static_territories',11,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('b020b3fd8f8653d8d221285a9e0155ad','static_countries',208,'cn_currency_uid','','','',0,0,0,'static_currencies',180,''),('b06b652e91fd6fa586c15b3fa7591393','static_countries',189,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('b0d973922d00ff649147d11011c8f027','static_countries',65,'cn_country_zones','','','',13,0,0,'static_country_zones',147,''),('b0f8faa088bfed91a6eb800b6b5d7002','static_countries',72,'cn_country_zones','','','',39,0,0,'static_country_zones',592,''),('b0fd3c3fd0886701f5bac2ec9ed1ea77','static_countries',172,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('b1291ae70aebc5982cb12de6b40fcf6f','static_countries',138,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('b16011f2151d3fd31874bd75b823b34a','static_countries',194,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('b19a074fb27cfd0231913a48b0e67f10','static_countries',141,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('b1c68ea71b322dcc5b4ed7b5d6ce4ded','static_countries',72,'cn_country_zones','','','',38,0,0,'static_country_zones',591,''),('b224076c1bdf052e2cdfc43cc99db4de','static_countries',104,'cn_country_zones','','','',35,0,0,'static_country_zones',255,''),('b2291c9268bc09146f89d9ad63734f9d','static_countries',16,'cn_currency_uid','','','',0,0,0,'static_currencies',11,''),('b25f3b6f029344b8d854bf1e49829b01','static_countries',74,'cn_country_zones','','','',58,0,0,'static_country_zones',391,''),('b297d9cd3298939eda0e07108cbd6381','static_countries',97,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('b2fa1fc87900ac92ddf21452ced6ad59','static_countries',36,'cn_country_zones','','','',9,0,0,'static_country_zones',75,''),('b32d28a65b3773e5f696194dcce0c61a','static_countries',74,'cn_country_zones','','','',86,0,0,'static_country_zones',413,''),('b33614f5bd7663bec24cc0c78dd77e9b','static_countries',72,'cn_country_zones','','','',5,0,0,'static_country_zones',542,''),('b378ac105c0c8983c1b8563541045111','static_countries',72,'cn_country_zones','','','',55,0,0,'static_country_zones',651,''),('b3a6267f87972272b3dc506a4eb24dc2','static_countries',220,'cn_country_zones','','','',47,0,0,'static_country_zones',59,''),('b400c0534528c460cf1771fcc4ab8e2f','static_territories',28,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('b41d668e187e3008c1ea7fc1af4b5789','static_countries',3,'cn_currency_uid','','','',0,0,0,'static_currencies',171,''),('b41e0775e2e833105c57fda2134956ec','static_countries',65,'cn_country_zones','','','',38,0,0,'static_country_zones',170,''),('b43c125d7a1112ff1639da5e824fa3dc','static_countries',110,'cn_currency_uid','','','',0,0,0,'static_currencies',77,''),('b4651024f8a8d0be0b7b9780afb33d8b','static_countries',93,'cn_country_zones','','','',2,0,0,'static_country_zones',692,''),('b46be86064b3f15984f439aa4fd3473f','static_countries',74,'cn_country_zones','','','',45,0,0,'static_country_zones',377,''),('b48bc2366db66a733da50717cb156a33','static_countries',221,'cn_currency_uid','','','',0,0,0,'static_currencies',156,''),('b4b7bff0cdbd6a34d4ac3967fabb3757','static_countries',220,'cn_country_zones','','','',27,0,0,'static_country_zones',37,''),('b4cbe1d8cc4f363d46a310b9d2c8ee2d','static_countries',97,'cn_country_zones','','','',6,0,0,'static_country_zones',466,''),('b4e96ab682e93c4780b5cc4f3f833518','static_countries',164,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('b5227893114b7a8d1d0394bf8f0b1d61','static_countries',36,'cn_country_zones','','','',12,0,0,'static_country_zones',78,''),('b5938a14a0ec41a465c620d8cf1984c1','static_countries',104,'cn_country_zones','','','',103,0,0,'static_country_zones',326,''),('b5ced6fa927781c9ab941c8fd7186a57','static_countries',139,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('b6e1d3e8b38a979a286ef0fe12d43569','static_countries',13,'cn_country_zones','','','',7,0,0,'static_country_zones',103,''),('b7690027f675163e83afd61afee00bed','static_countries',104,'cn_country_zones','','','',86,0,0,'static_country_zones',306,''),('b81207603767fcb44f75c30e2ede5f98','static_countries',41,'cn_country_zones','','','',5,0,0,'static_country_zones',107,''),('b844881f0be52ca9133cbc21e4805d1f','static_countries',104,'cn_country_zones','','','',61,0,0,'static_country_zones',281,''),('b8c27ec68d115f64672a69c56d06723a','static_countries',178,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('b8df04754a799581329f717f150a754d','static_territories',26,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('b91f35bdc0dd734b1e9f7679511fd908','static_countries',74,'cn_country_zones','','','',30,0,0,'static_country_zones',358,''),('b92507be3f817d4c14e55f279557d465','static_countries',72,'cn_country_zones','','','',109,0,0,'static_country_zones',670,''),('b9ab3e0bf1dcd98201e44bde63c766c8','static_countries',72,'cn_country_zones','','','',14,0,0,'static_country_zones',631,''),('ba0ba7b3b7f2920da0d91b1ea955094a','static_countries',104,'cn_country_zones','','','',81,0,0,'static_country_zones',300,''),('ba12d4f6a05045420abd0c9cc01d7a42','static_countries',72,'cn_country_zones','','','',95,0,0,'static_country_zones',639,''),('bb94a47f9edc9c046e547c563ea62885','static_countries',220,'cn_country_zones','','','',16,0,0,'static_country_zones',25,''),('bbb60f0bbba193094f33ff2658c8b929','static_countries',220,'cn_country_zones','','','',46,0,0,'static_country_zones',58,''),('bbc5131aca69fcc0a6b456aab3320fc4','static_countries',72,'cn_country_zones','','','',126,0,0,'static_country_zones',650,''),('bc1c71cce44d2818c887c87675db02f6','static_countries',117,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('bc219916198aa9025db39ac466aa78e0','static_countries',215,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('bc2311d82a40d5da8537eb4e8dca4c9a','static_countries',81,'cn_currency_uid','','','',0,0,0,'static_currencies',56,''),('bc516161714f78c2f0a15605dd31e81f','static_countries',104,'cn_country_zones','','','',45,0,0,'static_country_zones',270,''),('bc81b549c53150e1a9aca65f2aa75028','static_countries',89,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('bcd328a567da44e7dd1b642b113e50e2','static_countries',127,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('bd003d9e0c3ea841f7b35c7b02260c2d','static_countries',217,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('bd09c566f11dca7a255c0c1ccdeb1d81','static_countries',220,'cn_country_zones','','','',28,0,0,'static_country_zones',38,''),('bd0d1c0bdb121d9e3b1f89c868d31b54','static_countries',72,'cn_country_zones','','','',118,0,0,'static_country_zones',646,''),('bd2b2b042a0f16fca5b0db752734e4d5','static_countries',114,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('bd91a78d08f8b6d67e3897d4fa1d75db','static_countries',63,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('bda423c2611a93dd15d371cc0766f745','static_countries',34,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('be03c87e70ef9424bc341f6845a99784','static_countries',72,'cn_country_zones','','','',51,0,0,'static_country_zones',616,''),('be3b955c1a0cb9972e14cd1ed6c375d0','static_countries',157,'cn_country_zones','','','',1,0,0,'static_country_zones',531,''),('be3f3ece1ad58223bcfc2d9a9082706f','static_countries',72,'cn_country_zones','','','',87,0,0,'static_country_zones',620,''),('be5144d4c8b64d516c3de00f518597ba','static_countries',20,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('be6a8c70c6e2d3fc809c3f0c4dbb5fa5','static_countries',101,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('bead739310fccc888ee67612d20c953c','static_countries',42,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('beb6cceadec3b8e576470f754ebb196b','static_countries',72,'cn_country_zones','','','',123,0,0,'static_country_zones',647,''),('bec55eb0045b15067e3ed4dd4045d38c','static_countries',220,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('bf17c4c96c474a862ef94a683875b255','static_countries',23,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('bf487519968b83c881d0e54383de641f','static_countries',72,'cn_country_zones','','','',12,0,0,'static_country_zones',544,''),('bfa527945ec2949142519cab10622028','static_countries',149,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('bfb764201823bb80559e184d949ccfdd','static_countries',72,'cn_country_zones','','','',127,0,0,'static_country_zones',652,''),('bff7491b6a4fb978499ec07de86ff56f','static_countries',72,'cn_country_zones','','','',81,0,0,'static_country_zones',662,''),('c09382cf3cb20f6d7058791f4d15263e','static_countries',74,'cn_country_zones','','','',40,0,0,'static_country_zones',370,''),('c0c1230fd2413439162482a51b08f05c','static_countries',148,'cn_country_zones','','','',16,0,0,'static_country_zones',198,''),('c0fe03e8834c2f49fb801c1f3b2b2d3f','static_countries',140,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('c16d9ef575c522fdbffa67d34f3040d5','static_countries',157,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('c187e2ae05419184db4ee39858788340','static_countries',97,'cn_country_zones','','','',14,0,0,'static_country_zones',474,''),('c1921b3ada0f2fae003ab8a75a901450','static_countries',132,'cn_currency_uid','','','',0,0,0,'static_currencies',93,''),('c246f30c6db59ff177525b85167fcf69','static_countries',148,'cn_country_zones','','','',12,0,0,'static_country_zones',194,''),('c257b9967f4feba17dce8bb62099ad6e','static_countries',104,'cn_country_zones','','','',36,0,0,'static_country_zones',258,''),('c286f8fb3b75d782202d1c55fe5c77ae','static_countries',220,'cn_country_zones','','','',18,0,0,'static_country_zones',27,''),('c30a9939e520f8a2ef236908bd9ea916','static_countries',198,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('c35facf156780f7187a67952879f2c59','static_countries',130,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('c3800bcf75cfe3609f9b4263d4c94515','static_countries',104,'cn_country_zones','','','',67,0,0,'static_country_zones',286,''),('c3c1d28bbae67dcf736f04606c86603d','static_countries',74,'cn_country_zones','','','',79,0,0,'static_country_zones',423,''),('c46a3238f2d2ee4615f4bc7b87f1929d','static_countries',72,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('c4d50c4db0fb72288b04005ffc36e3b9','static_countries',112,'cn_currency_uid','','','',0,0,0,'static_currencies',78,''),('c4dc242791cd3c9041035d9b3b4ae2c7','static_countries',104,'cn_country_zones','','','',59,0,0,'static_country_zones',272,''),('c4ebacf6489e96f41df55c33d0bdf9d8','static_countries',220,'cn_country_zones','','','',39,0,0,'static_country_zones',51,''),('c504f67625ee596f76944495c6c0e70a','static_countries',209,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('c52afe1bd6b0d49c953485a3ec86c118','static_countries',245,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('c5530c0355faf483b06bd397f55be765','static_countries',122,'cn_currency_uid','','','',0,0,0,'static_currencies',31,''),('c567cad7f7f8806a857bd649086750ea','static_countries',104,'cn_country_zones','','','',53,0,0,'static_country_zones',278,''),('c5785666d4ec5e550379fd77882c6ad3','static_countries',104,'cn_country_zones','','','',82,0,0,'static_country_zones',301,''),('c57aee466476a4d7808632a4c2d570d2','static_countries',97,'cn_country_zones','','','',24,0,0,'static_country_zones',484,''),('c5e573fcf804c73bc135660e57830036','static_countries',29,'cn_country_zones','','','',14,0,0,'static_country_zones',504,''),('c60a7723b7e58a913f408c3f62237f4d','static_countries',15,'cn_currency_uid','','','',0,0,0,'static_currencies',10,''),('c67ae1f336d269658e4617309ccfea7d','static_countries',74,'cn_country_zones','','','',2,0,0,'static_country_zones',333,''),('c742d8ae6746c35a1373942ad21d88ef','static_countries',102,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('c779c36913ed3d975616d6e320d8533f','static_countries',65,'cn_country_zones','','','',16,0,0,'static_country_zones',150,''),('c7e5a41082aece3d87ad82ca7989caa4','static_countries',203,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('c88691725b2d7a95184063bdd093715a','static_countries',220,'cn_country_zones','','','',37,0,0,'static_country_zones',48,''),('c8ed04907692ae402a7642d23d41aa40','static_countries',14,'cn_country_zones','','','',6,0,0,'static_country_zones',220,''),('c8f28444a10a232455d9584572479df8','static_countries',92,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('c9434cc74364d290c70e0cc478633061','static_countries',199,'cn_currency_uid','','','',0,0,0,'static_currencies',141,''),('c97413ec43d908197cace431dea9fda3','static_countries',104,'cn_country_zones','','','',27,0,0,'static_country_zones',250,''),('c97fbe16cc5be04ed1cf2c6742f409c0','static_countries',72,'cn_country_zones','','','',54,0,0,'static_country_zones',638,''),('c98740e1c97f647263dc874dc370ad96','static_countries',8,'cn_parent_territory_uid','','','',0,1,0,'static_territories',19,''),('c9c04db94ec42aef897521fdf024b026','static_countries',191,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('c9dcc3cdd2d1c68233a5cb21dd0d0b35','static_countries',231,'cn_currency_uid','','','',0,0,0,'static_currencies',161,''),('c9ea85182e284bd6ad66440e0b79b5aa','static_countries',220,'cn_country_zones','','','',42,0,0,'static_country_zones',54,''),('ca0e6335f8439c1134e6b13abe16ff44','static_countries',65,'cn_country_zones','','','',48,0,0,'static_country_zones',177,''),('ca5f775bf2d11c59120be261dc01a2f4','static_countries',193,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('ca9670b8beedd7b079898cba5d80c167','static_countries',41,'cn_country_zones','','','',23,0,0,'static_country_zones',127,''),('cac519f2a2d14ae7b4d8557c53cde836','static_countries',242,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('caf1e7acb68479a44cd74becee3cdb34','static_countries',74,'cn_country_zones','','','',1,0,0,'static_country_zones',334,''),('cb0f17924f27113d62e39d5a35ccac32','static_countries',122,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('cb4381a27aca9dd261cee90d0741f892','static_countries',72,'cn_country_zones','','','',27,0,0,'static_country_zones',582,''),('cb752a44db56157c7d75fd79a7c57941','static_countries',93,'cn_country_zones','','','',20,0,0,'static_country_zones',709,''),('cb88a6d5c299d76e8a54b4c24e9a8e65','static_countries',125,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('cc14eff78c679e28ce12c94b37d3e6e6','static_countries',168,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('cc26caba7ee86811c1dd66fea2b09e04','static_countries',208,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('cc309c934a22a125b8a37d4792015171','static_countries',72,'cn_country_zones','','','',9,0,0,'static_country_zones',572,''),('cc59cddc52d341b5ac0fb6d83c8d1563','static_countries',98,'cn_currency_uid','','','',0,0,0,'static_currencies',67,''),('cc8bceccbb77c12966f17fb2bf265d7a','static_countries',104,'cn_country_zones','','','',38,0,0,'static_country_zones',260,''),('cca819a2eda4e18adc0f3e8a4f11e6c7','static_countries',104,'cn_country_zones','','','',13,0,0,'static_country_zones',233,''),('ccc47f2758d603b430e9f5b63daea4b4','static_countries',72,'cn_country_zones','','','',125,0,0,'static_country_zones',649,''),('cdad590d7dc8ebf0b8cbda52cb9d40c6','static_countries',73,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('ce0b6caa148153687bb8945a794ffda3','static_countries',62,'cn_currency_uid','','','',0,0,0,'static_currencies',46,''),('ce10e6af57db945ec340acfb04ef8ece','static_countries',72,'cn_country_zones','','','',44,0,0,'static_country_zones',597,''),('ce3dbbae88b1022a262e67da78791028','static_countries',148,'cn_country_zones','','','',5,0,0,'static_country_zones',187,''),('ce813c4db9b53c7be0875ab7eae031bb','static_countries',28,'cn_currency_uid','','','',0,0,0,'static_currencies',21,''),('ced4eef6b94a5b8f0cd768efb703b917','static_countries',135,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('cee8bd78e190e2c5d25bd2deb47eee5f','static_countries',104,'cn_country_zones','','','',29,0,0,'static_country_zones',265,''),('cf0e48cc6845d1db806c650285e8b398','static_countries',188,'cn_currency_uid','','','',0,0,0,'static_currencies',133,''),('cf2702879928a534e26f8e3dcac4a779','static_countries',7,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('cf2fa498e882c28f32969556c744e00b','static_countries',97,'cn_country_zones','','','',5,0,0,'static_country_zones',465,''),('cf73e8ba61d1eae09c18f54b8e9255ec','static_countries',93,'cn_country_zones','','','',15,0,0,'static_country_zones',703,''),('cfa7c79b05f83d5f2ef27be92b9cd710','static_countries',48,'cn_currency_uid','','','',0,0,0,'static_currencies',36,''),('cfce264720613f9dfe49d3cc6d80410e','static_countries',74,'cn_country_zones','','','',95,0,0,'static_country_zones',428,''),('cfcee27fba0b2bc790751e78f394e092','static_countries',170,'cn_country_zones','','','',2,0,0,'static_country_zones',675,''),('cfd223d22b384cd3c41946d9aae21006','static_territories',8,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('d0171dd14c68c71e98cd93ca79d03169','static_countries',157,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('d0410e742494ef081b1487d6735ccec2','static_countries',173,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d05072f83c5081a1a28f51403832c76b','static_countries',244,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('d05ba61b06517e4c8d5540c70295170a','static_countries',157,'cn_country_zones','','','',6,0,0,'static_country_zones',536,''),('d114028929dc1f0ec55f865402ed362d','static_countries',161,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('d1386de3cbdf4511cecbb83b1f6e649e','static_countries',197,'cn_currency_uid','','','',0,0,0,'static_currencies',139,''),('d1652ef9be4823ccbda220aa4c18a7f4','static_countries',220,'cn_country_zones','','','',13,0,0,'static_country_zones',22,''),('d1bbbb087b83350da02c9ca90e01ac79','static_countries',54,'cn_country_zones','','','',11,0,0,'static_country_zones',90,''),('d1e5ba4df2d52f356075fbe406139a9d','static_countries',80,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('d23b113d1c1bf8d6873f22869616e914','static_countries',148,'cn_country_zones','','','',30,0,0,'static_country_zones',212,''),('d250713db4aefe20c3c351162524f04d','static_countries',104,'cn_country_zones','','','',64,0,0,'static_country_zones',285,''),('d28d10f5cf8e6fda65032d696555dd03','static_countries',148,'cn_country_zones','','','',14,0,0,'static_country_zones',196,''),('d2a128e4bdfefc7e734e2ac14fe4fc2d','static_countries',220,'cn_country_zones','','','',31,0,0,'static_country_zones',41,''),('d2b27d1e21f5621da0dcd48478a69240','static_countries',188,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('d2f0ccf40378a08f3ad0600c4fc23d23','static_countries',41,'cn_country_zones','','','',10,0,0,'static_country_zones',114,''),('d349a89387ab2bd9a434a3901052a1b1','static_countries',74,'cn_country_zones','','','',21,0,0,'static_country_zones',353,''),('d364d09e8e0074adf47707dbdb082392','static_countries',32,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('d36daf3f7ce2cade1a5c038e01a10378','static_countries',104,'cn_country_zones','','','',56,0,0,'static_country_zones',274,''),('d3bdb7b982a128e3b638685b36e07641','static_countries',74,'cn_country_zones','','','',78,0,0,'static_country_zones',411,''),('d471b799611066bc874ae3347aed9695','static_countries',170,'cn_country_zones','','','',10,0,0,'static_country_zones',683,''),('d53564a84ff887a09c7b8bb5d55dc095','static_countries',47,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('d575451d5ac7a70245b3c37f6d40b392','static_countries',74,'cn_country_zones','','','',48,0,0,'static_country_zones',382,''),('d5778f512398d2da6fffa7fe83645002','static_countries',65,'cn_country_zones','','','',51,0,0,'static_country_zones',180,''),('d579145f53fdbe4f79c4857100ab309c','static_countries',222,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('d5e3e5d0c6b682321203a515e7f1f396','static_countries',74,'cn_country_zones','','','',56,0,0,'static_country_zones',387,''),('d5e527387df3ad8d5589752c9a92eba6','static_countries',75,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d6412add93b0986119a4eebaa37d5afb','static_countries',29,'cn_country_zones','','','',24,0,0,'static_country_zones',515,''),('d6536192ca44e1ef7cf646e0bc04815d','static_countries',72,'cn_country_zones','','','',93,0,0,'static_country_zones',624,''),('d65b062f31adc707ef91e64dd5d6e428','static_countries',72,'cn_country_zones','','','',128,0,0,'static_country_zones',672,''),('d6769c9653f391ba5c9e8e2191954808','static_countries',104,'cn_country_zones','','','',52,0,0,'static_country_zones',276,''),('d699d4b33ab39afa9887f29b8e1b7e33','static_countries',74,'cn_country_zones','','','',49,0,0,'static_country_zones',379,''),('d69ffd102c4a787b813fd1f990e60574','static_countries',30,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d6f855c2a5e0f8aba8dfaa2270059fcb','static_countries',29,'cn_country_zones','','','',12,0,0,'static_country_zones',500,''),('d715f95b21cc34e02780792fa6b75a42','static_countries',36,'cn_country_zones','','','',11,0,0,'static_country_zones',77,''),('d73fb3afb1770b55cd5ad17c478d66cc','static_countries',74,'cn_country_zones','','','',69,0,0,'static_country_zones',405,''),('d745658ad729da407bb6c0e7f54880b6','static_countries',114,'cn_currency_uid','','','',0,0,0,'static_currencies',79,''),('d773cce558e42b812b53197cdcc3e7a0','static_countries',97,'cn_country_zones','','','',25,0,0,'static_country_zones',485,''),('d7c39df1ff9af6ba6771276de8081118','static_countries',54,'cn_country_zones','','','',6,0,0,'static_country_zones',86,''),('d7da8844c01685f38bc25c8ef9a8f963','static_countries',229,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('d8bf60552a85fedb8fe9d67b64c729bb','static_countries',104,'cn_country_zones','','','',0,0,0,'static_country_zones',222,''),('d94abaf1635c059eb5dc90b787572584','static_countries',130,'cn_currency_uid','','','',0,0,0,'static_currencies',92,''),('d99e0dc5aba6f4c60582833603963add','static_countries',106,'cn_currency_uid','','','',0,0,0,'static_currencies',73,''),('d9b612e29883641607e0418276b87695','static_countries',62,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('d9e25ee19b4763615fbaff942f3aeff1','static_countries',184,'cn_currency_uid','','','',0,0,0,'static_currencies',129,''),('da13a1239245feba33b6cb2d5ecd247b','static_countries',157,'cn_country_zones','','','',7,0,0,'static_country_zones',537,''),('da32cf76c5a0df226d666f7539bbcd64','static_countries',64,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('da7bb5b6f5e5c4a056822fc8ce93e52c','static_countries',29,'cn_country_zones','','','',7,0,0,'static_country_zones',497,''),('daa2f3795e3e1603105d22b8364a65bd','static_countries',158,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('db7909b1d96b1ae9065a6e6bd27635f7','static_countries',225,'cn_currency_uid','','','',0,0,0,'static_currencies',158,''),('db92685f6379695342f827bbc9b1c273','static_countries',65,'cn_country_zones','','','',37,0,0,'static_country_zones',169,''),('dbc176ba4374f6122850ba01d6a2eb1c','static_countries',215,'cn_currency_uid','','','',0,0,0,'static_currencies',151,''),('dbe894d570d7b5c3c75b47634b46ba66','static_countries',224,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('dbed7419ca20e0d25613ae517780ba5b','static_countries',72,'cn_country_zones','','','',25,0,0,'static_country_zones',581,''),('dbed7f85fa23faefdd194eb5c893c760','static_countries',166,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dbee91a1b4efb4a7982675df454206f2','static_countries',172,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dbf5278e2d34b71cff5ae8dfeeb037a2','static_countries',72,'cn_country_zones','','','',45,0,0,'static_country_zones',660,''),('dbfc8c04b3e0ee0d8ca517c33e35d82a','static_countries',22,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('dc0b7f26fd8a32c98b67fae92f505d98','static_countries',210,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dc293974a2b33316896eb3f3fb246acb','static_countries',108,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('dc53da06c1a9f41b66ba9107a278cf8a','static_countries',113,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('dc5f3555f3022d95d04de0579e22461e','static_countries',41,'cn_country_zones','','','',7,0,0,'static_country_zones',111,''),('dc73a1ca0eb6e168a81581632a88b665','static_countries',41,'cn_country_zones','','','',8,0,0,'static_country_zones',112,''),('dcc771519c672e602bf380b7bb18b183','static_countries',72,'cn_country_zones','','','',110,0,0,'static_country_zones',635,''),('dcd32750219125f0cd777438293ade4f','static_countries',74,'cn_country_zones','','','',36,0,0,'static_country_zones',365,''),('dd097fb4a76e3cf35d08b816575281cc','static_countries',72,'cn_country_zones','','','',13,0,0,'static_country_zones',575,''),('ddfb7249219298893e7fcb1611f7ad77','static_countries',74,'cn_country_zones','','','',3,0,0,'static_country_zones',336,''),('de03fd6fdbf13565ddd007229ee8fed9','static_countries',72,'cn_country_zones','','','',50,0,0,'static_country_zones',607,''),('de2d2b5ad2278d6b412ed35163861f56','static_countries',74,'cn_country_zones','','','',29,0,0,'static_country_zones',362,''),('de447e68b583778e6c41ea968cd7ae86','static_countries',226,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('de96900e815e7cad8d889ca7a66ad8eb','static_countries',220,'cn_country_zones','','','',20,0,0,'static_country_zones',29,''),('deadcaf53de54e0b5fd9683bfd0d6d1c','static_countries',41,'cn_country_zones','','','',19,0,0,'static_country_zones',124,''),('deef8280f9962e004781c6c6f48ad551','static_countries',41,'cn_country_zones','','','',25,0,0,'static_country_zones',129,''),('df0a0fafdcc1c074e6fd0e37a6982a86','static_countries',74,'cn_country_zones','','','',94,0,0,'static_country_zones',426,''),('df18cd565b029d032e6fc0bba69be95c','static_countries',74,'cn_country_zones','','','',93,0,0,'static_country_zones',425,''),('df1ea2c096b1b641de2d910363feb9e6','static_countries',74,'cn_country_zones','','','',68,0,0,'static_country_zones',402,''),('df81d9307112f1a960d0a56ae6e3cd4f','static_countries',104,'cn_country_zones','','','',104,0,0,'static_country_zones',324,''),('df86c033faae8777759772bcb91ee0af','static_territories',18,'tr_parent_territory_uid','','','',0,0,0,'static_territories',3,''),('df92644558a3ed94ea517ffa90e1cec8','static_countries',231,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('df96ac4a5645f65116a3306db90b3cc7','static_countries',144,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('dfb58eeaaaa1ccd6d02107236229aae2','static_countries',156,'cn_currency_uid','','','',0,0,0,'static_currencies',110,''),('e0b008b76bf44713af1c3ab39b4a2e01','static_countries',72,'cn_country_zones','','','',108,0,0,'static_country_zones',669,''),('e0debdd65d6e3e6dfe0dcf33512d4b80','static_countries',74,'cn_country_zones','','','',84,0,0,'static_country_zones',373,''),('e0f1a8109a795e5e2991d03633d12f91','static_territories',22,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('e110e9482490e06855fae43d4096df93','static_countries',148,'cn_country_zones','','','',4,0,0,'static_country_zones',186,''),('e15e18f2ca1899d0c154d2d2ed0fed97','static_countries',72,'cn_country_zones','','','',17,0,0,'static_country_zones',545,''),('e1633292e5cf9f80beed020a22d267b6','static_countries',180,'cn_currency_uid','','','',0,0,0,'static_currencies',124,''),('e16ce005e9a734fd8cecf802bf7a79fc','static_countries',72,'cn_country_zones','','','',4,0,0,'static_country_zones',569,''),('e1dde0dba2b5e9cf67f637f5f56787fc','static_countries',74,'cn_country_zones','','','',64,0,0,'static_country_zones',372,''),('e2341aadd424ea5e199ab0884d4735a9','static_countries',74,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('e2520f8f39cba685b87207c0bbd2f688','static_countries',72,'cn_country_zones','','','',92,0,0,'static_country_zones',666,''),('e2d3cb2a82af4ecfe5d9fa75770eed35','static_countries',60,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('e2ed5bc87115eeb0ccde23aaadf84bc7','static_countries',227,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('e2ee1b2059b3375b2a622aba9bfc18c5','static_countries',238,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('e313319a7bbeeccb60af056d0934b742','static_countries',74,'cn_country_zones','','','',67,0,0,'static_country_zones',401,''),('e31e7fe856e72c87387bed6aab5e2cc5','static_countries',61,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('e3342be69376821ffda95d2491964abc','static_countries',222,'cn_currency_uid','','','',0,0,0,'static_currencies',157,''),('e377f300a530e358ba23c2e26badc1c3','static_countries',14,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('e3ed9b65a753a54030b418b52f3cf3de','static_countries',74,'cn_country_zones','','','',83,0,0,'static_country_zones',416,''),('e4051cc0c653a173b70847e3fff4cb3b','static_countries',192,'cn_currency_uid','','','',0,0,0,'static_currencies',136,''),('e40af49a93594f14f1ac5eeab14c09c9','static_countries',104,'cn_country_zones','','','',109,0,0,'static_country_zones',330,''),('e477e68a6b000ff0da138ce56552f43c','static_countries',246,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('e4f5642a7d20c618236f52b9d946ea40','static_countries',76,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('e57484ad747cdc09e7f775efb123a1d4','static_countries',29,'cn_country_zones','','','',22,0,0,'static_country_zones',511,''),('e591a96aaf3dce1c291d85b2727e83b3','static_countries',65,'cn_country_zones','','','',25,0,0,'static_country_zones',134,''),('e5958d61e1e0037bde441d52ecbad1cb','static_countries',97,'cn_country_zones','','','',3,0,0,'static_country_zones',463,''),('e596859f9c20f1971edecd69a76e7a02','static_countries',104,'cn_country_zones','','','',1,0,0,'static_country_zones',223,''),('e5d2a710efc4248e4cd8c3e3e598d2ad','static_countries',232,'cn_currency_uid','','','',0,0,0,'static_currencies',166,''),('e5d987fb01c74699e53cc81dd06304c2','static_countries',72,'cn_country_zones','','','',33,0,0,'static_country_zones',643,''),('e5df843b9797015c6f178465a81c941a','static_countries',220,'cn_country_zones','','','',9,0,0,'static_country_zones',18,''),('e5f1765929960654d5da51d4ecf504e9','static_countries',72,'cn_country_zones','','','',48,0,0,'static_country_zones',584,''),('e62a9b5c76f00414f011ab1ed982707e','static_countries',104,'cn_country_zones','','','',85,0,0,'static_country_zones',304,''),('e695345f2edfc65c59102f8ad859a34c','static_countries',181,'cn_currency_uid','','','',0,0,0,'static_currencies',126,''),('e6a57e11154a8238a60178101e37ee36','static_countries',213,'cn_currency_uid','','','',0,0,0,'static_currencies',150,''),('e6c99982371683ad87025e3735f6b526','static_countries',97,'cn_country_zones','','','',10,0,0,'static_country_zones',470,''),('e7ba21ad9d8ee8e164404d2d45c58d52','static_countries',27,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('e7bc901ade906719f648bb9d44f2b2d8','static_countries',131,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('e81e41049f1c86d7bcdd955148dc1d90','static_countries',220,'cn_country_zones','','','',2,0,0,'static_country_zones',4,''),('e82c8d470dfcb4a05226736577d8f273','static_countries',46,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('e86ec89c29dcfa6d313de44089e263f9','static_countries',97,'cn_country_zones','','','',21,0,0,'static_country_zones',481,''),('e881b071ac4bfbf4c3e13357f8f52803','static_countries',54,'cn_country_zones','','','',9,0,0,'static_country_zones',88,''),('e89ea8d9b3a3e6b68d03ef9201f5aa11','static_countries',83,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('e8dd87f37fbcc6345658073e323272a5','static_countries',50,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('e8fe1b48fb38eb0b8850eb956f4001db','static_countries',72,'cn_country_zones','','','',40,0,0,'static_country_zones',593,''),('e90c32804ebde0d6310342e8f67b835f','static_countries',148,'cn_currency_uid','','','',0,0,0,'static_currencies',104,''),('e9185d4fe1e6380bff7e4671b6e37359','static_countries',205,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('e929357291f2390c6a8c9e3735a4a8c3','static_countries',72,'cn_country_zones','','','',79,0,0,'static_country_zones',614,''),('e93d3764c0b23c807296a550ee88b204','static_countries',220,'cn_country_zones','','','',19,0,0,'static_country_zones',28,''),('e959095aea16206f690b89060b93b965','static_countries',72,'cn_country_zones','','','',64,0,0,'static_country_zones',602,''),('e998998b83799e113ee54360693ce641','static_countries',72,'cn_country_zones','','','',114,0,0,'static_country_zones',640,''),('e9a717e1b448a904837c4a814d78c835','static_countries',132,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('e9f057c3f659ec1b8317da1229a48ac8','static_countries',74,'cn_country_zones','','','',96,0,0,'static_country_zones',430,''),('ea3883e3bb2fc84816cb785edb5857ca','static_countries',74,'cn_country_zones','','','',4,0,0,'static_country_zones',340,''),('ea4cbd7b8b8c58818e6f0bbecc62b791','static_countries',133,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('eac818fa1003e662d96e58870d5b8a3b','static_countries',102,'cn_currency_uid','','','',0,0,0,'static_currencies',70,''),('ead51f0e31f6d422a3bfbf93e5924c9d','static_countries',93,'cn_currency_uid','','','',0,0,0,'static_currencies',63,''),('eb01a17e8279f0b805d5d5fcd5a43025','static_countries',163,'cn_currency_uid','','','',0,0,0,'static_currencies',114,''),('eb112e0657a5f0f03f7b6cc60b490788','static_countries',72,'cn_country_zones','','','',78,0,0,'static_country_zones',613,''),('eb2ee4b2502c40c76dfa490034e018ab','static_countries',134,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('eb3448f55c60e7e227dd8445b6356330','static_countries',41,'cn_country_zones','','','',24,0,0,'static_country_zones',128,''),('eb957d511933b9b9baaf84dc79e1eb35','static_countries',220,'cn_country_zones','','','',17,0,0,'static_country_zones',26,''),('eba5c018d708a818df742389a2790a33','static_countries',167,'cn_currency_uid','','','',0,0,0,'static_currencies',117,''),('ebace44e7cecd94fb5ce0fb01c4c9efe','static_countries',72,'cn_country_zones','','','',0,0,0,'static_country_zones',564,''),('ebc790cd276885488dae086e5d38a481','static_countries',100,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('ebced14d8963eab088933594f3592584','static_countries',235,'cn_currency_uid','','','',0,0,0,'static_currencies',168,''),('ebe8d736d124b3990a8e6ccc0b648b95','static_countries',69,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('ec35166d97bbb636a2d8a73d7b57f98c','static_countries',72,'cn_country_zones','','','',60,0,0,'static_country_zones',551,''),('ec4eb77f4e3450d74ce3a23212825566','static_countries',220,'cn_country_zones','','','',50,0,0,'static_country_zones',63,''),('ec5088076c1fada25b154692dd3c6aa1','static_countries',67,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('ec58ebfa449b71434587976fc66cb97c','static_countries',154,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('ec5b15ee9ef32cab53a8f9377898b8c7','static_countries',220,'cn_country_zones','','','',8,0,0,'static_country_zones',16,''),('ec6428fbc0fcb6274a90e0f01acd7b0c','static_countries',207,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('ecf2f82b8631f25ae83981dc89372689','static_countries',144,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('ed423994f26c3cda97b71966ea718f0e','static_countries',104,'cn_country_zones','','','',60,0,0,'static_country_zones',280,''),('ed6730d5e65e00b4abe407be75f011ea','static_countries',170,'cn_country_zones','','','',4,0,0,'static_country_zones',677,''),('ed6c976018043b1f871bfec7b796eb06','static_countries',137,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('ed9df5575e6e1da239667f369e60c334','static_countries',36,'cn_country_zones','','','',0,0,0,'static_country_zones',66,''),('edbebd49c9e18089aef3937e5eab66f9','static_countries',65,'cn_country_zones','','','',22,0,0,'static_country_zones',156,''),('edc165233c7684fc0ae41d0f1ae41eac','static_countries',55,'cn_currency_uid','','','',0,0,0,'static_currencies',41,''),('edfcfc435d074107564d8b07994f2174','static_countries',104,'cn_country_zones','','','',46,0,0,'static_country_zones',267,''),('ee5e20fe0068cf6c9ebe866b8093d55c','static_countries',74,'cn_country_zones','','','',98,0,0,'static_country_zones',396,''),('ef3eef3985cc4504776f87c432eade9b','static_countries',41,'cn_country_zones','','','',22,0,0,'static_country_zones',126,''),('ef734c7ed6b611a8633fcb35c37ad6d5','static_countries',41,'cn_country_zones','','','',1,0,0,'static_country_zones',106,''),('efbb1995790051f4bd5e790662481e7b','static_countries',104,'cn_country_zones','','','',55,0,0,'static_country_zones',329,''),('f01b7a59b40c458baa4a6981536efed7','static_countries',41,'cn_country_zones','','','',20,0,0,'static_country_zones',123,''),('f036e27973a4b102060e539e0870c045','static_countries',37,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('f060cf7d2fb01e5ea7190ca306b7fca9','static_countries',74,'cn_country_zones','','','',46,0,0,'static_country_zones',369,''),('f0935dc062b1da4d59f70278bf34c5e8','static_countries',66,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('f0c9a83434c9e8c47f9f210e191e2a55','static_countries',29,'cn_country_zones','','','',10,0,0,'static_country_zones',502,''),('f14e404e0692998534d59ff08908c1e7','static_countries',13,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f1b4d1034813681480489688c1d45c9e','static_countries',72,'cn_country_zones','','','',124,0,0,'static_country_zones',648,''),('f1c3b463e1e78a5c028ba5a61ac3fe95','static_countries',240,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f1d46d44d24969844940f4eeba9c8683','static_countries',104,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('f1e0e1517de5313915a0311f6011aad0','static_countries',74,'cn_country_zones','','','',88,0,0,'static_country_zones',414,''),('f21211abfaf90c6c3273a0666e49c066','static_countries',65,'cn_country_zones','','','',49,0,0,'static_country_zones',178,''),('f272563b09d585a64aa3b50d4605f25c','static_countries',72,'cn_country_zones','','','',86,0,0,'static_country_zones',555,''),('f28d6374e797ec162d3b48907ed7ad19','static_countries',74,'cn_country_zones','','','',18,0,0,'static_country_zones',350,''),('f29265b7817e9a16da3912a7362c0cff','static_countries',148,'cn_country_zones','','','',7,0,0,'static_country_zones',189,''),('f2a226fc4d7373d5e54e08cbfd0def4d','static_countries',65,'cn_country_zones','','','',21,0,0,'static_country_zones',155,''),('f2a65fe1ba49dee542b72a469e94552b','static_countries',109,'cn_currency_uid','','','',0,0,0,'static_currencies',76,''),('f2acfbcaa7887cc1075da456e7150bd5','static_countries',52,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('f2ae6929c8d1f577140d6beae465ceca','static_countries',137,'cn_currency_uid','','','',0,0,0,'static_currencies',96,''),('f2affae3a96ef8d4ee8cdd2ac81fa295','static_countries',24,'cn_currency_uid','','','',0,0,0,'static_currencies',18,''),('f31a2135825362af932763188859ff3d','static_countries',237,'cn_currency_uid','','','',0,0,0,'static_currencies',169,''),('f326fa182f9efdab9baa0d7eb6e6ec80','static_countries',29,'cn_country_zones','','','',26,0,0,'static_country_zones',516,''),('f33b56e52f90aeb5353835660771bfd5','static_countries',39,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('f34d9b8fab888c49339652519ee829c1','static_countries',72,'cn_country_zones','','','',16,0,0,'static_country_zones',576,''),('f3b7b4a97f9c3ce01848d066626a00ec','static_countries',157,'cn_country_zones','','','',11,0,0,'static_country_zones',540,''),('f3f4d7598ae8df804d205efe111ac710','static_countries',87,'cn_currency_uid','','','',0,0,0,'static_currencies',58,''),('f4202d07f4b60b6a3bdbf0557d1ba459','static_countries',179,'cn_currency_uid','','','',0,0,0,'static_currencies',179,''),('f42098423083fac872004d6279a3af92','static_countries',36,'cn_country_zones','','','',4,0,0,'static_country_zones',69,''),('f43ccf21250ad28b8e6285887c762b7e','static_countries',152,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('f4a1ae66de0870ff11f8aea41a15f8a1','static_countries',74,'cn_country_zones','','','',91,0,0,'static_country_zones',427,''),('f4c2463c16c050f813c399dd6064b54a','static_countries',93,'cn_country_zones','','','',9,0,0,'static_country_zones',698,''),('f510d58f1a1e23ca33e0f525581bd090','static_countries',243,'cn_currency_uid','','','',0,0,0,'static_currencies',172,''),('f6387d92e9571348051405af08828286','static_countries',206,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('f671db6883d246c4eb2bfc0819ed1a32','static_countries',104,'cn_country_zones','','','',49,0,0,'static_country_zones',269,''),('f6ba8d820ed0d602742fbebe456ab7d6','static_countries',245,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('f724d903114addc458751f901db7440f','static_countries',74,'cn_country_zones','','','',63,0,0,'static_country_zones',398,''),('f72fc98bda7f7b0dc4c41008ec69463e','static_countries',72,'cn_country_zones','','','',77,0,0,'static_country_zones',612,''),('f73ad3c7afdcd6dd6bee1f4f5f99f16c','static_countries',140,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('f73c2c653f2e4cf7b49a424de09585b2','static_countries',228,'cn_currency_uid','','','',0,0,0,'static_currencies',159,''),('f7501b0357582e218501589d4f81076a','static_countries',100,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('f767bb2e1ef5b8cd0e6c96a6124b841b','static_countries',39,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('f770b693b7d7e0617d3e3261781ff73c','static_countries',148,'cn_country_zones','','','',18,0,0,'static_country_zones',200,''),('f7a88e966e00554af30821e810adf626','static_countries',72,'cn_country_zones','','','',53,0,0,'static_country_zones',634,''),('f7aff865c06e635e0bc62915b60876bc','static_countries',56,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('f7c2b44a1fefaec748f0392131261547','static_countries',150,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('f7f376dc6b61a76fc9e58e039a0f2c19','static_countries',72,'cn_country_zones','','','',15,0,0,'static_country_zones',557,''),('f7f84f52fefafe622559792cbd0b7462','static_countries',67,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f8204f5b55207f7536703a217dc811ba','static_countries',74,'cn_country_zones','','','',17,0,0,'static_country_zones',349,''),('f8319c7a44365879a2ec821f6f7bbd0c','static_countries',41,'cn_country_zones','','','',4,0,0,'static_country_zones',109,''),('f88713782c310b0b2b6e50b3c7f5e5b6','static_countries',220,'cn_country_zones','','','',3,0,0,'static_country_zones',5,''),('f8da798bc1ab8d2442e30d6b315172cb','static_countries',74,'cn_country_zones','','','',77,0,0,'static_country_zones',410,''),('f8ff0e549b378eec7dfad3880a3f606d','static_countries',248,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('f927d0c7d47ce98f6591e3d0b71ef26c','static_countries',226,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('f92971ac39257d5afbc15fd6bbebb483','static_countries',79,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('f9ab5018c9ab0f5277117d267cbbaf6c','static_countries',97,'cn_country_zones','','','',9,0,0,'static_country_zones',469,''),('f9faa821d0a46a436e26d635555b931a','static_countries',94,'cn_currency_uid','','','',0,0,0,'static_currencies',64,''),('fadae4a0d477372365382c0811ab935e','static_countries',183,'cn_currency_uid','','','',0,0,0,'static_currencies',128,''),('fb024961daebc3a19415bbb78b514858','static_countries',14,'cn_country_zones','','','',5,0,0,'static_country_zones',219,''),('fb208a52f67c6492cb33b1001099769c','static_countries',74,'cn_country_zones','','','',51,0,0,'static_country_zones',378,''),('fb8993cbb5f262847a88fecee8007b68','static_countries',176,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('fb9bb739ebf8d15eeed290da2fd559d8','static_countries',120,'cn_currency_uid','','','',0,0,0,'static_currencies',85,''),('fb9bbe66305ac4a85df91d953f29873d','static_countries',134,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('fbb611163f20aec314e29912bb355f1e','static_countries',214,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('fbcbbcb809dcd2dd8d39e3623bf28ad0','static_countries',220,'cn_country_zones','','','',14,0,0,'static_country_zones',23,''),('fbd16fc20f8d990c5ec8f404cabe95b7','static_countries',74,'cn_country_zones','','','',25,0,0,'static_country_zones',356,''),('fc14bba8b063055f447d1d3c68ffcdfd','static_countries',187,'cn_currency_uid','','','',0,0,0,'static_currencies',132,''),('fc39375e09ce8ffa12500614625f2087','static_countries',44,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('fc8dea2e08826f1253df8f0b895b291d','static_countries',174,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('fccf3a595b494d6f332392028eb7514b','static_countries',220,'cn_country_zones','','','',44,0,0,'static_country_zones',56,''),('fd00450712dec41d0289992bfb743b2e','static_countries',72,'cn_country_zones','','','',63,0,0,'static_country_zones',601,''),('fd2957e8c28be3c9ae62ec33307c227b','static_countries',212,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('fd9c16dff6d7e8d211fa782416a5a25d','static_countries',90,'cn_currency_uid','','','',0,0,0,'static_currencies',60,''),('fdbd70ba7645b3490c424ab755512936','static_countries',170,'cn_country_zones','','','',0,0,0,'static_country_zones',673,''),('fe07357d5f35de426a331991d923f530','static_countries',146,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('fe1c2534ea613804d0ac62d3fdb6f11f','static_countries',218,'cn_currency_uid','','','',0,0,0,'static_currencies',154,''),('fe26869d3636f52d42585aa2e40ba6da','static_countries',148,'cn_country_zones','','','',6,0,0,'static_country_zones',188,''),('fe7d8b0e6ac1c4ade1d08f873020865e','static_countries',72,'cn_country_zones','','','',57,0,0,'static_country_zones',629,''),('fe881627bf03ffd94cce98947d3b5e78','static_countries',65,'cn_country_zones','','','',50,0,0,'static_country_zones',179,''),('feadbd4ca25255e197ff78db082a276a','static_countries',148,'cn_country_zones','','','',28,0,0,'static_country_zones',210,''),('feb784f56faa23879e0d48d9de702675','static_countries',104,'cn_country_zones','','','',63,0,0,'static_country_zones',283,''),('fef17ce45955f24b87a68ef0ed93b1f3','static_countries',74,'cn_country_zones','','','',101,0,0,'static_country_zones',436,''),('ff2296dadc523d4df5948bb4cb3764d2','static_countries',104,'cn_country_zones','','','',6,0,0,'static_country_zones',229,''),('ffc9023e126f7dcdba0ea8cfcd09f979','static_countries',74,'cn_country_zones','','','',24,0,0,'static_country_zones',346,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` longblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\DeprecatedRteProperties','i:0;'),(2,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\RteAcronymButtonRenamedToAbbreviation','i:0;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate','i:0;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate','i:0;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate','i:0;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate','i:0;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate','i:0;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate','i:0;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate','i:0;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate','i:0;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ContentTypesToTextMediaUpdate','i:0;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate','i:0;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate','i:0;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate','i:0;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate','i:0;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:0;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:0;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:0;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DbalAndAdodbExtractionUpdate','i:0;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard','i:0;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate','i:0;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:0;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:0;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:0;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:0;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:0;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateCscStaticTemplateUpdate','i:0;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(32,'core','sys_refindex_lastUpdate','i:1489067308;'),(33,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseCharsetUpdate','i:1;'),(36,'installUpdateRows','rowUpdatersDone','a:2:{i:0;s:52:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L10nModeUpdater\";i:1;s:53:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\ImageCropUpdater\";}'),(37,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','i:1;'),(38,'extensionDataImport','typo3/sysext/filemetadata/ext_tables_static+adt.sql','i:1;'),(39,'extensionDataImport','typo3conf/ext/gridelements/ext_tables_static+adt.sql','i:1;'),(40,'extensionDataImport','typo3conf/ext/static_info_tables/ext_tables_static+adt.sql','i:1;'),(41,'extensionDataImport','typo3conf/ext/go_maps_ext/ext_tables_static+adt.sql','i:1;'),(42,'extensionDataImport','typo3conf/ext/dyncss/ext_tables_static+adt.sql','i:1;'),(43,'extensionDataImport','typo3conf/ext/dyncss_less/ext_tables_static+adt.sql','i:1;'),(44,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql','i:1;'),(45,'core','formProtectionSessionToken:1','s:64:\"610783758d7911b44d7f72a17900169daa3b06c28ae3e6a1d244873dbd475fcc\";'),(46,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','i:1;'),(47,'tx_realurl','updateLevel','i:3;'),(48,'extensionDataImport','typo3conf/ext/seo_basics/ext_tables_static+adt.sql','i:1;'),(49,'extensionDataImport','typo3conf/ext/solr/ext_tables_static+adt.sql','i:1;'),(50,'extensionDataImport','typo3conf/ext/pxa_newsletter_subscription/ext_tables_static+adt.sql','i:1;'),(51,'extensionDataImport','typo3conf/ext/pxa_cookie_bar/ext_tables_static+adt.sql','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_themes_skin` tinytext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1489566987,256,1489566490,1,'t3kit8','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:news/Configuration/TypoScript,EXT:themes/Configuration/TypoScript,EXT:gridelements/Configuration/TypoScript/,EXT:seo_basics/Configuration/TypoScript,EXT:pxa_newsletter_subscription/Configuration/TypoScript,EXT:news/Configuration/TypoScript/Sitemap','themes.configuration.header.logo.main.file = \r\nthemes.configuration.socialmedia.useFacebook = 1\r\nthemes.configuration.socialmedia.useGooglePlus = 1\r\nthemes.configuration.socialmedia.useInstagram = 1\r\nthemes.configuration.socialmedia.useLinkedIn = 1\r\nthemes.configuration.socialmedia.usePinterest = 1\r\nthemes.configuration.socialmedia.useTwitter = 1\r\nthemes.configuration.socialmedia.useVimeo = 1\r\nthemes.configuration.socialmedia.useYoutube = 1\r\nthemes.configuration.isDevelopment = 1','','','','',0,0,0,0,'theme_t3kit');
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `colPos` smallint(6) NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  `tx_themes_responsive` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themes_behaviour` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themes_variants` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themes_enforceequalcolumnheight` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themes_columnsettings` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_themes_buttoncontent` int(11) NOT NULL DEFAULT '0',
  `tx_themes_icon` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  `wrapper` int(10) unsigned NOT NULL DEFAULT '0',
  `aligning` int(10) unsigned NOT NULL DEFAULT '0',
  `wrapper_margin_top` int(10) unsigned NOT NULL DEFAULT '0',
  `wrapper_margin_bottom` int(10) unsigned NOT NULL DEFAULT '0',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`),
  KEY `index_newscontent` (`tx_news_related_news`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1489567236,1489567202,1,0,0,256,'header','Test','',NULL,0,0,0,0,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:8:\"aligning\";N;s:18:\"wrapper_margin_top\";N;s:21:\"wrapper_margin_bottom\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,0,-2,'0',0,0,0,'','','','','',0,'',0,0,0,0,0,'','default',0,0,'','',0,'',NULL);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_domain_model_address`
--

DROP TABLE IF EXISTS `tx_gomapsext_domain_model_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_domain_model_address` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configuration_map` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `marker` int(10) unsigned NOT NULL DEFAULT '0',
  `image_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `image_width` int(11) NOT NULL DEFAULT '0',
  `image_height` int(11) NOT NULL DEFAULT '0',
  `info_window_content` text COLLATE utf8_unicode_ci NOT NULL,
  `info_window_link` int(11) NOT NULL DEFAULT '0',
  `close_by_click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `open_by_click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `opened` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_domain_model_address`
--

LOCK TABLES `tx_gomapsext_domain_model_address` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_domain_model_map`
--

DROP TABLE IF EXISTS `tx_gomapsext_domain_model_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_domain_model_map` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `height` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) NOT NULL DEFAULT '0',
  `addresses` int(10) unsigned NOT NULL DEFAULT '0',
  `show_addresses` smallint(5) unsigned NOT NULL DEFAULT '0',
  `show_categories` smallint(5) unsigned NOT NULL DEFAULT '0',
  `kml_url` text COLLATE utf8_unicode_ci NOT NULL,
  `kml_preserve_viewport` smallint(5) unsigned NOT NULL DEFAULT '0',
  `kml_local` smallint(5) unsigned NOT NULL DEFAULT '0',
  `scroll_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zoom_min` int(11) NOT NULL DEFAULT '0',
  `zoom_max` int(11) NOT NULL DEFAULT '0',
  `draggable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `double_click_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `marker_cluster` smallint(5) unsigned NOT NULL DEFAULT '0',
  `marker_cluster_zoom` int(11) NOT NULL DEFAULT '0',
  `marker_cluster_size` int(11) NOT NULL DEFAULT '0',
  `marker_cluster_style` text COLLATE utf8_unicode_ci NOT NULL,
  `marker_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `default_type` int(11) NOT NULL DEFAULT '0',
  `pan_control` smallint(5) unsigned NOT NULL DEFAULT '0',
  `scale_control` smallint(5) unsigned NOT NULL DEFAULT '0',
  `streetview_control` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zoom_control` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zoom_control_type` int(11) NOT NULL DEFAULT '0',
  `map_type_control` smallint(5) unsigned NOT NULL DEFAULT '0',
  `map_types` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show_route` smallint(5) unsigned NOT NULL DEFAULT '0',
  `calc_route` smallint(5) unsigned NOT NULL DEFAULT '0',
  `travel_mode` int(11) NOT NULL DEFAULT '0',
  `unit_system` int(11) NOT NULL DEFAULT '0',
  `styled_map_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `styled_map_code` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_domain_model_map`
--

LOCK TABLES `tx_gomapsext_domain_model_map` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_map_address_mm`
--

DROP TABLE IF EXISTS `tx_gomapsext_map_address_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_map_address_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_map_address_mm`
--

LOCK TABLES `tx_gomapsext_map_address_mm` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_map_address_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_map_address_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gridelements_backend_layout`
--

DROP TABLE IF EXISTS `tx_gridelements_backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gridelements_backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `horizontal` smallint(6) NOT NULL DEFAULT '0',
  `top_level_layout` smallint(6) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  `pi_flexform_ds` mediumtext COLLATE utf8_unicode_ci,
  `pi_flexform_ds_file` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gridelements_backend_layout`
--

LOCK TABLES `tx_gridelements_backend_layout` WRITE;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_file`
--

DROP TABLE IF EXISTS `tx_news_domain_model_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_file`
--

LOCK TABLES `tx_news_domain_model_file` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_link`
--

DROP TABLE IF EXISTS `tx_news_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `uri` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `teaser` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `datetime` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8_unicode_ci,
  `author_email` tinytext COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8_unicode_ci,
  `fal_related_files` int(10) unsigned DEFAULT '0',
  `related_links` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `fal_media` int(10) unsigned DEFAULT '0',
  `internalurl` text COLLATE utf8_unicode_ci,
  `externalurl` text COLLATE utf8_unicode_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` text COLLATE utf8_unicode_ci,
  `path_segment` tinytext COLLATE utf8_unicode_ci,
  `alternative_title` tinytext COLLATE utf8_unicode_ci,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_related_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_related_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_related_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_ttcontent_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_ttcontent_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_ttcontent_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_ttcontent_mm`
--

LOCK TABLES `tx_news_domain_model_news_ttcontent_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_pxacookiebar_domain_model_cookiewarning`
--

DROP TABLE IF EXISTS `tx_pxacookiebar_domain_model_cookiewarning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_pxacookiebar_domain_model_cookiewarning` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `warningmessage` text COLLATE utf8_unicode_ci NOT NULL,
  `linktext` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_pxacookiebar_domain_model_cookiewarning`
--

LOCK TABLES `tx_pxacookiebar_domain_model_cookiewarning` WRITE;
/*!40000 ALTER TABLE `tx_pxacookiebar_domain_model_cookiewarning` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_pxacookiebar_domain_model_cookiewarning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext COLLATE utf8_unicode_ci,
  `pagepath` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias_cache_map`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias_cache_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias_cache_map` (
  `alias_uid` int(11) NOT NULL DEFAULT '0',
  `url_cache_id` int(11) NOT NULL DEFAULT '0',
  KEY `check_existence` (`alias_uid`,`url_cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias_cache_map`
--

LOCK TABLES `tx_realurl_uniqalias_cache_map` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text COLLATE utf8_unicode_ci,
  `speaking_url` text COLLATE utf8_unicode_ci,
  `request_variables` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`original_url`(32),`expire`),
  KEY `pathq2` (`rootpage_id`,`speaking_url`(32)),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
INSERT INTO `tx_realurl_urldata` VALUES (1,0,1489566884,1,1,'id=1&no_cache=1','?no_cache=1','{\"id\":\"1\",\"no_cache\":\"1\"}',0),(2,0,1489566885,1,1,'id=1','/','{\"id\":\"1\"}',0);
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8_unicode_ci,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_cache`
--

DROP TABLE IF EXISTS `tx_solr_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  `lifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_cache`
--

LOCK TABLES `tx_solr_cache` WRITE;
/*!40000 ALTER TABLE `tx_solr_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_cache_tags`
--

DROP TABLE IF EXISTS `tx_solr_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_cache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_cache_tags`
--

LOCK TABLES `tx_solr_cache_tags` WRITE;
/*!40000 ALTER TABLE `tx_solr_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_indexqueue_indexing_property`
--

DROP TABLE IF EXISTS `tx_solr_indexqueue_indexing_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_indexqueue_indexing_property` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `property_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `property_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_indexqueue_indexing_property`
--

LOCK TABLES `tx_solr_indexqueue_indexing_property` WRITE;
/*!40000 ALTER TABLE `tx_solr_indexqueue_indexing_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_indexqueue_indexing_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_indexqueue_item`
--

DROP TABLE IF EXISTS `tx_solr_indexqueue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_indexqueue_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) NOT NULL DEFAULT '0',
  `item_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `indexing_configuration` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `has_indexing_properties` smallint(6) NOT NULL DEFAULT '0',
  `indexing_priority` int(11) NOT NULL DEFAULT '0',
  `changed` int(11) NOT NULL DEFAULT '0',
  `indexed` int(11) NOT NULL DEFAULT '0',
  `errors` text COLLATE utf8_unicode_ci NOT NULL,
  `pages_mountidentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `changed` (`changed`),
  KEY `item_id` (`item_type`,`item_uid`),
  KEY `pages_mountpoint` (`item_type`,`item_uid`,`has_indexing_properties`,`pages_mountidentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_indexqueue_item`
--

LOCK TABLES `tx_solr_indexqueue_item` WRITE;
/*!40000 ALTER TABLE `tx_solr_indexqueue_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_indexqueue_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_last_searches`
--

DROP TABLE IF EXISTS `tx_solr_last_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_last_searches` (
  `sequence_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `keywords` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`sequence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_last_searches`
--

LOCK TABLES `tx_solr_last_searches` WRITE;
/*!40000 ALTER TABLE `tx_solr_last_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_last_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_statistics`
--

DROP TABLE IF EXISTS `tx_solr_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_statistics` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `root_pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '0',
  `num_found` int(11) NOT NULL DEFAULT '0',
  `suggestions_shown` int(11) NOT NULL DEFAULT '0',
  `time_total` int(11) NOT NULL DEFAULT '0',
  `time_preparation` int(11) NOT NULL DEFAULT '0',
  `time_processing` int(11) NOT NULL DEFAULT '0',
  `feuser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cookie` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page` int(10) unsigned NOT NULL DEFAULT '0',
  `filters` blob,
  `sorting` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parameters` blob,
  PRIMARY KEY (`uid`),
  KEY `rootpid_keywords` (`root_pid`,`keywords`),
  KEY `rootpid_tstamp` (`root_pid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_statistics`
--

LOCK TABLES `tx_solr_statistics` WRITE;
/*!40000 ALTER TABLE `tx_solr_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_solr_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_themes_buttoncontent`
--

DROP TABLE IF EXISTS `tx_themes_buttoncontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_themes_buttoncontent` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `linktext` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linktarget` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linktitle` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `tt_content` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_themes_buttoncontent`
--

LOCK TABLES `tx_themes_buttoncontent` WRITE;
/*!40000 ALTER TABLE `tx_themes_buttoncontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_themes_buttoncontent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20  7:56:55
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: db    Database: t3kit
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1489056864,'admin','',0,'$P$CQvEQg7vuJJfrATv8TPQRcV6klmdhB/',1,'',0,0,0,'','',NULL,0,1489056864,0,'',NULL,'','a:16:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:7:{s:12:\"system_dbint\";a:3:{s:8:\"function\";s:8:\"refindex\";s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:6:\"web_ts\";a:5:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:15:\"ts_browser_type\";s:5:\"const\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";}s:10:\"FormEngine\";a:2:{i:0;a:4:{s:32:\"9b209de23811ef89bec385c059f31cd5\";a:4:{i:0;s:6:\"t3kit8\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c35634cd8ae4894e643ebb892e589515\";a:4:{i:0;s:4:\"Home\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f002d20dcd253902dd49b4b70e7f878d\";a:4:{i:0;s:14:\"sdfdsfdsdsgsdg\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:6:\"header\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:222:\"&edit[tt_content][1]=edit&defVals[tt_content][colPos]=0&defVals[tt_content][sys_language_uid]=0&defVals[tt_content][CType]=header&defVals[tt_content][tx_gridelements_columns]=0&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"41e1503a912c8d1b703842bb19e74f1b\";a:4:{i:0;s:14:\"sdfdsfdsdsgsdg\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"41e1503a912c8d1b703842bb19e74f1b\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_list\";a:0:{}s:16:\"opendocs::recent\";a:1:{s:32:\"c35634cd8ae4894e643ebb892e589515\";a:4:{i:0;s:4:\"Home\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1489056893;s:15:\"moduleSessionID\";a:7:{s:12:\"system_dbint\";s:32:\"4d82cd290ed1530a16d01e4cb65c7b17\";s:10:\"web_layout\";s:32:\"4d7d82e300df13dcad7e8e96944beee2\";s:6:\"web_ts\";s:32:\"2a745dbb17e82719432d2a770e13f187\";s:10:\"FormEngine\";s:32:\"d8132be51a7078348a2548062777482b\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"d8132be51a7078348a2548062777482b\";s:8:\"web_list\";s:32:\"2a745dbb17e82719432d2a770e13f187\";s:16:\"opendocs::recent\";s:32:\"2a745dbb17e82719432d2a770e13f187\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:2:\"p1\";}}}}s:10:\"modulemenu\";s:13:\"{\"file\":true}\";}',NULL,NULL,1,'',0,0,NULL,1491390407,0,NULL,0,1,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 11:45:23
