-- MySQL dump 10.15  Distrib 10.0.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alterland_irc
-- ------------------------------------------------------
-- Server version	10.0.27-MariaDB-0+deb8u1

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
-- Table structure for table `irc_db_BotInfo`
--

DROP TABLE IF EXISTS `irc_db_BotInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_BotInfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` text,
  `host` text,
  `nick` text,
  `oper_only` text,
  `realname` text,
  `user` text,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_BotInfo`
--

LOCK TABLES `irc_db_BotInfo` WRITE;
/*!40000 ALTER TABLE `irc_db_BotInfo` DISABLE KEYS */;
INSERT INTO `irc_db_BotInfo` VALUES (1,'2016-09-03 21:44:55','1472939094','services.alterland.net','BotServ','0','Bot Service','services'),(2,'2016-09-03 21:44:55','1472939094','services.alterland.net','ChanServ','0','Channel Registration Service','services'),(3,'2016-09-03 21:44:55','1472939094','services.alterland.net','Global','0','Global Noticer','services'),(4,'2016-09-03 21:44:55','1472939094','services.alterland.net','HostServ','0','vHost Service','services'),(5,'2016-09-03 21:44:55','1472939094','services.alterland.net','MemoServ','0','Memo Service','services'),(6,'2016-09-03 21:44:55','1472939094','services.alterland.net','NickServ','0','Nickname Registration Service','services'),(7,'2016-09-03 21:44:55','1472939094','services.alterland.net','OperServ','0','Operator Service','services');
/*!40000 ALTER TABLE `irc_db_BotInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_ChannelInfo`
--

DROP TABLE IF EXISTS `irc_db_ChannelInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_ChannelInfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BS_FANTASY` text,
  `BS_GREET` text,
  `CS_SECURE` text,
  `KEEPTOPIC` text,
  `PEACE` text,
  `SECUREFOUNDER` text,
  `SIGNKICK` text,
  `banexpire` int(11) DEFAULT NULL,
  `bantype` int(11) DEFAULT NULL,
  `description` text,
  `founder` text,
  `last_topic` text,
  `last_topic_setter` text,
  `last_topic_time` int(11) DEFAULT NULL,
  `last_used` int(11) DEFAULT NULL,
  `levels` text,
  `memomax` text,
  `name` text,
  `time_registered` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_ChannelInfo`
--

LOCK TABLES `irc_db_ChannelInfo` WRITE;
/*!40000 ALTER TABLE `irc_db_ChannelInfo` DISABLE KEYS */;
INSERT INTO `irc_db_ChannelInfo` VALUES (1,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'Main Alterland.net IRC channel','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#Alterland',1474210705),(2,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'Linux is a better OS :)','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#Linux',1474210724),(3,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'For the metal fans \\nn/','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#Metal',1474210733),(4,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'Opers','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#Opers',1474210739),(5,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'psyclan.org','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#PSYClan',1474210749),(6,'2016-09-18 15:11:37','1','1','1','1','1','1','1',0,2,'psyclan.org','dth','','ChanServ',0,1474211497,'ACCESS_CHANGE 10 ACCESS_LIST 3 AKICK 10 ASSIGN 10001 AUTOHALFOP 4 AUTOOP 5 AUTOOWNER 9999 AUTOPROTECT 10 AUTOVOICE 3 BADWORDS 10 BAN 4 FANTASIA 3 FOUNDER 10000 GETKEY 5 GREET 5 HALFOP 5 HALFOPME 4 INFO 9999 INVITE 5 KICK 4 MEMO 10 MODE 9999 NOKICK 1 OP 5 OPME 5 OWNER 10001 OWNERME 9999 PROTECT 9999 PROTECTME 10 SAY 5 SET 9999 SIGNKICK 9999 TOPIC 5 UNBAN 4 VOICE 4 VOICEME 3 ','20','#PSYs',1474210755);
/*!40000 ALTER TABLE `irc_db_ChannelInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_ModeLock`
--

DROP TABLE IF EXISTS `irc_db_ModeLock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_ModeLock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ci` text,
  `created` int(11) DEFAULT NULL,
  `name` text,
  `param` text,
  `set` text,
  `setter` text,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_ModeLock`
--

LOCK TABLES `irc_db_ModeLock` WRITE;
/*!40000 ALTER TABLE `irc_db_ModeLock` DISABLE KEYS */;
INSERT INTO `irc_db_ModeLock` VALUES (1,'2016-09-18 14:58:26','#Alterland',1474210705,'TOPIC','','1','dth'),(2,'2016-09-18 14:58:26','#Alterland',1474210705,'NOEXTERNAL','','1','dth'),(3,'2016-09-18 14:58:44','#Linux',1474210724,'TOPIC','','1','dth'),(4,'2016-09-18 14:58:44','#Linux',1474210724,'NOEXTERNAL','','1','dth'),(5,'2016-09-18 14:58:53','#Metal',1474210733,'TOPIC','','1','dth'),(6,'2016-09-18 14:58:53','#Metal',1474210733,'NOEXTERNAL','','1','dth'),(7,'2016-09-18 14:58:59','#Opers',1474210739,'NOEXTERNAL','','1','dth'),(8,'2016-09-18 14:58:59','#Opers',1474210739,'TOPIC','','1','dth'),(9,'2016-09-18 14:59:09','#PSYClan',1474210749,'TOPIC','','1','dth'),(10,'2016-09-18 14:59:09','#PSYClan',1474210749,'NOEXTERNAL','','1','dth'),(11,'2016-09-18 14:59:15','#PSYs',1474210755,'NOEXTERNAL','','1','dth'),(12,'2016-09-18 14:59:15','#PSYs',1474210755,'TOPIC','','1','dth');
/*!40000 ALTER TABLE `irc_db_ModeLock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_NickAlias`
--

DROP TABLE IF EXISTS `irc_db_NickAlias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_NickAlias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_quit` text,
  `last_realhost` text,
  `last_realname` text,
  `last_seen` int(11) DEFAULT NULL,
  `last_usermask` text,
  `nc` text,
  `nick` text,
  `time_registered` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_NickAlias`
--

LOCK TABLES `irc_db_NickAlias` WRITE;
/*!40000 ALTER TABLE `irc_db_NickAlias` DISABLE KEYS */;
INSERT INTO `irc_db_NickAlias` VALUES (1,'2016-09-03 22:37:15','','dth@39.137-65-87.adsl-dyn.isp.belgacom.be','realname',1472942235,'dth@Clk-8662DC08.adsl-dyn.isp.belgacom.be','Charlotte','Charlotte',1472942109),(2,'2016-09-18 15:20:07','Quit: Leaving','dth@39.137-65-87.adsl-dyn.isp.belgacom.be','realname',1474212007,'dth@netadmin.alterland.net','dth','dth',1472942468);
/*!40000 ALTER TABLE `irc_db_NickAlias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_NickCore`
--

DROP TABLE IF EXISTS `irc_db_NickCore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_NickCore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AUTOOP` text,
  `HIDE_EMAIL` text,
  `HIDE_MASK` text,
  `MEMO_RECEIVE` text,
  `MEMO_SIGNON` text,
  `NS_PRIVATE` text,
  `NS_SECURE` text,
  `access` text,
  `display` text,
  `email` text,
  `language` text,
  `memomax` text,
  `pass` text,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_NickCore`
--

LOCK TABLES `irc_db_NickCore` WRITE;
/*!40000 ALTER TABLE `irc_db_NickCore` DISABLE KEYS */;
INSERT INTO `irc_db_NickCore` VALUES (1,'2016-09-03 22:37:29','1','1','1','1','1','1','1','dth@*.adsl-dyn.isp.belgacom.be ','Charlotte','charlotte@alterland.net','','20','sha256:c59d6cd89625e31621abc503c250f782ea3d83fa9f5da2bcf52fce69e66c8203:7918d0315e22f2285f1784914ed8906959a35ae513dae8de28ed99fe662559a3'),(2,'2016-09-18 15:11:22','1','1','1','1','1','1','1','dth@*.alterland.net ','dth','dth@alterland.net','','20','sha256:b64883e76b782ea1baa5adf870aec64321ad70696f990d93d6442f09f67b17d3:502664bd5b58bce87d16acb7066eee5262f853f100e69ae65675c7793fde6279');
/*!40000 ALTER TABLE `irc_db_NickCore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_SeenInfo`
--

DROP TABLE IF EXISTS `irc_db_SeenInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_SeenInfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel` text,
  `last` int(11) DEFAULT NULL,
  `message` text,
  `nick` text,
  `nick2` text,
  `type` text,
  `vhost` text,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_SeenInfo`
--

LOCK TABLES `irc_db_SeenInfo` WRITE;
/*!40000 ALTER TABLE `irc_db_SeenInfo` DISABLE KEYS */;
INSERT INTO `irc_db_SeenInfo` VALUES (1,'2016-09-03 22:06:05','',1472940365,'Quit: Leaving','dth','','5','dth@netadmin.alterland.net'),(2,'2016-09-03 22:07:18','',1472940438,'','Charlotte','dth','2','dth@Clk-8662DC08.adsl-dyn.isp.belgacom.be'),(3,'2016-09-18 14:56:02','',1474210562,'','root','dth','2','dth@netadmin.alterland.net');
/*!40000 ALTER TABLE `irc_db_SeenInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irc_db_Stats`
--

DROP TABLE IF EXISTS `irc_db_Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_db_Stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maxusercnt` text,
  `maxusertime` text,
  PRIMARY KEY (`id`),
  KEY `timestamp_idx` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irc_db_Stats`
--

LOCK TABLES `irc_db_Stats` WRITE;
/*!40000 ALTER TABLE `irc_db_Stats` DISABLE KEYS */;
INSERT INTO `irc_db_Stats` VALUES (1,'2016-09-03 21:44:59','8','1472939099');
/*!40000 ALTER TABLE `irc_db_Stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-24 13:36:24
