-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: caloriecounter
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `d_name` varchar(20) DEFAULT NULL,
  `d_calories` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` VALUES (101,'cheese omelet',221.000),(102,'garlic cheese toast',421.000),(103,'tomato soup',305.000),(104,'pav bhaji ',876.000),(105,'palak paneer',729.000),(106,'butter naan',221.000),(107,'poha',221.000),(108,'rava idli ',221.000),(109,'strawberry milkshake',221.000),(110,'ghee rice',221.000),(111,'peanut chutney',221.000),(112,'french fries',221.000),(113,'onion pakoda',221.000),(114,'poori',221.000),(115,'masoor dal',221.000),(116,'paneer butter masala',221.000),(117,'aloo paratha',221.000),(118,'samosa',221.000);
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eats`
--

DROP TABLE IF EXISTS `eats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eats` (
  `e_id` int NOT NULL,
  `u_id` int DEFAULT NULL,
  `d_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `tot_calories` decimal(6,2) DEFAULT NULL,
  `datetime` date DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `u_id` (`u_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `eats_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`),
  CONSTRAINT `eats_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `dishes` (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eats`
--

LOCK TABLES `eats` WRITE;
/*!40000 ALTER TABLE `eats` DISABLE KEYS */;
/*!40000 ALTER TABLE `eats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `i_id` int NOT NULL,
  `i_name` varchar(50) DEFAULT NULL,
  `i_calorie` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'egg',52.00),(2,'cheese',314.00),(3,'oil',900.00),(4,'bread',248.00),(5,'butter',722.00),(6,'garlic',149.00),(7,'pepper',40.00),(8,'tomatoes',22.00),(9,'onion',40.00),(10,'carrot',41.00),(11,'potatoes',361.00),(12,'green peas',81.00),(13,'paneer',296.00),(14,'spinach',23.00),(15,'green chillies',40.00),(16,'wheat flour',367.00),(17,'curd',61.50),(18,'milk',43.20),(19,'poha flakes',364.00),(20,'coconut',354.00),(21,'lemon',29.00),(22,'turmeric',354.00),(23,'peanut',567.00),(24,'rava',360.00),(25,'ghee',814.00),(26,'cashew',553.00),(27,'strawberry',36.00),(28,'ice cream',255.00),(29,'sugar',387.00),(30,'basmati rice',350.00),(31,'raisins',299.00),(32,'cardamom',311.00),(33,'cloves',323.00),(34,'cumin seeds',375.00),(35,'mint leaves',60.00),(36,'ginger',80.00),(37,'chilli powder',282.00),(38,'gram flour',387.00),(39,'curry leaves',108.00),(40,'garam masala',400.00),(41,'maida',364.00),(42,'masoor dal',116.00),(43,'red chilli',40.00);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `u_name` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `weight` decimal(4,1) DEFAULT NULL,
  `height` decimal(4,1) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1201,'raj',19,99.6,176.5,'raj2004','raj2004@gmail.com'),(1202,'sam',29,80.0,165.5,'sam2002','sam@gmail.com'),(1203,'ravi',21,75.6,156.5,'ravi2003','ravi@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizes`
--

DROP TABLE IF EXISTS `utilizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizes` (
  `u_id` int NOT NULL,
  `d_id` int DEFAULT NULL,
  `i_id` int DEFAULT NULL,
  `quantity` decimal(5,3) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  KEY `d_id` (`d_id`),
  KEY `i_id` (`i_id`),
  CONSTRAINT `utilizes_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `dishes` (`d_id`),
  CONSTRAINT `utilizes_ibfk_2` FOREIGN KEY (`i_id`) REFERENCES `ingredients` (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizes`
--

LOCK TABLES `utilizes` WRITE;
/*!40000 ALTER TABLE `utilizes` DISABLE KEYS */;
INSERT INTO `utilizes` VALUES (1,101,1,1.000),(2,101,2,0.250),(3,101,3,0.100),(4,102,4,0.600),(5,102,5,0.100),(6,102,6,0.080),(7,102,2,0.600),(8,103,8,0.500),(9,103,3,0.250),(10,103,9,0.500),(11,103,6,0.250),(12,103,7,0.100),(13,103,10,0.200),(14,104,3,0.250),(15,104,5,0.100),(16,104,9,1.000),(17,104,8,1.000),(18,104,11,1.000),(19,104,12,0.750),(20,104,10,0.500),(21,104,4,0.300),(22,105,13,1.500),(23,105,14,0.500),(24,105,3,0.250),(25,105,15,0.100),(26,105,9,0.900),(27,105,8,0.400);
/*!40000 ALTER TABLE `utilizes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 21:23:43
