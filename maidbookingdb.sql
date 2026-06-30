CREATE DATABASE  IF NOT EXISTS `info` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `info`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: info
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `add_maid`
--

DROP TABLE IF EXISTS `add_maid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_maid` (
  `Maid_ID` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `salary` bigint DEFAULT NULL,
  `mobile_no` bigint DEFAULT NULL,
  `aadhar_no` bigint DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `maidadd_date` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_maid`
--

LOCK TABLES `add_maid` WRITE;
/*!40000 ALTER TABLE `add_maid` DISABLE KEYS */;
INSERT INTO `add_maid` VALUES (1,'Pushpa','1990-01-01','Vita','Housekeeper',5000,7854238640,421498226241,8,'2025-02-23 18:30:00.000000'),(2,'Lata','1985-05-05','Vita','Cleaner',4000,987654321,473492781242,6,'2025-02-23 18:30:00.000000'),(3,'Manjusha ','1997-02-27','Vita','Cook',5000,7656987739,787636258003,8,'2025-02-04 18:30:00.000000'),(4,'Sujata','1989-03-12','Vita','Cleaner',6000,98247665742,462389542167,4,'2025-02-26 18:30:00.000000'),(5,'Laxmi','1992-04-23','Vita','Housekeeper',7000,9988776534,482176154123,6,'2025-02-13 18:30:00.000000'),(6,'Kamla','1995-02-15','Vita','Caregiver',8000,8999765432,443450719267,12,'2025-02-14 18:30:00.000000'),(7,'Savita','1994-05-13','Vita','Caregiver',8000,8472214508,482199459062,10,'2025-02-11 18:30:00.000000');
/*!40000 ALTER TABLE `add_maid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_logon`
--

DROP TABLE IF EXISTS `admin_logon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_logon` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_logon`
--

LOCK TABLES `admin_logon` WRITE;
/*!40000 ALTER TABLE `admin_logon` DISABLE KEYS */;
INSERT INTO `admin_logon` VALUES (1,'Rutuja','rutuja@01'),(2,'Sweta','sweta@02');
/*!40000 ALTER TABLE `admin_logon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry1`
--

DROP TABLE IF EXISTS `client_enquiry1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry1` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `nopeople` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry1`
--

LOCK TABLES `client_enquiry1` WRITE;
/*!40000 ALTER TABLE `client_enquiry1` DISABLE KEYS */;
INSERT INTO `client_enquiry1` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',7,'2025-03-01',8),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01',12);
/*!40000 ALTER TABLE `client_enquiry1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry2`
--

DROP TABLE IF EXISTS `client_enquiry2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry2` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `norooms` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry2`
--

LOCK TABLES `client_enquiry2` WRITE;
/*!40000 ALTER TABLE `client_enquiry2` DISABLE KEYS */;
INSERT INTO `client_enquiry2` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',7,'2025-03-01',4),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01',6);
/*!40000 ALTER TABLE `client_enquiry2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry3`
--

DROP TABLE IF EXISTS `client_enquiry3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry3` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `healthcondition` varchar(45) DEFAULT NULL,
  `emecontact` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry3`
--

LOCK TABLES `client_enquiry3` WRITE;
/*!40000 ALTER TABLE `client_enquiry3` DISABLE KEYS */;
INSERT INTO `client_enquiry3` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',7,'2025-03-01',80,'Arthritis',9467212469),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01',70,'Paralaysis',9864523182);
/*!40000 ALTER TABLE `client_enquiry3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry4`
--

DROP TABLE IF EXISTS `client_enquiry4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry4` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `specialinstruction` varchar(45) DEFAULT NULL,
  `emecontact` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry4`
--

LOCK TABLES `client_enquiry4` WRITE;
/*!40000 ALTER TABLE `client_enquiry4` DISABLE KEYS */;
INSERT INTO `client_enquiry4` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',7,'2025-03-01','Provide a good baby care',8723419804),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01','Provide a good baby care',8453892128);
/*!40000 ALTER TABLE `client_enquiry4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry5`
--

DROP TABLE IF EXISTS `client_enquiry5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry5` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `additionalservices` varchar(45) DEFAULT NULL,
  `nopeople` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry5`
--

LOCK TABLES `client_enquiry5` WRITE;
/*!40000 ALTER TABLE `client_enquiry5` DISABLE KEYS */;
INSERT INTO `client_enquiry5` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',7,'2025-03-01','Housekeeper',4),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01','Caregiver',7);
/*!40000 ALTER TABLE `client_enquiry5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_enquiry6`
--

DROP TABLE IF EXISTS `client_enquiry6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_enquiry6` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `gardeningtype` varchar(45) DEFAULT NULL,
  `gardensize` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_enquiry6`
--

LOCK TABLES `client_enquiry6` WRITE;
/*!40000 ALTER TABLE `client_enquiry6` DISABLE KEYS */;
INSERT INTO `client_enquiry6` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8472214508,'10:30:00',5,'2025-03-01','Tree Planting','5000 sq ft'),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',2,'2025-03-01','Lawn','4200 sq ft');
/*!40000 ALTER TABLE `client_enquiry6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_registration`
--

DROP TABLE IF EXISTS `client_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_registration` (
  `client_id` int NOT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `cuser_name` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobileno` bigint DEFAULT NULL,
  `registrationdate` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_registration`
--

LOCK TABLES `client_registration` WRITE;
/*!40000 ALTER TABLE `client_registration` DISABLE KEYS */;
INSERT INTO `client_registration` VALUES (1,'Rutuja Tarase','rutuja','rutuja@01','rutujatarase01@gmail.com','Vita',8949142128,'2025-03-01 10:30:23.000000'),(2,'Shweta Sutar','sweta','sweta@02','swetasutar02@gmail.com','Mayani',9824766574,'2025-03-01 11:20:45.000000');
/*!40000 ALTER TABLE `client_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilenumber` bigint DEFAULT NULL,
  `workingtime` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `hiringdate` date DEFAULT NULL,
  `occasiontype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Rutuja Tarase','rutujatarase01@gmail.com','Vita',8949142128,'10:30:00',6,'2025-03-01','Birthday Party'),(2,'Shweta Sutar','swetasutar02@gmail.com','Mayani',9824766574,'10:30:00',8,'2025-03-01','Wedding');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `clientid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `feedbackdate` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Rutuja Tarase','rutujatarase@gmail.com','8949142128','Excellent','Good service provide','2025-02-23 18:40:34.000000'),(2,'Sweta Sutar','swetasutar02@gmail.com','9824766574','Good','Reliable Service Provide','2025-02-03 14:24:30.000000');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hire_maid`
--

DROP TABLE IF EXISTS `hire_maid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hire_maid` (
  `maid_id` int DEFAULT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `client_address` varchar(45) DEFAULT NULL,
  `service_type` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hire_maid`
--

LOCK TABLES `hire_maid` WRITE;
/*!40000 ALTER TABLE `hire_maid` DISABLE KEYS */;
INSERT INTO `hire_maid` VALUES (1,'Rutuja Tarase','Vita','cooking','2025-02-25',1,'Pushpa'),(1,'Sweta Sutar','Mayani','gardening','2025-03-01',2,'Lata');
/*!40000 ALTER TABLE `hire_maid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cardholder` varchar(45) DEFAULT NULL,
  `cardnumber` varchar(45) DEFAULT NULL,
  `expirymonth` varchar(45) DEFAULT NULL,
  `expiryyear` varchar(45) DEFAULT NULL,
  `cvv` bigint DEFAULT NULL,
  `paymentdate` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Rutuja Tarase','8949142128','rutujatarase01@gmail.com','Rutuja Tarase','8436284501958256','08','2028',164,'2025-02-24 18:30:00.000000'),(2,'Shweta Sutar','98247665742','shwetasutar02@gmail.com','Shweta Sutar','8214537890183186','01','2028',168,'2025-02-24 18:30:00.000000');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'info'
--

--
-- Dumping routines for database 'info'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 17:31:16
