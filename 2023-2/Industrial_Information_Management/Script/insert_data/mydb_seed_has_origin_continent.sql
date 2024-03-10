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
-- Table structure for table `seed_has_origin_continent`
--

DROP TABLE IF EXISTS `seed_has_origin_continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_has_origin_continent` (
  `SEED_SeedID` int NOT NULL,
  `ORIGIN_CONTINENT_ContinentID` int NOT NULL,
  PRIMARY KEY (`SEED_SeedID`,`ORIGIN_CONTINENT_ContinentID`),
  KEY `fk_SEED_has_ORIGIN_CONTINENT_ORIGIN_CONTINENT1_idx` (`ORIGIN_CONTINENT_ContinentID`),
  KEY `fk_SEED_has_ORIGIN_CONTINENT_SEED1_idx` (`SEED_SeedID`),
  CONSTRAINT `fk_SEED_has_ORIGIN_CONTINENT_ORIGIN_CONTINENT1` FOREIGN KEY (`ORIGIN_CONTINENT_ContinentID`) REFERENCES `origin_continent` (`ContinentID`),
  CONSTRAINT `fk_SEED_has_ORIGIN_CONTINENT_SEED1` FOREIGN KEY (`SEED_SeedID`) REFERENCES `seed` (`SeedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seed_has_origin_continent`
--

LOCK TABLES `seed_has_origin_continent` WRITE;
/*!40000 ALTER TABLE `seed_has_origin_continent` DISABLE KEYS */;
INSERT INTO `seed_has_origin_continent` VALUES (5,1),(6,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(1,2),(2,2),(3,2),(4,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(2,4),(7,4),(8,4);
/*!40000 ALTER TABLE `seed_has_origin_continent` ENABLE KEYS */;
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
