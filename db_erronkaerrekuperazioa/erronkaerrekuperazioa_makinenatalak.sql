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
-- Table structure for table `makinenatalak`
--

DROP TABLE IF EXISTS `makinenatalak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinenatalak` (
  `id_makinenatalak` int NOT NULL AUTO_INCREMENT,
  `atalak_id_atalak` int NOT NULL,
  `makina_id_makina` int NOT NULL,
  PRIMARY KEY (`id_makinenatalak`),
  KEY `fk_atalak_has_makina_makina1_idx` (`makina_id_makina`),
  KEY `fk_atalak_has_makina_atalak1_idx` (`atalak_id_atalak`),
  CONSTRAINT `fk_atalak_has_makina_atalak1` FOREIGN KEY (`atalak_id_atalak`) REFERENCES `atalak` (`id_atalak`),
  CONSTRAINT `fk_atalak_has_makina_makina1` FOREIGN KEY (`makina_id_makina`) REFERENCES `makina` (`id_makina`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinenatalak`
--

LOCK TABLES `makinenatalak` WRITE;
/*!40000 ALTER TABLE `makinenatalak` DISABLE KEYS */;
INSERT INTO `makinenatalak` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,1,2),(9,2,2),(10,3,2),(11,4,2),(12,5,2),(13,6,2),(14,7,2),(15,1,3),(16,2,3),(17,3,3),(18,4,3),(19,5,3),(20,6,3),(21,7,3),(22,1,4),(23,2,4),(24,3,4),(25,4,4),(26,5,4),(27,6,4),(28,7,4),(29,1,5),(30,2,5),(31,3,5),(32,4,5),(33,5,5),(34,6,5),(36,1,6),(37,2,6),(38,3,6),(39,4,6),(40,5,6),(41,6,6),(43,1,7),(44,2,7),(45,3,7),(46,4,7),(47,5,7),(48,6,7),(50,1,8),(51,2,8),(52,3,8),(53,4,8),(54,5,8),(55,6,8),(57,1,9),(58,2,9),(59,3,9),(60,4,9),(61,5,9),(62,6,9),(64,1,10),(65,2,10),(66,3,10),(67,4,10),(68,5,10),(69,6,10),(71,1,11),(72,2,11),(73,3,11),(74,4,11),(75,5,11),(76,6,11),(78,1,12),(79,2,12),(80,3,12),(81,4,12),(82,5,12),(83,6,12),(85,1,13),(86,2,13),(87,3,13),(88,4,13),(89,5,13),(90,6,13),(91,1,14),(92,2,14),(93,3,14),(94,4,14),(95,5,14),(96,6,14),(97,7,14),(98,8,14),(101,1,25),(102,2,25),(103,3,25),(104,4,25),(105,5,25),(106,6,25),(107,7,25),(108,8,25),(158,1,26),(159,2,26),(160,3,26),(161,4,26),(162,5,26),(163,6,26),(164,7,26),(165,8,26);
/*!40000 ALTER TABLE `makinenatalak` ENABLE KEYS */;
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
