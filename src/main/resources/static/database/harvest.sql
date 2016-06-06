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
INSERT INTO `authority` VALUES (1,'管理员'),(2,'求职者'),(3,'招聘者');
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
INSERT INTO `city` VALUES (1,'澳门'),(2,'安庆'),(3,'鞍山'),(4,'安顺'),(5,'北京'),(6,'保定'),(7,'包头'),(8,'北海'),(9,'蚌埠'),(10,'宝鸡'),(11,'成都'),(12,'长沙'),(13,'重庆'),(14,'常州'),(15,'常熟'),(16,'沧州'),(17,'朝阳'),(18,'潮州'),(19,'东莞'),(20,'大连'),(21,'东营'),(22,'德州'),(23,'大同'),(24,'福州'),(25,'佛山'),(26,'阜阳'),(27,'抚顺'),(28,'广州'),(29,'贵阳'),(30,'桂林'),(31,'杭州'),(32,'合肥'),(33,'哈尔滨'),(34,'惠州'),(35,'海口'),(36,'呼和浩特'),(37,'湖州'),(38,'淮南'),(39,'邯郸'),(40,'怀化'),(41,'淮安'),(42,'济南'),(43,'嘉兴'),(44,'金华'),(45,'江门'),(46,'济宁'),(47,'江阴'),(48,'晋中'),(49,'酒泉'),(50,'吉林'),(51,'焦作'),(52,'昆明'),(53,'昆山'),(54,'临沂'),(55,'兰州'),(56,'洛阳'),(57,'廊坊'),(58,'龙岩'),(59,'柳州'),(60,'拉萨'),(61,'聊城'),(62,'六盘水'),(63,'漯河'),(64,'连云港'),(65,'刘安'),(66,'绵阳'),(67,'马鞍山'),(68,'茂名'),(69,'南京'),(70,'宁波'),(71,'南昌'),(72,'南宁'),(73,'南通'),(74,'南充'),(75,'宁德'),(76,'南阳'),(77,'盘锦'),(78,'莆田'),(79,'濮阳'),(80,'萍乡'),(81,'青岛'),(82,'泉州'),(83,'秦皇岛'),(84,'全国'),(85,'清远'),(86,'衢州'),(87,'庆阳'),(88,'日照'),(89,'上海'),(90,'厦门'),(91,'深圳'),(92,'苏州'),(93,'沈阳'),(94,'石家庄'),(95,'绍兴'),(96,'汕头'),(97,'三亚'),(98,'十堰'),(99,'上饶'),(100,'遂宁'),(101,'商丘'),(102,'宿州'),(103,'天津'),(104,'太原'),(105,'台州'),(106,'唐山'),(107,'泰州'),(108,'泰安'),(109,'通辽'),(110,'天水'),(111,'通化'),(112,'铜陵'),(113,'台湾'),(114,'武汉'),(115,'无锡'),(116,'温州'),(117,'潍坊'),(118,'芜湖'),(119,'乌鲁木齐'),(120,'威海'),(121,'乌兰察布'),(122,'西安'),(123,'香港'),(124,'徐州'),(125,'新乡'),(126,'西宁'),(127,'邢台'),(128,'湘潭'),(129,'孝感'),(130,'烟台'),(131,'扬州'),(132,'盐城'),(133,'宜昌'),(134,'银川'),(135,'宜春'),(136,'运城'),(137,'玉林'),(138,'宜宾'),(139,'玉溪'),(140,'营口'),(141,'郑州'),(142,'珠海'),(143,'中山'),(144,'长春'),(145,'镇江'),(146,'淄博'),(147,'张家港'),(148,'漳州'),(149,'株洲'),(150,'肇庆'),(151,'舟山'),(152,'枣庄'),(153,'湛江'),(154,'资阳'),(155,'张家界');
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
INSERT INTO `company` VALUES (1,'AAA','移动互联网','AAA有限公司苏州分公司位于苏州工业园区星湖街328号创意产业园18号楼，于2013年7月5日在苏州工商局注册成立，公司座机电话是0512-67683663， 微软（中国）有限公司苏州分公司愿与社会各界同仁携手合作，谋求共同发展，继续为新老客户提供最优秀的产品和服务。公司与多家苏州零售商和代理商建立了长期稳定的合作关系，品种齐全、价格合理，企业实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。',8),(2,'毅旺','电子商务','上海毅旺实业有限公司秉承“品质、创新、进取、合作”的企业理念,以市场潮流为导向,以食品安全为己任,“创一流全民零食超市”为目标及“口有余香,回味无穷”为口号,力求把公司打造成为公众认可的、有社会责任感的企业。',0),(3,'泛微','移动互联网','泛微成立于2001年3月，总部设立于上海；经过十四年的持续专注、创新和奋斗，已成为国内最大的协同办公（OA）软件提供商，泛微全国有千余人的专业团队，在中国90多个城市为我们的客户提供专业的服务，泛微始终致力于为每一个客户提供最佳的协同办公软件和解决方案，为每一个客户提供满意的本地化实施服务',1),(4,'camelot','企业服务','柯莱特成立于1994年，是世界级的IT服务供应商，专注于高端商业解决方案。服务网络遍布中国大陆、台湾、香港和日本，并通过28家分公司和关联子公司为全球500强商业企业和金融机构提供技术服务。向国内外的众多客户提供企业关键业务应用的方案与服务，提供包括ERP、CRM、MES、应用开发等应用的实施和维护。同时拥有市场领先的，可广泛并长久应用于银行和保险行业的众多解决方案，包括银行网点应用、供应链金融、风险控管、核心人寿保险等。',4),(5,'blabla','企业服务','1972年，从IBM公司跳槽出来的 5个年轻工程师创办了blabla公司。他们共同的目标就是生产销售统一商业标准软件。经过不懈的努力，这家德国公司已经成为用户/服务器商业应用领域世界领先的供应商。 公司创始人大力投资产品开发。随着1979年R/2系统的推出和1984年SAP国际公司的成立，公司开始了快速增长。在欧洲扩展业务之后，SAP又在北美、亚洲和澳洲设立了办事处。1988年，公司在法兰克福证券交易所上市。1992年，公司推出它的骨干业务系统R/3。国内SAP人才的稀缺，直接制约着SAP的发展，鉴于此，国内的SAP培训行业逐渐开始发展。',6),(6,'遗忘','移动互联网','遗忘(NASDAQ: NTES)是中国领先的互联网公司，利用最先进的互联网技术，加强人与人之间信息的交流和共享，实现“网聚人的力量”。创始人兼CEO是丁磊。\r\n在开发互联网应用、服务及其它技术方面，网易始终保持业界的领先地位，并在中国互联网行业内率先推出了包括中文全文检索、全中文大容量免费邮件系统、无限容量免费网络相册、免费电子贺卡站、网上虚拟社区、网上拍卖平台、24小时客户服务中心在内的业内领先产品或服务，还通过自主研发推出了一款率先取得白金地位的国产网络游戏。',7),(9,'BBB','教育','BLABLABLA',0),(10,'test','移动互联网','test',0),(11,'aaaa','移动互联网','aaaa',0),(12,'ccc','移动互联网','cccc',0);
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
INSERT INTO `company_authentication` VALUES (8,'认证通过',4,1);
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
INSERT INTO `job` VALUES (1,'Java开发工程师','全职',8,15,'本科','3-5年','岗位描述：\\n\\n1、前端框架的设计与实现\\n2、各业务模块前端代码开发\r\n\r\n3、平台易用性与用户体验的持续改进\r\n\r\n\r\n\r\n岗位要求：\r\n\r\n1、2年以上开发经验\r\n\r\n2、精通Web前端技术, 包括HTML/CSS/Javascript等\r\n\r\n3、精通JS对象编程, 并能熟练使用jquery进行动态网页开发\r\n\r\n4、有基于Ajax或Jsonp的开发经验\r\n\r\n5、对AngularJS/ Html5 及其相关技术有一定了解；或者熟悉HTTP协议、Apache模块、cookie等Web技术；\r\n\r\n6、技术视野广阔, 乐于不断学习新知识与新技术, 并能应用到实际工作中\r\n\r\n【你关心的，我们懂】\r\n\r\n网传程序猿是高危行业，来泛微，不必担心！程序猿要高薪，更要健康！！\r\n\r\n薪资待遇——让你愉快的买买买，有钱，就是这么任性！\r\n\r\n精美三餐——拒绝千篇一律的快餐盒饭，拒绝新鲜打折的自带便当，拒绝街边小店的卫生堪忧，一日三餐营养均衡，我们比千里之外的双亲更能关怀到你的健康。\r\n\r\n每年至少一次国内外畅游——除了风情新马泰，时尚欧美灵魂尼泊尔浪漫马代都在我们的Plan A中。\r\n\r\n员工关怀活动——他们都在意你飞得高不高，而我们在乎的，是你飞得累不累。\r\n\r\n梦想——人要是没有梦想，那和咸鱼有什么分别！携手同样有梦想的你走这一程，让我们离梦想更近一步。\r\n\r\n价值——拥有你，就像拥有一座潜力无限的金矿，你的过往价值我们如获至宝，你的未来价值我们拭目以待。\r\n\r\n专业——十三年孜孜不倦，十三年持续专注，行业内知名专家团队，头脑风暴活学活用。\r\n\r\n千里马常有，伯乐不常有。我们有颗做伯乐的心，欢迎更多的千里马来加入！\r\n\r\n如果你年轻肯努力，敢想敢拼，希望不断进步；\r\n\r\n如果你想享受积极的工作氛围，激情的团队合作和多多的公司福利；\r\n\r\n如果你了解泛微，了解OA，有管理软件项目相关工作经验；\r\n\r\n请随时联系我们，泛微永远欢迎你！\r\n\r\n薪酬福利：\r\n\r\n1、提供有竞争力的薪资，执行相对公平合理的绩效政策和薪酬结构；\r\n\r\n2、其他福利：美味三餐、各种补贴、生日和节日福利、年休、优秀员工出国旅游等；\r\n\r\n3、作息时间：每天八小时工作制（9:00-18:00，午休1小时），双休+国家法定节假日。\r\n\r\n我们的诚意：\r\n\r\n-免费提供一日三餐，独立员工食堂，专业大厨亲自掌勺，保证膳食均衡；\r\n\r\n-转正既有年假，每年两次加薪机会，年终Bonus，那是必须的！\r\n\r\n-每月绩效奖金+研发奖金，用工资条上的数字体现你的技术和实力；\r\n\r\n-和你的付出相符的薪水；\r\n\r\n-每年一次国内旅游，优秀员工国外旅游，去年塞班岛，今年巴厘岛；\r\n\r\n-每年一次全面体检，关爱你的健康；\r\n\r\n-员工活动室（乒乓球、桌球），篮球场、浦东羽毛球馆常年场地，均免费；\r\n\r\n-安全舒适人体工学椅，时刻保护你的肩颈和腰椎；\r\n\r\n-每月至少一次团建，餐后水果，零食茶点免费供应；','2016-05-28','2016-07-01',3,89),(2,'网络工程师','全职',12,14,'大专','5-10年','1. 熟悉广域网/局域网架构，挖掘客户网络需求，并能独立设计广域网/局域网架构\r\n2. 熟悉网络安全，根据客户需求和安全规范，实现网络安全加固\r\n3. 熟悉各种VPN技术，在完成功能需求同时，保证满足安全规范\r\n4. 了解CDN/DNS/DDOS等网络服务\r\n5. 熟悉主流厂商的交换机、防火墙、负载均衡、VPN设备、路由器的功能和配置\r\n6. 具备CCIE认证优先','2016-05-19',NULL,4,89),(3,'UX Design Intern','实习',13,13,'本科','应届毕业生','\r\nResponsibilities： \r\n- Design and deliver web applications, from high-level concepts through to screen designs which are brand aligned and globally scalable \r\n- Work collaboratively with Senior and Principal Designers \r\n- Evolve the design pattern library for web and mobile \r\n- Work closely with globally distributed teams and influence product management, engineering, documentation and training \r\n- Participate in brainstorming and co-design activities with internal groups and customers \r\n- Partner closely with researchers, content strategist, product managers and development teams \r\n\r\nQualifications \r\n- Currently enrolled in Bachelor\'s or Master\'s degree in Design, HCI,Human Factors, Design Strategy or design related relevant course \r\n- Demonstrate ability to deliver high quality design output \r\n- Knowledge of Agile, Lean UX and Mobile first','2016-05-19',NULL,5,92),(4,'Technical Product Support Intern','实习',10,11,'本科','应届毕业生','\r\nSLS 现招募两名有意学习并丰富在本地化领域（语言服务方向）经验的在读研究生或本科生以加入 SAP 的实习生计划。实习期为 6 个月，并可根据双方意愿延长至 1 年。 \r\n\r\n该实习生将为 SAP 产品翻译提交团队提供运营支持。位于中国的产品服务团队主要负责 ERP（Enterprise Resource Planning，企业资源规划）、SET（Scale Enablement and Transformation，中国研究院全球方案研发部）和 SME（Small & Medium-size Enterprises，中小型企业）产品的软件用户界面和相关文档翻译业务。SLS 的服务团队主要位于中国、加拿大、德国、爱尔兰和日本。该实习生将将主要对接中国和日本的服务团队，同时将有机会与全球范围内其他的 SLS 服务团队协同工作。 \r\n\r\n主要职责： \r\n?	学习并掌握 SAP 软件本地化流程（语言服务方向）。 \r\n?	配合翻译项目的日常工作，并支持相关流程的简化和自动化。 \r\n?	编写和/或维护有关翻译项目管理的流程说明文档。 \r\n?	在翻译系统内对提交的翻译进行抽检。 \r\n?	将 SAP 客户或内部研发部门提交的语言相关问题分配给相应的 SLS 负责人（位于上述 SLS 主要办公地点）。 \r\n?	监督并处理全球语言提供商借助内部平台提交的语言问题。 \r\n\r\n职位要求： \r\n?	理工科背景（如：电子工程学、计算机科学和/或信息系统管理），有较强的逻辑思维能力。 \r\n?	沟通能力强，流利的英语口语及书写能力。 \r\n?	熟练操作办公软件（PowerPoint、Word、Excel、Access 和 Outlook）。 \r\n?	确保每周出勤率为 4 个工作日（周一、二、三、四为宜）。 \r\n\r\n能力要求： \r\n?	有团队协作精神。 \r\n?	乐于学习，理解能力强，能够较快地掌握所传授的知识。有很强的客户责任感。 \r\n?	有强烈的责任心、工作细致。 \r\n?	机智灵活，钻研精神强，有独立解决问题的能力。 \r\n?	善于自我管理，能够每天自觉地完成所给予的任务。 \r\n?	熟悉应用 Excel/Excel VBA 者优先考虑。 \r\n?	具备 SDL Trados Studio 2014/2015 经验者优先考虑。 \r\n?	有简体中文文档翻译/质量校对经验者优先考虑。','2016-05-18',NULL,5,114),(5,'游戏在线客服（大话GM）','全职',7,9,'大专','不限','岗位职责： \r\n1、通过在线方式解答和处理玩家反馈的游戏问题； \r\n2、监控游戏运行状态，及时反馈和协助处理游戏异常状况，并与玩家做好沟通； \r\n3、对工作或产品问题进行反馈并提出改进建议；   \r\n4、了解用户需求，用心为每一位玩家提供周到的服务。 \r\n\r\n任职资格： \r\n1、20-28岁，大专及以上学历，专业不限； \r\n2、有较强的逻辑思维能力和问题分析能力； \r\n3、优秀的团队合作精神，善于沟通，具有亲和力和耐心； \r\n4、具备良好的服务意识，适应三班倒工作，平均每日工作时间8小时； \r\n5、熟悉网易游戏，熟悉梦幻西游与大话西游系列游戏优先','2016-05-13',NULL,6,34),(6,'Java工程师','兼职',10,15,'硕士','应届毕业生','Test','2016-05-04','2016-08-12',3,2),(7,'测试工程师','实习',5,10,'本科','5-10年','balbal','2016-05-06','2016-07-15',3,1);
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
INSERT INTO `message` VALUES (1,'你收到一份邀请','2016-05-28 00:00:00','如题',1,2),(2,'aaa','2016-05-28 22:07:04','bbbb',2,1),(3,'ccc','2016-05-28 22:07:19','cccc',1,3),(4,'bbb','2016-05-28 22:07:40','dddd',3,1),(5,'title','2016-05-29 03:18:35','content',1,2),(7,'ttt','2016-05-29 03:26:52','ccc',3,2),(8,'Use case','2016-05-29 03:32:49','巴拉巴拉',2,1),(9,'Use case','2016-05-29 03:34:30','巴拉巴拉',2,1),(10,'title','2016-05-30 20:34:54','content',1,4);
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
INSERT INTO `process` VALUES (1,'面试通过',1,1),(2,'简历待处理',2,1),(3,'简历已处理',5,1),(5,'简历待处理',3,1),(7,'面试阶段',6,5),(8,'面试阶段',7,5);
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
INSERT INTO `resume` VALUES (1,'硕士','同济大学','Web后端  上海','校招','1年以下','找全职','同济大学本科','EADP Java工程师Internaaa','毕业设计项目','算法与数据结构\r\n            C/C++编程基础\r\n            Java语言与OOP编程\r\n            Maven项目构建与管理\r\n            轻量级JavaEE框架Spring、Mybatis等','无'),(2,'大专','','','社招','应届毕业生','找兼职','','','','','');
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
INSERT INTO `tag` VALUES (1,'技能培训',5),(2,'专项奖金',6),(3,'带薪年假',4),(4,'领导好',4),(5,'扁平管理',5),(6,'美女多',3),(7,'节日礼物',3),(8,'绩效奖金',6),(9,'五险一金',5),(10,'午餐补助',4),(11,'定期体检',4),(12,'股票期权',8),(13,'年底双薪',5),(14,'免费班车',3),(15,'弹性工作',6),(16,'岗位晋升',8),(17,'额外',0),(18,'期权',0);
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
INSERT INTO `user` VALUES (1,'MS.hankwu@outlook.com','DEBUG','吴国华',2,1,NULL,1),(2,'michael@ea.com','12345','熊淼',3,2,3,NULL),(3,'admin@test.com','DEBUG','Admin',1,4,NULL,NULL),(4,'aaa@test.com','DEBUG','aaa',3,NULL,1,NULL),(5,'hank@test.com','DEBUG','hank',2,5,NULL,2);
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
INSERT INTO `user_detail` VALUES (1,25,'男','18964528417','1223231054','上海市杨浦区四平路','200092'),(2,28,'男','','','上海市普陀区',''),(4,25,'男','12345678901',NULL,NULL,NULL),(5,25,'女','18964521234','','','');
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
