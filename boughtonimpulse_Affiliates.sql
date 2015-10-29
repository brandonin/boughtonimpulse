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
-- Table structure for table `Affiliates`
--

DROP TABLE IF EXISTS `Affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(10000) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Affiliates`
--

LOCK TABLES `Affiliates` WRITE;
/*!40000 ALTER TABLE `Affiliates` DISABLE KEYS */;
INSERT INTO `Affiliates` VALUES (1,'<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B0001EFSTI/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0001EFSTI&linkCode=as2&tag=boughtonimpul-20&linkId=I6SAVFUZR3W7FYYR\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0001EFSTI&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B0001EFSTI\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />',NULL,'amazon',6,'swiss knife',NULL,NULL),(2,'<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B0079KGZ76/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0079KGZ76&linkCode=as2&tag=boughtonimpul-20&linkId=U4EEBAITHLZS6ND7\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0079KGZ76&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B0079KGZ76\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />\n',NULL,'amazon',6,'beanie',NULL,NULL),(3,'<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B00HECQSJO/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00HECQSJO&linkCode=as2&tag=boughtonimpul-20&linkId=DYYUKVYKXRH4C6TS\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00HECQSJO&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00HECQSJO\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />\n<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B00HECQSJO/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00HECQSJO&linkCode=as2&tag=boughtonimpul-20&linkId=DYYUKVYKXRH4C6TS\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00HECQSJO&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-ad',NULL,'amazon',6,'something',NULL,NULL),(4,'<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B00E6GA38I/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00E6GA38I&linkCode=as2&tag=boughtonimpul-20&linkId=JVUQHY6V5QFOS5IG\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00E6GA38I&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00E6GA38I\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />\n',NULL,'amazon',6,'yoga',NULL,NULL),(5,'<a rel=\"nofollow\" href=\"http://www.amazon.com/gp/product/B0009HKEXM/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0009HKEXM&linkCode=as2&tag=boughtonimpul-20&linkId=ZLIBTSO2JIHM3TQH\"><img border=\"0\" src=\"http://ws-na.amazon-adsystem.com/widg...',NULL,'amazon',6,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Affiliates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-29 13:04:53
