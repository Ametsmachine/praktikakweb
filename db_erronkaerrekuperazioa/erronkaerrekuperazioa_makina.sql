-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: erronkaerrekuperazioa
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
  `izena` varchar(45) NOT NULL,
  `marka` varchar(45) NOT NULL,
  `modeloa` varchar(45) NOT NULL,
  `kokapena` varchar(45) NOT NULL,
  `aktibozenbakia` int NOT NULL,
  `CEmarka` varchar(3) NOT NULL,
  PRIMARY KEY (`id_makina`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makina`
--

LOCK TABLES `makina` WRITE;
/*!40000 ALTER TABLE `makina` DISABLE KEYS */;
INSERT INTO `makina` VALUES (1,'F-0','KONDIA (POWERMILL)','FV1','1110',4834,'Ez'),(2,'F-1','LAGUN','3 PLUS','1110',3180,'Bai'),(3,'F-2','LAGUN','3 PLUS','1110',3182,'Bai'),(4,'F-3','LAGUN','3 PLUS','3181',3181,'Bai'),(5,'F-4','GORATU','GVM2','1110',7779,'Bai'),(6,'F-5','GORATU','GVM2','1110',7820,'Bai'),(7,'F-6','KONDIA','FV1','1110',76,'Bai'),(8,'F-7','KONDIA','FV1','1110',12568,'Bai'),(9,'F-8','KONDIA','FV1','1110',76,'Bai'),(10,'F-9','KONDIA','FV1','1110',76,'Bai'),(11,'F-10','PINACHO','S90/200','107 TAILERRA',128,'Bai'),(12,'F-11','PINACHO','S90/200','107 TAILERRA',128,'Bai'),(13,'F-12','PINACHO','S90/200','107 TAILERRA',128,'Bai'),(14,'T-12','PINACHO','S90/200','107 TAILERRA',128,'Bai'),(25,'ba','ba','ba','ba',22,'Bai'),(26,'xxx','x','xx','xx',11,'x');
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

-- Dump completed on 2024-06-12 17:24:30
