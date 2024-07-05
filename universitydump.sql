-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `person`
--
DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `ssn` int unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ssn`),
  UNIQUE KEY `ssn_UNIQUE` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--
LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2863900,'arya rafe','2004-02-23','male',NULL,'09371908222'),(2863901,'kiana nasiri','2003-05-21','female',NULL,'09361001010'),(2863902,'homa kavand','1986-01-01','female',NULL,'09163990000'),(2863903,'sina sinayie','2003-01-01','male',NULL,'09141414141'),(2863904,'amir soryayie','1995-01-01','male',NULL,'09141414141'),(2863905,'zeinal zeinali','1990-01-04','male',NULL,'09141414141'),(2863906,'saba efati','2005-01-01','female',NULL,'09031044011'),(2863907,'des','2004-01-01','female',NULL,'09696663444'),(2863908,'fovad nab','2004-01-01','male',NULL,'09141414141'),(2863909,'nika rezaz','2004-01-01','female',NULL,'09141414141'),(2863910,'afshun ahm','1945-01-01','male',NULL,'09394418906'),(2863911,'ali rahmani','1990-01-01','male',NULL,'09141414141'),(2863912,'hassan kal','1999-01-01','male',NULL,'09130597027'),(2863913,'rahim rafe','1970-01-01','male',NULL,'09141422104'),(2863914,'farhad rafe','1992-01-01','male',NULL,'09141662199'),(2863915,'rozhvin rafe','2023-01-01','female',NULL,'09000000000'),(2863916,'asghar asgh','1980-01-01','male',NULL,'09350000000'),(2863917,'saman taj','1981-01-01','male',NULL,'09146666664'),(2863918,'leila sharifi','1978-01-01','female',NULL,'09363634445'),(2863919,'saleh yousefie','1975-01-01','male',NULL,'09141414155'),(2863920,'dr bagher','1970-01-01','male',NULL,'09122254566'),(2863921,'azimi','1984-01-01','male',NULL,'09844848478'),(2863922,'moosazadeh','1979-01-01','male',NULL,'09747419452'),(2863923,'ehsan shoja','1986-01-01','male',NULL,'09363677785'),(2863924,'m farhadi','1980-01-01','male',NULL,'09474466458'),(2863925,'ghadiri','1960-01-01','female',NULL,'09304512702'),(2863926,'rahmani','1979-01-01','female',NULL,'09715516516'),(2863927,'akbari','1982-01-01','male',NULL,'09255751923'),(2863928,'mahmoudi','1980-01-01','female',NULL,'09125648951'),(2863929,'alizadeh','1985-01-01','male',NULL,'09574511698'),(2863930,'pezeshkian','1970-01-01','male',NULL,'09718481662'),(2863931,'saeid jalili','1969-01-10','male',NULL,'09142585746');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author_name` varchar(30) DEFAULT NULL,
  `publish year` year DEFAULT NULL,
  `edition` int DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book-id_UNIQUE` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1230,'math','aaa',2000,1,'aaa'),(1231,'physic','bbb',2000,1,'bbb'),(1232,'programming','ccc',2001,1,'ccc'),(1233,'database','ddd',2002,1,'ddd'),(1234,'algorithm','eee',2003,1,'eee'),(1235,'data struc','fff',2004,1,'fff'),(1236,'java','hhh',2005,1,'hhh'),(1237,'cpp','ooo',2000,1,'ppp'),(1238,'php','qqq',2009,1,'qqq'),(1239,'poem','vvv',2020,1,'aaa');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule`
--


--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `credit` int unsigned NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `idx_course_reference` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1000,'programming',3),(1010,'abc',2),(1020,'bcd',1),(1030,'cde',3),(1040,'def',2),(1050,'efg',1),(1060,'fgh',3),(1070,'ghi',2),(1080,'hij',1),(1090,'ijkl',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int unsigned NOT NULL,
  `departmet name` varchar(20) NOT NULL,
  `department_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department-name_UNIQUE` (`department_id`),
  KEY `idx_department_reference` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (100,'jja',NULL),(111,'computer',NULL),(222,'art',NULL),(333,'medician',NULL),(444,'aaa',NULL),(555,'bbb',NULL),(666,'ccc',NULL),(777,'ddd',NULL),(888,'eee',NULL),(999,'blah',NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `salary` int NOT NULL,
  `rank` enum('simple','manager') DEFAULT NULL,
  `person_ssn` int NOT NULL,
  `department_department_id` int NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employee_person1_idx` (`person_ssn`),
  KEY `fk_employee_department1_idx` (`department_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2910,2000,'simple',2863913,100),(2911,2100,'simple',2863914,111),(2912,2200,'simple',2863915,222),(2913,2500,'simple',2863925,333),(2914,3000,'simple',2863926,444),(2915,5000,'manager',2863927,555),(2916,5500,'manager',2863928,666),(2917,5700,'manager',2863929,777),(2918,5700,'manager',2863930,888),(2919,6000,'manager',2863931,999);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `lib_id` int NOT NULL,
  `library_name` varchar(30) NOT NULL,
  `contact no` varchar(11) DEFAULT NULL,
  `lib_loc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`lib_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (8990,'abc',NULL,NULL),(8991,'bcd',NULL,NULL),(8992,'cde',NULL,NULL),(8993,'def',NULL,NULL),(8994,'efg',NULL,NULL),(8995,'fgh',NULL,NULL),(8996,'ghi',NULL,NULL),(8997,'gij',NULL,NULL),(8998,'ijk',NULL,NULL),(8999,'jkl',NULL,NULL);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_has_book`
--

DROP TABLE IF EXISTS `library_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_has_book` (
  `lib_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`lib_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `library_has_book_ibfk_1` FOREIGN KEY (`lib_id`) REFERENCES `library` (`lib_id`),
  CONSTRAINT `library_has_book_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_has_book`
--

LOCK TABLES `library_has_book` WRITE;
/*!40000 ALTER TABLE `library_has_book` DISABLE KEYS */;
INSERT INTO `library_has_book` VALUES (8990,1230),(8991,1231),(8992,1232),(8993,1233),(8994,1234),(8995,1235),(8996,1236),(8997,1237),(8998,1238),(8999,1239);
/*!40000 ALTER TABLE `library_has_book` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `prerequisite`
--

DROP TABLE IF EXISTS `prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerequisite` (
  `course_id1` int NOT NULL,
  `course_id2` int NOT NULL,
  PRIMARY KEY (`course_id1`,`course_id2`),
  KEY `course_id2` (`course_id2`),
  CONSTRAINT `prerequisite_ibfk_1` FOREIGN KEY (`course_id1`) REFERENCES `course` (`course_id`),
  CONSTRAINT `prerequisite_ibfk_2` FOREIGN KEY (`course_id2`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisite`
--

LOCK TABLES `prerequisite` WRITE;
/*!40000 ALTER TABLE `prerequisite` DISABLE KEYS */;
INSERT INTO `prerequisite` VALUES (1000,1010),(1000,1020),(1010,1020),(1030,1040),(1030,1050),(1060,1050),(1070,1080),(1090,1080),(1040,1090),(1070,1090);
/*!40000 ALTER TABLE `prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `professor_id` int NOT NULL,
  `rank` enum('professor','associate professor','assistant professor','instructor') DEFAULT NULL,
  `department_department_id` int unsigned NOT NULL,
  `person_ssn` int unsigned NOT NULL,
  PRIMARY KEY (`professor_id`),
  KEY `fk_teacher_department1_idx` (`department_department_id`),
  KEY `fk_teacher_person1_idx` (`person_ssn`),
  CONSTRAINT `fk_teacher_department1` FOREIGN KEY (`department_department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `fk_teacher_person1` FOREIGN KEY (`person_ssn`) REFERENCES `person` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (7440,NULL,111,2863902),(7441,NULL,111,2863904),(7442,NULL,111,2863916),(7443,NULL,111,2863917),(7444,NULL,111,2863918),(7445,NULL,111,2863919),(7446,NULL,111,2863920),(7447,NULL,111,2863921),(7448,NULL,111,2863922),(7449,NULL,111,2863923);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `major` int unsigned NOT NULL,
  `degree` enum('bs','ms','PhD') NOT NULL,
  `person_ssn` int unsigned NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `new_unique_index_name` (`person_ssn`),
  CONSTRAINT `fk_student_person1` FOREIGN KEY (`person_ssn`) REFERENCES `person` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (140101,442,'bs',2863900),(140102,442,'bs',2863901),(140103,442,'bs',2863903),(140104,442,'bs',2863905),(140105,442,'bs',2863906),(140106,442,'bs',2863907),(140107,442,'bs',2863908),(140108,442,'bs',2863909),(140109,442,'bs',2863910),(140110,442,'bs',2863911);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `student_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `register_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `register_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (140101,2910,111),(140102,2910,111),(140103,2910,111),(140104,2910,111),(140105,2910,111),(140106,2915,888),(140107,2915,888),(140108,2915,888),(140109,2915,888),(140110,2915,888);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;





DROP TABLE IF EXISTS `class_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_schedule` (
  `professor_id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_time` varchar(9) NOT NULL,
  `course_year` year NOT NULL,
  `course_term` enum('1','2') NOT NULL,
  PRIMARY KEY (`professor_id`,`course_id`,`course_time`,`course_year`,`course_term`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `class_schedule_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `class_schedule_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedule`
--

LOCK TABLES `class_schedule` WRITE;
/*!40000 ALTER TABLE `class_schedule` DISABLE KEYS */;
INSERT INTO `class_schedule` VALUES (7440,1000,'su08-we08',2024,'1'),(7441,1010,'su08-we08',2024,'1'),(7442,1020,'su08-we08',2024,'1'),(7443,1030,'su08-we08',2024,'1'),(7444,1040,'su08-we08',2024,'1'),(7445,1050,'su08-we08',2024,'1'),(7446,1060,'su08-we08',2024,'1'),(7447,1070,'su08-we08',2024,'1'),(7448,1080,'su08-we08',2024,'1'),(7449,1090,'su08-we08',2024,'1');
/*!40000 ALTER TABLE `class_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheduling` BEFORE INSERT ON `class_schedule` FOR EACH ROW begin declare classes int;
select count(*) into classes
from class_schedule
where professor_id=new.professor_id and course_time=new.course_time;
if classes>0 
then signal sqlstate '45000' set message_text='already has a class scheduled at this time.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheduling2` BEFORE UPDATE ON `class_schedule` FOR EACH ROW begin declare classes int;
select count(*) into classes
from class_schedule
where professor_id=new.professor_id and course_time=new.course_time;
if classes>0 
then signal sqlstate '45000' set message_text='already has a class scheduled at this time.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheduling3` BEFORE UPDATE ON `class_schedule` FOR EACH ROW begin declare classes int;
select count(*) into classes
from class_schedule
where professor_id=new.professor_id and course_time=new.course_time;
if classes > 0
then signal sqlstate'45000' set message_text='cant';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- Table structure for table `student_borrows_book`
--

DROP TABLE IF EXISTS `student_borrows_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_borrows_book` (
  `student_id` int NOT NULL,
  `book_id` int NOT NULL,
  `lib_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`book_id`),
  KEY `book_id` (`book_id`),
  KEY `lib_id` (`lib_id`),
  CONSTRAINT `student_borrows_book_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `student_borrows_book_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `student_borrows_book_ibfk_3` FOREIGN KEY (`lib_id`) REFERENCES `library` (`lib_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_borrows_book`
--

LOCK TABLES `student_borrows_book` WRITE;
/*!40000 ALTER TABLE `student_borrows_book` DISABLE KEYS */;
INSERT INTO `student_borrows_book` VALUES (140101,1230,8990),(140101,1231,8990),(140101,1232,8990),(140101,1233,8990),(140102,1230,8992),(140102,1231,8992),(140102,1234,8992),(140102,1235,8992),(140102,1238,8992),(140102,1239,8992);
/*!40000 ALTER TABLE `student_borrows_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_has_course`
--

DROP TABLE IF EXISTS `student_has_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_has_course` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_time` varchar(10) NOT NULL,
  `course_year` year NOT NULL,
  `course_term` enum('1','2') NOT NULL,
  `grade` float DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`course_year`,`course_term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `student_has_course`
--

LOCK TABLES `student_has_course` WRITE;
/*!40000 ALTER TABLE `student_has_course` DISABLE KEYS */;
INSERT INTO `student_has_course` VALUES (140101,1010,'su08-wed08',2022,'1',17),(140101,1020,'su10-wed10',2022,'1',15),(140101,1030,'su14-wed14',2022,'1',10),(140101,1040,'su16-wed16',2022,'1',12),(140101,1050,'su16-wed16',2022,'1',9.5),(140101,1060,'su16-wed16',2022,'1',14),(140102,1010,'su08-wed08',2022,'1',7),(140102,1020,'su10-wed10',2022,'1',20),(140102,1030,'su14-wed14',2022,'1',20),(140102,1040,'su16-wed16',2022,'1',13),(140102,1050,'su16-wed16',2022,'1',18),(140102,1070,'su16-wed16',2022,'1',18),(140103,1010,'su16-wed16',2022,'1',9),(140103,1050,'su08-wed08',2022,'1',19),(140103,1080,'su16-wed16',2022,'1',17),(140104,1010,'su16-wed16',2022,'1',16),(140105,1010,'su16-wed16',2022,'1',20),(140106,1010,'su16-wed16',2022,'1',19);
/*!40000 ALTER TABLE `student_has_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_credits2` BEFORE INSERT ON `student_has_course` FOR EACH ROW begin declare total int;
select sum(c.credits) into total
from student_has_course shc
join course c on shc.course_id=c.course_id
where shc.student_id=new.student_id;
if total<12 
then signal sqlstate '45000' set message_text='student has less than 12 credits.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_credits1` BEFORE UPDATE ON `student_has_course` FOR EACH ROW begin declare total int;
select sum(c.credits) into total
from student_has_course shc
join course c on shc.course_id=c.course_id
where shc.student_id=new.student_id;
if total<12 
then signal sqlstate '45000' set message_text='student has less than 12 credits.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 10:01:09
