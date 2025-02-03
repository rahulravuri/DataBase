-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bookmyshow
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingid` int NOT NULL AUTO_INCREMENT,
  `booking_time` datetime(6) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `showid` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `booking_status` enum('Booked','Inprogress','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  UNIQUE KEY `UKxcv4bjb631pysj91ybp40vpo` (`payment_id`),
  KEY `FK8vrjlni8chdyqi1ruwcqiogvk` (`showid`),
  KEY `FKkgseyy7t56x7lkjgu3wah5s3t` (`user_id`),
  CONSTRAINT `FK70t92vvx289ayx2hq2v4hdcjl` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `FK8vrjlni8chdyqi1ruwcqiogvk` FOREIGN KEY (`showid`) REFERENCES `movie_show` (`showid`),
  CONSTRAINT `FKkgseyy7t56x7lkjgu3wah5s3t` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (6,'2025-01-12 14:01:41.720584',1,95,1,'Cancelled');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movieid` int NOT NULL AUTO_INCREMENT,
  `actor` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'MB','Athadu'),(2,'PK','GabbarSing'),(3,'PB','Saho'),(4,'RC','RRR');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_show`
--

DROP TABLE IF EXISTS `movie_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_show` (
  `showid` int NOT NULL AUTO_INCREMENT,
  `show_time` datetime(6) DEFAULT NULL,
  `movieid` int NOT NULL,
  `screen_id` int DEFAULT NULL,
  `showend_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`showid`),
  KEY `FKjwlv2u7h4hix7wa75y1jtbljm` (`movieid`),
  KEY `FKkxw7cavmwi6wh8yj2k1fxndrp` (`screen_id`),
  CONSTRAINT `FKjwlv2u7h4hix7wa75y1jtbljm` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movieid`),
  CONSTRAINT `FKkxw7cavmwi6wh8yj2k1fxndrp` FOREIGN KEY (`screen_id`) REFERENCES `theatre_screen` (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_show`
--

LOCK TABLES `movie_show` WRITE;
/*!40000 ALTER TABLE `movie_show` DISABLE KEYS */;
INSERT INTO `movie_show` VALUES (2,'2024-12-12 09:30:00.000000',1,1,'2024-12-12 12:00:00.000000'),(3,'2024-12-12 09:30:00.000000',1,2,'2024-12-12 12:00:00.000000'),(4,'2024-12-12 09:30:00.000000',2,3,'2024-12-12 12:00:00.000000'),(5,'2024-12-12 09:30:00.000000',2,4,'2024-12-12 12:00:00.000000'),(6,'2024-12-12 09:30:00.000000',3,5,'2024-12-12 12:00:00.000000'),(7,'2024-12-12 09:30:00.000000',3,6,'2024-12-12 12:00:00.000000'),(8,'2024-12-12 09:30:00.000000',1,7,'2024-12-12 12:00:00.000000'),(9,'2024-12-12 09:30:00.000000',2,8,'2024-12-12 12:00:00.000000'),(10,'2024-12-12 09:30:00.000000',3,9,'2024-12-12 12:00:00.000000'),(11,'2024-12-12 09:30:00.000000',4,10,'2024-12-12 12:00:00.000000'),(12,'2024-12-12 09:30:00.000000',1,11,'2024-12-12 12:00:00.000000'),(13,'2024-12-12 09:30:00.000000',1,12,'2024-12-12 12:00:00.000000'),(14,'2024-12-12 09:30:00.000000',2,13,'2024-12-12 12:00:00.000000'),(15,'2024-12-12 09:30:00.000000',2,14,'2024-12-12 12:00:00.000000'),(16,'2024-12-12 09:30:00.000000',3,15,'2024-12-12 12:00:00.000000'),(17,'2024-12-12 09:30:00.000000',3,16,'2024-12-12 12:00:00.000000'),(18,'2024-12-12 09:30:00.000000',4,17,'2024-12-12 12:00:00.000000'),(19,'2024-12-12 09:30:00.000000',1,18,'2024-12-12 12:00:00.000000'),(20,'2024-12-12 09:30:00.000000',3,19,'2024-12-12 12:00:00.000000'),(21,'2024-12-12 09:30:00.000000',2,20,'2024-12-12 12:00:00.000000'),(22,'2024-12-12 09:30:00.000000',3,21,'2024-12-12 12:00:00.000000'),(23,'2024-12-12 09:30:00.000000',4,22,'2024-12-12 12:00:00.000000'),(24,'2024-12-12 09:30:00.000000',2,23,'2024-12-12 12:00:00.000000'),(25,'2024-12-12 09:30:00.000000',1,24,'2024-12-12 12:00:00.000000'),(26,'2024-12-12 12:30:00.000000',1,1,'2024-12-12 15:00:00.000000'),(27,'2024-12-12 12:30:00.000000',1,2,'2024-12-12 15:00:00.000000'),(28,'2024-12-12 12:30:00.000000',2,3,'2024-12-12 15:00:00.000000'),(29,'2024-12-12 12:30:00.000000',2,4,'2024-12-12 15:00:00.000000'),(30,'2024-12-12 12:30:00.000000',3,5,'2024-12-12 15:00:00.000000'),(31,'2024-12-12 12:30:00.000000',3,6,'2024-12-12 15:00:00.000000'),(32,'2024-12-12 12:30:00.000000',1,7,'2024-12-12 15:00:00.000000'),(33,'2024-12-12 12:30:00.000000',2,8,'2024-12-12 15:00:00.000000'),(34,'2024-12-12 12:30:00.000000',3,9,'2024-12-12 15:00:00.000000'),(35,'2024-12-12 12:30:00.000000',4,10,'2024-12-12 15:00:00.000000'),(36,'2024-12-12 12:30:00.000000',1,11,'2024-12-12 15:00:00.000000'),(37,'2024-12-12 12:30:00.000000',1,12,'2024-12-12 15:00:00.000000'),(38,'2024-12-12 12:30:00.000000',2,13,'2024-12-12 15:00:00.000000'),(39,'2024-12-12 12:30:00.000000',2,14,'2024-12-12 15:00:00.000000'),(40,'2024-12-12 12:30:00.000000',3,15,'2024-12-12 15:00:00.000000'),(41,'2024-12-12 12:30:00.000000',3,16,'2024-12-12 15:00:00.000000'),(42,'2024-12-12 12:30:00.000000',4,17,'2024-12-12 15:00:00.000000'),(43,'2024-12-12 12:30:00.000000',1,18,'2024-12-12 15:00:00.000000'),(44,'2024-12-12 12:30:00.000000',3,19,'2024-12-12 15:00:00.000000'),(45,'2024-12-12 12:30:00.000000',2,20,'2024-12-12 15:00:00.000000'),(46,'2024-12-12 12:30:00.000000',3,21,'2024-12-12 15:00:00.000000'),(47,'2024-12-12 12:30:00.000000',4,22,'2024-12-12 15:00:00.000000'),(48,'2024-12-12 12:30:00.000000',2,23,'2024-12-12 15:00:00.000000'),(49,'2024-12-12 12:30:00.000000',1,24,'2024-12-12 15:00:00.000000'),(50,'2024-12-12 16:30:00.000000',1,1,'2024-12-12 19:00:00.000000'),(51,'2024-12-12 16:30:00.000000',1,2,'2024-12-12 19:00:00.000000'),(52,'2024-12-12 16:30:00.000000',2,3,'2024-12-12 19:00:00.000000'),(53,'2024-12-12 16:30:00.000000',2,4,'2024-12-12 19:00:00.000000'),(54,'2024-12-12 16:30:00.000000',3,5,'2024-12-12 19:00:00.000000'),(55,'2024-12-12 16:30:00.000000',3,6,'2024-12-12 19:00:00.000000'),(56,'2024-12-12 16:30:00.000000',1,7,'2024-12-12 19:00:00.000000'),(57,'2024-12-12 16:30:00.000000',2,8,'2024-12-12 19:00:00.000000'),(58,'2024-12-12 16:30:00.000000',3,9,'2024-12-12 19:00:00.000000'),(59,'2024-12-12 16:30:00.000000',4,10,'2024-12-12 19:00:00.000000'),(60,'2024-12-12 16:30:00.000000',1,11,'2024-12-12 19:00:00.000000'),(61,'2024-12-12 16:30:00.000000',1,12,'2024-12-12 19:00:00.000000'),(62,'2024-12-12 16:30:00.000000',2,13,'2024-12-12 19:00:00.000000'),(63,'2024-12-12 16:30:00.000000',2,14,'2024-12-12 19:00:00.000000'),(64,'2024-12-12 16:30:00.000000',3,15,'2024-12-12 19:00:00.000000'),(65,'2024-12-12 16:30:00.000000',3,16,'2024-12-12 19:00:00.000000'),(66,'2024-12-12 16:30:00.000000',4,17,'2024-12-12 19:00:00.000000'),(67,'2024-12-12 16:30:00.000000',1,18,'2024-12-12 19:00:00.000000'),(68,'2024-12-12 16:30:00.000000',3,19,'2024-12-12 19:00:00.000000'),(69,'2024-12-12 16:30:00.000000',2,20,'2024-12-12 19:00:00.000000'),(70,'2024-12-12 16:30:00.000000',3,21,'2024-12-12 19:00:00.000000'),(71,'2024-12-12 16:30:00.000000',4,22,'2024-12-12 19:00:00.000000'),(72,'2024-12-12 16:30:00.000000',2,23,'2024-12-12 19:00:00.000000'),(73,'2024-12-12 16:30:00.000000',1,24,'2024-12-12 19:00:00.000000'),(74,'2024-12-12 19:30:00.000000',1,2,'2024-12-12 22:00:00.000000'),(75,'2024-12-12 19:30:00.000000',2,3,'2024-12-12 22:00:00.000000'),(76,'2024-12-12 19:30:00.000000',2,4,'2024-12-12 22:00:00.000000'),(77,'2024-12-12 19:30:00.000000',3,5,'2024-12-12 22:00:00.000000'),(78,'2024-12-12 19:30:00.000000',3,6,'2024-12-12 22:00:00.000000'),(79,'2024-12-12 19:30:00.000000',1,7,'2024-12-12 22:00:00.000000'),(80,'2024-12-12 19:30:00.000000',2,8,'2024-12-12 22:00:00.000000'),(81,'2024-12-12 19:30:00.000000',3,9,'2024-12-12 22:00:00.000000'),(82,'2024-12-12 19:30:00.000000',4,10,'2024-12-12 22:00:00.000000'),(83,'2024-12-12 19:30:00.000000',1,11,'2024-12-12 22:00:00.000000'),(84,'2024-12-12 19:30:00.000000',1,12,'2024-12-12 22:00:00.000000'),(85,'2024-12-12 19:30:00.000000',2,13,'2024-12-12 22:00:00.000000'),(86,'2024-12-12 19:30:00.000000',2,14,'2024-12-12 22:00:00.000000'),(87,'2024-12-12 19:30:00.000000',3,15,'2024-12-12 22:00:00.000000'),(88,'2024-12-12 19:30:00.000000',3,16,'2024-12-12 22:00:00.000000'),(89,'2024-12-12 19:30:00.000000',4,17,'2024-12-12 22:00:00.000000'),(90,'2024-12-12 19:30:00.000000',1,18,'2024-12-12 22:00:00.000000'),(91,'2024-12-12 19:30:00.000000',3,19,'2024-12-12 22:00:00.000000'),(92,'2024-12-12 19:30:00.000000',2,20,'2024-12-12 22:00:00.000000'),(93,'2024-12-12 19:30:00.000000',3,21,'2024-12-12 22:00:00.000000'),(94,'2024-12-12 19:30:00.000000',4,22,'2024-12-12 22:00:00.000000'),(95,'2024-12-12 19:30:00.000000',2,23,'2024-12-12 22:00:00.000000'),(96,'2024-12-12 19:30:00.000000',1,24,'2024-12-12 22:00:00.000000'),(98,'2025-01-23 14:30:00.000000',1,2,'2025-01-23 14:30:00.000000'),(99,'2025-02-23 14:30:00.000000',1,2,'2025-02-23 14:30:00.000000');
/*!40000 ALTER TABLE `movie_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_status` enum('Completed','Failed','Pending') DEFAULT NULL,
  `payment_type` enum('Online','cash') DEFAULT NULL,
  `paymenttime` datetime(6) DEFAULT NULL,
  `price` int NOT NULL,
  `bookingid` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `UKbw9xt5rec88hdbe4doa3p5xs7` (`bookingid`),
  CONSTRAINT `FKewpg3143tuu48nagw3xviqu6h` FOREIGN KEY (`bookingid`) REFERENCES `booking` (`bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Failed',NULL,'2025-01-12 14:24:05.174521',3000,6);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `regionid` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`regionid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Hyderabad'),(2,'Khammam'),(3,'Mumbai');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_seats`
--

DROP TABLE IF EXISTS `show_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_seats` (
  `show_seat_id` int NOT NULL AUTO_INCREMENT,
  `seat_status` enum('Booked','Empty','InProgress') DEFAULT NULL,
  `showid` int DEFAULT NULL,
  `bookingid` int DEFAULT NULL,
  `seattype` enum('BALCONY','PREMIUM','REGULAR') DEFAULT NULL,
  `seatcol` int NOT NULL,
  `seatrow` int NOT NULL,
  `version` bigint DEFAULT NULL,
  PRIMARY KEY (`show_seat_id`),
  KEY `FK5jxll1mmnlhfdwlcngi78la8i` (`showid`),
  KEY `FKip2d1xo8yskvrxmblv657dxfi` (`bookingid`),
  CONSTRAINT `FK5jxll1mmnlhfdwlcngi78la8i` FOREIGN KEY (`showid`) REFERENCES `movie_show` (`showid`),
  CONSTRAINT `FKip2d1xo8yskvrxmblv657dxfi` FOREIGN KEY (`bookingid`) REFERENCES `booking` (`bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_seats`
--

LOCK TABLES `show_seats` WRITE;
/*!40000 ALTER TABLE `show_seats` DISABLE KEYS */;
INSERT INTO `show_seats` VALUES (3,'InProgress',2,NULL,'REGULAR',1,1,NULL),(4,'InProgress',3,NULL,'REGULAR',1,1,NULL),(5,'Empty',4,NULL,'REGULAR',1,1,NULL),(6,'InProgress',5,NULL,'REGULAR',1,1,NULL),(7,'Empty',6,NULL,'REGULAR',1,1,NULL),(8,'Empty',7,NULL,'REGULAR',1,1,NULL),(9,'Empty',8,NULL,'REGULAR',1,1,NULL),(10,'Empty',9,NULL,'REGULAR',1,1,NULL),(11,'Empty',10,NULL,'REGULAR',1,1,NULL),(12,'Empty',11,NULL,'REGULAR',1,1,NULL),(13,'Empty',12,NULL,'REGULAR',1,1,NULL),(14,'Empty',13,NULL,'REGULAR',1,1,NULL),(15,'Empty',14,NULL,'REGULAR',1,1,NULL),(16,'Empty',15,NULL,'REGULAR',1,1,NULL),(17,'Empty',16,NULL,'REGULAR',1,1,NULL),(18,'Empty',17,NULL,'REGULAR',1,1,NULL),(19,'Empty',18,NULL,'REGULAR',1,1,NULL),(20,'Empty',19,NULL,'REGULAR',1,1,NULL),(21,'Empty',20,NULL,'REGULAR',1,1,NULL),(22,'Empty',21,NULL,'REGULAR',1,1,NULL),(23,'Empty',22,NULL,'REGULAR',1,1,NULL),(24,'Empty',23,NULL,'REGULAR',1,1,NULL),(25,'Empty',24,NULL,'REGULAR',1,1,NULL),(26,'Empty',25,NULL,'REGULAR',1,1,NULL),(27,'Empty',26,NULL,'REGULAR',1,1,NULL),(28,'Empty',27,NULL,'REGULAR',1,1,NULL),(29,'Empty',28,NULL,'REGULAR',1,1,NULL),(30,'Empty',29,NULL,'REGULAR',1,1,NULL),(31,'Empty',30,NULL,'REGULAR',1,1,NULL),(32,'Empty',31,NULL,'REGULAR',1,1,NULL),(33,'Empty',32,NULL,'REGULAR',1,1,NULL),(34,'Empty',33,NULL,'REGULAR',1,1,NULL),(35,'Empty',34,NULL,'REGULAR',1,1,NULL),(36,'Empty',35,NULL,'REGULAR',1,1,NULL),(37,'Empty',36,NULL,'REGULAR',1,1,NULL),(38,'Empty',37,NULL,'REGULAR',1,1,NULL),(39,'Empty',38,NULL,'REGULAR',1,1,NULL),(40,'Empty',39,NULL,'REGULAR',1,1,NULL),(41,'Empty',40,NULL,'REGULAR',1,1,NULL),(42,'Empty',41,NULL,'REGULAR',1,1,NULL),(43,'Empty',42,NULL,'REGULAR',1,1,NULL),(44,'Empty',43,NULL,'REGULAR',1,1,NULL),(45,'Empty',44,NULL,'REGULAR',1,1,NULL),(46,'Empty',45,NULL,'REGULAR',1,1,NULL),(47,'Empty',46,NULL,'REGULAR',1,1,NULL),(48,'Empty',47,NULL,'REGULAR',1,1,NULL),(49,'Empty',48,NULL,'REGULAR',1,1,NULL),(50,'Empty',49,NULL,'REGULAR',1,1,NULL),(51,'Empty',50,NULL,'REGULAR',1,1,NULL),(52,'Empty',51,NULL,'REGULAR',1,1,NULL),(53,'Empty',52,NULL,'REGULAR',1,1,NULL),(54,'Empty',53,NULL,'REGULAR',1,1,NULL),(55,'Empty',54,NULL,'REGULAR',1,1,NULL),(56,'Empty',55,NULL,'REGULAR',1,1,NULL),(57,'Empty',56,NULL,'REGULAR',1,1,NULL),(58,'Empty',57,NULL,'REGULAR',1,1,NULL),(59,'Empty',58,NULL,'REGULAR',1,1,NULL),(60,'Empty',59,NULL,'REGULAR',1,1,NULL),(61,'Empty',60,NULL,'REGULAR',1,1,NULL),(62,'Empty',61,NULL,'REGULAR',1,1,NULL),(63,'Empty',62,NULL,'REGULAR',1,1,NULL),(64,'Empty',63,NULL,'REGULAR',1,1,NULL),(65,'Empty',64,NULL,'REGULAR',1,1,NULL),(66,'Empty',65,NULL,'REGULAR',1,1,NULL),(67,'Empty',66,NULL,'REGULAR',1,1,NULL),(68,'Empty',67,NULL,'REGULAR',1,1,NULL),(69,'Empty',68,NULL,'REGULAR',1,1,NULL),(70,'Empty',69,NULL,'REGULAR',1,1,NULL),(71,'Empty',70,NULL,'REGULAR',1,1,NULL),(72,'Empty',71,NULL,'REGULAR',1,1,NULL),(73,'Empty',72,NULL,'REGULAR',1,1,NULL),(74,'Empty',73,NULL,'REGULAR',1,1,NULL),(75,'Empty',74,NULL,'REGULAR',1,1,NULL),(76,'Empty',75,NULL,'REGULAR',1,1,NULL),(77,'Empty',76,NULL,'REGULAR',1,1,NULL),(78,'Empty',77,NULL,'REGULAR',1,1,NULL),(79,'Empty',78,NULL,'REGULAR',1,1,NULL),(80,'Empty',79,NULL,'REGULAR',1,1,NULL),(81,'Empty',80,NULL,'REGULAR',1,1,NULL),(82,'Empty',81,NULL,'REGULAR',1,1,NULL),(83,'Empty',82,NULL,'REGULAR',1,1,NULL),(84,'Empty',83,NULL,'REGULAR',1,1,NULL),(85,'Empty',84,NULL,'REGULAR',1,1,NULL),(86,'Empty',85,NULL,'REGULAR',1,1,NULL),(87,'Empty',86,NULL,'REGULAR',1,1,NULL),(88,'Empty',87,NULL,'REGULAR',1,1,NULL),(89,'Empty',88,NULL,'REGULAR',1,1,NULL),(90,'Empty',89,NULL,'REGULAR',1,1,NULL),(91,'Empty',90,NULL,'REGULAR',1,1,NULL),(92,'Empty',91,NULL,'REGULAR',1,1,NULL),(93,'Empty',92,NULL,'REGULAR',1,1,NULL),(94,'Empty',93,NULL,'REGULAR',1,1,NULL),(95,'Empty',94,NULL,'REGULAR',1,1,NULL),(96,'Empty',95,NULL,'REGULAR',1,1,NULL),(97,'Empty',96,NULL,'REGULAR',1,1,NULL),(99,'Empty',2,NULL,'BALCONY',2,2,NULL),(100,'Empty',3,NULL,'BALCONY',2,2,NULL),(101,'Empty',4,NULL,'BALCONY',2,2,NULL),(102,'InProgress',5,NULL,'BALCONY',2,2,NULL),(103,'Empty',6,NULL,'BALCONY',2,2,NULL),(104,'Empty',7,NULL,'BALCONY',2,2,NULL),(105,'Empty',8,NULL,'BALCONY',2,2,NULL),(106,'Empty',9,NULL,'BALCONY',2,2,NULL),(107,'Empty',10,NULL,'BALCONY',2,2,NULL),(108,'Empty',11,NULL,'BALCONY',2,2,NULL),(109,'Empty',12,NULL,'BALCONY',2,2,NULL),(110,'Empty',13,NULL,'BALCONY',2,2,NULL),(111,'Empty',14,NULL,'BALCONY',2,2,NULL),(112,'Empty',15,NULL,'BALCONY',2,2,NULL),(113,'Empty',16,NULL,'BALCONY',2,2,NULL),(114,'Empty',17,NULL,'BALCONY',2,2,NULL),(115,'Empty',18,NULL,'BALCONY',2,2,NULL),(116,'Empty',19,NULL,'BALCONY',2,2,NULL),(117,'Empty',20,NULL,'BALCONY',2,2,NULL),(118,'Empty',21,NULL,'BALCONY',2,2,NULL),(119,'Empty',22,NULL,'BALCONY',2,2,NULL),(120,'Empty',23,NULL,'BALCONY',2,2,NULL),(121,'Empty',24,NULL,'BALCONY',2,2,NULL),(122,'Empty',25,NULL,'BALCONY',2,2,NULL),(123,'Empty',26,NULL,'BALCONY',2,2,NULL),(124,'Empty',27,NULL,'BALCONY',2,2,NULL),(125,'Empty',28,NULL,'BALCONY',2,2,NULL),(126,'Empty',29,NULL,'BALCONY',2,2,NULL),(127,'Empty',30,NULL,'BALCONY',2,2,NULL),(128,'Empty',31,NULL,'BALCONY',2,2,NULL),(129,'Empty',32,NULL,'BALCONY',2,2,NULL),(130,'Empty',33,NULL,'BALCONY',2,2,NULL),(131,'Empty',34,NULL,'BALCONY',2,2,NULL),(132,'Empty',35,NULL,'BALCONY',2,2,NULL),(133,'Empty',36,NULL,'BALCONY',2,2,NULL),(134,'Empty',37,NULL,'BALCONY',2,2,NULL),(135,'Empty',38,NULL,'BALCONY',2,2,NULL),(136,'Empty',39,NULL,'BALCONY',2,2,NULL),(137,'Empty',40,NULL,'BALCONY',2,2,NULL),(138,'Empty',41,NULL,'BALCONY',2,2,NULL),(139,'Empty',42,NULL,'BALCONY',2,2,NULL),(140,'Empty',43,NULL,'BALCONY',2,2,NULL),(141,'Empty',44,NULL,'BALCONY',2,2,NULL),(142,'Empty',45,NULL,'BALCONY',2,2,NULL),(143,'Empty',46,NULL,'BALCONY',2,2,NULL),(144,'Empty',47,NULL,'BALCONY',2,2,NULL),(145,'Empty',48,NULL,'BALCONY',2,2,NULL),(146,'Empty',49,NULL,'BALCONY',2,2,NULL),(147,'Empty',50,NULL,'BALCONY',2,2,NULL),(148,'Empty',51,NULL,'BALCONY',2,2,NULL),(149,'Empty',52,NULL,'BALCONY',2,2,NULL),(150,'Empty',53,NULL,'BALCONY',2,2,NULL),(151,'Empty',54,NULL,'BALCONY',2,2,NULL),(152,'Empty',55,NULL,'BALCONY',2,2,NULL),(153,'Empty',56,NULL,'BALCONY',2,2,NULL),(154,'Empty',57,NULL,'BALCONY',2,2,NULL),(155,'Empty',58,NULL,'BALCONY',2,2,NULL),(156,'Empty',59,NULL,'BALCONY',2,2,NULL),(157,'Empty',60,NULL,'BALCONY',2,2,NULL),(158,'Empty',61,NULL,'BALCONY',2,2,NULL),(159,'Empty',62,NULL,'BALCONY',2,2,NULL),(160,'Empty',63,NULL,'BALCONY',2,2,NULL),(161,'Empty',64,NULL,'BALCONY',2,2,NULL),(162,'Empty',65,NULL,'BALCONY',2,2,NULL),(163,'Empty',66,NULL,'BALCONY',2,2,NULL),(164,'Empty',67,NULL,'BALCONY',2,2,NULL),(165,'Empty',68,NULL,'BALCONY',2,2,NULL),(166,'Empty',69,NULL,'BALCONY',2,2,NULL),(167,'Empty',70,NULL,'BALCONY',2,2,NULL),(168,'Empty',71,NULL,'BALCONY',2,2,NULL),(169,'Empty',72,NULL,'BALCONY',2,2,NULL),(170,'Empty',73,NULL,'BALCONY',2,2,NULL),(171,'Empty',74,NULL,'BALCONY',2,2,NULL),(172,'Empty',75,NULL,'BALCONY',2,2,NULL),(173,'Empty',76,NULL,'BALCONY',2,2,NULL),(174,'Empty',77,NULL,'BALCONY',2,2,NULL),(175,'Empty',78,NULL,'BALCONY',2,2,NULL),(176,'Empty',79,NULL,'BALCONY',2,2,NULL),(177,'Empty',80,NULL,'BALCONY',2,2,NULL),(178,'Empty',81,NULL,'BALCONY',2,2,NULL),(179,'Empty',82,NULL,'BALCONY',2,2,NULL),(180,'Empty',83,NULL,'BALCONY',2,2,NULL),(181,'Empty',84,NULL,'BALCONY',2,2,NULL),(182,'Empty',85,NULL,'BALCONY',2,2,NULL),(183,'Empty',86,NULL,'BALCONY',2,2,NULL),(184,'Empty',87,NULL,'BALCONY',2,2,NULL),(185,'Empty',88,NULL,'BALCONY',2,2,NULL),(186,'Empty',89,NULL,'BALCONY',2,2,NULL),(187,'Empty',90,NULL,'BALCONY',2,2,NULL),(188,'Empty',91,NULL,'BALCONY',2,2,NULL),(189,'Empty',92,NULL,'BALCONY',2,2,NULL),(190,'Empty',93,NULL,'BALCONY',2,2,NULL),(191,'Empty',94,NULL,'BALCONY',2,2,NULL),(192,'Empty',95,NULL,'BALCONY',2,2,NULL),(193,'Empty',96,NULL,'BALCONY',2,2,NULL),(195,'Empty',2,NULL,'PREMIUM',3,3,NULL),(196,'Empty',3,NULL,'PREMIUM',3,3,NULL),(197,'Empty',4,NULL,'PREMIUM',3,3,NULL),(198,'InProgress',5,NULL,'PREMIUM',3,3,NULL),(199,'Empty',6,NULL,'PREMIUM',3,3,NULL),(200,'Empty',7,NULL,'PREMIUM',3,3,NULL),(201,'Empty',8,NULL,'PREMIUM',3,3,NULL),(202,'Empty',9,NULL,'PREMIUM',3,3,NULL),(203,'Empty',10,NULL,'PREMIUM',3,3,NULL),(204,'Empty',11,NULL,'PREMIUM',3,3,NULL),(205,'Empty',12,NULL,'PREMIUM',3,3,NULL),(206,'Empty',13,NULL,'PREMIUM',3,3,NULL),(207,'Empty',14,NULL,'PREMIUM',3,3,NULL),(208,'Empty',15,NULL,'PREMIUM',3,3,NULL),(209,'Empty',16,NULL,'PREMIUM',3,3,NULL),(210,'Empty',17,NULL,'PREMIUM',3,3,NULL),(211,'Empty',18,NULL,'PREMIUM',3,3,NULL),(212,'Empty',19,NULL,'PREMIUM',3,3,NULL),(213,'Empty',20,NULL,'PREMIUM',3,3,NULL),(214,'Empty',21,NULL,'PREMIUM',3,3,NULL),(215,'Empty',22,NULL,'PREMIUM',3,3,NULL),(216,'Empty',23,NULL,'PREMIUM',3,3,NULL),(217,'Empty',24,NULL,'PREMIUM',3,3,NULL),(218,'Empty',25,NULL,'PREMIUM',3,3,NULL),(219,'Empty',26,NULL,'PREMIUM',3,3,NULL),(220,'Empty',27,NULL,'PREMIUM',3,3,NULL),(221,'Empty',28,NULL,'PREMIUM',3,3,NULL),(222,'Empty',29,NULL,'PREMIUM',3,3,NULL),(223,'Empty',30,NULL,'PREMIUM',3,3,NULL),(224,'Empty',31,NULL,'PREMIUM',3,3,NULL),(225,'Empty',32,NULL,'PREMIUM',3,3,NULL),(226,'Empty',33,NULL,'PREMIUM',3,3,NULL),(227,'Empty',34,NULL,'PREMIUM',3,3,NULL),(228,'Empty',35,NULL,'PREMIUM',3,3,NULL),(229,'Empty',36,NULL,'PREMIUM',3,3,NULL),(230,'Empty',37,NULL,'PREMIUM',3,3,NULL),(231,'Empty',38,NULL,'PREMIUM',3,3,NULL),(232,'Empty',39,NULL,'PREMIUM',3,3,NULL),(233,'Empty',40,NULL,'PREMIUM',3,3,NULL),(234,'Empty',41,NULL,'PREMIUM',3,3,NULL),(235,'Empty',42,NULL,'PREMIUM',3,3,NULL),(236,'Empty',43,NULL,'PREMIUM',3,3,NULL),(237,'Empty',44,NULL,'PREMIUM',3,3,NULL),(238,'Empty',45,NULL,'PREMIUM',3,3,NULL),(239,'Empty',46,NULL,'PREMIUM',3,3,NULL),(240,'Empty',47,NULL,'PREMIUM',3,3,NULL),(241,'Empty',48,NULL,'PREMIUM',3,3,NULL),(242,'Empty',49,NULL,'PREMIUM',3,3,NULL),(243,'Empty',50,NULL,'PREMIUM',3,3,NULL),(244,'Empty',51,NULL,'PREMIUM',3,3,NULL),(245,'Empty',52,NULL,'PREMIUM',3,3,NULL),(246,'Empty',53,NULL,'PREMIUM',3,3,NULL),(247,'Empty',54,NULL,'PREMIUM',3,3,NULL),(248,'Empty',55,NULL,'PREMIUM',3,3,NULL),(249,'Empty',56,NULL,'PREMIUM',3,3,NULL),(250,'Empty',57,NULL,'PREMIUM',3,3,NULL),(251,'Empty',58,NULL,'PREMIUM',3,3,NULL),(252,'Empty',59,NULL,'PREMIUM',3,3,NULL),(253,'Empty',60,NULL,'PREMIUM',3,3,NULL),(254,'Empty',61,NULL,'PREMIUM',3,3,NULL),(255,'Empty',62,NULL,'PREMIUM',3,3,NULL),(256,'Empty',63,NULL,'PREMIUM',3,3,NULL),(257,'Empty',64,NULL,'PREMIUM',3,3,NULL),(258,'Empty',65,NULL,'PREMIUM',3,3,NULL),(259,'Empty',66,NULL,'PREMIUM',3,3,NULL),(260,'Empty',67,NULL,'PREMIUM',3,3,NULL),(261,'Empty',68,NULL,'PREMIUM',3,3,NULL),(262,'Empty',69,NULL,'PREMIUM',3,3,NULL),(263,'Empty',70,NULL,'PREMIUM',3,3,NULL),(264,'Empty',71,NULL,'PREMIUM',3,3,NULL),(265,'Empty',72,NULL,'PREMIUM',3,3,NULL),(266,'Empty',73,NULL,'PREMIUM',3,3,NULL),(267,'Empty',74,NULL,'PREMIUM',3,3,NULL),(268,'Empty',75,NULL,'PREMIUM',3,3,NULL),(269,'Empty',76,NULL,'PREMIUM',3,3,NULL),(270,'Empty',77,NULL,'PREMIUM',3,3,NULL),(271,'Empty',78,NULL,'PREMIUM',3,3,NULL),(272,'Empty',79,NULL,'PREMIUM',3,3,NULL),(273,'Empty',80,NULL,'PREMIUM',3,3,NULL),(274,'Empty',81,NULL,'PREMIUM',3,3,NULL),(275,'Empty',82,NULL,'PREMIUM',3,3,NULL),(276,'Empty',83,NULL,'PREMIUM',3,3,NULL),(277,'Empty',84,NULL,'PREMIUM',3,3,NULL),(278,'Empty',85,NULL,'PREMIUM',3,3,NULL),(279,'Empty',86,NULL,'PREMIUM',3,3,NULL),(280,'Empty',87,NULL,'PREMIUM',3,3,NULL),(281,'Empty',88,NULL,'PREMIUM',3,3,NULL),(282,'Empty',89,NULL,'PREMIUM',3,3,NULL),(283,'Empty',90,NULL,'PREMIUM',3,3,NULL),(284,'Empty',91,NULL,'PREMIUM',3,3,NULL),(285,'Empty',92,NULL,'PREMIUM',3,3,NULL),(286,'Empty',93,NULL,'PREMIUM',3,3,NULL),(287,'Empty',94,NULL,'PREMIUM',3,3,NULL),(288,'Empty',95,NULL,'PREMIUM',3,3,NULL),(289,'Empty',96,NULL,'PREMIUM',3,3,NULL),(293,'Empty',98,NULL,'REGULAR',1,1,NULL),(294,'Empty',98,NULL,'BALCONY',2,2,NULL),(295,'Empty',98,NULL,'PREMIUM',3,3,NULL),(296,'Empty',99,NULL,'REGULAR',1,1,NULL),(297,'Empty',99,NULL,'BALCONY',2,2,NULL),(298,'Empty',99,NULL,'PREMIUM',3,3,NULL);
/*!40000 ALTER TABLE `show_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_screen`
--

DROP TABLE IF EXISTS `theatre_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_screen` (
  `screen_id` int NOT NULL AUTO_INCREMENT,
  `theatreid` int DEFAULT NULL,
  `screen_number` int NOT NULL,
  `screen_type` enum('Averagetheatre','BestSpeaker','s4dx') DEFAULT NULL,
  PRIMARY KEY (`screen_id`),
  KEY `FK3ntfbngajnxama4kb9bu9ynn2` (`theatreid`),
  CONSTRAINT `FK3ntfbngajnxama4kb9bu9ynn2` FOREIGN KEY (`theatreid`) REFERENCES `theatres` (`theatreid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_screen`
--

LOCK TABLES `theatre_screen` WRITE;
/*!40000 ALTER TABLE `theatre_screen` DISABLE KEYS */;
INSERT INTO `theatre_screen` VALUES (1,1,1,'s4dx'),(2,1,2,'BestSpeaker'),(3,1,3,'BestSpeaker'),(4,2,1,'s4dx'),(5,2,2,'Averagetheatre'),(6,2,3,'BestSpeaker'),(7,3,1,'s4dx'),(8,3,2,'Averagetheatre'),(9,3,3,'BestSpeaker'),(10,4,1,'s4dx'),(11,4,2,'BestSpeaker'),(12,4,3,'BestSpeaker'),(13,5,1,'s4dx'),(14,5,2,'Averagetheatre'),(15,5,3,'BestSpeaker'),(16,6,1,'s4dx'),(17,6,2,'Averagetheatre'),(18,6,3,'BestSpeaker'),(19,7,1,'s4dx'),(20,7,2,'BestSpeaker'),(21,7,3,'BestSpeaker'),(22,8,1,'s4dx'),(23,8,2,'Averagetheatre'),(24,8,3,'BestSpeaker');
/*!40000 ALTER TABLE `theatre_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_screen_seats`
--

DROP TABLE IF EXISTS `theatre_screen_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_screen_seats` (
  `screen_seat_id` int NOT NULL AUTO_INCREMENT,
  `seatcol` int NOT NULL,
  `seatrow` int NOT NULL,
  `seattype` enum('BALCONY','PREMIUM','REGULAR') DEFAULT NULL,
  `screen_id` int NOT NULL,
  PRIMARY KEY (`screen_seat_id`),
  KEY `FKekypsu021uesxt0rrfg0ld4e5` (`screen_id`),
  CONSTRAINT `FKekypsu021uesxt0rrfg0ld4e5` FOREIGN KEY (`screen_id`) REFERENCES `theatre_screen` (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_screen_seats`
--

LOCK TABLES `theatre_screen_seats` WRITE;
/*!40000 ALTER TABLE `theatre_screen_seats` DISABLE KEYS */;
INSERT INTO `theatre_screen_seats` VALUES (1,1,1,'REGULAR',1),(2,2,2,'BALCONY',1),(3,3,3,'PREMIUM',1),(4,1,1,'REGULAR',2),(5,2,2,'BALCONY',2),(6,3,3,'PREMIUM',2),(7,1,1,'REGULAR',3),(8,2,2,'BALCONY',3),(9,3,3,'PREMIUM',3),(10,1,1,'REGULAR',4),(11,2,2,'BALCONY',4),(12,3,3,'PREMIUM',4),(13,1,1,'REGULAR',5),(14,2,2,'BALCONY',5),(15,3,3,'PREMIUM',5),(16,1,1,'REGULAR',6),(17,2,2,'BALCONY',6),(18,3,3,'PREMIUM',6),(19,1,1,'REGULAR',7),(20,2,2,'BALCONY',7),(21,3,3,'PREMIUM',7),(22,1,1,'REGULAR',8),(23,2,2,'BALCONY',8),(24,3,3,'PREMIUM',8),(25,1,1,'REGULAR',9),(26,2,2,'BALCONY',9),(27,3,3,'PREMIUM',9),(28,1,1,'REGULAR',10),(29,2,2,'BALCONY',10),(30,3,3,'PREMIUM',10),(31,1,1,'REGULAR',11),(32,2,2,'BALCONY',11),(33,3,3,'PREMIUM',11),(34,1,1,'REGULAR',12),(35,2,2,'BALCONY',12),(36,3,3,'PREMIUM',12),(37,1,1,'REGULAR',13),(38,2,2,'BALCONY',13),(39,3,3,'PREMIUM',13),(40,1,1,'REGULAR',14),(41,2,2,'BALCONY',14),(42,3,3,'PREMIUM',14),(43,1,1,'REGULAR',15),(44,2,2,'BALCONY',15),(45,3,3,'PREMIUM',15),(46,1,1,'REGULAR',16),(47,2,2,'BALCONY',16),(48,3,3,'PREMIUM',16),(49,1,1,'REGULAR',17),(50,2,2,'BALCONY',17),(51,3,3,'PREMIUM',17),(52,1,1,'REGULAR',18),(53,2,2,'BALCONY',18),(54,3,3,'PREMIUM',18),(55,1,1,'REGULAR',19),(56,2,2,'BALCONY',19),(57,3,3,'PREMIUM',19),(58,1,1,'REGULAR',20),(59,2,2,'BALCONY',20),(60,3,3,'PREMIUM',20),(61,1,1,'REGULAR',21),(62,2,2,'BALCONY',21),(63,3,3,'PREMIUM',21),(64,1,1,'REGULAR',22),(65,2,2,'BALCONY',22),(66,3,3,'PREMIUM',22),(67,1,1,'REGULAR',23),(68,2,2,'BALCONY',23),(69,3,3,'PREMIUM',23),(70,1,1,'REGULAR',24),(71,2,2,'BALCONY',24),(72,3,3,'PREMIUM',24);
/*!40000 ALTER TABLE `theatre_screen_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_show_handler`
--

DROP TABLE IF EXISTS `theatre_show_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_show_handler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_time` datetime(6) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `movieid` int NOT NULL,
  `theatre_id` int NOT NULL,
  `theatre_show_status` enum('Created','Failed','Pending','CreatedWithError') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `shows_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_show_handler`
--

LOCK TABLES `theatre_show_handler` WRITE;
/*!40000 ALTER TABLE `theatre_show_handler` DISABLE KEYS */;
INSERT INTO `theatre_show_handler` VALUES (1,'2025-01-26 22:24:28.689054','Error:0,1,',1,1,'CreatedWithError','[{\"screenId\": 2, \"showTime\": \"2025-01-23T14:30:00\", \"showendTime\": \"2025-01-23T14:30:00\"}, {\"screenId\": 2, \"showTime\": \"2025-02-23T14:30:00\", \"showendTime\": \"2025-02-23T14:30:00\"}]');
/*!40000 ALTER TABLE `theatre_show_handler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatres`
--

DROP TABLE IF EXISTS `theatres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatres` (
  `theatreid` int NOT NULL AUTO_INCREMENT,
  `theatre_name` varchar(255) DEFAULT NULL,
  `regionid` int DEFAULT NULL,
  PRIMARY KEY (`theatreid`),
  KEY `FK40btoqvmf82gfu9pibyuwqnti` (`regionid`),
  CONSTRAINT `FK40btoqvmf82gfu9pibyuwqnti` FOREIGN KEY (`regionid`) REFERENCES `region` (`regionid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatres`
--

LOCK TABLES `theatres` WRITE;
/*!40000 ALTER TABLE `theatres` DISABLE KEYS */;
INSERT INTO `theatres` VALUES (1,'IMAX',1),(2,'AMB',1),(3,'Sri Krishna',2),(4,'Aditya',2),(5,'Asian Cinemas',2),(6,'Imax',3),(7,'PVR',3),(8,'PNR',3);
/*!40000 ALTER TABLE `theatres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email_id_IDX` (`email_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rahulravuri057@gmail.com','rahul',6301921161),(2,'akhilravuri@gmail.com','akhilravuri',3271732),(3,'deepthiravuri@gmil.com','deepthiravuri',3254),(5,'raju@2024','raju',232);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!50001 DROP VIEW IF EXISTS `user_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_details` AS SELECT 
 1 AS `userid`,
 1 AS `emailid`,
 1 AS `password`,
 1 AS `phone_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'bookmyshow'
--
/*!50003 DROP PROCEDURE IF EXISTS `BookMyshow_User_Create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BookMyshow_User_Create`(IN User_id INT)
begin
	
	insert into user(email_id,name,phone_number) 
	select ud.emailid ,substring_index(emailid, '@', 1),ud.phone_number  from user_details ud 
	where ud.userid=User_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Create_Shows` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Create_Shows`(IN BatchId INT
)
begin
	DECLARE movie INT;
    DECLARE theatreId INT;
    DECLARE screenId INT;
    DECLARE startTime DATETIME;
    DECLARE endTime DATETIME;
    DECLARE seatRow INT;
    DECLARE seatCol INT;
    DECLARE screenIndex INT DEFAULT 0;	
    DECLARE totalScreens INT;
    DECLARE screenData JSON;
	DECLARE AllscreenData JSON;
	DECLARE ERROR VARCHAR(255)DEFAULT 'Error:';
        DECLARE showId INT;
DECLARE code CHAR(5) DEFAULT '00000';
  DECLARE msg TEXT DEFAULT '';
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
	
   	   GET DIAGNOSTICS CONDITION 1
        code = MYSQL_ERRNO, msg = MESSAGE_TEXT;
    ROLLBACK;
    UPDATE theatre_show_handler
    SET theatre_show_status = 'Failed', 
        information = CONCAT('Error Code: ', code, ' - Message: ', msg)
    WHERE id = BatchId;

       	 
    END;   
	
    START TRANSACTION;

	 select 
	movieid,theatre_id,shows_data into movie,theatreId,AllscreenData
	from theatre_show_handler where id=BatchId;
	set totalScreens=JSON_LENGTH(AllscreenData);

    
    WHILE screenIndex < totalScreens DO
        SET screenData = JSON_EXTRACT(AllscreenData, CONCAT('$[', screenIndex, ']'));
        SET screenId = JSON_UNQUOTE(JSON_EXTRACT(screenData, '$.screenId'));
        SET startTime = STR_TO_DATE(JSON_UNQUOTE(JSON_EXTRACT(screenData, '$.showTime')), '%Y-%m-%dT%H:%i:%s') ;
        SET endTime = STR_TO_DATE(JSON_UNQUOTE(JSON_EXTRACT(screenData, '$.showendTime')), '%Y-%m-%dT%H:%i:%s') ;
        
        SELECT 1
        FROM movie_show ms
        WHERE ms.screen_id = screenId
        FOR UPDATE;
		
		IF NOT EXISTS(select 1 from movie_show s where s.screen_id = screenId
		and ((s.show_time between startTime and endTime) or(startTime between s.show_time and s.showend_time))) THEN
        
        INSERT INTO movie_show (movieId, screen_id, show_time, showend_time)
        VALUES (movie, screenId, startTime, endTime);
        
        SET showId = LAST_INSERT_ID();
        
        INSERT INTO show_seats (seat_status, showid, seattype, seatcol, seatrow)
                (select  'Empty',showId,ss.seattype,ss.seatrow,ss.seatcol from theatre_screen_seats ss
				where ss.screen_id= screenId);
		
		ELSE
			set ERROR=CONCAT(ERROR,CONCAT(CAST(screenIndex AS CHAR),','));
		END IF;
        
        SET screenIndex = screenIndex + 1;
    END WHILE;
	IF (ERROR <> 'Error:') THEN
			UPDATE theatre_show_handler
			SET theatre_show_status = 'CreatedWithError', information = ERROR
			WHERE id = BatchId;
	ELSE
			UPDATE theatre_show_handler
			SET theatre_show_status = 'Created', information = 'ALL GOOD'
			WHERE id = BatchId;
	END IF;
	
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `user_details`
--

/*!50001 DROP VIEW IF EXISTS `user_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_details` AS select `users`.`user_model`.`userid` AS `userid`,`users`.`user_model`.`emailid` AS `emailid`,`users`.`user_model`.`password` AS `password`,`users`.`user_model`.`phone_number` AS `phone_number` from `users`.`user_model` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-03 15:28:28
