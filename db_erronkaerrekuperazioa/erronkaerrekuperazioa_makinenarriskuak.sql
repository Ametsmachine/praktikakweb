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
-- Table structure for table `makinenarriskuak`
--

DROP TABLE IF EXISTS `makinenarriskuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinenarriskuak` (
  `idmakinenarriskua` int NOT NULL AUTO_INCREMENT,
  `arriskuak_idarriskua` int NOT NULL,
  `makina_id_makina` int NOT NULL,
  PRIMARY KEY (`idmakinenarriskua`),
  KEY `fk_arriskuak_has_makina_makina1_idx` (`makina_id_makina`),
  KEY `fk_arriskuak_has_makina_arriskuak_idx` (`arriskuak_idarriskua`),
  CONSTRAINT `fk_arriskuak_has_makina_arriskuak` FOREIGN KEY (`arriskuak_idarriskua`) REFERENCES `arriskuak` (`idarriskua`),
  CONSTRAINT `fk_arriskuak_has_makina_makina1` FOREIGN KEY (`makina_id_makina`) REFERENCES `makina` (`id_makina`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinenarriskuak`
--

LOCK TABLES `makinenarriskuak` WRITE;
/*!40000 ALTER TABLE `makinenarriskuak` DISABLE KEYS */;
INSERT INTO `makinenarriskuak` VALUES (1,1,1),(2,2,1),(3,3,1),(4,1,2),(5,2,2),(6,3,2),(7,1,3),(8,2,3),(9,3,3),(10,1,4),(11,2,4),(12,3,4),(13,1,5),(14,2,5),(15,3,5),(16,1,6),(17,2,6),(18,3,6),(19,1,7),(20,2,7),(21,3,7),(22,1,8),(23,2,8),(24,3,8),(25,1,9),(26,2,9),(27,3,9),(28,1,10),(29,2,10),(30,3,10),(31,1,11),(32,2,11),(33,3,11),(34,1,12),(35,2,12),(36,3,12),(37,1,13),(38,2,13),(39,3,13),(40,1,14),(41,2,14),(42,3,14),(43,4,14),(56,1,25),(57,2,25),(58,3,25),(74,1,26),(75,2,26),(76,3,26);
/*!40000 ALTER TABLE `makinenarriskuak` ENABLE KEYS */;
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
