-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: western
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `activities_assets`
--

DROP TABLE IF EXISTS `activities_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities_assets` (
  `activity_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  PRIMARY KEY (`activity_id`,`images_id`),
  KEY `FK22m01u3jp69lx5pmb9j8wx7un` (`images_id`),
  CONSTRAINT `FK22m01u3jp69lx5pmb9j8wx7un` FOREIGN KEY (`images_id`) REFERENCES `asset` (`id`),
  CONSTRAINT `FK4m9r64ed7tjg9sge7ap72c8gm` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities_assets`
--

LOCK TABLES `activities_assets` WRITE;
/*!40000 ALTER TABLE `activities_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `additionalinfo` longtext,
  `country` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `exclusion` longtext,
  `inclusion` longtext,
  `link` varchar(255) DEFAULT NULL,
  `members` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `offer` int(11) NOT NULL,
  `pricecategory` varchar(255) DEFAULT NULL,
  `facility_id` bigint(20) DEFAULT NULL,
  `price_id` bigint(20) DEFAULT NULL,
  `theme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgc4k269qkxfpt3f0j3dwbw6d6` (`facility_id`),
  KEY `FKjhire3dbd6uhbo5l2nloenopg` (`price_id`),
  KEY `FKqqi62ddj62f71vmho8w7a27yh` (`theme_id`),
  CONSTRAINT `FKgc4k269qkxfpt3f0j3dwbw6d6` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `FKjhire3dbd6uhbo5l2nloenopg` FOREIGN KEY (`price_id`) REFERENCES `price` (`id`),
  CONSTRAINT `FKqqi62ddj62f71vmho8w7a27yh` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_places`
--

DROP TABLE IF EXISTS `activity_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_places` (
  `activity_id` bigint(20) NOT NULL,
  `places_id` bigint(20) NOT NULL,
  PRIMARY KEY (`activity_id`,`places_id`),
  KEY `FK9oqthgf4bcq5ofgb2lbuyvkh2` (`places_id`),
  CONSTRAINT `FK336xeajyo4ualn6pqw0upem2u` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`),
  CONSTRAINT `FK9oqthgf4bcq5ofgb2lbuyvkh2` FOREIGN KEY (`places_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_places`
--

LOCK TABLES `activity_places` WRITE;
/*!40000 ALTER TABLE `activity_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_line_two` varchar(255) DEFAULT NULL,
  `addressline_one` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKda8tuywtf0gb6sedwk7la1pgi` (`user_id`),
  CONSTRAINT `FKda8tuywtf0gb6sedwk7la1pgi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filesize` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  `gcsurl` varchar(255) DEFAULT NULL,
  `image` longblob,
  `imagename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tourpackage`
--

DROP TABLE IF EXISTS `asset_tourpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_tourpackage` (
  `asset_id` bigint(20) NOT NULL,
  `tourpackage_id` bigint(20) NOT NULL,
  PRIMARY KEY (`asset_id`,`tourpackage_id`),
  KEY `FKcao9mw7bi89l6jb6qekxwc7ad` (`tourpackage_id`),
  CONSTRAINT `FKcao9mw7bi89l6jb6qekxwc7ad` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`),
  CONSTRAINT `FKom4g98d99ynv0onxlg4ccomj5` FOREIGN KEY (`asset_id`) REFERENCES `asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tourpackage`
--

LOCK TABLES `asset_tourpackage` WRITE;
/*!40000 ALTER TABLE `asset_tourpackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tourpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_place`
--

DROP TABLE IF EXISTS `blogs_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKntgx5ukc08eaivurbgvdyjd7y` (`place_id`),
  CONSTRAINT `FK24ydug03t4mw64t6m6hljl8op` FOREIGN KEY (`id`) REFERENCES `blog` (`id`),
  CONSTRAINT `FKntgx5ukc08eaivurbgvdyjd7y` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_place`
--

LOCK TABLES `blogs_place` WRITE;
/*!40000 ALTER TABLE `blogs_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_package_suggest`
--

DROP TABLE IF EXISTS `budget_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget` varchar(255) DEFAULT NULL,
  `days` int(11) NOT NULL,
  `imgcdn` varchar(255) DEFAULT NULL,
  `maxprice` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_package_suggest`
--

LOCK TABLES `budget_package_suggest` WRITE;
/*!40000 ALTER TABLE `budget_package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgetpackage_suggest_place`
--

DROP TABLE IF EXISTS `budgetpackage_suggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgetpackage_suggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKotla73keli6tr188pmlbp65qb` (`place_id`),
  CONSTRAINT `FK11qyrgv9wioe525b46txfepjw` FOREIGN KEY (`id`) REFERENCES `budget_package_suggest` (`id`),
  CONSTRAINT `FKotla73keli6tr188pmlbp65qb` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetpackage_suggest_place`
--

LOCK TABLES `budgetpackage_suggest_place` WRITE;
/*!40000 ALTER TABLE `budgetpackage_suggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `budgetpackage_suggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_46ccwnsi9409t36lurvtyljak` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Water Activity');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_llidyp77h6xkeokpbmoy710d4` (`name`),
  KEY `FKrtuw63fx1eq6jxpqyjkox4jgt` (`region_id`),
  CONSTRAINT `FKrtuw63fx1eq6jxpqyjkox4jgt` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customise_package`
--

DROP TABLE IF EXISTS `customise_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customise_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aditionalinfo` longtext,
  `adults` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `children` int(11) NOT NULL,
  `departure_city` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `exlusion_text` longtext,
  `inclusiontext` longtext,
  `infants` int(11) NOT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `payment_policy` longtext,
  `termsandconditions` longtext,
  `total_price` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `travel_date` datetime(6) DEFAULT NULL,
  `travel_duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customise_package`
--

LOCK TABLES `customise_package` WRITE;
/*!40000 ALTER TABLE `customise_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `customise_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customise_package_flightinfo`
--

DROP TABLE IF EXISTS `customise_package_flightinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customise_package_flightinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrival_date` datetime(6) DEFAULT NULL,
  `arrival_time` varchar(255) DEFAULT NULL,
  `baggage_cabin_capacity` varchar(255) DEFAULT NULL,
  `baggage_checkin_capacity` varchar(255) DEFAULT NULL,
  `departure_date` datetime(6) DEFAULT NULL,
  `departure_time` varchar(255) DEFAULT NULL,
  `flight_arrival_city` varchar(255) DEFAULT NULL,
  `flight_departure_city` varchar(255) DEFAULT NULL,
  `oneside` bit(1) NOT NULL,
  `roundtrip` bit(1) NOT NULL,
  `flightinfo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi26ociq172ymng5ekqa2ce9ol` (`flightinfo_id`),
  CONSTRAINT `FKi26ociq172ymng5ekqa2ce9ol` FOREIGN KEY (`flightinfo_id`) REFERENCES `customise_package` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customise_package_flightinfo`
--

LOCK TABLES `customise_package_flightinfo` WRITE;
/*!40000 ALTER TABLE `customise_package_flightinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `customise_package_flightinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customise_package_hotel_info`
--

DROP TABLE IF EXISTS `customise_package_hotel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customise_package_hotel_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_members_room` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `hotel_imageurl1` varchar(255) DEFAULT NULL,
  `hotel_imageurl2` varchar(255) DEFAULT NULL,
  `hotel_imageurl3` varchar(255) DEFAULT NULL,
  `hotel_imageurl4` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_note` varchar(255) DEFAULT NULL,
  `hotel_place` varchar(255) DEFAULT NULL,
  `room_check_in` datetime(6) DEFAULT NULL,
  `room_checkin_start_time` varchar(255) DEFAULT NULL,
  `room_checkout_date` datetime(6) DEFAULT NULL,
  `room_checkout_time` varchar(255) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `hotelinfo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK74cuw46owg4dhl95ft97jxjmu` (`hotelinfo_id`),
  CONSTRAINT `FK74cuw46owg4dhl95ft97jxjmu` FOREIGN KEY (`hotelinfo_id`) REFERENCES `customise_package` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customise_package_hotel_info`
--

LOCK TABLES `customise_package_hotel_info` WRITE;
/*!40000 ALTER TABLE `customise_package_hotel_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `customise_package_hotel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customise_package_iternery`
--

DROP TABLE IF EXISTS `customise_package_iternery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customise_package_iternery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `day_heading` varchar(255) DEFAULT NULL,
  `day_place` varchar(255) DEFAULT NULL,
  `description` longtext,
  `heading_description` longtext,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customise_package_iternery`
--

LOCK TABLES `customise_package_iternery` WRITE;
/*!40000 ALTER TABLE `customise_package_iternery` DISABLE KEYS */;
/*!40000 ALTER TABLE `customise_package_iternery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customisepackage_user`
--

DROP TABLE IF EXISTS `customisepackage_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customisepackage_user` (
  `user_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfo6jmff7i13xjnomxnpov2yqe` (`user_id`),
  CONSTRAINT `FK4vjruh1icacglcq7erru2l37q` FOREIGN KEY (`id`) REFERENCES `customise_package` (`id`),
  CONSTRAINT `FKfo6jmff7i13xjnomxnpov2yqe` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customisepackage_user`
--

LOCK TABLES `customisepackage_user` WRITE;
/*!40000 ALTER TABLE `customisepackage_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `customisepackage_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kvkg405mr04cjytv1tuyh7ryr` (`name`),
  KEY `FKmcmomfl21wkjcemlw83sxlmwy` (`state_id`),
  CONSTRAINT `FKmcmomfl21wkjcemlw83sxlmwy` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Mysur',1);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration_package_suggest`
--

DROP TABLE IF EXISTS `duration_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duration_package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` bigint(20) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `imgcdn` varchar(255) DEFAULT NULL,
  `max_price` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration_package_suggest`
--

LOCK TABLES `duration_package_suggest` WRITE;
/*!40000 ALTER TABLE `duration_package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `duration_package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `durationpackage_suggest_place`
--

DROP TABLE IF EXISTS `durationpackage_suggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `durationpackage_suggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7fnhlu5ig70eelur04qv8j3am` (`place_id`),
  CONSTRAINT `FK7fnhlu5ig70eelur04qv8j3am` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`),
  CONSTRAINT `FKgidfvrydjr67pwtsl9u5wcbb8` FOREIGN KEY (`id`) REFERENCES `duration_package_suggest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `durationpackage_suggest_place`
--

LOCK TABLES `durationpackage_suggest_place` WRITE;
/*!40000 ALTER TABLE `durationpackage_suggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `durationpackage_suggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_artist`
--

DROP TABLE IF EXISTS `event_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_artist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) DEFAULT NULL,
  `gcsurl` varchar(255) DEFAULT NULL,
  `image` tinyblob,
  `name` varchar(255) DEFAULT NULL,
  `socialmedia1` varchar(255) DEFAULT NULL,
  `socialmedia2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_artist`
--

LOCK TABLES `event_artist` WRITE;
/*!40000 ALTER TABLE `event_artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_banners`
--

DROP TABLE IF EXISTS `event_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_banners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `gcsurl` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_banners`
--

LOCK TABLES `event_banners` WRITE;
/*!40000 ALTER TABLE `event_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_catogory`
--

DROP TABLE IF EXISTS `event_catogory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_catogory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a8bmcuf6n2dxarh83sj4aror5` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_catogory`
--

LOCK TABLES `event_catogory` WRITE;
/*!40000 ALTER TABLE `event_catogory` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_catogory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_catogory_event_package`
--

DROP TABLE IF EXISTS `event_catogory_event_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_catogory_event_package` (
  `event_catogory_id` bigint(20) NOT NULL,
  `event_package_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_catogory_id`,`event_package_id`),
  KEY `FK7d5n0ol7ad0p2gkgutnmhl9y4` (`event_package_id`),
  CONSTRAINT `FK7d5n0ol7ad0p2gkgutnmhl9y4` FOREIGN KEY (`event_package_id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKdqb6krc57d3stg2exslgskvsh` FOREIGN KEY (`event_catogory_id`) REFERENCES `event_catogory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_catogory_event_package`
--

LOCK TABLES `event_catogory_event_package` WRITE;
/*!40000 ALTER TABLE `event_catogory_event_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_catogory_event_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_cities`
--

DROP TABLE IF EXISTS `event_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_cities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_e5c90ye64udhr6f1usj7o7d7h` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_cities`
--

LOCK TABLES `event_cities` WRITE;
/*!40000 ALTER TABLE `event_cities` DISABLE KEYS */;
INSERT INTO `event_cities` VALUES (1,'Bengalur','INDIA'),(2,'Pune','INDIA'),(3,'Hydrabad','INDIA');
/*!40000 ALTER TABLE `event_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_cities_event_package`
--

DROP TABLE IF EXISTS `event_cities_event_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_cities_event_package` (
  `event_cities_id` bigint(20) NOT NULL,
  `event_package_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_cities_id`,`event_package_id`),
  UNIQUE KEY `UK_4l4k79vii1k6hpdfnm0a7vifl` (`event_package_id`),
  CONSTRAINT `FK4g5y8v2aqabdue1ktfp8xrfj6` FOREIGN KEY (`event_package_id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKqm3h5w14htg6m2ys88gui6i7b` FOREIGN KEY (`event_cities_id`) REFERENCES `event_cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_cities_event_package`
--

LOCK TABLES `event_cities_event_package` WRITE;
/*!40000 ALTER TABLE `event_cities_event_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_cities_event_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_cities_join`
--

DROP TABLE IF EXISTS `event_cities_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_cities_join` (
  `city_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKissgu4hsqwosj35vvcak2pe5c` (`city_id`),
  CONSTRAINT `FKc3a96bmouvsdqrmm1500fa1j` FOREIGN KEY (`id`) REFERENCES `event_city_location` (`id`),
  CONSTRAINT `FKissgu4hsqwosj35vvcak2pe5c` FOREIGN KEY (`city_id`) REFERENCES `event_cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_cities_join`
--

LOCK TABLES `event_cities_join` WRITE;
/*!40000 ALTER TABLE `event_cities_join` DISABLE KEYS */;
INSERT INTO `event_cities_join` VALUES (1,5),(1,6);
/*!40000 ALTER TABLE `event_cities_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_city_location`
--

DROP TABLE IF EXISTS `event_city_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_city_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5qpdgroy77fsv6m70yu5nto5n` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_city_location`
--

LOCK TABLES `event_city_location` WRITE;
/*!40000 ALTER TABLE `event_city_location` DISABLE KEYS */;
INSERT INTO `event_city_location` VALUES (6,'dhgdhgh'),(5,'Koramangala');
/*!40000 ALTER TABLE `event_city_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_city_location_event_package`
--

DROP TABLE IF EXISTS `event_city_location_event_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_city_location_event_package` (
  `event_city_location_id` bigint(20) NOT NULL,
  `event_package_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_city_location_id`,`event_package_id`),
  UNIQUE KEY `UK_nulfnyf5d8nuv8ufkme4gln89` (`event_package_id`),
  CONSTRAINT `FK8kkb8yk9dhsi3ggk9xjc7eqxp` FOREIGN KEY (`event_city_location_id`) REFERENCES `event_city_location` (`id`),
  CONSTRAINT `FKk6v4i0lbquy8h5noutam82sog` FOREIGN KEY (`event_package_id`) REFERENCES `event_packages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_city_location_event_package`
--

LOCK TABLES `event_city_location_event_package` WRITE;
/*!40000 ALTER TABLE `event_city_location_event_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_city_location_event_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_organiser`
--

DROP TABLE IF EXISTS `event_organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_organiser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `benificiary` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `event_num` int(11) NOT NULL,
  `gstn` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `past_event` int(11) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `social_media` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `total_enq` int(11) NOT NULL,
  `total_views` int(11) NOT NULL,
  `totalbookings` int(11) NOT NULL,
  `upcomming_event` int(11) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `asset_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6rlvh60g7x0soxdoymiwgi4id` (`asset_id`),
  CONSTRAINT `FK6rlvh60g7x0soxdoymiwgi4id` FOREIGN KEY (`asset_id`) REFERENCES `asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_organiser`
--

LOCK TABLES `event_organiser` WRITE;
/*!40000 ALTER TABLE `event_organiser` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_packages`
--

DROP TABLE IF EXISTS `event_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_packages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `additionalinfo` longtext,
  `address` varchar(255) DEFAULT NULL,
  `couple_note` varchar(255) DEFAULT NULL,
  `coupleprice` double NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `enable` bit(1) NOT NULL,
  `ends` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `ladies_note` varchar(255) DEFAULT NULL,
  `ladiesprice` double NOT NULL,
  `maindiscription` longtext,
  `note` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `publish` bit(1) NOT NULL,
  `stag_note` varchar(255) DEFAULT NULL,
  `stagprice` double NOT NULL,
  `starts` varchar(255) DEFAULT NULL,
  `ticket_name` varchar(255) DEFAULT NULL,
  `tickets` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_packages`
--

LOCK TABLES `event_packages` WRITE;
/*!40000 ALTER TABLE `event_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_themes`
--

DROP TABLE IF EXISTS `event_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_themes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_78u6dws63t0gtla2fwriwxk6f` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_themes`
--

LOCK TABLES `event_themes` WRITE;
/*!40000 ALTER TABLE `event_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_themes_event_package`
--

DROP TABLE IF EXISTS `event_themes_event_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_themes_event_package` (
  `event_themes_id` bigint(20) NOT NULL,
  `event_package_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_themes_id`,`event_package_id`),
  UNIQUE KEY `UK_dibjoubb9hucb24b0duxeolhm` (`event_package_id`),
  CONSTRAINT `FK3f45oac6f459ojigvhr70g473` FOREIGN KEY (`event_package_id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKtf2cvv754o5osfdmgi9ve3i7l` FOREIGN KEY (`event_themes_id`) REFERENCES `event_themes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_themes_event_package`
--

LOCK TABLES `event_themes_event_package` WRITE;
/*!40000 ALTER TABLE `event_themes_event_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_themes_event_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventorganiser_details`
--

DROP TABLE IF EXISTS `eventorganiser_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventorganiser_details` (
  `event_organiser_id` bigint(20) NOT NULL,
  `pan_image_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_organiser_id`,`pan_image_id`),
  UNIQUE KEY `UK_bbrqnsit499d9syqxd97rra2x` (`pan_image_id`),
  CONSTRAINT `FKgtrp70uolqiy7nij7x5nu7p0u` FOREIGN KEY (`pan_image_id`) REFERENCES `asset` (`id`),
  CONSTRAINT `FKk2iev37iywpb9r9jjrtuo7t3y` FOREIGN KEY (`event_organiser_id`) REFERENCES `event_organiser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventorganiser_details`
--

LOCK TABLES `eventorganiser_details` WRITE;
/*!40000 ALTER TABLE `eventorganiser_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventorganiser_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_category`
--

DROP TABLE IF EXISTS `eventpackages_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_category` (
  `event_packages_id` bigint(20) NOT NULL,
  `categories_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_packages_id`,`categories_id`),
  KEY `FK8xnih22p455y6wqn7ocsd26km` (`categories_id`),
  CONSTRAINT `FK8xnih22p455y6wqn7ocsd26km` FOREIGN KEY (`categories_id`) REFERENCES `event_catogory` (`id`),
  CONSTRAINT `FKsx4hr3ff17jmibu668yl623e4` FOREIGN KEY (`event_packages_id`) REFERENCES `event_packages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_category`
--

LOCK TABLES `eventpackages_category` WRITE;
/*!40000 ALTER TABLE `eventpackages_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_cover`
--

DROP TABLE IF EXISTS `eventpackages_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_cover` (
  `coverimage_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdwba5jy7269h99w7ks6tdjuy4` (`coverimage_id`),
  CONSTRAINT `FKdwba5jy7269h99w7ks6tdjuy4` FOREIGN KEY (`coverimage_id`) REFERENCES `asset` (`id`),
  CONSTRAINT `FKqf7bfdqu4otabgae0q90o2map` FOREIGN KEY (`id`) REFERENCES `event_packages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_cover`
--

LOCK TABLES `eventpackages_cover` WRITE;
/*!40000 ALTER TABLE `eventpackages_cover` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_images`
--

DROP TABLE IF EXISTS `eventpackages_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_images` (
  `event_packages_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_packages_id`,`images_id`),
  UNIQUE KEY `UK_j8q50v1v20e3rbsu5wkg5ud92` (`images_id`),
  CONSTRAINT `FKpawl3atjocdykykka5fylient` FOREIGN KEY (`event_packages_id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKshgugqgk8ssarjur5qvq70teh` FOREIGN KEY (`images_id`) REFERENCES `asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_images`
--

LOCK TABLES `eventpackages_images` WRITE;
/*!40000 ALTER TABLE `eventpackages_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_places`
--

DROP TABLE IF EXISTS `eventpackages_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_places` (
  `city_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlaxa8ilf58dxeyel3lyt7s1ug` (`city_id`),
  CONSTRAINT `FKjs7w68lvu4cwm7o4jr6iyr7k9` FOREIGN KEY (`id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKlaxa8ilf58dxeyel3lyt7s1ug` FOREIGN KEY (`city_id`) REFERENCES `event_cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_places`
--

LOCK TABLES `eventpackages_places` WRITE;
/*!40000 ALTER TABLE `eventpackages_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_themes`
--

DROP TABLE IF EXISTS `eventpackages_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_themes` (
  `theme_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKyeb1yrj2thvxne8ene5a1tch` (`theme_id`),
  CONSTRAINT `FKf6uhgoycl4r5a151k4uvl36gt` FOREIGN KEY (`id`) REFERENCES `event_packages` (`id`),
  CONSTRAINT `FKyeb1yrj2thvxne8ene5a1tch` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_themes`
--

LOCK TABLES `eventpackages_themes` WRITE;
/*!40000 ALTER TABLE `eventpackages_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventpackages_ticket`
--

DROP TABLE IF EXISTS `eventpackages_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventpackages_ticket` (
  `ticketimage_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK68xr0h3rjpeg3pixf7y2plee4` (`ticketimage_id`),
  CONSTRAINT `FK68xr0h3rjpeg3pixf7y2plee4` FOREIGN KEY (`ticketimage_id`) REFERENCES `asset` (`id`),
  CONSTRAINT `FKo0k25vu77b9rkgs8oatab6v9s` FOREIGN KEY (`id`) REFERENCES `event_packages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventpackages_ticket`
--

LOCK TABLES `eventpackages_ticket` WRITE;
/*!40000 ALTER TABLE `eventpackages_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventpackages_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities_categories`
--

DROP TABLE IF EXISTS `facilities_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities_categories` (
  `facility_id` bigint(20) NOT NULL,
  `categories_id` bigint(20) NOT NULL,
  PRIMARY KEY (`facility_id`,`categories_id`),
  KEY `FK3b86qkwfe36fwka7xcqvq4lxr` (`categories_id`),
  CONSTRAINT `FK3b86qkwfe36fwka7xcqvq4lxr` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKqeprc8jpwtw5tgdnysasyuub2` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities_categories`
--

LOCK TABLES `facilities_categories` WRITE;
/*!40000 ALTER TABLE `facilities_categories` DISABLE KEYS */;
INSERT INTO `facilities_categories` VALUES (2,1);
/*!40000 ALTER TABLE `facilities_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `detailed_description` longtext,
  `isactivity` bit(1) NOT NULL,
  `iscab` bit(1) NOT NULL,
  `isflight` bit(1) NOT NULL,
  `ishotel` bit(1) NOT NULL,
  `ismeal` bit(1) NOT NULL,
  `issight` bit(1) NOT NULL,
  `small_descripton` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (2,'gfgfgfgfg',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '','gfgfgfg');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `detailed_description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phonenumber` bigint(20) NOT NULL,
  `star` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_assets`
--

DROP TABLE IF EXISTS `hotels_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_assets` (
  `hotel_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  PRIMARY KEY (`hotel_id`,`images_id`),
  KEY `FKqlsy2rv1ndgq709t9vfc3pv1r` (`images_id`),
  CONSTRAINT `FKabvefbl5csyreyfjpsgf0atco` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  CONSTRAINT `FKqlsy2rv1ndgq709t9vfc3pv1r` FOREIGN KEY (`images_id`) REFERENCES `asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_assets`
--

LOCK TABLES `hotels_assets` WRITE;
/*!40000 ALTER TABLE `hotels_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_categories`
--

DROP TABLE IF EXISTS `hotels_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_categories` (
  `hotel_id` bigint(20) NOT NULL,
  `categories_id` bigint(20) NOT NULL,
  PRIMARY KEY (`hotel_id`,`categories_id`),
  KEY `FKs89d10kxq12pogoe1t31m4rup` (`categories_id`),
  CONSTRAINT `FKje27qwi7w34ijvk8xmkd02eo1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  CONSTRAINT `FKs89d10kxq12pogoe1t31m4rup` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_categories`
--

LOCK TABLES `hotels_categories` WRITE;
/*!40000 ALTER TABLE `hotels_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base64` longtext,
  `content` longblob,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_blog`
--

DROP TABLE IF EXISTS `image_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_blog` (
  `image_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  PRIMARY KEY (`image_id`,`blog_id`),
  KEY `FK9rgev4d00g7trs3uvrr9ct1xp` (`blog_id`),
  CONSTRAINT `FK9rgev4d00g7trs3uvrr9ct1xp` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  CONSTRAINT `FKoaratf5mnau1wcey0r0cu8ok7` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_blog`
--

LOCK TABLES `image_blog` WRITE;
/*!40000 ALTER TABLE `image_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indian_package_suggest`
--

DROP TABLE IF EXISTS `indian_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indian_package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL,
  `imgcdn` varchar(255) DEFAULT NULL,
  `maxprice` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indian_package_suggest`
--

LOCK TABLES `indian_package_suggest` WRITE;
/*!40000 ALTER TABLE `indian_package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `indian_package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indian_packagesuggest_place`
--

DROP TABLE IF EXISTS `indian_packagesuggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indian_packagesuggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2p5j9n9j24lol4689fpolkxjo` (`place_id`),
  CONSTRAINT `FK2p5j9n9j24lol4689fpolkxjo` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`),
  CONSTRAINT `FK7njypi5wuiypvxf0g359891yv` FOREIGN KEY (`id`) REFERENCES `indian_package_suggest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indian_packagesuggest_place`
--

LOCK TABLES `indian_packagesuggest_place` WRITE;
/*!40000 ALTER TABLE `indian_packagesuggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `indian_packagesuggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inter_nat_package_suggest`
--

DROP TABLE IF EXISTS `inter_nat_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inter_nat_package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL,
  `imgcdn` varchar(255) DEFAULT NULL,
  `maxprice` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inter_nat_package_suggest`
--

LOCK TABLES `inter_nat_package_suggest` WRITE;
/*!40000 ALTER TABLE `inter_nat_package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `inter_nat_package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inter_nat_packagesuggest_place`
--

DROP TABLE IF EXISTS `inter_nat_packagesuggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inter_nat_packagesuggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhrbm31ngdg97xv5qknjedk7d7` (`place_id`),
  CONSTRAINT `FKhrbm31ngdg97xv5qknjedk7d7` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`),
  CONSTRAINT `FKkywbtbsylukqa6infjb9xlmg4` FOREIGN KEY (`id`) REFERENCES `inter_nat_package_suggest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inter_nat_packagesuggest_place`
--

LOCK TABLES `inter_nat_packagesuggest_place` WRITE;
/*!40000 ALTER TABLE `inter_nat_packagesuggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `inter_nat_packagesuggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iterneries_package`
--

DROP TABLE IF EXISTS `iterneries_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iterneries_package` (
  `tourpackage_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKet5pik1imcrxnv1mli0f9tjec` (`tourpackage_id`),
  CONSTRAINT `FK14da2tpem4kvd0o8sw481smxh` FOREIGN KEY (`id`) REFERENCES `iternery` (`id`),
  CONSTRAINT `FKet5pik1imcrxnv1mli0f9tjec` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iterneries_package`
--

LOCK TABLES `iterneries_package` WRITE;
/*!40000 ALTER TABLE `iterneries_package` DISABLE KEYS */;
INSERT INTO `iterneries_package` VALUES (2,2);
/*!40000 ALTER TABLE `iterneries_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iternery`
--

DROP TABLE IF EXISTS `iternery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iternery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `day` bigint(20) NOT NULL,
  `daydescription` varchar(255) DEFAULT NULL,
  `dayheading` varchar(255) DEFAULT NULL,
  `hot_address` varchar(255) DEFAULT NULL,
  `hot_rating` varchar(255) DEFAULT NULL,
  `hotel_location` varchar(255) DEFAULT NULL,
  `hotelname` varchar(255) DEFAULT NULL,
  `hotelroom` varchar(255) DEFAULT NULL,
  `imgcdn1` varchar(255) DEFAULT NULL,
  `imgcdn2` varchar(255) DEFAULT NULL,
  `imgcdn3` varchar(255) DEFAULT NULL,
  `isactivity` bit(1) NOT NULL,
  `iscab` bit(1) NOT NULL,
  `isflight` bit(1) NOT NULL,
  `ishotel` bit(1) NOT NULL,
  `ismeal` bit(1) NOT NULL,
  `issight` bit(1) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iternery`
--

LOCK TABLES `iternery` WRITE;
/*!40000 ALTER TABLE `iternery` DISABLE KEYS */;
INSERT INTO `iternery` VALUES (2,'gfgfgfgf',1,'fgfgfgfgf','gfgfgfg','hghghghg','1','gfgfg','gfgfgf','fgfgfgf','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI',_binary '\0',_binary '\0',_binary '',_binary '',_binary '',_binary '\0','hghgfGFGGF');
/*!40000 ALTER TABLE `iternery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_blogs`
--

DROP TABLE IF EXISTS `main_event_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event_blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event_blogs`
--

LOCK TABLES `main_event_blogs` WRITE;
/*!40000 ALTER TABLE `main_event_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_event_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_djs`
--

DROP TABLE IF EXISTS `main_event_djs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event_djs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) DEFAULT NULL,
  `djid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event_djs`
--

LOCK TABLES `main_event_djs` WRITE;
/*!40000 ALTER TABLE `main_event_djs` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_event_djs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_pubs`
--

DROP TABLE IF EXISTS `main_event_pubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event_pubs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isdrink` bit(1) NOT NULL,
  `isfood` bit(1) NOT NULL,
  `isgarden` bit(1) NOT NULL,
  `ismusic` bit(1) NOT NULL,
  `isparking` bit(1) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `pub_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event_pubs`
--

LOCK TABLES `main_event_pubs` WRITE;
/*!40000 ALTER TABLE `main_event_pubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_event_pubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_events_nightlife_entity`
--

DROP TABLE IF EXISTS `main_events_nightlife_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_events_nightlife_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `night_life_id` varchar(255) DEFAULT NULL,
  `offer` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_events_nightlife_entity`
--

LOCK TABLES `main_events_nightlife_entity` WRITE;
/*!40000 ALTER TABLE `main_events_nightlife_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_events_nightlife_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_events_parties_entity`
--

DROP TABLE IF EXISTS `main_events_parties_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_events_parties_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `offer` varchar(255) DEFAULT NULL,
  `party_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_events_parties_entity`
--

LOCK TABLES `main_events_parties_entity` WRITE;
/*!40000 ALTER TABLE `main_events_parties_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_events_parties_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_place`
--

DROP TABLE IF EXISTS `main_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `taluk_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4yc6h1u8b7hyagpjbxear3pmy` (`taluk_id`),
  CONSTRAINT `FK4yc6h1u8b7hyagpjbxear3pmy` FOREIGN KEY (`taluk_id`) REFERENCES `taluk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_place`
--

LOCK TABLES `main_place` WRITE;
/*!40000 ALTER TABLE `main_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication` mediumblob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `token_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES (6,_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0browsersr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0browsert\0usernamet\0dileepxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_CLIENTsq\0~\0\rt\0ROLE_TRUSTED_CLIENTxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0q\0~\0xpt\0dileep','0b04815e3685ae204494bc4544648ce9','browser','7161db1599c7736e5bf93c1e40dc3a92',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0}\ÌÇ\“fxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$cdfc696b-6b12-4522-bc4f-a77ab9f0e7dcsq\0~\0	w\0\0~Äâ±ùxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$8d91979f-40df-450c-9184-38e8d9129a33','844a5cd866cd3a7697c2c2193f1ff7fc','dileep');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `autoapprove` tinyint(4) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `refresh_token_validity` int(11) DEFAULT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES (1,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'browser',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(2,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'account-service',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(3,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'tour-auth-service',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(4,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'tour-package',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(5,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'western-events',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication_id` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `token_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication` mediumblob,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication` mediumblob,
  `token` mediumblob,
  `token_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES (2,_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0browsersr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0browsert\0usernamet\0dileepxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_CLIENTsq\0~\0\rt\0ROLE_TRUSTED_CLIENTxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0q\0~\0xpt\0dileep',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$cdfc696b-6b12-4522-bc4f-a77ab9f0e7dcsr\0java.util.DatehjÅKYt\0\0xpw\0\0~Äâ±ùx','7161db1599c7736e5bf93c1e40dc3a92');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_suggest`
--

DROP TABLE IF EXISTS `package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxprice` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_suggest`
--

LOCK TABLES `package_suggest` WRITE;
/*!40000 ALTER TABLE `package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packagesuggest_place`
--

DROP TABLE IF EXISTS `packagesuggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packagesuggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnt2onx0tiui253i0p9gjd35cq` (`place_id`),
  CONSTRAINT `FKmew15a35qky3tiucmfnihmm1m` FOREIGN KEY (`id`) REFERENCES `package_suggest` (`id`),
  CONSTRAINT `FKnt2onx0tiui253i0p9gjd35cq` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packagesuggest_place`
--

LOCK TABLES `packagesuggest_place` WRITE;
/*!40000 ALTER TABLE `packagesuggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `packagesuggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packagesuggest_tourpackages`
--

DROP TABLE IF EXISTS `packagesuggest_tourpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packagesuggest_tourpackages` (
  `package_suggest_id` bigint(20) NOT NULL,
  `tourpackages_id` bigint(20) NOT NULL,
  PRIMARY KEY (`package_suggest_id`,`tourpackages_id`),
  UNIQUE KEY `UK_nr6j6dmet7y2ng0pyy20cedd2` (`tourpackages_id`),
  CONSTRAINT `FKi9fn4m2efeweb5q28232bfolk` FOREIGN KEY (`tourpackages_id`) REFERENCES `tourpackage` (`id`),
  CONSTRAINT `FKicys1mwan35ivoosh16a569eo` FOREIGN KEY (`package_suggest_id`) REFERENCES `package_suggest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packagesuggest_tourpackages`
--

LOCK TABLES `packagesuggest_tourpackages` WRITE;
/*!40000 ALTER TABLE `packagesuggest_tourpackages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packagesuggest_tourpackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b8nbstg9t15unnmk6uod41f47` (`name`),
  KEY `FKqcku7q1jhjovu5lhhe0iqg52f` (`district_id`),
  CONSTRAINT `FKqcku7q1jhjovu5lhhe0iqg52f` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'KRS',NULL,1);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delux_hotelimg1` varchar(255) DEFAULT NULL,
  `delux_hotelimg2` varchar(255) DEFAULT NULL,
  `delux_hotelimg3` varchar(255) DEFAULT NULL,
  `deluxduration` varchar(255) DEFAULT NULL,
  `deluxicludes` longtext,
  `deluxprice` bigint(20) NOT NULL,
  `is_delux` bit(1) NOT NULL,
  `is_premium` bit(1) NOT NULL,
  `is_standard` bit(1) NOT NULL,
  `premium_hotelimg1` varchar(255) DEFAULT NULL,
  `premium_hotelimg2` varchar(255) DEFAULT NULL,
  `premium_hotelimg3` varchar(255) DEFAULT NULL,
  `premiumduration` varchar(255) DEFAULT NULL,
  `premiumicludes` longtext,
  `premiumrprice` bigint(20) NOT NULL,
  `standard_hotelimg1` varchar(255) DEFAULT NULL,
  `standard_hotelimg2` varchar(255) DEFAULT NULL,
  `standard_hotelimg3` varchar(255) DEFAULT NULL,
  `standardduration` varchar(255) DEFAULT NULL,
  `standardicludes` longtext,
  `standardprice` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (2,'https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','4455','<p>dgdhghdg</p>',54545,_binary '\0',_binary '\0',_binary '\0','hhghg','hhghg','hghghgh','hghghg','<p>hghghgh</p>',2345,'https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','gfgfg','<p>gfgfgfgfg</p>',534);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h7iwbdg4ev8mgvmij76881tx8` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (1,'ADMIN'),(2,'Write');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1m9qnhbk56c8iskxvfupln9me` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Asia');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8sewwnpamngi6b1dwaa88askk` (`name`),
  KEY `FK6hsvg1pv1u6yf8bndd6cfrdnv` (`parent_id`),
  CONSTRAINT `FK6hsvg1pv1u6yf8bndd6cfrdnv` FOREIGN KEY (`parent_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','ADMIN',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_priviges`
--

DROP TABLE IF EXISTS `roles_priviges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_priviges` (
  `roles_id` bigint(20) NOT NULL,
  `privileges_id` bigint(20) NOT NULL,
  KEY `FK92g27hfb8kvtnycclolfc3rdn` (`privileges_id`),
  KEY `FK31il7s18ehcdppr02daevol0c` (`roles_id`),
  CONSTRAINT `FK31il7s18ehcdppr02daevol0c` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK92g27hfb8kvtnycclolfc3rdn` FOREIGN KEY (`privileges_id`) REFERENCES `privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_priviges`
--

LOCK TABLES `roles_priviges` WRITE;
/*!40000 ALTER TABLE `roles_priviges` DISABLE KEYS */;
INSERT INTO `roles_priviges` VALUES (1,1);
/*!40000 ALTER TABLE `roles_priviges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season_package_suggest`
--

DROP TABLE IF EXISTS `season_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season_package_suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` bigint(20) NOT NULL,
  `imgcdn` varchar(255) DEFAULT NULL,
  `max_price` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `season` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season_package_suggest`
--

LOCK TABLES `season_package_suggest` WRITE;
/*!40000 ALTER TABLE `season_package_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `season_package_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasonpackage_suggest_place`
--

DROP TABLE IF EXISTS `seasonpackage_suggest_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasonpackage_suggest_place` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7rqk7vg4vn60dijuykxldy5il` (`place_id`),
  CONSTRAINT `FK7rqk7vg4vn60dijuykxldy5il` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`),
  CONSTRAINT `FKc7g862oqm875llsyhn26i3u49` FOREIGN KEY (`id`) REFERENCES `season_package_suggest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasonpackage_suggest_place`
--

LOCK TABLES `seasonpackage_suggest_place` WRITE;
/*!40000 ALTER TABLE `seasonpackage_suggest_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `seasonpackage_suggest_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nau09mwrvhjj0n0a6gfo5xmp3` (`name`),
  KEY `FKafrthlyrmvtpo1gm6b6siec4g` (`country_id`),
  CONSTRAINT `FKafrthlyrmvtpo1gm6b6siec4g` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'karnataka',1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taluk`
--

DROP TABLE IF EXISTS `taluk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taluk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7uubb5fb2e2sr79bdd347smjn` (`name`),
  KEY `FKekb666k5hnqiupkj1ujld6wq1` (`district_id`),
  CONSTRAINT `FKekb666k5hnqiupkj1ujld6wq1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taluk`
--

LOCK TABLES `taluk` WRITE;
/*!40000 ALTER TABLE `taluk` DISABLE KEYS */;
/*!40000 ALTER TABLE `taluk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kos4rdub1av4d5wt6wocsdb7t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'Holi');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_tourpackage`
--

DROP TABLE IF EXISTS `theme_tourpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_tourpackage` (
  `theme_id` bigint(20) NOT NULL,
  `tourpackage_id` bigint(20) NOT NULL,
  PRIMARY KEY (`theme_id`,`tourpackage_id`),
  UNIQUE KEY `UK_3yaaior1gtornfk4wbnwcit5p` (`tourpackage_id`),
  CONSTRAINT `FK4b62woubn01u7qsn1bfyk3dn7` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  CONSTRAINT `FKkaimp25n6jjih244bbwlhlw0n` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_tourpackage`
--

LOCK TABLES `theme_tourpackage` WRITE;
/*!40000 ALTER TABLE `theme_tourpackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme_tourpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackage`
--

DROP TABLE IF EXISTS `tourpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `additionalinfo` longtext,
  `country` varchar(255) DEFAULT NULL,
  `daynight` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `exclusion` longtext,
  `imgcdn` varchar(255) DEFAULT NULL,
  `inclusion` longtext,
  `link` varchar(255) DEFAULT NULL,
  `members` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `offer` int(11) NOT NULL,
  `lastday_discription` longtext,
  `lastdayheading` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackage`
--

LOCK TABLES `tourpackage` WRITE;
/*!40000 ALTER TABLE `tourpackage` DISABLE KEYS */;
INSERT INTO `tourpackage` VALUES (2,'','Indian',NULL,'2','<p>hghghgh</p>','https://olympus.mygreatlearning.com/courses/65624/files/4280867/preview?verifier=vX7u1p2SoW8fLFwTcPR4ilumLwrdqLfYp9QlpQmI','<p>gffgfgf</p>',NULL,1,'dhgdh',0,'fgfg','dgfdgf');
/*!40000 ALTER TABLE `tourpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackage_iterneries`
--

DROP TABLE IF EXISTS `tourpackage_iterneries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackage_iterneries` (
  `tourpackage_id` bigint(20) NOT NULL,
  `iterneries_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_dutuu8m8ubhvd503ukik2bols` (`iterneries_id`),
  KEY `FK4ytah6grcyyw1gi6bg8hmv8ls` (`tourpackage_id`),
  CONSTRAINT `FK4ytah6grcyyw1gi6bg8hmv8ls` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`),
  CONSTRAINT `FKc5ah6gw8dkr5epnno3fb1ulti` FOREIGN KEY (`iterneries_id`) REFERENCES `iternery` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackage_iterneries`
--

LOCK TABLES `tourpackage_iterneries` WRITE;
/*!40000 ALTER TABLE `tourpackage_iterneries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourpackage_iterneries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_assets`
--

DROP TABLE IF EXISTS `tourpackages_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackages_assets` (
  `tourpackage_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  PRIMARY KEY (`tourpackage_id`,`images_id`),
  KEY `FKa39rlj3mu4hlf2um66w6rdwhi` (`images_id`),
  CONSTRAINT `FKa39rlj3mu4hlf2um66w6rdwhi` FOREIGN KEY (`images_id`) REFERENCES `asset` (`id`),
  CONSTRAINT `FKcdcofy72l8alxh0xpifkw0w9b` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackages_assets`
--

LOCK TABLES `tourpackages_assets` WRITE;
/*!40000 ALTER TABLE `tourpackages_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourpackages_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_facilities`
--

DROP TABLE IF EXISTS `tourpackages_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackages_facilities` (
  `facility_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKla0soy9kbbepdqagwil806fam` (`facility_id`),
  CONSTRAINT `FKla0soy9kbbepdqagwil806fam` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `FKoo0bpd6uhoh9ri79bqtlkbjh0` FOREIGN KEY (`id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackages_facilities`
--

LOCK TABLES `tourpackages_facilities` WRITE;
/*!40000 ALTER TABLE `tourpackages_facilities` DISABLE KEYS */;
INSERT INTO `tourpackages_facilities` VALUES (2,2);
/*!40000 ALTER TABLE `tourpackages_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_places`
--

DROP TABLE IF EXISTS `tourpackages_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackages_places` (
  `place_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqt9b2o63ej552e4bci6im20bj` (`place_id`),
  CONSTRAINT `FKbq7lqhnhpnl6es58ck444d0jd` FOREIGN KEY (`id`) REFERENCES `tourpackage` (`id`),
  CONSTRAINT `FKqt9b2o63ej552e4bci6im20bj` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackages_places`
--

LOCK TABLES `tourpackages_places` WRITE;
/*!40000 ALTER TABLE `tourpackages_places` DISABLE KEYS */;
INSERT INTO `tourpackages_places` VALUES (1,2);
/*!40000 ALTER TABLE `tourpackages_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_prices`
--

DROP TABLE IF EXISTS `tourpackages_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackages_prices` (
  `price_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfve6s4eycucrcwhu7uuxtwh7g` (`price_id`),
  CONSTRAINT `FKfve6s4eycucrcwhu7uuxtwh7g` FOREIGN KEY (`price_id`) REFERENCES `price` (`id`),
  CONSTRAINT `FKtjofp0wrpfs4ni0l4fpgrqnpe` FOREIGN KEY (`id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackages_prices`
--

LOCK TABLES `tourpackages_prices` WRITE;
/*!40000 ALTER TABLE `tourpackages_prices` DISABLE KEYS */;
INSERT INTO `tourpackages_prices` VALUES (2,2);
/*!40000 ALTER TABLE `tourpackages_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_themes`
--

DROP TABLE IF EXISTS `tourpackages_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourpackages_themes` (
  `theme_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi8kuw0neixmo1e9n1k0m15bqc` (`theme_id`),
  CONSTRAINT `FKi8kuw0neixmo1e9n1k0m15bqc` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  CONSTRAINT `FKmbukxcd8biwc12ixqtujde4u5` FOREIGN KEY (`id`) REFERENCES `tourpackage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackages_themes`
--

LOCK TABLES `tourpackages_themes` WRITE;
/*!40000 ALTER TABLE `tourpackages_themes` DISABLE KEYS */;
INSERT INTO `tourpackages_themes` VALUES (1,2);
/*!40000 ALTER TABLE `tourpackages_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `type` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('EMPLOYEE',1,25,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',20000,'dileep',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_addresses` (
  `user_id` bigint(20) NOT NULL,
  `addresses_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`addresses_id`),
  UNIQUE KEY `UK_i5lp1fvgfvsplfqwu4ovwpnxs` (`addresses_id`),
  CONSTRAINT `FKfm6x520mag23hvgr1oshaut8b` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKth1icmttmhhorb9wiarm73i06` FOREIGN KEY (`addresses_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `users_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK15d410tj6juko0sq9k4km60xq` (`roles_id`),
  KEY `FK47218p7gder85d13vwkmxcp9e` (`users_id`),
  CONSTRAINT `FK15d410tj6juko0sq9k4km60xq` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK47218p7gder85d13vwkmxcp9e` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 18:23:54
