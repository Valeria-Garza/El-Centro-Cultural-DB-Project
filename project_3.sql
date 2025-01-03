-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: project_3
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `ASSISTANCE_APP`
--

DROP TABLE IF EXISTS `ASSISTANCE_APP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSISTANCE_APP` (
  `AssistanceID` int NOT NULL,
  `DateApplied` date DEFAULT NULL,
  `ApprovalStatus` enum('Y','N') DEFAULT NULL,
  `MemID` int DEFAULT NULL,
  PRIMARY KEY (`AssistanceID`),
  KEY `MemID` (`MemID`),
  CONSTRAINT `ASSISTANCE_APP_ibfk_1` FOREIGN KEY (`MemID`) REFERENCES `COMMUNITY_MEM` (`MemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSISTANCE_APP`
--

LOCK TABLES `ASSISTANCE_APP` WRITE;
/*!40000 ALTER TABLE `ASSISTANCE_APP` DISABLE KEYS */;
INSERT INTO `ASSISTANCE_APP` VALUES (103570,'2022-06-24','Y',2),(123456,'2023-12-05','Y',19),(128358,'2022-09-02','Y',3),(167416,'2023-02-24','Y',7),(185347,'2023-04-29','Y',9),(198765,'2023-11-08','Y',16),(239485,'2022-05-15','Y',1),(309846,'2023-07-22','Y',12),(432189,'2023-10-12','Y',14),(459830,'2022-12-02','N',4),(543219,'2023-12-01','N',17),(572892,'2023-06-15','Y',11),(659132,'2023-05-30','Y',10),(765432,'2023-11-08','N',15),(785012,'2023-02-03','Y',6),(876540,'2023-12-01','Y',18),(876543,'2023-08-11','N',13),(938758,'2023-01-15','Y',5),(963214,'2023-03-02','Y',8);
/*!40000 ALTER TABLE `ASSISTANCE_APP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSISTANCE_ID`
--

DROP TABLE IF EXISTS `ASSISTANCE_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSISTANCE_ID` (
  `AssistanceID` int NOT NULL,
  `AssistanceType` varchar(31) NOT NULL,
  PRIMARY KEY (`AssistanceID`,`AssistanceType`),
  CONSTRAINT `ASSISTANCE_ID_ibfk_1` FOREIGN KEY (`AssistanceID`) REFERENCES `ASSISTANCE_APP` (`AssistanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSISTANCE_ID`
--

LOCK TABLES `ASSISTANCE_ID` WRITE;
/*!40000 ALTER TABLE `ASSISTANCE_ID` DISABLE KEYS */;
INSERT INTO `ASSISTANCE_ID` VALUES (103570,'Counseling'),(123456,'Counseling'),(128358,'Food Assistance'),(167416,'Housing Assistance'),(185347,'Utility Bill Assistance'),(198765,'Transportation Assistance'),(239485,'Medical Expense'),(309846,'Medical Expenses'),(432189,'Housing Assistance'),(459830,'Assistance with CHIP & Medicaid'),(543219,'Daycare Services'),(572892,'Job Placement'),(659132,'Food Assistance'),(765432,'Daycare Services'),(785012,'Job Placement'),(876540,'Food Assistance'),(876543,'Educational Support'),(938758,'Daycare Services'),(963214,'Educational Support');
/*!40000 ALTER TABLE `ASSISTANCE_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMMUNITY_MEM`
--

DROP TABLE IF EXISTS `COMMUNITY_MEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMUNITY_MEM` (
  `MemID` int NOT NULL,
  `MemFName` varchar(8) DEFAULT NULL,
  `MemLName` varchar(12) DEFAULT NULL,
  `MemGender` enum('M','F') DEFAULT NULL,
  `SocialSecurity` char(11) DEFAULT NULL,
  `MemDOB` date DEFAULT NULL,
  `MemZip` char(5) DEFAULT NULL,
  `NumOfDependents` int DEFAULT NULL,
  `IncLevel` int DEFAULT NULL,
  PRIMARY KEY (`MemID`),
  KEY `MemZip` (`MemZip`),
  KEY `NumOfDependents` (`NumOfDependents`),
  KEY `IncLevel` (`IncLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMMUNITY_MEM`
--

LOCK TABLES `COMMUNITY_MEM` WRITE;
/*!40000 ALTER TABLE `COMMUNITY_MEM` DISABLE KEYS */;
INSERT INTO `COMMUNITY_MEM` VALUES (1,'Maria','Lopez','F','128-83-6758','2000-05-15','78520',3,16000),(2,'Carlos','Ramirez','M','479-93-2914','1998-09-25','78501',2,14200),(3,'Ana','Vasques','F','570-28-5482','1992-02-12','78521',4,13920),(4,'David','Torres','M','478-68-1924','1989-03-21','78524',1,16470),(5,'Jasmin','Venegas','F','174-28-5829','1996-08-16','78550',5,21735),(6,'Michael','Rodriguez','M','690-25-2398','1990-02-18','78521',7,10000),(7,'Sophia','Pinales','F','567-89-0123','1982-06-10','78521',3,16000),(8,'Daniel','Reynolds','M','623-96-4547','1976-07-08','78501',1,28000),(9,'Noah','Chavez','M','542-74-3108','2010-05-06','78521',5,15000),(10,'Marcelo','Gamez','M','128-83-6759','2001-01-07','78520',3,18665),(11,'Jorge','Vilano','M','479-93-2915','1992-06-06','78520',5,18160),(12,'Johan','Rodriguez','M','570-28-5483','2004-05-03','78521',2,17660),(13,'George','De la Tejera','M','478-68-1925','2000-11-06','78520',4,17160),(14,'America','Alvarado','F','174-28-5830','1999-12-23','78520',3,16660),(15,'Emily','Santos','F','645-32-1987','1992-09-15','78521',2,16165),(16,'Carlos','Hernandez','M','328-47-5067','1985-03-08','78520',4,15665),(17,'Sophia','Martinez','F','215-76-3098','2000-07-19','78521',1,15165),(18,'Victor','Ramirez','M','419-58-7123','1996-02-14','78520',5,14660),(19,'Isabella','Gomez','F','586-21-9345','1998-06-02','78521',2,14160);
/*!40000 ALTER TABLE `COMMUNITY_MEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_INFO`
--

DROP TABLE IF EXISTS `EVENT_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_INFO` (
  `EventID` int NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `TypeOfEvent` varchar(22) DEFAULT NULL,
  `EventZip` char(5) DEFAULT NULL,
  `EventStreet` varchar(19) DEFAULT NULL,
  `OrgName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EventID`),
  KEY `fk_EventLocation` (`EventZip`),
  KEY `OrgName` (`OrgName`),
  CONSTRAINT `EVENT_INFO_ibfk_1` FOREIGN KEY (`OrgName`) REFERENCES `PARTNER_ORG` (`OrgName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_INFO`
--

LOCK TABLES `EVENT_INFO` WRITE;
/*!40000 ALTER TABLE `EVENT_INFO` DISABLE KEYS */;
INSERT INTO `EVENT_INFO` VALUES (100,'2023-01-01','2023-04-01','Educational Workshop','78521','E 6th St','Star Plus'),(101,'2023-02-01','2023-10-31','Job Fair','78521','1 Event Center','County of Cameron'),(102,'2023-03-01','2023-07-01','Health Fair','78521','191 E Price Rd','Community Development'),(103,'2023-06-01','2023-08-31','Summer Sports Camp','78521','1000 Sports Park','CC Food Distribution'),(104,'2023-07-01','2023-08-31','Summer Reading Program','78521','2600 Central Blvd','State of Texas'),(105,'2023-08-01','2023-09-30','Educational Seminar','78521','35 W Elizabeth St','Select Staff'),(106,'2023-09-01','2023-10-31','Career Development','78521','1 Event Center','Valley Baptist heart & vascular outreach services'),(107,'2023-11-01','2023-11-01','Diaper Giveaway','78521','34 Tony Gonzalez Dr','Valley Baptist Family Practice Residency'),(108,'2023-12-01','2023-12-07','Winter Coat Drive','78521','1254 E Tyler St','Cameron County Housing Authority'),(109,'2023-12-01','2023-12-15','Holiday Toy Drive','78521','2370 Frontage Rd','Cameron County Beach Patrol');
/*!40000 ALTER TABLE `EVENT_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_LOCATION`
--

DROP TABLE IF EXISTS `EVENT_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_LOCATION` (
  `EventZip` char(5) NOT NULL,
  `EventCity` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`EventZip`),
  CONSTRAINT `EVENT_LOCATION_ibfk_1` FOREIGN KEY (`EventZip`) REFERENCES `EVENT_INFO` (`EventZip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_LOCATION`
--

LOCK TABLES `EVENT_LOCATION` WRITE;
/*!40000 ALTER TABLE `EVENT_LOCATION` DISABLE KEYS */;
INSERT INTO `EVENT_LOCATION` VALUES ('78521','Brownsville');
/*!40000 ALTER TABLE `EVENT_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEM_ATTENDS`
--

DROP TABLE IF EXISTS `MEM_ATTENDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEM_ATTENDS` (
  `MemID` int NOT NULL,
  `EventID` int NOT NULL,
  `DateFulfilled` date DEFAULT NULL,
  `TypeOfServiceReceived` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`MemID`,`EventID`),
  KEY `EventID` (`EventID`),
  CONSTRAINT `MEM_ATTENDS_ibfk_1` FOREIGN KEY (`MemID`) REFERENCES `COMMUNITY_MEM` (`MemID`),
  CONSTRAINT `MEM_ATTENDS_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `EVENT_INFO` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEM_ATTENDS`
--

LOCK TABLES `MEM_ATTENDS` WRITE;
/*!40000 ALTER TABLE `MEM_ATTENDS` DISABLE KEYS */;
INSERT INTO `MEM_ATTENDS` VALUES (1,100,'2022-05-23','Educational Support'),(2,101,'2022-06-25','Employment'),(3,102,'2022-09-03','HealthCare Aid'),(4,103,'2022-10-01','Child Care'),(5,104,'2023-01-24','Educational Support'),(6,105,'2023-02-10','Educational Support'),(7,106,'2023-03-16','Employment'),(8,107,'2023-04-15','Child Care'),(9,108,'2023-05-05','Clothing Assistance'),(10,109,'2020-02-05','Child Care'),(11,100,'2021-04-09','Educational Support'),(12,101,'2023-08-04','Employment'),(13,102,'2023-09-04','HealthCare Aid'),(14,103,'2023-10-24','Child Care'),(15,104,'2023-11-01','Educational Support'),(16,105,'2023-11-12','Educational Support'),(17,106,'2023-11-21','Employment'),(18,107,'2023-12-01','Child Care'),(19,108,'2023-12-10','Clothing Assistance');
/*!40000 ALTER TABLE `MEM_ATTENDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEM_INCOME`
--

DROP TABLE IF EXISTS `MEM_INCOME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEM_INCOME` (
  `IncLevel` int DEFAULT NULL,
  `NumOfDependents` int DEFAULT NULL,
  `Hardship` varchar(6) DEFAULT NULL,
  KEY `IncLevel` (`IncLevel`),
  KEY `NumOfDependents` (`NumOfDependents`),
  CONSTRAINT `MEM_INCOME_ibfk_1` FOREIGN KEY (`IncLevel`) REFERENCES `COMMUNITY_MEM` (`IncLevel`),
  CONSTRAINT `MEM_INCOME_ibfk_2` FOREIGN KEY (`NumOfDependents`) REFERENCES `COMMUNITY_MEM` (`NumOfDependents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEM_INCOME`
--

LOCK TABLES `MEM_INCOME` WRITE;
/*!40000 ALTER TABLE `MEM_INCOME` DISABLE KEYS */;
INSERT INTO `MEM_INCOME` VALUES (16000,3,'Medium'),(14200,2,'Low'),(13920,4,'Medium'),(16470,1,'Low'),(21735,5,'High'),(10000,7,'High'),(16000,3,'Medium'),(28000,1,'Low'),(15000,5,'High'),(18665,3,'Medium'),(18160,5,'High'),(17660,2,'Low'),(17160,4,'High'),(16660,3,'Medium'),(16165,2,'Low'),(15665,4,'High'),(15165,1,'Low'),(14660,5,'High'),(14160,2,'Low');
/*!40000 ALTER TABLE `MEM_INCOME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEM_LOCATION`
--

DROP TABLE IF EXISTS `MEM_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEM_LOCATION` (
  `MemZip` char(5) NOT NULL,
  `MemCity` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`MemZip`),
  CONSTRAINT `MEM_LOCATION_ibfk_1` FOREIGN KEY (`MemZip`) REFERENCES `COMMUNITY_MEM` (`MemZip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEM_LOCATION`
--

LOCK TABLES `MEM_LOCATION` WRITE;
/*!40000 ALTER TABLE `MEM_LOCATION` DISABLE KEYS */;
INSERT INTO `MEM_LOCATION` VALUES ('78501','McAllen'),('78520','Brownsville'),('78521','Brownsville'),('78524','Brownsville'),('78550','Harlingen');
/*!40000 ALTER TABLE `MEM_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORGNAME_ORGTYPE`
--

DROP TABLE IF EXISTS `ORGNAME_ORGTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORGNAME_ORGTYPE` (
  `OrgName` varchar(40) NOT NULL,
  `OrgType` varchar(21) NOT NULL,
  PRIMARY KEY (`OrgName`,`OrgType`),
  CONSTRAINT `ORGNAME_ORGTYPE_ibfk_1` FOREIGN KEY (`OrgName`) REFERENCES `PARTNER_ORG` (`OrgName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORGNAME_ORGTYPE`
--

LOCK TABLES `ORGNAME_ORGTYPE` WRITE;
/*!40000 ALTER TABLE `ORGNAME_ORGTYPE` DISABLE KEYS */;
INSERT INTO `ORGNAME_ORGTYPE` VALUES ('Cameron County Beach Patrol','Employment'),('Cameron County Housing Authority','Housing'),('CC Food Distribution','Food Distribution'),('Community Development','Child Care'),('County of Cameron','HealthCare'),('Select Staff','Employment'),('Star Plus','Educational Support'),('State of Texas','Clothing Assistance'),('Valley Baptist Family Practice Residence','HealthCare Aid'),('Valley Baptist heart & vascular outreach','HealthCare Assistance');
/*!40000 ALTER TABLE `ORGNAME_ORGTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG_LOCATION`
--

DROP TABLE IF EXISTS `ORG_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG_LOCATION` (
  `Zip` char(5) NOT NULL,
  `City` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Zip`),
  CONSTRAINT `fk_OrgLocation` FOREIGN KEY (`Zip`) REFERENCES `PARTNER_ORG` (`Zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_LOCATION`
--

LOCK TABLES `ORG_LOCATION` WRITE;
/*!40000 ALTER TABLE `ORG_LOCATION` DISABLE KEYS */;
INSERT INTO `ORG_LOCATION` VALUES ('78520','Brownsville'),('78521','Brownsville'),('78550','Harlingen');
/*!40000 ALTER TABLE `ORG_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTNER_ORG`
--

DROP TABLE IF EXISTS `PARTNER_ORG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PARTNER_ORG` (
  `OrgName` varchar(50) NOT NULL,
  `OrgPhoneNum` char(13) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL,
  `StreetAddress` varchar(25) DEFAULT NULL,
  `OrgEmail` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`OrgName`),
  KEY `fk_OrgLocation` (`Zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTNER_ORG`
--

LOCK TABLES `PARTNER_ORG` WRITE;
/*!40000 ALTER TABLE `PARTNER_ORG` DISABLE KEYS */;
INSERT INTO `PARTNER_ORG` VALUES ('Cameron County Beach Patrol','(956)455-8727','78520','33174 State Park Road 100','michael.Johnson@co.cameron.tx.us'),('Cameron County Housing Authority','(956)541-9637','78520','65 Castellano Circle','mjmartinez@CCHatx.org'),('CC Food Distribution','(956)399-3075','78520','1102 S Commerce','annie.romero@outlook.com'),('Community Development','(956)472-2960','78521','4700 Rice Rd','alex.gutierres@outlook.com'),('County of Cameron','(956)339-3075','78521','35 Orange St','melissa.medrano@outlook.com'),('Select Staff','(956)778-3755','78520','N. Paredes line Road','MBaca@select-staff.com'),('Star Plus','(956)456-9723','78521','1925 Iowa St','araceli.guerrero02@outlook.com'),('State of Texas','(956)421-5531','78521','601 W Sesame Dr','norma.cavazos@outlook.com'),('Valley Baptist Family Practice Residence',NULL,NULL,NULL,NULL),('Valley Baptist Family Practice Residency','(956)389-2440','78550','222 Benwood st.','Ben.Her@valley.baptist.org'),('Valley Baptist heart & vascular outreach',NULL,NULL,NULL,NULL),('Valley Baptist heart & vascular outreach services','(956)389-1532','78521','2301 Please street','liza.gamez@valleybaptist.net');
/*!40000 ALTER TABLE `PARTNER_ORG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REP`
--

DROP TABLE IF EXISTS `REP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REP` (
  `RepEmail` varchar(32) NOT NULL,
  `RepFName` varchar(10) DEFAULT NULL,
  `RepLName` varchar(9) DEFAULT NULL,
  `RepPhoneNum` char(13) DEFAULT NULL,
  `OrgName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RepEmail`),
  KEY `OrgName` (`OrgName`),
  CONSTRAINT `REP_ibfk_1` FOREIGN KEY (`OrgName`) REFERENCES `PARTNER_ORG` (`OrgName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REP`
--

LOCK TABLES `REP` WRITE;
/*!40000 ALTER TABLE `REP` DISABLE KEYS */;
INSERT INTO `REP` VALUES ('alex.gutierres@outlook.com','Alex','Gutierres','(956)472-2960','Community Development'),('annie.romero@outlook.com','Annie','Romero','(956)399-3075','CC Food Distribution'),('araceli.guerrero02@outlook.com','Araceli','Guerrero','(956)456-9723','Star Plus'),('Ben.Her@valley.baptist.org','Benjamin','Hernandez','(956)389-2440','Valley Baptist Family Practice Residency'),('liza.gamez@valleybaptist.net','Liza','Gamez','(956)389-1532','Valley Baptist heart & vascular outreach services'),('MBaca@select-staff.com','Maria','Baca','(956)778-3755','Select Staff'),('melissa.medrano@outlook.com','Melissa','Medrano','(956)339-3075','County of Cameron'),('michael.Johnson@co.cameron.tx.us','Michael','Johnson','(956)455-8727','Cameron County Beach Patrol'),('mjmartinez@CCHatx.org','Maria Jane','Martinez','(956)541-9637','Cameron County Housing Authority'),('norma.cavazos@outlook.com','Norma','Cavazos','(956)421-5531','State of Texas');
/*!40000 ALTER TABLE `REP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REP_EXPERTISE`
--

DROP TABLE IF EXISTS `REP_EXPERTISE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REP_EXPERTISE` (
  `AreaOfExpertise` varchar(21) NOT NULL,
  `RepEmail` varchar(32) NOT NULL,
  PRIMARY KEY (`AreaOfExpertise`,`RepEmail`),
  KEY `RepEmail` (`RepEmail`),
  CONSTRAINT `REP_EXPERTISE_ibfk_1` FOREIGN KEY (`RepEmail`) REFERENCES `REP` (`RepEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REP_EXPERTISE`
--

LOCK TABLES `REP_EXPERTISE` WRITE;
/*!40000 ALTER TABLE `REP_EXPERTISE` DISABLE KEYS */;
INSERT INTO `REP_EXPERTISE` VALUES ('Child Care','alex.gutierres@outlook.com'),('Food Distribution','annie.romero@outlook.com'),('Educational Support','araceli.guerrero02@outlook.com'),('HealthCare Assistance','Ben.Her@valley.baptist.org'),('HealthCare Assistance','liza.gamez@valleybaptist.net'),('Employment','MBaca@select-staff.com'),('HealthCare Assistance','melissa.medrano@outlook.com'),('Employment','michael.Johnson@co.cameron.tx.us'),('Housing','mjmartinez@CCHatx.org'),('Clothing Assistance','norma.cavazos@outlook.com');
/*!40000 ALTER TABLE `REP_EXPERTISE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ID`
--

DROP TABLE IF EXISTS `RESOURCE_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_ID` (
  `ResourceID` int NOT NULL,
  `Type` varchar(21) DEFAULT NULL,
  `SubType` varchar(42) DEFAULT NULL,
  `Value` int DEFAULT NULL,
  `ResourceCondition` varchar(11) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `EventID` int DEFAULT NULL,
  PRIMARY KEY (`ResourceID`),
  KEY `EventID` (`EventID`),
  CONSTRAINT `RESOURCE_ID_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `EVENT_INFO` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ID`
--

LOCK TABLES `RESOURCE_ID` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ID` DISABLE KEYS */;
INSERT INTO `RESOURCE_ID` VALUES (12589647,'School Supplies','Backpacks',500,'New','2099-01-01',109),(13485678,'Food','Non-perishable Canned Foods',200,'Non-expired','2030-04-01',102),(46598101,'Supplies','Toys and Gifts',2500,'New','2099-01-01',109),(52497308,'Clothing','Winter Apparel',1500,'Used','2099-01-01',108),(56897012,'Medical Supplies','Informational Pamphlets and Glucose Meters',600,'New','2030-01-01',102),(78906543,'School Supplies','Notebooks and Pencils',300,'New','2099-01-01',109),(90135426,'Educational Resources','Books and Learning Materials',700,'New','2099-01-01',109),(90187564,'Medical Supplies','First Aid Kits',450,'New','2030-01-01',102);
/*!40000 ALTER TABLE `RESOURCE_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOL_EXPERTISE`
--

DROP TABLE IF EXISTS `VOL_EXPERTISE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOL_EXPERTISE` (
  `VolID` int NOT NULL,
  `AreaOfExpertise` varchar(19) NOT NULL,
  PRIMARY KEY (`VolID`,`AreaOfExpertise`),
  CONSTRAINT `VOL_EXPERTISE_ibfk_1` FOREIGN KEY (`VolID`) REFERENCES `VOL_ID` (`VolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOL_EXPERTISE`
--

LOCK TABLES `VOL_EXPERTISE` WRITE;
/*!40000 ALTER TABLE `VOL_EXPERTISE` DISABLE KEYS */;
INSERT INTO `VOL_EXPERTISE` VALUES (1,'Education'),(2,'Education'),(3,'Social Services'),(4,'Mentoring'),(5,'Counseling'),(6,'Legal'),(7,'Education'),(8,'Counseling'),(9,'Medical Services'),(10,'Employment Services'),(11,'Education'),(12,'Mentoring'),(13,'Counseling'),(14,'Legal'),(15,'Medical Services'),(16,'Employment Services'),(17,'Medical Services'),(18,'Counseling'),(19,'Mentoring'),(20,'Social Services');
/*!40000 ALTER TABLE `VOL_EXPERTISE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOL_ID`
--

DROP TABLE IF EXISTS `VOL_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOL_ID` (
  `VolID` int NOT NULL,
  `VolPhoneNum` char(13) DEFAULT NULL,
  `VolDOB` date DEFAULT NULL,
  `VolEmail` varchar(27) DEFAULT NULL,
  `VolFirstName` varchar(9) DEFAULT NULL,
  `VolLastName` varchar(11) DEFAULT NULL,
  `VolGender` enum('Male','Female') DEFAULT NULL,
  `VolStreet` varchar(14) DEFAULT NULL,
  `VolZip` int DEFAULT NULL,
  `Availability` varchar(10) DEFAULT NULL,
  `Grade` enum('A','B','C') DEFAULT NULL,
  PRIMARY KEY (`VolID`),
  KEY `VolZip` (`VolZip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOL_ID`
--

LOCK TABLES `VOL_ID` WRITE;
/*!40000 ALTER TABLE `VOL_ID` DISABLE KEYS */;
INSERT INTO `VOL_ID` VALUES (1,'(956)426-0191','1985-03-15','jonah.rodriguez@gmail.com','Johan','Rodriguez','Male','123 Main St',78521,'Weekends','A'),(2,'(956)122-4967','1993-01-05','laura.m93@gmail.com','Laura','Martinez','Female','456 Elm St',78521,'Evenings','A'),(3,'(956)502-6730','1980-08-08','hernandez.maria@outlook.com','Maria','Hernandez','Female','752 Oak St',78521,'Weekdays','A'),(4,'(956)784-0248','1984-04-09','amorales1@hotmail.com','Ana','Morales','Female','1200 Pine St',78521,'Weekends','B'),(5,'(956)092-1934','1995-03-05','rosa.irma@gmail.com','Rosa Irma','Irma','Female','1223 Saint ln',78521,'Weekdays','A'),(6,'(956)542-2995','1988-12-12','carlopez1988@gmail.com','Carlos','Lopez','Male','520 Birch Ln',78550,'Weekdays','A'),(7,'(956)363-2955','1987-06-14','mariana.r@yahoo.com','Mariana','Ramirez','Female','2669 Cedar Ave',78521,'Evenings','A'),(8,'(956)466-2394','1990-02-28','chavezjose01@outlook.com','Jose','Chavez','Male','1885 Simon Ave',78566,'Weekends','B'),(9,'(956)635-8855','1989-07-18','yolandadgarza@outlook.com','Yolanda','De la Garza','Female','265 Applewind',78521,'Weekdays','A'),(10,'(956)546-7436','1994-09-16','zuniga86luis@gmail.com','Luis','Zuniga','Male','4225 Palma Dr',78521,'Weekdays','A'),(11,'(956)442-2558','1980-10-08','danny.garcia1@yahoo.com','Daniel','Garcia','Male','2541 Tulip Ave',78572,'Evenings','A'),(12,'(956)876-5432','1987-04-03','gabriel.rod@gmail.com','Gabriel','Rodriguez','Male','1810 Up Dr',78596,'Weekend','A'),(13,'(956)832-4185','1996-09-22','isabella.mart@gmail.com','Isabella','Martinez','Female','1315 6th St',78552,'Weekdays','A'),(14,'(956)832-7491','1990-06-30','sophia.flores@gmail.com','Sophia','Flores','Female','23 Elm Ave',78589,'Weekdays','A'),(15,'(956)542-2274','1993-02-14','natalie.ramirez@yahoo.com','Natalie','Ramirez','Female','985 Lilac Ave',78521,'Evenings','A'),(16,'(956)445-2825','1988-12-07','torresalicia88@hotmail.com','Alicia','Torres','Female','523 Forest Ln',78521,'Weekdays','A'),(17,'(210)785-5147','1989-05-20','anderson.emily@gmail.com','Emily','Anderson','Female','1123 S 6th St',78521,'Weekends','A'),(18,'(956)771-8552','1985-09-10','cassy.m.morales@gmail.com','Cassandra','Morales','Female','63 Fisher Ave',78572,'Weekends','A'),(19,'(956)617-1746','1992-07-05','alexvargas1992@gmail.com','Alejandro','Vargas','Male','4974 Milpa Dr',78577,'Evenings','A'),(20,'(832)541-2579','1993-10-15','h.cruz01@yahoo.com','Hector','Cruz','Male','625 Boca Blvd',78521,'Weekends','B');
/*!40000 ALTER TABLE `VOL_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOL_LOCATION`
--

DROP TABLE IF EXISTS `VOL_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOL_LOCATION` (
  `VolZip` int NOT NULL,
  `VolCity` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`VolZip`),
  CONSTRAINT `fk_VolId` FOREIGN KEY (`VolZip`) REFERENCES `VOL_ID` (`VolZip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOL_LOCATION`
--

LOCK TABLES `VOL_LOCATION` WRITE;
/*!40000 ALTER TABLE `VOL_LOCATION` DISABLE KEYS */;
INSERT INTO `VOL_LOCATION` VALUES (78521,'Brownsville'),(78550,'Harlingen'),(78566,'Los Fresnos');
/*!40000 ALTER TABLE `VOL_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOL_ROLE`
--

DROP TABLE IF EXISTS `VOL_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOL_ROLE` (
  `VolID` int NOT NULL,
  `EventID` int NOT NULL,
  `Hours` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Role` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`VolID`,`EventID`),
  KEY `EventID` (`EventID`),
  CONSTRAINT `VOL_ROLE_ibfk_1` FOREIGN KEY (`VolID`) REFERENCES `VOL_ID` (`VolID`),
  CONSTRAINT `VOL_ROLE_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `EVENT_INFO` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOL_ROLE`
--

LOCK TABLES `VOL_ROLE` WRITE;
/*!40000 ALTER TABLE `VOL_ROLE` DISABLE KEYS */;
INSERT INTO `VOL_ROLE` VALUES (1,100,48,'2022-03-15','Tutor'),(2,101,20,'2022-06-08','Guide'),(3,102,15,'2022-09-05','Guide'),(4,103,40,'2022-11-20','Camp Counselor'),(5,104,24,'2023-01-10','Counselor'),(6,105,22,'2023-04-03','Guide'),(7,106,10,'2023-07-17','Guide'),(8,107,15,'2023-10-12','Inventory Manager'),(9,108,25,'2023-12-01','Inventory Manager'),(10,109,48,'2023-02-28','Inventory Manager'),(11,100,45,'2022-03-15','Tutor'),(12,101,54,'2022-06-08','Guide'),(13,102,73,'2022-09-05','Guide'),(14,103,46,'2022-11-20','Camp Counselor'),(15,104,27,'2023-01-10','Counselor'),(16,105,48,'2023-04-03','Guide'),(17,106,36,'2023-07-17','Guide'),(18,107,36,'2023-10-12','Inventory Manager'),(19,108,53,'2023-12-01','Inventory Manager'),(20,109,23,'2023-02-28','Inventory Manager');
/*!40000 ALTER TABLE `VOL_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 23:03:30
