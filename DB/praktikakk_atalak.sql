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
-- Table structure for table `atalak`
--

DROP TABLE IF EXISTS `atalak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atalak` (
  `id_atalak` int NOT NULL,
  `atalak` longtext,
  `id_makina` int DEFAULT NULL,
  PRIMARY KEY (`id_atalak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atalak`
--

LOCK TABLES `atalak` WRITE;
/*!40000 ALTER TABLE `atalak` DISABLE KEYS */;
INSERT INTO `atalak` VALUES (1,'1.Gorputza',1),(2,'2.Zubia',1),(3,'3.Erreminta etxearen ardatza',1),(4,'4.Mentsula',1),(5,'5.Orga mahai etxea',1),(6,'6.Mahaia',1),(7,'7.Cnc kontrola',1),(8,'1.Abiadura kaxa',2),(9,'2.Azinapen kaxa',2),(10,'3.Orgak',2),(11,'4.Kontraburua',2),(12,'5.Balazta',2),(13,'6.Kota bisualizadore digitala',2),(14,'7.Platera',2),(15,'8.Babesa',2),(16,'1.Gorputza',0),(17,'2.Zubia',0),(18,'3.Erreminta etxearen ardatza',0),(19,'4.Mentsula',0),(20,'5.Orga mahai etxea',0),(21,'6.Mahaia',0),(22,'1.Abiadura kaxa',3),(23,'2.Azinapen kaxa',3),(24,'3.Orgak',3),(25,'4.Kontraburua',3);
/*!40000 ALTER TABLE `atalak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31  8:56:19
