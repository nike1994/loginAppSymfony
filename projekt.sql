-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: projekt
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-2ubuntu1

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
-- Current Database: `projekt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projekt` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `projekt`;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220512223342','2022-05-12 22:34:21',69);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (46,'test1','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',0),(48,'test3','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(49,'test4','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(50,'test5','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(51,'test6','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(52,'test7','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(53,'test8','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(54,'test9','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(55,'test10','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(56,'test11','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(57,'test12','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(58,'test13','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(59,'test14','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(60,'test15','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(61,'test16','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(62,'test17','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(63,'test18','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(64,'test19','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(65,'test20','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(66,'test21','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(67,'test22','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(68,'test23','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',0),(69,'test24','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(70,'test25','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(71,'test26','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(72,'test27','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1),(73,'test28','[]','$2y$13$QQ/LUiNdqgDqs9KCCpYKPuHOHWZ20/Sv0vEb/sSdb.YXscPcdK7z6',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13 13:39:40
