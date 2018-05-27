DROP DATABASE `bankua`;

-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bankua
-- ------------------------------------------------------
-- Server version 5.7.20

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
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts` (
  `kontu_zenbakia` varchar(24) NOT NULL,
  `erabiltzaile_id` varchar(9) NOT NULL,
  `kopurua` int(11) NOT NULL DEFAULT '0',
  `sortze_data` date NOT NULL,
  PRIMARY KEY (`kontu_zenbakia`),
  KEY `erabiltzaile_id` (`erabiltzaile_id`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`erabiltzaile_id`) REFERENCES `Erabiltzailea` (`nan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES ('0123456789012','01234567B',0,'2018-05-25'),('1234567890123','12345678A',0,'2018-05-25'),('1234567891234','12345678A',0,'2018-05-25');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Favorites`
--

DROP TABLE IF EXISTS `Favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `erabiltzaile_id` varchar(9) NOT NULL,
  `faborito_id` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `erabiltzaile_id` (`erabiltzaile_id`),
  KEY `faborito_id` (`faborito_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`erabiltzaile_id`) REFERENCES `users` (`nan`),
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`faborito_id`) REFERENCES `users` (`nan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Favorites`
--

LOCK TABLES `Favorites` WRITE;
/*!40000 ALTER TABLE `Favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bildaltzaile_kontua` varchar(24) NOT NULL,
  `hartzaile_kontua` varchar(24) NOT NULL,
  `kopurua` int(11) NOT NULL,
  `azalpena` varchar(255) DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bildaltzaile_kontua` (`bildaltzaile_kontua`),
  KEY `hartzaile_kontua` (`hartzaile_kontua`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`bildaltzaile_kontua`) REFERENCES `accounts` (`kontu_zenbakia`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`hartzaile_kontua`) REFERENCES `accounts` (`kontu_zenbakia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (3,'1234567891234','0123456789012',100,'a','2018-05-26');
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `nan` varchar(9) NOT NULL,
  `izena` varchar(100) NOT NULL,
  `abizenak` varchar(100) NOT NULL,
  `pasahitza` varchar(255) NOT NULL,
  `emaila` varchar(100) NOT NULL,
  `telefonoa` int(12) NOT NULL,
  `helbidea` varchar(255) NOT NULL,
  `sortze_data` date NOT NULL,
  PRIMARY KEY (`nan`),
  UNIQUE KEY `nan` (`nan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('01234567B','user2','userB','pass','user2@gmail.com',688622222,'Donostia','2018-05-27'),('12345678A','user','userA','pass','user@gmail.com',688611111,'Bilbo','2018-05-26');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-27  2:20:03
