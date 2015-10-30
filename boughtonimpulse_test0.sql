-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: boughtonimpulse
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(2,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(3,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(4,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(5,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(6,'http://citycampldn.govfresh.com/files/2011/02/GovLoop-logo2-300x150.gif'),(7,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(8,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(9,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(10,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(11,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(12,'http://citycampldn.govfresh.com/files/2011/02/GovLoop-logo2-300x150.gif'),(13,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(14,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(15,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(16,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(17,'http://www.fma-communications.com/assets/images/mediakit/rectangle-banner300x150.jpg'),(18,'http://citycampldn.govfresh.com/files/2011/02/GovLoop-logo2-300x150.gif');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-29 18:05:30
