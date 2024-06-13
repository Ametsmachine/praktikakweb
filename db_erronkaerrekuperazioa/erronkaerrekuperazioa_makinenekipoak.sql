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
-- Table structure for table `makinenekipoak`
--

DROP TABLE IF EXISTS `makinenekipoak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinenekipoak` (
  `id_makinen_ekipoak` int NOT NULL AUTO_INCREMENT,
  `ekipoak_id_ekipoak` int NOT NULL,
  `makina_id_makina` int NOT NULL,
  PRIMARY KEY (`id_makinen_ekipoak`),
  KEY `fk_ekipoak_has_makina_makina1_idx` (`makina_id_makina`),
  KEY `fk_ekipoak_has_makina_ekipoak1_idx` (`ekipoak_id_ekipoak`),
  CONSTRAINT `fk_ekipoak_has_makina_ekipoak1` FOREIGN KEY (`ekipoak_id_ekipoak`) REFERENCES `ekipoak` (`id_ekipoak`),
  CONSTRAINT `fk_ekipoak_has_makina_makina1` FOREIGN KEY (`makina_id_makina`) REFERENCES `makina` (`id_makina`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinenekipoak`
--

LOCK TABLES `makinenekipoak` WRITE;
/*!40000 ALTER TABLE `makinenekipoak` DISABLE KEYS */;
INSERT INTO `makinenekipoak` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,1,2),(6,2,2),(7,3,2),(8,4,2),(9,1,3),(10,2,3),(11,3,3),(12,4,3),(13,1,4),(14,2,4),(15,3,4),(16,4,4),(17,1,5),(18,2,5),(19,3,5),(20,4,5),(21,1,6),(22,2,6),(23,3,6),(24,4,6),(25,1,7),(26,2,7),(27,3,7),(28,4,7),(29,1,8),(30,2,8),(31,3,8),(32,4,8),(33,1,9),(34,2,9),(35,3,9),(36,4,9),(37,1,10),(38,2,10),(39,3,10),(40,4,10),(41,1,11),(42,2,11),(43,3,11),(44,4,11),(45,1,12),(46,2,12),(47,3,12),(48,4,12),(49,1,13),(50,2,13),(51,3,13),(52,4,13),(53,1,14),(54,2,14),(55,3,14),(56,4,14),(59,1,25),(60,2,25),(80,1,26),(81,2,26),(82,3,26);
/*!40000 ALTER TABLE `makinenekipoak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 17:24:29
