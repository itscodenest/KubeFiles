-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: western
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_46ccwnsi9409t36lurvtyljak` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (10,'Activities '),(2,'Camping'),(5,'Hiking'),(13,'Houseboat stay'),(4,'Kayaking'),(7,'Off-beat camping'),(12,'Sight seeing'),(6,'Skiing'),(9,'Tent stays '),(11,'Trekking'),(1,'Water Activity'),(3,'Water sports'),(8,'Wildlife Safari');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_llidyp77h6xkeokpbmoy710d4` (`name`),
  KEY `FKrtuw63fx1eq6jxpqyjkox4jgt` (`region_id`),
  CONSTRAINT `FKrtuw63fx1eq6jxpqyjkox4jgt` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India',1),(2,'Buthan',10);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customise_package`
--

DROP TABLE IF EXISTS `customise_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kvkg405mr04cjytv1tuyh7ryr` (`name`),
  KEY `FKmcmomfl21wkjcemlw83sxlmwy` (`state_id`),
  CONSTRAINT `FKmcmomfl21wkjcemlw83sxlmwy` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Mysur',1),(2,'Anantnag',1),(3,'Srinagar',1),(4,'Braramulla',1),(5,'Jammu',1),(6,'Udhampur',1),(7,'Leh',1),(8,'Ladakh',1),(9,'Kargil',1),(11,' Ganderbal',1),(12,'Pulwama',1);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration_package_suggest`
--

DROP TABLE IF EXISTS `duration_package_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `facilities_categories` VALUES (5,1),(8,1),(10,1),(11,1),(12,1),(13,1),(16,1),(7,2),(8,2),(12,2),(13,2),(16,2),(5,3),(15,3),(3,4),(5,4),(6,5),(7,5),(8,5),(12,5),(11,6),(12,6),(6,7),(7,7),(8,7),(10,8),(5,9),(12,9),(14,9),(15,9),(16,9),(4,10),(5,10),(7,10),(8,10),(13,10),(14,10),(3,11),(5,11),(6,11),(7,11),(8,11),(12,11),(13,11),(15,11),(16,11),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),(12,12),(13,12),(14,12),(15,12),(16,12),(5,13),(10,13),(11,13);
/*!40000 ALTER TABLE `facilities_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (3,'The crown state of India is located in the western foothills of the mighty Himalayan range, the place is heaven for nature lovers, adventure junkies and wildlife lovers. If you visit in winter, you can enjoy the snowfall and snow activities such as skiing, ropeway, mountain biking, hiking. If you are looking for some time to relax, you can go for houseboats, and the blissful nature itself makes you feel like you are in a wonderland. Adventure junkies can go mountaineering, hiking, trekking, and snow activities. The place is a rejuvenation to your mind and soul. ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',' 2N Srinagar - 1N Pahalgam - 1N Gulmarg - Srinagar'),(4,'A land of untouched beauty, an epitome paradise on Earth Kashmir is heaven on Earth. An inspiration for every artist, writer and poet, indeed Kashmir is a life-changing place. \nYou will never see such a breathtakingly pure and epitome beauty like Jammu and Kashmir. The state has always maintained its aura and charm with lush green views, lakes, holy shrines, beautiful gardens and snow-capped mountains. ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Srinagar - Pahalgam - Gulmarg - Sonmarg - Srinagar'),(5,'A land of untouched beauty, an epitome paradise on Earth Kashmir is heaven on Earth. An inspiration for every artist, writer and poet, indeed Kashmir is a life-changing place. \nYou will never see such a breathtakingly pure and epitome beauty like Jammu and Kashmir. The state has always maintained its aura and charm with lush green views, lakes, holy shrines, beautiful gardens and snow-capped mountains. This holiday destination welcomes every tourist throughout the year. Beautiful apple orchards, stunning saffron fields, majestic snow-clad mountains and valleys, colourful Tulips in spring, heavenly Gulmarg, stunning Solang, elegant Srinagar, the tourist spots are never ending here. Every step in Jammu and Kashmir has beautiful, elegant and mesmerising views. ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','A land of untouched beauty, an epitome paradise on Earth Kashmir is heaven on Earth. '),(6,'The deserted motorable road of Leh, the tranquil ambience of Buddhist monasteries on one side, the holy shrines of Jammu, casts a spell on every tourist here. It is a dream for every Indian to visit Jammu and Kashmir once in their lifetime. This holiday destination welcomes every tourist throughout the year. The place is known for its scenic desert land, this is a heaven for nature lovers, adventure junkies and road trips.  Adventure junkies can go mountaineering, hiking, trekking, and snow activities. The place is a rejuvenation to your mind and soul. ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh - Sham Valley - Magnetic Hills - Khardung La - Indo-China border'),(7,'A land of untouched beauty, an epitome paradise on Earth Kashmir is heaven on Earth. An inspiration for every artist, writer and poet, indeed Kashmir is a life-changing place. \nYou will never see such a breathtakingly pure and epitome beauty like Jammu and Kashmir. The state has always maintained its aura and charm with lush green views, lakes, holy shrines, beautiful gardens and snow-capped mountains. The deserted motorable road of Leh, tranquil ambience of Buddhist monasteries on one side, the holy shrines of Jammu, colourful series of houseboats and shikaras casts a spell on every tourist here. It is a dream for every Indian to visit Jammu and Kashmir once in their lifetime. This holiday destination welcomes every tourist throughout the year.',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh -ladakh - Kargil - Jammu - Kashmir. '),(8,'The deserted motorable road of Leh, the tranquil ambience of Buddhist monasteries on one side, the holy shrines of Jammu, casts a spell on every tourist here. It is a dream for every Indian to visit Jammu and Kashmir once in their lifetime. This holiday destination welcomes every tourist throughout the year.  Various motorbikers go for adventure activities from Delhi, Kashmir, Manali. Every year more than thousands of tourists visit Leh Ladakh just to see the majestic snow-clad mountains and valleys.',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh - Sham Valley - Ulley - Kargil - Khardungla- Nubra Valley - Pangong - Chang-la - Stok Village - Leh'),(9,'Known as The Paradise of Earth, Kashmir is one heavenly place in India. Staying in the boathouse, surrounded by colourful houseboats and Shikaras afloat at the beautiful Dal lake. Visit beautiful Mughal gardens, Orchards, Jamia Masjid, Shankaracharya Temple, Floating Vegetable Market, Manasabal Lake and many more. Breathtaking snowy peaks, cool weather, soft grass, beautiful meadows, unmatchable nature beauty, fulfil your dream of living in paradise. Don\'t miss to taste the lip-smacking local cuisine Rogan Josh, Matschgand, Yakhni Pulav, Kashmiri Muji Gaad and many more. \n\nThings to do: \nShop at Kashmiri Handicraft floating markets in Dal lake. \nExperience the Shikara ride with your loved one.\nTaste the local dishes and the famous Kashmiri Kava. \nVisit the famous Tulip garden - Asia\'s largest Tulip Garden. ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Srinagar - boathouse stay - sight seeing '),(10,'Known as The Paradise of Earth, Kashmir is one heavenly place in India. Staying in the boathouse, surrounded by colourful houseboats and Shikaras afloat at the beautiful Dal lake. Visit beautiful Mughal gardens, Orchards, Jamia Masjid, Shankaracharya Temple, Floating Vegetable Market, Manasabal Lake and many more. \nBreathtaking snowy peaks, cool weather, soft grass, beautiful meadows, unmatchable nature beauty, fulfil your dream of living in paradise. Don\'t miss to taste the lip-smacking local cuisine Rogan Josh, Matschgand, Yakhni Pulav, Kashmiri Muji Gaad and many more. ',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar - Phalagam - Gulmarg'),(11,'Breathtaking snowy peaks, cool weather, soft grass, beautiful meadows, unmatchable nature beauty, fulfil your dream of living in paradise. Don\'t miss to taste the lip-smacking local cuisine Rogan Josh, Matschgand, Yakhni Pulav, Kashmiri Muji Gaad and many more. \n\nThings to do: \nShop at Kashmiri Handicraft floating markets in Dal lake. \nExperience the Shikara ride with your loved one.\nTaste the local dishes and the famous Kashmiri Kava. \nEnjoy the Snow activities at Gulmarg ',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Srinagar - Phalagam - Gulmarg - Sonmarg'),(12,'Thrilling activities with a perfect blend of nature and adventure, Western Travellers brings you a handpicked Ladakh and Kashmir trip package. Visit the world‚Äôs highest motorable passes, Cold-dessert at Ladakh, unmatchable scenic view at Kargil, pristine snow-capped mountains at Gulmarg Kashmir and Ladakh is one of the picturesque destinations for every tourist destination. Ladakh and Kashmir are bucket lists for every traveller. You can witness the beauty of mountains, ancient Buddhist monasteries, beautiful icy lakes and swirling roads makes your trip beautiful and exciting. ',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh - Ladakh - Kargil - Sonmarg - Gulmarg'),(13,'Thrilling activities with a perfect blend of nature and adventure, Western Travellers brings you a handpicked Ladakh trip package. Visit the world‚Äôs highest motorable passes, Cold-dessert at Ladakh, unmatchable scenic view at Kargil, and Ladakh is one of the picturesque destinations for every tourist. Ladakh is the bucket list for every traveller. You can witness the beauty of mountains, ancient Buddhist monasteries, beautiful icy lakes and swirling roads makes your trip beautiful and exciting. ',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh - Ladakh - Nubra Valley - Stok Village'),(14,'Thrilling activities with a perfect blend of nature and adventure, Western Travellers brings you a handpicked Ladakh trip package. Visit the world‚Äôs highest motorable passes, Cold-dessert at Ladakh, unmatchable scenic view at Kargil, and Ladakh is one of the picturesque destinations for every tourist. Ladakh is the bucket list for every traveller. You can witness the beauty of mountains, ancient Buddhist monasteries, beautiful icy lakes and swirling roads makes your trip beautiful and exciting.',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh - Sham Valley - Khardungla - Nubra Valley - Siachen -Pangong - Chang-la - Leh.'),(15,'The deserted motorable road of Leh, the tranquil ambience of Buddhist monasteries on one side, the holy shrines of Jammu, casts a spell on every tourist here. It is a dream for every Indian to visit Jammu and Kashmir once in their lifetime. This holiday destination welcomes every tourist throughout the year. The place is known for its scenic desert land, this is a heaven for nature lovers, adventure junkies and road trips. Adventure junkies can go mountaineering, hiking, trekking, and snow activities. The place is a rejuvenation to your mind and soul.',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh - Ladakh - Nubra Valley - Kargil '),(16,'The deserted motorable road of Leh, the tranquil ambience of Buddhist monasteries on one side, casts a spell on every tourist here. It is a dream for every Indian to visit the Himalayan range once in their lifetime. This holiday destination welcomes every tourist throughout the year. Ladakh is known for its scenic desert land, this is a heaven for nature lovers, adventure junkies and road trips. We at Western Travellers bring you a customized road trip package from Leh to Manali, adventure junkies can go mountaineering, hiking, trekking, and snow activities. The trip makes sure to rejuvenation to your mind and soul. ',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh - Nubra Valley - Pangong Lake- Tso Kar Lake - Jispa - Manali');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `iterneries_package` VALUES (3,3),(3,4),(3,5),(3,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(6,20),(6,21),(6,22),(6,23),(7,24),(7,25),(7,26),(7,27),(7,28),(7,29),(7,30),(7,31),(7,32),(8,33),(8,34),(8,35),(8,36),(8,37),(8,38),(8,39),(9,40),(9,41),(9,42),(10,43),(10,44),(10,45),(10,46),(10,47),(11,48),(11,49),(11,50),(11,51),(12,52),(12,53),(12,54),(12,55),(12,56),(13,57),(13,58),(13,59),(13,60),(14,61),(14,62),(14,63),(14,64),(14,65),(14,66),(15,67),(15,68),(15,69),(15,70),(15,71),(16,72),(16,73),(16,74);
/*!40000 ALTER TABLE `iterneries_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iternery`
--

DROP TABLE IF EXISTS `iternery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iternery`
--

LOCK TABLES `iternery` WRITE;
/*!40000 ALTER TABLE `iternery` DISABLE KEYS */;
INSERT INTO `iternery` VALUES (3,'srinagar ',1,'On the arrival to Srinagar, meet our executive and check in to the pre-booked houseboat on a beautiful Dal lake. The crystal clear water and blissful surroundings.','Arrival to Srinagar','Dal Lake, Srinagar','3','Srinagar','ABCD','1 living, 2 People','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','https://drive.google.com/uc?export=download&id=1PY2KDy61teHP0p-GTE_0fW2c6Dn0ajMS',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(4,'Pahlagam',2,'Start your journey towards Pahalgam, a beautiful valley of Shepherds. On the arrival to Pahalgam, check-in at the hotel. Visit Aru Valley,  Betaab valley and Chandanwari - a starting point of Amarnath Yatra. ','Journey towards Phalagam','Phalagama','3','Phalagam','ABCD','1 bedrrom, 2 living ','https://drive.google.com/uc?export=download&id=19pTNFnPcpQK0JMc5MGGw49aaHNxgHwml','https://drive.google.com/uc?export=download&id=1dTewCeK84nVdd_S2Yo0zf-yZcOjH9DY0','https://drive.google.com/uc?export=download&id=10guK4QJUQG4IvSPnNsNQMKZYcIejdBcZ',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Phalagam'),(5,'Gulmarg ',3,'Head start your journey to one of the beautiful places on the earth Gulmarg. Check in to the hotel and visit the famous Gondola ride, Snow activities like skiing, paragliding, snow biking etc. ','Gulmarg Sightseeing ','Gulmarg','3','Gulmarg','Hotel Gulmarg','1 living 2 beds ','https://drive.google.com/uc?export=download&id=1MIfDnxQyTq4g8Ri3aj2i-rBDF1mX1Zc0','https://drive.google.com/uc?export=download&id=1cFnucMP-2TRwcVWDvaK4vmUApRyAEgET','https://drive.google.com/file/d/1coB18Uyf7kp2ysxkarHsNTT2B42WEHr1/view?usp=sharing',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg'),(6,'Srinagar',4,'Check out from Gulmarg and leave for Srinagar. On the arrival to Srinagar, check-in at the hotel. Step out the sightseeing with Chashmi-e Shahi, Mughal creations, Takht-e-Suleiman hill, local markets.','Gulmarg to Srinagar','Srinagar main road','3','Srinagar main road','ABCD','1 living ,2 beds ','https://drive.google.com/uc?export=download&id=187S4mgDRI7y4AmWaLcPjNEajC-UYG2gL','https://drive.google.com/uc?export=download&id=1bmX_nV51ri6W2UCav8tmEOeS2Nyv9_0l','https://drive.google.com/uc?export=download&id=1bSz_j9WxI89TmUmPxO2s-Iz9eg_Mmfy9',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(7,'Srinagar',1,'On the arrival to Srinagar, meet our executive and check-in at the hotel. After some time, step out of the hotel and head out to sightsee.\n','Arriving to Srinagar','main road','3','srinagar bus stand','Hotel Srinagar','1 living, 2 bed','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','https://drive.google.com/uc?export=download&id=1a8gQiLMc72jU1JCXeiQDu6vFEbg1VzST','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(8,'Pahalgam bus stand',2,'Start your journey towards Pahalgam. On the way, you can stop at saffron fields at Pampore. You will also visit Apple valley and walnut plantations.\nOn the arrival to  Pahalgam, check-in at the pre-booked hotel and relax. ','Pahalgam sight seeing','phalagam main road','3','phalagam main road','Hotel Phalagam duke','1 living 2 Bedroom','https://drive.google.com/uc?export=download&id=1R63mAgcXxr5ebaIgP07ommGBq3zK2ewK','https://drive.google.com/uc?export=download&id=1rr_CGS0mddjW7JLLMshfIeL06Nt3D0bD','https://drive.google.com/uc?export=download&id=1wwWtgqBrux4hQ2nFuKKWZEGOkO9RQQZ0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Pahalgam'),(9,'Pahalgam ',3,'Start your day with breakfast and head towards Aru Valley, a small village known for its scenic beauty and adventure activities. \nYou will be visiting Betaab valley and Chandanwari - a starting point of Amaranth Yatra.','Aru Valley, Betaab Valley, Chandanwari ','phalagam main road','3','phalagam main road','Hotel Phalagam duke','1 living 2 Bedroom','https://drive.google.com/uc?export=download&id=19pTNFnPcpQK0JMc5MGGw49aaHNxgHwml','https://drive.google.com/file/d/1dTewCeK84nVdd_S2Yo0zf-yZcOjH9DY0/view?usp=sharing','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Pahalgam'),(10,'Gulmarg - Avantipur ruins - Kashmiri Cricket Bat Factory.',4,'On the arrival to Gulmarg, check into the hotel and relax. By evening you can head out to the local market and buy local handicrafts, clothes and accessories.\nOvernight stay at Gulmarg. ','Kick start your day with breakfast and check out from the hotel and head towards the beautiful Gulmarg. On the way, you will be visiting Avantipur ruins and Kashmiri Cricket Bat Factory.','gulmarg main road ','3','gulmarg main road ','Hotel Gulmarg','1 living 2 beds','https://drive.google.com/uc?export=download&id=1swQ5FI1FFiRYSV-x-dYOSlqvoQCzUc8A','https://drive.google.com/uc?export=download&id=1Jgq3lodEx1IXmqMXnzDkBQRJmk6hlFpb','https://drive.google.com/uc?export=download&id=1bejzKHVbzVELhkITKE6neR5kvzvuZtbV',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg'),(11,'Gulmarg sight seeing, Gondola ride, snow activities, ',5,'Today you will be visiting Gulmarg sightseeing. Start your fun activities through the famous Gondola ride, a prime attraction in Gulmarg. You can witness the panoramic views of snow-capped mountains. ','Gulamarg sightseeing and Sonmarg check in ','gulmarg main road ','3','gulmarg main road ','Hotel Gulmarg','1 living 2 beds','https://drive.google.com/uc?export=download&id=1Jgq3lodEx1IXmqMXnzDkBQRJmk6hlFpb','https://drive.google.com/uc?export=download&id=1MIfDnxQyTq4g8Ri3aj2i-rBDF1mX1Zc0','https://drive.google.com/uc?export=download&id=1coB18Uyf7kp2ysxkarHsNTT2B42WEHr1',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg sight seeing'),(12,'Sonmarg',6,'Start your day by visiting the mesmerising natural beauty of Sonmarg. Enjoy the beauty of nature, you can also go for pony rides, fishing and skiing (additional cost).','Sonmarg sight seeing, return to Srinagar ','srinagar main road','3','srinagar main road','Hotel Srinagar','1 living 2 bedrooms','https://drive.google.com/uc?export=download&id=1xMEG12l9NJ_AR88sRUXKejCCr0B8M_En','https://drive.google.com/uc?export=download&id=1uQ2JCYNPKu3pT_PWpHU9gAWRV-_BcLc8','https://drive.google.com/uc?export=download&id=1T6DGp6QZtqmH5dir9ETuhWkF16RszP-L',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(13,'Arrival to Srinagar',1,'On the arrival to Srinagar, meet our executive and proceed with your travel to Pahalgam - a picturesque hill station. On the way, visit Awantipur ruins and apple orchards. ','Srinagar - Awantipur ruins - Pahalgam','Phalagam main road ','3','Phalagam main road ','Hotel Phalagam duke','1 bedroom 2 beds, 1 living ','https://drive.google.com/uc?export=download&id=1swQ5FI1FFiRYSV-x-dYOSlqvoQCzUc8A','https://drive.google.com/uc?export=download&id=1wwWtgqBrux4hQ2nFuKKWZEGOkO9RQQZ0','https://drive.google.com/uc?export=download&id=1R63mAgcXxr5ebaIgP07ommGBq3zK2ewK',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(14,'Trekking to  Lidder river',2,'Trek to Lidder river - ice-cold streams on the frozen glaciers, you can witness the retro-styled Kashmiri houses and panoramic vistas of Phelagam. \nLater, Betab valley -  surrounded by deodar mountains and pine forests. ','Trek to  Lidder river and Betab valley','Phalagam main road ','3','Phalagam main road ','Hotel Phalagam duke','1 bedroom 2 beds, 1 living ','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq','https://drive.google.com/uc?export=download&id=10Z-eNQV1TuHT8HvHL9GBzIkSdtiZub5a',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Pahalgam'),(15,'Trek to Aru Valley',3,'Post early morning breakfast, head towards Aru valley. Driving to Aru valley is one of the most enthralling experiences. Trek to the valley, surrounded by the beautiful snow-capped mountains. Stay at the campsite.','Trekking and camping at Aru Valley','Aru valley','3','Aru Valley','Aru valley tent stay ','1 living 2 beds','https://drive.google.com/uc?export=download&id=1xVCd71FVhnQCsyUWn-_7RPX0bkrBd-ox','https://drive.google.com/uc?export=download&id=117-sMcZ81UkjJrj-xN_u-AEJJSp25vyu','https://drive.google.com/uc?export=download&id=1ZzYWLtSBm-sTbt1wDZSgRACfuzgsvTHx',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Aru Valley'),(16,'Liddar river, Aharbal',4,'Start your adventure day with river rafting at the Lidder river, witness the incredible Himalayan panoramas, an unforgettable experience. Later visit Aishmuqam Dargah and Aharbal. Overnight stay at Aharbal. ','Adventure sports at Liddar river, sightseeing','Aharbal Aharbal main road ','3','Aharbal main road ','Aharbal hotel','2 living, 2 bed room','https://drive.google.com/uc?export=download&id=1DKGTd3WhumhtemvnKcLZ3TXJZggtPmaH','https://drive.google.com/file/d/1dC7Al05hLZCr6M7uGouDMoHGIvlWCBoV/view?usp=sharing','https://drive.google.com/file/d/1GoQ7Pgo9coefMfr5zE1w1g4FZbKo9WVS/view?usp=sharing',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Aharbal'),(17,'Srinagar - Sonmarg',6,'Drive from Srinagar to Sonmarg, On arrival to Sonmarg, check-in the hotel and head towards trekking spot Thajiwas Glacier. The trekking trail, passing through the dense pine forest and meadows. Overnight stay at Sonmarg. ','Trekking at Thajiwas Glacier','Sonmarg main road','3','Sonmarg main road','Hotel Sonmarg','2 living, 1 bedroom','https://drive.google.com/file/d/1TDxJxqOoF9x_8tm7Pr7rV84npOBCxfKQ/view?usp=sharing','https://drive.google.com/uc?export=download&id=1xMEG12l9NJ_AR88sRUXKejCCr0B8M_En','',_binary '',_binary '',_binary '\0',_binary '',_binary '\0',_binary '','Srinagar'),(18,'Gulmarg sightseeing',7,'Check out from the hotel and head towards Gulmarg. On the arrival at Gulmarg, check-in hotel and proceed for sightseeing. Visit the Gondola ride, you can witness the panoramic views of snow-capped mountains. ','Gulmarg sightseeing and snow activities ','Gulmarg main road','3','Gulmarg main road','Hotel Gulmarg','2 living, 1 bedroom','https://drive.google.com/uc?export=download&id=1MIfDnxQyTq4g8Ri3aj2i-rBDF1mX1Zc0','https://drive.google.com/file/d/1Jgq3lodEx1IXmqMXnzDkBQRJmk6hlFpb/view?usp=sharing','https://drive.google.com/file/d/1cFnucMP-2TRwcVWDvaK4vmUApRyAEgET/view?usp=sharing',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg'),(19,'Srinagar sightseeing',8,'Post breakfast, head towards Srinagar. On the arrival to Srinagar, check-in the hotel and head towards the sightseeing. By evening you can hit the local market, buy things like saffron, ornaments, carpet and paintings.','Chashmi-e Shahi - Takht-e-Suleiman hill - Char Chinar Island - Kashmiri gardens - Shalimar & Nishat Bagh .','srinagar main road','3','srinagar main road','Hotel Srinagar','2 living, 1 bedroom','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','https://drive.google.com/uc?export=download&id=187S4mgDRI7y4AmWaLcPjNEajC-UYG2gL','https://drive.google.com/uc?export=download&id=1ozikHi3eyMj3B336Nj1z7BI8OwpaRlHc',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(20,'Leh ',1,'On the arrival to Leh, meet our executive, check-in the hotel and relax. You need some time to get acclimated to the climate. \nIn the evening, you can hit the local market and Leh Palace and Shanti Stupa. ','Arriving on Leh','Leh main road, Leh town','3','Leh main road, Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1iBx8S5KbTlIih_xSgM74JkwyGUDIU6XC','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(21,' Leh - Sham Valley - Magnetic Hills',2,'Head towards Sham Valley, the confluence of the Zanskar-Indus rivers. This is the world\'s highest river rafting point. \nLater visit magnetic hills and visit Gurudwara Pathar Sahib while returning to your hotel. ','A roadtrip to Sham Valley, magnetic hills and Gurudwara Pathar Sahib','Leh main road, Leh town','3','Leh main road, Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1_cMnUPCvCl8J3SJtmCTL5esg3HMlESr_','https://drive.google.com/file/d/1UJHW8VQ0Hj_b9e-HII_X97hdaRwWuguf/view?usp=sharing','https://drive.google.com/uc?export=download&id=18I1Ec65nbjQYxI1UpB1K_1doJdiIy_0b',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '',' Leh '),(22,'Leh',3,'After breakfast, gear up for an ultimate adventure and head towards Khardung La falls. Situated at an altitude of 18,380ft, the journey will be a memorable one. \nBy evening, return to Leh, to your room and relax.','adventure day at Khardung La falls','Leh main road,  Leh town','3','Leh main road,  Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(23,'Visit Indo-Chian border, Changala Pass',4,'Kick start your day with a delicious breakfast and head towards Pangong Lake situated on the Indo-China border. The lake is considered one of the most beautiful lakes in India. ',' Pangong Lake - Changla pass','Leh main road,  Leh town','3','Leh main road,  Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1GTHvXwcLJQa3G3_6W6cQs6WGKvxqbI_J','https://drive.google.com/file/d/1lxk0y1JXU3tWP6WvwCcjnwN2NnkMdDYM/view?usp=sharing','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(24,'Leh',1,'On the arrival at Leh airport, meet our representative, check-in at the hotel and relax for some time. You need some time to get acclimated to the climate. \nLater in the evening, you can hit the local market and Leh palace.','Arrivial to Leh','Leh main road, Leh town','3','Leh main road, Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(25,'Leh and Ladakh ',2,'Kick start your day with breakfast and head towards visit Shey Palace - a summer retreat for the royal family of Ladakh.\nLater you will be visiting Sindhu darshan, Hall of Fame war Museum and Shanti Stupa. ','Shey Palace - Sindhu Darshan - Hall of Fame war Museum - Shanti Stupa','Leh main road, Leh town','3','Leh main road, Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1iBx8S5KbTlIih_xSgM74JkwyGUDIU6XC','https://drive.google.com/uc?export=download&id=1XUfnD7aFSOt6m-MbXktgI89xstk70C2D','https://drive.google.com/uc?export=download&id=1c_uKwyRng09ZDOIzo4zT5xSLNg-zbHCy',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(26,'Leh to Nubra Valley',3,'Post breakfast, check out from the hotel and head towards Nubra Valley via Khardung La. On arrival, you will be visiting the Diskit monastery and Hunder village and the cold desert.','Kharduna La Pass - Nubra Valley - Diskit Monastery - Cold desert','Nubra Valley main road','3','Nubra Valley main road','Hotel Nubra Valley','1 bedroom','https://drive.google.com/file/d/1Hc6dRCLjxoRSf4U4pgc2XuY6NzHBX0FB/view?usp=sharing','https://drive.google.com/file/d/1gJKiTuqAj9R4FmAV6QyT1aK8y76lgoBA/view?usp=sharing','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Nubra Valley'),(27,' Nubra Valley to Leh',4,'Post the breakfast, check out from the hotel and head towards the famous Pangong Lake. Later head towards Leh to Changla pass, this is the third highest motorable pass in the world. Overnight stay at Leh.','Pangong Lake - Changala pass - Leh','Leh main road, Leh town ','3','Leh main road, Leh town','HotelLeh','1 bedroom','https://drive.google.com/uc?export=download&id=13mXu1C5DcYgiUjkntaUXYxmU8RfnMuMY','https://drive.google.com/uc?export=download&id=1lxk0y1JXU3tWP6WvwCcjnwN2NnkMdDYM','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(28,'Leh sightseeing',5,'Start your day by visiting Patthar Sahib Gurudwara. Later visit the famous magnetic hills. By noon, visit Sangam of the rivers Indus & Zanskar. By evening return to Leh, you can enjoy the folk dance show. ','Magnetic Hills - Sangam - Leh town - Leh folk dance show','Leh main road, Leh town','3','Leh main road, Leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1UJHW8VQ0Hj_b9e-HII_X97hdaRwWuguf','https://drive.google.com/uc?export=download&id=1_cMnUPCvCl8J3SJtmCTL5esg3HMlESr_','https://drive.google.com/uc?export=download&id=1OJtDf-u9Dqxd2dHZFGP0fOJxMbyiNVgj',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(29,'Leh to Kargil ',6,'Post breakfast, check out from the hotel and head towards beautiful Kargil via Fotu La Pass and Namki La pass. On the way, you will be visiting Alchi Gompa. Later you will be visiting Moon land - similar to the moon surface. ','Fotu La Pass - Namki La pass - Alchi Gompa - Moon land - Kargil','kargil main road','3','Kargil main road','Hotel Kargil','1 bedroom','https://drive.google.com/uc?export=download&id=19sSj77_TwOUUI6kR7V4hL5aT9k-rOr9W','https://drive.google.com/uc?export=download&id=1cKwXxRCnbJDLRuJGDYKlOvZaibV5DdNG','https://drive.google.com/uc?export=download&id=1y_Wn0gqWxbJWUjBN4bsd7uPmwa1ESpGN',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Kargil'),(30,'Kargil sight seeing, travel to Sonmarg',7,'Visit the Drass war memorial (Vijay Memorial), Later visit Mulbekh Monastery, photo stop of Tiger Hill and Tololing Peak. Later travel to Sonmarg to Zoji la pass. Witness the mesmerising views of the Drass valley. ',' Kargil - Mulbekh Monastery - Tiger hill - Tololing peak - Drass Valley - Sonmarg','sonmarg main road','3','sonmarg main road','Hotel Sonmarg','1 bedroom','https://drive.google.com/uc?export=download&id=1MPi7_6BdKEKUCn2HU83e7XsZ52HANJPp','https://drive.google.com/uc?export=download&id=1EAfoSMoWIWhS6bnPGt5AIDTFnqwKc27s','https://drive.google.com/uc?export=download&id=1pd-NdolvhBiUmuwu53Aqqc8EO31N76zq',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Sonmarg'),(31,'Sonmarg to Thajiwas Glacier',8,'Post breakfast, start your journey to the trekking spot of Thajiwas Glacier. The trekking trail, passing through the dense pine forest and meadows, spent some time in the lap of nature. Overnight stay at Sonmarg. ','Thajiwas Glacier trekking ','sonmarg main road','3','sonmarg main road','Hotel Sonmarg ','1 bedroom','https://drive.google.com/uc?export=download&id=1uQ2JCYNPKu3pT_PWpHU9gAWRV-_BcLc8','https://drive.google.com/uc?export=download&id=1TDxJxqOoF9x_8tm7Pr7rV84npOBCxfKQ','',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Sonmarg'),(32,'Srinagar Sightseeing',9,'Post breakfast, check out from the hotel and head towards Srinagar. After checking in to the hotel Char Chinar Island, Takht-e-Suleiman hill, Chashmi-e Shahi, green Kashmiri gardens. ','Srinagar - Chashmi-e Shahi - Takht-e-Suleiman hill - Char Chinar Island - Kashmiri gardens.','Srinagar main road','3','Srinagar main road','Hotel Srinagar','1 bedroom','https://drive.google.com/uc?export=download&id=187S4mgDRI7y4AmWaLcPjNEajC-UYG2gL','https://drive.google.com/uc?export=download&id=1PY2KDy61teHP0p-GTE_0fW2c6Dn0ajMS','https://drive.google.com/file/d/1bSz_j9WxI89TmUmPxO2s-Iz9eg_Mmfy9/view?usp=sharing',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(33,'Leh airport ',1,'On the arrival at Leh airport, meet our representative, check in the homestay and relax for some time. \nIn the evening, meet our executive and collect your bikes, visit Leh Market, Leh Palace and Shanti Stupa. ','Arrival to Leh.','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1iBx8S5KbTlIih_xSgM74JkwyGUDIU6XC','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(34,'Sightseeing in Leh',2,'Post breakfast, get ready for your adventure, visit Sham Valley, Zanskar- Indus Rivers Sangam,  hall of fame, magnetic hills, Gurudwara Pathar Sahib. \nOvernight stay at Leh.  ',' Leh - Sham Valley - Sanagam - Hall of fame - magnetic hills - Gurudwara Pathar Sahib','Leh main road, Leh town','3','Leh main road, Leh town','Leh hotel','1 bedroom','https://drive.google.com/uc?export=download&id=1EyCdSoGFxJTqx3EogHGwlRl7k8evAj5u','https://drive.google.com/uc?export=download&id=1UJHW8VQ0Hj_b9e-HII_X97hdaRwWuguf','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(35,'Ulley sightseeing - Spot Snow Leopard ',3,'check out from the homestay and head towards Ulley. You will go to a nearby spot to find snow leopards. Later you will be visiting the nearby places, by evening head back to homestay and rest. ','Ulley sightseeing - Spot Snow Leopard ','Ulley main road, Ulley town','3','Ulley main road, Ulley town','Hotel Ulley','1 bedroom','https://drive.google.com/uc?export=download&id=1tvpCjAN5erihR0KpFCmeNHKcBmVFddit','https://drive.google.com/uc?export=download&id=1en0Q7QlPSHWM-R409XNibBWcmHZmS1ZA','',_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '','Ulley'),(36,'Ulley to Kargil',4,'Start your day with breakfast and head towards one of the beautiful towns of Kashmir, Kargil via Ladakh- Srinagar highway. On the way stop at Mulbek to visit the giant Buddha. Overnight stay at Kargil. ','Ulley - Mulbek - Kargil ','kargil main road ','3','kargil main road ','Hotel kargil ','1 bedroom ','https://drive.google.com/uc?export=download&id=1MPi7_6BdKEKUCn2HU83e7XsZ52HANJPp','https://drive.google.com/uc?export=download&id=1RsR-pJpiGaBVc4kKX3XLiJ0wlAI-ZLuX','',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '','Kargil'),(37,'Kargil to Leh ',5,'Post breakfast, start your journey towards Leh. On the way visit Lamayuru Monastery. On the arrival to Leh, visit  Pangong lake and Changla valley. \nOvernight stay at Leh. ','Kargil - Lamayuru - Pangong lake - Changla valley - Leh','leh main road, leh town','3','leh main road, leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1ZOTIXiOmyuJeRUTb_hc0D2RoxmWLVkFQ','https://drive.google.com/uc?export=download&id=1GTHvXwcLJQa3G3_6W6cQs6WGKvxqbI_J','https://drive.google.com/uc?export=download&id=1lxk0y1JXU3tWP6WvwCcjnwN2NnkMdDYM',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh '),(38,'Leh to Nubra Valley ',6,'Post breakfast, check out from the hotel and head towards Nubra Valley via Khardung La. The Nubra valley is the large valley that separates the Ladakh and Karakoram ranges.','Leh - Khardung La Pass - Nubra Valley - Diskit monastery - cold desert','Nubra Valley main road ','3','Nubra Valley main road ','Hotel Nubra Valley','1 bedroom','https://drive.google.com/uc?export=download&id=1gJKiTuqAj9R4FmAV6QyT1aK8y76lgoBA','https://drive.google.com/uc?export=download&id=1_HWkt9rWL_crNj9Lc5KCXpJaGiC9FjvZ','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Nubra Valley'),(39,'Stok village sight seeing',7,'Post breakfast head towards Stok village - a picturesque, quaint village situated at the base of the Stok Kangri peak(6150 m) witness the white-washed Chortens and mud-brick homes strewn across barley fields, prayer flags. ','Stok village - Kangri peak','leh town','3','leh town','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1MoSbUGuBa6zJrq-dz2-PiQlBAOoHV0p8','https://drive.google.com/uc?export=download&id=16VYNpJujGW1foCuJbnJRN4MHp4Qgd1tA','https://drive.google.com/file/d/1W_BqnPvxPBqxvlumRlryHz4IhL6Y1VYG/view?usp=sharing',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Stok village'),(40,'Srinagar',1,'On the arrival to Srinagar, meet our executive and check in to the pre-booked houseboat on a beautiful Dal lake. Witness the mesmerising beauty of Srinagar and the silent waves of Dal lake. ','Arriving to Srinagar','Dal lake, Srinagar','3','Dal lake, Srinagar','Houseboat','1 bedroom','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1YOvZc4MBVltU6dGXv5-HT7-7yVJiW5qn',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(41,'Sightseeing Srinagar',2,'Post breakfast and check out from the houseboat. Step out for sightseeing, visit  Chashmi-e Shahi, Takht-e-Suleiman hill, and Indira Gandhi Memorial Tulip Garden. Check-in the hotel and relax. ','Chashmi-e Shahi - Takht-e-Suleiman hill - Indira Gandhi Memorial Tulip Garden.','Srinagar main road','3','Srinagar main road','Hotel Srinagar','1 bedroom','https://drive.google.com/uc?export=download&id=1bSz_j9WxI89TmUmPxO2s-Iz9eg_Mmfy9','https://drive.google.com/uc?export=download&id=1dC7Al05hLZCr6M7uGouDMoHGIvlWCBoV','https://drive.google.com/uc?export=download&id=1XmJlQuHPNwKgzVqOkDanfeli1MlMg5dQ',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(42,'Sightseeing Srinagar',3,'Start your day by visiting Awantipura ruins - a beautiful architectural site, a ruin of a huge temple. Later head towards Char Chinar Island and click photographs in colourful Kashmiri outfits and later visit the local market','Awantipura ruins - Char Chinar Island - Local Market','Srinagar main road','3','Srinagar main road','Hotel Srinagar','1 bedroom','https://drive.google.com/uc?export=download&id=1swQ5FI1FFiRYSV-x-dYOSlqvoQCzUc8A','https://drive.google.com/uc?export=download&id=1ozikHi3eyMj3B336Nj1z7BI8OwpaRlHc','https://drive.google.com/file/d/1PY2KDy61teHP0p-GTE_0fW2c6Dn0ajMS/view?usp=sharing',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(43,'Srinagar',1,'On the arrival to Srinagar, meet our executive and check in to the pre-booked houseboat on a beautiful Dal lake. The crystal clear water and blissful surroundings.\nThe whole day will be leisure and stay at the houseboat.','Arrival to Srinagar','Dal Lake, Srinagar','3','Dal Lake, Srinagar','Boat house','1 bedroom','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(44,'Srinagar sightseeing',2,'Start your day by visiting Chashmi-e Shahi and Takht-e-Suleiman hill, later visit the Char Chinar Island and click photographs in colourful Kashmiri outfits (at your own cost). By evening return to your room.\n','Srinagar - Takht-e-Suleiman hill - Char Chinar Island','Srinagar main road','3','Srinagar main road','Hotel Srinagar','1 bedroom','https://drive.google.com/uc?export=download&id=1ozikHi3eyMj3B336Nj1z7BI8OwpaRlHc','https://drive.google.com/uc?export=download&id=187S4mgDRI7y4AmWaLcPjNEajC-UYG2gL','https://drive.google.com/uc?export=download&id=1bSz_j9WxI89TmUmPxO2s-Iz9eg_Mmfy9',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Srinagar'),(45,'Srinagar - Phalagam',3,'Start your journey towards Pahalgam. On the way, you can stop at Awantipura a beautiful architectural site, a ruin of a huge temple. Later Stop at Pampore visit Saffron fields, Apple valley and walnut plantations.','Awantipura - Pampore - Phalagam ','Phalagam main road','3','Phalagam main road','Hotel Phalagam','1 bedroom','https://drive.google.com/uc?export=download&id=1wwWtgqBrux4hQ2nFuKKWZEGOkO9RQQZ0','https://drive.google.com/uc?export=download&id=1swQ5FI1FFiRYSV-x-dYOSlqvoQCzUc8A','https://drive.google.com/uc?export=download&id=1rr_CGS0mddjW7JLLMshfIeL06Nt3D0bD',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Phalagam'),(46,'Phalagam - Aru valley ',4,'Post breakfast head towards the Aru valley known for its scenic beauty. Later head towards Betaab valley and Chandanwari - a starting point of Amaranth Yatra.  Overnight stay at Pahalgam. ','Aru valley - Betaab valley - Chandanwari ','Phalagam main road ','3','Phalagam main road ','Hotel Phalagam','1 bedroom','https://drive.google.com/uc?export=download&id=1xVCd71FVhnQCsyUWn-_7RPX0bkrBd-ox','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq','https://drive.google.com/uc?export=download&id=1dTewCeK84nVdd_S2Yo0zf-yZcOjH9DY0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Phalagam'),(47,'Phalagam - Gulmarg',5,'Post breakfast, head towards Gulmarg. On the arrival, proceed with your fun activities through the famous Gondola ride, a prime attraction in Gulmarg. Try snow activities like skiing, paragliding, snow biking etc. ','Gulmarg - Gondola ride - Snow activities','Gulmarg main road','3','Gulmarg main road ','Hotel Gulmarg','1 bedroom','https://drive.google.com/uc?export=download&id=1MIfDnxQyTq4g8Ri3aj2i-rBDF1mX1Zc0','https://drive.google.com/uc?export=download&id=1cFnucMP-2TRwcVWDvaK4vmUApRyAEgET','https://drive.google.com/uc?export=download&id=1coB18Uyf7kp2ysxkarHsNTT2B42WEHr1',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg'),(48,'Srinagar - Phalagam',1,'On the arrival to Srinagar, meet our executive and head towards Pahalgam - a picturesque hill station. On the way stop at Awantipur ruins, Saffron field, Apple orchards, walnut plantation. Overnight stay at Pahalgam. ','Srinagar - Avantipura - Phalagam ','Phalagam main road','3','Phalagam main road','Hotel Phalagam ','1 bedroom','https://drive.google.com/uc?export=download&id=10guK4QJUQG4IvSPnNsNQMKZYcIejdBcZ','https://drive.google.com/uc?export=download&id=1wwWtgqBrux4hQ2nFuKKWZEGOkO9RQQZ0','https://drive.google.com/uc?export=download&id=1rr_CGS0mddjW7JLLMshfIeL06Nt3D0bD',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Phalagam'),(49,'Phalagam sightseeing',2,'Start your day with breakfast and head out for trekking at Lidder river - ice-cold streams on the frozen glaciers, you can witness the retro-styled Kashmiri houses and panoramic vistas of Phlegm. Later visit Betab valley. ','Lidder river - Betab valley - ','Phalagam main road','3','Phalagam main road','Hotel Phalagam','1 bedroom','https://drive.google.com/uc?export=download&id=10Z-eNQV1TuHT8HvHL9GBzIkSdtiZub5a','https://drive.google.com/uc?export=download&id=1GoQ7Pgo9coefMfr5zE1w1g4FZbKo9WVS','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Phalagam '),(50,'Phalagam to Gulmarg',3,'Post breakfast, check out from Phalagam and head to Gulmarg. Start your fun activities through the famous Gondola ride, a prime attraction in Gulmarg. Try snow activities like skiing, paragliding, snow biking etc. ','Gulmarg sightseeing ','Gulmarg main road','3','Gulmarg main road','Hotel Gulmarg ','1 bedroom','https://drive.google.com/uc?export=download&id=1MIfDnxQyTq4g8Ri3aj2i-rBDF1mX1Zc0','https://drive.google.com/uc?export=download&id=1cFnucMP-2TRwcVWDvaK4vmUApRyAEgET','https://drive.google.com/uc?export=download&id=1Jgq3lodEx1IXmqMXnzDkBQRJmk6hlFpb',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Gulmarg'),(51,'Gulmarg to Sonmarg',4,'Start your early morning and head towards Sonmarg. On the arrival to Sonmarg check-in at the hotel and head out for trekking at Thajiwas Glacier. The trekking trail, passing through the dense pine forest and meadows.','Trekking at Thajiwas Glacier','Sonmarg main road','3','Sonmarg main road','Hotel Sonmarg','1 bedroom','https://drive.google.com/uc?export=download&id=1TDxJxqOoF9x_8tm7Pr7rV84npOBCxfKQ','https://drive.google.com/uc?export=download&id=1uQ2JCYNPKu3pT_PWpHU9gAWRV-_BcLc8','',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Sonmarg'),(52,'Ladakh ',1,'On the arrival to Leh, meet our executive, check-in the hotel and relax. You need some time to get acclimated to the climate. \nLater in the evening, you can hit the local market. ','Arriving to Ladakh ','Leh main road ','3','leh main road','Hotel Leh','1 bedroom ','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Ladakh'),(53,'Leh - Nubra Valley - Diskit Monastery - Cold desert',2,'Post breakfast,  head towards Nubra Valley via Khardung La. Visit Hunder village and the cold desert where you can go for camel Safari, Quad Biking in Nubra Sand Dunes.  Campsite stays at Nubra valley.','Leh - Nubra Valley - Diskit Monastery - Cold desert','Nubra valley ','3','Nubra valley ','Hotel Nubra valley','1 bedroom ','https://drive.google.com/uc?export=download&id=1GCJFGS7ZoerYVaGM790oLclbakANtMoY','https://drive.google.com/uc?export=download&id=1gJKiTuqAj9R4FmAV6QyT1aK8y76lgoBA','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '',' Nubra Valley'),(54,'Changala pass - Pangong Lake - Magnetic hill  ',3,'wake up early morning and head towards Leh. On the way visit Diskit monastery. On the arrival to Leh, check-in at the hotel and head towards Magnetic hill. Later, travel to Sangam, where you will go river rafting.','Changala pass - Pangong Lake - Magnetic hill  ','Leh main road','3','Leh main road','Hotel Leh ','1 bedroom','https://drive.google.com/uc?export=download&id=1t6OaPSU2ETi-fYuVGqDHVy4mtpOzMpGt','https://drive.google.com/uc?export=download&id=1b-GtWlYJ7nvyN-O0B6vydI651KjJXWab','https://drive.google.com/uc?export=download&id=1_HWkt9rWL_crNj9Lc5KCXpJaGiC9FjvZ',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh'),(55,'Leh - Ulley - Kargil ',4,'Post breakfast checks out from the hotel and travel to Ulley. Trek to see the Snow Leopard through Rumbak valley. Later you can head towards the Kargil via Ladakh- Srinagar highway.  ','Leh - Ulley - Kargil ','kargil main road','3',' kargil main road','Hotel kargil','1 bedroom','https://drive.google.com/uc?export=download&id=1en0Q7QlPSHWM-R409XNibBWcmHZmS1ZA','https://drive.google.com/uc?export=download&id=1MPi7_6BdKEKUCn2HU83e7XsZ52HANJPp','https://drive.google.com/uc?export=download&id=1dbFgJLUcOFlS-ReMnfRWECPsHgEe31Hz',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','kargil '),(56,'Kargil - Drass valley - Sonmarg',5,'kick start your day early morning breakfast head towards Sonmarg. On the way, you can witness the beautiful Drass valley and Zijo la Pass. On the arrival to Sonamrg head towards Thajiwas Glacier for trekking. Stay at Sonmarg.','Kargil - Drass valley - Sonmarg','Sonmarg main road ','3','Sonmarg main road','Hotel sonmarg','1 bedroom ','https://drive.google.com/uc?export=download&id=1pd-NdolvhBiUmuwu53Aqqc8EO31N76zq','https://drive.google.com/uc?export=download&id=1zE1IHU5vL1IKDOsIuI1Rvh2hxO4O7loe','https://drive.google.com/uc?export=download&id=1TDxJxqOoF9x_8tm7Pr7rV84npOBCxfKQ',_binary '',_binary '',_binary '\0',_binary '',_binary '',_binary '','Sonmarg'),(57,'leh ',1,'On the arrival at Leh airport, meet our representative, check in the homestay and relax for some time. In the evening you can visit Leh Market, Leh Palace and Shanti Stupa. After dinner, return to your homestay. ','Arriving to leh','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','https://drive.google.com/uc?export=download&id=1iBx8S5KbTlIih_xSgM74JkwyGUDIU6XC','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Leh'),(58,'Leh - Sham valley - Sangam - Hall of fame - magnetic hills - Gurudwara Pathar Sahib',2,'Post breakfast, head towards legendary Sham Valley. Later visit Zanskar river for river rafting. This is the highest point for water river rafting. Later visit Gurudwara Pathar Sahib, hall of fame, magnetic hills. \n','Leh - Sham valley - Sangam - Hall of fame - magnetic hills - Gurudwara Pathar Sahib','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1_cMnUPCvCl8J3SJtmCTL5esg3HMlESr_','https://drive.google.com/uc?export=download&id=1t6OaPSU2ETi-fYuVGqDHVy4mtpOzMpGt','https://drive.google.com/uc?export=download&id=1EyCdSoGFxJTqx3EogHGwlRl7k8evAj5u',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Ladakh '),(59,'Leh - Khardung La Pass - Nubra Valley - Diskit monastery - cold desert',3,'Post breakfast, check out from the hotel and head towards Nubra Valley via Khardung La. On arrival, you will be visiting the Diskit monastery and cold dessert. Try your hand at ATV bike ride and twin humped camels ride. ','Leh - Khardung La Pass - Nubra Valley - Diskit monastery - cold desert','Nubra valley','3','Nubra valley','Nubra valley tent stay','1 bedroom','https://drive.google.com/uc?export=download&id=1GCJFGS7ZoerYVaGM790oLclbakANtMoY','https://drive.google.com/uc?export=download&id=1gJKiTuqAj9R4FmAV6QyT1aK8y76lgoBA','https://drive.google.com/uc?export=download&id=1_HWkt9rWL_crNj9Lc5KCXpJaGiC9FjvZ',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Nubra Valley'),(60,'Stok village - Kangri peak - leh',4,'Post breakfast head towards Stok village - a picturesque, quaint village situated at the base of the Stok Kangri peak(6150 m). Witness the white-washed Chortens and mud-brick homes strewn across barley fields, prayer flags. ','Stok village - Kangri peak - leh','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1MoSbUGuBa6zJrq-dz2-PiQlBAOoHV0p8','https://drive.google.com/uc?export=download&id=16VYNpJujGW1foCuJbnJRN4MHp4Qgd1tA','https://drive.google.com/uc?export=download&id=1W_BqnPvxPBqxvlumRlryHz4IhL6Y1VYG',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Stok Village'),(61,'Arriving to Leh ',1,'On the arrival to Leh, meet our executive and check in the hotel and rest. In the evening, head out to the Leh Market, Leh Palace and Shanti Stupa. After dinner, return to your hotel.','Arriving to Leh','Leh main road','3','Leh main road','Hotel Leh','1 bedroom ','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','https://drive.google.com/uc?export=download&id=1iBx8S5KbTlIih_xSgM74JkwyGUDIU6XC','https://drive.google.com/uc?export=download&id=1qc5sbhNyyGEdX4i7zPXtftNr3K_LaNh3',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(62,'Leh - Sham Valley - Sangam - Hall of fame - magnetic hills - Gurudwara Pathar Sahib ',2,'Post breakfast, head towards legendary Sham Valley. Later visit  Zanskar- Indus Rivers, the highest point for water river rafting. Later visit  Hall of fame, magnetic hills,  Gurudwara Pathar Sahib. ','Leh - Sham Valley - Sangam - Hall of fame - magnetic hills - Gurudwara Pathar Sahib ','Leh main road','3','Leh main road ','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1_cMnUPCvCl8J3SJtmCTL5esg3HMlESr_','https://drive.google.com/uc?export=download&id=1UJHW8VQ0Hj_b9e-HII_X97hdaRwWuguf','https://drive.google.com/file/d/1b-GtWlYJ7nvyN-O0B6vydI651KjJXWab/view?usp=sharing',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Ladakh'),(63,'Leh - Khardung La - Nubra Valley ',3,'Post breakfast, head towards Nubra Valley via Khardung La. On arrival, you will be visiting the Diskit monastery. later visit Hunder village and the cold desert. Try your hand on an ATV bike ride, twin humped camel ride. ','A memorable drive to World‚Äôs Highest Motorable Road (18000 ft.)','nubra valley ','3','nubra valley ','Nubra valley tent stay ','1 bedroom ','https://drive.google.com/uc?export=download&id=1GCJFGS7ZoerYVaGM790oLclbakANtMoY','https://drive.google.com/uc?export=download&id=1y9OorJ67hH4dZgSsu59cZHlqEcgQyNzG','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Nubra Valley '),(64,'Nubra valley -  Siachen',4,'Post breakfast,  head towards the Siachen - the highest battlefield in the world also one of the world\'s longest mountain glaciers. Meet our army people, interact with them and visit the base camp. ','Visit to the highest Battlefield','Nubra valley ','3','Nubra valley ','Nubra valley tent stay ','1 bedroom','https://drive.google.com/uc?export=download&id=1ZKqw0XPtuO1ZZ12_vrd6EPMKw0iOBUnr','https://drive.google.com/uc?export=download&id=1yLstak64M9e6mVYaAYC8GiLjD8xbaQOR','https://drive.google.com/uc?export=download&id=19yDEVfPatGaCwltYLJ3tqgR5Y8vxI2Xh',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Siachen '),(65,'Nubra Valley - Kargil ',5,'Post breakfast checks out from the hotel and heads towards Ulley to spot snow leopards. Later head towards beautiful Kargil via Ladakh- Srinagar highway. On the way stop at Mulbek to visit the giant Buddha. ','Nubra Valley -  Ulley - Mulbek - Kargil','Kargil main road','3','Kargil main road','Hotel Kargil ','1 bedroom','https://drive.google.com/uc?export=download&id=1tvpCjAN5erihR0KpFCmeNHKcBmVFddit','https://drive.google.com/uc?export=download&id=1en0Q7QlPSHWM-R409XNibBWcmHZmS1ZA','https://drive.google.com/uc?export=download&id=13SnyKCAYXAKHU0vaGEij37W3eWXMVPDr',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '','Kargil'),(66,'Kargil - Lamayuru - Pangong lake - Changla valley - Leh',6,'Post breakfast, start your journey towards Lamayuru. On the way, you will be visiting Basgo Palace and Lamayuru Monastery. Later head towards Leh through the beautiful valleys and mountains. Visit Pangong Lake. ','Kargil - Lamayuru - Pangong lake - Changla valley - Leh','Leh main road ','3','Leh main road','Hotel Leh','1 bedroom ','https://drive.google.com/uc?export=download&id=1GTHvXwcLJQa3G3_6W6cQs6WGKvxqbI_J','https://drive.google.com/uc?export=download&id=1ZOTIXiOmyuJeRUTb_hc0D2RoxmWLVkFQ','https://drive.google.com/uc?export=download&id=1RsR-pJpiGaBVc4kKX3XLiJ0wlAI-ZLuX',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(67,'Arrival to Leh ',1,'On the arrival at Leh airport, meet our representative, check-in at the hotel and relax for some time.  By evening meet our executive and collect bikes and visit the local market and Leh palace.','Arrival to Leh','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','https://drive.google.com/uc?export=download&id=1dSwLSnHQrJx_MNPOorTy74onqL_tgtub','https://drive.google.com/uc?export=download&id=1qc5sbhNyyGEdX4i7zPXtftNr3K_LaNh3',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(68,'Shey Palace - Sindhu Darshan - Hall of Fame war Museum - Shanti Stupa',2,'Kick start your day with breakfast, step out for sightseeing. Visit Shey Palace - a summer palace for the royal family of Ladakh. Later visit Sindhu darshan, Hall of Fame war Museum and Shanti Stupa. Overnight stay at Leh. ','Shey Palace - Sindhu Darshan - Hall of Fame war Museum - Shanti Stupa','Leh main road','3','Leh main road`','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1iZJInZFIEu6fAQGcTgguC9LQjhOMJsfx','https://drive.google.com/uc?export=download&id=1c_uKwyRng09ZDOIzo4zT5xSLNg-zbHCy','https://drive.google.com/uc?export=download&id=1XUfnD7aFSOt6m-MbXktgI89xstk70C2D',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(69,'Pangong Lake - Changala pass - Leh',3,'Post the breakfast,  head towards the famous Pangong Lake - the world\'s highest saltwater lake. Later head towards Leh to Changla pass, this is the third highest motorable pass in the world. Overnight stay at Leh.','Pangong Lake - Changala pass - Leh ','Leh main road','3','Leh main road','Hotel Leh','1 bedroom','https://drive.google.com/uc?export=download&id=1GTHvXwcLJQa3G3_6W6cQs6WGKvxqbI_J','https://drive.google.com/uc?export=download&id=1lxk0y1JXU3tWP6WvwCcjnwN2NnkMdDYM','https://drive.google.com/uc?export=download&id=13mXu1C5DcYgiUjkntaUXYxmU8RfnMuMY',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Pangong Lake'),(70,'Magnetic Hills - Sangam - Leh town',4,'Start your day with the religious spot Patthar Sahib Gurudwara. Later ride towards magnetic hills. By noon, ride to Sangam, you can go river rafting at an additional cost. By evening return to Leh. ','Magnetic Hills - Sangam - Leh town','Leh Main road','3','Leh main road','Hotel Leh','1 bedroom ','https://drive.google.com/uc?export=download&id=1suaNZbBIKSWMa85I5ORNZvOvjg_NCBFt','https://drive.google.com/uc?export=download&id=1UJHW8VQ0Hj_b9e-HII_X97hdaRwWuguf','https://drive.google.com/uc?export=download&id=1b-GtWlYJ7nvyN-O0B6vydI651KjJXWab',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Magnetic Hills'),(71,'Leh - Alchi Gompa - Moon land - Kargil ',5,'Post breakfast, head towards beautiful Kargil via Fotu La Pass and Namki La pass. On the way, visit Alchi Gompa and Moon land - similar to the moon surface, and Lamayuru Monastery. Night stay at Kargil. ','Leh - Alchi Gompa - Moon land - Kargil','kargil main road','3','Kargil main road','Hotel Kargil','1 bedroom ','https://drive.google.com/uc?export=download&id=1cKwXxRCnbJDLRuJGDYKlOvZaibV5DdNG','https://drive.google.com/uc?export=download&id=1y_Wn0gqWxbJWUjBN4bsd7uPmwa1ESpGN','https://drive.google.com/uc?export=download&id=19sSj77_TwOUUI6kR7V4hL5aT9k-rOr9W',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Kargil'),(72,'Arrival to Leh',1,'meet our representative, check in the homestay and relax for some time. Evening, meet our executive and collect your bikes and head out to the Leh Market, Leh Palace and Shanti Stupa. After dinner, return to your homestay.','Arrival to Leh','Leh main road','3','Leh main road','Leh Homestay','1 bedroom ','https://drive.google.com/uc?export=download&id=1m7_Au0-mAOZqCjQb479Z-07GNI7I-hLP','https://drive.google.com/uc?export=download&id=1t6OaPSU2ETi-fYuVGqDHVy4mtpOzMpGt','https://drive.google.com/uc?export=download&id=1iZJInZFIEu6fAQGcTgguC9LQjhOMJsfx',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Leh'),(73,'Leh - Khardung La Pass - Nubra Valley - Diskit monastery - cold desert',2,'Post breakfast, check out from the hotel and head towards Nubra Valley via Khardung La. later visit Diskit monastery, cold desert. Try your hands on ATV motorbikes, double-humped camel rides. Stay at Tents at Nubra Valley. ','Leh - Khardung La Pass - Nubra Valley - Diskit monastery - cold desert','Nubra valley','3','Nubra valley','Nubra Valley tents','1 bedrrom 2 beds','https://drive.google.com/uc?export=download&id=1GCJFGS7ZoerYVaGM790oLclbakANtMoY','https://drive.google.com/uc?export=download&id=1_HWkt9rWL_crNj9Lc5KCXpJaGiC9FjvZ','https://drive.google.com/uc?export=download&id=1rjKXDXvtS5uKt7wM1mghm7Q4pqMQBhjp',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Nubra Valley '),(74,'Nubra Valley - Pangong Lake',3,'Post breakfast, start your ride towards Indo - China border via Agham-Shyok road. On the arrival at Pangong lake, check in the tent stays and relax. enjoy the beauty of the lake and surroundings. ','Nubra Valley - Pangong Lake','Phangog lake','3','Phangog lake','Phangog tents stay ','1 bedroom, 2 bed sharing','https://drive.google.com/uc?export=download&id=1GTHvXwcLJQa3G3_6W6cQs6WGKvxqbI_J','https://drive.google.com/uc?export=download&id=13mXu1C5DcYgiUjkntaUXYxmU8RfnMuMY','',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '','Pangong Lake');
/*!40000 ALTER TABLE `iternery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_blogs`
--

DROP TABLE IF EXISTS `main_event_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES (24,_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0browsersr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0browsert\0usernamet\0dileepxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_CLIENTsq\0~\0\rt\0ROLE_TRUSTED_CLIENTxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0q\0~\0xpt\0dileep','0b04815e3685ae204494bc4544648ce9','browser','7161db1599c7736e5bf93c1e40dc3a92',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0~ ÿ£\¬xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$cdfc696b-6b12-4522-bc4f-a77ab9f0e7dcsq\0~\0	w\0\0~Äâ±ùxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$84c95d2c-2851-4e21-9a98-a299e441c74d','cc3beb9f09c21c1b3b880a692b798cfe','dileep');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication` mediumblob,
  `token` mediumblob,
  `token_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES (8,_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0browsersr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0browsert\0usernamet\0dileepxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_CLIENTsq\0~\0\rt\0ROLE_TRUSTED_CLIENTxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0q\0~\0xpt\0dileep',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$cdfc696b-6b12-4522-bc4f-a77ab9f0e7dcsr\0java.util.DatehjÅKYt\0\0xpw\0\0~Äâ±ùx','7161db1599c7736e5bf93c1e40dc3a92');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b8nbstg9t15unnmk6uod41f47` (`name`),
  KEY `FKqcku7q1jhjovu5lhhe0iqg52f` (`district_id`),
  CONSTRAINT `FKqcku7q1jhjovu5lhhe0iqg52f` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'KRS',NULL,1),(2,'Anantnag',NULL,2),(3,'Srinagar',NULL,3),(4,'Baramulla',NULL,4),(5,'Jammu',NULL,5),(6,'Udhampur',NULL,6),(7,'Leh',NULL,7),(8,'Ladakh',NULL,8),(9,'Kargil',NULL,9),(10,'Ganderbal',NULL,11),(11,'Pulwama',NULL,12);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (3,'https://drive.google.com/uc?export=download&id=1YOvZc4MBVltU6dGXv5-HT7-7yVJiW5qn','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','5 days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 5</p></li><li><p>Buffet dinner from Day 1 to Day 4</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',35000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1YOvZc4MBVltU6dGXv5-HT7-7yVJiW5qn','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','5 Days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 5</p></li><li><p>Buffet dinner from Day 1 to Day 4</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',45000,'https://drive.google.com/uc?export=download&id=1YOvZc4MBVltU6dGXv5-HT7-7yVJiW5qn','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','5 days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 5</p></li><li><p>Buffet dinner from Day 1 to Day 4</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',30000),(4,'https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','7 Days , 6 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 7</p></li><li><p>Buffet dinner from Day 1 to Day 6</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',40000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','7 Days , 6 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 7</p></li><li><p>Buffet dinner from Day 1 to Day 6</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',55000,'https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','7 Days 6 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 7</p></li><li><p>Buffet dinner from Day 1 to Day 6</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p></li></ul>',30000),(5,'https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/file/d/1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq/view?usp=sharing','9 Days, 8 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul>',40000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','9 Days, 8 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul>',50002,'https://drive.google.com/uc?export=download&id=1lfc0VWRjKnWMJAO128U_TUAai1DdzUUw','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/file/d/1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq/view?usp=sharing','9 Days, 8 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul>',35000),(6,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 days 4 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',30000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','5 days 4 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',35000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 days 4 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',25000),(7,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','10 Days 9 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',55000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','10 Days 9 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',65000,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','10 Days 9 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary</p>',45000),(8,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','8 Days 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',45000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','8 Days 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',55000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','8 Days 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',35000),(9,'https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','4 Days, 3 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',25000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','4 Days, 3 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',35000,'https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','4 Days, 3 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',20000),(10,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','6 Days, 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',55000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',65000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','6 Days, 7 Nights','<p>Standard details</p><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><p>Srinagar: Hotel Six Seasons or similar</p><p>Pahalgam: Hotel Hilltop or similar</p><p>Gulmarg: Hotel Medous or similar</p><p>Meals as per itinerary:-</p><p>Buffet breakfast from Day 2 to Day 9</p><p>Buffet dinner from Day 1 to Day 8</p><p>Transfers</p><p>Airport pick up and drop as per your flight timings</p><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p><p>Driver</p><p>Highly-Experienced driver cum guide</p><p>Sightseeing</p><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p>',45000),(11,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 Days, 4 Nights','<ul><li><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p></li><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li><li><p>Meals as per itinerary:-</p></li><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li><li><p>Transfers</p></li><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li><li><p>Driver</p></li><li><p>Highly-Experienced driver cum guide</p></li><li><p>Sightseeing</p></li><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',35000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 Days, 4 Nights','<ul><li><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p></li></ul><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><ul><li><p>Meals as per itinerary:-</p></li><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li><li><p>Transfers</p></li><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li><li><p>Driver</p></li><li><p>Highly-Experienced driver cum guide</p></li><li><p>Sightseeing</p></li><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',40000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 Days, 4 Nights','<ul><li><p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul></li><li><p>Meals as per itinerary:-</p></li><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li><li><p>Transfers</p></li><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li><li><p>Driver</p></li><li><p>Highly-Experienced driver cum guide</p></li><li><p>Sightseeing</p></li><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',25000),(12,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 5 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Srinagar: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Pahalgam: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Gulmarg: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary</span></span></p></li></ul>',35000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','6 Days, 5 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Srinagar: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Pahalgam: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Gulmarg: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary</span></span></p></li></ul>',45000,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 5 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Srinagar: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Pahalgam: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Gulmarg: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary</span></span></p></li></ul>',30000),(13,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 Days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',30000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','5 Days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',35000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','5 Days, 4 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Srinagar: Hotel Six Seasons or similar</p></li><li><p>Pahalgam: Hotel Hilltop or similar</p></li><li><p>Gulmarg: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 9</p></li><li><p>Buffet dinner from Day 1 to Day 8</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',25000),(14,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',30000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',35000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1aHHLLonon_mMqG2pzPfKOXdhbl3Rpj9h','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',25000),(15,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li><li><p>Kargil: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',30000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li><li><p>Kargil: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',35000,'https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','6 Days, 5 Nights','<p>Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</p><ul><li><p>Leh: Hotel Six Seasons or similar</p></li><li><p>Nubra Valley: Hotel Hilltop or similar</p></li><li><p>Kargil: Hotel Medous or similar</p></li></ul><p>Meals as per itinerary:-</p><ul><li><p>Buffet breakfast from Day 2 to Day 6</p></li><li><p>Buffet dinner from Day 1 to Day 5</p></li></ul><p>Transfers</p><ul><li><p>Airport pick up and drop as per your flight timings</p></li><li><p>Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</p></li></ul><p>Driver</p><ul><li><p>Highly-Experienced driver cum guide</p></li></ul><p>Sightseeing</p><ul><li><p>Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</p></li></ul>',25000),(16,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','7 Days, 6 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Leh: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Nubra Valley: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Kargil: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</span></span></p></li></ul>',36000,_binary '\0',_binary '\0',_binary '\0','https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','7 Days, 6 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Leh: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Nubra Valley: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Kargil: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</span></span></p></li></ul>',45000,'https://drive.google.com/uc?export=download&id=1kxqHZDuCOCTS3ABa_twvNlBIzp1rjFeq','https://drive.google.com/uc?export=download&id=1hCCrVR2VycZrkEHYarvAuTjTXe2h4LkA','https://drive.google.com/uc?export=download&id=18YDs3sKEsVNmm5D6XtYGpzGcSIOwvm0x','7 Days, 6 Nights','<p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable Stay on a Double and Triple sharing basis in hygienic and sanitized hotels as follows:</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Leh: Hotel Six Seasons or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Nubra Valley: Hotel Hilltop or similar</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Kargil: Hotel Medous or similar</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Meals as per itinerary:-</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet breakfast from Day 2 to Day 7</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Buffet dinner from Day 1 to Day 6</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Transfers</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Airport pick up and drop as per your flight timings</span></span></p></li><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Comfortable and hygienic vehicle (Innova/Xylo/Similar) for sightseeing on all days as per the itinerary.</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Driver</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Highly-Experienced driver cum guide</span></span></p></li></ul><p style=\"text-align:start\"><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing</span></span></p><ul><li><p><span style=\"color:rgb(79, 79, 79);\"><span style=\"background-color:rgb(255, 255, 255);\">Sightseeing in a comfortable and sanitized vehicle as per the itinerary.</span></span></p></li></ul>',30000);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1m9qnhbk56c8iskxvfupln9me` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Asia'),(6,'Gulmarg'),(7,'Jammu'),(9,'Kargil'),(11,'Kashmir'),(4,'Ladakh '),(3,'Leh'),(8,'Pahalgam'),(5,'Sonmarg'),(2,'Srinagar'),(10,'Thimphu');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nau09mwrvhjj0n0a6gfo5xmp3` (`name`),
  KEY `FKafrthlyrmvtpo1gm6b6siec4g` (`country_id`),
  CONSTRAINT `FKafrthlyrmvtpo1gm6b6siec4g` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'karnataka',1),(2,'Himachal Pradesh',1),(3,'Tamilnadu',1),(4,'Jammu and Kashmir',1),(5,'Kerala',1),(6,'Goa',1),(7,'Rajasthan',1),(8,'Meghalaya',1),(9,'Assam',1),(10,'West Bengal',1),(11,'Nagaland',1),(12,'Sikkim',1),(13,'Arunachal Pradesh',1),(14,'Tripura',1),(15,'Andaman and Nicobar',1),(16,'Lakshdweep',1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taluk`
--

DROP TABLE IF EXISTS `taluk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kos4rdub1av4d5wt6wocsdb7t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (9,'Adventure'),(7,'Beach'),(6,'Family '),(8,'Historical'),(10,'Holiday'),(2,'Honeymoon '),(4,'Nature and wildlife'),(11,'Road Trip'),(3,'Trekking');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_tourpackage`
--

DROP TABLE IF EXISTS `theme_tourpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourpackage`
--

LOCK TABLES `tourpackage` WRITE;
/*!40000 ALTER TABLE `tourpackage` DISABLE KEYS */;
INSERT INTO `tourpackage` VALUES (3,'','Indian',NULL,'5','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses </p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1a8gQiLMc72jU1JCXeiQDu6vFEbg1VzST','<ul><li><p>Hotel Stay </p></li><li><p>Sightseeing</p></li><li><p>Travel </p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,2,'Honeymoon packages',0,'Wake up early in the morning and finish your breakfast. Later you can head towards Indira Gandhi Memorial Tulip Garden.By noon, check out from hotel and say Bye to Kashmir, head towards Srinagar airport/railway station. ','Srinagar'),(4,'','Indian','2 days 1 Night','7','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses</p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=10guK4QJUQG4IvSPnNsNQMKZYcIejdBcZ','<ul><li><p>Hotel Stay</p></li><li><p>Sightseeing</p></li><li><p>Travel</p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,2,'Kashmir Sightseeing ',0,NULL,NULL),(5,'','Indian','2 days 1 Night','9','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses</p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1e08165YKNG6rw5jhcIQJzmcQc0TyEd87','<ul><li><p>Hotel Stay</p></li><li><p>Sightseeing</p></li><li><p>Travel</p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,2,'Kashmir Paradise trip ',0,NULL,NULL),(6,'','Indian','2 days 1 Night','5','<p>Lunch</p><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p><p>Personal expenses</p><p>Guide &amp; Entrance fees during sightseeing.</p><p>Toll Taxes &amp; Service charges</p>','https://drive.google.com/uc?export=download&id=1QLZDFYQwq8PnFqQ4C1ntjflMVofWLL7Q','<p>Hotel Stay</p><p>Sightseeing</p><p>Travel</p><p>Meals as per itinerary</p><p>Shikara Ride over Dal Lake</p><p>All Transportation on a private basis</p>',NULL,2,'Exclusive Leh and Ladakh trip ',0,NULL,NULL),(7,'','Indian',NULL,'10','<p>Lunch</p><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p><p>Personal expenses </p><p>Guide &amp; Entrance fees during sightseeing.</p><p>Toll Taxes &amp; Service charges</p>','https://drive.google.com/uc?export=download&id=1pd-NdolvhBiUmuwu53Aqqc8EO31N76zq','<p>Hotel Stay </p><p>Sightseeing</p><p>Travel </p><p>Meals as per itinerary</p><p>Shikara Ride over Dal Lake</p><p>All Transportation on a private basis</p>',NULL,2,'Exclusive adveenture Ladakh Package ',0,'Wake up early in the morning and finish your breakfast. By noon, you will be dropped off at your stop, bus station or airport as per convenience.','Good bye Kashmir'),(8,'','Indian',NULL,'8','<p>Lunch</p><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p><p>Personal expenses </p><p>Guide &amp; Entrance fees during sightseeing.</p><p>Toll Taxes &amp; Service charges</p>','https://drive.google.com/uc?export=download&id=1c6Bc3MqLqS-vozSYD6gaMvSLB8CwqFTM','<p>Hotel Stay </p><p>Sightseeing</p><p>Travel </p><p>Meals as per itinerary</p><p>Shikara Ride over Dal Lake</p><p>All Transportation on a private basis</p>',NULL,1,'Road trip ',0,'On the last day of your trip, post breakfast, pack your bags and head towards Leh airport with beautiful memories. ','Last day in Leh'),(9,'','Indian',NULL,'4','<p>Lunch</p><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p><p>Personal expenses </p><p>Guide &amp; Entrance fees during sightseeing.</p><p>Toll Taxes &amp; Service charges</p>','https://drive.google.com/uc?export=download&id=1PY2KDy61teHP0p-GTE_0fW2c6Dn0ajMS','<p>Hotel Stay </p><p>Sightseeing</p><p>Travel </p><p>Meals as per itinerary</p><p>Shikara Ride over Dal Lake</p><p>All Transportation on a private basis</p>',NULL,2,'Exclusive Srinagar holiday tour package',0,'Wake up early in the morning and finish your breakfast. By noon, you will be dropped off at your stop, bus station or airport as per convenience','Adieu to Srinagar'),(10,'','Indian','2 days 1 Night','6','<p>Lunch</p><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p><p>Personal expenses</p><p>Guide &amp; Entrance fees during sightseeing.</p><p>Toll Taxes &amp; Service charges</p>','https://drive.google.com/uc?export=download&id=1HCZwCSBwA0Kshonpay1zD7mZQXpx25lq','<p>Hotel Stay</p><p>Sightseeing</p><p>Travel</p><p>Meals as per itinerary</p><p>Shikara Ride over Dal Lake</p><p>All Transportation on a private basis</p>',NULL,4,'Family trip package to Kashmir',0,NULL,NULL),(11,'','Indian',NULL,'5','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses </p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1kz2Gs0RQgLIJnev8GrEUe-zrBepbTmiq','<ul><li><p>Hotel Stay </p></li><li><p>Sightseeing</p></li><li><p>Travel </p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,2,'Best of Kashmir holiday package',0,'Check out from the hotel and head towards Srinagar. Last day of your trip, we will drop you at the airport or railway station as per your convince. ','Srinagar - Goodbye to Kashmir'),(12,'','Indian','6 days 5 Night','6','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses</p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1gJKiTuqAj9R4FmAV6QyT1aK8y76lgoBA','<ul><li><p>Hotel Stay</p></li><li><p>Sightseeing</p></li><li><p>Travel</p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,1,'Thrilling and Adventure Package - Kashmir and Ladakh ',0,NULL,NULL),(13,'','Indian','2 days 1 Night','5','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses</p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=13mXu1C5DcYgiUjkntaUXYxmU8RfnMuMY','<ul><li><p>Hotel Stay</p></li><li><p>Sightseeing</p></li><li><p>Travel</p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,1,'Exclusive Ladakh package',0,NULL,NULL),(14,'','Indian',NULL,'7','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses </p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1iZJInZFIEu6fAQGcTgguC9LQjhOMJsfx','<ul><li><p>Hotel Stay </p></li><li><p>Sightseeing</p></li><li><p>Travel </p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,1,'Exclusive Ladakh trip with Siachen ',0,'On the last day of your trip, post breakfast, pack your bags and head towards Leh airport with beautiful memories. ','Leh airport '),(15,'','Indian',NULL,'6','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses </p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1t6OaPSU2ETi-fYuVGqDHVy4mtpOzMpGt','<ul><li><p>Hotel Stay </p></li><li><p>Sightseeing</p></li><li><p>Travel </p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis</p></li></ul>',NULL,1,'Ladakh on 2 wheels ',0,'Last day of your trip, ride towards beautiful Srinagar via Dras Valley, Mesmerize the beauty of Kashmir. ','Departure'),(16,'','Indian','2 days 1 Night','7','<ul><li><p>Lunch</p></li><li><p>Other activities - Horse ride, snow activities, Cable Car / Pony Ride in Gulmarg, &amp; Pahalgam.</p></li><li><p>Any attraction mentioned under ‚ÄòOptional‚Äô.</p></li><li><p>Personal expenses</p></li><li><p>Guide &amp; Entrance fees during sightseeing.</p></li><li><p>Toll Taxes &amp; Service charges</p></li></ul>','https://drive.google.com/uc?export=download&id=1c6Bc3MqLqS-vozSYD6gaMvSLB8CwqFTM','<ul><li><p>Hotel Stay</p></li><li><p>Sightseeing</p></li><li><p>Travel</p></li><li><p>Meals as per itinerary</p></li><li><p>Shikara Ride over Dal Lake</p></li><li><p>All Transportation on a private basis.</p></li></ul>',NULL,1,'Leh - Road trip with camping ',0,'Post breakfast start your journey towards Manali, on the way, stop at Solang valley, try  adventurous sports activities like paragliding, Snow Scooter, Cable Car Ropeway, Skiing, and many more fun activities. On the arrival to Manali, your road trip will end here, handover bikes to our tour operator and head towards to your home with beautiful memories. ','to Manali - Departure');
/*!40000 ALTER TABLE `tourpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackage_iterneries`
--

DROP TABLE IF EXISTS `tourpackage_iterneries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `tourpackages_facilities` VALUES (3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16);
/*!40000 ALTER TABLE `tourpackages_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_places`
--

DROP TABLE IF EXISTS `tourpackages_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `tourpackages_places` VALUES (3,3),(3,4),(3,5),(3,9),(3,10),(3,11),(7,6),(7,7),(7,8),(7,16),(8,12),(8,13),(8,14),(8,15);
/*!40000 ALTER TABLE `tourpackages_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_prices`
--

DROP TABLE IF EXISTS `tourpackages_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `tourpackages_prices` VALUES (3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16);
/*!40000 ALTER TABLE `tourpackages_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourpackages_themes`
--

DROP TABLE IF EXISTS `tourpackages_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `tourpackages_themes` VALUES (2,3),(6,4),(6,10),(9,5),(9,6),(9,7),(9,8),(9,12),(10,9),(10,11),(10,13),(10,14),(11,15),(11,16);
/*!40000 ALTER TABLE `tourpackages_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('EMPLOYEE',1,25,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',20000,'dileep',1,1),('EMPLOYEE',2,25,'$2a$10$sBzNgGShayBo0yMJDYb8T.A0bNfaYKv2pP79nUQCrhPS2wgiMGO6i',20000,'Chandan@gmail.com',NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `users_roles` VALUES (1,1),(2,1);
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

-- Dump completed on 2022-01-03  7:53:47
