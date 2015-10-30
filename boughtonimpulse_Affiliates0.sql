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
  `img` varchar(1000) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `tracker_id` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Affiliates`
--

LOCK TABLES `Affiliates` WRITE;
/*!40000 ALTER TABLE `Affiliates` DISABLE KEYS */;
INSERT INTO `Affiliates` VALUES (1,'http://www.amazon.com/gp/product/B0002AASH8/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B0002AASH8&linkCode=as2&tag=boughtonimpul-20&linkId=GB6DULYQPK3UOQOI','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0002AASH8&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',99,'body pillow',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B0002AASH8',NULL),(2,'http://www.amazon.com/gp/product/B005CUZ24C/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B005CUZ24C&linkCode=as2&tag=boughtonimpul-20&linkId=KEXACOMTZHA6J2FV','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B005CUZ24C&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ','amazon',6,'beanie',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B005CUZ24C',NULL),(3,'http://www.amazon.com/gp/product/B002MUBWVM/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B002MUBWVM&linkCode=as2&tag=boughtonimpul-20&linkId=23QYWDOYDMZQSWXD','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B002MUBWVM&Format=_SL110_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',6,'something',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B002MUBWVM',NULL),(4,'http://www.amazon.com/gp/product/B00V895CO6/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00V895CO6&linkCode=as2&tag=boughtonimpul-20&linkId=G6KC4DUU6SZXDECG','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00V895CO6&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',18.9,'Sushi Socks',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00V895CO6',NULL),(5,'http://www.amazon.com/gp/product/B00N8GWZ4M/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00N8GWZ4M&linkCode=as2&tag=boughtonimpul-20&linkId=ZHFZPNEXOWDRT5EX','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00N8GWZ4M&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',49.99,'Phone Controlled Plane',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00N8GWZ4M',NULL),(6,'http://www.amazon.com/gp/product/B0060KF6Q2/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B0060KF6Q2&linkCode=as2&tag=boughtonimpul-20&linkId=UYEZ2XHRWOLYCWWF','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0060KF6Q2&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',39.99,'banana costume',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B0060KF6Q2',NULL),(7,'http://www.amazon.com/gp/product/B00XV5VXSO/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00XV5VXSO&linkCode=as2&tag=boughtonimpul-20&linkId=CRDMYJIQS4XY5YUJ','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00XV5VXSO&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20\" ></a><img src=\"http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00','amazon',30,'chambong',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00XV5VXSO',NULL),(8,'http://www.amazon.com/gp/product/B007TLC4YS/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B007TLC4YS&linkCode=as2&tag=boughtonimpul-20&linkId=A4K4ADK243G5QRXV','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B007TLC4YS&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',14.99,'Offensive business cards',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B007TLC4YS',NULL),(9,'http://www.amazon.com/gp/product/B00E6WPS8C/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00E6WPS8C&linkCode=as2&tag=boughtonimpul-20&linkId=PS7WVFZDPTUISKQ3','http://www.thisiswhyimbroke.com/images/oreo-dunking-spoon.jpg','amazon',6.75,'oreo dunker',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00E6WPS8C',NULL),(10,'http://www.amazon.com/gp/product/B00323LXCG/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00323LXCG&linkCode=as2&tag=boughtonimpul-20&linkId=NVTC7A3ZVVZME75X','http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00323LXCG&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=boughtonimpul-20','amazon',3,'Touch Sensitive Plants',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00323LXCG',NULL),(11,'http://www.amazon.com/gp/product/B000N5YBKC/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B000N5YBKC&linkCode=as2&tag=boughtonimpul-20&linkId=URMKD4VE4ETT23FV','http://ecx.images-amazon.com/images/I/51yNuaNErZL.jpg','amazon',15.28,'Bag Re-Sealer',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B000N5YBKC',NULL),(12,'http://www.amazon.com/gp/product/B001GQ2SQ6/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B001GQ2SQ6&linkCode=as2&tag=boughtonimpul-20&linkId=IWM7V2HBIFMF725R','http://www.thisiswhyimbroke.com/images/titanic-ice-cube-mold1-640x533.jpg','amazon',8.8,'Titanic Ice Tray',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B001GQ2SQ6',NULL),(13,'http://www.amazon.com/gp/product/B00BKQSL2C/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00BKQSL2C&linkCode=as2&tag=boughtonimpul-20&linkId=IDNSAG7ACF3LJ4GM','http://i.kinja-img.com/gawker-media/image/upload/s--pIfu4Fe---/c_scale,fl_progressive,q_80,w_800/18c7d8ygkx26jjpg.jpg','amazon',9.99,'Bottle Cap Gun',NULL,NULL,'http://ir-na.amazon-adsystem.com/e/ir?t=boughtonimpul-20&l=as2&o=1&a=B00BKQSL2C',NULL);
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

-- Dump completed on 2015-10-29 18:05:30
