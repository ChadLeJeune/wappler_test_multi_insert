-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: test_multi-insert
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-1:10.5.12+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `child_table`
--

DROP TABLE IF EXISTS `child_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ChildName` varchar(255) DEFAULT NULL,
  `OtherValue` varchar(255) DEFAULT NULL,
  `FKParentID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `child_table_fkparentid_foreign` (`FKParentID`),
  CONSTRAINT `child_table_fkparentid_foreign` FOREIGN KEY (`FKParentID`) REFERENCES `parent_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_table`
--

LOCK TABLES `child_table` WRITE;
/*!40000 ALTER TABLE `child_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_table`
--

DROP TABLE IF EXISTS `parent_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ParentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_table`
--

LOCK TABLES `parent_table` WRITE;
/*!40000 ALTER TABLE `parent_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wappler_migrations`
--

DROP TABLE IF EXISTS `wappler_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wappler_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wappler_migrations`
--

LOCK TABLES `wappler_migrations` WRITE;
/*!40000 ALTER TABLE `wappler_migrations` DISABLE KEYS */;
INSERT INTO `wappler_migrations` VALUES (1,'20210827110958_Delete default tables and create parent and child tables.js',1,'2021-08-27 11:09:58'),(2,'20210827114405_Added FKParentID reference to child_table.js',2,'2021-08-27 11:44:05');
/*!40000 ALTER TABLE `wappler_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wappler_migrations_lock`
--

DROP TABLE IF EXISTS `wappler_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wappler_migrations_lock` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wappler_migrations_lock`
--

LOCK TABLES `wappler_migrations_lock` WRITE;
/*!40000 ALTER TABLE `wappler_migrations_lock` DISABLE KEYS */;
INSERT INTO `wappler_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `wappler_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-27 19:51:07
