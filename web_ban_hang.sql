-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: php
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `level` tinyint(4) DEFAULT '1',
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'Hoàng Đức Anh','Thị trấn Cát Thành-Trực Ninh-Nam Định','ducanhlhp9@gmail.com','5263722eed2be6c64d1b9525eb637677','0942410953',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` tinyint(50) DEFAULT '0',
  `status` tinyint(50) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'MACBOOK','macbook',NULL,NULL,1,1,'2019-12-18 07:11:52','2020-02-03 08:22:44'),(2,'ASUS','asus',NULL,NULL,1,1,'2019-12-18 07:19:43','2019-12-24 13:44:55'),(3,'HP','hp',NULL,NULL,1,1,'2019-12-18 07:33:05','2020-01-04 13:34:21'),(4,'DELL','dell',NULL,NULL,1,1,'2019-12-23 01:54:18','2020-02-03 08:22:46'),(5,'SAMSUNG','samsung',NULL,NULL,1,1,'2019-12-23 01:54:59','2019-12-28 04:49:15'),(6,'TOSHIBA','toshiba',NULL,NULL,0,1,'2019-12-23 01:55:49','2019-12-23 14:17:44'),(7,'HUAWEI','huawei',NULL,NULL,0,1,'2019-12-23 01:58:01','2019-12-23 14:17:59'),(8,'XIAOMI','xiaomi',NULL,NULL,0,1,'2019-12-23 01:58:06','2019-12-24 13:21:25'),(35,'Iphone','iphone',NULL,NULL,0,1,'2019-12-28 04:42:21','2019-12-28 04:42:21');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Product_id` int(11) NOT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'abc',0,'abc','2020-01-03 03:15:38');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oder`
--

DROP TABLE IF EXISTS `oder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oder`
--

LOCK TABLES `oder` WRITE;
/*!40000 ALTER TABLE `oder` DISABLE KEYS */;
INSERT INTO `oder` VALUES (13,13,32,2,23000000,'2020-01-03 02:46:37','2020-01-03 02:46:37'),(14,13,24,1,23000000,'2020-01-03 02:46:37','2020-01-03 02:46:37'),(15,14,23,1,20000000,'2020-01-03 02:47:32','2020-01-03 02:47:32'),(16,15,32,1,23000000,'2020-01-04 13:32:33','2020-01-04 13:32:33'),(17,15,31,1,22000000,'2020-01-04 13:32:33','2020-01-04 13:32:33'),(18,16,32,1,23000000,'2020-02-10 09:20:48','2020-02-10 09:20:48');
/*!40000 ALTER TABLE `oder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT '0',
  `thunbar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `number` int(11) DEFAULT '0',
  `head` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `hot` tinyint(4) DEFAULT '0',
  `pay` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (23,'macbook','macbook',25000000,20,'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg',1,'abc',23,0,0,0,0,NULL,'2020-01-02 14:20:20'),(24,'Macbook 2015 Pro','macbook-2015-pro',23000000,0,'11694856_macbook-pro-retina-15-inch-early-2015.jpg',1,'abc',23,0,0,0,0,NULL,'2020-01-02 14:20:29'),(25,'Asus MSI','asus-msi',25000000,0,'1568436016418_4572913.png',2,'abc',7,0,0,0,1,NULL,'2020-01-02 14:20:36'),(26,'SAMSUNG note 10','samsung-note-10',12000000,0,'samsung-galaxy-note-10-plus-blue-400x460.png',5,'đẹp',20,0,0,0,0,NULL,'2020-01-02 14:20:47'),(27,'Toshiba Satellite L850 Core i3-2370M Máy đẹp, Rẻ.','toshiba-satellite-l850-core-i3-2370m-may-dep-re',2400000,0,'Toshiba Satellite L850 front.png',6,' Máy đẹp, Rẻ.',50,0,0,0,0,NULL,'2020-01-02 14:21:04'),(28,'Toshiba - Satelllite A 135','toshiba---satelllite-a-135',950000,0,'toshiba-a135-3.jpg',6,'cần bán',3,0,0,0,0,NULL,'2020-01-02 14:21:15'),(29,'Huawei P30 Pro','huawei-p30-pro',16000000,0,'huawei-p30-pro-1-400x460.png',7,'nhiều',1000,0,0,0,0,NULL,'2020-01-02 14:21:26'),(30,'iPhone X 64GB','iphone-x-64gb',20000000,0,'iphone-x-64gb-2-400x460.png',35,'đẹp',100,0,0,0,0,NULL,'2020-01-02 14:21:38'),(31,'Samsung Galaxy S10+ (128GB)','samsung-galaxy-s10-128gb',22000000,0,'samsung-galaxy-note-10-plus-blue-400x460.png',5,'đẹp',100,0,0,0,0,NULL,'2020-01-02 14:22:04'),(32,'Samsung Galaxy Note 9 128GB','samsung-galaxy-note-9-128gb',23000000,0,'samsung-galaxy-note-9-black-400x460-400x460.png',5,'abc',100,0,0,0,0,NULL,'2020-01-02 14:22:11'),(33,'TV FLAT Samsung NU8000 ','tv-flat-samsung-nu8000',22900000,0,'vn-premium-uhd-nu8000-ua55nu8000kxxv-rperspectiveblack-94847373_1.jpg',5,'abc',200,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (13,69000000,9,0,'2020-01-03 02:46:37','2020-01-03 02:46:37'),(14,20000000,9,0,'2020-01-03 02:47:31','2020-01-03 02:47:31'),(15,45000000,9,0,'2020-01-04 13:32:33','2020-01-04 13:32:33'),(16,23000000,9,0,'2020-02-10 09:20:48','2020-02-10 09:20:48');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT '1',
  `token` int(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'Hoàng Đức Anh','cucanhlhp9@gmail.com','012345678','Cát Thành-Trực Ninh-Nam Định','e10adc3949ba59abbe56e057f20f883e',NULL,'1',NULL,'2020-01-02 16:46:22','2022-01-09 13:45:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09 21:06:32
