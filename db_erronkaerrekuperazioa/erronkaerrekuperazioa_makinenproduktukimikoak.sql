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
-- Table structure for table `makinenproduktukimikoak`
--

DROP TABLE IF EXISTS `makinenproduktukimikoak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinenproduktukimikoak` (
  `id_makinen_produktu_kimikoak` int NOT NULL AUTO_INCREMENT,
  `produktukimikoak_id_produtu` int NOT NULL,
  `makina_id_makina` int NOT NULL,
  PRIMARY KEY (`id_makinen_produktu_kimikoak`),
  KEY `fk_produktukimikoak_has_makina_makina1_idx` (`makina_id_makina`),
  KEY `fk_produktukimikoak_has_makina_produktukimikoak1_idx` (`produktukimikoak_id_produtu`),
  CONSTRAINT `fk_produktukimikoak_has_makina_makina1` FOREIGN KEY (`makina_id_makina`) REFERENCES `makina` (`id_makina`),
  CONSTRAINT `fk_produktukimikoak_has_makina_produktukimikoak1` FOREIGN KEY (`produktukimikoak_id_produtu`) REFERENCES `produktukimikoak` (`id_produtu`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinenproduktukimikoak`
--

LOCK TABLES `makinenproduktukimikoak` WRITE;
/*!40000 ALTER TABLE `makinenproduktukimikoak` DISABLE KEYS */;
INSERT INTO `makinenproduktukimikoak` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(15,1,8),(16,2,8),(17,1,9),(18,2,9),(19,1,10),(20,2,10),(21,1,11),(22,2,11),(23,1,12),(24,2,12),(25,1,13),(26,2,13),(27,1,14),(28,2,14),(29,3,14),(37,1,25),(38,2,25),(39,3,25),(59,1,26),(60,2,26),(61,3,26);
/*!40000 ALTER TABLE `makinenproduktukimikoak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 17:24:31
