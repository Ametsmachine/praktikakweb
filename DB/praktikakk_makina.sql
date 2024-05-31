-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: praktikakk
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `makina`
--

DROP TABLE IF EXISTS `makina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makina` (
  `id_makina` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(45) DEFAULT NULL,
  `marka` varchar(45) DEFAULT NULL,
  `modeloa` varchar(45) DEFAULT NULL,
  `kokapena` varchar(45) DEFAULT NULL,
  `aktibozenbakia` int DEFAULT NULL,
  `CEmarka` varchar(3) DEFAULT NULL,
  `bideoa` varchar(45) DEFAULT NULL,
  `QR` longtext,
  `fabrikazioUrtea` varchar(45) DEFAULT NULL,
  `erosketaUrtea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_makina`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makina`
--

LOCK TABLES `makina` WRITE;
/*!40000 ALTER TABLE `makina` DISABLE KEYS */;
INSERT INTO `makina` VALUES (1,'F-0','KONDIA (POWERMILL)','FV1','1110',4834,'Ez','https://www.youtube.com/watch?v=pxFYgrmo3Rc',NULL,'1982','1982'),(2,'F-1','LAGUN ','3 PLUS ','1110 ',3180,'Bai','','','',''),(3,'F-2','LAGUN ','3 PLUS ','1110 ',3182,'Bai','','','1998','1998'),(4,'F-3','LAGUN ','3 PLUS ','3181  ',3181,'Bai','','','1998','1998'),(5,'F-4','GORATU','GVM2 ','1110',7779,'Bai','','','2001','2001'),(6,'F-5','GORATU','GVM2 ','1110',7820,'Bai','','','2001','2001'),(7,'F-6','KONDIA','FV1 ','1110',76,'Bai','','','1992','1992'),(8,'F-7','KONDIA','FV1 ','1110',12568,'Bai','','','',''),(9,'F-8','KONDIA','FV1 ','1110',76,'Bai','','','1992','1992'),(10,'F-9','KONDIA','FV1 ','1110',76,'Bai','','','1992','1992'),(11,'F-10','PINACHO ','S90/200 ','107 TAILERRA ',128,'Bai','','','1993','1993'),(12,'F-11','PINACHO ','S90/200 ','107 TAILERRA ',128,'Bai','','','1993','1993'),(13,'F-12','PINACHO ','S90/200 ','107 TAILERRA ',128,'Bai','','','1993','1993'),(14,'T-12','PINACHO ','S90/200 ','107 TAILERRA ',128,'Bai','','','',''),(18,'a','aaaa','aaa','aaa',22,'Bai',NULL,NULL,NULL,NULL),(19,'biiii','bbbb','bbbb','bbbb',333333,'Ez',NULL,NULL,NULL,NULL),(20,'yy','yy','yy','yy',88,'yy',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `makina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31  8:56:20
