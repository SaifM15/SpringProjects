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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `stock` int NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `discount` int NOT NULL,
  `discount_price` double NOT NULL,
  `is_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (452,'Laptop','HP Laptop ','laptop.jpg',35000,20,'Laptop',0,35000,_binary ''),(603,'Electronics','canon camera','camera.jpeg',23000,10,'Camera',0,23000,_binary ''),(604,'Mobile','new tablet','tab.jfif',55000,5,'Apple Tablet',0,55000,_binary ''),(605,'Mobile','apple mini 12 pro max','apple.jfif',65000,25,'Apple Iphone',0,65000,_binary ''),(606,'Electronics','Wired  Headphones','imagesbluetoth.jfif',320,25,'Bluetooth Wire',0,320,_binary ''),(607,'Beuty','New High Quality Brush','brush.jfif',250,25,'Makeup Brush',0,250,_binary ''),(608,'Beuty','New Red Bold Liptick','lipstick.jfif',370,250,'Lipstick',0,370,_binary ''),(652,'Electronics','check it','camera.jpeg',35000,52,'New Camera',0,35000,_binary ''),(653,'Beuty','New lica Lipstick','lipstick.jfif',6540,32,'Lica Lipstick',0,6540,_binary ''),(654,'Electronics','Without Wire','imagesbluetoth.jfif',360,20,'Wireless bluetooth',0,360,_binary ''),(702,'Grocery','									Highlights\r\nUsed For: Cooking\r\nProcessing Type: Refined','priya.jfif',135,20,'Priya Lite Sunflower Oil Pouch (1 L)',0,135,_binary ''),(703,'Grocery','									Brand : Classic\r\nModel Name : Kachi Ghani\r\nType : Mustard Oil\r\nQuantity : 1 L\r\nUsed For :Cooking\r\nProcessing Type : NA\r\nMaximum Shelf Life : 9 Months\r\nFood Preference : Vegetarian\r\nContainer Type : Pouch\r\nOrganic: No\r\nAdded Preservatives: No\r\nIngredients : NA\r\nNutrient Content: NA\r\nNet Quantity: 1 L','kachighani.jfif',134,15,'Classic Kachi Ghani Mustard Oil Pouch (1 L)',0,134,_binary ''),(704,'Grocery','Brand: FORTUNE\r\nModel Name : Kachi Ghani\r\nType : Mustard Oil\r\nQuantity : 500 ml\r\nUsed For:  Cooking\r\nProcessing Type : Cold Pressured\r\nMaximum Shelf Life : 12 Months\r\nFood Preference : Vegetarian\r\nDietary Preference : No Cholesterol\r\nContainer Type: Plastic Bottle\r\nOrganic : No\r\nAdded Preservatives: No\r\nIngredients: NA\r\nNutrient Content: NA\r\nNet Quantity: 500 ml','kachighanibottel.jfif',74,250,'FORTUNE Kachi Ghani  Oil Plastic Bottle  (500 ml)',0,74,_binary ''),(705,'Grocery','Specifications :-\r\nIn The Box \r\nBrand :- DHARA\r\nModel Name : Kachi Ghani\r\nType : Mustard Oil\r\nQuantity :5 L\r\nUsed For : Cooking\r\nProcessing Type :NA\r\nMaximum Shelf Life:  274 Days\r\nFood Preference : Vegetarian\r\nContainer Type : Can\r\nOrganic : No\r\nAdded Preservatives : No\r\nIngredients : NA\r\nNutrient Content: NA\r\nCommon Name:Kachi ghani oil\r\nNet Quantity : 5 L','dhara.jfif',875,40,'DHARA Kachi Ghani Mustard Oil Can (Mohriche Tel)  (5 L)',0,875,_binary ''),(752,'Mobiles','d','priya.jfif',0,-1,'samsung phone',0,0,_binary '');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29  2:21:34
