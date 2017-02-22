CREATE DATABASE  IF NOT EXISTS `burgers_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `burgers_db`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: burgers_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `burgers`
--

DROP TABLE IF EXISTS `burgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `burgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `burger_name` varchar(255) NOT NULL,
  `devoured` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burgers`
--

LOCK TABLES `burgers` WRITE;
/*!40000 ALTER TABLE `burgers` DISABLE KEYS */;
INSERT INTO `burgers` VALUES (1,'hamburger',1,'2017-02-14 00:01:37','2017-02-14 00:01:37'),(2,'cheeseburger',0,'2017-02-14 00:01:37','2017-02-14 00:01:37'),(3,'turkey burger',1,'2017-02-14 00:01:37','2017-02-22 02:31:26'),(4,'hamburger',0,'2017-02-21 17:06:24','2017-02-21 17:06:24'),(5,'aburger',1,'2017-02-22 01:01:17','2017-02-22 02:05:19'),(6,'a new burger',0,'2017-02-22 01:15:07','2017-02-22 01:15:07'),(7,'avocado burger',0,'2017-02-22 01:16:10','2017-02-22 01:16:10'),(8,'bacon cheese burger',0,'2017-02-22 01:18:20','2017-02-22 01:18:20'),(9,'Emily\'s Burger',0,'2017-02-22 02:31:41','2017-02-22 02:31:41');
/*!40000 ALTER TABLE `burgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'burgers_db'
--

--
-- Dumping routines for database 'burgers_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-21 21:05:56
