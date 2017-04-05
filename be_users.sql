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
