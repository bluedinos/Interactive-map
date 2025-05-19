-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: cmpdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `street_name` text,
  `house_number` text,
  `zip_code` text,
  `locality_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Berenkoog','32','1822 BJ',1),(2,'Robbenkoog','20','1822 BB',1),(3,'Robbenkoog','2','1822 BB',1),(4,'Walruskoog','6','1822 BC',1),(5,'Berenkoog','25','1822 BH',1),(6,'Vossenkoog','10','1822 BG',1),(7,'Marterkoog','15','1822 BL',1),(8,'Berenkoog','31','1822 BH',1),(9,'Professor van der Waalsstraat','3','1821 BT',1),(10,'Berenkoog','87','1822 BN',1),(11,'Lemmingkoog','5','1822 BR',1),(12,'Otterkoog','1','1822 BW',1),(13,'Wolvenkoog','1','1822 BE',1),(14,'Robbenkoog','29','1822 BA',1),(15,'Vossenkoog','6','1822 BG',1),(16,'Marterkoog','5','1822 BK',1),(17,'Fnidsen','72','1811 NH',1),(18,'Koelmalaan','55','1812 PR',1),(19,'Kitmanstraat','3','1812 PL',1),(20,'Kitmanstraat','7-A','1812 PL',1),(21,'Ivoorstraat','19','1812 RE',1),(22,'Fluorietweg','32','1812 RR',1),(23,'Fluorietweg','38','1812 RR',1),(24,'Fluorietweg','35','1812 RR',1),(25,'Diamantweg','1','1812 RC',1),(26,'Fluorietweg','29','1812 RR',1),(27,'Ivoorstraat','15','1812 RE',1),(28,'Jadestraat','1','1812 RD',1),(29,'Robijnstraat','3','1812 RB',1),(30,'Toermalijnstraat','7','1812 RL',1),(31,'Boekelerdijk','13-A','1812 LV',1),(32,'Ivoorstraat','8','1812 RE',1),(33,'Boekelerdijk','13','1812 LV',1),(34,'Diamantweg','38','1812 RC',1),(35,'Smaragdweg','3','1812 RJ',1),(36,'Boekelerdijk','13','1812 LV',1),(37,'Smaragdweg','3','1812 RJ',1),(38,'Toermalijnstraat','4','1812 RL',1),(39,'De Droogmakerij','26','1851 LX',2),(40,'Toermalijnstraat','5','1812 RM',1),(41,'Saffierstraat','3','1812 RM',1),(42,'Diamantweg','8','1812 RC',1),(43,'Pyrietstraat','2','1812 SC',1),(44,'Bordewijkstraat','10','1822 JB',1),(45,'Toermalijnstraat','18','1812 RL',1),(46,'Havinghastraat','66-L','1817 DA',1),(47,'Jan Ligthartstraat','11b','1817 MR',1),(48,'Edisonweg','5','1821 BN',1),(49,'Noorderkade','1027','1823 JC',1),(50,'Noorderkade','1027','1823 JA',1),(51,'Parelweg','6','1812 RS',1),(52,'Nijverheidsweg','8','1851 NW',2),(53,'De Oude Werf','10','1851 PW',2),(54,'De Hoefsmid','29','1851 PZ',2),(55,'De Droogmakerij','37a','1851 LX',2),(56,'Het Gemaal','2','1851 LW',2),(57,'Koolmand','3','1724 BC',3),(58,'Praam','6','1724 BE',3),(59,'Koolmand','9','1724 BC',3),(60,'Vlet','10','1724 BM',3),(61,'Kantbeugel','2','1724 BH',3),(62,'Berrie','1','1724 BB',3),(63,'Schuit','14','1724 BD',3),(64,'Boezemschop','8','1724 BJ',3),(65,'Koolmand','1','1724 BC',3),(66,'Kantbeugel','6','1724 BH',3),(67,'Praam','9','1724 BE',3),(68,'Lorrie','9','1724 BL',3),(69,'praam','7H','1724 BE',3),(70,'Praam','4A','1724 BE',3),(71,'Praam','4','1724 BE',3),(72,'Praam','4d','1724 BD',3),(73,'Kantbeugel','2','1724 BH',3),(74,'Vlet','1','1724 BM',3),(75,'Marconistraat','31','1704 RH',4),(76,'Marconistraat','26','1704 RG',4),(77,'Newtonstraat','46','1704 SB',4),(78,'Coulombstraat','8','1704 SP',4),(79,'Celsiusstraat','27-29','1704 RX',4),(80,'James Wattstraat','12','1704 RR',4),(81,'Bijlestaal','52','1721 PW',5),(82,'Grotendorst','1','1721 CW',5),(83,'Weg Over de Bisschop','1B','1934 CS',6),(84,'Lamoraalweg','82','1934 CB',6),(85,'Castricummer Werf','40','1901 RV',7),(86,'Castricummer Werf','61','1901 RV',7),(87,'Maatlat','40','1906 BL',8),(88,'Castricummer Werf','75','1901 RV',7),(89,'Geesterduin','31','1902 EJ',7),(90,'De Bloemen','71','1902 GT',7),(91,'Castricummer Werf','1','1901 RW',7),(92,'Pieter Kieftstraat','20','1902 RA',7),(93,'Maelsonstraat','24','1624 NP',9),(94,'Castricummer Werf','84','1901 RT',7),(95,'Castricummer Werf','65','1901 RV',7),(96,'Castricummer Werf','65','1901 RV',7),(97,'Castricummer Werf','136','1901 RS',7),(98,'Castricummer Werf','110a','1901 RS',7),(99,'Castricummer Werf','18','1901 RW',7),(100,'Oude Haarlemmerweg','77a','1901 ND',7),(101,'Oude Haarlemmerweg','77a','1901 ND',7),(102,'Castricummer Werf','71','1901 RV',7),(103,'Castricummer Werf','','1901 RV',7),(104,'Castricummer Werf','77','1901 RV',7),(105,'Castricummer Werf','22','1901 RW',7),(106,'Castricummer Werf','90','1901 RT',7),(107,'Oude Haarlemmerweg','75','1901 ND',7),(108,'Castricummer Werf','31','1901 RV',7),(109,'Castricummer Werf','39','1901 RV',7),(110,'Bleumerweg','20','1901 MJ',7),(111,'Castricummer Werf','22','1901 RW',7),(112,'Van Speykkade','9','1901 XA',7),(113,'Achterlaan','24','1901 MH',7),(114,'Castricummer Werf','40','1901 RV',7),(115,'Castricummer Werf','','1901 RV',7);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Stemar Engineering',4.785,52.647,1),(2,'Hörmann Alkmaar BV',47.846,526.424,2),(3,'Gomes Noord-Holland B.V.',4.779,52.642,3),(4,'Kesselaar & Zn',47.868,526.46,4),(5,'Nitta Corporation of Holland B.V.',47.834,526.458,5),(6,'Hr Techniek',47.841,526.438,6),(7,'Topjoynt B.V.',47.886,526.476,7),(8,'Egmond Plastic B.V.',47.85,526.475,8),(9,'Professor van der Waalsstraat 3',47.703,526.252,9),(10,'Ubbink Garden B.V.',4.796,526.566,10),(11,'Van Til Interieur B.V.',47.912,526.514,11),(12,'RAVO B.V.',47.926,526.538,12),(13,'Vriesia',47.82,526.429,13),(14,'\'T Hekeltje Rental BV',47.854,526.454,14),(15,'Sunergetic B.V.',4.783,526.441,15),(16,'Sunergetic',47.868,52.648,16),(17,'Piet Peperkamp',47.508,526.309,17),(18,'C.A. de Groot Groep BV',47.648,526.182,18),(19,'S & B International Industriële Borstels',47.632,526.202,19),(20,'INCO | Totaalinstallateur',47.642,526.202,20),(21,'Bouwmaat Alkmaar',47.527,52.61,21),(22,'HAIL Europe BV',47.401,525.975,22),(23,'Stad Alkmaar Logistics',47.423,525.942,23),(24,'Sarawak Nederland',47.388,525.999,24),(25,'KOKS Group bv',47.589,526.127,25),(26,'Indutecc Renewable Solutions',47.379,5.26,26),(27,'Dutch Bakery Group B.V.',47.536,52.611,27),(28,'Bedrijvenvereniging Boekelermeer',47.621,526.098,28),(29,'Uniserver',47.578,526.159,29),(30,'Solar Netherlands B.V.',47.427,526.051,30),(31,'Sortiva B.V.',47.616,526.019,31),(32,'Sortiva BV',47.549,526.108,32),(33,'Sortiva/GP Groot',4.761,52.602,33),(34,'InVesta Expertise Centrum',47.514,525.963,34),(35,'Schot Alkmaar Holding B.V.',47.55,526.09,35),(36,'GP Groot - collection and recycling B.V.',4.761,52.602,36),(37,'Groene BouwKracht',47.551,526.092,37),(38,'Dobber Healthcare Leaflets B.V.',47.47,52.608,38),(39,'Echte Bakker Firma Piet Kerssens BV',47.472,525.91,39),(40,'ERIKS Nederland',47.455,526.067,40),(41,'ERIKS Servicecenter Alkmaar',47.437,526.069,41),(42,'Eriks',47.558,526.059,42),(43,'Technobis',47.401,525.983,43),(44,'Adviesbureau Dingerdis',47.726,526.496,44),(45,'Nedvice B.V.',47.375,526.469,45),(46,'Bureau Endemica',47.395,526.477,46),(47,'Fa. Liefting Groothandel AGF',47.278,526.467,47),(48,'Aannemersbedrijf A.M.G. Bouw B.V.',4.769,526.265,48),(49,'Ringers',47.487,526.356,49),(50,'Ringersfabriek',47.495,526.35,50),(51,'Leon Pater Vastgoed',4.741,52.609,51),(52,'Vakgarage Zander',47.047,525.892,52),(53,'CiRoPack bv',47.203,525.932,53),(54,'Erkamp Projectservice BV',47.186,525.918,54),(55,'Webreturn - Web Design & Online Marketing',47.497,525.904,55),(56,'Kaptein',47.416,525.912,56),(57,'YONGLI Belting Europe',47.842,527.034,57),(58,'A.K.F.I. B.V.',47.793,527.046,58),(59,'ID Light',47.855,527.036,59),(60,'Houtindustrie Stam & Landman BV.',47.835,527.074,60),(61,'Vakgarage Hink',47.787,527.05,61),(62,'A.N.Boekel Handel B.V.',47.823,527.024,62),(63,'Visual Impact',47.837,527.042,63),(64,'NewDealSeals B.V.',47.85,527.064,64),(65,'Installatiebedrijf Van der Poll B.V.',47.83,527.031,65),(66,'Microtherm | Kunststof CNC Verspaning',47.804,527.052,66),(67,'ID OILTOOLS B.V.',47.782,527.045,67),(68,'InnoVfoam',47.787,527.078,68),(69,'Auto Alkmaar',47.781,527.041,69),(70,'Autopoetsbedrijf in Alkmaar | Autolak Repair Alkmaar',47.791,527.043,70),(71,'Garage Boerebach',4.779,527.043,71),(72,'thl autogarage',47.791,52.704,72),(73,'Vakgarage Hink',47.787,527.05,73),(74,'GoodLife Foods Oudkarspel',47.852,527.052,74),(75,'Auto Center Heerhugowaard',48.336,526.844,75),(76,'Burg Azijn B.V.',48.345,526.821,76),(77,'Nic. Oud',48.342,526.949,77),(78,'Bouwbedrijf Ted Groot',48.369,526.878,78),(79,'Carteam Autoservice Zandhorst | APK, Auto Onderhoud en Autoservice',48.309,526.855,79),(80,'Multiparken | Heerhugowaard',48.3,526.811,80),(81,'Muller Massage (gevestigd op het Zorgplein Zuiderdel)',47.934,526.777,81),(82,'Van den Heerik Beheer Maatschappij B.V.',47.995,526.782,82),(83,'Brouwerij Egmond - Brouwer van Sancti Adalberti abdijbieren -',46.562,526.195,83),(84,'Eco Office',46.556,526.201,84),(85,'Mondial Aad de Wit Verhuizingen (Verhuisbedrijf)',46.653,525.408,85),(86,'Autobedrijf Castricum',4.664,52.54,86),(87,'Beentjes Bloemen',46.993,525.777,87),(88,'Beentjes Groentebroers',46.638,525.415,88),(89,'Beentjes Groentebroers',46.745,525.506,89),(90,'Beentjes Judo - Sport Castricum',46.848,525.515,90),(91,'AC Borst Bouw BV',46.641,52.539,91),(92,'Bonhoeffercollege',46.674,525.411,92),(93,'Talland College Hoorn',50.512,526.475,93),(94,'Full of Life Castricum',46.629,525.413,94),(95,'BAKKER vastgoed en Onderhoudsbedrijf bv',46.645,525.409,95),(96,'Glas- en Isolatiebedrijf Johan Bakker',46.671,525.479,96),(97,'Interdesign keukens',4.663,52.539,97),(98,'J.J.M. de Ridder Holding B.V.',46.634,525.406,98),(99,'O.J. Borst Machinefabriek B.V.',46.651,525.398,99),(100,'Ford Martijn Kooijman Castricum',46.591,52.538,100),(101,'Vakgarage Martijn Kooijman Castricum',46.594,5.253,101),(102,'Castricum helps Muttathara',46.645,525.412,102),(103,'Poetscentrale Castricum',46.646,525.399,103),(104,'Rob van der Loos Kozijnen',46.638,525.415,104),(105,'Liefting Schermer Auto\'s B.V.',4.665,525.4,105),(106,'Sound Rent',46.635,525.411,106),(107,'Tromp Medical Engineering B.V.',46.602,525.388,107),(108,'Weda schilders Castricum',46.647,525.403,108),(109,'Woonstudio Op de Werf',46.638,525.403,109),(110,'Woest & Roest',46.586,525.67,110),(111,'Liefting Schermer Auto\'s B.V.',4.665,525.4,111),(112,'Elektro Exklusief',46.687,525.589,112),(113,'Schermer Hoveniers',46.58,525.651,113),(114,'Mondial Aad de Wit Verhuizingen (Verhuisbedrijf)',46.653,525.408,114),(115,'Mondial Movers',46.65,525.41,115);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locality` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `locality_name` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
INSERT INTO `locality` VALUES (1,'Alkmaar'),(2,'Heiloo'),(3,'Oudkarspel'),(4,'Heerhugowaard'),(5,'Broek op Langedijk'),(6,'Egmond aan den Hoef'),(7,'Castricum'),(8,'Limmen'),(9,'Hoorn');
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07  1:15:47


-- Custom migration: move address columns into company

ALTER TABLE company
ADD COLUMN street_name TEXT,
ADD COLUMN house_number TEXT,
ADD COLUMN zip_code TEXT,
ADD COLUMN locality_id INT;


UPDATE company
JOIN address ON company.address_id = address.id
SET
  company.street_name = address.street_name,
  company.house_number = address.house_number,
  company.zip_code = address.zip_code,
  company.locality_id = address.locality_id;


ALTER TABLE company DROP COLUMN address_id;
DROP TABLE address;

