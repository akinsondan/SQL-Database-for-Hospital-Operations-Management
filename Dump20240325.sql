CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission` (
  `admission_id` varchar(255) NOT NULL,
  `lab_report_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `nurse_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`admission_id`),
  KEY `lab_report_id` (`lab_report_id`),
  KEY `patient_id` (`patient_id`),
  KEY `nurse_id` (`nurse_id`),
  CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`lab_report_id`) REFERENCES `lab_report` (`lab_report_id`),
  CONSTRAINT `admission_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `admission_ibfk_3` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`nurse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES ('AD01','LR01','P01','N01','2023-09-22','15:30:00'),('AD02','LR03','P03','N02','2023-09-23','12:58:00'),('AD03','LR06','P06','N03','2023-11-16','17:59:00'),('AD04','LR07','P07','N04','2023-11-22','11:37:00'),('AD05','LR08','P08','N05','2023-11-26','11:18:00'),('AD06','LR10','P10','N06','2023-11-30','11:14:00'),('AD07','LR13','P13','N07','2023-11-30','16:44:00'),('AD08','LR14','P14','N08','2023-11-30','08:43:00'),('AD09','LR15','P15','N09','2023-12-02','17:13:00'),('AD10','LR17','P17','N10','2023-12-03','18:11:00');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `consultation_id` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`consultation_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `consultation_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
INSERT INTO `consultation` VALUES ('C01','D01','P01','2023-09-22','15:10:00'),('C02','D02','P02','2023-09-22','13:30:00'),('C03','D03','P03','2023-09-23','12:50:00'),('C04','D04','P04','2023-09-29','10:00:00'),('C05','D05','P05','2023-10-16','09:45:00'),('C06','D06','P06','2023-11-16','17:40:00'),('C07','D07','P07','2023-11-22','11:20:00'),('C08','D08','P08','2023-11-26','11:00:00'),('C09','D09','P09','2023-11-30','10:10:00'),('C10','D10','P10','2023-11-30','11:00:00'),('C11','D11','P11','2023-11-30','17:30:00'),('C12','D12','P12','2023-11-30','17:40:00'),('C13','D01','P13','2023-11-30','16:30:00'),('C14','D02','P14','2023-11-30','08:30:00'),('C15','D03','P15','2023-12-02','17:00:00'),('C16','D04','P16','2023-12-02','15:20:00'),('C17','D05','P17','2023-12-03','18:00:00'),('C18','D06','P18','2023-12-04','09:20:00'),('C19','D07','P19','2023-12-08','17:20:00'),('C20','D08','P20','2023-12-08','14:40:00'),('C21','D09','P21','2023-12-09','11:50:00'),('C22','D10','P22','2023-12-11','14:40:00'),('C23','D11','P23','2023-12-13','09:30:00'),('C24','D12','P24','2023-12-13','09:30:00'),('C25','D01','P25','2023-12-14','11:50:00'),('C26','D02','P26','2023-12-17','08:20:00'),('C27','D03','P27','2023-12-17','16:50:00'),('C28','D04','P28','2023-12-18','17:40:00'),('C29','D05','P29','2023-12-19','16:00:00'),('C30','D06','P30','2023-12-19','08:15:00'),('C31','D07','P31','2023-12-20','14:30:00'),('C32','D08','P01','2023-12-20','12:30:00'),('C33','D09','P02','2023-12-20','15:30:00'),('C34','D10','P03','2023-12-20','16:03:00'),('C35','D11','P04','2023-12-22','16:30:00'),('C36','D12','P05','2023-12-22','17:40:00'),('C37','D01','P06','2023-12-25','17:20:00'),('C38','D02','P07','2023-12-26','14:40:00'),('C39','D03','P08','2023-12-27','11:50:00'),('C40','D04','P09','2023-12-28','09:30:00');
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` varchar(255) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D01','S01'),('D02','S02'),('D03','S03'),('D04','S04'),('D05','S05'),('D06','S06'),('D07','S07'),('D08','S08'),('D09','S09'),('D10','S10'),('D11','S11'),('D12','S12'),('D13','S13'),('D14','S14');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_contact`
--

DROP TABLE IF EXISTS `emergency_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency_contact` (
  `contact_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `emergency_contact_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_contact`
--

LOCK TABLES `emergency_contact` WRITE;
/*!40000 ALTER TABLE `emergency_contact` DISABLE KEYS */;
INSERT INTO `emergency_contact` VALUES ('EC01','P01','Clementine','Middleton','7','Del Mar','Aldham','suffolk','IP7 6QG','07193 266405','magna.sed.eu@outlook.edu','Daughter'),('EC02','P02','Alisa','Myers','47','Fallview','Badingham Road','suffolk','IP13 8HU','07624 097341','eget.laoreet.posuere@hotmail.couk','Daughter'),('EC03','P03','Macon','Buckley','63','Cottonwood','Badingham','suffolk','IP8 4FL','070 7876 6113','non.enim@protonmail.edu','Son'),('EC04','P04','Abdul','Mclean','22','Columbus','Ipswich','suffolk','IP4 3HN','076 5781 2102','at.pede.cras@icloud.couk','Son'),('EC05','P05','Hadassah','Mayer','94','Eagan','Needham Market','suffolk','IP6 8DS','076 1174 9884','etiam.gravida@google.couk','Daughter'),('EC06','P06','Shad','Harvey','76','Green Ridge','Harkstead Road','suffolk','IP9 2RG','070 2918 7186','laoreet.libero.et@icloud.net','Son'),('EC07','P07','Breanna','Sykes','46','Golf','Framsden','suffolk','IP14 6HG','070 0560 4466','eros.nam@icloud.edu','Daughter'),('EC08','P08','Portia','Short','37','Judy','Thetford','suffolk','IP24 1UB','07624 912433','donec.tempus.lorem@hotmail.couk','Daughter'),('EC09','P09','Kareem','Carney','78','Village','Monk Soham','suffolk','IP13 7EP','070 1109 7608','lacinia.vitae@aol.edu','Son'),('EC10','P10','Buckminster','Lucas','35','Judy','Ipswich','suffolk','IP2 9SX','076 2233 3155','libero.mauris.aliquam@icloud.ca','Son'),('EC11','P11','Craig','Hartman','7','Di Loreto','Bury St. Edmunds','suffolk','IP32 6LW','07291 541016','fringilla.euismod@google.edu','Son'),('EC12','P12','Mason','Petersen','5','Corscot','Felixstowe','suffolk','IP11 9LD','070 4711 5083','molestie@protonmail.com','Son'),('EC13','P13','Brock','Adkins','52','Loomis','Ipswich','suffolk','IP1 2NL','076 8457 5942','non.lobortis.quis@aol.ca','Father'),('EC14','P14','Sandra','Blackburn','54','Derek','Felixstowe','suffolk','IP11 7RA','076 4656 5904','ornare.elit@yahoo.com','Mother'),('EC15','P15','Gil','Hood','5','Westridge','Harleston','suffolk','IP20 9DD','07678 371067','imperdiet@outlook.couk','Father'),('EC16','P16','Vanna','Castillo','7','Jay','Ipswich','suffolk','IP2 8SN','07624 591775','imperdiet.ornare@yahoo.edu','Father'),('EC17','P17','Burke','Blake','97','Union','Monks Eleigh','suffolk','IP7 7AA','076 3857 9657','ipsum.cursus@protonmail.org','Father'),('EC18','P18','Sonia','Marsh','5','Brown','Ipswich','suffolk','IP1 5DF','076 6576 5819','nonummy@aol.edu','Father'),('EC19','P19','Wanda','Mays','5','Clove','Ipswich','suffolk','IP1 5PY','07624 118046','per@yahoo.couk','Mother'),('EC20','P20','Piper','Petty','37','Pine View','Ipswich','suffolk','IP4 4SH','076 9118 3147','est.tempor@yahoo.edu','Mother'),('EC21','P21','Leandra','Mccoy','5','Summer Ridge','Church Close','suffolk','IP10 0DU','07624 635253','enim@google.com','Father'),('EC22','P22','Mannix','Hogan','44','Summer Ridge','Rushmere St Andrew','suffolk','IP5 1AU','076 8157 4104','suspendisse.aliquet@yahoo.com','Mother'),('EC23','P23','Janna','Zamora','0','Sherman','Mildenhall','suffolk','IP28 7QZ','070 2695 0950','dolor.egestas@aol.edu','Mother'),('EC24','P24','Lewis','Mclean','67','Nobel','Brick Lane','suffolk','IP13 9LQ','07377 375864','eu.euismod.ac@protonmail.com','Mother'),('EC25','P25','India','Navarro','59','Monterey','Felixstowe','suffolk','IP11 2FJ','070 2644 5259','eu.ligula.aenean@icloud.couk','Father'),('EC26','P26','Felix','Chen','77','Vernon','Woodbridge','suffolk','IP12 1EH','07624 243776','sed.consequat.auctor@protonmail.couk','Father'),('EC27','P27','Wylie','Wood','87','Scofield','Kesgrave','suffolk','IP5 2DA','07624 325486','convallis.convallis.dolor@yahoo.couk','Father'),('EC28','P28','Laith','Daniel','27','Maryland','Ipswich','suffolk','IP1 4BP','07624 385228','libero.at.auctor@outlook.org','Mother'),('EC29','P29','Mohammad','Mckee','5','Drewry','Wetherden Road','suffolk','IP30 9DG','07442 516230','consectetuer@yahoo.net','Mother'),('EC30','P30','Chester','Herring','7','Service','Norton','suffolk','IP31 3QR','07624 274887','at.lacus@yahoo.ca','Mother'),('EC31','P31','Gavin','Alston','5','Lawn','Ipswich','suffolk','IP2 9NA','076 6324 4583','in@google.couk','Father');
/*!40000 ALTER TABLE `emergency_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_report`
--

DROP TABLE IF EXISTS `lab_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_report` (
  `lab_report_id` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `doctor_decision` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`lab_report_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `lab_report_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `lab_report_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_report`
--

LOCK TABLES `lab_report` WRITE;
/*!40000 ALTER TABLE `lab_report` DISABLE KEYS */;
INSERT INTO `lab_report` VALUES ('LR01','D01','P01','in','2023-09-22','15:20:00'),('LR02','D02','P02','out','2023-09-22','14:01:00'),('LR03','D03','P03','in','2023-09-23','12:56:00'),('LR04','D04','P04','out','2023-09-29','10:13:00'),('LR05','D05','P05','out','2023-10-16','09:57:00'),('LR06','D06','P06','in','2023-11-16','17:49:00'),('LR07','D07','P07','in','2023-11-22','11:27:00'),('LR08','D08','P08','in','2023-11-26','11:08:00'),('LR09','D09','P09','out','2023-11-30','10:16:00'),('LR10','D10','P10','in','2023-11-30','11:04:00'),('LR11','D11','P11','out','2023-11-30','17:36:00'),('LR12','D12','P12','out','2023-11-30','17:51:00'),('LR13','D01','P13','in','2023-11-30','16:34:00'),('LR14','D02','P14','in','2023-11-30','08:33:00'),('LR15','D03','P15','in','2023-12-02','17:03:00'),('LR16','D04','P16','out','2023-12-02','15:28:00'),('LR17','D05','P17','in','2023-12-03','18:01:00'),('LR18','D06','P18','out','2023-12-04','09:27:00'),('LR19','D07','P19','out','2023-12-08','17:24:00'),('LR20','D08','P20','out','2023-12-08','14:42:00'),('LR21','D09','P21','out','2023-12-09','11:57:00'),('LR22','D10','P22','out','2023-12-11','14:49:00'),('LR23','D11','P23','out','2023-12-13','09:39:00'),('LR24','D12','P24','out','2023-12-13','09:35:00'),('LR25','D01','P25','out','2023-12-14','12:00:00'),('LR26','D02','P26','out','2023-12-17','08:25:00'),('LR27','D03','P27','out','2023-12-17','16:54:00'),('LR28','D04','P28','out','2023-12-18','17:41:00'),('LR29','D05','P29','out','2023-12-19','16:05:00'),('LR30','D06','P30','out','2023-12-19','08:19:00'),('LR31','D07','P31','out','2023-12-20','14:37:00'),('LR32','D08','P01','out','2023-12-20','12:37:00'),('LR33','D09','P02','out','2023-12-20','15:37:00'),('LR34','D10','P03','out','2023-12-20','16:37:00'),('LR35','D11','P04','out','2023-12-22','16:37:00'),('LR36','D12','P05','out','2023-12-22','17:41:00'),('LR37','D01','P06','out','2023-12-25','17:24:00'),('LR38','D02','P07','out','2023-12-26','14:42:00'),('LR39','D03','P08','out','2023-12-27','11:57:00'),('LR40','D04','P09','out','2023-12-28','09:39:00');
/*!40000 ALTER TABLE `lab_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `medical_history_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `known_condition` varchar(255) DEFAULT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`medical_history_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `medical_history_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES ('MH01','P01','Asthma','fish'),('MH02','P02','Hypertension',NULL),('MH03','P03','Diabetes',NULL),('MH04','P04','Osteoarthritis',NULL),('MH05','P05','Arthritis',NULL),('MH06','P06','Asthma',NULL),('MH07','P07','Depression',NULL),('MH08','P08','Hypertension','garlic'),('MH09','P09','Cancer','nutmeg'),('MH10','P10','Depression',NULL),('MH11','P11','Anxiety disorder','peanut'),('MH12','P12','Migraine',NULL),('MH13','P13','Ulcer',NULL),('MH14','P14','Hepatitis','peanut'),('MH15','P15','Asthma','peanut'),('MH16','P01','Alzheimer',NULL),('MH17','P02','Parkinson',NULL),('MH18','P03','Depression',NULL),('MH19','P04','Migraine',NULL);
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nurse_id` varchar(255) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  PRIMARY KEY (`nurse_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES ('N01','S15'),('N02','S16'),('N03','S17'),('N04','S18'),('N05','S19'),('N06','S20'),('N07','S21'),('N08','S22'),('N09','S23'),('N10','S24'),('N11','S25'),('N12','S26'),('N13','S27'),('N14','S28'),('N15','S29'),('N16','S30'),('N17','S31'),('N18','S32'),('N19','S33'),('N20','S34'),('N21','S35'),('N22','S36'),('N23','S37'),('N24','S38');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outpatient` (
  `outpatient_id` varchar(255) NOT NULL,
  `lab_report_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`outpatient_id`),
  KEY `lab_report_id` (`lab_report_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `outpatient_ibfk_1` FOREIGN KEY (`lab_report_id`) REFERENCES `lab_report` (`lab_report_id`),
  CONSTRAINT `outpatient_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient`
--

LOCK TABLES `outpatient` WRITE;
/*!40000 ALTER TABLE `outpatient` DISABLE KEYS */;
INSERT INTO `outpatient` VALUES ('OP01','LR02','P02','2023-09-22','14:10:00'),('OP02','LR04','P04','2023-09-29','10:20:00'),('OP03','LR05','P05','2023-10-16','09:59:00'),('OP04','LR09','P09','2023-11-30','10:20:00'),('OP05','LR11','P11','2023-11-30','17:40:00'),('OP06','LR12','P12','2023-11-30','17:51:00'),('OP07','LR16','P16','2023-12-02','15:40:00'),('OP08','LR18','P18','2023-12-04','09:40:00'),('OP09','LR19','P19','2023-12-08','17:30:00'),('OP10','LR20','P20','2023-12-08','14:59:00'),('OP11','LR21','P21','2023-12-09','12:05:00'),('OP12','LR22','P22','2023-12-11','14:59:00'),('OP13','LR23','P23','2023-12-13','09:40:00'),('OP14','LR24','P24','2023-12-13','09:55:00'),('OP15','LR25','P25','2023-12-14','12:10:00'),('OP16','LR26','P26','2023-12-17','08:30:00'),('OP17','LR27','P27','2023-12-17','17:05:00'),('OP18','LR28','P28','2023-12-18','17:59:00'),('OP19','LR29','P29','2023-12-19','16:20:00'),('OP20','LR30','P30','2023-12-19','08:30:00'),('OP21','LR31','P31','2023-12-20','14:50:00'),('OP22','LR32','P02','2023-12-20','12:45:00'),('OP23','LR33','P04','2023-12-20','15:55:00'),('OP24','LR34','P05','2023-12-20','16:40:00'),('OP25','LR35','P04','2023-12-22','16:40:00'),('OP26','LR36','P05','2023-12-22','17:45:00'),('OP27','LR37','P06','2023-12-25','17:30:00'),('OP28','LR38','P07','2023-12-26','14:48:00'),('OP29','LR39','P08','2023-12-27','11:59:00'),('OP30','LR40','P09','2023-12-28','09:55:00');
/*!40000 ALTER TABLE `outpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(55) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('P01','Orlando','Middleton','Female','5','Shelley','Carbrooke','suffolk','IP25 6GH','07758 572686','ullamcorper@icloud.edu','1931-04-19'),('P02','Aphrodite','Myers','Male','72','Haas','Winston','suffolk','IP14 6BD','076 8622 7742','et.ultrices@protonmail.com','1933-09-27'),('P03','Meghan','Buckley','Female','7','Grim','Bury St Edmunds','suffolk','IP32 7JP','07470 782566','commodo.auctor@hotmail.ca','1934-02-11'),('P04','Arsenio','Mclean','Male','43','Village','Ipswich','suffolk','IP1 3RG','076 1779 4333','sed.dictum@protonmail.org','1934-07-08'),('P05','April','Mayer','Female','7','Pepper Wood','Pettistree','suffolk','IP13 0GZ','07125 183724','maecenas.libero@aol.org','1936-07-31'),('P06','Hayfa','Harvey','Male','51','Birchwood','Bardwell','suffolk','IP12 3ER','070 7848 5951','vivamus.nibh.dolor@google.com','1937-05-29'),('P07','Chiquita','Sykes','Female','7','Golf','Elmswell','suffolk','IP30 9EY','07624 862188','ridiculus.mus@hotmail.edu','1937-08-18'),('P08','Sarah','Short','Male','63','Farragut','Woodbridge','suffolk','IP12 4JE','070 9518 6123','in.consectetuer@google.couk','1937-09-04'),('P09','Isabella','Carney','Male','27','Barnett','Felixstowe','suffolk','IP11 7QT','076 1413 2537','venenatis.a@protonmail.org','1937-10-18'),('P10','Callum','Lucas','Male','55','Nelson','Tinkers Lane','suffolk','IP7 5NG','070 9424 5465','quisque.porttitor@protonmail.couk','1937-11-06'),('P11','Jermaine','Hartman','Male','62','Kensington','Simcoe Road','suffolk','IP32 6FR','070 3223 6752','sollicitudin.orci.sem@icloud.couk','1938-01-18'),('P12','Elvis','Petersen','Polygender','55','Pine View','Bury St. Edmunds','suffolk','IP33 3JJ','070 0854 5115','sed.malesuada@google.couk','1939-02-01'),('P13','Evelyn','Adkins','Female','7','Green Ridge','Felixstowe','suffolk','IP11 9PN','07248 902605','nunc.ullamcorper@yahoo.net','2006-03-31'),('P14','Maxine','Blackburn','Female','5','Doe Crossing','Diss','suffolk','IP22 4LF','07624 877260','nonummy@yahoo.edu','2006-09-19'),('P15','Walker','Hood','Female','5','Westridge','Harleston','suffolk','IP20 9DD','070 2914 5113','dui@yahoo.ca','2007-08-28'),('P16','Allistair','Castillo','Agender','7','Jay','Ipswich','suffolk','IP2 8SN','07624 513884','leo@icloud.com','2008-07-05'),('P17','Macy','Blake','Male','97','Union','Monks Eleigh','suffolk','IP7 7AA','07260 126930','vivamus.nibh.dolor@icloud.edu','2008-11-30'),('P18','Mollie','Marsh','Non-binary','5','Brown','Ipswich','suffolk','IP1 5DF','07624 338512','mauris.aliquam.eu@google.couk','2009-07-29'),('P19','Carson','Mays','Female','5','Clove','Ipswich','suffolk','IP1 5PY','070 0743 7057','felis@protonmail.com','2010-01-13'),('P20','Scarlet','Petty','Female','37','Pine View','Ipswich','suffolk','IP4 4SH','070 3759 4957','nulla.aliquet@aol.net','2011-11-26'),('P21','Nita','Mccoy','Male','5','Summer Ridge','Church Close','suffolk','IP10 0DU','076 3964 2640','elit.pharetra@protonmail.edu','2012-04-24'),('P22','Joan','Hogan','Female','44','Summer Ridge','Rushmere St Andrew','suffolk','IP5 1AU','07624 838576','sed.eu@hotmail.ca','2013-03-03'),('P23','Amber','Zamora','Agender','0','Sherman','Mildenhall','suffolk','IP28 7QZ',NULL,NULL,'2013-11-08'),('P24','Chava','Mclean','Female','67','Nobel','Brick Lane','suffolk','IP13 9LQ',NULL,NULL,'2014-02-25'),('P25','Noelani','Navarro','Male','59','Monterey','Felixstowe','suffolk','IP11 2FJ',NULL,NULL,'2015-12-13'),('P26','Veda','Chen','Male','77','Vernon','Woodbridge','suffolk','IP12 1EH',NULL,NULL,'2016-08-28'),('P27','George','Wood','Male','87','Scofield','Kesgrave','suffolk','IP5 2DA',NULL,NULL,'2017-04-13'),('P28','Kimberley','Daniel','Male','27','Maryland','Ipswich','suffolk','IP1 4BP',NULL,NULL,'2017-10-12'),('P29','Addison','Mckee','Female','5','Drewry','Wetherden Road','suffolk','IP30 9DG',NULL,NULL,'2018-09-26'),('P30','Alea','Herring','Female','7','Service','Norton','suffolk','IP31 3QR',NULL,NULL,'2021-01-30'),('P31','Ria','Alston','Male','5','Lawn','Ipswich','suffolk','IP2 9NA',NULL,'TIblaze@gg.co.uk','2023-04-24');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patient_details`
--

DROP TABLE IF EXISTS `patient_details`;
/*!50001 DROP VIEW IF EXISTS `patient_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_details` AS SELECT 
 1 AS `patient_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `gender`,
 1 AS `birth_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S01','Lunea','Peck','7','Myrtle','Croxton','suffolk','IP24 1UR','2023-09-04','doctor','Male','07321 578172','nonummy.ut@protonmail.edu','1961-01-26'),('S02','Oleg','Fields','63','Annamark','Snarehill','suffolk','IP24 2QA','2023-09-04','doctor','Male','070 8122 6533','eu.dui@google.ca','1961-07-18'),('S03','Nathan','Roach','57','Scott','Wherstead','suffolk','IP2 8NF','2023-09-01','doctor','Male','07603 462052','id.ante.dictum@outlook.org','1961-08-01'),('S04','Robert','Hooper','16','Orin','Bredfield','suffolk','IP21 4EX','2023-09-04','doctor','Male','070 0757 1556','non.dapibus.rutrum@hotmail.ca','1962-10-23'),('S05','Lenore','Williamson','7','Bobwhite','Eversley Road','suffolk','IP18 6AW','2023-08-28','doctor','Female','07624 448272','ipsum.suspendisse@protonmail.edu','1972-10-23'),('S06','Maggy','Moreno','84','Menomonie','Mendham','suffolk','IP20 0PB','2023-08-26','doctor','Male','076 5158 8814','a.auctor@google.ca','1972-11-28'),('S07','Cain','Hyde','83','Pennsylvania','Needham Market','suffolk','IP6 8UB','2023-08-24','doctor','Female','076 1180 8653','gravida.molestie.arcu@outlook.couk','1982-01-15'),('S08','Ursa','Mcbride','7','Mariners Cove','Ipswich','suffolk','IP3 8HW','2023-08-26','doctor','Female','07887 350806','vel.quam@outlook.org','1982-08-30'),('S09','Jin','Francis','77','Vera','Ipswich','suffolk','IP4 3FA','2023-08-29','doctor','Male','07624 525673','risus.donec.egestas@aol.edu','1986-02-28'),('S10','Ronan','Huber','7','Goodland','Bramford Road','suffolk','IP8 4JU','2023-09-02','doctor','Male','07816 086028','ac.nulla@icloud.net','1986-10-19'),('S11','Aretha','Glass','42','Clove','Westhorpe','suffolk','IP14 4SX','2023-09-02','doctor','Female','070 3847 4292','consectetuer.adipiscing.elit@hotmail.couk','1986-10-23'),('S12','Fredericka','Wilkerson','7','Warner','Stowmarket','suffolk','IP14 2DB','2023-08-29','doctor','Polygender','07624 746462','lacus.mauris@google.com','1988-04-09'),('S13','Ramona','Clarke','5','Green Ridge','Ipswich','suffolk','IP3 8AB','2023-08-25','doctor','Male','076 0776 3374','vitae@hotmail.edu','1988-08-13'),('S14','Gillian','Rasmussen','5','Old Gate','Stowmarket','suffolk','IP14 2DY','2023-08-24','doctor','Female','07476 394435','mauris@icloud.org','1994-05-05'),('S15','Amal','Haley','96','Caliangt','Ipswich','suffolk','IP1 6RL','2023-09-02','nurse','Female','076 3913 9466','orci.donec@hotmail.org','1964-09-26'),('S16','Brooke','O\'Neill','5','Mariners Cove','Reydon','suffolk','IP18 6QB','2023-09-01','nurse','Male','076 7774 4620','sed@icloud.com','1965-05-25'),('S17','Shay','Gonzalez','57','Harbort','Rougham','suffolk','IP30 9JP','2023-08-29','nurse','Female','076 1324 5807','egestas.a@google.edu','1965-07-22'),('S18','Jared','Oneal','5','Arapahoe','Halesworth Road','suffolk','IP18 6SQ','2023-08-31','nurse','Male','07624 785263','quis@protonmail.org','1968-12-20'),('S19','Marcia','Rosa','5','Dwight','Ipswich','suffolk','IP3 9FF','2023-09-02','nurse','Male','07875 165888','ornare@protonmail.com','1969-02-20'),('S20','Lana','Kaufman','12','Westport','Ipswich','suffolk','IP2 8RQ','2023-08-24','nurse','Male','070 5088 1972','arcu.vestibulum@aol.edu','1970-01-05'),('S21','Marshall','Crawford','22','Talmadge','Diss','suffolk','IP22 4NR','2023-08-27','nurse','Male','070 2243 2572','neque.sed.sem@hotmail.ca','1973-10-19'),('S22','Ezra','Bruce','7','Sutteridge','Tattingstone','suffolk','IP9 2NS','2023-09-03','nurse','Male','07624 517511','in.ornare@aol.org','1975-06-14'),('S23','Brenna','Riley','52','Meadow Vale','Whitehall Place','suffolk','IP12 1FB','2023-08-25','nurse','Genderfluid','076 3816 5712','ac.tellus@yahoo.edu','1976-07-22'),('S24','Yolanda','Pope','75','Heath','Woodbridge','suffolk','IP12 4HT','2023-08-28','nurse','Male','070 4852 7025','suspendisse.ac.metus@protonmail.edu','1976-10-06'),('S25','Lev','Nielsen','73','Loomis','Ipswich','suffolk','IP1 2LF','2023-09-03','nurse','Male','076 8128 7353','dolor.vitae@google.couk','1980-12-13'),('S26','Adele','Gould','7','Stephen','Barnes Road','suffolk','IP21 4SR','2023-08-29','nurse','Male','07624 075136','massa.quisque@outlook.edu','1983-09-09'),('S27','Kuame','Acosta','17','Dorton','Ipswich','suffolk','IP3 9AU','2023-08-30','nurse','Female','070 5853 1327','sed.et@hotmail.edu','1984-08-17'),('S28','Hyatt','Ferguson','68','Memorial','Ipswich','suffolk','IP2 9NG','2023-09-02','nurse','Female','076 4742 6638','fringilla.purus@outlook.com','1985-05-03'),('S29','Felicia','Howe','35','Fordem','Thetford','suffolk','IP24 3JT','2023-08-31','nurse','Female','076 5284 3775','molestie.pharetra@icloud.ca','1985-12-03'),('S30','Raphael','Porter','86','Mariners Cove','Thetford','suffolk','IP24 3HE','2023-09-02','nurse','Female','070 1648 8956','curabitur.consequat@outlook.ca','1987-04-28'),('S31','Ray','Hendricks','5','Meadow Ridge','Ixworth Road','suffolk','IP31 1AU','2023-09-04','nurse','Female','07624 409558','imperdiet@protonmail.com','1987-08-11'),('S32','Savannah','Fitzpatrick','63','Carioca','Alburgh','suffolk','IP20 0BS','2023-09-01','nurse','Female','070 2389 6463','risus.donec.nibh@google.ca','1991-05-31'),('S33','Jermaine','Galloway','49','Gerald','Ipswich','suffolk','IP2 0NB','2023-08-25','nurse','Male','070 5487 4769','ipsum.nunc@icloud.org','1991-12-20'),('S34','Guinevere','Hawkins','88','Sugar','Palgrave','suffolk','IP22 1FB','2023-08-28','nurse','Male','076 4653 8178','ligula.nullam@aol.edu','1992-04-03'),('S35','Teegan','Banks','95','Caliangt','Low Road','suffolk','IP13 0AL','2023-09-03','nurse','Female','070 2666 9485','integer.vulputate@aol.org','1995-01-06'),('S36','Heather','Donovan','7','Holy Cross','Barnham','suffolk','IP24 2NW','2023-08-29','nurse','Male','07857 212725','nam.ligula@google.couk','1995-02-10'),('S37','Mariko','Porter','91','Vidon','Elmswell','suffolk','IP30 9EH','2023-08-30','nurse','Bigender','076 7975 9451','libero.et@aol.edu','1995-05-03'),('S38','Quamar','Atkinson','7','Merry','Barnham','suffolk','IP24 2NQ','2023-09-02','nurse','Male','07624 554244','egestas.aliquam@yahoo.ca','1998-11-10');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_staff_trigger` AFTER INSERT ON `staff` FOR EACH ROW BEGIN
	IF NEW.job_type = 'doctor' THEN
		SET @last_doctor_id := (SELECT IFNULL(MAX(SUBSTRING(doctor_id, 2)) + 1, 1) FROM doctor);
		SET @new_doctor_id = CONCAT('D', @last_doctor_id);
		INSERT INTO doctor (doctor_id, staff_id)
		VALUES (@NEW_.doctor_id, NEW.staff_id);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
/*!50001 DROP VIEW IF EXISTS `staff_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `staff_details` AS SELECT 
 1 AS `staff_id`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'hospital'
--

--
-- Dumping routines for database 'hospital'
--
/*!50003 DROP FUNCTION IF EXISTS `full_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `full_address`(house_number VARCHAR(255), street VARCHAR(255), town VARCHAR(255), county VARCHAR(255), post_code VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE full_add VARCHAR(255);
    SET full_add = CONCAT(house_number, ' ', street, ' ', town, ' ', county, ' ', post_code);
RETURN full_add;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_age`(date_of_birth DATE) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE());
    RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_full_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_full_name`(first_name VARCHAR(255), last_name VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(255);
    SET full_name = CONCAT(first_name,' ', last_name);
    
RETURN full_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_patient_record` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_patient_record`(
	IN patient_id VARCHAR(255),
	IN p_first_name VARCHAR(255),
	IN p_last_name VARCHAR(255),
	IN p_gender VARCHAR(255),
	IN p_house_number VARCHAR(255),
	IN p_street VARCHAR(255),
	IN p_town VARCHAR(255),
	IN p_county VARCHAR(255),
	IN p_post_code VARCHAR(255),
	IN p_phone_number VARCHAR(255),
	IN p_email VARCHAR(255),
	IN p_birth_date DATE)
BEGIN
	INSERT INTO patient (patient_id,doctor_id,first_name,last_name,gender,house_number,street,town,county,post_code,phone_number,email,birth_date) 
	VALUES (p_patient_id, p_doctor_id, p_first_name, p_last_name, p_gender, p_house_number, p_street, p_town, p_county, p_post_code, p_phone_number, p_email, p_birth_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `patient_details`
--

/*!50001 DROP VIEW IF EXISTS `patient_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_details` AS select `patient`.`patient_id` AS `patient_id`,`patient`.`first_name` AS `first_name`,`patient`.`last_name` AS `last_name`,`patient`.`gender` AS `gender`,`patient`.`birth_date` AS `birth_date` from `patient` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_details`
--

/*!50001 DROP VIEW IF EXISTS `staff_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_details` AS select `staff`.`staff_id` AS `staff_id`,`staff`.`first_name` AS `first_name`,`staff`.`last_name` AS `last_name` from `staff` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25  1:18:50
