CREATE DATABASE  IF NOT EXISTS `ecommerce_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `user_dtls`
--

DROP TABLE IF EXISTS `user_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dtls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL,
  `account_non_locked` bit(1) DEFAULT NULL,
  `failed_attempt` int DEFAULT NULL,
  `locktime` datetime(6) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dtls`
--

LOCK TABLES `user_dtls` WRITE;
/*!40000 ALTER TABLE `user_dtls` DISABLE KEYS */;
INSERT INTO `user_dtls` VALUES (102,'A-405 Goldem Palms Sainath-nagar Kharadi ','Pune','saif@gmail.com','7756815450','Saif Mulla','$2a$10$dL0HB/yucU/jUg8qGX4pFem1qAII/H9A0eNAcoa5h53wlyID2U/3.','411014','IMG-20240215-WA0127.jpg','Maharashtra','ROLE_ADMIN',_binary '\0',_binary '',2,NULL,' '),(202,'new Sanghavi','Pune','saifmulla5450@gmail.com','7756815450','Coder_Saif','$2a$10$mmuWIPrALsn1jecNG3nXXulmfGXKiKha3lBUjLtma7Mb4UpqfFD2.','411027','IMG-20240215-WA0127.jpg','Maharashtra','ROLE_USER',_binary '',_binary '',1,NULL,NULL),(452,'Old Sanghavi','Pune','sabihajamadar5@gmail.com','987463210','Sabiha Jamadar','$2a$10$711OPT0iis3bH0KdXjeECeEE17v7SwqhnF1NhJr3ziqyb3WVZe36u','41107','ecom3.jpg','Maharashtra','ROLE_USER',_binary '',_binary '',0,NULL,'fd7e9763-161a-4f17-a7b5-2c782a3ccced'),(552,'qewqe','ewqeqw','admin@gmail.com','9874563210','Admin','$2a$10$92Dkq9na4rO9ppKZguGiYOTrkYf7zCnqLRZVQBaYLSztLOJHeq5L.','124545','ecom.png','ewqewq','ROLE_ADMIN',_binary '',_binary '',0,NULL,NULL),(602,'pune','pune','riyaj@yopmail.com','9689119218','riyaj','$2a$10$HvWgfw7C.PSXftJa/EmcbO1GEZjrS77nOEL3c1ZTu5.Q1F9gmbe82','324123','Identity photo.jpeg','pune','ROLE_USER',_binary '',_binary '',0,NULL,'2a6c6338-f3be-4c31-a310-449c8281575f'),(652,'Ap Amrapur ','Amarpur','mulladastgir90@gmail.com','9623798167','Dastgeer Mulla','$2a$10$T4ToJihgqzZ5Ip7T7hpLquazpKxsMs4LLebXmVBa4t1hyfL6iqAgC','41305','Identity photo.jpeg','maharashtra','ROLE_USER',_binary '',_binary '',0,NULL,NULL);
/*!40000 ALTER TABLE `user_dtls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29  2:21:33
