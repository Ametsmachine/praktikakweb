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
-- Table structure for table `makinenhondakinak`
--

DROP TABLE IF EXISTS `makinenhondakinak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinenhondakinak` (
  `id_makinenhondakinak` int NOT NULL AUTO_INCREMENT,
  `sorrarazitakohondakinak_id_hondakinak` int NOT NULL,
  `makina_id_makina` int NOT NULL,
  PRIMARY KEY (`id_makinenhondakinak`),
  KEY `fk_sorrarazitakohondakinak_has_makina_makina1_idx` (`makina_id_makina`),
  KEY `fk_sorrarazitakohondakinak_has_makina_sorrarazitakohondakin_idx` (`sorrarazitakohondakinak_id_hondakinak`),
  CONSTRAINT `fk_sorrarazitakohondakinak_has_makina_makina1` FOREIGN KEY (`makina_id_makina`) REFERENCES `makina` (`id_makina`),
  CONSTRAINT `fk_sorrarazitakohondakinak_has_makina_sorrarazitakohondakinak1` FOREIGN KEY (`sorrarazitakohondakinak_id_hondakinak`) REFERENCES `sorrarazitakohondakinak` (`id_hondakinak`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinenhondakinak`
--

LOCK TABLES `makinenhondakinak` WRITE;
/*!40000 ALTER TABLE `makinenhondakinak` DISABLE KEYS */;
INSERT INTO `makinenhondakinak` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11),(56,1,12),(57,2,12),(58,3,12),(59,4,12),(60,5,12),(61,1,13),(62,2,13),(63,3,13),(64,4,13),(65,5,13),(66,1,14),(67,2,14),(68,3,14),(69,4,14),(70,5,14),(75,1,25),(76,2,25),(77,3,25),(78,4,25),(79,5,25),(101,1,26),(102,2,26),(103,3,26),(104,4,26);
/*!40000 ALTER TABLE `makinenhondakinak` ENABLE KEYS */;
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
