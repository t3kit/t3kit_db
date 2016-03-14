-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: t3kit
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_swedish_ci,
  `config` text COLLATE utf8_swedish_ci NOT NULL,
  `icon` text COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_swedish_ci,
  `explicit_allowdeny` text COLLATE utf8_swedish_ci,
  `allowed_languages` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_swedish_ci,
  `db_mountpoints` text COLLATE utf8_swedish_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_swedish_ci,
  `tables_modify` text COLLATE utf8_swedish_ci,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_swedish_ci,
  `file_mountpoints` text COLLATE utf8_swedish_ci,
  `file_permissions` text COLLATE utf8_swedish_ci,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_swedish_ci,
  `subgroup` text COLLATE utf8_swedish_ci,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `ses_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext COLLATE utf8_swedish_ci,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_swedish_ci,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_swedish_ci,
  `allowed_languages` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `uc` mediumtext COLLATE utf8_swedish_ci,
  `file_mountpoints` text COLLATE utf8_swedish_ci,
  `file_permissions` text COLLATE utf8_swedish_ci,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_swedish_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_swedish_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `md5hash` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `md5hash` char(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8_swedish_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_realurl_404_multilingual`
--

DROP TABLE IF EXISTS `cf_realurl_404_multilingual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_realurl_404_multilingual` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_realurl_404_multilingual`
--

LOCK TABLES `cf_realurl_404_multilingual` WRITE;
/*!40000 ALTER TABLE `cf_realurl_404_multilingual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_realurl_404_multilingual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_realurl_404_multilingual_tags`
--

DROP TABLE IF EXISTS `cf_realurl_404_multilingual_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_realurl_404_multilingual_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_realurl_404_multilingual_tags`
--

LOCK TABLES `cf_realurl_404_multilingual_tags` WRITE;
/*!40000 ALTER TABLE `cf_realurl_404_multilingual_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_realurl_404_multilingual_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache`
--

DROP TABLE IF EXISTS `cf_themes_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache`
--

LOCK TABLES `cf_themes_cache` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache` DISABLE KEYS */;
INSERT INTO `cf_themes_cache` VALUES (50,'87bc68c937aceb96df09391854ce3e6f7489f336',0,'x��Zmo�8�+Eq���\'N���b�2�S�3L{3�8\n�V]m�k�I����#e˱c�N�Ec\'6�&)��L����w9���Rm#*{��IDT��!Ԍ����r:���i�Y��*F\"��B���T;�@pE��tA�H}�$���6�HL=M?h�˕HU���\"s��T�?=Uꩠ8��$S*%~�t�}~\nEL�EH#}�޸!�D��<���?������2��pR��1|)d��m����B8��?p`K8D\"x�+\no\0< �b���C��[��1҇e*���$�C�R�\0@�_�\Z�섂P�B�Yi�y>#�����g���?�����>\"s1��糓�*xTN@*Z$)h��ى$1���������������g�ς/�E��l��k��	Յ�\\�[8�C�	����*�4\\���I��u��/*�!#���|�.��N��� ���\0�\n�E����!!�K���t�-+��1��I���1��\\�7\"�\\�~���@�7���m��13	�c*װ�Ih�R��6F��� �_�#ނ\\Q�\\�:1��!P��Ŧ��� }#:/�9qXe���ap#�MD��.`_sY3j&�F_ht�`��3��7�q��w=R�_��o�7X#CH�bTU�t�irJ��$�hz���:��f�gJ��QIQ�fLE�|!Ҹ�����E���,�O����~�.����Rdi@e��5�M��H5��){+Gf�$Q���dh!kF7�z��ii@�*�scKaEZ��rD�vlg�,��@�{\r(�zU�X%{����4��̬c��6���ɣ��٢\ZR�L����a���Rɴߧ/P�\"\n!7��d@�2#KZ�C��-�Mg7`�H��I3C��������E��!4\0�.E��>g��%�4%*O�ñ��N3�J�ݚ�H(_BJX�$4O�Ĵ]�3�\'�<B�4��I������5(�h��0�ɳ���q-ѿ��~���f4J�8p��&��ϫ��A@�4�����n��i�}��;��?9B�W�C���\nM���}�U���)��o&!�ړ0� /�jǫS�(��\0��d�����F�R�\r0,��$2�]�	�i�F�b�JZ�3D����\'�-�;GQ����ϊ<X6>)9=�m`Z&�y�}^�-�PoTS���P�~�Ǐ��3�n�y���}�J�h��+NM��rc�\0i��O��C��\0EuOwC��s�*=>�NT��&�GքE�B\n����lx66}X�g�EǷ�)��t�m1+���Y��=_FL���N�������צ_��<��@�h*H�c�=a����x5�vR/\"bfJy�Ʈ�Adi�Ma�j��զ���).����^��6�*��2�m�W�7�X��8ְV��17NéZ7o�v�̰6>C{��D��=�Bw�`�\Z ��s\"i�F�Nf� e򖮡�ObР6�GĂ��S�5��y���yk���#�a�A�}3���	�g�P4P�cH+W��f�\0�+0�o��BK����ӐI��S�Z���_S\Z�5}�VL�~�#᯦�)f��V�E�� z<p��d�<�c������.G�p�lN=��6�Y��bX�8�kA��@BQP���p.Y%k�5��\rT��E7��&���c��À<���v86N��H��\n��菀��3Y�n/�R�\0z�dAa�M�����a`���� g�����U}�:�/�^���K��Շ�N.�R�	4vo�c�*�N�y��:_�qz�F4���)q�zS�m��\Z	�T�D��{\\�!�<�q���c���eU;�O�qT��h`f3�)�ْ�U�r����C!��&�w%�6�b)��Y4���<�q���IJ`�$ơ_/{��f�rr� �{�=�[s����\"�g1�����K�U�Ku,��5I��rɺ���[C]�p{���\\^��pͿ!p؅�[[?J�=��\r���i ?Bqm\nv���2C�c�`n��Q��^/�]Y�	އ:�o	�8,r%��ɋ��u����̣��|,�=��C#��=R�Dz�6��w�Snwp��J�h���ѫp��;}�㯭â�𜬛:��TeK���7Z�@_��i�՝)����,���&�3n��-6�JS�y�\rvr�䀼�_�f���Gywf�Α���O�9�o�NԂ���3fd6ߵ6��cuz�Vu�4@\r�Go�Kg�ָX��<\rv�vV&;�Z�w��}&��p�yw���t�%0�	�4���\Z&ݱZ�`uO���c�V{�9������`�Ke!���=���m׀�a�T$����M�֞G#��-ԙ�J(�\Z�Y�;^��\rZ�W���h%=����\'2�����j��p����4���C׻@�>ʤ�+�\n�Y��>�^���Y�pS�6s.��V.M#��	�\\��\Z��U�\0��޸���Mr��o6��>�d��6��)ȞZ��;bG?��qF)|��(U����@3!C\Z���@���g��>�Z-\\�#|����H��,8{�=U����f��N�\n\\#�4��NI}Ck7���_.[SŞ6����,��k�*ZE/Khi��^	\\/H���3�`R?�����M.=4�x���}��\\Z���Hem���GN��yXwxI����`�>lhH���~\\~��t=�����LI|��� ��㊶�M�)}I���>\\�y�����Le��S�6ǕYƯ[���5)iE3Ϲ�\0�Ҷ`��25�G�~���*��&Q���B4ۉ��^�*���/di^V�F{�M�sr��]&1�ᔗv[@��a�>.�߅UV��]�|)��\\���x��b,�;_�_G9�Ƽ�>�,aT�P�mTpd�p�|+9�h���o�\0��u�gs��myEe<�d^5���������Wn��fˡ�\r���dN�e',2145909600);
/*!40000 ALTER TABLE `cf_themes_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache_tags`
--

DROP TABLE IF EXISTS `cf_themes_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache_tags`
--

LOCK TABLES `cf_themes_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache_tags` DISABLE KEYS */;
INSERT INTO `cf_themes_cache_tags` VALUES (50,'87bc68c937aceb96df09391854ce3e6f7489f336','page-1');
/*!40000 ALTER TABLE `cf_themes_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr`
--

DROP TABLE IF EXISTS `cf_tx_solr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_tx_solr`
--

LOCK TABLES `cf_tx_solr` WRITE;
/*!40000 ALTER TABLE `cf_tx_solr` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_tx_solr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_tx_solr_tags`
--

DROP TABLE IF EXISTS `cf_tx_solr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_tx_solr_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `tx_extbase_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_swedish_ci,
  `subgroup` tinytext COLLATE utf8_swedish_ci,
  `TSconfig` text COLLATE utf8_swedish_ci,
  `felogin_redirectPid` tinytext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
INSERT INTO `fe_groups` VALUES ('0',1,26,1443696399,1443696399,1,'Website usergroup 1',0,'',0,'','','',''),('0',2,52,1445341002,1445341002,1,'Newsletter Standard',0,'',0,'','','','');
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `tx_extbase_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_swedish_ci,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `telephone` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_swedish_ci,
  `TSconfig` text COLLATE utf8_swedish_ci,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_swedish_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_swedish_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
INSERT INTO `fe_users` VALUES ('Tx_Extbase_Domain_Model_FrontendUser',1,26,1443696503,'test','$P$Cp0Yv9Tipx4A629.VE1qR/Z6adOrSD0','1',0,0,0,'Websiteuser Name','Websiteuser Firstname','Websiteuser Middlename','Websiteuser Lastname','Websiteuser\r\nAddress','Websiteuser Phone','Websiteuser Fax','websiteuser@test.com',1443696503,1,'',0,NULL,'Websiteuser Title','wuzip','Websiteuser City','Websiteuser Country','www.websiteuser.com','Websiteuser Company','','',0,1443696599,1443696599,'',''),('0',2,52,1445341540,'mats@pixelant.se',',ljG#JW(&Vqi','2',1,0,0,'Mats Svensson','','','','','','300e5a8666fc22ab','mats@pixelant.se',1445341423,0,'',1,NULL,'','','','','','','',NULL,0,0,0,NULL,''),('0',3,52,1445341752,'mats@pixelant.se','oO!)KRfAyEg7','2',1,0,0,'Mats Svensson','','','','','','88689c2b147cd2e0','mats@pixelant.se',1445341551,0,'',1,NULL,'','','','','','','',NULL,0,0,0,NULL,''),('0',4,52,1445341832,'mats@pixelant.se',',RMkJ*%(_Kz#','2',0,0,0,'Mats Svensson','','','','','','014dbc4fe8b6e500','mats@pixelant.se',1445341768,0,'',1,NULL,'','','','','','','',NULL,0,0,0,NULL,'');
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
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_swedish_ci,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_swedish_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_swedish_ci,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_swedish_ci,
  `module` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_swedish_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_themes_icon` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `tx_seo_titletag` tinytext COLLATE utf8_swedish_ci,
  `tx_seo_canonicaltag` tinytext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1454925109,256,0,1,0,31,27,0,0,1441891270,1,0,'Home',1,'',1,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1457977879,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__StartPage','pagets__MenuContent','',0,'','',0,0,0,NULL,NULL),(2,1,0,0,0,'',0,0,0,0,0,0,1444799790,256,0,1,0,31,27,0,0,1441891287,1,0,'Home',4,NULL,0,0,0,'',0,0,1,0,3,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1443528865,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__StartPage','',NULL,0,'','',0,0,0,NULL,NULL),(3,21,0,0,0,'',0,0,0,0,0,0,1443698593,64,0,1,0,31,27,0,0,1441891294,1,0,'Typical page content',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1443691216,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(4,21,0,0,0,'',0,0,0,0,0,0,1443698639,84,0,1,0,31,27,0,0,1441891308,1,0,'Content Elements',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1443696272,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(5,21,0,0,0,'',0,0,0,0,0,0,1443697237,78,0,1,0,31,27,0,0,1441891322,1,0,'Plugins',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(6,1,0,0,0,'',0,0,0,0,0,0,1454925131,1088,0,1,0,31,27,0,0,1441891351,1,0,'Header Top menu',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(7,6,0,0,0,'',0,0,0,0,0,0,1454863508,256,0,1,0,31,27,0,0,1441891389,1,0,'Home',4,NULL,0,0,0,'',0,0,1,1,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'home','',0,0,0,NULL,NULL),(8,6,0,0,0,'',0,0,0,0,0,0,1454863577,512,0,1,0,31,27,0,0,1441891402,1,0,'Sitemap',4,NULL,0,0,0,'',0,0,1,19,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'flow-tree','',0,0,0,NULL,NULL),(9,6,0,0,0,'',0,0,0,0,0,0,1454863545,768,0,1,0,31,27,0,0,1441891417,1,0,'Login',4,NULL,0,0,0,'',0,0,1,25,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1441891540,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'person','',0,0,0,NULL,NULL),(10,4,0,0,0,'',0,0,0,0,0,0,1444116901,256,0,1,0,31,27,0,0,1441891437,1,0,'Slider',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, image slider',0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(11,4,0,0,0,'',0,0,0,0,0,0,1444116782,1000000000,1,1,0,31,27,0,0,1441891451,1,0,'Logo Carousel',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, logo carousel',0,'',0,NULL,0,1443691581,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(12,4,0,0,0,'',0,0,0,0,0,0,1444116898,248,0,1,0,31,27,0,0,1441891464,1,0,'Quote',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, quote',0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(13,4,0,0,0,'',0,0,0,0,0,0,1444116871,128,0,1,0,31,27,0,0,1441891476,1,0,'BigIconTextButton',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, bigIconTextButton',0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(14,3,0,0,0,'',0,0,0,0,0,0,1443691813,256,0,1,0,31,27,0,0,1443526957,1,0,'Tables',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, tables',0,'',0,NULL,0,1454174674,'Examples of how different Tables will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,2,'','',0,0,0,NULL,NULL),(15,3,0,0,0,'',0,0,0,0,0,0,1443691813,128,0,1,0,31,27,0,0,1443685121,1,0,'Headers',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, headers',0,'',0,NULL,0,1454245146,'Examples of how different headers will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,2,'','',0,0,0,NULL,NULL),(16,3,0,0,0,'',0,0,0,0,0,0,1447258514,176,0,1,0,31,27,0,0,1443687651,1,0,'Text & Media',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, text & media',0,'',0,NULL,0,1452592231,'Examples of how different Text & Media will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,2,'','',0,0,0,NULL,NULL),(17,3,0,0,0,'',0,0,0,0,0,0,1443691813,224,0,1,0,31,27,0,0,1443688923,1,0,'Bulletlist',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, bulletlist',0,'',0,NULL,0,1445446525,'Examples of how different Bulletlists will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,2,'','',0,0,0,NULL,NULL),(18,3,0,0,0,'',0,0,0,0,0,0,1443691813,512,0,1,0,31,27,0,0,1443689105,1,0,'File Links',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,'content example, file links',0,'',0,NULL,0,1454245146,'Examples of how different File Links will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,2,'','',0,0,0,NULL,NULL),(19,20,0,0,0,'',0,0,0,0,0,0,1443691452,256,0,1,0,31,27,0,0,1443690474,1,0,'Special Menus',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'content example, special menus',0,'',0,NULL,0,1454245146,'Examples of how different Special Menus will be rendered.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(20,21,0,0,0,'',0,0,0,0,0,0,1443698609,68,0,1,0,31,27,0,0,1443690500,1,0,'Special Elements',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1443697218,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(21,1,0,0,0,'',0,0,0,0,0,0,1444985337,384,0,1,0,31,27,0,0,1443691161,1,0,'Content',1,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(22,1,0,0,0,'',0,0,0,0,0,0,1443691650,1152,0,1,0,31,27,0,0,1443691638,1,0,'Storage',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(23,22,0,0,0,'',0,0,0,0,0,0,1443691668,256,0,1,0,31,27,0,0,1443691658,1,0,'Categories',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(24,21,0,0,0,'',0,0,0,0,0,0,1443698621,72,0,1,0,31,27,0,0,1443696262,1,0,'Form Elements',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1443697213,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(25,24,0,0,0,'',0,0,0,0,0,0,1443696296,256,0,1,0,31,27,0,0,1443696289,1,0,'Login form',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(26,22,0,0,0,'',0,0,0,0,0,0,1443696326,512,0,1,0,31,27,0,0,1443696318,1,0,'Website users',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(27,24,0,0,0,'',0,0,0,0,0,0,1443696625,512,0,1,0,31,27,0,0,1443696612,1,0,'Mail form',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(28,4,0,0,0,'',0,0,0,0,0,0,1447258372,176,0,1,0,31,27,0,0,1444046522,1,0,'IconTextButton',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(29,4,0,0,0,'',0,0,0,0,0,0,1444116887,224,0,1,0,31,27,0,0,1444048911,1,0,'ImageTextLink',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(30,4,0,0,0,'',0,0,0,0,0,0,1444116892,240,0,1,0,31,27,0,0,1444107485,1,0,'LogoCarousel',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(31,4,0,0,0,'',0,0,0,0,0,0,1447258497,512,0,1,0,31,27,0,0,1444116907,1,0,'Tabs',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(32,4,0,0,0,'',0,0,0,0,0,0,1452592400,64,0,1,0,31,27,0,0,1444118029,1,0,'Accordion',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(33,1,0,0,0,'',0,0,0,0,0,0,1444119185,1120,0,1,0,31,27,0,0,1444118553,1,1,'SpecialRecordElements',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(34,36,0,0,0,'',0,0,0,0,0,0,1444122500,1000000000,1,1,0,31,27,0,0,1444118594,1,1,'Question',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(35,36,0,0,0,'',0,0,0,0,0,0,1444122504,1000000000,1,1,0,31,27,0,0,1444118640,1,1,'Content',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(36,33,0,0,0,'',0,0,0,0,0,0,1444122522,1000000000,1,1,0,31,27,0,0,1444118702,1,1,'FAQ',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(37,36,0,0,0,'',0,0,0,0,0,0,1444122493,1000000000,1,1,0,31,27,0,0,1444118858,1,1,'Topic',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(38,33,0,0,0,'',0,0,0,0,0,0,1444122865,64,0,1,0,31,27,0,0,1444119111,1,0,'Social',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(39,38,0,0,0,'',0,0,0,0,0,0,1447258328,1024,0,1,0,31,27,0,0,1444119147,1,0,'News',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1447258328,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(40,38,0,0,0,'',0,0,0,0,0,0,1444122870,512,0,1,0,31,27,0,0,1444119166,1,0,'Facebook',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(41,22,0,0,0,'',0,0,0,0,0,0,1444132176,384,0,1,0,31,27,0,0,1444132170,1,0,'News',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(42,43,0,0,0,'',0,0,0,0,0,0,1454174859,256,0,1,0,31,27,0,0,1444132836,1,0,'Article',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,1,1454174859,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(43,5,0,0,0,'',0,0,0,0,0,0,1444133511,128,0,1,0,31,27,0,0,1444133389,1,0,'News',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1444133394,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(44,43,0,0,0,'',0,0,0,0,0,0,1454174870,128,0,1,0,31,27,0,0,1444133408,1,0,'List',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1457701568,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(45,1,0,0,0,'',0,0,0,0,0,0,1444985312,736,0,1,0,31,27,0,0,1444985099,1,0,'Community',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(46,45,0,0,0,'',0,0,0,0,0,0,1444985275,256,0,1,0,31,27,0,0,1444985191,1,0,'t3kit on Github',3,NULL,0,0,0,'github.com/t3kit',0,0,4,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(47,1,0,0,0,'',0,0,0,0,0,0,1444985417,912,0,1,0,31,27,0,0,1444985341,1,0,'Documentation',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(48,1,0,0,0,'',0,0,0,0,0,0,1446213292,1000,0,1,0,31,27,0,0,1444985431,1,0,'Demo',3,NULL,0,0,0,'demo.t3kit.com',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(49,1,0,0,0,'',0,0,0,0,0,0,1454925106,1000000000,1,1,0,31,27,0,0,1445320726,1,0,'Footer content',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','pagets__Content',NULL,0,'','',0,0,0,NULL,NULL),(50,49,0,0,0,'',0,0,0,0,0,0,1454924999,1000000000,1,1,0,31,27,0,0,1445320769,1,0,'Area 1',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(51,49,0,0,0,'',0,0,0,0,0,0,1454924989,1000000000,1,1,0,31,27,0,0,1445321999,1,0,'Area 3',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(52,22,0,0,0,'',0,0,0,0,0,0,1445340959,768,0,1,0,31,27,0,0,1445340943,1,0,'Newsletter-subscriptions',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(53,49,0,0,0,'',0,0,0,0,0,0,1454924994,1000000000,1,1,0,31,27,0,0,1445340972,1,0,'Area 2',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(54,1,0,0,0,'',0,0,0,0,0,0,1445446232,1112,0,1,0,31,27,0,0,1445445929,1,0,'Footer bottom menu',4,NULL,0,0,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'pagets__Content','pagets__Content',NULL,0,'','',0,0,0,NULL,NULL),(55,54,0,0,0,'',0,0,0,0,0,0,1445446001,256,0,1,0,31,27,0,0,1445445961,1,0,'Legal Rights',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454244214,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(56,54,0,0,0,'',0,0,0,0,0,0,1445446062,512,0,1,0,31,27,0,0,1445445986,1,0,'Terms of Use',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(57,54,0,0,0,'',0,0,0,0,0,0,1445446082,768,0,1,0,31,27,0,0,1445446026,1,0,'Cookies',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(58,49,0,0,0,'',0,0,0,0,0,0,1454924985,1000000000,1,1,0,31,27,0,0,1445446237,1,0,'Area 4 footer bottom menu',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1445446525,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(59,1,0,0,0,'',0,0,0,0,0,0,1446213059,1044,0,1,0,31,27,0,0,1446056741,1,0,'Customizer',3,NULL,0,0,0,'t3kit.github.io/theme_t3kit_customizer',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(60,33,0,0,0,'',0,0,0,0,0,0,1452763600,1000000000,1,1,0,31,27,0,0,1447251095,1,0,'StructuredContentElements',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(61,60,0,0,0,'',0,0,0,0,0,0,1452763589,1000000000,1,1,0,31,27,0,0,1447251120,1,0,'Home',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(62,61,0,0,0,'',0,0,0,0,0,0,1452763536,1000000000,1,1,0,31,27,0,0,1447257763,1,0,'3 Cols - Content 1',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(63,61,0,0,0,'',0,0,0,0,0,0,1452763531,1000000000,1,1,0,31,27,0,0,1447258209,1,0,'3 Cols - Content 2',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(64,61,0,0,0,'',0,0,0,0,0,0,1452763525,1000000000,1,1,0,31,27,0,0,1447260459,1,0,'3 Cols - Content 3',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(65,61,0,0,0,'',0,0,0,0,0,0,1452763519,1000000000,1,1,0,31,27,0,0,1447260811,1,0,'2 Cols - Quotes',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(66,44,0,0,0,'',0,0,0,0,0,0,1454174800,256,0,1,0,31,27,0,0,1447913602,1,0,'Date',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454174800,NULL,'',0,'','','',1,44,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(67,44,0,0,0,'',0,0,0,0,0,0,1454174810,512,0,1,0,31,27,0,0,1447913638,1,0,'Tag',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454174810,NULL,'',0,'','','',1,44,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(68,44,0,0,0,'',0,0,0,0,0,0,1454174848,768,0,1,0,31,27,0,0,1447913647,1,0,'Category',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1457701568,NULL,'',0,'','','',1,44,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(69,5,0,0,0,'',0,0,0,0,0,0,1448013234,384,0,1,0,31,27,0,0,1448013170,1,0,'Google Map',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454244214,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(70,22,0,0,0,'',0,0,0,0,0,0,1448013255,320,0,1,0,31,27,0,0,1448013249,1,0,'Maps',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(71,5,0,0,0,'',0,0,0,0,0,0,1453281779,640,0,1,0,31,27,0,0,1453273372,1,0,'Solr',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454245146,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__Content','',NULL,0,'','',0,0,0,NULL,NULL),(72,73,0,0,0,'',0,0,0,0,0,0,1453371401,256,0,1,0,31,27,0,0,1453370863,1,0,'Wrapper',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1453378998,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(73,47,0,0,0,'',0,0,0,0,0,0,1453371396,128,0,1,0,31,27,0,0,1453370949,1,0,'Content Elements',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1453371396,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(74,73,0,0,0,'',0,0,0,0,0,0,1453370967,128,0,1,0,31,27,0,0,1453370965,1,1,'Layout',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(75,1,0,0,0,'',0,0,0,0,0,0,1454244322,1108,0,1,0,31,27,0,0,1454175253,1,0,'Footer',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1454243328,NULL,'',0,'','','',1,0,0,0,'',0,0,'pagets__Empty','',NULL,0,'','',0,0,0,NULL,NULL),(76,1,0,0,0,'',0,0,0,0,0,0,1454925286,1000000000,1,1,0,31,27,0,0,1454925155,1,0,'Special pages',199,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,0,0,NULL,NULL),(77,1,0,0,0,'',0,0,0,0,0,0,1457707740,1136,0,1,0,31,27,0,0,1457707704,1,0,'Special pages',199,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'','',0,1,0,NULL,NULL),(78,77,0,0,0,'',0,0,0,0,0,0,1457707793,256,0,1,0,31,27,0,0,1457707774,1,0,'Page not found',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1457707857,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__Content','',NULL,0,'','404',0,0,0,NULL,NULL);
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
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `abstract` text COLLATE utf8_swedish_ci,
  `author` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_seo_titletag` tinytext COLLATE utf8_swedish_ci,
  `tx_seo_canonicaltag` tinytext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
INSERT INTO `pages_language_overlay` VALUES (1,1,1,0,0,0,'',0,0,0,0,0,1456493908,1456493908,1,1,'Hem',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,0,'','',''),(2,21,1,0,0,0,'',0,0,0,0,0,1456493922,1456493922,1,1,'Innehåll',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,0,'','','');
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_countries`
--

DROP TABLE IF EXISTS `static_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_countries` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `cn_iso_2` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_iso_3` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cn_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `cn_parent_tr_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cn_official_name_local` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_official_name_en` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_capital` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_tldomain` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_currency_uid` int(11) NOT NULL DEFAULT '0',
  `cn_currency_iso_3` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_currency_iso_nr` int(10) unsigned NOT NULL DEFAULT '0',
  `cn_phone` int(10) unsigned NOT NULL DEFAULT '0',
  `cn_eu_member` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_uno_member` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_address_format` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_zone_flag` tinyint(4) NOT NULL DEFAULT '0',
  `cn_short_local` varchar(70) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_short_en` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cn_country_zones` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_countries`
--

LOCK TABLES `static_countries` WRITE;
/*!40000 ALTER TABLE `static_countries` DISABLE KEYS */;
INSERT INTO `static_countries` VALUES (1,0,0,'AD','AND',20,10,39,'Principat d\'Andorra','Principality of Andorra','Andorra la Vella','ad',49,'EUR',978,376,0,1,1,0,'Andorra','Andorra',0),(2,0,0,'AE','ARE',784,9,145,'الإمارات العربيّة المتّحدة','United Arab Emirates','Abu Dhabi','ae',2,'AED',784,971,0,1,1,0,'الإمارات العربيّة المتّحدة','United Arab Emirates',0),(3,0,0,'AF','AFG',4,30,34,'د افغانستان اسلامي دولت','Islamic Republic of Afghanistan','Kabul','af',171,'AFN',971,93,0,1,2,0,'افغانستان','Afghanistan',0),(4,0,0,'AG','ATG',28,19,29,'Antigua and Barbuda','Antigua and Barbuda','St John\'s','ag',163,'XCD',951,1268,0,1,1,0,'Antigua and Barbuda','Antigua and Barbuda',0),(5,0,0,'AI','AIA',660,19,29,'Anguilla','Anguilla','The Valley','ai',163,'XCD',951,1264,0,0,1,0,'Anguilla','Anguilla',0),(6,0,0,'AL','ALB',8,10,39,'Republika e Shqipërisë','Republic of Albania','Tirana','al',4,'ALL',8,355,0,1,1,0,'Shqipëria','Albania',0),(7,0,0,'AM','ARM',51,9,145,'Հայաստանի Հանրապետություն','Republic of Armenia','Yerevan','am',5,'AMD',51,374,0,1,1,0,'Հայաստան','Armenia',0),(8,0,1,'AN','ANT',530,19,29,'Nederlandse Antillen','Netherlands Antilles','Willemstad','an',6,'ANG',532,599,0,0,1,0,'Nederlandse Antillen','Netherlands Antilles',0),(9,0,0,'AO','AGO',24,23,17,'República de Angola','Republic of Angola','Luanda','ao',7,'AOA',973,244,0,1,1,0,'Angola','Angola',0),(10,0,0,'AQ','ATA',10,0,0,'Antarctica','Antarctica','','aq',0,'',0,67212,0,0,1,0,'Antarctica','Antarctica',0),(11,0,0,'AR','ARG',32,16,5,'República Argentina','Argentine Republic','Buenos Aires','ar',8,'ARS',32,54,0,1,2,0,'Argentina','Argentina',0),(12,0,0,'AS','ASM',16,28,61,'Amerika Samoa','American Samoa','Pago Pago','as',155,'USD',840,685,0,0,1,0,'Amerika Samoa','American Samoa',0),(13,0,0,'AT','AUT',40,13,155,'Republik Österreich','Republic of Austria','Vienna','at',49,'EUR',978,43,1,1,1,0,'Österreich','Austria',9),(14,0,0,'AU','AUS',36,25,53,'Commonwealth of Australia','Commonwealth of Australia','Canberra','au',9,'AUD',36,61,0,1,3,0,'Australia','Australia',8),(15,0,0,'AW','ABW',533,19,29,'Aruba','Aruba','Oranjestad','aw',10,'AWG',533,297,0,0,0,0,'Aruba','Aruba',0),(16,0,0,'AZ','AZE',31,9,145,'Azərbaycan Respublikası','Republic of Azerbaijan','Baku','az',11,'AZN',944,994,0,1,1,0,'Azərbaycan','Azerbaijan',0),(17,0,0,'BA','BIH',70,10,39,'Bosna i Hercegovina / Босна и Херцеговина','Bosnia and Herzegovina','Sarajevo','ba',12,'BAM',977,387,0,1,0,0,'BiH/БиХ','Bosnia and Herzegovina',0),(18,0,0,'BB','BRB',52,19,29,'Barbados','Barbados','Bridgetown','bb',13,'BBD',52,1246,0,1,1,0,'Barbados','Barbados',0),(19,0,0,'BD','BGD',50,30,34,'গনপ্রজাতন্ত্রী বাংলা','People’s Republic of Bangladesh','Dhaka','bd',14,'BDT',50,880,0,1,1,0,'বাংলাদেশ','Bangladesh',0),(20,0,0,'BE','BEL',56,13,155,'Koninkrijk België / Royaume de Belgique','Kingdom of Belgium','Brussels','be',49,'EUR',978,32,1,1,1,0,'Belgique','Belgium',0),(21,0,0,'BF','BFA',854,20,11,'Burkina Faso','Burkina Faso','Ouagadougou','bf',164,'XOF',952,226,0,1,1,0,'Burkina','Burkina Faso',0),(22,0,0,'BG','BGR',100,11,151,'Република България','Republic of Bulgaria','Sofia','bg',16,'BGN',975,359,1,1,1,0,'Bulgaria','Bulgaria',0),(23,0,0,'BH','BHR',48,9,145,'مملكة البحرين','Kingdom of Bahrain','Manama','bh',17,'BHD',48,973,0,1,1,0,'البحري','Bahrain',0),(24,0,0,'BI','BDI',108,21,14,'Republika y\'u Burundi','Republic of Burundi','Bujumbura','bi',18,'BIF',108,257,0,1,1,0,'Burundi','Burundi',0),(25,0,0,'BJ','BEN',204,20,11,'République du Bénin','Republic of Benin','Porto Novo','bj',164,'XOF',952,229,0,1,1,0,'Bénin','Benin',0),(26,0,0,'BM','BMU',60,18,21,'Bermuda','Bermuda','Hamilton','bm',19,'BMD',60,1441,0,0,1,0,'Bermuda','Bermuda',0),(27,0,0,'BN','BRN',96,7,35,'برني دارالسلام','Sultanate of Brunei','Bandar Seri Begawan','bn',20,'BND',96,673,0,1,1,0,'دارالسلام','Brunei',0),(28,0,0,'BO','BOL',68,16,5,'Estado Plurinacional de Bolivia','Plurinational State of Bolivia','Sucre','bo',21,'BOB',68,591,0,1,1,0,'Bolivia','Bolivia',0),(29,0,0,'BR','BRA',76,16,5,'República Federativa do Brasil','Federative Republic of Brazil','Brasilia','br',23,'BRL',986,55,0,1,9,0,'Brasil','Brazil',27),(30,0,0,'BS','BHS',44,19,29,'Commonwealth of The Bahamas','Commonwealth of The Bahamas','Nassau','bs',24,'BSD',44,1242,0,1,1,0,'The Bahamas','The Bahamas',0),(31,0,0,'BT','BTN',64,30,34,'Druk-Yul','Kingdom of Bhutan','Thimphu','bt',25,'BTN',64,975,0,1,1,0,'Druk-Yul','Bhutan',0),(32,0,0,'BV','BVT',74,0,0,'Bouvet Island','Bouvet Island','','bv',111,'NOK',578,0,0,0,1,0,'Bouvetøya','Bouvet Island',0),(33,0,0,'BW','BWA',72,24,18,'Republic of Botswana','Republic of Botswana','Gaborone','bw',26,'BWP',72,267,0,1,1,0,'Botswana','Botswana',0),(34,0,0,'BY','BLR',112,11,151,'Рэспубліка Беларусь','Republic of Belarus','Minsk','by',27,'BYR',974,375,0,1,1,0,'Беларусь','Belarus',0),(35,0,0,'BZ','BLZ',84,17,13,'Belize','Belize','Belmopan','bz',28,'BZD',84,501,0,1,1,0,'Belize','Belize',0),(36,0,0,'CA','CAN',124,18,21,'Canada','Canada','Ottawa','ca',29,'CAD',124,1,0,1,4,0,'Canada','Canada',13),(37,0,0,'CC','CCK',166,25,53,'Territory of Cocos (Keeling) Islands','Territory of Cocos (Keeling) Islands','Bantam','cc',9,'AUD',36,6722,0,0,1,0,'Cocos (Keeling) Islands','Cocos (Keeling) Islands',0),(38,0,0,'CD','COD',180,23,17,'République Démocratique du Congo','Democratic Republic of the Congo','Kinshasa','cd',30,'CDF',976,243,0,1,0,0,'Congo','Congo',0),(39,0,0,'CF','CAF',140,23,17,'République centrafricaine','Central African Republic','Bangui','cf',162,'XAF',950,236,0,1,1,0,'République centrafricaine','Central African Republic',0),(40,0,0,'CG','COG',178,23,17,'République du Congo','Republic of the Congo','Brazzaville','cg',162,'XAF',950,242,0,1,1,0,'Congo-Brazzaville','Congo-Brazzaville',0),(41,0,0,'CH','CHE',756,13,155,'Confédération suisse / Schweizerische Eidgenossenschaft','Swiss Confederation','Berne','ch',31,'CHF',756,41,0,1,1,0,'Schweiz','Switzerland',26),(42,0,0,'CI','CIV',384,20,11,'République de Côte d’Ivoire','Republic of Côte d\'Ivoire','Yamoussoukro','ci',164,'XOF',952,225,0,1,2,0,'Côte d’Ivoire','Côte d’Ivoire',0),(43,0,0,'CK','COK',184,28,61,'Cook Islands','Cook Islands','Avarua','ck',113,'NZD',554,682,0,0,1,0,'Cook Islands','Cook Islands',0),(44,0,0,'CL','CHL',152,16,5,'República de Chile','Republic of Chile','Santiago','cl',33,'CLP',152,56,0,1,1,0,'Chile','Chile',0),(45,0,0,'CM','CMR',120,23,17,'Republic of Cameroon / République du Cameroun','Republic of Cameroon','Yaoundé','cm',162,'XAF',950,237,0,1,1,0,'Cameroun','Cameroon',0),(46,0,0,'CN','CHN',156,6,30,'中华人民共和国','People’s Republic of China','Beijing','cn',34,'CNY',156,86,0,1,1,0,'中华','China',0),(47,0,0,'CO','COL',170,16,5,'República de Colombia','Republic of Colombia','Bogotá','co',35,'COP',170,57,0,1,1,0,'Colombia','Colombia',0),(48,0,0,'CR','CRI',188,17,13,'República de Costa Rica','Republic of Costa Rica','San José','cr',36,'CRC',188,506,0,1,1,0,'Costa Rica','Costa Rica',0),(49,0,0,'CU','CUB',192,19,29,'República de Cuba','Republic of Cuba','Havana','cu',37,'CUP',192,53,0,1,1,0,'Cuba','Cuba',0),(50,0,0,'CV','CPV',132,20,11,'República de Cabo Verde','Republic of Cape Verde','Praia','cv',38,'CVE',132,238,0,1,1,0,'Cabo Verde','Cape Verde',0),(51,0,0,'CX','CXR',162,0,0,'Territory of Christmas Island','Territory of Christmas Island','Flying Fish Cove','cx',9,'AUD',36,6724,0,0,1,0,'Christmas Island','Christmas Island',0),(52,0,0,'CY','CYP',196,9,145,'Κυπριακή Δημοκρατία / Kıbrıs Cumhuriyeti','Republic of Cyprus','Nicosia','cy',49,'EUR',978,357,1,1,1,0,'Κύπρος / Kıbrıs','Cyprus',0),(53,0,0,'CZ','CZE',203,11,151,'Česká republika','Czech Republic','Prague','cz',40,'CZK',203,420,1,1,1,0,'Česko','Czech Republic',0),(54,0,0,'DE','DEU',276,13,155,'Bundesrepublik Deutschland','Federal Republic of Germany','Berlin','de',49,'EUR',978,49,1,1,1,0,'Deutschland','Germany',16),(55,0,0,'DJ','DJI',262,21,14,'جمهورية جيبوتي / République de Djibouti','Republic of Djibouti','Djibouti','dj',41,'DJF',262,253,0,1,1,0,'جيبوتي /Djibouti','Djibouti',0),(56,0,0,'DK','DNK',208,12,154,'Kongeriget Danmark','Kingdom of Denmark','Copenhagen','dk',42,'DKK',208,45,1,1,1,0,'Danmark','Denmark',0),(57,0,0,'DM','DMA',212,19,29,'Commonwealth of Dominica','Commonwealth of Dominica','Roseau','dm',163,'XCD',951,1767,0,1,1,0,'Dominica','Dominica',0),(58,0,0,'DO','DOM',214,19,29,'República Dominicana','Dominican Republic','Santo Domingo','do',43,'DOP',214,1809,0,1,1,0,'Quisqueya','Dominican Republic',0),(59,0,0,'DZ','DZA',12,22,15,'الجمهورية الجزائرية الديمقراطية','People’s Democratic Republic of Algeria','Algiers','dz',44,'DZD',12,213,0,1,1,0,'الجزائ','Algeria',0),(60,0,0,'EC','ECU',218,16,5,'República del Ecuador','Republic of Ecuador','Quito','ec',155,'USD',840,593,0,1,1,0,'Ecuador','Ecuador',0),(61,0,0,'EE','EST',233,12,154,'Eesti Vabariik','Republic of Estonia','Tallinn','ee',45,'EEK',233,372,1,1,1,0,'Eesti','Estonia',0),(62,0,0,'EG','EGY',818,22,15,'جمهوريّة مصر العربيّة','Arab Republic of Egypt','Cairo','eg',46,'EGP',818,20,0,1,1,0,'مصر','Egypt',0),(63,0,0,'EH','ESH',732,22,15,'الصحراء الغربية','Western Sahara','El Aaiún','eh',92,'MAD',504,212,0,0,1,0,'الصحراء الغربي','Western Sahara',0),(64,0,0,'ER','ERI',232,21,14,'ሃግሬ ኤርትራ','State of Eritrea','Asmara','er',47,'ERN',232,291,0,1,1,0,'ኤርትራ','Eritrea',0),(65,0,0,'ES','ESP',724,10,39,'Reino de España','Kingdom of Spain','Madrid','es',49,'EUR',978,34,1,1,8,0,'España','Spain',52),(66,0,0,'ET','ETH',231,21,14,'የኢትዮጵያ ፌዴራላዊ','Federal Democratic Republic of Ethiopia','Addis Ababa','et',48,'ETB',230,251,0,1,1,0,'ኢትዮጵያ','Ethiopia',0),(67,0,0,'FI','FIN',246,12,154,'Suomen Tasavalta / Republiken Finland','Republic of Finland','Helsinki','fi',49,'EUR',978,358,1,1,1,0,'Suomi','Finland',0),(68,0,0,'FJ','FJI',242,26,54,'Republic of Fiji / Matanitu Tu-Vaka-i-koya ko Vi','Republic of Fiji','Suva','fj',50,'FJD',242,679,0,1,1,0,'Fiji / Viti','Fiji',0),(69,0,0,'FK','FLK',238,16,5,'Falkland Islands','Falkland Islands','Stanley','fk',51,'FKP',238,500,0,0,1,0,'Falkland Islands','Falkland Islands',0),(70,0,0,'FM','FSM',583,27,57,'Federated States of Micronesia','Federated States of Micronesia','Palikir','fm',155,'USD',840,691,0,1,1,0,'Micronesia','Micronesia',0),(71,0,0,'FO','FRO',234,12,154,'Føroyar / Færøerne','Faroe Islands','Thorshavn','fo',42,'DKK',208,298,0,0,1,0,'Føroyar / Færøerne','Faroes',0),(72,0,0,'FR','FRA',250,13,155,'République française','French Republic','Paris','fr',49,'EUR',978,33,1,1,1,0,'France','France',131),(73,0,0,'GA','GAB',266,23,17,'République Gabonaise','Gabonese Republic','Libreville','ga',162,'XAF',950,241,0,1,1,0,'Gabon','Gabon',0),(74,0,0,'GB','GBR',826,12,154,'United Kingdom of Great Britain and Northern','United Kingdom of Great Britain and Northern','London','uk',52,'GBP',826,44,1,1,5,0,'United Kingdom','United Kingdom',105),(75,0,0,'GD','GRD',308,19,29,'Grenada','Grenada','St George\'s','gd',163,'XCD',951,1473,0,1,1,0,'Grenada','Grenada',0),(76,0,0,'GE','GEO',268,9,145,'საქართველო','Georgia','Tbilisi','ge',53,'GEL',981,995,0,1,1,0,'საქართველო','Georgia',0),(77,0,0,'GF','GUF',254,16,5,'Guyane française','French Guiana','Cayenne','gf',49,'EUR',978,594,0,0,1,0,'Guyane française','French Guiana',0),(78,0,0,'GH','GHA',288,20,11,'Republic of Ghana','Republic of Ghana','Accra','gh',177,'GHS',936,233,0,1,1,0,'Ghana','Ghana',0),(79,0,0,'GI','GIB',292,10,39,'Gibraltar','Gibraltar','Gibraltar','gi',55,'GIP',292,350,0,0,1,0,'Gibraltar','Gibraltar',0),(80,0,0,'GL','GRL',304,18,21,'Kalaallit Nunaat / Grønland','Greenland','Nuuk','gl',42,'DKK',208,299,0,0,1,0,'Grønland','Greenland',0),(81,0,0,'GM','GMB',270,20,11,'Republic of The Gambia','Republic of The Gambia','Banjul','gm',56,'GMD',270,220,0,1,1,0,'Gambia','Gambia',0),(82,0,0,'GN','GIN',324,20,11,'République de Guinée','Republic of Guinea','Conakry','gn',57,'GNF',324,224,0,1,1,0,'Guinée','Guinea',0),(83,0,0,'GP','GLP',312,19,29,'Département de la Guadeloupe','Department of Guadeloupe','Basse Terre','gp',49,'EUR',978,590,0,0,1,0,'Guadeloupe','Guadeloupe',0),(84,0,0,'GQ','GNQ',226,23,17,'República de Guinea Ecuatorial','Republic of Equatorial Guinea','Malabo','gq',162,'XAF',950,240,0,1,1,0,'Guinea Ecuatorial','Equatorial Guinea',0),(85,0,0,'GR','GRC',300,10,39,'Ελληνική Δημοκρατία','Hellenic Republic','Athens','gr',49,'EUR',978,30,1,1,1,0,'Ελλάδα','Greece',0),(86,0,0,'GS','SGS',239,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','','gs',52,'GBP',826,0,0,0,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands',0),(87,0,0,'GT','GTM',320,17,13,'República de Guatemala','Republic of Guatemala','Guatemala City','gt',58,'GTQ',320,502,0,1,1,0,'Guatemala','Guatemala',0),(88,0,0,'GU','GUM',316,27,57,'The Territory of Guam / Guåhån','The Territory of Guam','Hagåtña','gu',155,'USD',840,671,0,0,1,0,'Guåhån','Guam',0),(89,0,0,'GW','GNB',624,20,11,'República da Guiné-Bissau','Republic of Guinea-Bissau','Bissau','gw',164,'XOF',952,245,0,1,1,0,'Guiné-Bissau','Guinea-Bissau',0),(90,0,0,'GY','GUY',328,16,5,'Co-operative Republic of Guyana','Co-operative Republic of Guyana','Georgetown','gy',60,'GYD',328,592,0,1,1,0,'Guyana','Guyana',0),(91,0,0,'HK','HKG',344,6,30,'香港特別行政區','Hong Kong SAR of the People’s Republic of China','','hk',61,'HKD',344,852,0,0,1,0,'香港','Hong Kong SAR of China',0),(92,0,0,'HN','HND',340,17,13,'República de Honduras','Republic of Honduras','Tegucigalpa','hn',62,'HNL',340,504,0,1,1,0,'Honduras','Honduras',0),(93,0,0,'HR','HRV',191,10,39,'Republika Hrvatska','Republic of Croatia','Zagreb','hr',63,'HRK',191,385,0,1,1,0,'Hrvatska','Croatia',21),(94,0,0,'HT','HTI',332,19,29,'Repiblik d Ayiti / République d\'Haïti','Republic of Haiti','Port-au-Prince','ht',64,'HTG',332,509,0,1,1,0,'Ayiti','Haiti',0),(95,0,0,'HU','HUN',348,11,151,'Magyar Köztársaság','Hungary','Budapest','hu',65,'HUF',348,36,1,1,1,0,'Magyarország','Hungary',0),(96,0,0,'ID','IDN',360,7,35,'Republik Indonesia','Republic of Indonesia','Jakarta','id',66,'IDR',360,62,0,1,2,0,'Indonesia','Indonesia',0),(97,0,0,'IE','IRL',372,12,154,'Poblacht na hÉireann / Republic of Ireland','Republic of Ireland','Dublin','ie',49,'EUR',978,353,1,1,1,0,'Éire','Ireland',26),(98,0,0,'IL','ISR',376,9,145,'دولة إسرائيل / מדינת ישראלل','State of Israel','Tel Aviv','il',67,'ILS',376,972,0,1,2,0,'ישראל','Israel',0),(99,0,0,'IN','IND',356,30,34,'Bharat; Republic of India','Republic of India','New Delhi','in',68,'INR',356,91,0,1,2,0,'India','India',0),(100,0,0,'IO','IOT',86,30,34,'British Indian Ocean Territory','British Indian Ocean Territory','','io',52,'GBP',826,0,0,0,1,0,'British Indian Ocean Territory','British Indian Ocean Territory',0),(101,0,0,'IQ','IRQ',368,9,145,'الجمهورية العراقية','Republic of Iraq','Baghdad','iq',69,'IQD',368,964,0,1,1,0,'العراق / عيَراق','Iraq',0),(102,0,0,'IR','IRN',364,30,34,'جمهوری اسلامی ايران','Islamic Republic of Iran','Tehran','ir',70,'IRR',364,98,0,1,1,0,'ايران','Iran',0),(103,0,0,'IS','ISL',352,12,154,'Lýðveldið Ísland','Republic of Iceland','Reykjavík','is',71,'ISK',352,354,0,1,1,0,'Ísland','Iceland',0),(104,0,0,'IT','ITA',380,10,39,'Repubblica Italiana','Italian Republic','Rome','it',49,'EUR',978,39,1,1,7,0,'Italia','Italy',110),(105,0,0,'JM','JAM',388,19,29,'Commonwealth of Jamaica','Commonwealth of Jamaica','Kingston','jm',72,'JMD',388,1876,0,1,2,0,'Jamaica','Jamaica',0),(106,0,0,'JO','JOR',400,9,145,'المملكة الأردنية الهاشمية','Hashemite Kingdom of Jordan','Amman','jo',73,'JOD',400,962,0,1,1,0,'أردنّ','Jordan',0),(107,0,0,'JP','JPN',392,6,30,'日本国','Japan','Tokyo','jp',74,'JPY',392,81,0,1,2,0,'日本','Japan',0),(108,0,0,'KE','KEN',404,21,14,'Jamhuri va Kenya','Republic of Kenia','Nairobi','ke',75,'KES',404,254,0,1,1,0,'Kenya','Kenya',0),(109,0,0,'KG','KGZ',417,8,143,'Кыргызстан','Kyrgyzstan','Bishkek','kg',76,'KGS',417,996,0,1,1,0,'Кыргызстан','Kyrgyzstan',0),(110,0,0,'KH','KHM',116,7,35,'Preăh Réachéanachâkr Kâmpŭchea','Kingdom of Cambodia','Phnom Penh','kh',77,'KHR',116,855,0,1,1,0,'Kâmpŭchea','Cambodia',0),(111,0,0,'KI','KIR',296,27,57,'Republic of Kiribati','Republic of Kiribati','Bairiki','ki',9,'AUD',36,686,0,1,0,0,'Kiribati','Kiribati',0),(112,0,0,'KM','COM',174,21,14,'Udzima wa Komori /Union des Comores /اتحاد القمر','Union of the Comoros','Moroni','km',78,'KMF',174,269,0,1,1,0,'اتحاد القمر','Comoros',0),(113,0,0,'KN','KNA',659,19,29,'Federation of Saint Kitts and Nevis','Federation of Saint Kitts and Nevis','Basseterre','kn',163,'XCD',951,1869,0,1,1,0,'Saint Kitts and Nevis','Saint Kitts and Nevis',0),(114,0,0,'KP','PRK',408,6,30,'조선민주주의인민화국','Democratic People’s Republic of Korea','Pyongyang','kp',79,'KPW',408,850,0,1,0,0,'북조선','North Korea',0),(115,0,0,'KR','KOR',410,6,30,'대한민국','Republic of Korea','Seoul','kr',80,'KRW',410,82,0,1,1,0,'한국','South Korea',0),(116,0,0,'KW','KWT',414,9,145,'دولة الكويت','State of Kuweit','Kuwait City','kw',81,'KWD',414,965,0,1,1,0,'الكويت','Kuwait',0),(117,0,0,'KY','CYM',136,19,29,'Cayman Islands','Cayman Islands','George Town','ky',82,'KYD',136,1345,0,0,1,0,'Cayman Islands','Cayman Islands',0),(118,0,0,'KZ','KAZ',398,8,143,'Қазақстан Республикасы /Республика Казахстан','Republic of Kazakhstan','Astana','kz',83,'KZT',398,7,0,1,1,0,'Қазақстан /Казахстан','Kazakhstan',0),(119,0,0,'LA','LAO',418,7,35,'ສາທາລະນະລັດປະຊາທິປະໄຕປະຊາຊົນລາວ','Lao People’s Democratic Republic','Vientiane','la',84,'LAK',418,856,0,1,1,0,'ເມືອງລາວ','Laos',0),(120,0,0,'LB','LBN',422,9,145,'الجمهوريّة اللبنانيّة','Republic of Lebanon','Beirut','lb',85,'LBP',422,961,0,1,1,0,'لبنان','Lebanon',0),(121,0,0,'LC','LCA',662,19,29,'Saint Lucia','Saint Lucia','Castries','lc',163,'XCD',951,1758,0,1,1,0,'Saint Lucia','Saint Lucia',0),(122,0,0,'LI','LIE',438,13,155,'Fürstentum Liechtenstein','Principality of Liechtenstein','Vaduz','li',31,'CHF',756,423,0,1,1,0,'Liechtenstein','Liechtenstein',0),(123,0,0,'LK','LKA',144,30,34,'ශ්‍රී ලංකා / இலங்கை சனநாயக சோஷலிசக் குடியரசு','Democratic Socialist Republic of Sri Lanka','Colombo','lk',86,'LKR',144,94,0,1,2,0,'ශ්‍රී ලංකා / இலங்கை','Sri Lanka',0),(124,0,0,'LR','LBR',430,20,11,'Republic of Liberia','Republic of Liberia','Monrovia','lr',87,'LRD',430,231,0,1,1,0,'Liberia','Liberia',0),(125,0,0,'LS','LSO',426,24,18,'Muso oa Lesotho / Kingdom of Lesotho','Kingdon of Lesotho','Maseru','ls',88,'LSL',426,266,0,1,1,0,'Lesotho','Lesotho',0),(126,0,0,'LT','LTU',440,12,154,'Lietuvos Respublika','Republic of Lithuania','Vilnius','lt',89,'LTL',440,370,1,1,1,0,'Lietuva','Lithuania',0),(127,0,0,'LU','LUX',442,13,155,'Grand-Duché de Luxembourg / Großherzogtum Luxemburg / Groussherzogtum Lëtzebuerg','Grand Duchy of Luxembourg','Luxembourg','lu',49,'EUR',978,352,1,1,1,0,'Luxemburg','Luxembourg',0),(128,0,0,'LV','LVA',428,12,154,'Latvijas Republika','Republic of Latvia','Riga','lv',90,'LVL',428,371,1,1,1,0,'Latvija','Latvia',0),(129,0,0,'LY','LBY',434,22,15,'‏ليبيا‎','Libya','Tripoli','ly',91,'LYD',434,218,0,1,1,0,'‏ليبيا‎','Libya',0),(130,0,0,'MA','MAR',504,22,15,'المملكة المغربية','Kingdom of Morocco','Rabat','ma',92,'MAD',504,212,0,1,1,0,'المغربية','Morocco',0),(131,0,0,'MC','MCO',492,13,155,'Principauté de Monaco / Principatu de Munegu','Principality of Monaco','Monaco','mc',49,'EUR',978,377,0,1,1,0,'Monaco','Monaco',0),(132,0,0,'MD','MDA',498,11,151,'Republica Moldova','Republic of Moldova','Chisinau','md',93,'MDL',498,373,0,1,1,0,'Moldova','Moldova',0),(133,0,0,'MG','MDG',450,21,14,'Repoblikan\'i Madagasikara / République de Madagascar','Republic of Madagascar','Antananarivo','mg',173,'MGA',969,261,0,1,1,0,'Madagascar','Madagascar',0),(134,0,0,'MH','MHL',584,27,57,'Aolepān Aorōkin M̧ajeļ / Republic of the Marshall Islands','Republic of the Marshall Islands','Dalap-Uliga-Darrit (DUD)','mh',155,'USD',840,692,0,1,1,0,'Marshall Islands','Marshall Islands',0),(135,0,0,'MK','MKD',807,10,39,'Република Македонија','Republic of Macedonia','Skopje','mk',95,'MKD',807,389,0,1,1,0,'Македонија','Macedonia',0),(136,0,0,'ML','MLI',466,20,11,'République du Mali','Republik Mali','Bamako','ml',164,'XOF',952,223,0,1,1,0,'Mali','Mali',0),(137,0,0,'MM','MMR',104,7,35,'Pyidaungzu Myanma Naingngandaw','Republic of the Union of Myanmar','Yangon','mm',96,'MMK',104,95,0,1,1,0,'Myanmar','Myanmar',0),(138,0,0,'MN','MNG',496,6,30,'Монгол Улс','Mongolia','Ulan Bator','mn',97,'MNT',496,976,0,1,1,0,'Монгол Улс','Mongolia',0),(139,0,0,'MO','MAC',446,6,30,'中華人民共和國澳門特別行政區 / Região Administrativa Especial de Macau da República Popular da China','Macao SAR of the People’s Republic of China','Macau','mo',98,'MOP',446,853,0,0,1,0,'澳門 / Macau','Macao SAR of China',0),(140,0,0,'MP','MNP',580,27,57,'Commonwealth of the Northern Mariana Islands','Commonwealth of the Northern Mariana Islands','Garapan','mp',155,'USD',840,1670,0,0,0,0,'Northern Marianas','Northern Marianas',0),(141,0,0,'MQ','MTQ',474,19,29,'Département de la Martinique','Department of Martinique','Fort-de-France','mq',49,'EUR',978,596,0,0,1,0,'Martinique','Martinique',0),(142,0,0,'MR','MRT',478,20,11,'الجمهورية الإسلامية الموريتانية','Islamic Republic of Mauritania','Nouakchott','mr',99,'MRO',478,222,0,1,1,0,'الموريتانية','Mauritania',0),(143,0,0,'MS','MSR',500,19,29,'Montserrat','Montserrat','Plymouth','ms',163,'XCD',951,1664,0,0,1,0,'Montserrat','Montserrat',0),(144,0,0,'MT','MLT',470,10,39,'Repubblika ta\' Malta / Republic of Malta','Republic of Malta','Valletta','mt',49,'EUR',978,356,1,1,1,0,'Malta','Malta',0),(145,0,0,'MU','MUS',480,21,14,'Republic of Mauritius','Republic of Mauritius','Port Louis','mu',101,'MUR',480,230,0,1,1,0,'Mauritius','Mauritius',0),(146,0,0,'MV','MDV',462,30,34,'ދިވެހިރާއްޖޭގެ ޖުމުހޫރިއްޔާ','Republic of Maldives','Malé','mv',102,'MVR',462,960,0,1,1,0,'ޖުމުހޫރިއްޔ','Maldives',0),(147,0,0,'MW','MWI',454,21,14,'Republic of Malawi / Dziko la Malaŵi','Republic of Malawi','Lilongwe','mw',103,'MWK',454,265,0,1,1,0,'Malawi','Malawi',0),(148,0,0,'MX','MEX',484,17,13,'Estados Unidos Mexicanos','United Mexican States','Mexico City','mx',104,'MXN',484,52,0,1,6,0,'México','Mexico',32),(149,0,0,'MY','MYS',458,7,35,'ڤرسكوتوان مليسيا','Malaysia','Kuala Lumpur','my',106,'MYR',458,60,0,1,1,0,'مليسيا','Malaysia',0),(150,0,0,'MZ','MOZ',508,21,14,'República de Moçambique','Republic of Mozambique','Maputo','mz',178,'MZN',943,258,0,1,1,0,'Moçambique','Mozambique',0),(151,0,0,'NA','NAM',516,24,18,'Republic of Namibia','Republic of Namibia','Windhoek','na',108,'NAD',516,264,0,1,1,0,'Namibia','Namibia',0),(152,0,0,'NC','NCL',540,26,54,'Territoire de Nouvelle-Caledonie et Dépendances','Territory of New Caledonia','Nouméa','nc',165,'XPF',953,687,0,0,1,0,'Nouvelle-Calédonie','New Caledonia',0),(153,0,0,'NE','NER',562,20,11,'République du Niger','Republic of Niger','Niamey','ne',164,'XOF',952,227,0,1,1,0,'Niger','Niger',0),(154,0,0,'NF','NFK',574,25,53,'Territory of Norfolk Island','Territory of Norfolk Island','Kingston','nf',9,'AUD',36,6723,0,0,1,0,'Norfolk Island','Norfolk Island',0),(155,0,0,'NG','NGA',566,20,11,'Federal Republic of Nigeria','Federal Republic of Nigeria','Abuja','ng',109,'NGN',566,234,0,1,1,0,'Nigeria','Nigeria',0),(156,0,0,'NI','NIC',558,17,13,'República de Nicaragua','Republic of Nicaragua','Managua','ni',110,'NIO',558,505,0,1,1,0,'Nicaragua','Nicaragua',0),(157,0,0,'NL','NLD',528,13,155,'Koninkrijk der Nederlanden','Kingdom of the Netherlands','Amsterdam','nl',49,'EUR',978,31,1,1,1,0,'Nederland','Netherlands',12),(158,0,0,'NO','NOR',578,12,154,'Kongeriket Norge','Kingdom of Norway','Oslo','no',111,'NOK',578,47,0,1,1,0,'Norge','Norway',0),(159,0,0,'NP','NPL',524,30,34,'सङ्घीय लोकतान्त्रिक गणतन्त्र नेपाल','Federal Democratic Republic of Nepal','Kathmandu','np',112,'NPR',524,977,0,1,1,0,'नेपाल','Nepal',0),(160,0,0,'NR','NRU',520,27,57,'Ripublik Naoero','Republic of Nauru','Yaren','nr',9,'AUD',36,674,0,1,1,0,'Naoero','Nauru',0),(161,0,0,'NU','NIU',570,28,61,'Niue','Niue','Alofi','nu',113,'NZD',554,683,0,0,1,0,'Niue','Niue',0),(162,0,0,'NZ','NZL',554,25,53,'New Zealand / Aotearoa','New Zealand','Wellington','nz',113,'NZD',554,64,0,1,2,0,'New Zealand / Aotearoa','New Zealand',0),(163,0,0,'OM','OMN',512,9,145,'سلطنة عُمان','Sultanate of Oman','Muscat','om',114,'OMR',512,968,0,1,1,0,'عُمان','Oman',0),(164,0,0,'PA','PAN',591,17,13,'República de Panamá','Repulic of Panama','Panama City','pa',115,'PAB',590,507,0,1,2,0,'Panamá','Panama',0),(165,0,0,'PE','PER',604,16,5,'República del Perú','Republic of Peru','Lima','pe',116,'PEN',604,51,0,1,2,0,'Perú','Peru',0),(166,0,0,'PF','PYF',258,28,61,'Polynésie française','French Polynesia','Papeete','pf',165,'XPF',953,689,0,0,1,0,'Polynésie française','French Polynesia',0),(167,0,0,'PG','PNG',598,26,54,'Independent State of Papua New Guinea / Papua Niugini','Independent State of Papua New Guinea','Port Moresby','pg',117,'PGK',598,675,0,1,1,0,'Papua New Guinea  / Papua Niugini','Papua New Guinea',0),(168,0,0,'PH','PHL',608,7,35,'Republika ng Pilipinas / Republic of the Philippines','Republic of the Philippines','Manila','ph',118,'PHP',608,63,0,1,2,0,'Philippines','Philippines',0),(169,0,0,'PK','PAK',586,30,34,'Islamic Republic of Pakistan / اسلامی جمہوریۂ پاکستان','Islamic Republic of Pakistan','Islamabad','pk',119,'PKR',586,92,0,1,1,0,'پاکستان','Pakistan',0),(170,0,0,'PL','POL',616,11,151,'Rzeczpospolita Polska','Republic of Poland','Warsaw','pl',120,'PLN',985,48,1,1,1,0,'Polska','Poland',16),(171,0,0,'PM','SPM',666,18,21,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon','Saint-Pierre','pm',49,'EUR',978,508,0,0,1,0,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',0),(172,0,0,'PN','PCN',612,28,61,'Pitcairn Islands','Pitcairn Islands','Adamstown','pn',113,'NZD',554,0,0,0,1,0,'Pitcairn Islands','Pitcairn Islands',0),(173,0,0,'PR','PRI',630,19,29,'Estado Libre Asociado de Puerto Rico / Commonwealth of Puerto Rico','Commonwealth of Puerto Rico','San Juan','pr',155,'USD',840,1787,0,0,2,0,'Puerto Rico','Puerto Rico',0),(174,0,0,'PT','PRT',620,10,39,'República Portuguesa','Portuguese Republic','Lisbon','pt',49,'EUR',978,351,1,1,1,0,'Portugal','Portugal',0),(175,0,0,'PW','PLW',585,27,57,'Belu\'u era Belau / Republic of Palau','Republic of Palau','Koror','pw',155,'USD',840,680,0,1,1,0,'Belau / Palau','Palau',0),(176,0,0,'PY','PRY',600,16,5,'República del Paraguay / Tetä Paraguáype','Republic of Paraguay','Asunción','py',121,'PYG',600,595,0,1,1,0,'Paraguay','Paraguay',0),(177,0,0,'QA','QAT',634,9,145,'دولة قطر','State of Qatar','Doha','qa',122,'QAR',634,974,0,1,1,0,'قطر','Qatar',0),(178,0,0,'RE','REU',638,21,14,'Département de la Réunion','Department of Réunion','Saint-Denis','re',49,'EUR',978,262,0,0,1,0,'Réunion','Reunion',0),(179,0,0,'RO','ROU',642,11,151,'România','Romania','Bucharest','ro',179,'RON',946,40,1,1,1,0,'România','Romania',0),(180,0,0,'RU','RUS',643,11,151,'Российская Федерация','Russian Federation','Moscow','ru',124,'RUB',643,7,0,1,1,0,'Росси́я','Russia',0),(181,0,0,'RW','RWA',646,21,14,'Repubulika y\'u Rwanda / République Rwandaise','Republic of Rwanda','Kigali','rw',126,'RWF',646,250,0,1,1,0,'Rwanda','Rwanda',0),(182,0,0,'SA','SAU',682,9,145,'المملكة العربية السعودية','Kingdom of Saudi Arabia','Riyadh','sa',127,'SAR',682,966,0,1,2,0,'السعودية','Saudi Arabia',0),(183,0,0,'SB','SLB',90,26,54,'Solomon Islands','Solomon Islands','Honiara','sb',128,'SBD',90,677,0,1,1,0,'Solomon Islands','Solomon Islands',0),(184,0,0,'SC','SYC',690,21,14,'Repiblik Sesel / Republic of Seychelles / République des Seychelles','Republic of Seychelles','Victoria','sc',129,'SCR',690,248,0,1,1,0,'Seychelles','Seychelles',0),(185,0,0,'SD','SDN',729,22,15,'جمهورية السودان','Republic of the Sudan','Khartoum','sd',130,'SDG',938,249,0,1,1,0,'السودان','Sudan',0),(186,0,0,'SE','SWE',752,12,154,'Konungariket Sverige','Kingdom of Sweden','Stockholm','se',131,'SEK',752,46,1,1,1,0,'Sverige','Sweden',0),(187,0,0,'SG','SGP',702,7,35,'Republic of Singapore / 新加坡共和国 / Republik Singapura / சிங்கப்பூர் குடியரசு','Republic of Singapore','Singapore','sg',132,'SGD',702,65,0,1,2,0,'Singapore','Singapore',0),(188,0,0,'SH','SHN',654,20,11,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha','Jamestown','sh',133,'SHP',654,290,0,0,1,0,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha',0),(189,0,0,'SI','SVN',705,10,39,'Republika Slovenija','Republic of Slovenia','Ljubljana','si',49,'EUR',978,386,1,1,1,0,'Slovenija','Slovenia',0),(190,0,0,'SJ','SJM',744,12,154,'Svalbard','Svalbard','Longyearbyen','sj',111,'NOK',578,47,0,0,1,0,'Svalbard','Svalbard',0),(191,0,0,'SK','SVK',703,11,151,'Slovenská republika','Slovak Republic','Bratislava','sk',49,'EUR',978,421,1,1,1,0,'Slovensko','Slovakia',0),(192,0,0,'SL','SLE',694,20,11,'Republic of Sierra Leone','Republic of Sierra Leone','Freetown','sl',136,'SLL',694,232,0,1,1,0,'Sierra Leone','Sierra Leone',0),(193,0,0,'SM','SMR',674,10,39,'Serenissima Repubblica di San Marino','Most Serene Republic of San Marino','San Marino','sm',49,'EUR',978,378,0,1,1,0,'San Marino','San Marino',0),(194,0,0,'SN','SEN',686,20,11,'République de Sénégal','Republic of Senegal','Dakar','sn',164,'XOF',952,221,0,1,1,0,'Sénégal','Senegal',0),(195,0,0,'SO','SOM',706,21,14,'Soomaaliya','Federal Republic of Somalia','Mogadishu','so',137,'SOS',706,252,0,1,1,0,'Soomaaliya','Somalia',0),(196,0,0,'SR','SUR',740,16,5,'Republiek Suriname','Republic of Surinam','Paramaribo','sr',174,'SRD',968,597,0,1,1,0,'Suriname','Suriname',0),(197,0,0,'ST','STP',678,23,17,'República Democrática de São Tomé e Príncipe','Democratic Republic of São Tomé e Príncipe','São Tomé','st',139,'STD',678,239,0,1,1,0,'São Tomé e Príncipe','São Tomé e Príncipe',0),(198,0,0,'SV','SLV',222,17,13,'República de El Salvador','Republic of El Salvador','San Salvador','sv',140,'SVC',222,503,0,1,1,0,'El Salvador','El Salvador',0),(199,0,0,'SY','SYR',760,9,145,'الجمهوريّة العربيّة السّوريّة','Syrian Arab Republic','Damascus','sy',141,'SYP',760,963,0,1,1,0,'سوري','Syria',0),(200,0,0,'SZ','SWZ',748,24,18,'Umboso weSwatini / Kingdom of Swaziland','Kingdom of Swaziland','Mbabane','sz',142,'SZL',748,268,0,1,1,0,'weSwatini','Swaziland',0),(201,0,0,'TC','TCA',796,19,29,'Turks and Caicos Islands','Turks and Caicos Islands','Cockburn Town','tc',155,'USD',840,1649,0,0,1,0,'Turks and Caicos Islands','Turks and Caicos Islands',0),(202,0,0,'TD','TCD',148,23,17,'جمهورية تشاد / République du Tchad','Republic of Chad','N\'Djamena','td',162,'XAF',950,235,0,1,1,0,'تشاد / Tchad','Chad',0),(203,0,0,'TF','ATF',260,0,0,'Terres australes françaises','French Southern Territories','','tf',49,'EUR',978,0,0,0,0,0,'Terres australes françaises','French Southern Territories',0),(204,0,0,'TG','TGO',768,20,11,'République Togolaise','Republic of Togo','Lomé','tg',164,'XOF',952,228,0,1,1,0,'Togo','Togo',0),(205,0,0,'TH','THA',764,7,35,'ราชอาณาจักรไทย','Kingdom of Thailand','Bangkok','th',143,'THB',764,66,0,1,2,0,'ไทย','Thailand',0),(206,0,0,'TJ','TJK',762,8,143,'Ҷумҳурии Тоҷикистон','Republic of Tajikistan','Dushanbe','tj',144,'TJS',972,992,0,1,1,0,'Тоҷикистон','Tajikistan',0),(207,0,0,'TK','TKL',772,28,61,'Tokelau','Tokelau','Fakaofo','tk',113,'NZD',554,0,0,0,1,0,'Tokelau','Tokelau',0),(208,0,0,'TM','TKM',795,8,143,'Türkmenistan Jumhuriyäti','Republic of Turkmenistan','Ashgabat','tm',180,'TMT',934,993,0,1,1,0,'Türkmenistan','Turkmenistan',0),(209,0,0,'TN','TUN',788,22,15,'الجمهورية التونسية','Republic of Tunisia','Tunis','tn',146,'TND',788,216,0,1,1,0,'التونسية','Tunisia',0),(210,0,0,'TO','TON',776,28,61,'Pule\'anga Fakatu\'i \'o Tonga / Kingdom of Tonga','Kingdom of Tonga','Nuku\'alofa','to',147,'TOP',776,676,0,1,1,0,'Tonga','Tonga',0),(211,0,0,'TL','TLS',626,7,35,'Repúblika Demokrátika Timor Lorosa\'e / República Democrática de Timor-Leste','Democratic Republic of Timor-Leste','Dili','tp',155,'USD',840,670,0,1,1,0,'Timor Lorosa\'e','Timor-Leste',0),(212,0,0,'TR','TUR',792,9,145,'Türkiye Cumhuriyeti','Republic of Turkey','Ankara','tr',175,'TRY',949,90,0,1,1,0,'Türkiye','Turkey',0),(213,0,0,'TT','TTO',780,19,29,'Republic of Trinidad and Tobago','Republic of Trinidad and Tobago','Port of Spain','tt',150,'TTD',780,1868,0,1,1,0,'Trinidad and Tobago','Trinidad and Tobago',0),(214,0,0,'TV','TUV',798,28,61,'Tuvalu','Tuvalu','Fongafale','tv',9,'AUD',36,688,0,1,1,0,'Tuvalu','Tuvalu',0),(215,0,0,'TW','TWN',158,6,30,'中華民國','Republic of China','Taipei','tw',151,'TWD',901,886,0,0,1,0,'中華','Taiwan',0),(216,0,0,'TZ','TZA',834,21,14,'Jamhuri ya Muungano wa Tanzania','United Republic of Tanzania','Dodoma','tz',152,'TZS',834,255,0,1,1,0,'Tanzania','Tanzania',0),(217,0,0,'UA','UKR',804,11,151,'Україна','Ukraine','Kiev','ua',153,'UAH',980,380,0,1,1,0,'Україна','Ukraine',0),(218,0,0,'UG','UGA',800,21,14,'Republic of Uganda','Republic of Uganda','Kampala','ug',154,'UGX',800,256,0,1,1,0,'Uganda','Uganda',0),(219,0,0,'UM','UMI',581,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands','','um',155,'USD',840,0,0,0,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands',0),(220,0,0,'US','USA',840,18,21,'United States of America','United States of America','Washington DC','us',155,'USD',840,1,0,1,3,1,'United States','United States',53),(221,0,0,'UY','URY',858,16,5,'República Oriental del Uruguay','Eastern Republic of Uruguay','Montevideo','uy',156,'UYU',858,598,0,1,1,0,'Uruguay','Uruguay',0),(222,0,0,'UZ','UZB',860,8,143,'O‘zbekiston Respublikasi','Republic of Uzbekistan','Tashkent','uz',157,'UZS',860,998,0,1,1,0,'O‘zbekiston','Uzbekistan',0),(223,0,0,'VA','VAT',336,10,39,'Status Civitatis Vaticanae / Città del Vaticano','Vatican City','Vatican City','va',49,'EUR',978,396,0,0,1,0,'Vaticano','Vatican City',0),(224,0,0,'VC','VCT',670,19,29,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','Kingstown','vc',163,'XCD',951,1784,0,1,1,0,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines',0),(225,0,0,'VE','VEN',862,16,5,'República Bolivariana de Venezuela','Bolivarian Republic of Venezuela','Caracas','ve',158,'VEF',937,58,0,1,1,0,'Venezuela','Venezuela',0),(226,0,0,'VG','VGB',92,19,29,'British Virgin Islands','British Virgin Islands','Road Town','vg',155,'USD',840,1284,0,0,1,0,'British Virgin Islands','British Virgin Islands',0),(227,0,0,'VI','VIR',850,19,29,'United States Virgin Islands','United States Virgin Islands','Charlotte Amalie','vi',155,'USD',840,1340,0,0,1,0,'US Virgin Islands','US Virgin Islands',0),(228,0,0,'VN','VNM',704,7,35,'Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam','Socialist Republic of Vietnam','Hanoi','vn',159,'VND',704,84,0,1,1,0,'Việt Nam','Vietnam',0),(229,0,0,'VU','VUT',548,26,54,'Ripablik blong Vanuatu / Republic of Vanuatu / République du Vanuatu','Republic of Vanuatu','Port Vila','vu',160,'VUV',548,678,0,1,1,0,'Vanuatu','Vanuatu',0),(230,0,0,'WF','WLF',876,28,61,'Territoire de Wallis et Futuna','Territory of Wallis and Futuna Islands','Mata-Utu','wf',165,'XPF',953,681,0,0,1,0,'Wallis and Futuna','Wallis and Futuna',0),(231,0,0,'WS','WSM',882,28,61,'Malo Sa\'oloto Tuto\'atasi o Samoa / Independent State of Samoa','Independent State of Samoa','Apia','ws',161,'WST',882,685,0,1,1,0,'Samoa','Samoa',0),(232,0,0,'YE','YEM',887,9,145,'الجمهوريّة اليمنية','Republic of Yemen','San\'a','ye',166,'YER',886,967,0,1,1,0,'اليمنية','Yemen',0),(233,0,0,'YT','MYT',175,21,14,'Mayotte','Mayotte','Mamoudzou','yt',49,'EUR',978,269,0,0,0,0,'Mayotte','Mayotte',0),(235,0,0,'ZA','ZAF',710,24,18,'Republic of South Africa / Republiek van Suid-Afrika / Rephaboliki ya Afrika-Borwa','Republic of South Africa','Pretoria','za',168,'ZAR',710,27,0,1,2,0,'Afrika-Borwa','South Africa',0),(236,0,0,'ZM','ZMB',894,21,14,'Republic of Zambia','Republic of Zambia','Lusaka','zm',169,'ZMW',967,260,0,1,1,0,'Zambia','Zambia',0),(237,0,0,'ZW','ZWE',716,21,14,'Republic of Zimbabwe','Republic of Zimbabwe','Harare','zw',169,'ZMW',967,263,0,1,1,0,'Zimbabwe','Zimbabwe',0),(238,0,0,'PS','PSE',275,9,145,'دولة فلسطين','State of Palestine','','ps',0,'',0,0,0,0,0,0,'فلسطين','Palestine',0),(239,0,1,'CS','CSG',891,10,39,'Државна заједница Србија и Црна Гора','State Union of Serbia and Montenegro','Belgrade','cs',0,'CSD',891,381,0,1,0,0,'Србија и Црна Гора','Serbia and Montenegro',0),(240,0,0,'AX','ALA',248,12,154,'Landskapet Åland','Åland Islands','Mariehamn','ax',49,'EUR',978,35818,1,0,0,0,'Åland','Åland',0),(241,0,0,'HM','HMD',334,25,53,'Heard Island and McDonald Islands','Heard Island and McDonald Islands','','',9,'AUD',36,0,0,0,0,0,'Heard Island and McDonald Islands','Heard Island and McDonald Islands',0),(242,0,0,'ME','MNE',499,10,39,'Republike Crne Gore','Montenegro','Podgorica','me',49,'EUR',978,382,0,1,1,0,'Crna Gora','Montenegro',0),(243,0,0,'RS','SRB',688,10,39,'Republika Srbija','Republic of Serbia','Belgrade','rs',172,'RSD',941,381,0,1,1,0,'Srbija','Serbia',0),(244,0,0,'JE','JEY',832,12,154,'Bailiwick of Jersey','Bailiwick of Jersey','Saint Helier','je',52,'GBP',826,44,0,0,5,0,'Jersey','Jersey',0),(245,0,0,'GG','GGY',831,12,154,'Bailiwick of Guernsey','Bailiwick of Guernsey','Saint Peter Port','gg',52,'GBP',826,44,0,0,5,0,'Guernsey','Guernsey',0),(246,0,0,'IM','IMN',833,12,154,'Isle of Man / Ellan Vannin','Isle of Man','Douglas','im',52,'GBP',826,44,0,0,5,0,'Mann / Mannin','Isle of Man',0),(247,0,0,'MF','MAF',652,19,29,'Collectivité de Saint-Martin','Collectivity of Saint Martin','Marigot','fr',49,'EUR',978,590,0,0,1,0,'Saint-Martin','Saint Martin',0),(248,0,0,'BL','BLM',652,19,29,'Collectivité de Saint-Barthélemy','Collectivity of Saint Barthélemy','Gustavia','fr',49,'EUR',978,590,0,0,1,0,'Saint-Barthélemy','Saint Barthélemy',0),(249,0,0,'BQ','BES',535,19,29,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba','Oranjestad','bq',155,'USD',840,599,0,0,0,0,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba',0),(250,0,0,'CW','CUW',531,19,29,'Curaçao','Curaçao','Willemstad','cw',6,'ANG',532,599,0,0,0,0,'Curaçao','Curaçao',0),(251,0,0,'SX','SXM',534,19,29,'Sint Maarten','Sint Maarten','Philipsburg','sx',6,'ANG',532,599,0,0,0,0,'Sint Maarten','Sint Maarten',0),(252,0,0,'SS','SSD',728,22,15,'Republic of South Sudan','Republic of South Sudan','Juba','ss',176,'SSP',728,211,0,0,0,0,'South Sudan','South Sudan',0);
/*!40000 ALTER TABLE `static_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_country_zones`
--

DROP TABLE IF EXISTS `static_country_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_country_zones` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `zn_country_iso_2` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zn_country_iso_3` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zn_country_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `zn_code` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zn_name_local` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zn_name_en` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zn_country_uid` int(11) NOT NULL DEFAULT '0',
  `zn_country_table` tinytext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `cu_iso_3` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cu_name_en` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_symbol_left` varchar(12) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_symbol_right` varchar(12) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_thousands_point` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_decimal_point` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_decimal_digits` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cu_sub_name_en` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_sub_divisor` int(11) NOT NULL DEFAULT '1',
  `cu_sub_symbol_left` varchar(12) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `cu_sub_symbol_right` varchar(12) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `lg_iso_2` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_name_local` varchar(99) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_name_en` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_typo3` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_country_iso_2` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_collate_locale` varchar(5) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `lg_sacred` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lg_constructed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_languages`
--

LOCK TABLES `static_languages` WRITE;
/*!40000 ALTER TABLE `static_languages` DISABLE KEYS */;
INSERT INTO `static_languages` VALUES (1,0,0,'AB','Аҧсуа бызшәа','Abkhazian','','','',0,0),(2,0,0,'AA','Afaraf','Afar','','','',0,0),(3,0,0,'AF','Afrikaans','Afrikaans','','','',0,0),(4,0,0,'SQ','Gjuha shqipe','Albanian','sq','','sq',0,0),(5,0,0,'AM','አማርኛ','Amharic','','','',0,0),(6,0,0,'AR','العربية','Arabic','ar','','ar_SA',0,0),(7,0,0,'HY','Հայերեն','Armenian','','','',0,0),(8,0,0,'AS','অসমীয়া','Assamese','','','',0,0),(9,0,0,'AY','Aymar aru','Aymara','','','',0,0),(10,0,0,'AZ','Azərbaycan dili','Azerbaijani','','','',0,0),(11,0,0,'BA','Башҡорт','Bashkir','','','',0,0),(12,0,0,'EU','Euskara','Basque','eu','','eu_ES',0,0),(13,0,0,'BN','বাংলা','Bengali','','','',0,0),(14,0,0,'DZ','ཇོང་ཁ','Dzongkha','','','',0,0),(15,0,0,'BH','भोजपुरी','Bihari','','','',0,0),(16,0,0,'BI','Bislama','Bislama','','','',0,0),(17,0,0,'BR','Brezhoneg','Breton','','','',0,0),(18,0,0,'BG','Български','Bulgarian','bg','','bg_BG',0,0),(19,0,0,'MY','မ္ရန္‌မာစာ','Burmese','my','','my_MM',0,0),(20,0,0,'BE','Беларуская','Belarusian','','','',0,0),(21,0,0,'KM','ភាសាខ្មែរ','Khmer','km','','km',0,0),(22,0,0,'CA','Català','Catalan','ca','','ca_ES',0,0),(23,0,0,'ZA','Sawcuengh','Zhuang','','','',0,0),(24,0,0,'ZH','漢語','Chinese (Traditional)','hk','HK','zh_HK',0,0),(25,0,0,'CO','Corsu','Corsican','','','',0,0),(26,0,0,'HR','Hrvatski','Croatian','hr','','hr_HR',0,0),(27,0,0,'CS','Čeština','Czech','cz','','cs_CZ',0,0),(28,0,0,'DA','Dansk','Danish','dk','','da_DK',0,0),(29,0,0,'NL','Nederlands','Dutch','nl','','nl_NL',0,0),(30,0,0,'EN','English','English','','','en_GB',0,0),(31,0,0,'EO','Esperanto','Esperanto','eo','','',0,1),(32,0,0,'ET','Eesti','Estonian','et','','et_EE',0,0),(33,0,0,'FO','Føroyskt','Faeroese','fo','','fo_FO',0,0),(34,0,0,'FA','فارسی','Persian','fa','','fa_IR',0,0),(35,0,0,'FJ','Na Vosa Vakaviti','Fijian','','','',0,0),(36,0,0,'FI','Suomi','Finnish','fi','','fi_FI',0,0),(37,0,0,'FR','Français','French','fr','','fr_FR',0,0),(38,0,0,'FY','Frysk','Frisian','','','',0,0),(39,0,0,'GL','Galego','Galician','ga','','gl_ES',0,0),(40,0,0,'GD','Gàidhlig','Scottish Gaelic','','','',0,0),(41,0,0,'GV','Gaelg','Manx','','','',0,0),(42,0,0,'KA','ქართული','Georgian','ge','','ka',0,0),(43,0,0,'DE','Deutsch','German','de','','de_DE',0,0),(44,0,0,'EL','Ελληνικά','Greek','gr','','el_GR',0,0),(45,0,0,'KL','Kalaallisut','Greenlandic','gl','','kl_DK',0,0),(46,0,0,'GN','Avañe\'ẽ','Guaraní','','','',0,0),(47,0,0,'GU','ગુજરાતી','Gujarati','','','',0,0),(48,0,0,'HA','Hausa','Hausa','','','',0,0),(49,0,0,'HE','עברית','Hebrew','he','','he_IL',0,0),(50,0,0,'HI','हिन्दी','Hindi','hi','','hi_IN',0,0),(51,0,0,'HU','Magyar','Hungarian','hu','','hu_HU',0,0),(52,0,0,'IS','Íslenska','Icelandic','is','','is_IS',0,0),(53,0,0,'ID','Bahasa Indonesia','Indonesian','','','',0,0),(54,0,0,'IA','Interlingua','Interlingua','','','',0,1),(55,0,0,'IE','Interlingue','Interlingue','','','',0,1),(56,0,0,'IU','ᐃᓄᒃᑎᑐᑦ','Inuktitut','','','',0,0),(57,0,0,'IK','Iñupiak','Inupiaq','','','',0,0),(58,0,0,'GA','Gaeilge','Irish','','','',0,0),(59,0,0,'IT','Italiano','Italian','it','','it_IT',0,0),(60,0,0,'JA','日本語','Japanese','jp','','ja_JP',0,0),(62,0,0,'KN','ಕನ್ನಡ','Kannada','','','',0,0),(63,0,0,'KS','कॉशुर','Kashmiri','','','',0,0),(64,0,0,'KK','Қазақ тілі','Kazakh','','','',0,0),(65,0,0,'RW','Kinyarwanda','Kinyarwanda','','','',0,0),(66,0,0,'KY','Кыргыз тили','Kirghiz','','','',0,0),(67,0,0,'RN','kiRundi','Kirundi','','','',0,0),(68,0,0,'KO','한국말','Korean','kr','','ko_KR',0,0),(69,0,0,'KU','Kurdî','Kurdish','','','',0,0),(70,0,0,'LO','ພາສາລາວ','Lao','','','',0,0),(71,0,0,'LA','Lingua latina','Latin','','','',1,0),(72,0,0,'LV','Latviešu','Latvian','lv','','lv_LV',0,0),(73,0,0,'LN','Lingála','Lingala','','','',0,0),(74,0,0,'LT','Lietuvių','Lithuanian','lt','','lt_LT',0,0),(75,0,0,'MK','Македонски','Macedonian','','','',0,0),(76,0,0,'MG','Merina','Malagasy','','','',0,0),(77,0,0,'MS','Bahasa Melayu','Malay','','','',0,0),(78,0,0,'ML','മലയാളം','Malayalam','','','',0,0),(79,0,0,'MT','Malti','Maltese','','','mt_MT',0,0),(80,0,0,'MI','Māori','Māori','','','',0,0),(81,0,0,'MR','मराठी','Marathi','','','',0,0),(82,0,0,'MO','молдовеняскэ','Moldavian','','','',0,0),(83,0,0,'MN','Монгол','Mongolian','','','',0,0),(84,0,0,'NA','Ekakairũ Naoero','Nauru','','','',0,0),(85,0,0,'NE','नेपाली','Nepali','','','',0,0),(86,0,0,'NO','Norsk','Norwegian','no','','no_NO',0,0),(87,0,0,'OC','Occitan','Occitan','','','',0,0),(88,0,0,'OR','ଓଡ଼ିଆ','Oriya','','','',0,0),(89,0,0,'OM','Afaan Oromoo','Oromo','','','',0,0),(90,0,0,'PS','پښت','Pashto','','','',0,0),(91,0,0,'PL','Polski','Polish','pl','','pl_PL',0,0),(92,0,0,'PT','Português','Portuguese','pt','','pt_PT',0,0),(93,0,0,'PA','ਪੰਜਾਬੀ / پنجابی','Punjabi','','','',0,0),(94,0,0,'QU','Runa Simi','Quechua','','','',0,0),(95,0,0,'RM','Rumantsch','Rhaeto-Romance','','','',0,0),(96,0,0,'RO','Română','Romanian','ro','','ro_RO',0,0),(97,0,0,'RU','Русский','Russian','ru','','ru_RU',0,0),(98,0,0,'SM','Gagana faʼa Samoa','Samoan','','','',0,0),(99,0,0,'SG','Sängö','Sango','','','',0,0),(100,0,0,'SA','संस्कृतम्','Sanskrit','','','',1,0),(101,0,0,'SR','Српски / Srpski','Serbian','sr','','sr_YU',0,0),(103,0,0,'ST','seSotho','Sesotho','','','',0,0),(104,0,0,'TN','Setswana','Setswana','','','',0,0),(105,0,0,'SN','chiShona','Shona','','','',0,0),(106,0,0,'SD','سنڌي، سندھی','Sindhi','','','',0,0),(107,0,0,'SI','සිංහල','Sinhala','','','',0,0),(108,0,0,'SS','siSwati','Swati','','','',0,0),(109,0,0,'SK','Slovenčina','Slovak','sk','','sk_SK',0,0),(110,0,0,'SL','Slovenščina','Slovenian','si','','sl_SI',0,0),(111,0,0,'SO','af Soomaali','Somali','','','',0,0),(112,0,0,'ES','Español','Spanish','es','','es_ES',0,0),(113,0,0,'SU','Basa Sunda','Sundanese','','','',0,0),(114,0,0,'SW','Kiswahili','Swahili','','','',0,0),(115,0,0,'SV','Svenska','Swedish','se','','sv_SE',0,0),(116,0,0,'TL','Tagalog','Tagalog','','','',0,0),(117,0,0,'TG','тоҷикӣ / تاجیکی','Tajik','','','',0,0),(118,0,0,'TA','தமிழ்','Tamil','','','',0,0),(119,0,0,'TT','татарча / tatarça / تاتارچ','Tatar','','','',0,0),(120,0,0,'TE','తెలుగు','Telugu','','','',0,0),(121,0,0,'TH','ภาษาไทย','Thai','th','','th_TH',0,0),(122,0,0,'BO','བོད་ཡིག','Tibetan','','','',0,0),(123,0,0,'TI','ትግርኛ','Tigrinya','','','',0,0),(124,0,0,'TO','faka-Tonga','Tongan','','','',0,0),(125,0,0,'TS','Tsonga','Tsonga','','','',0,0),(126,0,0,'TR','Türkçe','Turkish','tr','','tr_TR',0,0),(127,0,0,'TK','Türkmen dili','Turkmen','','','',0,0),(128,0,0,'TW','Twi','Twi','','','',0,0),(129,0,0,'UG','ئۇيغۇرچه','Uyghur','','','',0,0),(130,0,0,'UK','Українська','Ukrainian','ua','','uk_UA',0,0),(131,0,0,'UR','اردو','Urdu','','','',0,0),(132,0,0,'UZ','Ўзбек / O\'zbek','Uzbek','','','',0,0),(133,0,0,'VI','Tiếng Việt','Vietnamese','vn','','vi_VN',0,0),(134,0,0,'VO','Volapük','Volapük','','','',0,1),(135,0,0,'CY','Cymraeg','Welsh','','','',0,0),(136,0,0,'WO','Wolof','Wolof','','','',0,0),(137,0,0,'XH','isiXhosa','Xhosa','','','',0,0),(138,0,0,'YI','ייִדיש','Yiddish','','','',0,0),(139,0,0,'YO','Yorùbá','Yoruba','','','',0,0),(140,0,0,'ZU','isiZulu','Zulu','','','',0,0),(141,0,0,'BS','Bosanski','Bosnian','ba','','bs_BA',0,0),(142,0,0,'AE','Avestan','Avestan','','','',1,0),(143,0,0,'AK','Akan','Akan','','','',0,0),(144,0,0,'AN','Aragonés','Aragonese','','','',0,0),(145,0,0,'AV','магӀарул мацӀ','Avar','','','',0,0),(146,0,0,'BM','Bamanankan','Bambara','','','',0,0),(147,0,0,'CE','Нохчийн','Chechen','','','',0,0),(148,0,0,'CH','Chamoru','Chamorro','','','',0,0),(149,0,0,'CR','ᓀᐦᐃᔭᐤ','Cree','','','',0,0),(150,0,0,'CU','церковнославя́нский язы́к','Church Slavonic','','','',1,0),(151,0,0,'CV','Чăваш чěлхи','Chuvash','','','',0,0),(152,0,0,'DV','ދިވެހި','Dhivehi','','','',0,0),(153,0,0,'EE','Ɛʋɛgbɛ','Ewe','','','',0,0),(154,0,0,'FF','Fulfulde / Pulaar','Fula','','','',0,0),(155,0,0,'HO','Hiri motu','Hiri motu','','','',0,0),(156,0,0,'HT','Krèyol ayisyen','Haïtian Creole','','','',0,0),(157,0,0,'HZ','otsiHerero','Herero','','','',0,0),(158,0,0,'IG','Igbo','Igbo','','','',0,0),(159,0,0,'II','ꆇꉙ','Yi','','','',0,0),(160,0,0,'IO','Ido','Ido','','','',0,1),(161,0,0,'JV','Basa Jawa','Javanese','','','',0,0),(162,0,0,'KG','Kikongo','Kongo','','','',0,0),(163,0,0,'KI','Gĩkũyũ','Kikuyu','','','',0,0),(164,0,0,'KJ','Kuanyama','Kuanyama','','','',0,0),(165,0,0,'KR','Kanuri','Kanuri','','','',0,0),(166,0,0,'KV','коми кыв','Komi','','','',0,0),(167,0,0,'KW','Kernewek','Cornish','','','',0,0),(168,0,0,'LB','Lëtzebuergesch','Luxembourgish','','','',0,0),(169,0,0,'LG','Luganda','Luganda','','','',0,0),(170,0,0,'LI','Limburgs','Limburgish','','','',0,0),(171,0,0,'LU','Luba-Katanga','Luba-Katanga','','','',0,0),(172,0,0,'MH','Kajin M̧ajeļ','Marshallese','','','',0,0),(173,0,0,'NB','Norsk bokmål','Norwegian Bokmål','','','',0,0),(174,0,0,'ND','isiNdebele','North Ndebele','','','',0,0),(175,0,0,'NG','Owambo','Ndonga','','','',0,0),(176,0,0,'NN','Norsk nynorsk','Norwegian Nynorsk','','','',0,0),(177,0,0,'NR','Ndébélé','South Ndebele','','','',0,0),(178,0,0,'NV','Dinékʼehǰí','Navajo','','','',0,0),(179,0,0,'NY','chiCheŵa','Chichewa','','','',0,0),(180,0,0,'OJ','ᐊᓂᔑᓈᐯᒧᐎᓐ','Ojibwa','','','',0,0),(181,0,0,'OS','Ирон æвзаг','Ossetic','','','',0,0),(182,0,0,'PI','Pāli','Pali','','','',1,0),(183,0,0,'SC','Sardu','Sardinian','','','',0,0),(184,0,0,'SE',' Sámegiella','Northern Sami','','','',0,0),(186,0,0,'TY','Reo Tahiti','Tahitian','','','',0,0),(187,0,0,'VE','tshiVenḓa','Venda','','','',0,0),(188,0,0,'WA','Walon','Walloon','','','',0,0),(189,0,0,'PT','Português brasileiro','Brazilian Portuguese','br','BR','pt_BR',0,0),(190,0,0,'ZH','汉语','Chinese (Simplified)','ch','CN','zh_CN',0,0),(191,0,0,'FR','Français canadien','Canadian French','qc','CA','fr_CA',0,0),(192,0,0,'TL','Filipino','Filipino','','PH','fil',0,0),(193,0,0,'SR','Crnogorski jezik','Montenegrin','','ME','sr_ME',0,0);
/*!40000 ALTER TABLE `static_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_territories`
--

DROP TABLE IF EXISTS `static_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_territories` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `tr_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `tr_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `tr_parent_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `tr_name_en` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_swedish_ci,
  `description` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `images` int(11) unsigned DEFAULT '0',
  `single_pid` int(11) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (1,23,1443691735,1443691700,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,256,0,0,'a:9:{s:5:\"title\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;s:6:\"hidden\";N;s:6:\"parent\";N;s:11:\"description\";N;s:5:\"items\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}','Examples','',0,0,'0',0,0,0,'',''),(2,23,1443691718,1443691718,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,128,0,0,'','Content','',0,0,'0',0,0,0,'',''),(3,23,1443691742,1443691742,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,64,0,0,'','Areas','',0,0,'0',0,0,0,'',''),(4,23,1443691777,1443691763,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,32,0,0,'a:9:{s:5:\"title\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;s:6:\"hidden\";N;s:6:\"parent\";N;s:11:\"description\";N;s:5:\"items\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}','Scania','',0,0,'0',0,0,0,'',''),(5,23,1443696099,1443696099,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,16,0,0,'','Header','',0,0,'0',0,0,0,'',''),(6,23,1444135446,1444132948,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,8,0,0,'a:11:{s:5:\"title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"parent\";N;s:6:\"images\";N;s:11:\"description\";N;s:10:\"single_pid\";N;s:8:\"shortcut\";N;s:5:\"items\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}','Research','',0,1,'0',0,0,0,'',''),(7,23,1444135446,1444133029,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,4,0,0,'a:11:{s:5:\"title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"parent\";N;s:6:\"images\";N;s:11:\"description\";N;s:10:\"single_pid\";N;s:8:\"shortcut\";N;s:5:\"items\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}','Technology','',0,1,'0',0,42,0,'','');
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
  `tablenames` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (2,15,'pages','categories',0,1),(1,15,'pages','categories',0,2),(2,16,'pages','categories',0,1),(1,16,'pages','categories',0,2),(2,17,'pages','categories',0,1),(1,17,'pages','categories',0,2),(2,14,'pages','categories',0,1),(1,14,'pages','categories',0,2),(2,18,'pages','categories',0,1),(1,18,'pages','categories',0,2),(5,16,'tt_content','categories',0,1),(5,17,'tt_content','categories',0,1),(5,18,'tt_content','categories',0,1),(5,19,'tt_content','categories',0,1),(5,20,'tt_content','categories',0,1),(5,21,'tt_content','categories',0,1),(5,22,'tt_content','categories',0,1),(5,23,'tt_content','categories',0,1),(5,24,'tt_content','categories',0,1),(7,1,'tx_news_domain_model_news','categories',1,1),(6,2,'tx_news_domain_model_news','categories',0,1);
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `type` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_swedish_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `tablenames` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `tx_realurl` (`domainName`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
INSERT INTO `sys_domain` VALUES (1,1,1453275176,1453275176,1,0,'localhost','',301,256,0,0);
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
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_swedish_ci,
  `identifier_hash` char(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `folder_hash` char(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_swedish_ci,
  `sha1` char(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1441893084,0,0,0,'2',0,'/typo3conf/ext/theme_core/Meta/Screenshots/screenshot.png','edc13e97df334e7b3c3b9c81ffcce9efca4dc355','e8778a0a994cf77126013473e39c512064c299aa','png','image/png','screenshot.png','ffcf98a5cf9272f66e904ec465dcdd34605348d3',22058237,1441892907,1441892907),(2,0,1441893088,0,0,0,'2',0,'/typo3conf/ext/themes/Resources/Public/Icons/power_grey.png','59b1b98dfa888dfa7e156b86d6e56404d13f44c0','026648bf3d8eb3d7af401e087cf8a2301b59dfb2','png','image/png','power_grey.png','cbb8e507bcd4f354b56f87cc20ec9d01da4d137b',521,1441892094,1441892094),(3,0,1441893088,0,0,0,'2',0,'/typo3conf/ext/themes/Resources/Public/Icons/power_green.png','8c591372f761e2269ccb1c1bf864b06a2b732361','026648bf3d8eb3d7af401e087cf8a2301b59dfb2','png','image/png','power_green.png','ffd54c59cb2c45e2bbe6b373fda1954ab9c4fcb6',521,1441892094,1441892094),(4,0,1441893262,0,0,0,'2',0,'/typo3conf/ext/theme_core/Resources/Public/temp/images/logo.png','e026c258ef8b91183f60b0778e4d4910aea842ea','85f155549de8257766472e9286ad9e4f58aa9e2b','png','image/png','logo.png','74cad72f9415e4c2ce4208c5e01c5db5f2c83b8a',6251,1441892981,1441892981),(5,0,1441894567,0,0,1,'2',0,'/user_upload/20150831_140214.jpeg','9574b607fa3e263313806682a8a830c1a80fc0a3','19669f1e02c2f16705ec7587044c66443be70725','jpeg','image/jpeg','20150831_140214.jpeg','31b716dc4a0462706c9a192587c74e13181ed2ef',42368,1441894567,1441894567),(6,0,1442407580,0,0,1,'2',0,'/user_upload/temp-carousel-1.jpg','a9923b435e598e961ec206b137c0bc62f7d6879b','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','temp-carousel-1.jpg','3570f3ec231e7aec966f6bce682c525feedd1ddd',59750,1442407570,1441892981),(7,0,1442407580,0,0,1,'2',0,'/user_upload/temp-carousel-2.jpg','29e4bcca629e3e457f86effa4f524efdcfd79a35','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','temp-carousel-2.jpg','2a170c6bf4d3008225ae8fb93befb4d939601d12',161432,1442407571,1441892981),(8,0,1442407580,0,0,1,'2',0,'/user_upload/temp-carousel-3.jpg','816531badfd215ab8565f8745d355d9f1c0e0fd6','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','temp-carousel-3.jpg','81e62b3e954f0c00e7f4acdf5b877009928940d7',255549,1442407572,1441892981),(9,0,1442568163,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1441877701,1441877701),(10,0,1442913311,0,0,1,'2',0,'/example_content/images/foto1.jpg','b572c61ab6cc481a6c70309196bed4794950a1fc','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','foto1.jpg','22244bde023ee8114e868a36a7d0ac24c6fdeb4a',113926,1442913234,1441892981),(11,0,1442913311,0,0,1,'2',0,'/example_content/images/logo-fireball.png','97c85b66b2d700c85b58e251255fdc740b8e2e84','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','logo-fireball.png','44e6831d7fc3b23dfb43ad413b4625e56cdf1a1b',8021,1442913234,1441892981),(12,0,1442913311,0,0,1,'2',0,'/example_content/images/logo-moonlight.png','23d6d935ff771015be64c0a8a22d1fdbfc677e50','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','logo-moonlight.png','7abf91233f1d0b6613224b968207a4fd4d5c2afb',5357,1442913234,1441892981),(13,0,1442913311,0,0,1,'2',0,'/example_content/images/logo-royal-trader.png','7a9a5c91a85b4dc9e7e3bf0aaaf80642dc3a9bf2','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','logo-royal-trader.png','f09f0edd0c09f8fbc5b385d69d0fc83465e56a12',4404,1442913234,1441892981),(14,0,1442913311,0,0,1,'2',0,'/example_content/images/logo-save-the-nature.png','e1a853aebe826b8bb01787218b6cd064d9cbd6c1','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','logo-save-the-nature.png','1ab5707df884512e91a4b44d7890a5b5a486cc3d',6073,1442913234,1441892981),(15,0,1442913311,0,0,1,'2',0,'/example_content/images/logo.png','7c89f9a9d6ae73cab06e892a4f5f4ad5ebf5615b','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','logo.png','74cad72f9415e4c2ce4208c5e01c5db5f2c83b8a',6251,1442913234,1441892981),(16,0,1442913311,0,0,1,'2',0,'/example_content/images/temp-carousel-1.jpg','786a50e4ed4cc20e30e27a5f646eed76cc42b025','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','temp-carousel-1.jpg','3570f3ec231e7aec966f6bce682c525feedd1ddd',59750,1442913234,1441892981),(17,0,1442913311,0,0,1,'2',0,'/example_content/images/temp-carousel-2.jpg','07bfb8b7b62195b329125969ce32f01bd7486e06','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','temp-carousel-2.jpg','2a170c6bf4d3008225ae8fb93befb4d939601d12',161432,1442913234,1441892981),(18,0,1442913311,0,0,1,'2',0,'/example_content/images/temp-carousel-3.jpg','6a8887ca5d37d3b4548cb70c963d24cbd7742b89','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','temp-carousel-3.jpg','81e62b3e954f0c00e7f4acdf5b877009928940d7',255549,1442913234,1441892981),(19,0,1444049301,1444049302,0,1,'4',0,'/user_upload/Malmöläktaren_2014_-_Trailer.youtube','e9c02024f6634d5ccd41cb0e7ece760258f329d9','19669f1e02c2f16705ec7587044c66443be70725','youtube','video/youtube','Malmöläktaren_2014_-_Trailer.youtube','f656c473d9b0a5c8eef8183a6d4dec971edaf18e',11,1444049301,1444049301),(20,0,1444050892,1444050892,0,1,'4',0,'/user_upload/SUPRAS_MALMÖ_PRESENTERAR__MALMÖLÄKTAREN_2011.youtube','41e153eee95c076d54accf0484375e6a97305d6e','19669f1e02c2f16705ec7587044c66443be70725','youtube','video/youtube','SUPRAS_MALMÖ_PRESENTERAR__MALMÖLÄKTAREN_2011.youtube','2db648ffae5352565f9fdf23fa77f899d533c880',11,1444050892,1444050892),(21,0,1444132158,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Icons/news_domain_model_news_add.png','02a25ecc1bc2e149acfcd79b877ac7c665e12631','20683e0d935d7a1336b7228c69d4039202880a8f','png','image/png','news_domain_model_news_add.png','ee5f830c0f6cbe177407e4b6ad897b89c2c0b639',522,1444132070,1444132070),(22,0,1444132158,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Icons/news_domain_model_category_add.png','c8ce26a552661c20f9f8ed304eebeee4c6a38014','20683e0d935d7a1336b7228c69d4039202880a8f','png','image/png','news_domain_model_category_add.png','e218d9de120e303006cfbd89470a1e379105e206',443,1444132070,1444132070),(23,0,1444132159,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Icons/news_domain_model_tag_add.png','616981a21e3ddbfb30383731c9416f2dbb495449','20683e0d935d7a1336b7228c69d4039202880a8f','png','image/png','news_domain_model_tag_add.png','4e68dd299e37a05e0b4c958337399455ddb6012a',649,1444132070,1444132070),(24,0,1444132527,1444132528,0,1,'4',0,'/example_content/images/Supras_Malmö___Malmö_FF_-_Celtic_FC_2-0___Champions_League-kval___25_8-2015.youtube','598bcaf0dae743c7a629ce3a3cfee8fe0405b8e0','bafc190e1520693a38531a215aa201a4eac7db4b','youtube','video/youtube','Supras_Malmö___Malmö_FF_-_Celtic_FC_2-0___Champions_League-kval___25_8-2015.youtube','ebbc6125c6ccd0b5806b1d49450bd81416f71f95',11,1444132527,1444132527),(25,0,1444132780,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Images/dummy-preview-image.png','9f596bc172c8537a3ddc2d6efbb7e3212094e837','e70c7d8d1f511f7ac68ed0154b9a7ded896e72f2','png','image/png','dummy-preview-image.png','b069aa085f06da6743b904400b0e412c3b0b5b07',25896,1444132070,1444132070),(26,0,1444737722,0,0,0,'2',0,'/typo3conf/ext/theme_t3kit/Meta/Screenshots/screenshot.png','88984958fb272e6d15db508bee90d5a4387f2835','8bd521fe8c0fdf2d776dacb0f2c7423f3b812a49','png','image/png','screenshot.png','ffcf98a5cf9272f66e904ec465dcdd34605348d3',22058237,1444736491,1444736292),(27,0,1444742459,0,0,0,'2',0,'/typo3conf/ext/theme_t3kit/Resources/Public/felayout_t3kit/big/images/logo.png','887e61af196edcbb467f47f9debf266533ea78e3','bc4c8cd460faab113526cd0805ebeb0ea90dcc0c','png','image/png','logo.png','74cad72f9415e4c2ce4208c5e01c5db5f2c83b8a',6251,1444736491,1444736439),(28,0,1444799312,0,0,0,'2',0,'/typo3conf/ext/theme_t3kit/Resources/Public/felayout_t3kit/small/images/logo.png','a319a4635e7ba4c81cf93de4211c1491e4eab7ed','298dcfcc4972c1e80a481cdc7972350bb6516ef1','png','image/png','logo.png','74cad72f9415e4c2ce4208c5e01c5db5f2c83b8a',6251,1444736491,1444736439),(29,0,1446054633,0,0,0,'2',0,'/typo3conf/ext/theme_t3kit/Resources/Public/felayout_t3kit/small/images/t3kit.png','bebe92c136326d3023982ea0126552bd9506ceb6','298dcfcc4972c1e80a481cdc7972350bb6516ef1','png','image/png','t3kit.png','1bfe37aee4ce7f97e9d55f79adfab73ae6321a1b',16256,1446054263,1446054263),(30,0,1446055075,0,0,1,'2',0,'/example_content/images/node.png','1fd34975ecc728ad5d68264898517663d2f31576','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','node.png','a92f04772f61136445f355b40cab9a8fc7119f34',1939,1446055012,1445431876),(31,0,1446055075,0,0,1,'2',0,'/example_content/images/php.png','199274b342e49bac9709c4f1007d78340ce9edad','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','php.png','b51c3bac25b890801605265e224c34bdb20682ce',3473,1446055012,1445431876),(32,0,1446055075,0,0,1,'2',0,'/example_content/images/t3kit.png','01e3fc0229a9eea7bfc63acad6d6f285635c9596','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','t3kit.png','f1b760abe5a14c1647d1fdc5999affc0f0a175c2',40856,1446055012,1446053865),(33,0,1446055075,0,0,1,'2',0,'/example_content/images/typo3-logo.png','935df9cfa0df6006e57bf784cbb5c99594fb1424','bafc190e1520693a38531a215aa201a4eac7db4b','png','image/png','typo3-logo.png','f5817cca39c82ac134fe5acc3bd877f13fa88745',1936,1446055012,1445431876),(34,0,1447258749,0,0,1,'4',0,'/user_upload/25_Most_Dangerous_Selfies_Ever_.youtube','fc23c4575e09fb6ba3ecab950f15c64106955d9d','19669f1e02c2f16705ec7587044c66443be70725','youtube','video/youtube','25_Most_Dangerous_Selfies_Ever_.youtube','af1a149a848c59d80eaf3b6ded4e6745a22bf39c',11,1444976988,1444976988),(35,0,1453269777,0,0,1,'1',0,'/templates/Configuration/TypoScript/languages.setupts','da23bb8019bfdfb35acb958bc9e7aef3fe94bbc4','4e2a91c948ebd4408450c14e48241740f7b8d2ca','setupts','text/plain','languages.setupts','207767d7dd45310887edc1578eefdcb4feaf603c',1126,1447913203,1447913203),(36,0,1453370633,0,0,0,'2',0,'/typo3conf/ext/theme_t3kit/Resources/Public/felayout_t3kit/images/t3kit.png','72e26aeabb083b6700d8febd8f0c6366e05bb9dc','ed1a6c2f5989bc86270aacfe82f5416ed3cab5f7','png','image/png','t3kit.png','1bfe37aee4ce7f97e9d55f79adfab73ae6321a1b',16256,1453370582,1453370582),(37,0,1457620319,0,0,1,'2',0,'/user_upload/5920447977_f84dff5a33_o_cropped_0.jpg','8508b9fd40cad1c50a0561724478b2d854f835c4','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','5920447977_f84dff5a33_o_cropped_0.jpg','725ab227fba4af7a010afa1f2fbc8551754ed2a2',2052232,1456828019,1456828019),(38,0,1457620319,0,0,1,'2',0,'/user_upload/mount-everest-276995_1920.jpg','0224bdf9a3e4252fede725ad8289c5f20b552321','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','mount-everest-276995_1920.jpg','49a3e26543e85fab6580864e061639924c252966',421822,1457606710,1457606710),(39,0,1457620319,0,0,1,'2',0,'/user_upload/mount-everest.jpg','113d75927145ffbdc6b1673569f404dfce105a34','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','mount-everest.jpg','49a3e26543e85fab6580864e061639924c252966',421822,1457618639,1457618639),(40,0,1457620319,0,0,1,'2',0,'/user_upload/slideImage2x.jpg','a63e38097100a7fb886774326d4344fa90dd1c6d','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','slideImage2x.jpg','fdd047f78ec80143ee80e4147d9e12138f3bb4c4',1136787,1456850407,1456850407),(41,0,1457620319,0,0,1,'2',0,'/user_upload/slideImage2xx.jpg','9f9bd1170b0896a36d0efeee5c2d73d77767bebf','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','slideImage2xx.jpg','6213e5a8259f8f6eab39d33e9ed6d1361f231b81',502951,1456935824,1456935824),(42,0,1457620325,0,0,1,'2',0,'/example_content/images/mount-everest.jpg','00523becc907c007897dfa983da90ae3adc66e95','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','mount-everest.jpg','49a3e26543e85fab6580864e061639924c252966',421822,1457620189,1457620189);
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `type` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_swedish_ci,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_swedish_ci,
  `alternative` text COLLATE utf8_swedish_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) unsigned NOT NULL DEFAULT '1',
  `status` varchar(24) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8_swedish_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `creator_tool` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `download_name` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `creator` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `publisher` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `source` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `copyright` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `location_country` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `location_region` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `location_city` varchar(45) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `latitude` decimal(24,14) NOT NULL DEFAULT '0.00000000000000',
  `longitude` decimal(24,14) NOT NULL DEFAULT '0.00000000000000',
  `ranking` int(11) unsigned DEFAULT '0',
  `content_creation_date` int(11) unsigned DEFAULT '0',
  `content_modification_date` int(11) unsigned DEFAULT '0',
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `unit` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `duration` float unsigned NOT NULL DEFAULT '0',
  `color_space` varchar(4) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `pages` int(4) unsigned NOT NULL DEFAULT '0',
  `language` varchar(12) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `fe_groups` tinytext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1441893084,1441893084,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,2872,1918,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(2,0,1441893088,1441893087,1,0,0,'',0,0,0,'',0,0,0,0,0,0,2,NULL,16,16,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(3,0,1441893088,1441893087,1,0,0,'',0,0,0,'',0,0,0,0,0,0,3,NULL,16,16,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(4,0,1441893262,1441893261,1,0,0,'',0,0,0,'',0,0,0,0,0,0,4,NULL,209,54,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(5,0,1441894567,1441894567,1,0,0,'',0,0,0,'',0,0,0,0,0,0,5,NULL,640,360,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(6,0,1442407580,1442407579,1,0,0,'',0,0,0,'',0,0,0,0,0,0,6,NULL,1280,405,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(7,0,1442407580,1442407579,1,0,0,'',0,0,0,'',0,0,0,0,0,0,7,NULL,1280,406,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(8,0,1442407580,1442407579,1,0,0,'',0,0,0,'',0,0,0,0,0,0,8,NULL,1280,405,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(9,0,1442568163,1442568163,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,0,0,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(10,0,1443689273,1442913311,1,0,0,'a:4:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,10,'Foto 1 title',870,580,'This is Öresundsbron, the bridge between Sweden and Denmark.','Foto 1 alternative text',0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(11,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,11,NULL,190,80,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(12,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,12,NULL,190,80,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(13,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,13,NULL,190,80,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(14,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,14,NULL,190,80,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(15,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,15,NULL,209,54,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(16,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,16,NULL,1280,405,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(17,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,17,NULL,1280,406,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(18,0,1442913311,1442913311,1,0,0,'',0,0,0,'',0,0,0,0,0,0,18,NULL,1280,405,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(19,0,1444049302,1444049296,1,0,0,'',0,0,0,'',0,0,0,0,0,0,19,'Malmöläktaren 2014 - Trailer',480,270,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(20,0,1444050892,1444050887,1,0,0,'',0,0,0,'',0,0,0,0,0,0,20,'SUPRAS MALMÖ PRESENTERAR: MALMÖLÄKTAREN 2011',480,270,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(21,0,1444132158,1444132157,1,0,0,'',0,0,0,'',0,0,0,0,0,0,21,NULL,16,16,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(22,0,1444132159,1444132157,1,0,0,'',0,0,0,'',0,0,0,0,0,0,22,NULL,16,16,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(23,0,1444132159,1444132157,1,0,0,'',0,0,0,'',0,0,0,0,0,0,23,NULL,16,16,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(24,0,1444132528,1444132522,1,0,0,'',0,0,0,'',0,0,0,0,0,0,24,'Supras Malmö | Malmö FF - Celtic FC 2-0 | Champions League-kval · 25/8-2015',480,270,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(25,0,1444132780,1444132779,1,0,0,'',0,0,0,'',0,0,0,0,0,0,25,NULL,128,128,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(26,0,1444737722,1444737720,1,0,0,'',0,0,0,'',0,0,0,0,0,0,26,NULL,2872,1918,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(27,0,1444742459,1444742458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,27,NULL,209,54,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(28,0,1444799312,1444799310,1,0,0,'',0,0,0,'',0,0,0,0,0,0,28,NULL,209,54,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(29,0,1446054633,1446054631,0,0,0,'',0,0,0,'',0,0,0,0,0,0,29,NULL,2083,927,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(30,0,1446055075,1446055075,1,0,0,'',0,0,0,'',0,0,0,0,0,0,30,NULL,218,59,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(31,0,1446055075,1446055075,1,0,0,'',0,0,0,'',0,0,0,0,0,0,31,NULL,240,144,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(32,0,1446055075,1446055075,1,0,0,'',0,0,0,'',0,0,0,0,0,0,32,NULL,2083,927,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(33,0,1446055075,1446055075,1,0,0,'',0,0,0,'',0,0,0,0,0,0,33,NULL,118,34,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(34,0,1447258761,1447258761,1,0,0,'',0,0,0,'',0,0,0,0,0,0,34,NULL,0,0,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(35,0,1453269777,1453269777,1,0,0,'',0,0,0,'',0,0,0,0,0,0,35,NULL,0,0,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(36,0,1453370633,1453370633,1,0,0,'',0,0,0,'',0,0,0,0,0,0,36,NULL,2083,927,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(37,0,1457620319,1457620319,1,0,0,'',0,0,0,'',0,0,0,0,0,0,37,NULL,5184,1729,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(38,0,1457620319,1457620319,1,0,0,'',0,0,0,'',0,0,0,0,0,0,38,NULL,1920,499,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(39,0,1457620319,1457620319,1,0,0,'',0,0,0,'',0,0,0,0,0,0,39,NULL,1920,499,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(40,0,1457620319,1457620319,1,0,0,'',0,0,0,'',0,0,0,0,0,0,40,NULL,5184,1620,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(41,0,1457620319,1457620319,1,0,0,'',0,0,0,'',0,0,0,0,0,0,41,NULL,5184,810,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'',''),(42,0,1457620325,1457620325,1,0,0,'',0,0,0,'',0,0,0,0,0,0,42,NULL,1920,499,NULL,NULL,0,1,'','','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','');
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
  `identifier` varchar(512) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_swedish_ci,
  `configuration` text COLLATE utf8_swedish_ci,
  `configurationsha1` char(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `originalfilesha1` char(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `checksum` char(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
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
  `tablenames` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `alternative` tinytext COLLATE utf8_swedish_ci,
  `link` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `downloadname` tinytext COLLATE utf8_swedish_ci,
  `crop` varchar(4000) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  `showinpreview` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1443527653,1441894628,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,4,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":51.86666666666667,\"y\":90,\"width\":180,\"height\":180,\"rotate\":0}',0,0),(2,2,1442913501,1442407667,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',6,5,'tt_content','image',1,'sys_file','First slide title','First slide caption ','First slide alternative text','www.mff.se _blank',NULL,'',0,0),(3,2,1442913501,1442407667,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',7,5,'tt_content','image',2,'sys_file','Second slide title','Second slide caption ','Second slide alternative text','',NULL,'',0,0),(4,2,1442913501,1442407667,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',8,5,'tt_content','image',3,'sys_file','Third slide title',NULL,NULL,'',NULL,'',0,0),(5,2,1443528874,1442913604,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,5,'tt_content','image',1,'sys_file','Mauris tristique mollis orci','Aliquam nibh nibh, egestas quis elit quis, efficitur suscipit nisl. Vestibulum mattis eu tortor vitae sollicitudin. Proin sed imperdiet tortor, sed elementum dolor. Mauris pellentesque ac augue fringilla suscipit. Nam eu nibh a sapien auctor ullamcorper ac eu sapien. Donec hendrerit pretium sem vitae mollis. Maecenas cursus vitae mi eu suscipit.','Vel mollis massa varius sed','http://www.mff.se _blank',NULL,'',0,0),(6,2,1443528874,1442913675,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',17,5,'tt_content','image',2,'sys_file','Suspendisse iaculis nec lacus ut feugiat','Sed risus mauris, accumsan non leo gravida, molestie elementum sapien. Fusce ut urna nec nibh gravida vulputate. Etiam pulvinar lacus est, et viverra sem commodo in. Praesent faucibus, enim lacinia feugiat consectetur, arcu arcu eleifend eros, vel ultricies risus mi sed eros. Proin at ligula in diam varius auctor. Etiam vulputate vehicula sem eu tincidunt.','','http://www.mff.se _blank',NULL,'',0,0),(7,2,1443528874,1442913689,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:9:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;}',18,5,'tt_content','image',3,'sys_file','Vestibulum in egestas enim','Donec cursus justo nec felis semper, sed bibendum quam tincidunt. Donec sit amet hendrerit tellus. Vivamus sed erat tristique, blandit sem ac, semper leo. In ac ante iaculis, consectetur lorem eget, luctus lectus. Mauris sed finibus arcu, at malesuada tellus.',NULL,'',NULL,'',0,0),(8,1,1444799877,1443528797,1,2560,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,14,'tt_content','image',1,'sys_file','Mauris tristique mollis orci','Aliquam nibh nibh, egestas quis elit quis, efficitur suscipit nisl. Vestibulum mattis eu tortor vitae sollicitudin. Proin sed imperdiet tortor, sed elementum dolor. Mauris pellentesque ac augue fringilla suscipit. Nam eu nibh a sapien auctor ullamcorper ac eu sapien. Donec hendrerit pretium sem vitae mollis. Maecenas cursus vitae mi eu suscipit.','Vel mollis massa varius sed','http://www.mff.se _blank',NULL,'',0,0),(9,1,1444799877,1443528797,1,2816,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',17,14,'tt_content','image',2,'sys_file','Suspendisse iaculis nec lacus ut feugiat','Sed risus mauris, accumsan non leo gravida, molestie elementum sapien. Fusce ut urna nec nibh gravida vulputate. Etiam pulvinar lacus est, et viverra sem commodo in. Praesent faucibus, enim lacinia feugiat consectetur, arcu arcu eleifend eros, vel ultricies risus mi sed eros. Proin at ligula in diam varius auctor. Etiam vulputate vehicula sem eu tincidunt.','','http://www.mff.se _blank',NULL,'',0,0),(10,1,1444799877,1443528797,1,3072,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',18,14,'tt_content','image',3,'sys_file','Vestibulum in egestas enim','Donec cursus justo nec felis semper, sed bibendum quam tincidunt. Donec sit amet hendrerit tellus. Vivamus sed erat tristique, blandit sem ac, semper leo. In ac ante iaculis, consectetur lorem eget, luctus lectus. Mauris sed finibus arcu, at malesuada tellus.',NULL,'',NULL,'',0,0),(11,16,1443687858,1443687728,1,6912,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:9:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;}',10,33,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(12,16,1443687858,1443687728,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,33,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(13,16,1443687858,1443687728,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,33,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(14,16,1443687934,1443687919,1,6656,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,34,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(15,16,1443688051,1443687972,1,6400,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:9:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;}',10,35,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','',NULL,'',0,0),(16,16,1443688060,1443688055,1,6144,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,36,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(17,16,1443688102,1443688102,1,5888,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,37,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(18,16,1443688306,1443688306,1,5632,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,38,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(19,16,1443688387,1443688387,1,5376,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,39,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(20,16,1443688394,1443688394,1,5120,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,40,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(21,16,1443688451,1443688451,1,4864,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,41,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(22,16,1443688510,1443688510,1,4608,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,42,'tt_content','media',1,'sys_file','Pellentesque tristique','Pellentesque tristique erat ac metus tristique efficitur','Pellentesque tristique','http://www.mff.se _blank',NULL,'',0,0),(23,16,1443688853,1443688621,1,2560,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,43,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(24,16,1443688883,1443688621,1,2816,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:9:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;s:11:\"l10n_parent\";N;}',17,43,'tt_content','media',2,'sys_file',NULL,'Nam iaculis nisi quis posuere gravida',NULL,'',NULL,'',0,0),(25,16,1443688853,1443688621,1,3072,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',18,43,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(26,16,1443688853,1443688621,1,3328,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,43,'tt_content','media',4,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(27,16,1443688853,1443688621,1,3584,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,43,'tt_content','media',5,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(28,16,1443688853,1443688621,1,3840,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',12,43,'tt_content','media',6,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(29,16,1443688853,1443688621,1,4096,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',13,43,'tt_content','media',7,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(30,16,1443688853,1443688621,1,4352,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',14,43,'tt_content','media',8,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(31,18,1443689329,1443689194,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,47,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(32,18,1452592317,1443689194,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,47,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(33,18,1443689329,1443689194,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,47,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(34,18,1443689346,1443689346,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,48,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(35,18,1452592333,1443689346,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,48,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(36,18,1443689346,1443689346,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,48,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(37,18,1443689398,1443689398,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,49,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(38,18,1452592355,1443689398,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,49,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(39,18,1443689398,1443689398,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,49,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(40,18,1443689473,1443689471,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,50,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(41,18,1452592297,1443689471,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,50,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(42,18,1443689473,1443689471,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,50,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(43,29,1444122943,1444049328,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,67,'tt_content','media',1,'sys_file','title override','description override',NULL,'',NULL,'',0,0),(44,1,1446055101,1444108003,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',11,69,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(45,1,1446055101,1444108003,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',12,69,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(46,1,1446055101,1444108003,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',13,69,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(47,1,1446055101,1444108003,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',14,69,'tt_content','image',4,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(48,1,1446055101,1444108003,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',15,69,'tt_content','image',5,'sys_file',NULL,NULL,NULL,'http://www.pixelant.se _blank',NULL,'',0,0),(49,1,1446055101,1444108238,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,69,'tt_content','image',6,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(50,39,1444119305,1444119305,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,72,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(51,40,1444119400,1444119400,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,74,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(52,29,1444122943,1444122943,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,67,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(53,41,1444133138,1444132561,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,1,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(54,41,1444133184,1444132561,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',24,1,'tx_news_domain_model_news','fal_related_files',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(55,41,1444135537,1444135503,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',16,1,'tx_news_domain_model_news','fal_related_files',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(56,41,1444135628,1444135575,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',16,2,'tx_news_domain_model_news','fal_related_files',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(57,41,1444135575,1444135575,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,2,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(58,1,1452865864,1446055227,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',33,69,'tt_content','image',1,'sys_file','TYPO3',NULL,'TYPO3','1',NULL,'',0,0),(59,1,1452865864,1446055227,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',30,69,'tt_content','image',2,'sys_file','node',NULL,'node','1',NULL,'',0,0),(60,1,1452865864,1446055227,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',32,69,'tt_content','image',3,'sys_file','t3kit',NULL,'t3kit','1',NULL,'',0,0),(61,1,1452865864,1446055227,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',33,69,'tt_content','image',4,'sys_file','TYPO3',NULL,'TYPO3','1',NULL,'',0,0),(62,1,1452865864,1446055227,1,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',31,69,'tt_content','image',5,'sys_file','php',NULL,'php','1',NULL,'',0,0),(63,63,1452763531,1447258801,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,106,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(64,63,1452763531,1447258824,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,107,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(65,63,1452763531,1447258856,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,108,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(66,16,1452591943,1452591943,1,2304,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,35,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(67,16,1452591961,1452591961,1,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,36,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(68,16,1452591977,1452591977,1,1792,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,37,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(69,16,1452591987,1452591987,1,1536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,38,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(70,16,1452591997,1452591997,1,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,39,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(71,16,1452592015,1452592015,1,1024,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,40,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(72,16,1452592027,1452592027,1,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,33,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(73,16,1452592042,1452592042,1,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,34,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(74,16,1452592056,1452592056,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,41,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(75,16,1452592069,1452592069,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,42,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(76,16,1452592181,1452592128,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,43,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(77,16,1452592181,1452592128,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,43,'tt_content','assets',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(78,16,1452592181,1452592128,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,43,'tt_content','assets',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(79,16,1452592181,1452592128,1,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,43,'tt_content','assets',4,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(80,16,1452592231,1452592181,1,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',33,43,'tt_content','assets',5,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(81,16,1452592231,1452592231,1,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,43,'tt_content','assets',5,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(82,16,1452592231,1452592231,1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,43,'tt_content','assets',6,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(83,18,1452592297,1452592297,1,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',33,50,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(84,18,1452592317,1452592317,1,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',33,47,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(85,18,1452592333,1452592333,1,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',33,48,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(86,18,1452592355,1452592355,1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',33,49,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(87,1,1452762422,1452762422,1,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,129,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(88,1,1452762487,1452762450,1,1024,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,130,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(89,1,1452762498,1452762453,1,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,131,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0,0),(90,1,1457707954,1457620344,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',42,166,'tt_content','image',1,'sys_file',NULL,NULL,'t3kit test image','',NULL,'',0,0);
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
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_swedish_ci,
  `driver` tinytext COLLATE utf8_swedish_ci,
  `configuration` text COLLATE utf8_swedish_ci,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_swedish_ci,
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1441891555,1441891555,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,NULL,1);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_swedish_ci,
  `fieldlist` text COLLATE utf8_swedish_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_swedish_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1444824143,0,'Svenska','se','sv',115),(2,0,1445320485,0,'Deutsch','de','de',43),(3,0,1445320473,0,'Română','ro','ro',96),(4,0,1445320460,0,'Українська','ua','uk',130);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_swedish_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_swedish_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_swedish_ci,
  `data` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_swedish_ci,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `hash` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0046a62862c920e59671011706d52b34','tt_content',150,'tx_gridelements_container','','','',0,0,0,'tt_content',168,''),('019ef89de363e27a8abfc15acfccd60b','sys_file_reference',2,'link','','typolink','a52ba87b01076abc071f017d16d5585b:0',-1,1,0,'_STRING',0,'www.mff.se'),('01fe59178dbe71cf0abb754637c40ab9','sys_file',32,'storage','','','',0,0,0,'sys_file_storage',1,''),('0327f3be7cf7f6531c1522f3a17f1ebd','tt_content',171,'tx_gridelements_container','','','',0,0,0,'tt_content',150,''),('036ca401eef6950677f0a1bbd4db5aa7','tt_content',8,'header_link','','typolink','7ba2d7697f1557055afd794c7ab48eb7:0',-1,0,0,'_STRING',0,'http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html'),('043e2a1472beb24a0ef9dff2ec379cc3','sys_file_reference',27,'uid_local','','','',0,0,0,'sys_file',11,''),('04540fa97a887b7cc1b38739cf168aba','sys_template',1,'config','','TStemplate','fileadminReferences.2',-1,0,0,'_FILE',0,'fileadmin/templates/Configuration/TypoScript'),('05db4209fc506cff620512934239b5d3','sys_file_reference',26,'uid_local','','','',0,0,0,'sys_file',10,''),('05e64dfcf736e6171f67355a6f101c85','sys_file_reference',21,'link','','typolink','b9b86ae5632dbde3a954ad483cc1c25b:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('08757723f401469e011d27a9885c9e61','tt_content',71,'records','','','',1,0,0,'tt_content',78,''),('08d05f14c5e635b4ac9153cfad7a2783','sys_category',2,'items','','','',4,0,0,'pages',18,''),('08dda64e164f907f66e2c75906225193','sys_file',14,'storage','','','',0,0,0,'sys_file_storage',1,''),('0ad709d8c20d65b000d0b9ea15f61e0c','tx_news_domain_model_news',1,'related_from','','','',0,0,0,'tx_news_domain_model_news',2,''),('0afb4568b1aaca0a06306254b1696d7d','sys_file_reference',16,'uid_local','','','',0,0,0,'sys_file',10,''),('0b5a2e6208f02f89865328fb90ccf963','tt_content',154,'tx_gridelements_children','','','',0,0,0,'tt_content',156,''),('0b610caf1f46d16a8f83ed61ad991b98','sys_file_reference',36,'uid_local','','','',0,0,0,'sys_file',16,''),('0c5c78bbdae90e87911ebf67179890f4','sys_file',13,'metadata','','','',0,0,0,'sys_file_metadata',13,''),('0cd06da9b15f42afd403171ab12aaa47','tt_content',148,'tx_gridelements_children','','','',0,0,0,'tt_content',163,''),('0d66caac43617feab9c009a4672dd0d1','tt_content',151,'tx_gridelements_container','','','',0,0,0,'tt_content',148,''),('0daa86407791736a8908573ce2d1d13a','tt_content',172,'tx_gridelements_container','','','',0,0,0,'tt_content',168,''),('0e4babfa520c5f4526d17a849dd9c4d5','sys_file_reference',21,'uid_local','','','',0,0,0,'sys_file',10,''),('0e90702f71756ecf0d6ed608fb0916fe','sys_file',38,'storage','','','',0,0,0,'sys_file_storage',1,''),('0edf78016f57f5c8a48a5323d248fa62','tt_content',43,'assets','','','',0,0,0,'sys_file_reference',76,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('0f8a82b1280308d8e59348c2a122425d','tt_content',69,'image','','','',3,0,0,'sys_file_reference',61,''),('106f36d16ca4378154aeb23e8ab39643','tt_content',137,'tx_gridelements_children','','','',1,0,0,'tt_content',119,''),('11728ad5facf124a0a3222c1f4a09cbe','tt_content',108,'header_link','','typolink','140c12c51dfdfbe07fbd43fe3640b7b9:0',-1,1,0,'pages',29,''),('11b913c33332a085b2f1be0b17242a13','tt_content',47,'media','','','',2,0,0,'sys_file_reference',84,''),('1251362c164018bde88438778650d039','tt_content',75,'records','','','',0,0,0,'tt_content',71,''),('12a565b12cf9fcdc45fa16fade6406c6','tt_content',149,'tx_gridelements_children','','','',1,0,0,'tt_content',158,''),('12c45e6c6f1a5ab27143437f6173dad6','tt_content',98,'records','','','',0,1,0,'tt_content',101,''),('12f2c096449a78d992b01285e710b609','tt_content',7,'header_link','','typolink','f5193c0381a6717a7169398680924f81:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('130bf2d0d7b637ca034f61ea15b94574','sys_file',15,'storage','','','',0,0,0,'sys_file_storage',1,''),('13afdd60a04a10d0fa2652314d5d7a80','tt_content',156,'pages','','','',0,0,0,'pages',21,''),('156f0a6e8864b4515a6a3a066e1fac34','sys_file_reference',65,'uid_local','','','',0,1,0,'sys_file',10,''),('157451f3236444853e63479f2393bd5d','tt_content',13,'header_link','','typolink','1d28858bc7ed26d03d63beeff282a7ed:0',-1,0,0,'_STRING',0,'http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html'),('15af08abed9bd49b71e1fdf53a23b3b8','sys_file_reference',42,'uid_local','','','',0,0,0,'sys_file',16,''),('162f64b69ca92242eebcdc5af1cb5589','tt_content',64,'bodytext','','email','5',-1,0,0,'_STRING',0,'contactform@mycompany.com'),('1693c4554127438f83b15e66ec6218d2','tt_content',6,'header_link','','typolink','e808600f822d4899f1e6993d4fe15b74:0',-1,1,0,'_STRING',0,'http://www.mff.se'),('16bc2b70a5efa55bd86fb04bcf742052','tt_content',49,'media','','','',2,0,0,'sys_file_reference',86,''),('176115127b1f2257cfb87155bc7ee5d0','sys_file_reference',71,'uid_local','','','',0,0,0,'sys_file',10,''),('17a3a24c7721abce3fee4f118116e5d9','fe_users',4,'usergroup','','','',0,1,0,'fe_groups',2,''),('18a15d3c867402b602a6f412f1027452','sys_file_reference',53,'uid_local','','','',0,0,0,'sys_file',10,''),('18b5d72d79a28fc805fc1aa7b22357b3','tt_content',109,'records','','','',1,1,0,'tt_content',104,''),('194c72840f3bf3689ed7cdd6cea2d0a0','sys_file_reference',17,'uid_local','','','',0,0,0,'sys_file',10,''),('1a4a525cf396263f6215d7d86700244b','sys_file',11,'metadata','','','',0,0,0,'sys_file_metadata',11,''),('1add774edbfbc891678fdce0b2c9aaaf','tt_content',157,'tx_gridelements_container','','','',0,0,0,'tt_content',149,''),('1c1bc44f901160ecc2788ad2b9c69078','sys_file_reference',67,'uid_local','','','',0,0,0,'sys_file',10,''),('1c67eac91442866fea7de9d569dace73','tt_content',129,'media','','','',0,0,0,'sys_file_reference',87,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1d835ea1fc57ef9dd96b3cade29ed4bd','sys_language',4,'static_lang_isocode','','','',0,0,0,'static_languages',130,''),('1e8b86780858baaa37835e599761953b','tt_content',120,'header_link','','typolink','c58fbd7c69a88dc1137ba9c1c20c6f8f:0',-1,0,0,'_STRING',0,'http://typo3.org/news/article/announcing-typo3-cms-7-lts/'),('1ea85eec63b1d6a5801c93cdac8fdffe','tt_content',40,'media','','','',0,0,0,'sys_file_reference',20,''),('20bfa2809394948317fac0376509ef6e','pages',7,'shortcut','','','',0,0,0,'pages',1,''),('2115f49705af15aca488d5cfebc159bc','sys_file_reference',24,'uid_local','','','',0,0,0,'sys_file',17,''),('2130198bcc1957a034e0df10d388e7c6','sys_file_reference',75,'uid_local','','','',0,0,0,'sys_file',10,''),('2155a69158f7b99478a5ecdbeb309b51','sys_file_reference',63,'uid_local','','','',0,1,0,'sys_file',10,''),('216b1f50688fc564ba3dd6cd33659595','tt_content',101,'header_link','','typolink','5e4ea8ab50bfe9dbc3399355e1150b4f:0',-1,1,0,'pages',13,''),('2183e3999e5b6bfb495eed6f1bcb5cf5','sys_file_reference',19,'link','','typolink','fc0d34e298ddd86af12e6590868f34ec:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('21fab94e79600b271de65d238bfb9bb4','tt_content',95,'records','','','',1,1,0,'tt_content',98,''),('220ab13f102a0e81e35e22b0012dba71','sys_file_reference',7,'uid_local','','','',0,1,0,'sys_file',18,''),('228238c270d42b9e53f2fd169f6ebc3d','tt_content',148,'tx_gridelements_container','','','',0,0,0,'tt_content',168,''),('234f53bd02c781a54dfb4e1a3f6aad7d','tt_content',43,'assets','','','',2,0,0,'sys_file_reference',78,''),('23a355d7153652b30113f216f059a533','tt_content',76,'records','','','',1,0,0,'tt_content',73,''),('23b051d741e8d5d1a349a321c80a8a37','sys_file',17,'metadata','','','',0,0,0,'sys_file_metadata',17,''),('2442742172c58fe93325e6cfd5f2a870','tt_content',109,'records','','','',0,1,0,'tt_content',103,''),('26da5d6b47534a7526c8e7e57521925d','tt_content',38,'media','','','',0,0,0,'sys_file_reference',18,''),('27114811c801269fcf1006a3b5fa737c','tt_content',114,'header_link','','typolink','b9c790eb26e762136941cdca9253b956:0',-1,1,0,'pages',28,''),('273d5fd1d15f2db5df7602f11e453a8b','tt_content',96,'records','','','',0,1,0,'tt_content',100,''),('27b5391521e7eb712780a6f9b61df85f','tt_content',131,'tx_gridelements_container','','','',0,0,0,'tt_content',128,''),('28449b97fd3c4a721e699f6065a5dfa8','tt_content',127,'header_link','','typolink','bb472b62189e0e5367cab3491c0494b0:0',-1,0,0,'pages',13,''),('291f0c4457ded48e8667326d36ebf81d','sys_category',5,'items','','','',1,0,0,'tt_content',17,''),('29487a9385da6da26ef59336974ba325','tt_content',150,'tx_gridelements_children','','','',1,0,0,'tt_content',159,''),('29c8da45dd86409b66269d27fbf137b8','sys_file',12,'metadata','','','',0,0,0,'sys_file_metadata',12,''),('2b297c9b4c527fb4208f876a1d81af70','tt_content',133,'tx_gridelements_container','','','',0,0,0,'tt_content',132,''),('2b9fac67c0e8e10e4d6a7bb15f6e6fa5','tt_content',36,'assets','','','',0,0,0,'sys_file_reference',67,''),('2d18cf1f4d95c20cdaa5e9f2fc10acbd','sys_file_metadata',10,'file','','','',0,0,0,'sys_file',10,''),('2dc013487fe7f97f9b493e62689226f8','sys_file_reference',20,'uid_local','','','',0,0,0,'sys_file',10,''),('2e2a2417cdbf1832e5a72f0da0514e9e','tt_content',168,'tx_gridelements_children','','','',3,0,0,'tt_content',150,''),('2e4c5ce0326aa7d7dd047d73d25720a8','tt_content',116,'records','','','',1,1,0,'tt_content',111,''),('2e4de908fa332f015327bf583a9782d9','sys_file_reference',62,'uid_local','','','',0,0,0,'sys_file',31,''),('2f21d0f50833dbd146bf75e65c613879','sys_category',5,'items','','','',0,0,0,'tt_content',16,''),('2f258707c11b8ee1eff39d5d250c4da6','tt_content',50,'media','','','',1,0,0,'sys_file_reference',41,''),('2f4fdfbfcf93761b6e9d09e515574086','sys_file_reference',9,'link','','typolink','abf836398561cccea9dbe688125b09eb:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('2f54c25f324964f193b05df092a960ea','tt_content',125,'header_link','','typolink','e60e8b00a5a91002f006908fc0ca0f1a:0',-1,0,0,'pages',13,''),('2f5b87e5dc4da6450eb9f31ec5054430','tt_content',59,'pages','','','',0,0,0,'pages',1,''),('306996b1ff08db3bf2f695e408db27f1','tt_content',110,'records','','','',0,1,0,'tt_content',113,''),('30a3909173369577063a776c925719b4','pages',8,'shortcut','','','',0,0,0,'pages',19,''),('30d38a0bf830f7b47244aea2aec6d737','sys_file_reference',9,'uid_local','','','',0,0,0,'sys_file',17,''),('3104b82eeeaba31d741ee94437da372f','sys_file_reference',22,'link','','typolink','4463318f6facace53c799ec9ac121f98:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('31288ad5e9a3412af5851b03b6263f0f','sys_file_reference',72,'uid_local','','','',0,0,0,'sys_file',10,''),('31798c7050d3c3426474090a5f3d170d','sys_file_reference',29,'uid_local','','','',0,0,0,'sys_file',13,''),('3187896e42b21fbd97124d2315bfdeb9','tt_content',122,'pi_flexform','sDEF/lDEF/settings.map/vDEF/','','',0,0,0,'tx_gomapsext_domain_model_map',1,''),('324555aee4a0b561f15cd254c5fe80dd','sys_file',11,'storage','','','',0,0,0,'sys_file_storage',1,''),('32ba00fb7e9c5df77a45f75897e0f9fe','fe_users',3,'usergroup','','','',0,1,0,'fe_groups',2,''),('3317ee6a3d2d57f88c5780f82849afd2','tt_content',124,'tx_gridelements_children','','','',1,0,0,'tt_content',126,''),('334d60ea20cd77779e380a3aa16e3e73','tt_content',21,'header_link','','typolink','bc86033572aaf5d7e3dbe0e8ee807197:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('337a009efb3aed01f60c029a9c5fcb34','sys_file',16,'metadata','','','',0,0,0,'sys_file_metadata',16,''),('339ac2e7a80920a5999d9f59ae93c4c7','tt_content',164,'records','','','',1,1,0,'tt_content',158,''),('350d7bab1bc4340bdf355ef94857ba9e','tt_content',48,'media','','','',1,0,0,'sys_file_reference',35,''),('3526848c214d15f8d4fd910865b2f21a','sys_file_reference',81,'uid_local','','','',0,0,0,'sys_file',10,''),('35b45b7c85816f2f851699fe225dfcd3','fe_users',2,'usergroup','','','',0,1,0,'fe_groups',2,''),('3650d3306df1ce781f3c82d9f872beb3','tt_content',72,'media','','','',0,0,0,'sys_file_reference',50,''),('36f07d244357f098b998dd542144afce','sys_file_reference',79,'uid_local','','','',0,0,0,'sys_file',10,''),('38caa7cd1061233f93337f70e2ea1e1c','tt_content',58,'pages','','','',0,0,0,'pages',16,''),('38db3d3c7d3fac04f7223116891588f9','tt_content',169,'tx_gridelements_children','','','',1,0,0,'tt_content',161,''),('39ada7910278cd54776f17af99b34f07','sys_file_reference',31,'uid_local','','','',0,0,0,'sys_file',10,''),('39e9572c21180953bad3b6fc641906fc','sys_category',5,'items','','','',7,0,0,'tt_content',23,''),('3a09aac1a18ef0a0ec5a4f01e1cdada1','tt_content',164,'records','','','',0,1,0,'tt_content',157,''),('3a337dae1d00872050740855701a39c3','tt_content',67,'header_link','','typolink','215d1a6322e8ef6e884ea04ac19b3a31:0',-1,0,0,'pages',2,''),('3a6f6ef073b8d7b1916f7b1bb5501e32','tt_content',115,'header_link','','typolink','ec292b0085b14b492b9bd4a202e59c67:0',-1,1,0,'pages',28,''),('3a88f8af912e44f52c0f4bebda5a0751','tt_content',127,'tx_gridelements_container','','','',0,0,0,'tt_content',124,''),('3ac6ac6d89744047b37c44835caaf482','tt_content',169,'tx_gridelements_children','','','',0,0,0,'tt_content',170,''),('3bc131c5eeeedd76088f6b8ccb471e6d','tt_content',123,'bodytext','','typolink_tag','60b2e60e6abb1d886f0478eb7c0d626a:1',-1,0,0,'_STRING',0,'http://www.gdacs.org/'),('3bc7bbe23c8411ab822fff90375954e6','sys_file',13,'storage','','','',0,0,0,'sys_file_storage',1,''),('3bf1e2c2429b487f0118c1d854cd0b15','sys_category',5,'items','','','',4,0,0,'tt_content',20,''),('3d54a9361c567a078b1934e71e55f5aa','tt_content',132,'tx_gridelements_children','','','',1,0,0,'tt_content',135,''),('3f7a7ad7546c8b7106e5bb840fc1a354','tt_content',138,'tx_gridelements_children','','','',0,0,0,'tt_content',69,''),('3fc4d1b1b35947ef9ab78d640674528c','tt_content',43,'media','','','',5,0,0,'sys_file_reference',28,''),('3fe06791bc6d00b6e11f9028700de19c','sys_file_reference',66,'uid_local','','','',0,0,0,'sys_file',10,''),('403f8c9f21ce5ab8f0ca8090307dac08','tt_content',132,'tx_gridelements_children','','','',3,0,0,'tt_content',133,''),('41a39fe518ea3cb67fe9ffaf72d0f8f0','tt_content',82,'pi_flexform','sDEF/lDEF/settings.startingpoint/vDEF/','','',0,0,0,'pages',41,''),('452645c2d511cb75a574fbe0901b0090','sys_file',30,'storage','','','',0,0,0,'sys_file_storage',1,''),('4574ffa912e1a6b051ee64717f4a0a97','tt_content',111,'records','','','',0,1,0,'tt_content',114,''),('457f433f2cb0ba51807323972b4d2ea3','tt_content',154,'tx_gridelements_container','','','',0,0,0,'tt_content',149,''),('462249fe0e02ebbb89887105797f0179','tt_content',133,'header_link','','typolink','e468336ceaf05f16eba10879c0983fca:0',-1,0,0,'pages',28,''),('476dd23432cbe5d0321255f7c6717384','sys_file_reference',90,'uid_local','','','',0,0,0,'sys_file',42,''),('482757a234b8c1542a99a5962514c002','tt_content',69,'image','','','',1,0,0,'sys_file_reference',59,''),('484511caeaef7ca660b26b424a64f6c8','tx_news_domain_model_news',1,'fal_related_files','','','',0,0,0,'sys_file_reference',55,''),('48813c7d23f0a931d58b7c777082a72b','tx_news_domain_model_news',2,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('49fc71ff3cfb9f7ede0f076819af6a41','sys_file',19,'storage','','','',0,0,0,'sys_file_storage',1,''),('4a152118fe819203c2a92a807800b131','sys_file_reference',60,'uid_local','','','',0,0,0,'sys_file',32,''),('4b0eef2600e8f9f3fcaf9c530cc9d9f2','tt_content',153,'tx_gridelements_container','','','',0,1,0,'tt_content',149,''),('4b5eba1572c5c234bdeefe19799af0ea','sys_file_reference',86,'uid_local','','','',0,0,0,'sys_file',33,''),('4cf8716d11b3277bc3b6343d9aa72dd5','pages_language_overlay',2,'sys_language_uid','','','',0,0,0,'sys_language',1,''),('4d5307c2d7ad0d10cf1907d4b4dea21e','tt_content',163,'tx_gridelements_container','','','',0,0,0,'tt_content',148,''),('4db64c3ca1991b95301fd2590d361436','sys_file',18,'storage','','','',0,0,0,'sys_file_storage',1,''),('4df2f9bb58b11c3a79ecce553d8728f7','tt_content',80,'pi_flexform','additional/lDEF/settings.detailPid/vDEF/','','',0,0,0,'pages',42,''),('4e641deeb210173b32612b4a36df9a8a','sys_category',5,'items','','','',5,0,0,'tt_content',21,''),('4ef16673e984040dbc4bc34121fa3119','sys_file_reference',70,'uid_local','','','',0,0,0,'sys_file',10,''),('4f049f98b1d71f0c587d4c3c53a9be10','sys_file_reference',14,'link','','typolink','7b65ef42a21d56e9ecc0ff0b7c28f0ac:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('507c9f5168016023f81f55102512a780','tt_content',168,'tx_gridelements_children','','','',2,0,0,'tt_content',172,''),('515f023dbc5b407cf37115939e2b068d','sys_file_reference',62,'link','','typolink','1390c604de568e14dd52a37f9d6d9766:0',-1,0,0,'pages',1,''),('51d018b59091e9a6301accc07d5e9cf1','sys_file',5,'metadata','','','',0,0,0,'sys_file_metadata',5,''),('52cdbd97063df0c432888803865a10ed','tt_content',169,'tx_gridelements_container','','','',0,0,0,'tt_content',148,''),('5313204793dccd342409b34ef73edcf1','sys_domain',1,'domainName','','substitute','0',-1,0,0,'_STRING',0,'localhost'),('548fb272ed36bb44134dad17cdce87bc','tt_content',37,'media','','','',0,0,0,'sys_file_reference',17,''),('552f828cea997757ee70b498b2e9cee1','tx_themes_buttoncontent',1,'linktarget','','typolink','e444daf6559b9b921cb5625517704c17:0',-1,1,0,'_STRING',0,'http://www.mff.se/'),('556880f3fb3b192336c2f19eb95a7733','sys_category',2,'items','','','',0,0,0,'pages',15,''),('5596b54e1b6168efec696a9f1e1d8187','tt_content',69,'image','','','',0,0,0,'sys_file_reference',58,''),('55ad7640d420299a1fd3cf05fa060379','sys_file_reference',80,'uid_local','','','',0,1,0,'sys_file',33,''),('56d77ccbc24247731b41e82e1a4b94d3','sys_file_reference',61,'link','','typolink','ea3e56516ceddf645e3c05fad6e9c281:0',-1,0,0,'pages',1,''),('56e45148ce58f6c3e83df52750626f63','sys_file',7,'metadata','','','',0,0,0,'sys_file_metadata',7,''),('57106bf2471012ceca051f30cf645fda','tt_content',43,'media','','','',7,0,0,'sys_file_reference',30,''),('5760fdfc6afd9c8767c9107279d2b950','tt_content',49,'media','','','',0,0,0,'sys_file_reference',37,''),('5801de897ffbc39b5efd403cf6cd7757','tt_content',159,'pages','','','',0,0,0,'pages',54,''),('58128444bb49563f98a83b722392e2a8','sys_file',35,'storage','','','',0,0,0,'sys_file_storage',1,''),('58546c035eb15fd1224f272c60119964','sys_file',33,'storage','','','',0,0,0,'sys_file_storage',1,''),('585bc4897bc3579670fde563b309ee5e','tt_content',129,'tx_gridelements_container','','','',0,0,0,'tt_content',128,''),('594426aa7286840397de03f1c922ca37','tt_content',43,'media','','','',4,0,0,'sys_file_reference',27,''),('59e4c13cff77fe0c2efd797722600417','sys_file_reference',54,'uid_local','','','',0,1,0,'sys_file',24,''),('5a259174ea117998f735e98111a80915','tt_content',48,'media','','','',0,0,0,'sys_file_reference',34,''),('5ac3aaf70b09f33ac434e5d6693fcf7e','tt_content',149,'tx_gridelements_container','','','',0,0,0,'tt_content',168,''),('5acc6feaccfc454be685166423aa3b5f','sys_file_reference',52,'uid_local','','','',0,0,0,'sys_file',10,''),('5afce159d706018dcba60ed8898d72a9','tt_content',67,'media','','','',0,0,0,'sys_file_reference',43,''),('5b381c04980e9411143954f31af38e8d','sys_file',42,'storage','','','',0,0,0,'sys_file_storage',1,''),('5b49a9ecf0b496e36ad5732380ca9a10','tt_content',69,'image','','','',2,0,0,'sys_file_reference',60,''),('5b7aca977d0c6898ee60c3718f987b3a','tt_content',33,'media','','','',0,0,0,'sys_file_reference',11,''),('5cdb95f28f01d8db68b9a872bab9c848','tt_content',63,'pi_flexform','sDEF/lDEF/pages/vDEF/','','',0,0,0,'pages',26,''),('5d5b106a4f55c07df83cadedfde00def','sys_file',39,'storage','','','',0,0,0,'sys_file_storage',1,''),('5d64533bae8f3ad6e8e481ad3fcf6c1c','tt_content',64,'bodytext','','email','2',-1,0,0,'_STRING',0,'info@mycompany.com'),('5e06fbcdb1c892b5945d0ca27606db89','sys_file_reference',20,'link','','typolink','66543a469df801a0aeca3183d9adcf41:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('5e39a2f4e72175a8642b5a2d6e05d2de','tx_news_domain_model_news',1,'fal_media','','','',0,0,0,'sys_file_reference',53,''),('5e88c20e2c2fdab808f1a51d2a648962','sys_file_reference',18,'uid_local','','','',0,0,0,'sys_file',10,''),('5eca5d59e00eacbb0809ab8fb2517c54','sys_file',24,'storage','','','',0,0,0,'sys_file_storage',1,''),('5f23bccb973661ba1dceb37763a93457','tt_content',76,'records','','','',0,0,0,'tt_content',71,''),('5f8fdf6f8e49542752c98820c61c5bf0','tt_content',89,'pages','','','',0,1,0,'pages',21,''),('5fee43c1681238cacf84478aeab9b976','sys_file',19,'metadata','','','',0,0,0,'sys_file_metadata',19,''),('6005631375d47302028bcc4e1a022580','tt_content',134,'tx_gridelements_container','','','',0,0,0,'tt_content',132,''),('60078cfdade40b456e6e5384d4074494','tt_content',125,'tx_gridelements_container','','','',0,0,0,'tt_content',124,''),('613fd92cd371aefbf902ac393c00b82b','tt_content',124,'tx_gridelements_children','','','',0,0,0,'tt_content',127,''),('61ab78afe204881c8950b86b4ee8eadc','tt_content',39,'assets','','','',0,0,0,'sys_file_reference',70,''),('6224bfcbaa51e120b2bdb16e4f5b7694','sys_category',7,'single_pid','','','',0,0,0,'pages',42,''),('62f4a61941fb6257d1d024ff1580a802','tt_content',105,'records','','','',0,1,0,'tt_content',108,''),('63a2e383495e040e9ad51dd4398c59fe','sys_file_reference',41,'uid_local','','','',0,1,0,'sys_file',11,''),('6426de8b151568f58093f4bc5a277f2d','tt_content',67,'media','','','',1,0,0,'sys_file_reference',52,''),('64e2cad9d3b570a649679beb2b5e9a41','tt_content',83,'pi_flexform','additional/lDEF/settings.listPid/vDEF/','','',0,0,0,'pages',68,''),('65096dcfd02310217afef36101e6b96c','sys_category',2,'items','','','',2,0,0,'pages',17,''),('655993e1a639290c437d2980acdbdb39','sys_file',16,'storage','','','',0,0,0,'sys_file_storage',1,''),('656b2bc5a8d1c88d595f8e9ab2a914ac','sys_file',37,'storage','','','',0,0,0,'sys_file_storage',1,''),('65f8e21a8ea33d5a365ee667285c3f6d','tt_content',43,'assets','','','',4,0,0,'sys_file_reference',80,''),('66617a220d4e959066a70621c15690a0','tt_content',36,'media','','','',0,0,0,'sys_file_reference',16,''),('66b95c53fcbcefc8c496dd5e77b5f803','sys_file_reference',45,'uid_local','','','',0,1,0,'sys_file',12,''),('67338c7e9f38eea88d76a9304ba40ece','sys_file_reference',64,'uid_local','','','',0,1,0,'sys_file',10,''),('67d7209ca0c4e3bca1d9359abed6f284','tt_content',158,'tx_gridelements_container','','','',0,0,0,'tt_content',149,''),('6901aad17ee1e2f5293b03fc94fa0b2c','tt_content',61,'selected_categories','','','',1,0,0,'sys_category',1,''),('69a1dae15f578b2499d39e2ba870d49b','sys_file_reference',32,'uid_local','','','',0,1,0,'sys_file',11,''),('6b7bf76061e576f61ca04a7a05d55091','tt_content',34,'assets','','','',0,0,0,'sys_file_reference',73,''),('6c76df9d5474a7f45a415ff4a1c7c771','tt_content',131,'media','','','',0,0,0,'sys_file_reference',89,''),('6cfc036d1995a8f6ec8730520a5f9b61','sys_file_reference',15,'uid_local','','','',0,0,0,'sys_file',10,''),('6d999028e5b7070a6cb2a1b9dfee3e3d','tt_content',47,'media','','','',0,0,0,'sys_file_reference',31,''),('70c68f856b21f2f65323cf9066d942d6','sys_file_reference',35,'uid_local','','','',0,1,0,'sys_file',11,''),('7143e2b0abbec2e6460812395b544458','tt_content',43,'media','','','',2,0,0,'sys_file_reference',25,''),('71736f96a15b68393898d34f3b10bac6','sys_file',10,'metadata','','','',0,0,0,'sys_file_metadata',10,''),('720c889154725107985ecd03aaf1ba35','tt_content',158,'pi_flexform','sDEF/lDEF/settings.saveFolder/vDEF/','','',0,0,0,'pages',52,''),('7267f5c1a05acdebc4ca5c607807ed05','sys_file_reference',76,'uid_local','','','',0,0,0,'sys_file',10,''),('727e8e1d264f521240a7f26c39a7b4d9','tt_content',113,'header_link','','typolink','905d18027291083af3774bee4503000b:0',-1,1,0,'pages',28,''),('72d00ccaa9afd51e2432bb5653d0eb63','sys_file_reference',23,'uid_local','','','',0,0,0,'sys_file',16,''),('72ff22b93a1e6f8eb3dec344dec9af58','sys_file',17,'storage','','','',0,0,0,'sys_file_storage',1,''),('7527b5f05863f9877cefc99beb3236df','tt_content',120,'tx_gridelements_container','','','',0,0,0,'tt_content',137,''),('7575422dad1f8b6b9d580a363eedb7ae','sys_file_reference',11,'uid_local','','','',0,0,0,'sys_file',10,''),('75a40852f8106093dd8444fd30a9e018','sys_category',2,'items','','','',1,0,0,'pages',16,''),('75b877c0d61e0519f7c182f03b11c2fe','tx_news_domain_model_news',1,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('7621ff46b4c8fb0cd91359957f12e481','tt_content',109,'records','','','',2,1,0,'tt_content',105,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('779b2c3aee73709495a38ec258896a89','tt_content',132,'tx_gridelements_children','','','',2,0,0,'tt_content',134,''),('77cf74c7735b7ed06535ca691fbbfe07','sys_file',12,'storage','','','',0,0,0,'sys_file_storage',1,''),('77d652696b7f71b8388823686b0ad2c2','sys_file_reference',56,'uid_local','','','',0,1,0,'sys_file',16,''),('78701c51c60f5c75211a3b98d2fa06eb','tt_content',14,'image','','','',0,0,0,'sys_file_reference',8,''),('79c3f9a1aa33764c67148c5247d053a3','sys_file_reference',59,'link','','typolink','ec77716342b2564eb1a5623ce7111260:0',-1,0,0,'pages',1,''),('7a334543ff2fe5b0626b652ca742a231','sys_language',2,'static_lang_isocode','','','',0,0,0,'static_languages',43,''),('7a513d0c83d8392037114dbfd0dccdd2','tt_content',77,'records','','','',1,0,0,'tt_content',73,''),('7a622211928397cd71b30c67b0c5f99c','sys_file_reference',83,'uid_local','','','',0,0,0,'sys_file',33,''),('7c1f791dae59391617df7f84039533a4','tt_content',43,'assets','','','',3,0,0,'sys_file_reference',79,''),('7dca8639842af10180702e57abfbd01a','tt_content',39,'media','','','',0,0,0,'sys_file_reference',19,''),('7f1c827c57ff7fba8308896c84d4bd11','tt_content',137,'tx_gridelements_children','','','',0,0,0,'tt_content',120,''),('7fd57a2f248b5467173d5559cd29678d','sys_template',1,'config','','TStemplate','fileadminReferences.5',-1,0,0,'_FILE',0,'fileadmin/templates/Configuration/TypoScript/'),('7fdb180a54da9710f5b63daceff9a6e7','tt_content',53,'pages','','','',0,0,0,'pages',3,''),('7ff55d255b9a3dac7664f0cfde1805e8','tt_content',75,'records','','','',1,0,0,'tt_content',73,''),('8088e9aabdf2055962a37e65b14a31ee','sys_category',1,'items','','','',1,0,0,'pages',16,''),('80b6124b6e11d35bffc291c14e0499db','tt_content',117,'records','','','',0,1,0,'tt_content',119,''),('819459a6e2a40e6d5d43339fff1a409c','sys_file_reference',73,'uid_local','','','',0,0,0,'sys_file',10,''),('822b82b3087ac2d364d805c5a7733c37','tt_content',37,'assets','','','',0,0,0,'sys_file_reference',68,''),('823bf9339de3cb86aacd11ab96b570cb','sys_file',24,'metadata','','','',0,0,0,'sys_file_metadata',24,''),('82a9f186528abc5a924de39cf2622b12','sys_file',34,'storage','','','',0,0,0,'sys_file_storage',1,''),('83aa308469cd034f47b20fa3e8c724ab','tt_content',82,'pi_flexform','additional/lDEF/settings.listPid/vDEF/','','',0,0,0,'pages',67,''),('83ac951d8c25be6a8758d738d874a1ee','sys_file',10,'storage','','','',0,0,0,'sys_file_storage',1,''),('83acc6c62b6d7729717f151ba56aedf9','tt_content',119,'tx_gridelements_container','','','',0,0,0,'tt_content',137,''),('83b1e0e0e5b7cc0026daad5c2f26e400','tt_content',149,'tx_gridelements_children','','','',2,0,0,'tt_content',152,''),('84d42983377ed1d3017342f8350e4cd6','tt_content',40,'assets','','','',0,0,0,'sys_file_reference',71,''),('8652623c7f1ace8b3c61144f6933942f','sys_file',14,'metadata','','','',0,0,0,'sys_file_metadata',14,''),('86b5fee1c3596a9d205886eeaea21557','sys_file_reference',8,'uid_local','','','',0,0,0,'sys_file',16,''),('884f65b2b4eba536b77fa6870aaa4204','sys_category',2,'items','','','',3,0,0,'pages',14,''),('887034d4d4bf1589bf2c02523cb62755','tt_content',124,'tx_gridelements_children','','','',2,0,0,'tt_content',125,''),('88cc77060e175c09dd9a5a9b3c716afa','sys_file_reference',13,'uid_local','','','',0,1,0,'sys_file',10,''),('8996e7877cd3e1ee1200f3369b845608','tt_content',135,'header_link','','typolink','bb44e57bff88008063e2f18021dff253:0',-1,0,0,'pages',28,''),('89974301978837c6ed3fa642b4b3fa52','tt_content',87,'records','','','',1,1,0,'tt_content',86,''),('89c885b837d7bcc38d5086a767476b85','tt_content',38,'assets','','','',0,0,0,'sys_file_reference',69,''),('8ade47ec976d7ce2cc2905356475f6ee','sys_file_reference',50,'uid_local','','','',0,0,0,'sys_file',10,''),('8ae37fa487b84d36767f4c6f7f8c1e75','tt_content',66,'header_link','','typolink','7c10ba6c7c7a6038c548c3d062fb309b:0',-1,0,0,'pages',2,''),('8ba01abd3ce16dc75b77e3c3906d7713','fe_users',1,'usergroup','','','',0,0,0,'fe_groups',1,''),('8bea9f8fb4d6ac0c16b05c60549e4dea','sys_category',1,'items','','','',3,0,0,'pages',14,''),('8c4a24a91e6612dfbb0d2c1bcfcc603b','sys_file_reference',48,'link','','typolink','656349693d21688dd94f555ffe750558:0',-1,1,0,'_STRING',0,'http://www.pixelant.se'),('8c6691224df53a6124e041c2ae6a9751','tt_content',136,'header_link','','typolink','77d2862fbe57fcbeaaf87ecab8ea65dd:0',-1,0,0,'pages',28,''),('8d0511abd8479fc2b1b15d381e04b0b2','sys_file_reference',58,'uid_local','','','',0,0,0,'sys_file',33,''),('8df5d36b1f9823201f4362936d169256','tt_content',57,'pages','','','',0,0,0,'pages',21,''),('8e4fc8b6364c36bd48fdb22bda227c9a','tt_content',33,'assets','','','',0,0,0,'sys_file_reference',72,''),('8ecab0a9320b49682fc7b52ea3d5ff24','tt_content',50,'media','','','',0,0,0,'sys_file_reference',40,''),('8f50521f25a404e06318d7254764ef32','tt_content',112,'records','','','',0,1,0,'tt_content',115,''),('90c2e4cba30b03228de143de1929ac3b','sys_file_reference',51,'uid_local','','','',0,0,0,'sys_file',10,''),('9133a6bf0c7918c0e6131c9fb7613fe6','sys_file_reference',22,'uid_local','','','',0,0,0,'sys_file',10,''),('91ec1f627b12b3a75d886fcf5ecd50f1','sys_file_reference',68,'uid_local','','','',0,0,0,'sys_file',10,''),('92ea70571222f382e617cfebbfa40af3','sys_file_reference',6,'uid_local','','','',0,1,0,'sys_file',17,''),('947060900d5c5a281f7ced59490384e7','tt_content',35,'assets','','','',0,0,0,'sys_file_reference',66,''),('9481be550c3819630e73ba084bdfc86f','sys_category',7,'items','','','',0,0,0,'tx_news_domain_model_news',1,''),('94cc8fcd7e04d1faf8afdf965251674d','sys_category',1,'items','','','',0,0,0,'pages',15,''),('9629ac957f0742ffca62e2d0fa91edb5','sys_file_reference',78,'uid_local','','','',0,0,0,'sys_file',10,''),('96de68eb81dab9880504b97ccc0f1641','sys_file_reference',28,'uid_local','','','',0,0,0,'sys_file',12,''),('96ee825dbeb344ca1a861340d7210bb1','tt_content',61,'selected_categories','','','',0,0,0,'sys_category',2,''),('972f93124f0d1ce1c03764ac38c6c32e','tt_content',116,'records','','','',0,1,0,'tt_content',110,''),('9855f43d1e76beb773a975df24f5cc32','tt_content',132,'tx_gridelements_children','','','',0,0,0,'tt_content',136,''),('98e5796d4c23137a5b70493459604c82','tt_content',169,'tx_gridelements_children','','','',2,0,0,'tt_content',160,''),('99a18366a6096a8e156cdb7272472404','tt_content',50,'media','','','',2,0,0,'sys_file_reference',83,''),('99d65c052fe0641da6cfe641171f888f','sys_category',1,'items','','','',2,0,0,'pages',17,''),('9a7657b3987875e44eb0664aa199484b','tt_content',15,'records','','','',0,0,0,'tt_content',14,''),('9aaee41aa35436b74f243b73cec610c5','sys_file_reference',88,'uid_local','','','',0,0,0,'sys_file',10,''),('9bdb33f96abf5b0dcb209ee29ae6cab9','sys_file_reference',57,'uid_local','','','',0,0,0,'sys_file',10,''),('9c3e3fe94a01e586449e7826d4115f05','pages',66,'content_from_pid','','','',0,0,0,'pages',44,''),('9c93549015ef7ee5ccaa2eddd65e4284','tt_content',83,'pi_flexform','sDEF/lDEF/settings.categories/vDEF/','','',1,0,0,'sys_category',6,''),('9cb6d7496314d3976d3095aa94b2a6bd','tt_content',155,'tx_gridelements_container','','','',0,0,0,'tt_content',154,''),('9cd80a9c0236207b1f1bc51a80358927','tt_content',155,'pages','','','',0,0,0,'pages',21,''),('9cfc395e06c14a91a251beecf98e6d35','sys_language',3,'static_lang_isocode','','','',0,0,0,'static_languages',96,''),('9e79f3c83c50062c6c385877a67211b2','sys_file_reference',38,'uid_local','','','',0,1,0,'sys_file',11,''),('a047e2027cc197b659f9ad158209ae8d','tt_content',126,'tx_gridelements_container','','','',0,0,0,'tt_content',124,''),('a07a5f9f64cc3ccc12923f325b888708','tt_content',121,'records','','','',0,1,0,'tt_content',118,''),('a0a9bb4827b0da291f547b56b8e73b5a','tt_content',154,'tx_gridelements_children','','','',1,0,0,'tt_content',155,''),('a0faf7e5beaddb004a05b42beed9fda6','tt_content',86,'pi_flexform','sDEF/lDEF/settings.saveFolder/vDEF/','','',0,1,0,'pages',52,''),('a1380e842a58dff23e22a6b830ed9337','tt_content',149,'tx_gridelements_children','','','',3,0,0,'tt_content',154,''),('a19fb380489d958892a021ba73aea99d','tt_content',43,'assets','','','',1,0,0,'sys_file_reference',77,''),('a22c3be93d47575dfcd82cdd7481a277','sys_file_reference',87,'uid_local','','','',0,0,0,'sys_file',10,''),('a3e3ba34a8dbe8b7e0574a6ecfa5e4d1','tt_content',41,'media','','','',0,0,0,'sys_file_reference',21,''),('a4d7e550ed92172c5757dc0e1176ce98','tt_content',47,'media','','','',3,0,0,'sys_file_reference',33,''),('a5a435f9f6fef5073c79cd2ad513daa1','tt_content',128,'tx_gridelements_children','','','',1,0,0,'tt_content',130,''),('a5cb2a6c717199440b0f92e89b581c52','tt_content',14,'image','','','',2,0,0,'sys_file_reference',10,''),('a6e13975bce388f134494e31404c1b74','tt_content',168,'tx_gridelements_children','','','',1,0,0,'tt_content',149,''),('a9b047f630223321374b2b9c83644ad7','tt_content',69,'tx_gridelements_container','','','',0,0,0,'tt_content',138,''),('aa773624574a6055a5b6a7c71a624bc4','pages',68,'content_from_pid','','','',0,0,0,'pages',44,''),('abc4cfa4e7840c9845519bd8b1f5a38b','sys_file_reference',14,'uid_local','','','',0,0,0,'sys_file',10,''),('abcdfcc0e8a78665947cddca0aa358b3','sys_file_reference',48,'uid_local','','','',0,1,0,'sys_file',15,''),('ac4c73b2b459ac196c9367780b72d6bb','tt_content',77,'records','','','',0,0,0,'tt_content',71,''),('ad1968cd1287305dd7eea6a08aa1b306','sys_category',5,'items','','','',8,0,0,'tt_content',24,''),('ad68487b818c3b33d666583c1e0d2aef','tt_content',50,'media','','','',3,0,0,'sys_file_reference',42,''),('ae30fa10059c8767cb676d88bbb87a69','sys_category',1,'items','','','',4,0,0,'pages',18,''),('afa36eb4539976f356e23b8f2794ddde','sys_file_reference',77,'uid_local','','','',0,0,0,'sys_file',10,''),('afbb68285bd665e1fa13dd72810c38eb','tt_content',159,'tx_gridelements_container','','','',0,0,0,'tt_content',150,''),('afd4b6d6da706b0d3c586acb95b141ba','sys_file_reference',46,'uid_local','','','',0,1,0,'sys_file',13,''),('b07ef21578ca3a4c91649357184ff65a','sys_file_reference',34,'uid_local','','','',0,0,0,'sys_file',10,''),('b16cfa4f0e0e4899e1c8bfbc904ed274','sys_file_reference',12,'uid_local','','','',0,1,0,'sys_file',10,''),('b23265ce3d5d9c562a95b9caca4ec86b','sys_file_reference',8,'link','','typolink','d7fb6e8afc72143faa81cc1558696db7:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('b23a6b0ea3ec5dadd78b88e188ed0ce0','tt_content',48,'media','','','',3,0,0,'sys_file_reference',36,''),('b2936936d46d410a7305f0513f18c810','tt_content',49,'media','','','',1,0,0,'sys_file_reference',38,''),('b3708dde5b1f0909d7df149c3536d28d','tt_content',49,'media','','','',3,0,0,'sys_file_reference',39,''),('b37dc14f9ea5c77c15da3cd3cadbc486','tt_content',103,'records','','','',0,1,0,'tt_content',106,''),('b3e430f828978bd192dd8abec21afc2b','sys_file_reference',16,'link','','typolink','bd5caf98ba37f75de0db946e3f37a6d0:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('b5b1aa03c603b433760ee8f08274e95d','tt_content',100,'header_link','','typolink','624ea71ea297ec8ad93c0fe2f8aefeb9:0',-1,1,0,'pages',13,''),('b6570bc538627282a10efdc47c17a704','sys_category',5,'items','','','',3,0,0,'tt_content',19,''),('b8a79879d933c524d122dab3bc201c3d','tt_content',43,'media','','','',0,0,0,'sys_file_reference',23,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('b9010c68216670e9fd2141ba954c5d45','tt_content',129,'header_link','','typolink','f9c4a49aad7cb2a49bf584035ca2e4ac:0',-1,0,0,'pages',29,''),('b9f77b574a1cb61d588738df39fb3397','tt_content',42,'assets','','','',0,0,0,'sys_file_reference',75,''),('bc558ac31823dd3789aa826ebfcc9dbf','sys_file_reference',10,'uid_local','','','',0,0,0,'sys_file',18,''),('bd2d9d595e6007f4df1bac82943932f1','tt_content',87,'records','','','',0,1,0,'tt_content',88,''),('bdd2a6eb99d51bfe8bf78a1a6cc34092','pages_language_overlay',1,'sys_language_uid','','','',0,0,0,'sys_language',1,''),('be0ae53270b1ff5cecf1abf79f807081','tx_news_domain_model_news',1,'tags','','','',0,0,0,'tx_news_domain_model_tag',1,''),('c02423b1de5d34d2e764699a8b462ca1','tt_content',107,'header_link','','typolink','6ea55d1cb78e73a8c215520d85c48d72:0',-1,1,0,'pages',29,''),('c1c01c5fa422eb3237263b4e21d264c1','sys_file_reference',74,'uid_local','','','',0,0,0,'sys_file',10,''),('c1cb882ae227f7113596c078710a776d','sys_file_reference',18,'link','','typolink','93bda4d9182e76bb9e6448aa4048ee97:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c34e88909791af7bc1cb480b322905e6','tt_content',128,'tx_gridelements_children','','','',2,0,0,'tt_content',129,''),('c39dc8e12a0f1cebc173e3edaf8e8d01','sys_category',5,'items','','','',6,0,0,'tt_content',22,''),('c46d6327e48ec41bc6c421e423e519ce','sys_file_reference',61,'uid_local','','','',0,0,0,'sys_file',33,''),('c5ed9a92a4191987a4353e610638af67','tt_content',71,'records','','','',0,0,0,'tt_content',72,''),('c62c562aa9827f416e0fe93094a83ee0','sys_file',18,'metadata','','','',0,0,0,'sys_file_metadata',18,''),('c679f8288cc0b08d611fccdf5813ff3f','tt_content',148,'tx_gridelements_children','','','',2,0,0,'tt_content',151,''),('c7643f7358ce9dfdb61ba82e3e2431a8','tt_content',42,'media','','','',0,0,0,'sys_file_reference',22,''),('c7b1b1e8b378c5313b829ae119114eb0','tt_content',11,'header_link','','typolink','adafeb4f3f807f83ff10be190c93ddae:0',-1,0,0,'_STRING',0,'http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html'),('c837eac0d393e59ae0f86a08eded4149','sys_file_reference',89,'uid_local','','','',0,0,0,'sys_file',10,''),('c880f339d61677ba1ff7a8e890af4771','tt_content',119,'header_link','','typolink','4490e5ab7fdaf4ff7b02c9db2f164bfe:0',-1,0,0,'pages',12,''),('c95c3664601f2b65fd72eaa9e65e5c69','tt_content',10,'header_link','','typolink','7d3904a70910aa09f8c9f03d40a0c1bc:0',-1,0,0,'_STRING',0,'http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html'),('c9921e939b3ee14b81a2a4e79b6fc20b','tt_content',48,'media','','','',2,0,0,'sys_file_reference',85,''),('c9e8ae21953496dcce76bbc6a6fac819','sys_file_reference',40,'uid_local','','','',0,0,0,'sys_file',10,''),('ca029cd8f94f5cf03d249cc14f13348c','tt_content',55,'pages','','','',0,0,0,'pages',3,''),('cacc3a35933558be997785702437b13f','tt_content',69,'image','','','',4,0,0,'sys_file_reference',62,''),('cb06d35543b9e25088b0605d83bfe82e','tt_content',134,'header_link','','typolink','86bf283d4042300705742b8de72e1288:0',-1,0,0,'pages',28,''),('cbac63e729da7ecd2f90b99a76c0fbf6','tt_content',150,'tx_gridelements_children','','','',0,0,0,'tt_content',171,''),('cbf229aa5824604ff22d4da48bf049f8','tt_content',81,'pi_flexform','additional/lDEF/settings.listPid/vDEF/','','',0,0,0,'pages',66,''),('cc7cbd0b0555a891aaa41ba19ba88cbc','tt_content',126,'header_link','','typolink','a79a8f471e0a54d3e65da95fd41a69e3:0',-1,0,0,'pages',13,''),('cdbf14f328772625aa0b1e640233b0bc','tt_content',70,'header_link','','typolink','4e67c87ed4e6990230a119e737569974:0',-1,0,0,'pages',2,''),('cdbf70dea7601e20bd03bf581637cb45','tt_content',131,'header_link','','typolink','791384493df21193b2b37168d4d29253:0',-1,0,0,'pages',29,''),('ce445441a80ae33ab532b4e0753bb45a','sys_file_reference',5,'uid_local','','','',0,1,0,'sys_file',16,''),('ce7d119890ceb40c1a9b62313a5b88a2','sys_file_reference',11,'link','','typolink','01259f8d85fe8139c6bd5af4f423e91f:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('cf16d3864041a993e2941a7a0a780d03','tt_content',156,'tx_gridelements_container','','','',0,0,0,'tt_content',154,''),('cf2a907b6da7498600eed3f0a422a8e7','sys_file_reference',69,'uid_local','','','',0,0,0,'sys_file',10,''),('cf6312cbf99fd3ebc85f84d3841a97e8','tt_content',73,'records','','','',0,0,0,'tt_content',74,''),('cf8ad2d828ae5336751a6e62c1e4ed08','sys_file_reference',30,'uid_local','','','',0,0,0,'sys_file',14,''),('cfaa9a94d4378f608ac27a5551b3fff4','sys_file',8,'metadata','','','',0,0,0,'sys_file_metadata',8,''),('cfb5e6b2ee567c32646785ee722e1c54','tt_content',52,'pages','','','',1,0,0,'pages',18,''),('cff7ccc1ba82411e27e9f71bd271c626','tt_content',84,'records','','','',0,0,0,'tt_content',69,''),('d05bd5ed987aebd3f484d963d404f365','tt_content',35,'media','','','',0,0,0,'sys_file_reference',15,''),('d090cfb2eb0e3b26d130816e3b622065','tt_content',14,'image','','','',1,0,0,'sys_file_reference',9,''),('d1c401a7a223300e9b2e4df51153a43e','tt_content',41,'assets','','','',0,0,0,'sys_file_reference',74,''),('d1fc148c1413f6ee7cadc975b2842679','sys_file_reference',84,'uid_local','','','',0,0,0,'sys_file',33,''),('d2033864168b97f8bc5d682e08e16996','sys_file_reference',5,'link','','typolink','2578db15c90cec610cfa911edf8edf06:0',-1,1,0,'_STRING',0,'http://www.mff.se'),('d39c34adee6f81e91464cf782f02fe46','sys_file_reference',60,'link','','typolink','e7c07c7591b997030d7b4e1640ff0b41:0',-1,0,0,'pages',1,''),('d3cbe45e68627b416b63e46dc6463e82','tt_content',149,'tx_gridelements_children','','','',0,0,0,'tt_content',157,''),('d5d3eae7badda5140f51a0a09522b4ec','tt_content',43,'media','','','',1,0,0,'sys_file_reference',24,''),('d618fc3cf4d5d5d5408ecc6c50a517c5','tt_content',170,'tx_gridelements_container','','','',0,0,0,'tt_content',169,''),('d78f2458afb2f580f676a1166476f874','sys_file_reference',1,'uid_local','','','',0,1,0,'sys_file',5,''),('d890947717e631f21277bc2c199b87d2','tt_content',78,'pi_flexform','sDEF/lDEF/settings.startingpoint/vDEF/','','',0,0,0,'pages',41,''),('d8c14583dc46fb096aafe5b7cd60afc8','tt_content',83,'pi_flexform','sDEF/lDEF/settings.categories/vDEF/','','',0,0,0,'sys_category',7,''),('d92841d4a9765c97c77ffa669f548a64','sys_file_reference',2,'uid_local','','','',0,1,0,'sys_file',6,''),('d96c4452552527eb2a634dfdd1447487','tt_content',158,'pi_flexform','sDEF/lDEF/settings.userGroup/vDEF/','','',0,0,0,'fe_groups',2,''),('da2d20e1151400a48b1a58dfe5e39481','tt_content',121,'records','','','',1,1,0,'tt_content',117,''),('da35df57d58cca39484613d513cb3d8a','tt_content',43,'media','','','',3,0,0,'sys_file_reference',26,''),('dae68c20fea4461099e3e7073e76f0ea','tt_content',160,'tx_gridelements_container','','','',0,0,0,'tt_content',169,''),('ddb5069b31438f0aa7967903275b0d9f','sys_file_reference',58,'link','','typolink','1ef2310be17cec2b4fd439c58bb56483:0',-1,0,0,'pages',1,''),('ddd7e9ba7b966dc1c1ca52983cc12c1d','tt_content',86,'pi_flexform','sDEF/lDEF/settings.userGroup/vDEF/','','',0,1,0,'fe_groups',2,''),('dec3b521c2dffaf1e9d664a6a02a3d3a','sys_file_reference',44,'uid_local','','','',0,1,0,'sys_file',11,''),('dede68f3ee1404046e804a2ea7eedb14','tt_content',130,'media','','','',0,0,0,'sys_file_reference',88,''),('df3a4f4916f15edb33f3ef6706f6d62e','tx_news_domain_model_news',2,'fal_media','','','',0,0,0,'sys_file_reference',57,''),('dfc640fc76c57e45e2354bce8ebdbbb6','sys_file_reference',39,'uid_local','','','',0,0,0,'sys_file',16,''),('e037c61b68a984b748819567a41e97d2','sys_category',5,'items','','','',2,0,0,'tt_content',18,''),('e05c232d4abc8eca4072fb53f72c73bc','tt_content',130,'tx_gridelements_container','','','',0,0,0,'tt_content',128,''),('e10a00b7c0a111e0430f5e7826f37983','sys_category',6,'items','','','',0,0,0,'tx_news_domain_model_news',2,''),('e2709a918dde4b83d6094f84c1294740','tt_content',92,'pages','','','',0,1,0,'pages',21,''),('e2fde884133f0e5cd519c243da107889','tt_content',118,'records','','','',0,1,0,'tt_content',120,''),('e3807166b4665b22759e960014395272','tt_content',62,'selected_categories','','','',0,0,0,'sys_category',5,''),('e4347e0528ffb091f3791c425df919cc','tt_content',43,'assets','','','',5,0,0,'sys_file_reference',81,''),('e585b734052ade09dd52147fc2dae694','tt_content',148,'tx_gridelements_children','','','',1,0,0,'tt_content',169,''),('e5a461b98592e41291646f6218d5f08f','tt_content',54,'pages','','','',0,0,0,'pages',3,''),('e63f3832576c4991a55eeee8a3ff9b91','tt_content',74,'media','','','',0,0,0,'sys_file_reference',51,''),('e6fcb81dc4f5943b726a47d3125b078f','tt_content',12,'header_link','','typolink','47deb102ad2756b3286a362768071f79:0',-1,0,0,'_STRING',0,'http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html'),('e75ab8e70ded5dd0d78023faa4d95837','tt_content',95,'records','','','',2,1,0,'tt_content',99,''),('e7f9487faf08acd6df6ab7379665f09c','tt_content',135,'tx_gridelements_container','','','',0,0,0,'tt_content',132,''),('e8b85cabca8db05d59ed93ef2bb5b62f','sys_file_reference',49,'uid_local','','','',0,1,0,'sys_file',10,''),('eae80c8f074f9bea74f82f6d7145e6b2','sys_file',20,'storage','','','',0,0,0,'sys_file_storage',1,''),('eb3e92bcc09b674f2a9295672df8d20f','sys_file_reference',85,'uid_local','','','',0,0,0,'sys_file',33,''),('ecb443762f83ffdfad57942befe0daf7','tt_content',90,'pages','','','',0,1,0,'pages',54,''),('ed296fc1e686b960062787483862c4a6','tt_content',136,'tx_gridelements_container','','','',0,0,0,'tt_content',132,''),('ed4e2ee50c81d84c14b65cc08b56a560','sys_file_reference',47,'uid_local','','','',0,1,0,'sys_file',14,''),('ed99e40f8fce41fb4ee6a6857ee69a62','pages',67,'content_from_pid','','','',0,0,0,'pages',44,''),('edacb5d55c52af6066d3c9e3a3854ead','sys_file_reference',6,'link','','typolink','d724454f370e70e432c8ceb2d2dd4a07:0',-1,1,0,'_STRING',0,'http://www.mff.se'),('ee2c9d62a82ca736dd1db18b0afc54b8','sys_file',40,'storage','','','',0,0,0,'sys_file_storage',1,''),('eeab9776a7527c7feb5f4afbea4b4d7a','sys_file',15,'metadata','','','',0,0,0,'sys_file_metadata',15,''),('efbf4ee0399b7430a91faf244267fc12','tt_content',43,'assets','','','',6,0,0,'sys_file_reference',82,''),('f1692b71aa3d145013ce9e4d5fa733f5','tt_content',104,'records','','','',0,1,0,'tt_content',107,''),('f26c7c0b1a0a573937d8fb1d07b82856','sys_file_reference',82,'uid_local','','','',0,0,0,'sys_file',10,''),('f2a78dcd0b8c85065dc4c6dd5338bafd','sys_file',41,'storage','','','',0,0,0,'sys_file_storage',1,''),('f2b7c742ad17f3ac950cb80b2e1c077b','tt_content',168,'tx_gridelements_children','','','',0,0,0,'tt_content',148,''),('f30e18c8a89c967bf5227272139314ff','tt_content',47,'media','','','',1,0,0,'sys_file_reference',32,''),('f340b20241976fc6eaa27debc5812453','sys_file',6,'metadata','','','',0,0,0,'sys_file_metadata',6,''),('f4a101df34f2097d11e49c7f496f4922','sys_file_reference',19,'uid_local','','','',0,0,0,'sys_file',10,''),('f52f229ed276f7ae3efcdb5e1aef59a7','tt_content',34,'media','','','',0,0,0,'sys_file_reference',14,''),('f5d2e427abb312c769e282877f300e2e','sys_language',1,'static_lang_isocode','','','',0,0,0,'static_languages',115,''),('f62e50959e99cd002bb987d26ee45e4e','sys_file_reference',59,'uid_local','','','',0,0,0,'sys_file',30,''),('f6b0bef80d3d0cbbd2ddd65b5c67f42f','tt_content',130,'header_link','','typolink','40e8661cd1f2371a8b75a40f7e80af35:0',-1,0,0,'pages',29,''),('f6cb70c3d49c73e37dcaadab89e556eb','tt_content',152,'tx_gridelements_container','','','',0,0,0,'tt_content',149,''),('f746776f8b8fd909d63d7bad062691ec','sys_file_reference',55,'uid_local','','','',0,0,0,'sys_file',16,''),('f74d4e2508f8f9c2d1f45ff3fabd7a32','sys_file_reference',37,'uid_local','','','',0,0,0,'sys_file',10,''),('f7f8e305856a849b9c9d330affa75a77','tt_content',106,'header_link','','typolink','9dba2330acea725fe83c55aacaefd921:0',-1,1,0,'pages',29,''),('f800ec19b359c65306a2969dbcdf8a76','tx_news_domain_model_news',2,'tags','','','',0,0,0,'tx_news_domain_model_tag',2,''),('f89ffbf402ae841d41f108e12b6f0bcd','tt_content',166,'image','','','',0,0,0,'sys_file_reference',90,''),('f8e06e795d36e0f3a5db68c6b21f8119','sys_file_reference',25,'uid_local','','','',0,0,0,'sys_file',18,''),('f95da85d1ff0bfd6935da56687373bef','tt_content',95,'records','','','',0,1,0,'tt_content',96,''),('fa137f446b3d38fd281ed787f6d17939','tt_content',164,'tx_gridelements_container','','','',0,1,0,'tt_content',149,''),('fa1f14a9fa63d8dc573a546fb905b2b4','tt_content',99,'records','','','',0,1,0,'tt_content',102,''),('fa55dfc0550fd94c2105743ef168c9b2','tt_content',128,'tx_gridelements_children','','','',0,0,0,'tt_content',131,''),('fa9b4bae3a867c0130f1dc116157d737','tt_content',102,'header_link','','typolink','d6b78fa082d8f41fa62ce137d48c3b8b:0',-1,1,0,'pages',13,''),('fabd0e27977282c30ee25977936d013f','sys_file_reference',17,'link','','typolink','f03b03e95dc655149da621b230f9be50:0',-1,0,0,'_STRING',0,'http://www.mff.se'),('fb01e46576d05718d09b03fdf82d3a45','pages',9,'shortcut','','','',0,0,0,'pages',25,''),('fbba8b792068b76d217bed638c58a3c3','sys_file',33,'metadata','','','',0,0,0,'sys_file_metadata',33,''),('fbcba172cf7df0f1cf43ca1eed8f5ff0','tt_content',52,'pages','','','',0,0,0,'pages',16,''),('fbf891f9ca287a524b37da24ebb34cc1','tt_content',161,'tx_gridelements_container','','','',0,0,0,'tt_content',169,''),('fc71c4e01e951315b4b1c8ae543ede84','sys_file',31,'storage','','','',0,0,0,'sys_file_storage',1,''),('fc7a399c00126ec8dcbc331b4d5ab4ad','sys_file_reference',3,'uid_local','','','',0,1,0,'sys_file',7,''),('fc897c79417c3a95fc74a2565830cab7','sys_file_reference',4,'uid_local','','','',0,1,0,'sys_file',8,''),('fce500a5fe512a761907ded2bbd15fba','tt_content',43,'media','','','',6,0,0,'sys_file_reference',29,''),('fd93119cf640607cb97e061b129980ae','sys_file_reference',33,'uid_local','','','',0,0,0,'sys_file',16,''),('fe2dfacee578f7f8c74a3b4222687ae4','tt_content',116,'records','','','',2,1,0,'tt_content',112,''),('ff64912ce372ae7edfd8b50d794afc0a','sys_file_reference',43,'uid_local','','','',0,1,0,'sys_file',19,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (2,'extensionDataImport','typo3conf/ext/dyncss/ext_tables_static+adt.sql','i:1;'),(3,'extensionDataImport','typo3conf/ext/dyncss_less/ext_tables_static+adt.sql','i:1;'),(4,'extensionDataImport','typo3conf/ext/yaml_parser/ext_tables_static+adt.sql','i:1;'),(5,'extensionDataImport','typo3conf/ext/static_info_tables/ext_tables_static+adt.sql','i:1;'),(6,'extensionDataImport','typo3conf/ext/themes/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/theme_core/ext_tables_static+adt.sql','i:1;'),(9,'extensionDataImport','typo3conf/ext/extension_tools/ext_tables_static+adt.sql','i:1;'),(11,'core','formSessionToken:1','s:64:\"8f0064f82514719f718d8242e4b66dbfa66e2386de26b490ebbc6d12975dce06\";'),(12,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql','i:1;'),(13,'extensionDataImport','typo3conf/ext/theme_t3kit/ext_tables_static+adt.sql','i:1;'),(14,'extensionDataImport','typo3conf/ext/pxa_newsletter_subscription/ext_tables_static+adt.sql','i:1;'),(16,'core','formProtectionSessionToken:1','s:64:\"10ecc4363067b889a6122f5b6a30518452af8f73543168efb19804159c72dd17\";'),(17,'tx_solr','servers','a:5:{s:3:\"1|0\";a:9:{s:13:\"connectionKey\";s:3:\"1|0\";s:13:\"rootPageTitle\";s:4:\"Home\";s:11:\"rootPageUid\";s:1:\"1\";s:10:\"solrScheme\";s:4:\"http\";s:8:\"solrHost\";s:9:\"localhost\";s:8:\"solrPort\";s:4:\"8080\";s:8:\"solrPath\";s:18:\"/solr/t3kit_en_GB/\";s:8:\"language\";i:0;s:5:\"label\";s:67:\"Home (pid: 1, language: default) - localhost:8080/solr/t3kit_en_GB/\";}s:3:\"1|1\";a:9:{s:13:\"connectionKey\";s:3:\"1|1\";s:13:\"rootPageTitle\";s:4:\"Home\";s:11:\"rootPageUid\";s:1:\"1\";s:10:\"solrScheme\";s:4:\"http\";s:8:\"solrHost\";s:9:\"localhost\";s:8:\"solrPort\";s:4:\"8080\";s:8:\"solrPath\";s:18:\"/solr/t3kit_sv_SE/\";s:8:\"language\";i:1;s:5:\"label\";s:67:\"Home (pid: 1, language: Svenska) - localhost:8080/solr/t3kit_sv_SE/\";}s:3:\"1|2\";a:9:{s:13:\"connectionKey\";s:3:\"1|2\";s:13:\"rootPageTitle\";s:4:\"Home\";s:11:\"rootPageUid\";s:1:\"1\";s:10:\"solrScheme\";s:4:\"http\";s:8:\"solrHost\";s:9:\"localhost\";s:8:\"solrPort\";s:4:\"8080\";s:8:\"solrPath\";s:18:\"/solr/t3kit_de_DE/\";s:8:\"language\";i:2;s:5:\"label\";s:67:\"Home (pid: 1, language: Deutsch) - localhost:8080/solr/t3kit_de_DE/\";}s:3:\"1|3\";a:9:{s:13:\"connectionKey\";s:3:\"1|3\";s:13:\"rootPageTitle\";s:4:\"Home\";s:11:\"rootPageUid\";s:1:\"1\";s:10:\"solrScheme\";s:4:\"http\";s:8:\"solrHost\";s:9:\"localhost\";s:8:\"solrPort\";s:4:\"8080\";s:8:\"solrPath\";s:18:\"/solr/t3kit_ro_RO/\";s:8:\"language\";i:3;s:5:\"label\";s:68:\"Home (pid: 1, language: Română) - localhost:8080/solr/t3kit_ro_RO/\";}s:3:\"1|4\";a:9:{s:13:\"connectionKey\";s:3:\"1|4\";s:13:\"rootPageTitle\";s:4:\"Home\";s:11:\"rootPageUid\";s:1:\"1\";s:10:\"solrScheme\";s:4:\"http\";s:8:\"solrHost\";s:9:\"localhost\";s:8:\"solrPort\";s:4:\"8080\";s:8:\"solrPath\";s:18:\"/solr/t3kit_uk_UA/\";s:8:\"language\";i:4;s:5:\"label\";s:80:\"Home (pid: 1, language: Українська) - localhost:8080/solr/t3kit_uk_UA/\";}}'),(18,'tx_scheduler','lastRun','a:3:{s:5:\"start\";i:1453278398;s:3:\"end\";i:1453278400;s:4:\"type\";s:6:\"manual\";}'),(19,'extensionDataImport','typo3conf/ext/realurl_404_multilingual/ext_tables_static+adt.sql','i:1;');
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
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_swedish_ci,
  `constants` text COLLATE utf8_swedish_ci,
  `config` text COLLATE utf8_swedish_ci,
  `nextLevel` varchar(5) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_swedish_ci,
  `basedOn` tinytext COLLATE utf8_swedish_ci,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_themes_skin` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `tx_realurl` (`root`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1456493457,256,1441893030,1,'t3kit','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/Static/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:form/Configuration/TypoScript/,EXT:news/Configuration/TypoScript,EXT:pxa_newsletter_subscription/Configuration/TypoScript,EXT:gridelements/Configuration/TypoScript/,EXT:solr/Configuration/TypoScript/Solr/,EXT:solr/Configuration/TypoScript/Examples/IndexQueueNews/,EXT:seo_basics/Configuration/TypoScript,EXT:themes/Configuration/TypoScript','themes.languages.available = 2,3,1,4\r\nthemes.configuration.isDevelopment = 1\r\n\r\nthemes.configuration.features.enableSolr = 1','# Include setupts files from fileadmin/templates/Configuration/TypoScript\r\n<INCLUDE_TYPOSCRIPT: source=\"DIR:fileadmin/templates/Configuration/TypoScript/\" extensions=\"setupts\">\r\n','','','',0,0,0,0,'theme_t3kit',0),(2,41,0,0,0,'',0,0,0,0,0,1444133057,1000000000,1444132909,1,'+ext','',0,0,0,0,0,NULL,NULL,NULL,'',NULL,'',1,0,0,0,'',0),(3,47,0,0,0,'',0,0,0,0,0,1453370846,256,1453370831,1,'+ext','',0,0,0,0,0,NULL,NULL,'page.includeJSFooter.ga_prettify = https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?skin=sons-of-obsidian','',NULL,'',0,0,0,0,'',0);
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
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_swedish_ci,
  `bodytext` mediumtext COLLATE utf8_swedish_ci,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text COLLATE utf8_swedish_ci,
  `pages` text COLLATE utf8_swedish_ci,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` smallint(6) NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `menu_type` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `select_key` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_swedish_ci,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_swedish_ci,
  `accessibility_title` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text COLLATE utf8_swedish_ci,
  `category_field` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_themes_responsive` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_themes_behaviour` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_themes_variants` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_themes_enforceequalcolumnheight` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_themes_columnsettings` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_themes_buttoncontent` int(11) NOT NULL DEFAULT '0',
  `tx_themes_icon` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `bullets_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploads_description` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uploads_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  `wrapper` int(11) unsigned NOT NULL DEFAULT '0',
  `wrapper_margin_top` int(11) unsigned NOT NULL DEFAULT '0',
  `wrapper_margin_bottom` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,2,0,0,0,'',0,0,0,0,0,0,1442563821,1441893403,1,0,1,1000000000,'html','','','    <div class=\"img-slider swiper-container js__img-slider\">\r\n      <div class=\"swiper-wrapper img-slider__wrp\">\r\n        <div class=\"swiper-slide img-slider__slide\">\r\n          <div class=\"img-slider__slide-wrp\">\r\n            <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/temp-carousel-1.jpg\" class=\"swiper-lazy img-responsive img-slider__img\">\r\n            <div class=\"swiper-lazy-preloader\"></div>\r\n            <div class=\"img-slider__caption\">\r\n              <h3 class=\"img-slider__caption-sub-header\">Lorem ipsum</h3>\r\n              <h2 class=\"img-slider__caption-header\">Dolor sit amet</h2>\r\n              <p class=\"img-slider__caption-p js__img-slider__caption-p\">Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum. Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum. Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum.\r\n                Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum.</p>\r\n              <a class=\"img-slider__caption-link\" href=\"#\">Call to action</a> \r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"swiper-slide img-slider__slide\">\r\n          <div class=\"img-slider__slide-wrp\">\r\n            <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/temp-carousel-2.jpg\" class=\"swiper-lazy img-responsive img-slider__img\">\r\n            <div class=\"swiper-lazy-preloader\"></div>\r\n            <div class=\"img-slider__caption\">\r\n              <h3 class=\"img-slider__caption-sub-header\">Lorem ipsum</h3>\r\n              <h2 class=\"img-slider__caption-header\">Dolor sit amet</h2>\r\n              <p class=\"img-slider__caption-p js__img-slider__caption-p\">Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum. Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum.</p>\r\n              <a class=\"img-slider__caption-link\" href=\"#\">Call to action</a> \r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"swiper-slide img-slider__slide\">\r\n          <div class=\"img-slider__slide-wrp\">\r\n            <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/temp-carousel-3.jpg\" class=\"swiper-lazy img-responsive img-slider__img\">\r\n            <div class=\"swiper-lazy-preloader\"></div>\r\n            <div class=\"img-slider__caption\">\r\n              <h3 class=\"img-slider__caption-sub-header\">Lorem ipsum</h3>\r\n              <h2 class=\"img-slider__caption-header\">Dolor sit amet</h2>\r\n              <p class=\"img-slider__caption-p js__img-slider__caption-p\">Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum. Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum.</p>\r\n              <a class=\"img-slider__caption-link\" href=\"#\">Call to action</a> \r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <!-- Add Pagination -->\r\n      <div class=\"js__img-slider__pagination img-slider__pagination swiper-pagination swiper-pagination-white img-slider__pagination\"></div>\r\n\r\n      <!-- Navigation -->\r\n      <div class=\"js__img-slider__btn-next img-slider__btn-next swiper-button-next swiper-button-white\"></div>\r\n      <div class=\"js__img-slider__btn-prev img-slider__btn-prev swiper-button-prev swiper-button-white\"></div>\r\n    </div>',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,3,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(2,2,0,0,0,'',0,0,0,0,0,0,1446212750,1441893431,1,0,0,1000000000,'html','','','    <!-- pages -->\r\n\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-4\">\r\n          <div class=\"big-icon-text-btn bigIcon\">\r\n            <span class=\"big-icon-text-btn__icon icons icon-now_widgets\"></span> \r\n            <h3 class=\"big-icon-text-btn__header\">Content element 1</h3>\r\n            <p class=\"big-icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"big-icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"big-icon-text-btn bigIcon\">\r\n            <span class=\"big-icon-text-btn__icon icons icon-devices\"></span> \r\n            <h3 class=\"big-icon-text-btn__header\">Content element 1</h3>\r\n            <p class=\"big-icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"big-icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"big-icon-text-btn bigIcon\">\r\n            <span class=\"big-icon-text-btn__icon icons icon-equalizer\"></span> \r\n            <h3 class=\"big-icon-text-btn__header\">Content element 1</h3>\r\n            <p class=\"big-icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"big-icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-4\">\r\n          <div class=\"img-text-link \">\r\n            <img class=\"img-text-link__img img-responsive\" src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/foto1.jpg\" alt=\"foto\">\r\n            <h3 class=\"img-text-link__header\">Content element 2</h3>\r\n            <p class=\"img-text-link__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"img-text-link__link\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"img-text-link \">\r\n            <img class=\"img-text-link__img img-responsive\" src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/foto1.jpg\" alt=\"foto\">\r\n            <h3 class=\"img-text-link__header\">Content element 2</h3>\r\n            <p class=\"img-text-link__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"img-text-link__link\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"img-text-link \">\r\n            <img class=\"img-text-link__img img-responsive\" src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/foto1.jpg\" alt=\"foto\">\r\n            <h3 class=\"img-text-link__header\">Content element 2</h3>\r\n            <p class=\"img-text-link__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"img-text-link__link\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-4\">\r\n          <div class=\"icon-text-btn \">\r\n            <h3 class=\"icon-text-btn__header\">\r\n              <span class=\"icon-text-btn__icon icons icon-access_time\"></span>  Content element 1\r\n            </h3>\r\n            <p class=\"icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"icon-text-btn \">\r\n            <h3 class=\"icon-text-btn__header\">\r\n              <span class=\"icon-text-btn__icon icons icon-settings\"></span>  Content element 1\r\n            </h3>\r\n            <p class=\"icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"icon-text-btn \">\r\n            <h3 class=\"icon-text-btn__header\">\r\n              <span class=\"icon-text-btn__icon icons icon-school\"></span>  Content element 1\r\n            </h3>\r\n            <p class=\"icon-text-btn__p\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent\r\n              taciti sociosqu.</p>\r\n            <a class=\"icon-text-btn__link btn btn-default\" title=\"Read more\" href=\"#\">Read more</a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6\">\r\n          <blockquote class=\"quote\">\r\n            <div class=\"quote__body\">\r\n              <p class=\"quote__body-p\">Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals</p>\r\n              <span class=\"quote__body-icon icons icon-t3-quoteMark\"></span> \r\n            </div>\r\n            <footer class=\"quote__footer\">\r\n              <span class=\"quote__footer-name\">John Doe,</span> \r\n              <cite class=\"quote__footer-title\" title=\"VP of Marketing\">VP of Marketing,\r\n                <a class=\"quote__footer-link\" href=\"\">Royal Trader</a> \r\n              </cite>\r\n            </footer>\r\n          </blockquote>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <blockquote class=\"quote\">\r\n            <div class=\"quote__body\">\r\n              <p class=\"quote__body-p\">Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals</p>\r\n              <span class=\"quote__body-icon icons icon-t3-quoteMark\"></span> \r\n            </div>\r\n            <footer class=\"quote__footer\">\r\n              <span class=\"quote__footer-name\">John Doe,</span> \r\n              <cite class=\"quote__footer-title\" title=\"VP of Marketing\">VP of Marketing,\r\n                <a class=\"quote__footer-link\" href=\"\">Royal Trader</a> \r\n              </cite>\r\n            </footer>\r\n          </blockquote>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-12\">\r\n          <div class=\"divider\">\r\n            <hr>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-12\">\r\n          <div class=\"logo-carousel swiper-container js__logo-carousel\">\r\n            <div class=\"swiper-wrapper logo-carousel__wrp\">\r\n              <div class=\"swiper-slide logo-carousel__slide\">\r\n                <a class=\"logo-carousel__link\" href=\"\">\r\n                  <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/logo-fireball.png\" class=\"swiper-lazy img-responsive logo-carousel__img\">\r\n                  <div class=\"swiper-lazy-preloader\"></div>\r\n                </a> \r\n              </div>\r\n              <div class=\"swiper-slide logo-carousel__slide\">\r\n                <a class=\"logo-carousel__link\" href=\"\">\r\n                  <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/logo-moonlight.png\" class=\"swiper-lazy img-responsive logo-carousel__img\">\r\n                  <div class=\"swiper-lazy-preloader\"></div>\r\n                </a> \r\n              </div>\r\n              <div class=\"swiper-slide logo-carousel__slide\">\r\n                <a class=\"logo-carousel__link\" href=\"\">\r\n                  <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/logo.png\" class=\"swiper-lazy img-responsive logo-carousel__img\">\r\n                  <div class=\"swiper-lazy-preloader\"></div>\r\n                </a> \r\n              </div>\r\n              <div class=\"swiper-slide logo-carousel__slide\">\r\n                <a class=\"logo-carousel__link\" href=\"\">\r\n                  <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/logo-save-the-nature.png\" class=\"swiper-lazy img-responsive logo-carousel__img\">\r\n                  <div class=\"swiper-lazy-preloader\"></div>\r\n                </a> \r\n              </div>\r\n              <div class=\"swiper-slide logo-carousel__slide\">\r\n                <a class=\"logo-carousel__link\" href=\"\">\r\n                  <img data-src=\"/typo3conf/ext/theme_core/Resources/Public/temp/images/logo-royal-trader.png\" class=\"swiper-lazy img-responsive logo-carousel__img\">\r\n                  <div class=\"swiper-lazy-preloader\"></div>\r\n                </a> \r\n              </div>\r\n            </div>\r\n            <div class=\"js__logo-carousel__btn-next logo-carousel__btn-next swiper-button-next\"></div>\r\n            <div class=\"js__logo-carousel__btn-prev logo-carousel__btn-prev swiper-button-prev\"></div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1443527655,1441894422,1,0,0,1000000000,'text','pablo','','',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"colPos\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(4,1,0,0,0,'',0,0,0,0,0,0,1443527653,1441894628,1,0,0,1000000000,'textpic','','','',1,0,17,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"colPos\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(5,2,0,0,0,'',0,0,0,0,0,0,1443528874,1442407667,1,0,0,1000000000,'contentElementSlider','Content Element Slider',NULL,NULL,3,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,3,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"wrapperClass\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:11:\"pi_flexform\";N;s:5:\"image\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(6,2,0,0,0,'',0,0,0,0,0,0,1442563846,1442563765,1,0,0,1000000000,'bigIconTextButton','Lorem ipsum dolor',NULL,'Etiam fringilla arcu sed dui dapibus finibus. Vivamus vitae erat lobortis, venenatis eros sit amet, suscipit ex. Etiam non tortor in turpis aliquam efficitur. Duis placerat viverra rutrum. Sed eleifend turpis non turpis vestibulum, sed faucibus augue dictum. Sed posuere libero et felis imperdiet fringilla. Fusce molestie libero nulla, non hendrerit nibh tincidunt id.',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'Lorem ipsum','0','http://www.mff.se _blank',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"wrapperClass\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:8:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(7,13,0,0,0,'',0,0,0,0,0,0,1447256116,1442564098,1,0,0,256,'bigIconTextButton','Lorem ipsum dolor sit amet',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fringilla arcu sed dui dapibus finibus. Vivamus vitae erat lobortis, venenatis eros sit amet, suscipit ex. Etiam non tortor in turpis aliquam efficitur. Duis placerat viverra rutrum. Sed eleifend turpis non turpis vestibulum, sed faucibus augue dictum. Sed posuere libero et felis imperdiet fringilla. ',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'Lorem ipsum','','http://www.mff.se _blank',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">insert_comment</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(8,14,0,0,0,'',0,0,0,0,0,0,1443698962,1443527545,1,0,0,256,'table','Table - Layout: Default',NULL,'	Clubs	P	W	D	L	F	A	+/-	Pts\r\n1	Real Madrid CF Real Madrid CF	1	1	0	0	4	0	4	3\r\n2	Paris Saint-Germain Paris Saint-Germain	1	1	0	0	2	0	2	3\r\n3	Malmö FF Malmö FF	1	0	0	1	0	2	-2	0\r\n4	FC Shakhtar Donetsk FC Shakhtar Donetsk	1	0	0	1	0	4	-4	0',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html',0,'0','0','','',1,0,NULL,0,'','',1443477600,0,0,0,0,NULL,'',0,'',0,'a:1:{s:21:\"table_header_position\";N;}',NULL,'','Group A',9,0,1,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(9,14,0,0,0,'',0,0,0,0,0,0,1443527857,1443527639,1,0,0,1000000000,'table','test',NULL,'C1|C2\r\nA|B',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'','',124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(10,14,0,0,0,'',0,0,0,0,0,8,1454174634,1443527853,1,0,0,512,'table','Table - Layout: Striped',NULL,'	Clubs	P	W	D	L	F	A	+/-	Pts\r\n1	Real Madrid CF Real Madrid CF	2	2	0	0	6	0	6	6\r\n2	Paris Saint-Germain Paris Saint-Germain	2	2	0	0	5	0	5	6\r\n3	Malmö FF Malmö FF	2	0	0	2	0	4	-4	0\r\n4	FC Shakhtar Donetsk FC Shakhtar Donetsk	2	0	0	2	0	7	-7	0',0,0,0,2,0,0,'11',0,0,'','',0,0,0,'','','http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html',0,'0','0','','',1,0,'',0,'','',1443564000,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:15:\"table_delimiter\";N;s:15:\"table_enclosure\";N;s:13:\"table_caption\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:4:\"cols\";N;s:21:\"table_header_position\";N;s:11:\"table_tfoot\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','','Group A',9,34,1,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(11,14,0,0,0,'',0,0,0,0,0,8,1454174655,1443528057,1,0,0,768,'table','Table - Layout: Striped Bordered',NULL,'	Clubs	P	W	D	L	F	A	+/-	Pts\r\n1	Club Atlético de Madrid Club Atlético de Madrid	1	1	0	0	2	0	2	3\r\n2	SL Benfica SL Benfica	1	1	0	0	2	0	2	3\r\n3	Galatasaray AŞ Galatasaray AŞ	1	0	0	1	0	2	-2	0\r\n4	FC Astana FC Astana	1	0	0	1	0	2	-2	0',0,0,0,2,0,0,'12',0,0,'','',0,0,0,'','','http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html',0,'0','0','','',1,0,'',0,'','',1443477600,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:15:\"table_delimiter\";N;s:15:\"table_enclosure\";N;s:13:\"table_caption\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:4:\"cols\";N;s:21:\"table_header_position\";N;s:11:\"table_tfoot\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','','Group C',9,0,1,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(12,14,0,0,0,'',0,0,0,0,0,8,1454174664,1443528540,1,0,0,1024,'table','Table - Layout: Striped Bordered Condensed',NULL,'	Clubs	P	W	D	L	F	A	+/-	Pts\r\n1	Sevilla FC Sevilla FC	1	1	0	0	3	0	3	3\r\n2	Juventus Juventus	1	1	0	0	2	1	1	3\r\n3	Manchester City FC Manchester City FC	1	0	0	1	1	2	-1	0\r\n4	VfL Borussia Mönchengladbach VfL Borussia Mönchengladbach	1	0	0	1	0	3	-3	0',0,0,0,2,0,0,'13',0,0,'','',0,0,0,'','','http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html',0,'0','0','','',1,0,'',0,'','',1443477600,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:15:\"table_delimiter\";N;s:15:\"table_enclosure\";N;s:13:\"table_caption\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:4:\"cols\";N;s:21:\"table_header_position\";N;s:11:\"table_tfoot\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','','Group D',9,0,1,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(13,14,0,0,0,'',0,0,0,0,0,8,1454174674,1443528584,1,0,0,1280,'table','Table - Layout: Bordered Condensed Hover',NULL,'	Clubs	P	W	D	L	F	A	+/-	Pts\r\n1	Bayer 04 Leverkusen Bayer 04 Leverkusen	1	1	0	0	4	1	3	3\r\n2	FC Barcelona FC Barcelona	1	0	1	0	1	1	0	1\r\n3	AS Roma AS Roma	1	0	1	0	1	1	0	1\r\n4	FC BATE Borisov FC BATE Borisov	1	0	0	1	1	4	-3	0',0,0,0,2,0,0,'14',0,0,'','',0,0,0,'','','http://www.uefa.com/uefachampionsleague/season=2016/standings/index.html',0,'0','0','','',1,0,'',0,'','',1443477600,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:15:\"table_delimiter\";N;s:15:\"table_enclosure\";N;s:13:\"table_caption\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:4:\"cols\";N;s:21:\"table_header_position\";N;s:11:\"table_tfoot\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','','Group E',9,0,1,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(14,1,0,0,0,'',0,0,0,0,0,5,1453379117,1443528797,1,0,0,5632,'contentElementSlider','Content Element Slider',NULL,NULL,3,0,0,2,0,0,'0',0,0,'','',0,0,3,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"wrapperClass\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:5:\"image\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(15,10,0,0,0,'',0,0,0,0,0,0,1444799854,1443528865,1,0,0,512,'shortcut','',NULL,NULL,0,0,0,2,0,0,'0',0,0,'14',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(16,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687004,1,0,0,256,'header','Layout 1 Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(17,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687014,1,0,0,512,'header','Layout 2 Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'2','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(18,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687029,1,0,0,768,'header','Layout 3 Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(19,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687042,1,0,0,1024,'header','Layout 4 Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(20,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687056,1,0,0,1280,'header','Layout 5 Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'5','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(21,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687082,1,0,0,1536,'header','Linked Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','http://www.mff.se _blank',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(22,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687121,1,0,0,1792,'header','Date Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',1443650400,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(23,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687144,1,0,0,2048,'header','Subheader Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'Nam iaculis nisi quis posuere gravida','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(24,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687179,1,0,0,2304,'header','Date Subheader Nam iaculis nisi quis posuere gravida',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'Nam iaculis nisi quis posuere gravida','','',0,'0','0','','',1,0,NULL,0,'','',1443564000,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,1,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(25,15,0,0,0,'',0,0,0,0,0,0,1443696220,1443687200,1,0,0,384,'div','Divider',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',0,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(26,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687222,1,0,0,640,'div','Divider (copy 1)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(27,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687232,1,0,0,896,'div','Divider (copy 2)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(28,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687242,1,0,0,1152,'div','Divider (copy 3)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(29,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687252,1,0,0,1408,'div','Divider (copy 4)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(30,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687262,1,0,0,1664,'div','Divider (copy 5)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(31,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687279,1,0,0,1920,'div','Divider (copy 6)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(32,15,0,0,0,'',0,0,0,0,0,25,1443696220,1443687296,1,0,0,2176,'div','Divider (copy 7)',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',0,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:10:\"categories\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(33,16,0,0,0,'',0,0,0,0,0,0,1452592027,1443687728,1,0,0,256,'textmedia','Nam iaculis nisi quis posuere gravida - In text, left',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,18,2,0,1,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(34,16,0,0,0,'',0,0,0,0,0,33,1452592042,1443687919,1,0,0,512,'textmedia','Nam iaculis nisi quis posuere gravida - In text, right',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,17,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(35,16,0,0,0,'',0,0,0,0,0,34,1452591943,1443687972,1,0,0,128,'textmedia','Nam iaculis nisi quis posuere gravida - Above, center',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,0,2,0,1,'0',0,0,'','',0,0,0,'','','',1,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(36,16,0,0,0,'',0,0,0,0,0,34,1452591961,1443688055,1,0,0,192,'textmedia','Nam iaculis nisi quis posuere gravida - Above, right',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,1,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(37,16,0,0,0,'',0,0,0,0,0,36,1452591977,1443688102,1,0,0,224,'textmedia','Nam iaculis nisi quis posuere gravida - Above, left',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,2,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(38,16,0,0,0,'',0,0,0,0,0,36,1452591987,1443688306,1,0,0,240,'textmedia','Nam iaculis nisi quis posuere gravida - Below, center',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,8,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(39,16,0,0,0,'',0,0,0,0,0,38,1452591997,1443688387,1,0,0,248,'textmedia','Nam iaculis nisi quis posuere gravida - Below, right',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,9,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(40,16,0,0,0,'',0,0,0,0,0,38,1452592015,1443688394,1,0,0,252,'textmedia','Nam iaculis nisi quis posuere gravida - Below, left',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,10,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(41,16,0,0,0,'',0,0,0,0,0,38,1452592056,1443688451,1,0,0,768,'textmedia','Nam iaculis nisi quis posuere gravida - Beside text, right',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,25,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(42,16,0,0,0,'',0,0,0,0,0,41,1452592069,1443688510,1,0,0,1024,'textmedia','Nam iaculis nisi quis posuere gravida - Beside text, left',NULL,'Duis sagittis, lorem in porttitor vestibulum, quam tellus venenatis velit, vitae aliquam mauris nunc vel justo. Donec vel consequat tortor. Etiam hendrerit id massa sit amet lobortis. Maecenas in risus quam. Pellentesque id libero vitae nibh feugiat porttitor eget id purus. Morbi accumsan volutpat orci, a ultricies lectus venenatis eget. Vivamus malesuada, ante id tempor bibendum, est quam tempor sem, in vulputate arcu metus a lectus. Ut lacinia non arcu a aliquet. Nam vitae justo velit. Donec sollicitudin dapibus est a mattis. Vivamus congue, magna sed aliquet lobortis, libero orci consequat quam, non dictum elit lorem ac erat. Vestibulum ac quam vel neque fringilla lacinia. Praesent est augue, consequat quis mauris sit amet, fermentum viverra turpis.\r\nNam iaculis nisi quis posuere gravida. Integer odio arcu, ullamcorper vitae lacus eget, tincidunt viverra nunc. In ultricies urna id magna molestie, nec dapibus mi pellentesque. Nulla lacus turpis, sodales vestibulum diam eu, vestibulum ultrices metus. Nunc et condimentum enim. Suspendisse placerat ligula non magna fringilla sodales. Proin vel malesuada orci. Fusce at tortor non lacus volutpat pharetra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris maximus orci auctor lacus porta, nec feugiat arcu viverra. Nunc dignissim, ex ut ultricies ultrices, sapien erat finibus est, eget aliquam libero lacus ac sem.',0,0,26,2,0,1,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,1,-2,'',0,0,0,0,0,0),(43,16,0,0,0,'',0,0,0,0,0,0,1452592231,1443688621,1,0,0,1280,'textmedia','Nam iaculis nisi quis posuere gravida, Multiple Media',NULL,'',0,150,0,3,0,8,'0',0,0,NULL,NULL,0,0,0,'','','',1,'0','0','','',1,0,NULL,0,'','',0,0,150,0,0,NULL,'',0,'',0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,6,-2,'',0,0,0,0,0,0),(44,17,0,0,0,'',0,0,0,0,0,0,1443689019,1443688985,1,0,0,256,'bullets','Unordered list (bullets)',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nInteger ut lorem consectetur, placerat lacus vulputate, rhoncus mi.\r\nQuisque a placerat nisl. Sed sem nisl, egestas in tellus sit amet, venenatis dictum tellus.\r\nCras leo orci, feugiat et laoreet ac, efficitur at metus.\r\nVivamus risus mi, commodo quis euismod at, porta finibus orci.\r\nAliquam in felis ut velit malesuada elementum et vel tortor.\r\nSed in viverra turpis. In hac habitasse platea dictumst.\r\nMaecenas iaculis ante quis ligula lacinia, a aliquam lectus ullamcorper.\r\nEtiam enim odio, suscipit ut aliquet nec, elementum eget nisi.\r\nEtiam et sodales ante.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:12:\"bullets_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(45,17,0,0,0,'',0,0,0,0,0,44,1443689054,1443689027,1,0,0,512,'bullets','Ordered list (numbers)',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nInteger ut lorem consectetur, placerat lacus vulputate, rhoncus mi.\r\nQuisque a placerat nisl. Sed sem nisl, egestas in tellus sit amet, venenatis dictum tellus.\r\nCras leo orci, feugiat et laoreet ac, efficitur at metus.\r\nVivamus risus mi, commodo quis euismod at, porta finibus orci.\r\nAliquam in felis ut velit malesuada elementum et vel tortor.\r\nSed in viverra turpis. In hac habitasse platea dictumst.\r\nMaecenas iaculis ante quis ligula lacinia, a aliquam lectus ullamcorper.\r\nEtiam enim odio, suscipit ut aliquet nec, elementum eget nisi.\r\nEtiam et sodales ante.',0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:12:\"bullets_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',1,0,0,0,0,-2,'',0,0,0,0,0,0),(46,17,0,0,0,'',0,0,0,0,0,44,1443689075,1443689031,1,0,0,768,'bullets','Definition list',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nInteger ut lorem consectetur, placerat lacus vulputate, rhoncus mi.\r\nQuisque a placerat nisl. Sed sem nisl, egestas in tellus sit amet, venenatis dictum tellus.\r\nCras leo orci, feugiat et laoreet ac, efficitur at metus.\r\nVivamus risus mi, commodo quis euismod at, porta finibus orci.\r\nAliquam in felis ut velit malesuada elementum et vel tortor.\r\nSed in viverra turpis. In hac habitasse platea dictumst.\r\nMaecenas iaculis ante quis ligula lacinia, a aliquam lectus ullamcorper.\r\nEtiam enim odio, suscipit ut aliquet nec, elementum eget nisi.\r\nEtiam et sodales ante.',0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',2,0,0,0,0,-2,'',0,0,0,0,0,0),(47,18,0,0,0,'',0,0,0,0,0,0,1452592317,1443689194,1,0,0,256,'uploads','Only filename + description and size',NULL,NULL,0,0,0,2,0,3,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,'',1,'','_blank',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:6:\"layout\";N;s:13:\"filelink_size\";N;s:19:\"uploads_description\";N;s:12:\"uploads_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,1,0,0,0,-2,'',0,0,0,0,0,0),(48,18,0,0,0,'',0,0,0,0,0,47,1452592333,1443689346,1,0,0,512,'uploads','Filename and file extension icon + description and size',NULL,NULL,0,0,0,2,0,3,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',1,'','_blank',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:6:\"layout\";N;s:13:\"filelink_size\";N;s:19:\"uploads_description\";N;s:12:\"uploads_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,1,1,0,0,-2,'',0,0,0,0,0,0),(49,18,0,0,0,'',0,0,0,0,0,48,1452592355,1443689398,1,0,0,768,'uploads','Filename and thumbnail (if possible) + description and size',NULL,NULL,0,0,0,2,0,3,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',1,'','_blank',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:6:\"layout\";N;s:13:\"filelink_size\";N;s:19:\"uploads_description\";N;s:12:\"uploads_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,1,2,0,0,-2,'',0,0,0,0,0,0),(50,18,0,0,0,'',0,0,0,0,0,47,1452592297,1443689471,1,0,0,128,'uploads','Only filename',NULL,NULL,0,0,0,2,0,3,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','_blank',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:6:\"layout\";N;s:13:\"filelink_size\";N;s:19:\"uploads_description\";N;s:12:\"uploads_type\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(51,18,0,0,0,'',0,0,0,0,0,0,1443689772,1443689703,1,0,0,64,'textmedia','File Link options',NULL,'File Link options so the file list &nbsp;can have different appearance.\r\n<ul><li>Checkbox: display description</li><li>Checkbox: display size</li><li>Selectbox with choises: Only filename,&nbsp;Filename and file extension icon and&nbsp;Filename and thumbnail (if possible).</li></ul>\r\nBelow are a few examples.',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:8:\"bodytext\";N;s:5:\"media\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(52,19,0,0,0,'',0,0,0,0,0,0,1443690586,1443690586,1,0,0,256,'menu','Menu of selected pages',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'16,18',0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(53,19,0,0,0,'',0,0,0,0,0,0,1443690626,1443690603,1,0,0,512,'menu','Menu of subpages of selected pages',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'3',0,0,0,'','','',0,'0','1','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(54,19,0,0,0,'',0,0,0,0,0,0,1443690746,1443690678,1,0,0,768,'menu','Menu of subpages of selected pages including abstracts',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'3',0,0,0,'','','',0,'0','4','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(55,19,0,0,0,'',0,0,0,0,0,0,1443690984,1443690978,1,0,0,1024,'menu','Menu of subpages of selected pages including sections',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'3',0,0,0,'','','',0,'0','7','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(56,19,0,0,0,'',0,0,0,0,0,0,1443691079,1443691073,1,0,0,1280,'menu','Sitemap',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'0','2','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(57,19,0,0,0,'',0,0,0,0,0,0,1443691268,1443691103,1,0,0,1536,'menu','Sitemaps of selected pages',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'21',0,0,0,'','','',0,'0','8','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(58,19,0,0,0,'',0,0,0,0,0,0,1443691321,1443691297,1,0,0,1792,'menu','Section index (page content marked for section menus)',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'16',0,0,0,'','','',0,'0','3','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(59,19,0,0,0,'',0,0,0,0,0,0,1443691385,1443691363,1,0,0,2048,'menu','Recently updated pages',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'1',0,0,0,'','','',0,'0','5','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(60,19,0,0,0,'',0,0,0,0,0,0,1443691425,1443691417,1,0,0,2304,'menu','Related pages (based on keywords)',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'0','6','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(61,19,0,0,0,'',0,0,0,0,0,0,1443695998,1443691629,1,0,0,2560,'menu','Pages for selected categories',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'0','categorized_pages','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:19:\"selected_categories\";N;s:14:\"category_field\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}','2,1','categories',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(62,19,0,0,0,'',0,0,0,0,0,0,1443696236,1443696021,1,0,0,2816,'menu','Content elements for selected categories',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'0','categorized_content','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:19:\"selected_categories\";N;s:14:\"category_field\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}','5','categories',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(63,25,0,0,0,'',0,0,0,0,0,0,1443696569,1443696569,1,0,0,256,'login','Login form',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\">26</value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(64,27,0,0,0,'',0,0,0,0,0,0,1443696865,1443696642,1,0,0,256,'mailform','Mail form',NULL,'enctype = multipart/form-data\nmethod = post\nprefix = tx_form\nconfirmation = 1\npostProcessor {\n	1 = mail\n	1 {\n		recipientEmail = info@mycompany.com\n		senderEmail = contactform@mycompany.com\n		subject = Contact me form\n	}\n}\n10 = TEXTLINE\n10 {\n	name = name\n	placeholder = Enter your name\n	label {\n		value = Name\n	}\n}\n20 = TEXTAREA\n20 {\n	cols = 40\n	name = 3\n	rows = 3\n	label {\n		value = Message\n	}\n}\n30 = SUBMIT\n30 {\n	name = 4\n	value = Submit form\n}\n',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(65,27,0,0,0,'',0,0,0,0,0,0,1443697188,1443697170,1,0,0,1000000000,'themes_buttoncontent_pi1','Button group',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',2,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(66,28,0,0,0,'',0,0,0,0,0,0,1444046688,1444046569,1,0,0,256,'iconTextButton','Cras ac laoreet sapien',NULL,'Donec accumsan mi eu mauris elementum, a dapibus turpis varius. Ut commodo vestibulum porta. Maecenas porttitor augue mi, at efficitur elit ornare eget. Cras at urna id odio aliquet aliquet. Aenean in felis non ipsum pellentesque faucibus. Vestibulum et dolor pulvinar, vehicula leo eu, porta massa. Sed iaculis pulvinar metus quis pretium. Integer elementum dolor sit amet felis sollicitudin egestas.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'Morbi interdum','','2',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">loop</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(67,29,0,0,0,'',0,0,0,0,0,0,1444050797,1444049156,1,0,0,256,'imageTextLink','Vestibulum ante',NULL,'Donec a efficitur diam, ac aliquam quam. Duis a dolor nisi. Fusce non sagittis ex, non porta purus. Integer rutrum risus in dui dapibus, ut viverra mauris molestie. Suspendisse quam lacus, convallis et aliquam vel, sollicitudin ac risus. Pellentesque blandit tempor ornare. Duis eget est non est condimentum molestie.',0,0,0,2,0,1,'0',0,0,NULL,NULL,0,0,0,'Sed malesuada','','2',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:5:\"media\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(68,30,0,0,0,'',0,0,0,0,0,0,1444109873,1444107905,1,0,0,1000000000,'logoCarousel','This is a logo carousel',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'Visit our sponsors:','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(69,1,0,0,0,'',0,0,0,0,0,0,1454174282,1444107961,1,0,0,512,'logoCarousel','This is a logo carousel',NULL,NULL,5,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'Visit our sponsors:','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,138,0,0,0,0),(70,12,0,0,0,'',0,0,0,0,0,0,1444116744,1444111460,1,0,0,256,'quote','John Doe, VP of Marketing',NULL,'Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'Royal Trader','','2',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(71,39,0,0,0,'',0,0,0,0,0,0,1444132700,1444119200,1,0,0,256,'shortcut','News',NULL,NULL,0,0,0,2,0,0,'0',0,0,'tt_content_72,tt_content_78',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:7:\"records\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(72,39,0,0,0,'',0,0,0,0,0,0,1444119305,1444119305,1,0,0,512,'textmedia','This could be a list of news',NULL,'Cras ac laoreet sapien. Nulla sodales varius diam in volutpat. Integer id tincidunt mauris. Suspendisse aliquam risus in elementum sodales. Nulla porta sapien non nibh pretium, ac imperdiet tortor interdum. Aliquam viverra, purus ut maximus tincidunt, tortor dolor fermentum dui, et euismod mauris purus quis libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec accumsan mi eu mauris elementum, a dapibus turpis varius. Ut commodo vestibulum porta. Maecenas porttitor augue mi, at efficitur elit ornare eget. Cras at urna id odio aliquet aliquet. Aenean in felis non ipsum pellentesque faucibus. Vestibulum et dolor pulvinar, vehicula leo eu, porta massa. Sed iaculis pulvinar metus quis pretium. Integer elementum dolor sit amet felis sollicitudin egestas. ',0,0,17,2,0,1,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(73,40,0,0,0,'',0,0,0,0,0,0,1444119421,1444119350,1,0,0,256,'shortcut','Facebook',NULL,NULL,0,0,0,2,0,0,'0',0,0,'74',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:7:\"records\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(74,40,0,0,0,'',0,0,0,0,0,0,1444119400,1444119400,1,0,0,512,'textmedia','Some header',NULL,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus facilisis lectus et ornare lobortis. Phasellus ac tortor lacinia, luctus dolor eu, consectetur enim. Sed ligula nibh, consectetur id gravida id, maximus et nibh. Quisque molestie sem ut elit placerat, at blandit diam finibus. Sed malesuada ex metus, vel egestas libero vulputate at. Nullam efficitur nibh quis accumsan vulputate. Donec a efficitur diam, ac aliquam quam. Duis a dolor nisi. Fusce non sagittis ex, non porta purus. Integer rutrum risus in dui dapibus, ut viverra mauris molestie. Suspendisse quam lacus, convallis et aliquam vel, sollicitudin ac risus. Pellentesque blandit tempor ornare. Duis eget est non est condimentum molestie.',0,0,18,2,0,1,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(75,31,0,0,0,'',0,0,0,0,0,0,1454174555,1444119479,1,0,0,256,'tabs','Tabs example, layout tab',NULL,NULL,0,0,0,2,0,0,'0',0,0,'tt_content_71,tt_content_73',NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(76,31,0,0,0,'',0,0,0,0,0,75,1454174533,1444121272,1,0,0,512,'tabs','Tabs example, layout pills',NULL,NULL,0,0,0,2,0,0,'11',0,0,'tt_content_71,tt_content_73','',0,0,0,'','','',0,'100','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(77,32,0,0,0,'',0,0,0,0,0,0,1444122561,1444122561,1,0,0,256,'accordion','Accordion (Collapsible)','',NULL,0,0,0,2,0,0,'0',0,0,'71,73',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"accordionMode\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(78,39,0,0,0,'',0,0,0,0,0,0,1444132667,1444132667,1,0,0,384,'list','News list for startpage',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list</value>\n                </field>\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">41</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(79,42,0,0,0,'',0,0,0,0,0,0,1444133106,1444133084,1,0,0,256,'list','news article',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;detail</value>\n                </field>\n                <field index=\"settings.singleNews\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.previewHiddenRecords\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(80,44,0,0,0,'',0,0,0,0,0,0,1457701568,1444133440,1,0,0,256,'list','','\"PageId for single news display\" is set on this content element.',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\">or</value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\">42</value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:18:\"wrapper_margin_top\";N;s:21:\"wrapper_margin_bottom\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(81,44,0,0,0,'',0,0,0,0,0,0,1447913989,1444133458,1,0,0,128,'list','News date menu','Set list view to sub-page \"Date\" because there is a realurl_conf fixedPostVars for that page id, which will make sub-pages name a part of the realurl path.',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,1,'','','',0,'3','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.dateField\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.previewHiddenRecords\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;dateMenu</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\">66</value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(82,44,0,0,0,'',0,0,0,0,0,0,1453210031,1444133578,1,0,0,192,'list','News tag menu','Set list view to sub-page \"Tag\" because there is a realurl_conf fixedPostVars for that page id, which will make sub-pages name a part of the realurl path.',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,1,'','','',0,'3','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">41</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Tag-&gt;list</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\">67</value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(83,44,0,0,0,'',0,0,0,0,0,0,1447914058,1444134463,1,0,0,224,'list','Category list','Set list view to sub-page \"Category\" because there is a realurl_conf fixedPostVars for that page id, which will make sub-pages name a part of the realurl path.',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,1,'','','',0,'3','0','news_pi1','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\">7,6</value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Category-&gt;list</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\">68</value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(84,30,0,0,0,'',0,0,0,0,0,0,1444800015,1444799973,1,0,0,384,'shortcut','LogoCarousel',NULL,NULL,0,0,0,2,0,0,'0',0,0,'tt_content_69',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:7:\"records\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(85,50,0,0,0,'',0,0,0,0,0,0,1454924999,1445321014,1,0,0,1000000000,'textmedia','About Company AB',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumdod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no strud exercitation ullamco laboris nisi ut.\r\n\r\nAenean orci urna',0,0,17,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:28:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:8:\"bodytext\";N;s:5:\"media\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(86,51,0,0,0,'',0,0,0,0,0,0,1454924989,1445340875,1,0,0,1000000000,'list','[Subscribe to newsletter plugin]',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,'',0,0,0,'','','',0,'100','0','pxanewslettersubscription_subscription','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.enableEmailConfirm\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.formFieldNameIsMandatory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.forceFormView\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.displayUnsubscribeButton\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.saveFolder\">\n                    <value index=\"vDEF\">52</value>\n                </field>\n                <field index=\"settings.userGroup\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"settings.confirmPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.formFieldNameHidden\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"confirmMail\">\n            <language index=\"lDEF\">\n                <field index=\"settings.confirmMailSenderName\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSenderEmail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailReplyTo\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubject\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubscribeBody\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailUnsubscribeBody\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubscribeInstruction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailUnsubscribeInstruction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailFooter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(87,51,0,0,0,'',0,0,0,0,0,0,1454924989,1445341206,1,0,0,1000000000,'shortcut','Container for newsletter registration to use in footer, then we can combine two content elements \"into one\"',NULL,NULL,0,0,0,2,0,0,'0',1,0,'tt_content_88,tt_content_86',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:7:\"records\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(88,51,0,0,0,'',0,0,0,0,0,0,1454924989,1445341250,1,0,0,1000000000,'textmedia','Subscribe to newsletter',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumdod tempor incididunt ut labore et dolore magna aliqua. ',0,0,17,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(89,53,0,0,0,'',0,0,0,0,0,0,1454924994,1445341361,1,0,0,1000000000,'menu','',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,'21',0,0,0,'','','',0,'4','1','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(90,58,0,0,0,'',0,0,0,0,0,0,1454924985,1445446377,1,0,0,1000000000,'menu','',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,'54',0,0,0,'','','',0,'0','1','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(91,53,0,0,0,'',0,0,0,0,0,0,1454924994,1445446430,1,0,0,1000000000,'header','Quick links',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(92,53,0,0,0,'',0,0,0,0,0,89,1454924994,1445446499,1,0,0,1000000000,'menu','',NULL,NULL,0,0,0,2,0,0,'0',1,0,'','21',0,0,0,'','','',0,'4','1','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:9:\"menu_type\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(93,1,0,0,0,'',0,0,0,0,0,0,1447261372,1446055383,1,0,0,1000000000,'html','',NULL,'    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6\">\r\n          <blockquote class=\"quote\">\r\n            <div class=\"quote__body\">\r\n              <p class=\"quote__body-p\">Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals</p>\r\n              <span class=\"quote__body-icon icons icon-t3-quoteMark\"></span> \r\n            </div>\r\n            <footer class=\"quote__footer\">\r\n              <span class=\"quote__footer-name\">John Doe,</span> \r\n              <cite class=\"quote__footer-title\" title=\"VP of Marketing\">VP of Marketing,\r\n                <a class=\"quote__footer-link\" href=\"\">Royal Trader</a> \r\n              </cite>\r\n            </footer>\r\n          </blockquote>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <blockquote class=\"quote\">\r\n            <div class=\"quote__body\">\r\n              <p class=\"quote__body-p\">Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals</p>\r\n              <span class=\"quote__body-icon icons icon-t3-quoteMark\"></span> \r\n            </div>\r\n            <footer class=\"quote__footer\">\r\n              <span class=\"quote__footer-name\">John Doe,</span> \r\n              <cite class=\"quote__footer-title\" title=\"VP of Marketing\">VP of Marketing,\r\n                <a class=\"quote__footer-link\" href=\"\">Royal Trader</a> \r\n              </cite>\r\n            </footer>\r\n          </blockquote>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-12\">\r\n          <hr class=\"ce-div\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n\r\n',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(94,1,0,0,0,'',0,0,0,0,0,0,1447251468,1447250564,1,0,0,1000000000,'container','Structured content elements','',NULL,0,0,0,2,0,0,'0',1,0,'',NULL,0,0,0,'Subheader of structured content element','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(95,1,0,0,0,'',0,0,0,0,0,0,1452762318,1447250621,1,0,0,1000000000,'container','Structured content elements','',NULL,0,0,0,2,0,0,'1',1,0,'tt_content_96,tt_content_98,tt_content_99',NULL,0,0,0,'Subheader of structured content element','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(96,62,0,0,0,'',0,0,0,0,0,0,1452763536,1447251307,1,0,0,1000000000,'column','Column 1','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_100',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(97,62,0,0,0,'',0,0,0,0,0,0,1447257979,1447251339,1,0,0,1000000000,'textmedia','Some content','','First content in first column :) ?',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(98,62,0,0,0,'',0,0,0,0,0,0,1452763536,1447255164,1,0,0,1000000000,'column','Column 2','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_101',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(99,62,0,0,0,'',0,0,0,0,0,98,1452763536,1447255221,1,0,0,1000000000,'column','Column 3','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_102','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(100,62,0,0,0,'',0,0,0,0,0,0,1452763536,1447258057,1,0,0,1000000000,'bigIconTextButton','Content element 1',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'Read more','','13',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">now_widgets</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:17:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(101,62,0,0,0,'',0,0,0,0,0,100,1452763536,1447258075,1,0,0,1000000000,'bigIconTextButton','Content element 1',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,'','',0,0,0,'Read more','','13',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">devices</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(102,62,0,0,0,'',0,0,0,0,0,100,1452763536,1447258109,1,0,0,1000000000,'bigIconTextButton','Content element 1',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,'','',0,0,0,'Read more','','13',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">bars</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(103,63,0,0,0,'',0,0,0,0,0,0,1452763531,1447258638,1,0,0,1000000000,'column','Column 1','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_106',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(104,63,0,0,0,'',0,0,0,0,0,0,1452763531,1447258653,1,0,0,1000000000,'column','Column 2','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_107',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(105,63,0,0,0,'',0,0,0,0,0,0,1452763531,1447258669,1,0,0,1000000000,'column','Column 3','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_108',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(106,63,0,0,0,'',0,0,0,0,0,0,1452763531,1447258801,1,0,0,1000000000,'imageTextLink','Content element 2',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',1,0,NULL,NULL,0,0,0,'Read more','','29',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(107,63,0,0,0,'',0,0,0,0,0,106,1452763531,1447258824,1,0,0,1000000000,'imageTextLink','Content element 2',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',1,0,'','',0,0,0,'Read more','','29',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(108,63,0,0,0,'',0,0,0,0,0,106,1452763531,1447258856,1,0,0,1000000000,'imageTextLink','Content element 2',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',1,0,'','',0,0,0,'Read more','','29',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:5:\"media\";N;s:6:\"layout\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(109,1,0,0,0,'',0,0,0,0,0,0,1452762536,1447258970,1,0,0,1000000000,'container','3 Columns \"Content 2\"','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_103,tt_content_104,tt_content_105',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(110,64,0,0,0,'',0,0,0,0,0,0,1452763525,1447260486,1,0,0,1000000000,'column','Column 1','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_113',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(111,64,0,0,0,'',0,0,0,0,0,0,1452763525,1447260499,1,0,0,1000000000,'column','Column 2','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_114',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(112,64,0,0,0,'',0,0,0,0,0,0,1452763525,1447260513,1,0,0,1000000000,'column','Column 3','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_115',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(113,64,0,0,0,'',0,0,0,0,0,0,1452763525,1447260598,1,0,0,1000000000,'iconTextButton','Content 3',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'Read more','','28',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">access_time</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(114,64,0,0,0,'',0,0,0,0,0,113,1452763525,1447260607,1,0,0,1000000000,'iconTextButton','Content 3',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,'','',0,0,0,'Read more','','28',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">settings</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(115,64,0,0,0,'',0,0,0,0,0,113,1452763525,1447260611,1,0,0,1000000000,'iconTextButton','Content 3',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',1,0,'','',0,0,0,'Read more','','28',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">school</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:9:\"subheader\";N;s:11:\"header_link\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(116,1,0,0,0,'',0,0,0,0,0,0,1452762851,1447260750,1,0,0,1000000000,'container','3 columns of Content 3','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_110,tt_content_111,tt_content_112',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(117,65,0,0,0,'',0,0,0,0,0,0,1452763519,1447260840,1,0,0,1000000000,'column','Column 1','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_119',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">6</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(118,65,0,0,0,'',0,0,0,0,0,0,1452763519,1447260857,1,0,0,1000000000,'column','Column 2','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_120',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"colxs\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colsm\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"colmd\">\n                    <value index=\"vDEF\">6</value>\n                </field>\n                <field index=\"collg\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:7:\"records\";N;s:14:\"rowDescription\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(119,1,0,0,0,'',0,0,0,0,0,0,1452865809,1447260920,1,0,0,1792,'quote','John Doe, VP of Marketing',NULL,'Top service. It’s nice to come back. Thank you for the support, efficient and fast. You are true professionals',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'Royal trader','','12',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,137,0,0,0,0),(120,1,0,0,0,'',0,0,0,0,0,119,1452865809,1447260932,1,0,0,768,'quote','',NULL,'EVOLUTION CONTINUES\r\n... with 7LTS',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'GET IT NOW - it\'s better than ever!','','http://typo3.org/news/article/announcing-typo3-cms-7-lts/ _blank',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,137,1,0,0,0),(121,1,0,0,0,'',0,0,0,0,0,0,1452763139,1447261264,1,0,0,1000000000,'container','The quotes','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_118,tt_content_117',NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(122,69,0,0,0,'',0,0,0,0,0,0,1448015762,1448013358,1,0,0,256,'list','go_map_ext - KML feed \"Overview map of latest disaster alerts\"','The go_map_ext Google Map using KML feed and simple \"Styled Map\".',NULL,0,0,0,2,0,0,'0',0,0,NULL,'',0,0,0,'','','',0,'100','0','gomapsext_show','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.map\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(123,69,0,0,0,'',0,0,0,0,0,0,1448013651,1448013651,1,0,0,128,'textmedia','Overview map of latest disaster alerts','','Provided by <link http://www.gdacs.org/ _blank - GDACS>GDACS</link> through their KML feed.',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(124,1,0,0,0,'',0,0,0,0,0,0,1454174174,1452757703,1,0,0,4096,'gridelements_pi1','Three column layout',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"columns_md\">\n                    <value index=\"vDEF\">col-md-4#col-md-4#col-md-4</value>\n                </field>\n                <field index=\"columns_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_3_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:5:\"media\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv3ColumnGrid',3,0,0,0,0,0),(125,1,0,0,0,'',0,0,0,0,0,0,1452865734,1452758098,1,0,0,3072,'bigIconTextButton','Icon text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'Read More','','13',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">now_widgets</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,124,0,0,0,0),(126,1,0,0,0,'',0,0,0,0,0,125,1452865734,1452758222,1,0,0,2304,'bigIconTextButton','Icon text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'Read More','','13',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">devices</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,124,1,0,0,0),(127,1,0,0,0,'',0,0,0,0,0,125,1452865734,1452758266,1,0,0,1024,'bigIconTextButton','Icon text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'Read More','','13',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">bars</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,124,2,0,0,0),(128,1,0,0,0,'',0,0,0,0,0,0,1454174205,1452762347,1,0,0,4352,'gridelements_pi1','Three column layout',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"columns_md\">\n                    <value index=\"vDEF\">col-md-4#col-md-4#col-md-4</value>\n                </field>\n                <field index=\"columns_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_3_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:5:\"media\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv3ColumnGrid',3,0,0,0,0,0),(129,1,0,0,0,'',0,0,0,0,0,0,1452865764,1452762422,1,0,0,3328,'imageTextLink','Image text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',0,0,NULL,NULL,0,0,-1,'Read more','','29',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,128,0,0,0,0),(130,1,0,0,0,'',0,0,0,0,0,129,1452865764,1452762450,1,0,0,2560,'imageTextLink','Image text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',0,0,'','',0,0,-1,'Read more','','29',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,128,1,0,0,0),(131,1,0,0,0,'',0,0,0,0,0,129,1452865764,1452762453,1,0,0,1280,'imageTextLink','Image text and link',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,1,'0',0,0,'','',0,0,-1,'Read more','','29',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"xmlTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,128,2,0,0,0),(132,1,0,0,0,'',0,0,0,0,0,0,1454174235,1452762564,1,0,0,4608,'gridelements_pi1','Four column layout',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"columns_md\">\n                    <value index=\"vDEF\">col-md-3#col-md-3#col-md-3#col-md-3</value>\n                </field>\n                <field index=\"columns_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-3</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-3</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_md\">\n                    <value index=\"vDEF\">col-md-3</value>\n                </field>\n                <field index=\"column_3_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_md\">\n                    <value index=\"vDEF\">col-md-3</value>\n                </field>\n                <field index=\"column_4_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_4_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:5:\"media\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv4ColumnGrid',4,0,0,0,0,0),(133,1,0,0,0,'',0,0,0,0,0,0,1452865793,1452762633,1,0,0,3840,'iconTextButton','Lorem ipsum',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'Read more','','28',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">access_time</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,132,0,0,0,0),(134,1,0,0,0,'',0,0,0,0,0,133,1452865793,1452762690,1,0,0,3584,'iconTextButton','Lorem ipsum',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'Read more','','28',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">settings</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,132,1,0,0,0),(135,1,0,0,0,'',0,0,0,0,0,133,1452865793,1452762695,1,0,0,2816,'iconTextButton','Lorem ipsum',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'Read more','','28',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">school</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,132,2,0,0,0),(136,1,0,0,0,'',0,0,0,0,0,133,1452865793,1452762703,1,0,0,1536,'iconTextButton','Lorem ipsum',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitfhghfhor. Ut in nulla enim. Phasellus class aptent taciti sociosqu.',0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'Read more','','28',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"iconClass\">\n                    <value index=\"vDEF\">chat</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,132,3,0,0,0),(137,1,0,0,0,'',0,0,0,0,0,0,1454174252,1452763066,1,0,0,4864,'gridelements_pi1','2 column layout',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"columns_md\">\n                    <value index=\"vDEF\">col-md-6#col-md-6</value>\n                </field>\n                <field index=\"columns_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"columns_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:5:\"media\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv2ColumnGrid',2,0,0,0,0,0),(138,1,0,0,0,'',0,0,0,0,0,0,1454174282,1452865847,1,0,0,5376,'gridelements_pi1','container',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-12</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:5:\"media\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv1ColumnGrid',1,0,0,0,0,0),(139,71,0,0,0,'',0,0,0,0,0,0,1453274712,1453274712,1,0,0,256,'list','Solr search','',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','solr_pi_results','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"targetPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sQuery\">\n            <language index=\"lDEF\">\n                <field index=\"initializeWithEmptyQuery\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showResultsOfInitialEmptyQuery\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"initializeWithQuery\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showResultsOfInitialQuery\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sortBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"resultsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"boostFunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"boostQuery\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sOptions\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(140,72,0,0,0,'',0,0,0,0,0,0,1453377698,1453371240,1,0,0,256,'html','Example of adding Wrapper to all content elements page ts','','<pre class=\"prettyprint lang-js\">\r\nTCEFORM.tt_content.wrapper {\r\n    addItems {\r\n        1000 = Example generic wrapper 1\r\n        1001 = Example generic wrapper 1 - with some alternative\r\n    }\r\n}\r\n</pre>',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(141,72,0,0,0,'',0,0,0,0,0,140,1453377625,1453377436,1,0,0,512,'html','Example of adding Wrapper to all content elements setyp typoscript','','<pre class=\"prettyprint lang-js\">\r\nlib.fluidContent {\r\n    dataProcessing {\r\n        365 {\r\n            classMappings {                \r\n                1000 = class-name-1\r\n                1001 = class-name-1 __modifier-class-name\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\n</pre>',0,0,0,2,0,0,'0',0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(142,72,0,0,0,'',0,0,0,0,0,0,1453378365,1453377752,1,0,0,1000000000,'header','Example of adding items to Wrapper dropdown in content elements.','','\r\n\r\n',0,0,17,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(143,72,0,0,0,'',0,0,0,0,0,0,1453378688,1453377843,1,0,0,1000000000,'header','setup typoscript','',NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'5','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(144,72,0,0,0,'',0,0,0,0,0,0,1453378682,1453377880,1,0,0,1000000000,'header','page ts','',NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'5','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(145,72,0,0,0,'',0,0,0,0,0,0,1453378784,1453377944,1,0,0,64,'textmedia','Adding \"wrappers\" in t3kit (theme_t3kit)','','In fluid_styled_content there is a div around each content element. In theme_t3kit we added a wrapper field to tt_content so we can add a class to this div (a bit like section_frames). ',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(146,72,0,0,0,'',0,0,0,0,0,0,1453378766,1453378293,1,0,0,96,'textmedia','page typoscript','','List items for wrapper are created with page ts, and consists of an id and a label.',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(147,72,0,0,0,'',0,0,0,0,0,0,1453378998,1453378616,1,0,0,320,'textmedia','setup typoscript','','<div>There is a dataProcessor added in lib.fluidContent that maps the id to a string, that could be a single class or multiple classes. This dataProcessor will add variable wrapperClass to the FLUIDTEMPLATE. In this case we have &quot;overridden&quot; the layouts from fluid_styled_content so we can add the {wrapperClass} after c{data.id} in the layouts. This will be applied on all content elements based on lib.fluidContent.</div>',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_themes_icon\";N;s:14:\"rowDescription\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:7:\"wrapper\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:18:\"tx_themes_variants\";N;s:19:\"tx_themes_behaviour\";N;s:20:\"tx_themes_responsive\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(148,75,0,0,0,'',0,0,0,0,0,0,1457977783,1454175325,1,0,0,1792,'gridelements_pi1','Footer Row 1 (About Us/Map/Contacts)',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\">footer__about</value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\">footer__contact</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv2ColumnGrid',5,168,0,0,0,0),(149,75,0,0,0,'',0,0,0,0,0,0,1457977791,1454175335,1,0,0,2048,'gridelements_pi1','Footer Row 2 (Quick Links/Subscribe to newsletter)',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\">footer__quick-links</value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\">footer__subscribe</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv2ColumnGrid',5,168,0,0,0,0),(150,75,0,0,0,'',0,0,0,0,0,0,1457977860,1454175509,1,0,0,2176,'gridelements_pi1','Footer Row 3 (Copyright/Footer Bottom Menu)',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\">container</value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-7</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\">footer__bottom-copyright</value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-5</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\">footer__bottom-nav</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv2ColumnGrid',2,168,0,13,0,0),(151,75,0,0,0,'',0,0,0,0,0,85,1457977783,1454175608,1,0,0,2304,'textmedia','About Company AB',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumdod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no strud exercitation ullamco laboris nisi ut.\r\n\r\nAenean orci urna',0,0,17,2,0,0,'0',0,0,'','',0,0,-1,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,148,0,0,0,0),(152,75,0,0,0,'',0,0,0,0,0,91,1457977791,1454175730,1,0,0,64,'header','Quick links',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,149,0,0,0,0),(153,75,0,0,0,'',0,0,0,0,0,0,1454175770,1454175742,1,0,0,1000000000,'textmedia','',NULL,NULL,0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'2ColumnGrid',0,149,0,0,0,0),(154,75,0,0,0,'',0,0,0,0,0,0,1457977791,1454175762,1,0,0,256,'gridelements_pi1','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'2ColumnGrid',0,149,0,0,0,0),(155,75,0,0,0,'',0,0,0,0,0,89,1457977791,1454175780,1,0,0,256,'menu','',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','21',0,0,-1,'','','',0,'4','1','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,154,0,0,0,0),(156,75,0,0,0,'',0,0,0,0,0,92,1457977791,1454175793,1,0,0,128,'menu','',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','21',0,0,-1,'','','',0,'4','1','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,154,1,0,0,0),(157,75,0,0,0,'',0,0,0,0,0,88,1457977791,1454175831,1,0,0,16,'textmedia','Subscribe to newsletter',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumdod tempor incididunt ut labore et dolore magna aliqua. ',0,0,17,2,0,0,'0',0,0,'','',0,0,-1,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,149,1,0,0,0),(158,75,0,0,0,'',0,0,0,0,0,86,1457977791,1454175848,1,0,0,32,'list','[Subscribe to newsletter plugin]',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','',0,0,-1,'','','',0,'100','0','pxanewslettersubscription_subscription','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.enableEmailConfirm\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.formFieldNameIsMandatory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.forceFormView\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.displayUnsubscribeButton\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.saveFolder\">\n                    <value index=\"vDEF\">52</value>\n                </field>\n                <field index=\"settings.userGroup\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"settings.confirmPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.formFieldNameHidden\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"confirmMail\">\n            <language index=\"lDEF\">\n                <field index=\"settings.confirmMailSenderName\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSenderEmail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailReplyTo\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubject\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubscribeBody\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailUnsubscribeBody\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailSubscribeInstruction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailUnsubscribeInstruction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.confirmMailFooter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,149,1,0,0,0),(159,75,0,0,0,'',0,0,0,0,0,90,1457977860,1454175877,1,0,0,1,'menu','Footer Bottom Menu',NULL,NULL,0,0,0,2,0,0,'0',0,0,'','54',0,0,-1,'','','',0,'100','1','','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,150,1,0,0,0),(160,75,0,0,0,'',0,0,0,0,0,0,1457977783,1454242930,1,0,0,1280,'textmedia','Contacts','','Company AB <br />Street 8 <br />zipcode city, <br />country',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,169,0,0,0,0),(161,75,0,0,0,'',0,0,0,0,0,0,1457977783,1454243097,1,0,0,1024,'html','Map link','','<div class=\"footer__map\"><a class=\"footer__map-icon icons icon-t3-map\" href=\"/content/plugins/google-map\"></a></div>',0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'100','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,169,1,0,0,0),(162,75,0,0,0,'',0,0,0,0,0,0,1454243359,1454243328,1,0,0,1000000000,'html','','','            <ul class=\"nav contact-links\" >\r\n              <li><p><span class=\"icons icon-t3-mobile\"></span><span><f:translate key=\"callUs_label\" /></span> <a href=\"tel:{theme:constant(constant: \'themes.configuration.header.phone\')}\">tel:{theme:constant(constant: \'themes.configuration.header.phone\')}</a></p></li>\r\n              <li><p><span class=\"icons icon-t3-mail\"></span><span><f:translate key=\"emailUs_label\" /></span> <f:link.email email=\"{theme:constant(constant: \'themes.configuration.header.email\')}\" /></p></li>\r\n            </ul>',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(163,75,0,0,0,'',0,0,0,0,0,0,1457977783,1454243436,1,0,0,512,'header','Contact us','',NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,148,1,0,0,0),(164,75,0,0,0,'',0,0,0,0,0,0,1454243695,1454243558,1,0,0,1000000000,'shortcut','','',NULL,0,0,0,2,0,0,'0',1,0,'tt_content_157,tt_content_158',NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,149,1,0,0,0),(165,75,0,0,0,'',0,0,0,0,0,0,1454245150,1454245098,1,0,0,1000000000,'textmedia','','','<div class=\"footer__map\"><a class=\"footer__map-icon icons icon-t3-map\" href=\"#\"></a></div>',0,0,0,2,0,0,'0',1,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(166,1,0,0,0,'',0,0,0,0,0,0,1457707954,1457620344,1,0,0,4480,'fullWidthImage','',NULL,NULL,1,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(167,78,0,0,0,'',0,0,0,0,0,0,1457707857,1457707857,1,0,0,256,'textmedia','Page not found','','We are sorry, page was not found on this URL.',0,0,17,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'2','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,0,0,0,0,0),(168,75,0,0,0,'',0,0,0,0,0,0,1457977625,1457977625,1,0,0,2560,'gridelements_pi1','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv1ColumnGrid',1,0,0,0,0,0),(169,75,0,0,0,'',0,0,0,0,0,0,1457977783,1457977751,1,0,0,1536,'gridelements_pi1','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"columns\">\n            <language index=\"lDEF\">\n                <field index=\"container\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_xs\">\n                    <value index=\"vDEF\">col-xs-4</value>\n                </field>\n                <field index=\"column_1_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_md\">\n                    <value index=\"vDEF\">col-md-4</value>\n                </field>\n                <field index=\"column_1_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_1_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_xs\">\n                    <value index=\"vDEF\">col-xs-2</value>\n                </field>\n                <field index=\"column_2_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_md\">\n                    <value index=\"vDEF\">col-md-2</value>\n                </field>\n                <field index=\"column_2_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_2_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_xs\">\n                    <value index=\"vDEF\">col-xs-12</value>\n                </field>\n                <field index=\"column_3_sm\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_md\">\n                    <value index=\"vDEF\">col-md-6</value>\n                </field>\n                <field index=\"column_3_lg\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_layout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_content_wrapper\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"column_3_class\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'Adv3ColumnGrid',1,148,1,0,0,0),(170,75,0,0,0,'',0,0,0,0,0,0,1457977783,1457977777,1,0,0,768,'contacts','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,169,2,0,0,0),(171,75,0,0,0,'',0,0,0,0,0,0,1457977868,1457977868,1,0,0,0,'copyrightText','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,150,0,0,0,0),(172,75,0,0,0,'',0,0,0,0,0,0,1457977879,1457977879,1,0,0,2112,'socialIcons','',NULL,NULL,0,0,0,2,0,0,'0',0,0,NULL,NULL,0,0,-1,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,0,'','','','','',0,'',0,0,0,0,0,-2,'',0,168,0,0,0,0);
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
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_swedish_ci,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_swedish_ci,
  `author_name` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_swedish_ci,
  `authorcompany` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_swedish_ci,
  `wsdl_url` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1444806669,6787);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_address_category_mm`
--

DROP TABLE IF EXISTS `tx_gomapsext_address_category_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_address_category_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_address_category_mm`
--

LOCK TABLES `tx_gomapsext_address_category_mm` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_address_category_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_address_category_mm` ENABLE KEYS */;
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
  `map` int(11) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `configuration_map` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `latitude` double(11,6) NOT NULL DEFAULT '0.000000',
  `longitude` double(11,6) NOT NULL DEFAULT '0.000000',
  `address` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `marker` text COLLATE utf8_swedish_ci NOT NULL,
  `image_size` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image_width` int(11) NOT NULL DEFAULT '0',
  `image_height` int(11) NOT NULL DEFAULT '0',
  `shadow` text COLLATE utf8_swedish_ci NOT NULL,
  `shadow_size` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shadow_width` int(11) NOT NULL DEFAULT '0',
  `shadow_height` int(11) NOT NULL DEFAULT '0',
  `info_window_content` text COLLATE utf8_swedish_ci NOT NULL,
  `info_window_link` int(11) NOT NULL DEFAULT '0',
  `close_by_click` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open_by_click` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `opened` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_domain_model_address`
--

LOCK TABLES `tx_gomapsext_domain_model_address` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_domain_model_category`
--

DROP TABLE IF EXISTS `tx_gomapsext_domain_model_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_domain_model_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `addresses` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_domain_model_category`
--

LOCK TABLES `tx_gomapsext_domain_model_category` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_category` ENABLE KEYS */;
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
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tooltip_title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `width` varchar(11) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `height` varchar(11) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `zoom` int(11) NOT NULL DEFAULT '0',
  `addresses` int(11) unsigned NOT NULL DEFAULT '0',
  `show_categories` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kml_url` text COLLATE utf8_swedish_ci NOT NULL,
  `kml_preserve_viewport` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kml_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `scroll_zoom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `zoom_min` int(11) NOT NULL DEFAULT '0',
  `zoom_max` int(11) NOT NULL DEFAULT '0',
  `draggable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `double_click_zoom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `marker_cluster` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `marker_cluster_zoom` int(11) NOT NULL DEFAULT '0',
  `marker_cluster_size` int(11) NOT NULL DEFAULT '0',
  `marker_search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_type` int(11) NOT NULL DEFAULT '0',
  `pan_control` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `scale_control` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `streetview_control` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `zoom_control` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `zoom_control_type` int(11) NOT NULL DEFAULT '0',
  `map_type_control` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_types` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `show_route` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `calc_route` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `travel_mode` int(11) NOT NULL DEFAULT '0',
  `unit_system` int(11) NOT NULL DEFAULT '0',
  `styled_map_name` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `styled_map_code` text COLLATE utf8_swedish_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `show_addresses` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gomapsext_domain_model_map`
--

LOCK TABLES `tx_gomapsext_domain_model_map` WRITE;
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_map` DISABLE KEYS */;
INSERT INTO `tx_gomapsext_domain_model_map` VALUES (1,70,'Overview map of latest disaster alerts','http://www.gdacs.org/','','100%','400',2,0,0,'http://www.gdacs.org/xml/gdacs.kml',0,0,1,2,10,1,0,1,10,0,0,4,0,0,0,1,0,0,'0,1,2,3,4',0,0,0,2,'Default style','[\r\n  {\r\n    \"featureType\": \"water\",\r\n    \"stylers\": [\r\n      { \"color\": \"#3293c0\" }\r\n    ]\r\n  },{\r\n    \"featureType\": \"administrative\",\r\n    \"elementType\": \"labels.text.fill\",\r\n    \"stylers\": [\r\n      { \"color\": \"#1d556f\" },\r\n      { \"visibility\": \"on\" }\r\n    ]\r\n  },{\r\n    \"featureType\": \"administrative.country\",\r\n    \"elementType\": \"geometry.stroke\",\r\n    \"stylers\": [\r\n      { \"color\": \"#1d556f\" }\r\n    ]\r\n  },{\r\n  }\r\n]',1448012275,1447916590,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,-1,0,'a:38:{s:5:\"title\";N;s:13:\"tooltip_title\";N;s:5:\"class\";N;s:5:\"width\";N;s:6:\"height\";N;s:4:\"zoom\";N;s:8:\"zoom_min\";N;s:8:\"zoom_max\";N;s:9:\"addresses\";N;s:7:\"kml_url\";N;s:21:\"kml_preserve_viewport\";N;s:9:\"kml_local\";N;s:15:\"show_categories\";N;s:11:\"scroll_zoom\";N;s:9:\"draggable\";N;s:17:\"double_click_zoom\";N;s:14:\"marker_cluster\";N;s:19:\"marker_cluster_zoom\";N;s:19:\"marker_cluster_size\";N;s:13:\"marker_search\";N;s:12:\"default_type\";N;s:11:\"pan_control\";N;s:13:\"scale_control\";N;s:18:\"streetview_control\";N;s:12:\"zoom_control\";N;s:17:\"zoom_control_type\";N;s:16:\"map_type_control\";N;s:9:\"map_types\";N;s:10:\"show_route\";N;s:10:\"calc_route\";N;s:11:\"travel_mode\";N;s:11:\"unit_system\";N;s:15:\"styled_map_name\";N;s:15:\"styled_map_code\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0);
/*!40000 ALTER TABLE `tx_gomapsext_domain_model_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gomapsext_map_address_mm`
--

DROP TABLE IF EXISTS `tx_gomapsext_map_address_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gomapsext_map_address_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_swedish_ci,
  `horizontal` tinyint(4) NOT NULL DEFAULT '0',
  `top_level_layout` tinyint(4) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_swedish_ci,
  `pi_flexform_ds` mediumtext COLLATE utf8_swedish_ci,
  `pi_flexform_ds_file` text COLLATE utf8_swedish_ci,
  `icon` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `file` text COLLATE utf8_swedish_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `uri` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_media`
--

DROP TABLE IF EXISTS `tx_news_domain_model_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_media` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `caption` tinytext COLLATE utf8_swedish_ci,
  `alt` tinytext COLLATE utf8_swedish_ci,
  `title` tinytext COLLATE utf8_swedish_ci,
  `copyright` tinytext COLLATE utf8_swedish_ci,
  `image` text COLLATE utf8_swedish_ci,
  `html` text COLLATE utf8_swedish_ci,
  `multimedia` tinytext COLLATE utf8_swedish_ci,
  `type` int(11) NOT NULL DEFAULT '0',
  `showinpreview` tinyint(4) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_media`
--

LOCK TABLES `tx_news_domain_model_media` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_media` ENABLE KEYS */;
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `editlock` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_swedish_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  `teaser` text COLLATE utf8_swedish_ci,
  `bodytext` mediumtext COLLATE utf8_swedish_ci,
  `datetime` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8_swedish_ci,
  `author_email` tinytext COLLATE utf8_swedish_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8_swedish_ci,
  `fal_related_files` int(11) unsigned DEFAULT '0',
  `related_links` tinytext COLLATE utf8_swedish_ci,
  `type` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_swedish_ci,
  `description` text COLLATE utf8_swedish_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_swedish_ci,
  `fal_media` int(11) unsigned DEFAULT '0',
  `internalurl` text COLLATE utf8_swedish_ci,
  `externalurl` text COLLATE utf8_swedish_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` text COLLATE utf8_swedish_ci,
  `path_segment` tinytext COLLATE utf8_swedish_ci,
  `alternative_title` tinytext COLLATE utf8_swedish_ci,
  `import_id` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news` VALUES (1,41,1444135537,1444132561,1,0,0,0,'',0,0,0,0,0,0,0,-1,0,'a:26:{s:5:\"title\";N;s:9:\"istopnews\";N;s:4:\"type\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"teaser\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:4:\"tags\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:13:\"related_links\";N;s:7:\"related\";N;s:12:\"related_from\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:12:\"path_segment\";N;}',0,0,0,0,0,'','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','Ut ullamcorper tincidunt ligula eu mollis. Proin tristique scelerisque lobortis. Cras faucibus erat dictum metus aliquet maximus. Nullam ac nisl eu eros luctus lacinia sed consequat leo.','Nam id dignissim libero. Donec tempus enim sit amet interdum elementum. In suscipit faucibus pretium. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in euismod magna, feugiat dapibus ante. Nulla efficitur tempor molestie. In vel ex orci. Nullam velit ex, tempus eu velit non, condimentum vulputate massa. Phasellus eu tortor venenatis, volutpat turpis eget, gravida tellus. Ut iaculis, metus vitae tempor dignissim, orci augue dapibus sapien, sed aliquet arcu ligula in lacus.\r\n Suspendisse tempus maximus hendrerit. Praesent finibus, dolor ut sagittis lobortis, lacus orci interdum ex, at congue justo ante eget arcu. Duis congue vestibulum lectus, et ornare lorem bibendum vel. Nunc tristique porttitor sodales. Phasellus nibh dui, tincidunt eget massa id, suscipit venenatis ex. Curabitur vel erat eros. Quisque dapibus urna vel mauris convallis aliquam. Duis faucibus ex dictum, ullamcorper eros at, auctor mauris. Pellentesque tristique nulla sed leo mattis, ut aliquet neque blandit. Praesent blandit elementum velit, non ultrices lectus dictum non. Nunc porttitor tempus lacus et lacinia. \r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce consectetur nulla ut dolor tincidunt, at auctor nisi faucibus. Etiam sit amet mauris nec urna tristique tempus ut sit amet lacus. Suspendisse potenti. Pellentesque condimentum sed sem eu tempus. Cras at ipsum porta, semper lectus id, sodales massa. Nam dictum magna sed metus ullamcorper, vitae bibendum urna efficitur. Ut egestas ante ante, at efficitur nisi mollis sed. Sed dui sapien, pulvinar in nunc id, facilisis venenatis tort',1444132260,0,'John Doe','john.doe@noname.com',1,0,0,NULL,1,'0','0','','',1,NULL,1,NULL,NULL,0,NULL,'','','',''),(2,41,1444135740,1444135575,1,0,0,0,'',0,0,0,0,0,1,0,-1,0,'a:26:{s:5:\"title\";N;s:9:\"istopnews\";N;s:4:\"type\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"teaser\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:4:\"tags\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:13:\"related_links\";N;s:7:\"related\";N;s:12:\"related_from\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:12:\"path_segment\";N;}',0,0,0,0,0,'','Nullam sagittis condimentum est quis malesuada.','Ut ullamcorper tincidunt ligula eu mollis. Proin tristique scelerisque lobortis. Cras faucibus erat dictum metus aliquet maximus. Nullam ac nisl eu eros luctus lacinia sed consequat leo. Ut ullamcorper tincidunt ligula eu mollis. Proin tristique scelerisque lobortis. Cras faucibus erat dictum metus aliquet maximus. Nullam ac nisl eu eros luctus lacinia sed consequat leo.','Nam id dignissim libero. Donec tempus enim sit amet interdum elementum. In suscipit faucibus pretium. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque in euismod magna, feugiat dapibus ante. Nulla efficitur tempor molestie. In vel ex orci. Nullam velit ex, tempus eu velit non, condimentum vulputate massa. Phasellus eu tortor venenatis, volutpat turpis eget, gravida tellus. Ut iaculis, metus vitae tempor dignissim, orci augue dapibus sapien, sed aliquet arcu ligula in lacus.\r\n Suspendisse tempus maximus hendrerit. Praesent finibus, dolor ut sagittis lobortis, lacus orci interdum ex, at congue justo ante eget arcu. Duis congue vestibulum lectus, et ornare lorem bibendum vel. Nunc tristique porttitor sodales. Phasellus nibh dui, tincidunt eget massa id, suscipit venenatis ex. Curabitur vel erat eros. Quisque dapibus urna vel mauris convallis aliquam. Duis faucibus ex dictum, ullamcorper eros at, auctor mauris. Pellentesque tristique nulla sed leo mattis, ut aliquet neque blandit. Praesent blandit elementum velit, non ultrices lectus dictum non. Nunc porttitor tempus lacus et lacinia. \r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce consectetur nulla ut dolor tincidunt, at auctor nisi faucibus. Etiam sit amet mauris nec urna tristique tempus ut sit amet lacus. Suspendisse potenti. Pellentesque condimentum sed sem eu tempus. Cras at ipsum porta, semper lectus id, sodales massa. Nam dictum magna sed metus ullamcorper, vitae bibendum urna efficitur. Ut egestas ante ante, at efficitur nisi mollis sed. Sed dui sapien, pulvinar in nunc id, facilisis venenatis tort',1442317860,0,'John Doe','john.doe@noname.com',1,1,0,NULL,0,'0','0','','',1,NULL,1,NULL,NULL,0,NULL,'','','','');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news_related_mm` VALUES (1,2,0,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news_tag_mm` VALUES (1,1,1),(2,2,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_tag` VALUES (1,41,1444133829,1444133829,1,0,0,0,0,0,0,0,'',0,0,0,0,0,'Tag Ipsum'),(2,41,1444133835,1444133835,1,0,0,0,0,0,0,0,'',0,0,0,0,0,'Tag Lorem');
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_chashcache`
--

DROP TABLE IF EXISTS `tx_realurl_chashcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_chashcache` (
  `spurl_hash` char(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `chash_string` varchar(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `spurl_string` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`spurl_hash`),
  KEY `chash_string` (`chash_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_chashcache`
--

LOCK TABLES `tx_realurl_chashcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_chashcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_chashcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_errorlog`
--

DROP TABLE IF EXISTS `tx_realurl_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_errorlog` (
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_swedish_ci NOT NULL,
  `error` text COLLATE utf8_swedish_ci NOT NULL,
  `last_referer` text COLLATE utf8_swedish_ci NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `cr_date` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`,`rootpage_id`),
  KEY `counter` (`counter`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_errorlog`
--

LOCK TABLES `tx_realurl_errorlog` WRITE;
/*!40000 ALTER TABLE `tx_realurl_errorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_errorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathcache`
--

DROP TABLE IF EXISTS `tx_realurl_pathcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathcache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `pagepath` text COLLATE utf8_swedish_ci NOT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathcache`
--

LOCK TABLES `tx_realurl_pathcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_pathcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_redirects`
--

DROP TABLE IF EXISTS `tx_realurl_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_redirects` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_swedish_ci NOT NULL,
  `destination` text COLLATE utf8_swedish_ci NOT NULL,
  `last_referer` text COLLATE utf8_swedish_ci NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `has_moved` int(11) NOT NULL DEFAULT '0',
  `domain_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `sel01` (`url_hash`,`domain_limit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_redirects`
--

LOCK TABLES `tx_realurl_redirects` WRITE;
/*!40000 ALTER TABLE `tx_realurl_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `field_alias` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `field_id` varchar(60) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `value_alias` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
INSERT INTO `tx_realurl_uniqalias` VALUES (4,1447835758,'tx_news_domain_model_news','title','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-a-a-o-a-a-o',1,0,0),(5,1447835788,'tx_news_domain_model_news','title','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,0,0),(6,1447836654,'tx_news_domain_model_news','title','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,2,0),(7,1447836654,'tx_news_domain_model_news','title','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,3,0),(8,1447836654,'tx_news_domain_model_news','title','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,1,0),(9,1447836654,'tx_news_domain_model_news','title','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,4,0),(10,1447836978,'tx_news_domain_model_tag','title','uid','tag-ipsum',1,0,0),(11,1447836978,'tx_news_domain_model_tag','title','uid','tag-lorem',2,0,0),(12,1447836978,'sys_category','title','uid','technology',7,0,0),(13,1447836978,'sys_category','title','uid','research',6,0,0),(14,1447846293,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-nyheten',1,0,1463466380),(15,1447846293,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,0,0),(16,1447856179,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-nyheten',1,1,1468315275),(17,1447856179,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,1,0),(18,1447856488,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-nyheten',1,2,1468827230),(19,1447856488,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,2,0),(20,1447856498,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-nyheten',1,3,1468827231),(21,1447856498,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,3,0),(22,1447856504,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-nyheten',1,4,1468827232),(23,1447856504,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','nullam-sagittis-condimentum-est-quis-malesuada',2,4,0),(24,1447914380,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',1,0,0),(25,1452763275,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',1,1,0),(26,1453275230,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',1,2,0),(27,1453275231,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',1,3,0),(28,1453275232,'tx_news_domain_model_news','IF(path_segment!=\"\",path_segment,title)','uid','lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',1,4,0);
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldecodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urldecodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldecodecache` (
  `url_hash` char(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `spurl` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `content` blob NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldecodecache`
--

LOCK TABLES `tx_realurl_urldecodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urlencodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urlencodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urlencodecache` (
  `url_hash` char(32) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `origparams` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `internalExtras` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urlencodecache`
--

LOCK TABLES `tx_realurl_urlencodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` ENABLE KEYS */;
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
  `key_value` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `acronym` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_swedish_ci,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8_swedish_ci,
  `lastexecution_context` char(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
INSERT INTO `tx_scheduler_task` VALUES (1,1453274864,1,'',1453278420,1453278398,'','BE','O:49:\"ApacheSolrForTypo3\\Solr\\Task\\IndexQueueWorkerTask\":9:{s:7:\"\0*\0site\";O:28:\"ApacheSolrForTypo3\\Solr\\Site\":2:{s:11:\"\0*\0rootPage\";a:73:{s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:9:\"t3ver_oid\";s:1:\"0\";s:8:\"t3ver_id\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_label\";s:0:\"\";s:11:\"t3ver_state\";s:1:\"0\";s:11:\"t3ver_stage\";s:1:\"0\";s:11:\"t3ver_count\";s:1:\"0\";s:12:\"t3ver_tstamp\";s:1:\"0\";s:13:\"t3ver_move_id\";s:1:\"0\";s:10:\"t3_origuid\";s:1:\"0\";s:6:\"tstamp\";s:10:\"1444799774\";s:7:\"sorting\";s:3:\"256\";s:7:\"deleted\";s:1:\"0\";s:12:\"perms_userid\";s:1:\"1\";s:13:\"perms_groupid\";s:1:\"0\";s:10:\"perms_user\";s:2:\"31\";s:11:\"perms_group\";s:2:\"27\";s:15:\"perms_everybody\";s:1:\"0\";s:8:\"editlock\";s:1:\"0\";s:6:\"crdate\";s:10:\"1441891270\";s:9:\"cruser_id\";s:1:\"1\";s:6:\"hidden\";s:1:\"0\";s:5:\"title\";s:4:\"Home\";s:7:\"doktype\";s:1:\"1\";s:8:\"TSconfig\";s:326:\"/*\r\nTCEFORM.tt_content.pi_flexform.contentElementSlider.sDEF.wrapperClass {\r\n    addItems {\r\n        __css-modifier-class-1 = Custom modifier 1 (from pagets)\r\n        __css-modifier-class-2 = Custom modifier 2 (from pagets)\r\n        __css-modifier-class-3 = Special för att få annorlunda rubriker (from pagets)\r\n    }\r\n}\r\n*/\";s:11:\"is_siteroot\";s:1:\"1\";s:13:\"php_tree_stop\";s:1:\"0\";s:17:\"tx_impexp_origuid\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:7:\"urltype\";s:1:\"1\";s:8:\"shortcut\";s:1:\"0\";s:13:\"shortcut_mode\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";s:8:\"fe_group\";s:0:\"\";s:8:\"subtitle\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:10:\"url_scheme\";s:1:\"0\";s:6:\"target\";s:0:\"\";s:5:\"media\";s:1:\"0\";s:11:\"lastUpdated\";s:1:\"0\";s:8:\"keywords\";N;s:13:\"cache_timeout\";s:1:\"0\";s:10:\"cache_tags\";s:0:\"\";s:8:\"newUntil\";s:1:\"0\";s:11:\"description\";N;s:9:\"no_search\";s:1:\"0\";s:15:\"SYS_LASTCHANGED\";s:10:\"1452865864\";s:8:\"abstract\";N;s:6:\"module\";s:0:\"\";s:16:\"extendToSubpages\";s:1:\"0\";s:6:\"author\";s:0:\"\";s:12:\"author_email\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:8:\"nav_hide\";s:1:\"0\";s:16:\"content_from_pid\";s:1:\"0\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:5:\"alias\";s:0:\"\";s:8:\"l18n_cfg\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:14:\"backend_layout\";s:17:\"pagets__StartPage\";s:25:\"backend_layout_next_level\";s:19:\"pagets__MenuContent\";s:17:\"tsconfig_includes\";s:78:\"EXT:fluid_styled_content/Configuration/PageTSconfig/NewContentElementWizard.ts\";s:10:\"categories\";s:1:\"0\";s:14:\"tx_themes_icon\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:23:\"tx_realurl_pathoverride\";s:1:\"0\";s:18:\"tx_realurl_exclude\";s:1:\"0\";s:18:\"tx_realurl_nocache\";s:1:\"0\";}s:18:\"\0*\0sysLanguageMode\";N;}s:24:\"\0*\0documentsToIndexLimit\";i:50;s:16:\"\0*\0configuration\";N;s:10:\"\0*\0taskUid\";i:1;s:11:\"\0*\0disabled\";b:1;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1453274765;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:11:\"*/1 * * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1453278420;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}','',0);
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  `lifetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `property_key` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `property_value` mediumtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `item_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `indexing_configuration` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `has_indexing_properties` tinyint(1) NOT NULL DEFAULT '0',
  `indexing_priority` int(11) NOT NULL DEFAULT '0',
  `changed` int(11) NOT NULL DEFAULT '0',
  `indexed` int(11) NOT NULL DEFAULT '0',
  `errors` text COLLATE utf8_swedish_ci NOT NULL,
  `pages_mountidentifier` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `changed` (`changed`),
  KEY `item_id` (`item_type`,`item_uid`),
  KEY `pages_mountpoint` (`item_type`,`item_uid`,`has_indexing_properties`,`pages_mountidentifier`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_solr_indexqueue_item`
--

LOCK TABLES `tx_solr_indexqueue_item` WRITE;
/*!40000 ALTER TABLE `tx_solr_indexqueue_item` DISABLE KEYS */;
INSERT INTO `tx_solr_indexqueue_item` VALUES (182,1,'tx_news_domain_model_news',1,'news',0,0,1444135537,1453278400,'',''),(183,1,'tx_news_domain_model_news',2,'news',0,0,1444135740,1453278400,'',''),(185,1,'pages',71,'pages',0,0,1453281779,0,'',''),(192,1,'pages',73,'pages',0,0,1453371396,0,'',''),(247,1,'pages',72,'pages',0,0,1453378998,0,'',''),(271,1,'pages',31,'pages',0,0,1454174555,0,'',''),(275,1,'pages',14,'pages',0,0,1454174674,0,'',''),(276,1,'pages',66,'pages',0,0,1457701568,0,'',''),(277,1,'pages',67,'pages',0,0,1457701568,0,'',''),(278,1,'pages',68,'pages',0,0,1457701568,0,'',''),(379,1,'pages',44,'pages',0,0,1457701568,0,'',''),(382,1,'pages',78,'pages',0,0,1457707857,0,'',''),(388,1,'pages',1,'pages',0,0,1457707937,0,'',''),(421,1,'pages',75,'pages',0,0,1457977879,0,'','');
/*!40000 ALTER TABLE `tx_solr_indexqueue_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_solr_last_searches`
--

DROP TABLE IF EXISTS `tx_solr_last_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_solr_last_searches` (
  `sequence_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `keywords` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`sequence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `suggestions_shown` int(1) NOT NULL DEFAULT '0',
  `time_total` int(11) NOT NULL DEFAULT '0',
  `time_preparation` int(11) NOT NULL DEFAULT '0',
  `time_processing` int(11) NOT NULL DEFAULT '0',
  `feuser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cookie` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `ip` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `keywords` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `page` int(5) unsigned NOT NULL DEFAULT '0',
  `filters` blob,
  `sorting` varchar(128) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `parameters` blob,
  PRIMARY KEY (`uid`),
  KEY `keywords` (`keywords`),
  KEY `rootpid_keywords` (`root_pid`,`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
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
  `t3ver_label` varchar(30) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `linktext` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `linktarget` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `linktitle` varchar(1024) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `icon` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_themes_buttoncontent`
--

LOCK TABLES `tx_themes_buttoncontent` WRITE;
/*!40000 ALTER TABLE `tx_themes_buttoncontent` DISABLE KEYS */;
INSERT INTO `tx_themes_buttoncontent` VALUES (1,27,1443697188,1443697170,1,0,0,0,'',0,0,0,0,0,0,0,0,'',1000000000,1,0,0,0,'','The link text','http://www.mff.se/ _blank','title','icon',65),(2,27,1443697188,1443697170,1,0,0,0,'',0,0,0,0,0,0,0,0,'',1000000000,1,0,0,0,'','2','','title','',65);
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

-- Dump completed on 2016-03-14 17:53:31
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: t3kit
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_swedish_ci,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_swedish_ci,
  `allowed_languages` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `uc` mediumtext COLLATE utf8_swedish_ci,
  `file_mountpoints` text COLLATE utf8_swedish_ci,
  `file_permissions` text COLLATE utf8_swedish_ci,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_swedish_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_swedish_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1442898167,'admin','',0,'$P$CKPoY3K1oAHXAVeqe7JGBxesL/hXg11',1,'',0,0,0,'','',NULL,0,1441877779,0,'',NULL,'','a:23:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:15:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"3107b94272a0c3194e2479999dc9d94b\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"3107b94272a0c3194e2479999dc9d94b\";a:4:{i:0;s:5:\"admin\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"7fa185643ef43a93f08fc77f7bd7cbcb\";a:4:{i:0;s:22:\"Content Element Slider\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"5\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0eaa25358e9ceeb3d00af423a49c8b8a\";a:4:{i:0;s:7:\"corenew\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"cbf9fcb9646172755056b7c156c1c7ac\";a:4:{i:0;s:4:\"Home\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:101:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"0ae77006b38a301698db4d936f7f77bb\";a:4:{i:0;s:26:\"Lorem ipsum dolor sit amet\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][7]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"7\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d120708e4d3db10ed7f359a0ed448c31\";a:4:{i:0;s:278:\"<span title=\"Content element 1\r\n            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut e...\">Content element 1\r\n            Lorem ipsum dolor s...</span>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"81193a7dd1375566c38146aee8667087\";a:4:{i:0;s:278:\"<span title=\"Lorem ipsum\r\n              Dolor sit amet\r\n              Vivamus luctus urna sed urna ultricies ac doltempor dui sagittis. In condimentum. Vivamus luctus urna sed urna ultricies ac doltempor dui sagit...\">Lorem ipsum\r\n              Dolor sit amet\r\n       ...</span>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"06316a7826df3785359e116929cb05b7\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tt_content][4]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"4\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}s:8:\"web_list\";a:0:{}s:45:\"mod-web_ThemesMod1/Categories/Filter/Settings\";a:4:{s:11:\"searchScope\";s:3:\"all\";s:9:\"showBasic\";s:1:\"1\";s:12:\"showAdvanced\";s:1:\"1\";s:10:\"showExpert\";s:1:\"1\";}s:6:\"web_ts\";a:2:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:5:\"basic\";}s:8:\"web_func\";a:1:{s:8:\"function\";s:76:\"TYPO3\\CMS\\WizardCrpages\\Controller\\CreatePagesWizardModuleFunctionController\";}s:8:\"web_info\";a:4:{s:8:\"function\";s:72:\"TYPO3\\CMS\\InfoPagetsconfig\\Controller\\InfoPageTyposcriptConfigController\";s:5:\"pages\";s:1:\"0\";s:5:\"depth\";s:1:\"0\";s:12:\"tsconf_parts\";s:1:\"5\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:15:\"1:/user_upload/\";}s:9:\"file_list\";a:1:{s:15:\"bigControlPanel\";s:1:\"1\";}s:13:\"xMOD_tximpexp\";a:1:{s:8:\"function\";s:0:\"\";}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:13:\"system_config\";a:2:{s:8:\"function\";s:1:\"1\";s:6:\"node_1\";a:8:{s:10:\"tt_content\";i:1;s:16:\"tt_content.types\";i:1;s:34:\"tt_content.types.bigIconTextButton\";i:1;s:37:\"tt_content.types.contentElementSlider\";i:1;s:18:\"tt_content.columns\";i:1;s:30:\"tt_content.columns.pi_flexform\";i:1;s:37:\"tt_content.columns.pi_flexform.config\";i:1;s:40:\"tt_content.columns.pi_flexform.config.ds\";i:1;}}s:20:\"system_txschedulerM1\";a:1:{s:8:\"function\";s:5:\"check\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1441877795;s:15:\"moduleSessionID\";a:15:{s:10:\"web_layout\";s:32:\"3d839b83d3f62ea7eb2fc4854e626a7c\";s:10:\"FormEngine\";s:32:\"b96a444b4c1dd849eb6f6b90b5537a07\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"b96a444b4c1dd849eb6f6b90b5537a07\";s:16:\"opendocs::recent\";s:32:\"b96a444b4c1dd849eb6f6b90b5537a07\";s:8:\"web_list\";s:32:\"360f3c2631f403f64a8b2739109e2e44\";s:45:\"mod-web_ThemesMod1/Categories/Filter/Settings\";s:32:\"490abcb6dec63ba56393975a54be41bf\";s:6:\"web_ts\";s:32:\"82f91be3f7f81eea7a4e2e7d60c68ec4\";s:8:\"web_func\";s:32:\"1f113f2efcf6e6e693d999e2441e0b98\";s:8:\"web_info\";s:32:\"d4f4f1f7a0763dbecd554d72204f6c60\";s:16:\"browse_links.php\";s:32:\"7ca094d971e6da6e170f212824cb9ca1\";s:9:\"file_list\";s:32:\"e51d6a60c9e3bf2dbfb6e46200590859\";s:13:\"xMOD_tximpexp\";s:32:\"288a17fdde62de56b45a6e2f4a2ee4b4\";s:9:\"tx_beuser\";s:32:\"490abcb6dec63ba56393975a54be41bf\";s:13:\"system_config\";s:32:\"82f91be3f7f81eea7a4e2e7d60c68ec4\";s:20:\"system_txschedulerM1\";s:32:\"449d3382ad370979e31151b58d9f5f4f\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":13:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"4\";i:1;s:1:\"6\";i:1;s:1:\"7\";i:1;s:1:\"8\";i:1;s:1:\"9\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p0\";s:1:\"a\";i:1;s:1:\"b\";i:1;s:1:\"c\";i:1;s:1:\"d\";i:1;}}s:25:\"typo3-navigationContainer\";O:8:\"stdClass\":1:{s:5:\"width\";i:254;}s:17:\"typo3-module-menu\";O:8:\"stdClass\":1:{s:5:\"width\";i:190;}}}s:8:\"tcaTrees\";a:3:{s:32:\"fc5490915273e8f87906abaacb8eff12\";s:1:\"0\";s:32:\"d2e1133f7858a3957716afd25af53d72\";s:1:\"0\";s:32:\"722d8f90c5297900cb859798411220ce\";s:1:\"0\";}s:18:\"disablePMKTextarea\";i:1;s:10:\"modulemenu\";s:2:\"{}\";s:10:\"inlineView\";s:322:\"a:2:{i:0;b:0;s:10:\"tt_content\";a:4:{s:26:\"NEW55f19095698875.50851985\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:1;}}i:4;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"1\";}}s:26:\"NEW55f9645c945247.46710162\";a:1:{s:18:\"sys_file_reference\";a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}}i:5;a:1:{s:18:\"sys_file_reference\";a:1:{i:11;s:0:\"\";}}}}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1442216303}}\";s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:35:\"a:1:{i:25218;a:1:{i:62822724;i:1;}}\";}}',NULL,NULL,1,'',0,0,NULL,1447225125,0,NULL,0,1,''),(2,0,1447225260,'_cli_scheduler','',0,'$P$CVn2QfPQkpejZ8jL5uOsHvktAcNgSP.',0,'',0,0,0,'','',NULL,3,1447225260,1,'',NULL,'',NULL,NULL,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,files_copy,deleteFile',1,'',0,0,NULL,0,0,NULL,0,1,'');
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

-- Dump completed on 2015-11-11  7:10:05
