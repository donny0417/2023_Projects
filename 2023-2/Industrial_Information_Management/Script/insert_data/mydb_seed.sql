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
-- Table structure for table `seed`
--

DROP TABLE IF EXISTS `seed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed` (
  `SeedID` int NOT NULL,
  `SeedName` varchar(45) NOT NULL,
  `Genus` varchar(45) NOT NULL,
  `Species` varchar(45) NOT NULL,
  `FullScientificName` varchar(75) NOT NULL,
  PRIMARY KEY (`SeedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seed`
--

LOCK TABLES `seed` WRITE;
/*!40000 ALTER TABLE `seed` DISABLE KEYS */;
INSERT INTO `seed` VALUES (1,'Common Wheat','Triticum','Triticum aestivum','Triticum aestivum subsp. aestivum L.'),(2,'Maize','Zea','Zea mays','Zea mays L.'),(3,'Scots Pine','Pinus','Pinus sylvestris','Pinus sylvestris'),(4,'Norway spruce','Picea','Picea abies','Picea abies L.'),(5,'Indica Rice','Oryza','Oryza sativa','Oryza sativa subsp. indica'),(6,'Japonica Rice','Oryza','Oryza sativa','Oryza sativa Japonica'),(7,'Common Bean','Phaseolus','Phaseolus vulgaris','Phaseolus vulgaris'),(8,'Buttercup Squash','Cucurbita','Cucurbita maxima','Cucurbita maxima'),(9,'Korean Creeping Raspberry','Rubus','Rubus oldhamii','Rubus oldhamii Miq.'),(10,'Great Burnet','Sanguisorba','Sanguisorba officinalis','Sanguisorba officinalis L.'),(11,'Spikenard','Aralia','Aralia cordata','Aralia cordata var. continentalis (Kitag.) Y.C. Chu'),(12,'Korean Mint','Agastache','Agastache rugosa','Agastache rugosa (Fisch. & Mey.) Kuntze'),(13,'Woundwort','Solidago','Solidago virgaurea','Solidago virgaurea subsp. gigantea (Nakai) Kitam.'),(14,'Goat\'s Beard','Aruncus','Aruncus dioicus','Aruncus dioicus var. kamtschaticus (Maxim.) H. Hara'),(15,'Siberian Veronicastrum','Veronicastrum','Veronicastrum sibiricum','Veronicastrum sibiricum (L.) Pennell'),(16,'Aging Chive','Allium','Allium senescens','Allium senescens L.'),(17,'Stalkless-flower Eleuthero','Eleutherococcus','Eleutherococcus sessiliflorus','Eleutherococcus sessiliflorus (Rupr. & Maxim.) S.Y. Hu'),(18,'Toringo Crabapple','Malus','Malus sieboldii','Malus sieboldii (Regel) Rehder'),(19,'Wild Cabbage','Brassica','Brassica oleracea','Brassica oleracea convar. capitata var. sabauda L.'),(20,'Cucumber','Cucumis','Cucumis sativus','Cucumis sativus L.'),(21,'Head Lettuce','Lacuta','Lactuca sativa','Lactuca sativa var. capitata L.'),(22,'Leaf Lettuce','Lacuta','Lactuca sativa','Lactuca sativa var. crispa L.'),(23,'Tomato','Solanum','Solanum lycopersicum','Solanum lycopersicum L.'),(24,'Spinach','Spinacia','Spinacia oleracea','Spinacia oleracea L.'),(25,'Italian Corn-salad','Valerianella','Valerianella eriocarpa','Valerianella eriocarpa Desv.'),(26,'Common Corn-salad','Valerianella','Valerianella locusta','Valerianella locusta (L.) Laterr.'),(27,'European Wild Pear','Pyrus','Pyrus pyraster','Pyrus pyraster (L.) Burgsd.'),(28,'Crab Apple','Malus','Malus sylvestris','Malus sylvestris (L.) Mill.'),(29,'Wild Strawberry','Fragaria','Fragaria vesca','Fragaria vesca L.'),(30,'Alpine Strawberry','Fragaria','Fragaria vesca','Fragaria vesca f. semperflorens'),(31,'Information Needed','Citrus','Citrus sinensis','Citrus sinensis'),(32,'Information Needed','Rosa','Rosa hybrida','Rosa hybrida'),(33,'Information Needed','Rosa','Rosa hybrida','Rosa hybrida');
/*!40000 ALTER TABLE `seed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 20:24:45
