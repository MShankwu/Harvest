-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (1,'����Ա'),(2,'��ְ��'),(3,'��Ƹ��');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19

-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'����'),(2,'����'),(3,'��ɽ'),(4,'��˳'),(5,'����'),(6,'����'),(7,'��ͷ'),(8,'����'),(9,'����'),(10,'����'),(11,'�ɶ�'),(12,'��ɳ'),(13,'����'),(14,'����'),(15,'����'),(16,'����'),(17,'����'),(18,'����'),(19,'��ݸ'),(20,'����'),(21,'��Ӫ'),(22,'����'),(23,'��ͬ'),(24,'����'),(25,'��ɽ'),(26,'����'),(27,'��˳'),(28,'����'),(29,'����'),(30,'����'),(31,'����'),(32,'�Ϸ�'),(33,'������'),(34,'����'),(35,'����'),(36,'���ͺ���'),(37,'����'),(38,'����'),(39,'����'),(40,'����'),(41,'����'),(42,'����'),(43,'����'),(44,'��'),(45,'����'),(46,'����'),(47,'����'),(48,'����'),(49,'��Ȫ'),(50,'����'),(51,'����'),(52,'����'),(53,'��ɽ'),(54,'����'),(55,'����'),(56,'����'),(57,'�ȷ�'),(58,'����'),(59,'����'),(60,'����'),(61,'�ĳ�'),(62,'����ˮ'),(63,'���'),(64,'���Ƹ�'),(65,'����'),(66,'����'),(67,'��ɽ'),(68,'ï��'),(69,'�Ͼ�'),(70,'����'),(71,'�ϲ�'),(72,'����'),(73,'��ͨ'),(74,'�ϳ�'),(75,'����'),(76,'����'),(77,'�̽�'),(78,'����'),(79,'���'),(80,'Ƽ��'),(81,'�ൺ'),(82,'Ȫ��'),(83,'�ػʵ�'),(84,'ȫ��'),(85,'��Զ'),(86,'����'),(87,'����'),(88,'����'),(89,'�Ϻ�'),(90,'����'),(91,'����'),(92,'����'),(93,'����'),(94,'ʯ��ׯ'),(95,'����'),(96,'��ͷ'),(97,'����'),(98,'ʮ��'),(99,'����'),(100,'����'),(101,'����'),(102,'����'),(103,'���'),(104,'̫ԭ'),(105,'̨��'),(106,'��ɽ'),(107,'̩��'),(108,'̩��'),(109,'ͨ��'),(110,'��ˮ'),(111,'ͨ��'),(112,'ͭ��'),(113,'̨��'),(114,'�人'),(115,'����'),(116,'����'),(117,'Ϋ��'),(118,'�ߺ�'),(119,'��³ľ��'),(120,'����'),(121,'�����첼'),(122,'����'),(123,'���'),(124,'����'),(125,'����'),(126,'����'),(127,'��̨'),(128,'��̶'),(129,'Т��'),(130,'��̨'),(131,'����'),(132,'�γ�'),(133,'�˲�'),(134,'����'),(135,'�˴�'),(136,'�˳�'),(137,'����'),(138,'�˱�'),(139,'��Ϫ'),(140,'Ӫ��'),(141,'֣��'),(142,'�麣'),(143,'��ɽ'),(144,'����'),(145,'��'),(146,'�Ͳ�'),(147,'�żҸ�'),(148,'����'),(149,'����'),(150,'����'),(151,'��ɽ'),(152,'��ׯ'),(153,'տ��'),(154,'����'),(155,'�żҽ�');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:18


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Description` text,
  `Rating` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'AAA','�ƶ�������','AAA���޹�˾���ݷֹ�˾λ�����ݹ�ҵ԰���Ǻ���328�Ŵ����ҵ԰18��¥����2013��7��5�������ݹ��̾�ע���������˾�����绰��0512-67683663�� ΢���й������޹�˾���ݷֹ�˾Ը��������ͬ��Я�ֺ�����ı��ͬ��չ������Ϊ���Ͽͻ��ṩ������Ĳ�Ʒ�ͷ��񡣹�˾�������������̺ʹ����̽����˳����ȶ��ĺ�����ϵ��Ʒ����ȫ���۸������ҵʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�',8),(2,'����','��������','�Ϻ�����ʵҵ���޹�˾���С�Ʒ�ʡ����¡���ȡ������������ҵ����,���г�����Ϊ����,��ʳƷ��ȫΪ����,����һ��ȫ����ʳ���С�ΪĿ�꼰����������,��ζ���Ϊ�ں�,����ѹ�˾�����Ϊ�����Ͽɵġ���������θе���ҵ��',0),(3,'��΢','�ƶ�������','��΢������2001��3�£��ܲ��������Ϻ�������ʮ����ĳ���רע�����ºͷܶ����ѳ�Ϊ��������Эͬ�칫��OA������ṩ�̣���΢ȫ����ǧ���˵�רҵ�Ŷӣ����й�90�������Ϊ���ǵĿͻ��ṩרҵ�ķ��񣬷�΢ʼ��������Ϊÿһ���ͻ��ṩ��ѵ�Эͬ�칫����ͽ��������Ϊÿһ���ͻ��ṩ����ı��ػ�ʵʩ����',1),(4,'camelot','��ҵ����','�����س�����1994�꣬�����缶��IT����Ӧ�̣�רע�ڸ߶���ҵ�����������������鲼�й���½��̨�塢��ۺ��ձ�����ͨ��28�ҷֹ�˾�͹����ӹ�˾Ϊȫ��500ǿ��ҵ��ҵ�ͽ��ڻ����ṩ�����������������ڶ�ͻ��ṩ��ҵ�ؼ�ҵ��Ӧ�õķ���������ṩ����ERP��CRM��MES��Ӧ�ÿ�����Ӧ�õ�ʵʩ��ά����ͬʱӵ���г����ȵģ��ɹ㷺������Ӧ�������кͱ�����ҵ���ڶ���������������������Ӧ�á���Ӧ�����ڡ����տعܡ��������ٱ��յȡ�',4),(5,'blabla','��ҵ����','1972�꣬��IBM��˾���۳����� 5�����Ṥ��ʦ������blabla��˾�����ǹ�ͬ��Ŀ�������������ͳһ��ҵ��׼�����������и��Ŭ������ҵ¹���˾�Ѿ���Ϊ�û�/��������ҵӦ�������������ȵĹ�Ӧ�̡� ��˾��ʼ�˴���Ͷ�ʲ�Ʒ����������1979��R/2ϵͳ���Ƴ���1984��SAP���ʹ�˾�ĳ�������˾��ʼ�˿�����������ŷ����չҵ��֮��SAP���ڱ��������޺Ͱ��������˰��´���1988�꣬��˾�ڷ����˸�֤ȯ���������С�1992�꣬��˾�Ƴ����ĹǸ�ҵ��ϵͳR/3������SAP�˲ŵ�ϡȱ��ֱ����Լ��SAP�ķ�չ�����ڴˣ����ڵ�SAP��ѵ��ҵ�𽥿�ʼ��չ��',6),(6,'����','�ƶ�������','����(NASDAQ: NTES)���й����ȵĻ�������˾���������Ƚ��Ļ�������������ǿ������֮����Ϣ�Ľ����͹���ʵ�֡������˵�����������ʼ�˼�CEO�Ƕ��ڡ�\r\n�ڿ���������Ӧ�á����������������棬����ʼ�ձ���ҵ������ȵ�λ�������й���������ҵ�������Ƴ��˰�������ȫ�ļ�����ȫ���Ĵ���������ʼ�ϵͳ�������������������ᡢ��ѵ��Ӻؿ�վ������������������������ƽ̨��24Сʱ�ͻ������������ڵ�ҵ�����Ȳ�Ʒ����񣬻�ͨ�������з��Ƴ���һ������ȡ�ð׽��λ�Ĺ���������Ϸ��',7),(9,'BBB','����','BLABLABLA',0),(10,'test','�ƶ�������','test',0),(11,'aaaa','�ƶ�������','aaaa',0),(12,'ccc','�ƶ�������','cccc',0);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `company_authentication`
--

DROP TABLE IF EXISTS `company_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_authentication` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_ID_idx` (`User_ID`),
  KEY `Company_ID_idx` (`Company_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_authentication`
--

LOCK TABLES `company_authentication` WRITE;
/*!40000 ALTER TABLE `company_authentication` DISABLE KEYS */;
INSERT INTO `company_authentication` VALUES (8,'��֤ͨ��',4,1);
/*!40000 ALTER TABLE `company_authentication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:18


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `company_city`
--

DROP TABLE IF EXISTS `company_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Company_ID` int(11) DEFAULT NULL,
  `City_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Company_ID_idx` (`Company_ID`),
  KEY `City_ID_idx` (`City_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_city`
--

LOCK TABLES `company_city` WRITE;
/*!40000 ALTER TABLE `company_city` DISABLE KEYS */;
INSERT INTO `company_city` VALUES (1,1,1),(2,1,2),(3,1,43),(4,2,34),(5,2,87),(6,3,1),(7,3,2),(8,4,82),(9,5,1),(10,6,92),(11,9,69),(12,9,5),(13,9,89),(14,10,5),(15,11,103),(16,12,89);
/*!40000 ALTER TABLE `company_city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('0','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',1,'EXECUTED','7:776af5fa8b576288aa468831bff5ef23','sql','',NULL,'3.4.2',NULL,NULL),('1','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',2,'EXECUTED','7:cd20e287ab26226dbf95721766431da7','sql','',NULL,'3.4.2',NULL,NULL),('2','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',3,'EXECUTED','7:91c195486b3de8e04c46687bceb685df','sql','',NULL,'3.4.2',NULL,NULL),('3','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',4,'EXECUTED','7:45b5c39c48e062e1e2841d2f94aab25c','sql','',NULL,'3.4.2',NULL,NULL),('4','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',5,'EXECUTED','7:afab1df1a4ac7933dfa37a7b207b3e74','sql','',NULL,'3.4.2',NULL,NULL),('5','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',6,'EXECUTED','7:8deb81f756a21e437d8e786fb748ee91','sql','',NULL,'3.4.2',NULL,NULL),('6','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',7,'EXECUTED','7:7358e49efe3bc35c97350740c6045520','sql','',NULL,'3.4.2',NULL,NULL),('7','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',8,'EXECUTED','7:c0cb175004bee98fe9568c7ef5898537','sql','',NULL,'3.4.2',NULL,NULL),('8','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',9,'EXECUTED','7:97a40cd922cb9aaddf1ab04d51e00353','sql','',NULL,'3.4.2',NULL,NULL),('9','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',10,'EXECUTED','7:8ad230aff9312a07bc0bfd4c3bb2d68f','sql','',NULL,'3.4.2',NULL,NULL),('10','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',11,'EXECUTED','7:c891067489f628cf799199312408cc1f','sql','',NULL,'3.4.2',NULL,NULL),('11','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:43',12,'EXECUTED','7:c34d7321f54ad51df7cb80314ab93138','sql','',NULL,'3.4.2',NULL,NULL),('12','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',13,'EXECUTED','7:8be0a6daae29294f1c3be67fd5412311','sql','',NULL,'3.4.2',NULL,NULL),('13','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',14,'EXECUTED','7:7a4cb24b2f25ff2b34cfa1bdabc021c5','sql','',NULL,'3.4.2',NULL,NULL),('14','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',15,'EXECUTED','7:ce3d3ee8d65f2d0c7a4a715d0aab8e92','sql','',NULL,'3.4.2',NULL,NULL),('15','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',16,'EXECUTED','7:8a9ec1ef9979ede4869e0f80053e9087','sql','',NULL,'3.4.2',NULL,NULL),('16','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',17,'EXECUTED','7:db349749e1c6994b96e355f400dfbab3','sql','',NULL,'3.4.2',NULL,NULL),('17','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',18,'EXECUTED','7:f14fa287c1026798eb30a631cd3e1262','sql','',NULL,'3.4.2',NULL,NULL),('18','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',19,'EXECUTED','7:c894bbc9ce3f76c2a9db569ae2706985','sql','',NULL,'3.4.2',NULL,NULL),('19','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',20,'EXECUTED','7:fd20f3e44bbd6d4dd9fafc43eb6216dd','sql','',NULL,'3.4.2',NULL,NULL),('20','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',21,'EXECUTED','7:9a8b22d43ff04b2f2b857aa41dd9e824','sql','',NULL,'3.4.2',NULL,NULL),('21','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',22,'EXECUTED','7:7698a3f623a5383ba0d2dc38d7e1335d','sql','',NULL,'3.4.2',NULL,NULL),('22','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',23,'EXECUTED','7:ef6e92d16fc11df40dc257eee92091bb','sql','',NULL,'3.4.2',NULL,NULL),('23','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',24,'EXECUTED','7:172621220bff2ff5446e096ffd66e20e','sql','',NULL,'3.4.2',NULL,NULL),('24','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',25,'EXECUTED','7:ecbd46efd629ee8310468b251a4ad9c9','sql','',NULL,'3.4.2',NULL,NULL),('25','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',26,'EXECUTED','7:1ad9e17be33976ee333e850f35a6c66a','sql','',NULL,'3.4.2',NULL,NULL),('26','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',27,'EXECUTED','7:6c815ec0e64b58dc1db452ae41f86204','sql','',NULL,'3.4.2',NULL,NULL),('27','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',28,'EXECUTED','7:14209fc720d6c31aa160f4ae64d268b4','sql','',NULL,'3.4.2',NULL,NULL),('28','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',29,'EXECUTED','7:afe263103c31de18a1897b9218908a9c','sql','',NULL,'3.4.2',NULL,NULL),('29','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-06 19:55:44',30,'EXECUTED','7:35c3413c5f11b3e4ca91fb97054b3087','sql','',NULL,'3.4.2',NULL,NULL),('30','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-16 15:27:40',31,'EXECUTED','7:7cd97a55664182870ad2b5a0e2ad62cc','sql','',NULL,'3.4.2',NULL,NULL),('31','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-17 18:10:43',32,'EXECUTED','7:4e8036cf36e1f5826c699e6686a20405','sql','',NULL,'3.4.2',NULL,NULL),('32','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-17 20:42:56',33,'EXECUTED','7:a59fb22d6ff563f0d9471abf6fa2f2f0','sql','',NULL,'3.4.2',NULL,NULL),('33','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-17 20:42:56',34,'EXECUTED','7:85d3c02936e7847f3311a545f78864b8','sql','',NULL,'3.4.2',NULL,NULL),('34','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-17 22:53:16',35,'EXECUTED','7:06c10b2a74838d49f2d537e2cf633254','sql','',NULL,'3.4.2',NULL,NULL),('35','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 18:53:48',36,'EXECUTED','7:d381cabb46b2cef9bce027499dcfa016','sql','',NULL,'3.4.2',NULL,NULL),('36','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 18:59:29',37,'EXECUTED','7:5faea18d0fefcc3a57640c88087ae9e3','sql','',NULL,'3.4.2',NULL,NULL),('37','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 19:08:37',38,'EXECUTED','7:65bf67b8e814e4d3005732b84610691c','sql','',NULL,'3.4.2',NULL,NULL),('38','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 19:08:37',39,'EXECUTED','7:6e383111d43260b12acc0c458b143e37','sql','',NULL,'3.4.2',NULL,NULL),('39','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 19:19:09',40,'EXECUTED','7:867697ea0704c29b5b6cfa1f47f83c0f','sql','',NULL,'3.4.2',NULL,NULL),('40','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 19:19:09',41,'EXECUTED','7:f51829d5639b932d7128a72d3e3e262c','sql','',NULL,'3.4.2',NULL,NULL),('41','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 19:21:18',42,'EXECUTED','7:ebe34e68729a2e5bb5af2cbea8ea2040','sql','',NULL,'3.4.2',NULL,NULL),('42','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 20:16:54',43,'EXECUTED','7:2b152643cd60ec3b92fccb91080378b1','sql','',NULL,'3.4.2',NULL,NULL),('43','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 20:18:49',44,'EXECUTED','7:cc2311ef9613737961e13e6a1c8049c1','sql','',NULL,'3.4.2',NULL,NULL),('44','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 20:23:19',45,'EXECUTED','7:8028a16b9896c440e5cb3abeb05ef665','sql','',NULL,'3.4.2',NULL,NULL),('45','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 20:57:47',46,'EXECUTED','7:863d5eec93bd2769b2c89600f5b9f4b5','sql','',NULL,'3.4.2',NULL,NULL),('46','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 21:13:16',47,'EXECUTED','7:636375a486c50bc580fab36015dea2d7','sql','',NULL,'3.4.2',NULL,NULL),('47','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 21:13:16',48,'EXECUTED','7:867697ea0704c29b5b6cfa1f47f83c0f','sql','',NULL,'3.4.2',NULL,NULL),('48','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-19 23:03:24',49,'EXECUTED','7:1c78f70a2bfdb9ac650a408a37ef7de0','sql','',NULL,'3.4.2',NULL,NULL),('49','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:27:42',50,'EXECUTED','7:4848bd8f606175787b497c9243052fb8','sql','',NULL,'3.4.2',NULL,NULL),('50','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:27:42',51,'EXECUTED','7:f74d2b3c3dcf386ea1a3c13f97132d2c','sql','',NULL,'3.4.2',NULL,NULL),('51','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:30:37',52,'EXECUTED','7:cf73fe8476fa879053a4e7913293a23a','sql','',NULL,'3.4.2',NULL,NULL),('52','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:32:57',53,'EXECUTED','7:6fba77a8c72f0ef6f642c5ec85350105','sql','',NULL,'3.4.2',NULL,NULL),('53','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:34:05',54,'EXECUTED','7:e8f6ca66c09768d00a48e111c6529bbf','sql','',NULL,'3.4.2',NULL,NULL),('54','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:36:26',55,'EXECUTED','7:d381cabb46b2cef9bce027499dcfa016','sql','',NULL,'3.4.2',NULL,NULL),('55','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-20 23:37:52',56,'EXECUTED','7:0190eee0234a396c73363b327c1f1bc7','sql','',NULL,'3.4.2',NULL,NULL),('56','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-22 15:33:43',57,'EXECUTED','7:1b64ca6d7659261089a717c581abfd29','sql','',NULL,'3.4.2',NULL,NULL),('57','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-22 16:07:35',58,'EXECUTED','7:17340e31792488b9547b0c16605129b8','sql','',NULL,'3.4.2',NULL,NULL),('58','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-22 16:10:39',59,'EXECUTED','7:3b085e10eef4aa26ebcc83cb7a01e57b','sql','',NULL,'3.4.2',NULL,NULL),('59','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-28 21:33:48',60,'EXECUTED','7:7d763e46ebe3be453c26f2b88cf73409','sql','',NULL,'3.4.2',NULL,NULL),('60','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-28 21:35:05',61,'EXECUTED','7:37905685d0ad47fdf306b7b36fa1848f','sql','',NULL,'3.4.2',NULL,NULL),('61','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-28 21:43:03',62,'EXECUTED','7:be593839fce8915d91c0f7f61fef9f2e','sql','',NULL,'3.4.2',NULL,NULL),('62','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-29 23:06:35',63,'EXECUTED','7:6502ba6cf4eba4e34d267f691a086035','sql','',NULL,'3.4.2',NULL,NULL),('63','Hank Wu','classpath:/db/changelog/db.changelog-master.xml','2016-05-29 23:08:19',64,'EXECUTED','7:ccc8e3083c1fc157f4b2a79d27c3488f','sql','',NULL,'3.4.2',NULL,NULL);
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Origin_Salary` int(11) DEFAULT NULL,
  `Terminal_Salary` int(11) DEFAULT NULL,
  `Graduation` varchar(50) DEFAULT NULL,
  `Experience` varchar(50) DEFAULT NULL,
  `Description` text,
  `Publish` date DEFAULT NULL,
  `Deadline` date DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `City_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Company_ID_idx` (`Company_ID`),
  KEY `City_ID_idx` (`City_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Java��������ʦ','ȫְ',8,15,'����','3-5��','��λ������\\n\\n1��ǰ�˿�ܵ������ʵ��\\n2����ҵ��ģ��ǰ�˴��뿪��\r\n\r\n3��ƽ̨���������û�����ĳ����Ľ�\r\n\r\n\r\n\r\n��λҪ��\r\n\r\n1��2�����Ͽ�������\r\n\r\n2����ͨWebǰ�˼���, ����HTML/CSS/Javascript��\r\n\r\n3����ͨJS������, ��������ʹ��jquery���ж�̬��ҳ����\r\n\r\n4���л���Ajax��Jsonp�Ŀ�������\r\n\r\n5����AngularJS/ Html5 ������ؼ�����һ���˽⣻������ϤHTTPЭ�顢Apacheģ�顢cookie��Web������\r\n\r\n6��������Ұ����, ���ڲ���ѧϰ��֪ʶ���¼���, ����Ӧ�õ�ʵ�ʹ�����\r\n\r\n������ĵģ����Ƕ���\r\n\r\n��������Գ�Ǹ�Σ��ҵ������΢�����ص��ģ�����ԳҪ��н����Ҫ��������\r\n\r\nн�ʴ�����������������������Ǯ��������ô���ԣ�\r\n\r\n�������͡����ܾ�ǧƪһ�ɵĿ�ͺз����ܾ����ʴ��۵��Դ��㵱���ܾ��ֱ�С����������ǣ�һ������Ӫ�����⣬���Ǳ�ǧ��֮���˫�׸��ܹػ�����Ľ�����\r\n\r\nÿ������һ�ι����⳩�Ρ������˷�������̩��ʱ��ŷ������Ჴ����������������ǵ�Plan A�С�\r\n\r\nԱ���ػ���������Ƕ�������ɵø߲��ߣ��������ں��ģ�����ɵ��۲��ۡ�\r\n\r\n���롪����Ҫ��û�����룬�Ǻ�������ʲô�ֱ�Я��ͬ���������������һ�̣����������������һ����\r\n\r\n��ֵ����ӵ���㣬����ӵ��һ��Ǳ�����޵Ľ����Ĺ�����ֵ����������������δ����ֵ������Ŀ�Դ���\r\n\r\nרҵ����ʮ�������β��룬ʮ�������רע����ҵ��֪��ר���Ŷӣ�ͷ�Է籩��ѧ���á�\r\n\r\nǧ�����У����ֲ����С������п������ֵ��ģ���ӭ�����ǧ���������룡\r\n\r\n����������Ŭ���������ƴ��ϣ�����Ͻ�����\r\n\r\n����������ܻ����Ĺ�����Χ��������ŶӺ����Ͷ��Ĺ�˾������\r\n\r\n������˽ⷺ΢���˽�OA���й��������Ŀ��ع������飻\r\n\r\n����ʱ��ϵ���ǣ���΢��Զ��ӭ�㣡\r\n\r\nн�긣����\r\n\r\n1���ṩ�о�������н�ʣ�ִ����Թ�ƽ����ļ�Ч���ߺ�н��ṹ��\r\n\r\n2��������������ζ���͡����ֲ��������պͽ��ո��������ݡ�����Ա���������εȣ�\r\n\r\n3����Ϣʱ�䣺ÿ���Сʱ�����ƣ�9:00-18:00������1Сʱ����˫��+���ҷ����ڼ��ա�\r\n\r\n���ǵĳ��⣺\r\n\r\n-����ṩһ�����ͣ�����Ա��ʳ�ã�רҵ����������ף���֤��ʳ���⣻\r\n\r\n-ת��������٣�ÿ�����μ�н���ᣬ����Bonus�����Ǳ���ģ�\r\n\r\n-ÿ�¼�Ч����+�з������ù������ϵ�����������ļ�����ʵ����\r\n\r\n-����ĸ��������нˮ��\r\n\r\n-ÿ��һ�ι������Σ�����Ա���������Σ�ȥ�����ൺ��������嵺��\r\n\r\n-ÿ��һ��ȫ����죬�ذ���Ľ�����\r\n\r\n-Ա����ң�ƹ�������򣩣����򳡡��ֶ���ë��ݳ��곡�أ�����ѣ�\r\n\r\n-��ȫ�������幤ѧ�Σ�ʱ�̱�����ļ羱����׵��\r\n\r\n-ÿ������һ���Ž����ͺ�ˮ������ʳ�����ѹ�Ӧ��','2016-05-28','2016-07-01',3,89),(2,'���繤��ʦ','ȫְ',12,14,'��ר','5-10��','1. ��Ϥ������/�������ܹ����ھ�ͻ��������󣬲��ܶ�����ƹ�����/�������ܹ�\r\n2. ��Ϥ���簲ȫ�����ݿͻ�����Ͱ�ȫ�淶��ʵ�����簲ȫ�ӹ�\r\n3. ��Ϥ����VPN����������ɹ�������ͬʱ����֤���㰲ȫ�淶\r\n4. �˽�CDN/DNS/DDOS���������\r\n5. ��Ϥ�������̵Ľ�����������ǽ�����ؾ��⡢VPN�豸��·�����Ĺ��ܺ�����\r\n6. �߱�CCIE��֤����','2016-05-19',NULL,4,89),(3,'UX Design Intern','ʵϰ',13,13,'����','Ӧ���ҵ��','\r\nResponsibilities�� \r\n- Design and deliver web applications, from high-level concepts through to screen designs which are brand aligned and globally scalable \r\n- Work collaboratively with Senior and Principal Designers \r\n- Evolve the design pattern library for web and mobile \r\n- Work closely with globally distributed teams and influence product management, engineering, documentation and training \r\n- Participate in brainstorming and co-design activities with internal groups and customers \r\n- Partner closely with researchers, content strategist, product managers and development teams \r\n\r\nQualifications \r\n- Currently enrolled in Bachelor\'s or Master\'s degree in Design, HCI,Human Factors, Design Strategy or design related relevant course \r\n- Demonstrate ability to deliver high quality design output \r\n- Knowledge of Agile, Lean UX and Mobile first','2016-05-19',NULL,5,92),(4,'Technical Product Support Intern','ʵϰ',10,11,'����','Ӧ���ҵ��','\r\nSLS ����ļ��������ѧϰ���ḻ�ڱ��ػ��������Է����򣩾�����ڶ��о����򱾿����Լ��� SAP ��ʵϰ���ƻ���ʵϰ��Ϊ 6 ���£����ɸ���˫����Ը�ӳ��� 1 �ꡣ \r\n\r\n��ʵϰ����Ϊ SAP ��Ʒ�����ύ�Ŷ��ṩ��Ӫ֧�֡�λ���й��Ĳ�Ʒ�����Ŷ���Ҫ���� ERP��Enterprise Resource Planning����ҵ��Դ�滮����SET��Scale Enablement and Transformation���й��о�Ժȫ�򷽰��з������� SME��Small & Medium-size Enterprises����С����ҵ����Ʒ������û����������ĵ�����ҵ��SLS �ķ����Ŷ���Ҫλ���й������ô󡢵¹������������ձ�����ʵϰ��������Ҫ�Խ��й����ձ��ķ����Ŷӣ�ͬʱ���л�����ȫ��Χ�������� SLS �����Ŷ�Эͬ������ \r\n\r\n��Ҫְ�� \r\n?	ѧϰ������ SAP ������ػ����̣����Է����򣩡� \r\n?	��Ϸ�����Ŀ���ճ���������֧��������̵ļ򻯺��Զ����� \r\n?	��д��/��ά���йط�����Ŀ���������˵���ĵ��� \r\n?	�ڷ���ϵͳ�ڶ��ύ�ķ�����г�졣 \r\n?	�� SAP �ͻ����ڲ��з������ύ�������������������Ӧ�� SLS �����ˣ�λ������ SLS ��Ҫ�칫�ص㣩�� \r\n?	�ල������ȫ�������ṩ�̽����ڲ�ƽ̨�ύ���������⡣ \r\n\r\nְλҪ�� \r\n?	���Ʊ������磺���ӹ���ѧ���������ѧ��/����Ϣϵͳ�������н�ǿ���߼�˼ά������ \r\n?	��ͨ����ǿ��������Ӣ����Ｐ��д������ \r\n?	���������칫�����PowerPoint��Word��Excel��Access �� Outlook���� \r\n?	ȷ��ÿ�ܳ�����Ϊ 4 �������գ���һ������������Ϊ�ˣ��� \r\n\r\n����Ҫ�� \r\n?	���Ŷ�Э������ \r\n?	����ѧϰ���������ǿ���ܹ��Ͽ�����������ڵ�֪ʶ���к�ǿ�Ŀͻ����θС� \r\n?	��ǿ�ҵ������ġ�����ϸ�¡� \r\n?	���������о���ǿ���ж����������������� \r\n?	�������ҹ����ܹ�ÿ���Ծ����������������� \r\n?	��ϤӦ�� Excel/Excel VBA �����ȿ��ǡ� \r\n?	�߱� SDL Trados Studio 2014/2015 ���������ȿ��ǡ� \r\n?	�м��������ĵ�����/����У�Ծ��������ȿ��ǡ�','2016-05-18',NULL,5,114),(5,'��Ϸ���߿ͷ�����GM��','ȫְ',7,9,'��ר','����','��λְ�� \r\n1��ͨ�����߷�ʽ���ʹ�����ҷ�������Ϸ���⣻ \r\n2�������Ϸ����״̬����ʱ������Э��������Ϸ�쳣״��������������ù�ͨ�� \r\n3���Թ������Ʒ������з���������Ľ����飻   \r\n4���˽��û���������Ϊÿһλ����ṩ�ܵ��ķ��� \r\n\r\n��ְ�ʸ� \r\n1��20-28�꣬��ר������ѧ����רҵ���ޣ� \r\n2���н�ǿ���߼�˼ά������������������� \r\n3��������ŶӺ����������ڹ�ͨ�������׺��������ģ� \r\n4���߱����õķ�����ʶ����Ӧ���൹������ƽ��ÿ�չ���ʱ��8Сʱ�� \r\n5����Ϥ������Ϸ����Ϥ�λ������������ϵ����Ϸ����','2016-05-13',NULL,6,34),(6,'Java����ʦ','��ְ',10,15,'˶ʿ','Ӧ���ҵ��','Test','2016-05-04','2016-08-12',3,2),(7,'���Թ���ʦ','ʵϰ',5,10,'����','5-10��','balbal','2016-05-06','2016-07-15',3,1);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `job_tag`
--

DROP TABLE IF EXISTS `job_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Job_ID` int(11) DEFAULT NULL,
  `Tag_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Job_ID_idx` (`Job_ID`),
  KEY `Tag_ID_idx` (`Tag_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tag`
--

LOCK TABLES `job_tag` WRITE;
/*!40000 ALTER TABLE `job_tag` DISABLE KEYS */;
INSERT INTO `job_tag` VALUES (1,1,1),(2,1,4),(3,1,8),(4,2,1),(5,2,4),(6,3,2),(7,3,3),(8,3,6),(9,3,7),(10,6,17),(11,6,17),(12,6,17),(13,7,18),(14,7,9),(15,7,17);
/*!40000 ALTER TABLE `job_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) DEFAULT NULL,
  `Create_Time` datetime DEFAULT NULL,
  `Content` text,
  `Receiver_ID` int(11) DEFAULT NULL,
  `Sender_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_ID_idx` (`Receiver_ID`),
  KEY `Sent_ID_idx` (`Sender_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'���յ�һ������','2016-05-28 00:00:00','����',1,2),(2,'aaa','2016-05-28 22:07:04','bbbb',2,1),(3,'ccc','2016-05-28 22:07:19','cccc',1,3),(4,'bbb','2016-05-28 22:07:40','dddd',3,1),(5,'title','2016-05-29 03:18:35','content',1,2),(7,'ttt','2016-05-29 03:26:52','ccc',3,2),(8,'Use case','2016-05-29 03:32:49','��������',2,1),(9,'Use case','2016-05-29 03:34:30','��������',2,1),(10,'title','2016-05-30 20:34:54','content',1,4);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(50) DEFAULT NULL,
  `Job_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Job_ID_idx` (`Job_ID`),
  KEY `User_ID_idx` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,'����ͨ��',1,1),(2,'����������',2,1),(3,'�����Ѵ���',5,1),(5,'����������',3,1),(7,'���Խ׶�',6,5),(8,'���Խ׶�',7,5);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:18


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Graduation` varchar(100) DEFAULT NULL,
  `School` varchar(50) DEFAULT NULL,
  `Job_Intention` varchar(100) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Education_Experience` text,
  `Intern_Experience` text,
  `Project_Experience` text,
  `Skills` text,
  `Remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (1,'˶ʿ','ͬ�ô�ѧ','Web���  �Ϻ�','У��','1������','��ȫְ','ͬ�ô�ѧ����','EADP Java����ʦInternaaa','��ҵ�����Ŀ','�㷨�����ݽṹ\r\n            C/C++��̻���\r\n            Java������OOP���\r\n            Maven��Ŀ���������\r\n            ������JavaEE���Spring��Mybatis��','��'),(2,'��ר','','','����','Ӧ���ҵ��','�Ҽ�ְ','','','','','');
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:18


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Rating` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'������ѵ',5),(2,'ר���',6),(3,'��н���',4),(4,'�쵼��',4),(5,'��ƽ����',5),(6,'��Ů��',3),(7,'��������',3),(8,'��Ч����',6),(9,'����һ��',5),(10,'��Ͳ���',4),(11,'�������',4),(12,'��Ʊ��Ȩ',8),(13,'���˫н',5),(14,'��Ѱ೵',3),(15,'���Թ���',6),(16,'��λ����',8),(17,'����',0),(18,'��Ȩ',0);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Authority_ID` int(11) DEFAULT NULL,
  `Detail_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `Resume_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL_UNIQUE` (`Email`),
  KEY `Authority_ID_idx` (`Authority_ID`),
  KEY `Detail_ID_idx` (`Detail_ID`),
  KEY `Company_ID_idx` (`Company_ID`),
  KEY `Resume_ID_idx` (`Resume_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'MS.hankwu@outlook.com','DEBUG','�����',2,1,NULL,1),(2,'michael@ea.com','12345','���',3,2,3,NULL),(3,'admin@test.com','DEBUG','Admin',1,4,NULL,NULL),(4,'aaa@test.com','DEBUG','aaa',3,NULL,1,NULL),(5,'hank@test.com','DEBUG','hank',2,5,NULL,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19


-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: harvest
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Age` int(11) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `QQ` varchar(20) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Postcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,25,'��','18964528417','1223231054','�Ϻ�����������ƽ·','200092'),(2,28,'��','','','�Ϻ���������',''),(4,25,'��','12345678901',NULL,NULL,NULL),(5,25,'Ů','18964521234','','','');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-07  1:15:19
