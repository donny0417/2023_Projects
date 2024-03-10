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
-- Table structure for table `seed_has_origin_country`
--

DROP TABLE IF EXISTS `seed_has_origin_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_has_origin_country` (
  `SEED_SeedID` int NOT NULL,
  `ORIGIN_COUNTRY_CountryID` int NOT NULL,
  PRIMARY KEY (`SEED_SeedID`,`ORIGIN_COUNTRY_CountryID`),
  KEY `fk_SEED_has_ORIGIN_COUNTRY_ORIGIN_COUNTRY1_idx` (`ORIGIN_COUNTRY_CountryID`),
  KEY `fk_SEED_has_ORIGIN_COUNTRY_SEED1_idx` (`SEED_SeedID`),
  CONSTRAINT `fk_SEED_has_ORIGIN_COUNTRY_ORIGIN_COUNTRY1` FOREIGN KEY (`ORIGIN_COUNTRY_CountryID`) REFERENCES `origin_country` (`CountryID`),
  CONSTRAINT `fk_SEED_has_ORIGIN_COUNTRY_SEED1` FOREIGN KEY (`SEED_SeedID`) REFERENCES `seed` (`SeedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seed_has_origin_country`
--

LOCK TABLES `seed_has_origin_country` WRITE;
/*!40000 ALTER TABLE `seed_has_origin_country` DISABLE KEYS */;
INSERT INTO `seed_has_origin_country` VALUES (1,1),(2,2),(3,3),(4,3),(5,4),(6,4),(2,5),(7,5),(8,5),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,7),(20,7),(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,7),(28,7),(29,7),(30,7);
/*!40000 ALTER TABLE `seed_has_origin_country` ENABLE KEYS */;
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
