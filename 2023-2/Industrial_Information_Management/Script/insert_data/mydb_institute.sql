-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institute` (
  `InstituteID` int NOT NULL,
  `InstituteName` varchar(45) NOT NULL,
  `InstituteCode` varchar(7) NOT NULL,
  `InstituteAcronym` varchar(45) NOT NULL,
  `INSTITUTE_LOCATION_InstituteLocation` varchar(45) NOT NULL,
  PRIMARY KEY (`InstituteID`),
  KEY `fk_INSTITUTE_INSTITUTE_LOCATION1_idx` (`INSTITUTE_LOCATION_InstituteLocation`),
  CONSTRAINT `fk_INSTITUTE_INSTITUTE_LOCATION1` FOREIGN KEY (`INSTITUTE_LOCATION_InstituteLocation`) REFERENCES `institute_location` (`InstituteLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES (1,'National Institute for Agricultural Research','FRA040','INRA','France'),(3,'Natural Resources Institute Finland','FIN027','Luke','Finland'),(4,'Temasek Life Sciences Laboratory Limited','SGP008','TLL','Singapore'),(5,'Cherokee Nation','USA1005','CN','United States'),(6,'Baekdudaegan National Arboretum','KOR048','BDNA','Republic of Korea'),(7,'Botanical Garden, University of Bonn','DEU038','ABGBONN','Germany');
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 20:24:44
