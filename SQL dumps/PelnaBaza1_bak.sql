-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: sql.spesc.nazwa.pl    Database: spesc
-- ------------------------------------------------------
-- Server version	5.5.25a-log

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
-- Table structure for table `Gatunki`
--

DROP TABLE IF EXISTS `Gatunki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatunki` (
  `idGatunku` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaGatunku` varchar(20) NOT NULL,
  `opisGatunku` text,
  PRIMARY KEY (`idGatunku`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatunki`
--

LOCK TABLES `Gatunki` WRITE;
/*!40000 ALTER TABLE `Gatunki` DISABLE KEYS */;
INSERT INTO `Gatunki` VALUES (1,'FPS',''),(2,'Gry akcji',''),(3,'MMO',''),(4,'Przygodowe',''),(5,'RTS',''),(6,'RPG',''),(7,'Sportowe',''),(8,'Wyścigi',''),(9,'Symulacje',''),(10,'Strategie',''),(11,'Indie',''),(12,'Logiczne',''),(13,'Horror',''),(14,'Hack and slash',''),(15,'Bijatyka','');
/*!40000 ALTER TABLE `Gatunki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grupy`
--

DROP TABLE IF EXISTS `Grupy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grupy` (
  `idGrupy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaGrupy` varchar(20) NOT NULL,
  `opisGrupy` text,
  PRIMARY KEY (`idGrupy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupy`
--

LOCK TABLES `Grupy` WRITE;
/*!40000 ALTER TABLE `Grupy` DISABLE KEYS */;
INSERT INTO `Grupy` VALUES (1,'Tworcy','No generalnie sekcja'),(2,'BEEFOWCY','WERTHGJK'),(3,'RANDOM','random'),(4,'Tworcy','No generalnie sekcja'),(5,'BEEFOWCY','WERTHGJK'),(6,'RANDOM','random');
/*!40000 ALTER TABLE `Grupy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gry`
--

DROP TABLE IF EXISTS `Gry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gry` (
  `idGry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGatunku` tinyint(3) unsigned NOT NULL,
  `nazwaGry` varchar(50) NOT NULL,
  `idWydawcy` int(10) unsigned NOT NULL,
  `idPEGI` tinyint(3) unsigned NOT NULL,
  `cena` float NOT NULL,
  PRIMARY KEY (`idGry`),
  KEY `idGatunku` (`idGatunku`),
  KEY `idPEGI` (`idPEGI`),
  KEY `idWydawcy` (`idWydawcy`),
  CONSTRAINT `FK_Gry_GatunekGry` FOREIGN KEY (`idGatunku`) REFERENCES `Gatunki` (`idGatunku`),
  CONSTRAINT `FK_Gry_PEGI` FOREIGN KEY (`idPEGI`) REFERENCES `PEGI` (`idPEGI`),
  CONSTRAINT `FK_Gry_Wydawcy` FOREIGN KEY (`idWydawcy`) REFERENCES `Wydawcy` (`idWydawcy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gry`
--

LOCK TABLES `Gry` WRITE;
/*!40000 ALTER TABLE `Gry` DISABLE KEYS */;
INSERT INTO `Gry` VALUES (1,15,'THE KING OF FIGHTERS XIII',41,3,80),(2,1,'Battlefield 4',15,5,120),(3,6,'The Witcher 2: Assassins of Kings Enhanced Edition',10,5,100),(4,2,'Batman: Arkham Asylum GOTY Edion',40,5,120);
/*!40000 ALTER TABLE `Gry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PEGI`
--

DROP TABLE IF EXISTS `PEGI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PEGI` (
  `idPEGI` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `opis` varchar(16) NOT NULL,
  PRIMARY KEY (`idPEGI`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PEGI`
--

LOCK TABLES `PEGI` WRITE;
/*!40000 ALTER TABLE `PEGI` DISABLE KEYS */;
INSERT INTO `PEGI` VALUES (1,'PEGI 3'),(2,'PEGI 7'),(3,'PEGI 12'),(4,'PEGI 16'),(5,'PEGI 18'),(6,'Wulgarny jezyk'),(7,'Dyskryminacja'),(8,'Narkotyki'),(9,'Strach'),(10,'Hazard'),(11,'Seks'),(12,'Przemoc'),(13,'Online'),(14,'PEGI 3'),(15,'PEGI 7'),(16,'PEGI 12'),(17,'PEGI 16'),(18,'PEGI 18'),(19,'Wulgarny jezyk'),(20,'Dyskryminacja'),(21,'Narkotyki'),(22,'Strach'),(23,'Hazard'),(24,'Seks'),(25,'Przemoc'),(26,'Online');
/*!40000 ALTER TABLE `PEGI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Panstwa`
--

DROP TABLE IF EXISTS `Panstwa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Panstwa` (
  `idPanstwa` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaPanstwa` varchar(20) NOT NULL,
  PRIMARY KEY (`idPanstwa`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Panstwa`
--

LOCK TABLES `Panstwa` WRITE;
/*!40000 ALTER TABLE `Panstwa` DISABLE KEYS */;
INSERT INTO `Panstwa` VALUES (1,'Afganistan'),(2,'Albania'),(3,'Algieria'),(4,'Andora'),(5,'Angola'),(6,'Antigua i Barbuda'),(7,'Arabia Saudyjska'),(8,'Argentyna'),(9,'Armenia'),(10,'Australia'),(11,'Austria'),(12,'Azerbejdżan'),(13,'Bahamy'),(14,'Bahrajn'),(15,'Bangladesz'),(16,'Barbados'),(17,'Belgia'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Białoruś'),(22,'Birma'),(23,'Boliwia'),(24,'Bośnia i Hercegowina'),(25,'Botswana'),(26,'Brazylia'),(27,'Brunei'),(28,'Bułgaria'),(29,'Burkina Faso'),(30,'Burundi'),(31,'Chile'),(32,'Chiny'),(33,'Chorwacja'),(34,'Cypr'),(35,'. Cypr Północny'),(36,'Czad'),(37,'Czarnogóra'),(38,'Czechy'),(39,'Dania'),(40,'Demokratyczna Republ'),(41,'Dominika'),(42,'Dominikana'),(43,'Dżibuti'),(44,'Egipt'),(45,'Ekwador'),(46,'Erytrea'),(47,'Estonia'),(48,'Etiopia'),(49,'Fidżi'),(50,'Filipiny'),(51,'Finlandia'),(52,'Francja'),(53,'Gabon'),(54,'Gambia'),(55,'Ghana'),(56,'. Górski Karabach'),(57,'Grecja'),(58,'Grenada'),(59,'Gruzja'),(60,'Gujana'),(61,'Gwatemala'),(62,'Gwinea'),(63,'Gwinea Bissau'),(64,'Gwinea Równikowa'),(65,'Haiti'),(66,'Hiszpania'),(67,'Holandia'),(68,'Honduras'),(69,'Indie'),(70,'Indonezja'),(71,'Irak'),(72,'Iran'),(73,'Irlandia'),(74,'Islandia'),(75,'Izrael'),(76,'Jamajka'),(77,'Japonia'),(78,'Jemen'),(79,'Jordania'),(80,'Kambodża'),(81,'Kamerun'),(82,'Kanada'),(83,'Katar'),(84,'Kazachstan'),(85,'Kenia'),(86,'Kirgistan'),(87,'Kiribati'),(88,'Kolumbia'),(89,'Komory'),(90,'Kongo'),(91,'Korea Południowa'),(92,'Korea Północna'),(93,'. Kosowo'),(94,'Kostaryka'),(95,'Kuba'),(96,'Kuwejt'),(97,'Laos'),(98,'Lesotho'),(99,'Liban'),(100,'Liberia'),(101,'Libia'),(102,'Liechtenstein'),(103,'Litwa'),(104,'Luksemburg'),(105,'Łotwa'),(106,'Macedonia'),(107,'Madagaskar'),(108,'Malawi'),(109,'Malediwy'),(110,'Malezja'),(111,'Mali'),(112,'Malta'),(113,'Maroko'),(114,'Mauretania'),(115,'Mauritius'),(116,'Meksyk'),(117,'Mikronezja'),(118,'Mołdawia'),(119,'Monako'),(120,'Mongolia'),(121,'Mozambik'),(122,'. Naddniestrze'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Niemcy'),(127,'Niger'),(128,'Nigeria'),(129,'Nikaragua'),(130,'Norwegia'),(131,'Nowa Zelandia'),(132,'Oman'),(133,'. Osetia Południowa'),(134,'Pakistan'),(135,'Panama'),(136,'Papua - Nowa Gwinea'),(137,'Paragwaj'),(138,'Peru'),(139,'Polska'),(140,'Portugalia'),(141,'Republika Południowe'),(142,'Republika Środkowoaf'),(143,'Republika Zielonego '),(144,'Rosja'),(145,'Rumunia'),(146,'Rwanda'),(147,'. Sahara Zachodnia'),(148,'Saint Kitts i Nevis'),(149,'Saint Lucia'),(150,'Saint Vincent i Gren'),(151,'Salwador'),(152,'Samoa'),(153,'San Marino'),(154,'Senegal'),(155,'Serbia'),(156,'Seszele'),(157,'Sierra Leone'),(158,'Singapur'),(159,'Słowacja'),(160,'Słowenia'),(161,'Somalia'),(162,'. Somaliland'),(163,'Sri Lanka'),(164,'Stany Zjednoczone'),(165,'Suazi'),(166,'Sudan'),(167,'. Sudan Południowy'),(168,'Surinam'),(169,'Syria'),(170,'Szwajcaria'),(171,'Szwecja'),(172,'Tadżykistan'),(173,'Tajlandia'),(174,'Tajwan'),(175,'Tanzania'),(176,'Timor Wschodni'),(177,'Togo'),(178,'Tonga'),(179,'Trynidad i Tobago'),(180,'Tunezja'),(181,'Turcja'),(182,'Turkmenistan'),(183,'Tuvalu'),(184,'Uganda'),(185,'Ukraina'),(186,'Urugwaj'),(187,'Uzbekistan'),(188,'Vanuatu'),(189,'Watykan'),(190,'Wenezuela'),(191,'Węgry'),(192,'Wielka Brytania'),(193,'Wietnam'),(194,'Włochy'),(195,'Wybrzeże Kości Słoni'),(196,'Wyspy Salomona'),(197,'Wyspy Świętego Tomas'),(198,'Zambia'),(199,'Zimbabwe'),(200,'Zjednoczone Emiraty '),(201,'Abchazja');
/*!40000 ALTER TABLE `Panstwa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PosiadaczeGry`
--

DROP TABLE IF EXISTS `PosiadaczeGry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PosiadaczeGry` (
  `idPosiadaczaGry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGry` int(10) unsigned NOT NULL,
  `idUzytkownika` int(10) unsigned NOT NULL,
  `dataZakupuGry` datetime NOT NULL,
  `wersjaGry` varchar(12) NOT NULL,
  PRIMARY KEY (`idPosiadaczaGry`),
  KEY `idGry` (`idGry`),
  KEY `idUzytkownika` (`idUzytkownika`),
  CONSTRAINT `FK_PosiadaczeGry_Uzytkownicy` FOREIGN KEY (`idUzytkownika`) REFERENCES `Uzytkownicy` (`idUzytkownika`),
  CONSTRAINT `FK_PosiadaczeGry_Gry` FOREIGN KEY (`idGry`) REFERENCES `Gry` (`idGry`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PosiadaczeGry`
--

LOCK TABLES `PosiadaczeGry` WRITE;
/*!40000 ALTER TABLE `PosiadaczeGry` DISABLE KEYS */;
INSERT INTO `PosiadaczeGry` VALUES (1,3,2,'2012-10-10 00:00:42','KRADZIONA'),(2,1,1,'2014-10-10 00:12:00','BETA'),(3,4,3,'2015-10-12 10:00:00','PREALPHA'),(4,2,3,'2012-11-10 11:00:23','BF4'),(5,2,1,'2012-11-10 11:00:23','BF4'),(6,2,2,'2012-11-10 11:00:23','BF4'),(7,3,2,'2012-10-10 00:00:42','KRADZIONA'),(8,1,1,'2014-10-10 00:12:00','BETA'),(9,4,3,'2015-10-12 10:00:00','PREALPHA'),(10,2,3,'2012-11-10 11:00:23','BF4'),(11,2,1,'2012-11-10 11:00:23','BF4'),(12,2,2,'2012-11-10 11:00:23','BF4');
/*!40000 ALTER TABLE `PosiadaczeGry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SesjeGry`
--

DROP TABLE IF EXISTS `SesjeGry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SesjeGry` (
  `idSesjiGry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGry` int(10) unsigned NOT NULL,
  `idUzytkownika` int(10) unsigned NOT NULL,
  `dataRozpoczeciaRozgrywki` datetime NOT NULL,
  `dataZakonczeniaRozgrywki` datetime DEFAULT NULL,
  PRIMARY KEY (`idSesjiGry`),
  KEY `idGry` (`idGry`),
  KEY `idUzytkownika` (`idUzytkownika`),
  CONSTRAINT `FK_SesjaGry_Uzytkownicy` FOREIGN KEY (`idUzytkownika`) REFERENCES `Uzytkownicy` (`idUzytkownika`),
  CONSTRAINT `FK_SesjaGry_Gry` FOREIGN KEY (`idGry`) REFERENCES `Gry` (`idGry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SesjeGry`
--

LOCK TABLES `SesjeGry` WRITE;
/*!40000 ALTER TABLE `SesjeGry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SesjeGry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SposobyPlatnosci`
--

DROP TABLE IF EXISTS `SposobyPlatnosci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SposobyPlatnosci` (
  `idSposobuPlatnosci` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaSposobuPlatnosci` varchar(25) NOT NULL,
  PRIMARY KEY (`idSposobuPlatnosci`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SposobyPlatnosci`
--

LOCK TABLES `SposobyPlatnosci` WRITE;
/*!40000 ALTER TABLE `SposobyPlatnosci` DISABLE KEYS */;
INSERT INTO `SposobyPlatnosci` VALUES (1,'PayPal'),(2,'DotPay'),(3,'Przelew bankowy'),(4,'SMS'),(5,'Portfel');
/*!40000 ALTER TABLE `SposobyPlatnosci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Statusy`
--

DROP TABLE IF EXISTS `Statusy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Statusy` (
  `idStatusu` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaStatusu` varchar(15) NOT NULL,
  PRIMARY KEY (`idStatusu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Statusy`
--

LOCK TABLES `Statusy` WRITE;
/*!40000 ALTER TABLE `Statusy` DISABLE KEYS */;
INSERT INTO `Statusy` VALUES (1,'Online'),(2,'Offline'),(3,'Gra'),(4,'Niewidoczny'),(5,'Zajęty'),(6,'Chcę pograć');
/*!40000 ALTER TABLE `Statusy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatystykiGracza`
--

DROP TABLE IF EXISTS `StatystykiGracza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatystykiGracza` (
  `idUzytkownika` int(10) unsigned NOT NULL,
  `idStatystykiGry` int(10) unsigned NOT NULL,
  `wartosc` int(11) NOT NULL,
  `idStatystykiGracza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idStatystykiGracza`),
  KEY `idUzytkownika` (`idUzytkownika`),
  KEY `FK_StatystykiGracza_StatystykiGry` (`idStatystykiGry`),
  CONSTRAINT `FK_StatystykiGracza_StatystykiGry` FOREIGN KEY (`idStatystykiGry`) REFERENCES `StatystykiGry` (`idStatystykiGry`),
  CONSTRAINT `FK_StatystykiGracza_Uzytkownicy` FOREIGN KEY (`idUzytkownika`) REFERENCES `Uzytkownicy` (`idUzytkownika`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatystykiGracza`
--

LOCK TABLES `StatystykiGracza` WRITE;
/*!40000 ALTER TABLE `StatystykiGracza` DISABLE KEYS */;
INSERT INTO `StatystykiGracza` VALUES (1,1,12321,1);
/*!40000 ALTER TABLE `StatystykiGracza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatystykiGry`
--

DROP TABLE IF EXISTS `StatystykiGry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatystykiGry` (
  `idStatystykiGry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGry` int(10) unsigned NOT NULL,
  `nazwaInformacji` varchar(50) NOT NULL,
  PRIMARY KEY (`idStatystykiGry`),
  KEY `idGry` (`idGry`),
  CONSTRAINT `FK_StatystykiGry_Gry` FOREIGN KEY (`idGry`) REFERENCES `Gry` (`idGry`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatystykiGry`
--

LOCK TABLES `StatystykiGry` WRITE;
/*!40000 ALTER TABLE `StatystykiGry` DISABLE KEYS */;
INSERT INTO `StatystykiGry` VALUES (1,3,'Raku Wiedzmistrz eliskirow'),(2,3,'Raku Wiedzmistrz eliskirow');
/*!40000 ALTER TABLE `StatystykiGry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SzczegolyGrupy`
--

DROP TABLE IF EXISTS `SzczegolyGrupy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SzczegolyGrupy` (
  `idSzczegoluGrupy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGrupy` int(10) unsigned NOT NULL,
  `idUzytkownika` int(10) unsigned NOT NULL,
  `dataDolaczenia` date NOT NULL,
  PRIMARY KEY (`idSzczegoluGrupy`),
  KEY `idGrupy` (`idGrupy`),
  KEY `idUzytkownika` (`idUzytkownika`),
  CONSTRAINT `FK_SzczegolyGrupy_Uzytkownicy` FOREIGN KEY (`idUzytkownika`) REFERENCES `Uzytkownicy` (`idUzytkownika`),
  CONSTRAINT `FK_SzczegolyGrupy_Grupa` FOREIGN KEY (`idGrupy`) REFERENCES `Grupy` (`idGrupy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SzczegolyGrupy`
--

LOCK TABLES `SzczegolyGrupy` WRITE;
/*!40000 ALTER TABLE `SzczegolyGrupy` DISABLE KEYS */;
INSERT INTO `SzczegolyGrupy` VALUES (1,1,1,'2015-01-14'),(2,1,2,'2015-01-15'),(3,1,3,'2015-01-15'),(4,2,1,'2015-11-15'),(5,2,2,'2015-11-14'),(6,3,3,'2115-01-14'),(7,3,2,'2115-01-14'),(8,1,1,'2015-01-14'),(9,1,2,'2015-01-15'),(10,1,3,'2015-01-15'),(11,2,1,'2015-11-15'),(12,2,2,'2015-11-14'),(13,3,3,'2115-01-14'),(14,3,2,'2115-01-14');
/*!40000 ALTER TABLE `SzczegolyGrupy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transakcje`
--

DROP TABLE IF EXISTS `Transakcje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transakcje` (
  `idTransakcji` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idGry` int(10) unsigned NOT NULL,
  `idSposobuPlatnosci` tinyint(3) unsigned NOT NULL,
  `idUzytkownika` int(10) unsigned NOT NULL,
  `kwota` float NOT NULL,
  PRIMARY KEY (`idTransakcji`),
  KEY `idGry` (`idGry`),
  KEY `idSposobuPlatnosci` (`idSposobuPlatnosci`),
  KEY `idUzytkownika` (`idUzytkownika`),
  CONSTRAINT `FK_Transakcje_Uzytkownicy` FOREIGN KEY (`idUzytkownika`) REFERENCES `Uzytkownicy` (`idUzytkownika`),
  CONSTRAINT `FK_Transakcje_Gry` FOREIGN KEY (`idGry`) REFERENCES `Gry` (`idGry`),
  CONSTRAINT `FK_Transakcje_SposobyPlatnosci` FOREIGN KEY (`idSposobuPlatnosci`) REFERENCES `SposobyPlatnosci` (`idSposobuPlatnosci`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transakcje`
--

LOCK TABLES `Transakcje` WRITE;
/*!40000 ALTER TABLE `Transakcje` DISABLE KEYS */;
INSERT INTO `Transakcje` VALUES (1,2,1,2,12),(2,2,2,3,10),(3,2,3,1,52),(4,2,1,2,12),(5,2,2,3,10),(6,2,3,1,52);
/*!40000 ALTER TABLE `Transakcje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uzytkownicy`
--

DROP TABLE IF EXISTS `Uzytkownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uzytkownicy` (
  `idUzytkownika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `haslo` varchar(64) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `czyAdministrator` tinyint(1) NOT NULL DEFAULT '0',
  `opis` text,
  `dataUrodzenia` date NOT NULL,
  `idWaluty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idStatusu` tinyint(3) unsigned NOT NULL,
  `dataZmianyStatusu` datetime DEFAULT NULL,
  `idPanstwa` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`idUzytkownika`),
  KEY `idPanstwa` (`idPanstwa`),
  KEY `idStatusu` (`idStatusu`),
  KEY `idWaluty` (`idWaluty`),
  CONSTRAINT `FK_Uzytkownicy_Waluta` FOREIGN KEY (`idWaluty`) REFERENCES `Waluty` (`idWaluty`),
  CONSTRAINT `FK_Uzytkownicy_Panstwa` FOREIGN KEY (`idPanstwa`) REFERENCES `Panstwa` (`idPanstwa`),
  CONSTRAINT `FK_Uzytkownicy_Statusy` FOREIGN KEY (`idStatusu`) REFERENCES `Statusy` (`idStatusu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uzytkownicy`
--

LOCK TABLES `Uzytkownicy` WRITE;
/*!40000 ALTER TABLE `Uzytkownicy` DISABLE KEYS */;
INSERT INTO `Uzytkownicy` VALUES (1,'doxus','60A5D3E4100FE8AFA5EE0103739A45711D50D7F3BA7280D8A95B51F5D04AA4B8','MegaPsychoKiller98',0,'Nic','1998-11-11',1,1,'2015-01-01 00:10:00',139),(2,'bsjhx','60A5D3E4100FE8AFA5EE0103739A45711D50D7F3BA7280D8A95B51F5D04AA4B8','Crejfisz',1,'Bazowiec','1999-11-11',2,3,'2015-01-01 00:00:00',139),(3,'jbx','60A5D3E4100FE8AFA5EE0103739A45711D50D7F3BA7280D8A95B51F5D04AA4B8','BarbulecKamulec',0,'DuzySzef','1994-11-11',4,6,'2015-01-01 00:04:50',139);
/*!40000 ALTER TABLE `Uzytkownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Waluty`
--

DROP TABLE IF EXISTS `Waluty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Waluty` (
  `idWaluty` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwaWaluty` varchar(8) NOT NULL,
  `przelicznikWzgledemEuro` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`idWaluty`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Waluty`
--

LOCK TABLES `Waluty` WRITE;
/*!40000 ALTER TABLE `Waluty` DISABLE KEYS */;
INSERT INTO `Waluty` VALUES (1,'PLN',1),(2,'EUR',1),(3,'GBP',1),(4,'USD',1);
/*!40000 ALTER TABLE `Waluty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wydawcy`
--

DROP TABLE IF EXISTS `Wydawcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wydawcy` (
  `idWydawcy` int(10) unsigned NOT NULL,
  `nazwaWydawcy` varchar(30) NOT NULL,
  `opisWydawcy` text,
  PRIMARY KEY (`idWydawcy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wydawcy`
--

LOCK TABLES `Wydawcy` WRITE;
/*!40000 ALTER TABLE `Wydawcy` DISABLE KEYS */;
INSERT INTO `Wydawcy` VALUES (1,'2K Games',''),(2,'Activision',''),(3,'Activision Blizzard',''),(4,'Akella',''),(5,'Atari, SA',''),(6,'Bandai Namco',''),(7,'Bethesda Softworks',''),(9,'Capcom',''),(10,'CD Projekt RED',''),(11,'Codemasters',''),(12,'Deep Silver',''),(13,'Eidos Interactive',''),(15,'Electronic Arts',''),(16,'GOD Games',''),(17,'Iceberg Interactive',''),(18,'JoWooD Productions',''),(19,'Koch Media',''),(20,'Konami',''),(21,'LucasArts',''),(22,'Maxis',''),(23,'Microsoft Game Studios',''),(24,'Namco',''),(25,'New World Computing',''),(26,'Nintendo',''),(27,'Paradox Interactive',''),(28,'Petroglyph Games',''),(29,'Red Storm Entertainment',''),(30,'Riot Games',''),(31,'Rockstar Games',''),(32,'Sega',''),(33,'Sony Computer Entertainment',''),(34,'Square Enix',''),(35,'Strategy First',''),(36,'THQ',''),(37,'Ubisoft',''),(38,'Valve Corporation',''),(39,'Wargaming.net',''),(40,'Warner Bros. Interactive',''),(41,'SNK Playmore','');
/*!40000 ALTER TABLE `Wydawcy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Znajomi`
--

DROP TABLE IF EXISTS `Znajomi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Znajomi` (
  `idZnajomosci` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUzytkownika1` int(10) unsigned NOT NULL,
  `idUzytkownika2` int(10) unsigned NOT NULL,
  `dataZawarciaZnajomosci` datetime NOT NULL,
  PRIMARY KEY (`idZnajomosci`),
  KEY `FK_Znajomi_Uzytkonicy1` (`idUzytkownika1`),
  KEY `FK_Znajomi_Uzytkonicy2` (`idUzytkownika2`),
  CONSTRAINT `FK_Znajomi_Uzytkonicy2` FOREIGN KEY (`idUzytkownika2`) REFERENCES `Uzytkownicy` (`idUzytkownika`),
  CONSTRAINT `FK_Znajomi_Uzytkonicy1` FOREIGN KEY (`idUzytkownika1`) REFERENCES `Uzytkownicy` (`idUzytkownika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Znajomi`
--

LOCK TABLES `Znajomi` WRITE;
/*!40000 ALTER TABLE `Znajomi` DISABLE KEYS */;
/*!40000 ALTER TABLE `Znajomi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-14 23:09:40
