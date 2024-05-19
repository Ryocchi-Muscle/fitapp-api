-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (arm64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,1,'file://component_validate_password');
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2023-08-20 01:15:59',NULL),('default',0,'memory_block_read_cost',NULL,'2023-08-20 01:15:59',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUDIT_ADMIN','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','BINLOG_ADMIN','N'),('mysql.session','localhost','BINLOG_ENCRYPTION_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','ENCRYPTION_KEY_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','GROUP_REPLICATION_ADMIN','N'),('mysql.session','localhost','INNODB_REDO_LOG_ENABLE','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','REPLICATION_APPLIER','N'),('mysql.session','localhost','REPLICATION_SLAVE_ADMIN','N'),('mysql.session','localhost','RESOURCE_GROUP_ADMIN','N'),('mysql.session','localhost','RESOURCE_GROUP_USER','N'),('mysql.session','localhost','ROLE_ADMIN','N'),('mysql.session','localhost','SERVICE_CONNECTION_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SET_USER_ID','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.session','localhost','TELEMETRY_LOG_ADMIN','N'),('mysql.session','localhost','XA_RECOVER_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(415,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(416,'->'),(418,'->>'),(87,'/'),(75,':='),(59,'<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(90,'ABS'),(874,'ACCOUNT'),(91,'ACOS'),(652,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(908,'ADMIN'),(263,'AES_DECRYPT'),(264,'AES_ENCRYPT'),(574,'AFTER'),(247,'AGAINST'),(929,'AGGREGATE'),(575,'ALGORITHM'),(688,'ALL'),(50,'ALTER'),(576,'ANALYZE'),(62,'AND'),(521,'ANY_VALUE'),(653,'ARCHIVE'),(254,'ARRAY'),(717,'AS'),(459,'ASC'),(185,'ASCII'),(92,'ASIN'),(769,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(13,'ASYMMETRIC_DERIVE'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(636,'AT'),(93,'ATAN'),(94,'ATAN2'),(875,'ATTRIBUTE'),(906,'AUTHENTICATION'),(738,'AUTOCOMMIT'),(577,'AUTOEXTEND_SIZE'),(578,'AUTO_INCREMENT'),(453,'AVG'),(579,'AVG_ROW_LENGTH'),(750,'BACKUP'),(764,'BEFORE'),(739,'BEGIN'),(281,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(556,'BINLOG'),(522,'BIN_TO_UUID'),(455,'BIT_AND'),(187,'BIT_LENGTH'),(456,'BIT_OR'),(457,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(640,'BTREE'),(460,'BY'),(42,'BYTE'),(965,'CACHE'),(682,'CALL'),(492,'CAN_ACCESS_COLUMN'),(493,'CAN_ACCESS_DATABASE'),(494,'CAN_ACCESS_TABLE'),(495,'CAN_ACCESS_USER'),(496,'CAN_ACCESS_VIEW'),(654,'CASCADE'),(76,'CASE'),(255,'CAST'),(855,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(740,'CHAIN'),(876,'CHALLENGE_RESPONSE'),(580,'CHANGE'),(557,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(282,'CHARSET'),(188,'CHAR_LENGTH'),(581,'CHECK'),(582,'CHECKSUM'),(877,'CIPHER'),(856,'CLASS_ORIGIN'),(909,'CLIENT'),(937,'CLONE'),(690,'CLOSE'),(65,'COALESCE'),(958,'CODE'),(283,'COERCIBILITY'),(539,'COLLATE'),(284,'COLLATION'),(583,'COLUMN'),(584,'COLUMNS'),(857,'COLUMN_NAME'),(544,'COMMENT'),(741,'COMMIT'),(753,'COMMITTED'),(655,'COMPACT'),(545,'COMPLETION'),(933,'COMPONENT'),(265,'COMPRESS'),(656,'COMPRESSED'),(585,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(704,'CONCURRENT'),(852,'CONDITION'),(586,'CONNECTION'),(285,'CONNECTION_ID'),(742,'CONSISTENT'),(587,'CONSTRAINT'),(858,'CONSTRAINT_CATALOG'),(859,'CONSTRAINT_NAME'),(860,'CONSTRAINT_SCHEMA'),(853,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(458,'COUNT'),(100,'CRC32'),(51,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(14,'CREATE_DH_PARAMETERS'),(12,'CREATE_DIGEST'),(733,'CROSS'),(657,'CSV'),(477,'CUME_DIST'),(123,'CURDATE'),(878,'CURRENT'),(124,'CURRENT_DATE'),(286,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(287,'CURRENT_USER'),(850,'CURSOR'),(861,'CURSOR_NAME'),(127,'CURTIME'),(588,'DATA'),(288,'DATABASE'),(942,'DATABASES'),(629,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(841,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(842,'DECLARE'),(2,'DEFAULT'),(832,'DEFAULT_AUTH'),(546,'DEFINER'),(646,'DEFINITION'),(101,'DEGREES'),(696,'DELAYED'),(589,'DELAY_KEY_WRITE'),(658,'DELETE'),(478,'DENSE_RANK'),(461,'DESC'),(976,'DESCRIBE'),(647,'DESCRIPTION'),(862,'DIAGNOSTICS'),(590,'DIRECTORY'),(547,'DISABLE'),(591,'DISCARD'),(454,'DISTINCT'),(718,'DISTINCTROW'),(88,'DIV'),(548,'DO'),(592,'DROP'),(732,'DUAL'),(719,'DUMPFILE'),(697,'DUPLICATE'),(659,'DYNAMIC'),(77,'ELSE'),(843,'ELSEIF'),(192,'ELT'),(549,'ENABLE'),(705,'ENCLOSED'),(540,'ENCRYPTION'),(78,'END'),(637,'ENDS'),(593,'ENGINE'),(943,'ENGINES'),(558,'ERROR'),(944,'ERRORS'),(239,'ESCAPE'),(706,'ESCAPED'),(550,'EVENT'),(956,'EVENTS'),(638,'EVERY'),(689,'EXCEPT'),(594,'EXCHANGE'),(840,'EXECUTE'),(635,'EXISTS'),(854,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(879,'EXPIRE'),(977,'EXPLAIN'),(966,'EXPORT'),(193,'EXPORT_SET'),(927,'EXTENDED'),(675,'EXTENT_SIZE'),(149,'EXTRACT'),(417,'EXTRACTION)'),(261,'EXTRACTVALUE'),(880,'FACTOR'),(881,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(925,'FAST'),(660,'FEDERATED'),(851,'FETCH'),(194,'FIELD'),(707,'FIELDS'),(910,'FILE'),(676,'FILE_BLOCK_SIZE'),(798,'FILTER'),(195,'FIND_IN_SET'),(882,'FINISH'),(595,'FIRST'),(479,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(967,'FLUSH'),(559,'FOR'),(734,'FORCE'),(596,'FOREIGN'),(196,'FORMAT'),(488,'FORMAT_BYTES'),(489,'FORMAT_PICO_TIME'),(289,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(661,'FULL'),(597,'FULLTEXT'),(169,'FUNCTION'),(968,'GENERAL'),(329,'GEOMCOLLECTION'),(330,'GEOMETRYCOLLECTION'),(863,'GET'),(497,'GET_DD_COLUMN_PRIVILEGES'),(498,'GET_DD_CREATE_OPTIONS'),(499,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(276,'GET_LOCK'),(754,'GLOBAL'),(911,'GRANT'),(945,'GRANTS'),(66,'GREATEST'),(569,'GROUP'),(523,'GROUPING'),(462,'GROUP_CONCAT'),(447,'GTID_SUBSET'),(448,'GTID_SUBTRACT'),(691,'HANDLER'),(720,'HAVING'),(662,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(698,'HIGH_PRIORITY'),(883,'HISTORY'),(641,'HOST'),(946,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(290,'ICU_VERSION'),(715,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(699,'IGNORE'),(770,'IGNORE_SERVER_IDS'),(598,'IMPORT'),(67,'IN'),(52,'INDEX'),(947,'INDEXES'),(526,'INET6_ATON'),(527,'INET6_NTOA'),(524,'INET_ATON'),(525,'INET_NTOA'),(708,'INFILE'),(907,'INITIAL'),(630,'INITIAL_SIZE'),(884,'INITIATE'),(419,'INLINE'),(735,'INNER'),(560,'INNODB'),(199,'INSERT'),(599,'INSERT_METHOD'),(934,'INSTALL'),(561,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(500,'INTERNAL_AUTO_INCREMENT'),(501,'INTERNAL_AVG_ROW_LENGTH'),(503,'INTERNAL_CHECKSUM'),(502,'INTERNAL_CHECK_TIME'),(504,'INTERNAL_DATA_FREE'),(505,'INTERNAL_DATA_LENGTH'),(506,'INTERNAL_DD_CHAR_LENGTH'),(507,'INTERNAL_GET_COMMENT_OR_ERROR'),(508,'INTERNAL_GET_ENABLED_ROLE_JSON'),(509,'INTERNAL_GET_HOSTNAME'),(510,'INTERNAL_GET_USERNAME'),(511,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(512,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(513,'INTERNAL_INDEX_LENGTH'),(514,'INTERNAL_IS_ENABLED_ROLE'),(515,'INTERNAL_IS_MANDATORY_ROLE'),(516,'INTERNAL_KEYS_DISABLED'),(517,'INTERNAL_MAX_DATA_LENGTH'),(518,'INTERNAL_TABLE_ROWS'),(519,'INTERNAL_UPDATE_TIME'),(703,'INTERSECT'),(68,'INTERVAL'),(700,'INTO'),(600,'INVISIBLE'),(833,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(755,'ISOLATION'),(885,'ISSUER'),(277,'IS_FREE_LOCK'),(528,'IS_IPV4'),(529,'IS_IPV4_COMPAT'),(530,'IS_IPV4_MAPPED'),(531,'IS_IPV6'),(278,'IS_USED_LOCK'),(532,'IS_UUID'),(520,'IS_VISIBLE_DD_OBJECT'),(844,'ITERATE'),(721,'JOIN'),(257,'JSON'),(409,'JSON_ARRAY'),(465,'JSON_ARRAYAGG'),(427,'JSON_ARRAY_APPEND'),(428,'JSON_ARRAY_INSERT'),(412,'JSON_CONTAINS'),(413,'JSON_CONTAINS_PATH'),(437,'JSON_DEPTH'),(414,'JSON_EXTRACT'),(429,'JSON_INSERT'),(421,'JSON_KEYS'),(438,'JSON_LENGTH'),(430,'JSON_MERGE'),(431,'JSON_MERGE_PATCH'),(432,'JSON_MERGE_PRESERVE'),(410,'JSON_OBJECT'),(466,'JSON_OBJECTAGG'),(422,'JSON_OVERLAPS'),(444,'JSON_PRETTY'),(411,'JSON_QUOTE'),(433,'JSON_REMOVE'),(434,'JSON_REPLACE'),(442,'JSON_SCHEMA_VALID'),(443,'JSON_SCHEMA_VALIDATION_REPORT'),(423,'JSON_SEARCH'),(435,'JSON_SET'),(445,'JSON_STORAGE_FREE'),(446,'JSON_STORAGE_SIZE'),(441,'JSON_TABLE'),(439,'JSON_TYPE'),(436,'JSON_UNQUOTE'),(440,'JSON_VALID'),(424,'JSON_VALUE'),(53,'KEY'),(562,'KEYRING'),(601,'KEYS'),(602,'KEY_BLOCK_SIZE'),(973,'KILL'),(480,'LAG'),(692,'LAST'),(153,'LAST_DAY'),(291,'LAST_INSERT_ID'),(481,'LAST_VALUE'),(201,'LCASE'),(482,'LEAD'),(232,'LEADING'),(72,'LEAST'),(845,'LEAVE'),(974,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(756,'LEVEL'),(223,'LIKE'),(683,'LIMIT'),(709,'LINES'),(331,'LINESTRING'),(104,'LN'),(710,'LOAD'),(204,'LOAD_FILE'),(711,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(603,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(570,'LOGFILE'),(765,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(846,'LOOP'),(206,'LOWER'),(684,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(563,'MASTER'),(771,'MASTER_AUTO_POSITION'),(772,'MASTER_BIND'),(773,'MASTER_COMPRESSION_ALGORITHMS'),(774,'MASTER_CONNECT_RETRY'),(775,'MASTER_HEARTBEAT_PERIOD'),(776,'MASTER_HOST'),(777,'MASTER_LOG_FILE'),(778,'MASTER_LOG_POS'),(779,'MASTER_PASSWORD'),(780,'MASTER_PORT'),(451,'MASTER_POS_WAIT'),(781,'MASTER_RETRY_COUNT'),(782,'MASTER_SSL'),(783,'MASTER_SSL_CA'),(784,'MASTER_SSL_CERT'),(785,'MASTER_SSL_CIPHER'),(786,'MASTER_SSL_CRL'),(787,'MASTER_SSL_CRLPATH'),(788,'MASTER_SSL_KEY'),(789,'MASTER_SSL_VERIFY_SERVER_CERT'),(790,'MASTER_TLS_CIPHERSUITES'),(791,'MASTER_TLS_VERSION'),(792,'MASTER_USER'),(793,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(467,'MAX'),(886,'MAX_CONNECTIONS_PER_HOUR'),(887,'MAX_QUERIES_PER_HOUR'),(604,'MAX_ROWS'),(677,'MAX_SIZE'),(888,'MAX_UPDATES_PER_HOUR'),(889,'MAX_USER_CONNECTIONS'),(388,'MBRCONTAINS'),(389,'MBRCOVEREDBY'),(390,'MBRCOVERS'),(391,'MBRDISJOINT'),(392,'MBREQUALS'),(393,'MBRINTERSECTS'),(394,'MBROVERLAPS'),(395,'MBRTOUCHES'),(396,'MBRWITHIN'),(266,'MD5'),(926,'MEDIUM'),(425,'MEMBER'),(722,'MEMORY'),(663,'MERGE'),(864,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(468,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(605,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(606,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(664,'MRG_MYISAM'),(332,'MULTILINESTRING'),(333,'MULTIPOINT'),(334,'MULTIPOLYGON'),(948,'MUTEX'),(665,'MYISAM'),(865,'MYSQL_ERRNO'),(648,'NAME'),(941,'NAMES'),(533,'NAME_CONST'),(40,'NATIONAL'),(736,'NATURAL'),(41,'NCHAR'),(666,'NDB'),(667,'NDBCLUSTER'),(794,'NETWORK_NAMESPACE'),(890,'NEVER'),(693,'NEXT'),(564,'NO'),(678,'NODEGROUP'),(891,'NONE'),(64,'NOT'),(160,'NOW'),(924,'NO_WRITE_TO_BINLOG'),(483,'NTH_VALUE'),(484,'NTILE'),(70,'NULL'),(83,'NULLIF'),(866,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(426,'OF'),(723,'OFFSET'),(892,'OLD'),(551,'ON'),(541,'ONLY'),(694,'OPEN'),(607,'OPTIMIZE'),(969,'OPTIMIZER_COSTS'),(912,'OPTION'),(893,'OPTIONAL'),(712,'OPTIONALLY'),(572,'OPTIONS'),(73,'OR'),(213,'ORD'),(463,'ORDER'),(649,'ORGANIZATION'),(737,'OUTER'),(724,'OUTFILE'),(642,'OWNER'),(608,'PACK_KEYS'),(609,'PARSER'),(959,'PARSE_TREE'),(668,'PARTIAL'),(610,'PARTITION'),(611,'PARTITIONING'),(612,'PASSWORD'),(894,'PASSWORD_LOCK_TIME'),(420,'PATH)'),(485,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(938,'PERSIST'),(939,'PERSIST_ONLY'),(109,'PI'),(935,'PLUGIN'),(960,'PLUGINS'),(834,'PLUGIN_DIR'),(335,'POINT'),(336,'POLYGON'),(643,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(761,'PREPARE'),(552,'PRESERVE'),(695,'PREV'),(613,'PRIMARY'),(913,'PRIVILEGES'),(795,'PRIVILEGE_CHECKS_USER'),(571,'PROCEDURE'),(914,'PROCESS'),(949,'PROCESSLIST'),(961,'PROFILE'),(962,'PROFILES'),(918,'PROXY'),(490,'PS_CURRENT_THREAD_ID'),(491,'PS_THREAD_ID'),(766,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(685,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(895,'RANDOM'),(267,'RANDOM_BYTES'),(486,'RANK'),(542,'READ'),(35,'REAL'),(614,'REBUILD'),(762,'RECOVER'),(565,'REDO_LOG'),(669,'REDUNDANT'),(650,'REFERENCE'),(670,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(896,'REGISTRATION'),(970,'RELAY'),(963,'RELAYLOG'),(796,'RELAY_LOG_FILE'),(797,'RELAY_LOG_POS'),(743,'RELEASE'),(279,'RELEASE_ALL_LOCKS'),(280,'RELEASE_LOCK'),(566,'RELOAD'),(615,'REMOVE'),(553,'RENAME'),(616,'REORGANIZE'),(617,'REPAIR'),(216,'REPEAT'),(757,'REPEATABLE'),(217,'REPLACE'),(831,'REPLICA'),(964,'REPLICAS'),(799,'REPLICATE_DO_DB'),(800,'REPLICATE_DO_TABLE'),(801,'REPLICATE_IGNORE_DB'),(802,'REPLICATE_IGNORE_TABLE'),(803,'REPLICATE_REWRITE_DB'),(804,'REPLICATE_WILD_DO_TABLE'),(805,'REPLICATE_WILD_IGNORE_TABLE'),(806,'REPLICATION'),(897,'REQUIRE'),(767,'RESET'),(871,'RESIGNAL'),(921,'RESOURCE'),(975,'RESTART'),(673,'RESTRICT'),(898,'RETAIN'),(848,'RETURN'),(867,'RETURNED_SQLSTATE'),(930,'RETURNS'),(899,'REUSE'),(218,'REVERSE'),(919,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(900,'ROLE'),(292,'ROLES_GRAPHML'),(567,'ROLLBACK'),(114,'ROUND'),(701,'ROW'),(716,'ROWS'),(293,'ROW_COUNT'),(618,'ROW_FORMAT'),(487,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(749,'SAVEPOINT'),(554,'SCHEDULE'),(294,'SCHEMA'),(950,'SCHEMAS'),(868,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(702,'SELECT'),(464,'SEPARATOR'),(3,'SERIAL'),(758,'SERIALIZABLE'),(573,'SERVER'),(759,'SESSION'),(295,'SESSION_USER'),(543,'SET'),(268,'SHA'),(269,'SHA1'),(270,'SHA2'),(725,'SHARE'),(951,'SHOW'),(915,'SHUTDOWN'),(115,'SIGN'),(873,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(555,'SLAVE'),(534,'SLEEP'),(971,'SLOW'),(744,'SNAPSHOT'),(644,'SOCKET'),(931,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(807,'SOURCE'),(808,'SOURCE_AUTO_POSITION'),(809,'SOURCE_BIND'),(810,'SOURCE_COMPRESSION_ALGORITHMS'),(811,'SOURCE_CONNECT_RETRY'),(812,'SOURCE_HEARTBEAT_PERIOD'),(813,'SOURCE_HOST'),(814,'SOURCE_LOG_FILE'),(815,'SOURCE_LOG_POS'),(816,'SOURCE_PASSWORD'),(817,'SOURCE_PORT'),(452,'SOURCE_POS_WAIT'),(818,'SOURCE_RETRY_COUNT'),(819,'SOURCE_SSL'),(820,'SOURCE_SSL_CA'),(821,'SOURCE_SSL_CERT'),(822,'SOURCE_SSL_CIPHER'),(823,'SOURCE_SSL_CRL'),(824,'SOURCE_SSL_CRLPATH'),(825,'SOURCE_SSL_KEY'),(826,'SOURCE_SSL_VERIFY_SERVER_CERT'),(827,'SOURCE_TLS_CIPHERSUITES'),(828,'SOURCE_TLS_VERSION'),(829,'SOURCE_USER'),(830,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(619,'SPATIAL'),(872,'SQLSTATE'),(835,'SQL_AFTER_GTIDS'),(836,'SQL_AFTER_MTS_GAPS'),(837,'SQL_BEFORE_GTIDS'),(726,'SQL_BIG_RESULT'),(727,'SQL_BUFFER_RESULT'),(728,'SQL_CALC_FOUND_ROWS'),(768,'SQL_LOG_BIN'),(729,'SQL_NO_CACHE'),(730,'SQL_SMALL_RESULT'),(838,'SQL_THREAD'),(117,'SQRT'),(901,'SSL'),(745,'START'),(713,'STARTING'),(639,'STARTS'),(271,'STATEMENT_DIGEST'),(272,'STATEMENT_DIGEST_TEXT'),(620,'STATS_AUTO_RECALC'),(621,'STATS_PERSISTENT'),(622,'STATS_SAMPLE_PAGES'),(952,'STATUS'),(469,'STD'),(470,'STDDEV'),(471,'STDDEV_POP'),(472,'STDDEV_SAMP'),(839,'STOP'),(957,'STORAGE'),(671,'STORED'),(731,'STRAIGHT_JOIN'),(240,'STRCMP'),(932,'STRING'),(165,'STR_TO_DATE'),(358,'ST_AREA'),(337,'ST_ASBINARY'),(401,'ST_ASGEOJSON'),(339,'ST_ASTEXT'),(338,'ST_ASWKB'),(340,'ST_ASWKT'),(366,'ST_BUFFER'),(367,'ST_BUFFER_STRATEGY'),(359,'ST_CENTROID'),(403,'ST_COLLECT'),(377,'ST_CONTAINS'),(368,'ST_CONVEXHULL'),(378,'ST_CROSSES'),(369,'ST_DIFFERENCE'),(342,'ST_DIMENSION'),(379,'ST_DISJOINT'),(380,'ST_DISTANCE'),(404,'ST_DISTANCE_SPHERE'),(352,'ST_ENDPOINT'),(343,'ST_ENVELOPE'),(381,'ST_EQUALS'),(360,'ST_EXTERIORRING'),(382,'ST_FRECHETDISTANCE'),(397,'ST_GEOHASH'),(299,'ST_GEOMCOLLFROMTEXT'),(314,'ST_GEOMCOLLFROMWKB'),(300,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(315,'ST_GEOMETRYCOLLECTIONFROMWKB'),(301,'ST_GEOMETRYFROMTEXT'),(316,'ST_GEOMETRYFROMWKB'),(364,'ST_GEOMETRYN'),(344,'ST_GEOMETRYTYPE'),(402,'ST_GEOMFROMGEOJSON'),(302,'ST_GEOMFROMTEXT'),(317,'ST_GEOMFROMWKB'),(383,'ST_HAUSDORFFDISTANCE'),(361,'ST_INTERIORRINGN'),(370,'ST_INTERSECTION'),(384,'ST_INTERSECTS'),(353,'ST_ISCLOSED'),(345,'ST_ISEMPTY'),(346,'ST_ISSIMPLE'),(405,'ST_ISVALID'),(398,'ST_LATFROMGEOHASH'),(348,'ST_LATITUDE'),(354,'ST_LENGTH'),(303,'ST_LINEFROMTEXT'),(318,'ST_LINEFROMWKB'),(371,'ST_LINEINTERPOLATEPOINT'),(372,'ST_LINEINTERPOLATEPOINTS'),(304,'ST_LINESTRINGFROMTEXT'),(319,'ST_LINESTRINGFROMWKB'),(399,'ST_LONGFROMGEOHASH'),(349,'ST_LONGITUDE'),(406,'ST_MAKEENVELOPE'),(305,'ST_MLINEFROMTEXT'),(320,'ST_MLINEFROMWKB'),(307,'ST_MPOINTFROMTEXT'),(322,'ST_MPOINTFROMWKB'),(309,'ST_MPOLYFROMTEXT'),(324,'ST_MPOLYFROMWKB'),(306,'ST_MULTILINESTRINGFROMTEXT'),(321,'ST_MULTILINESTRINGFROMWKB'),(308,'ST_MULTIPOINTFROMTEXT'),(323,'ST_MULTIPOINTFROMWKB'),(310,'ST_MULTIPOLYGONFROMTEXT'),(325,'ST_MULTIPOLYGONFROMWKB'),(365,'ST_NUMGEOMETRIES'),(362,'ST_NUMINTERIORRING'),(363,'ST_NUMINTERIORRINGS'),(355,'ST_NUMPOINTS'),(385,'ST_OVERLAPS'),(373,'ST_POINTATDISTANCE'),(400,'ST_POINTFROMGEOHASH'),(311,'ST_POINTFROMTEXT'),(326,'ST_POINTFROMWKB'),(356,'ST_POINTN'),(312,'ST_POLYFROMTEXT'),(327,'ST_POLYFROMWKB'),(313,'ST_POLYGONFROMTEXT'),(328,'ST_POLYGONFROMWKB'),(407,'ST_SIMPLIFY'),(347,'ST_SRID'),(357,'ST_STARTPOINT'),(341,'ST_SWAPXY'),(374,'ST_SYMDIFFERENCE'),(386,'ST_TOUCHES'),(375,'ST_TRANSFORM'),(376,'ST_UNION'),(408,'ST_VALIDATE'),(387,'ST_WITHIN'),(350,'ST_X'),(351,'ST_Y'),(869,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(902,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(473,'SUM'),(916,'SUPER'),(168,'SYSDATE'),(651,'SYSTEM'),(296,'SYSTEM_USER'),(54,'TABLE'),(752,'TABLES'),(623,'TABLESPACE'),(870,'TABLE_NAME'),(118,'TAN'),(681,'TEMPORARY'),(714,'TERMINATED'),(79,'THEN'),(922,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(568,'TLS'),(631,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(978,'TRADITIONAL'),(233,'TRAILING'),(746,'TRANSACTION'),(979,'TREE'),(680,'TRIGGER'),(953,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(624,'TYPE'),(235,'UCASE'),(903,'UNBOUNDED'),(760,'UNCOMMITTED'),(273,'UNCOMPRESS'),(274,'UNCOMPRESSED_LENGTH'),(632,'UNDO'),(236,'UNHEX'),(936,'UNINSTALL'),(625,'UNION'),(626,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(920,'UNKNOWN'),(751,'UNLOCK'),(904,'UNREGISTER'),(20,'UNSIGNED'),(847,'UNTIL'),(674,'UPDATE'),(262,'UPDATEXML'),(627,'UPGRADE'),(237,'UPPER'),(917,'USAGE'),(679,'USE'),(297,'USER'),(972,'USER_RESOURCES'),(928,'USE_FRM'),(686,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(535,'UUID'),(536,'UUID_SHORT'),(537,'UUID_TO_BIN'),(275,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(538,'VALUES'),(45,'VARCHARACTER'),(940,'VARIABLE'),(954,'VARIABLES'),(476,'VARIANCE'),(46,'VARYING'),(474,'VAR_POP'),(475,'VAR_SAMP'),(923,'VCPU'),(298,'VERSION'),(634,'VIEW'),(672,'VIRTUAL'),(628,'VISIBLE'),(633,'WAIT'),(449,'WAIT_FOR_EXECUTED_GTID_SET'),(450,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(955,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(687,'WHERE'),(849,'WHILE'),(252,'WITH'),(747,'WORK'),(645,'WRAPPER'),(748,'WRITE'),(905,'X509'),(763,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(478,2),(495,2),(496,2),(503,2),(506,2),(507,2),(515,2),(516,2),(540,2),(547,2),(585,2),(603,2),(605,2),(611,2),(613,2),(2,3),(515,3),(2,4),(540,4),(547,4),(601,4),(602,4),(3,5),(694,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(623,26),(22,27),(23,28),(23,29),(515,29),(23,30),(24,31),(242,31),(623,31),(25,32),(26,33),(26,34),(26,35),(623,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(495,39),(496,39),(503,39),(506,39),(507,39),(515,39),(544,39),(545,39),(548,39),(631,39),(632,39),(634,39),(638,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(503,49),(504,49),(517,49),(603,49),(53,50),(495,50),(496,50),(497,50),(498,50),(499,50),(500,50),(501,50),(502,50),(503,50),(504,50),(505,50),(603,50),(608,50),(614,50),(53,51),(506,51),(507,51),(508,51),(509,51),(510,51),(511,51),(512,51),(513,51),(514,51),(515,51),(517,51),(518,51),(519,51),(604,51),(605,51),(615,51),(623,51),(634,51),(642,51),(643,51),(644,51),(645,51),(646,51),(647,51),(649,51),(53,52),(503,52),(509,52),(515,52),(523,52),(550,52),(634,52),(660,52),(683,52),(686,52),(53,53),(503,53),(515,53),(516,53),(540,53),(53,54),(503,54),(515,54),(528,54),(532,54),(533,54),(539,54),(541,54),(551,54),(618,54),(619,54),(620,54),(621,54),(622,54),(634,54),(647,54),(677,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(506,64),(507,64),(508,64),(514,64),(604,64),(605,64),(63,65),(503,65),(64,66),(65,67),(66,67),(240,67),(548,67),(637,67),(640,67),(641,67),(660,67),(671,67),(67,68),(131,68),(508,68),(603,68),(605,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(516,70),(72,71),(73,72),(76,73),(514,73),(77,74),(78,75),(80,76),(586,76),(80,77),(586,77),(80,78),(565,78),(583,78),(586,78),(587,78),(590,78),(591,78),(593,78),(80,79),(586,79),(587,79),(80,80),(586,80),(81,81),(506,81),(507,81),(508,81),(514,81),(520,81),(521,81),(522,81),(526,81),(527,81),(528,81),(531,81),(587,81),(603,81),(604,81),(605,81),(606,81),(607,81),(610,81),(624,81),(688,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(503,119),(533,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(603,131),(605,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(498,169),(511,169),(512,169),(524,169),(525,169),(623,169),(624,169),(634,169),(645,169),(657,169),(658,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(691,196),(692,196),(693,196),(194,197),(195,198),(196,199),(540,199),(541,199),(542,199),(197,200),(198,201),(199,202),(550,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(591,216),(214,217),(514,217),(544,217),(545,217),(547,217),(603,217),(612,217),(215,218),(216,219),(550,219),(217,220),(218,221),(219,222),(220,223),(232,223),(634,223),(640,223),(641,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(535,231),(539,231),(548,231),(634,231),(637,231),(640,231),(641,231),(660,231),(671,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(548,250),(240,251),(685,251),(240,252),(503,252),(509,252),(515,252),(603,252),(605,252),(608,252),(684,252),(241,253),(242,253),(566,253),(567,253),(635,253),(636,253),(684,253),(242,254),(242,255),(242,256),(242,257),(691,257),(692,257),(693,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(251,269),(252,270),(253,271),(254,272),(255,273),(256,274),(257,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(631,282),(632,282),(265,283),(266,284),(634,284),(639,284),(267,285),(268,286),(269,287),(497,287),(508,287),(270,288),(495,288),(496,288),(506,288),(507,288),(513,288),(520,288),(521,288),(634,288),(642,288),(643,288),(271,289),(272,290),(273,291),(274,292),(275,293),(600,293),(276,294),(495,294),(496,294),(506,294),(507,294),(520,294),(521,294),(634,294),(642,294),(643,294),(277,295),(278,296),(279,297),(513,297),(575,297),(576,297),(603,297),(605,297),(607,297),(609,297),(610,297),(615,297),(649,297),(280,298),(281,299),(281,300),(282,301),(282,302),(283,303),(283,304),(284,305),(284,306),(285,307),(285,308),(286,309),(286,310),(287,311),(288,312),(288,313),(289,314),(289,315),(290,316),(290,317),(291,318),(291,319),(292,320),(292,321),(293,322),(293,323),(294,324),(294,325),(295,326),(296,327),(296,328),(297,329),(298,330),(299,331),(300,332),(301,333),(302,334),(303,335),(304,336),(305,337),(305,338),(306,339),(306,340),(307,341),(308,342),(309,343),(310,344),(311,345),(312,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(328,363),(329,364),(330,365),(331,366),(332,367),(333,368),(334,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,415),(380,416),(380,417),(381,418),(381,419),(381,420),(382,421),(383,422),(384,423),(385,424),(386,425),(386,426),(387,427),(388,428),(389,429),(390,430),(391,431),(392,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(413,454),(418,454),(419,454),(422,454),(423,454),(428,454),(537,454),(543,454),(548,454),(553,454),(414,455),(415,456),(416,457),(417,458),(418,458),(655,458),(681,458),(419,459),(548,459),(419,460),(503,460),(515,460),(535,460),(544,460),(545,460),(546,460),(548,460),(552,460),(603,460),(605,460),(419,461),(548,461),(691,461),(692,461),(693,461),(419,462),(419,463),(503,463),(535,463),(546,463),(548,463),(551,463),(552,463),(554,463),(419,464),(420,465),(421,466),(422,467),(423,468),(424,469),(425,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(479,523),(480,524),(481,525),(482,526),(483,527),(484,528),(485,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(540,538),(547,538),(554,538),(495,539),(496,539),(503,539),(506,539),(507,539),(515,539),(495,540),(496,540),(503,540),(506,540),(507,540),(515,540),(495,541),(496,541),(555,541),(556,541),(557,541),(558,541),(564,541),(565,541),(495,542),(496,542),(538,542),(555,542),(556,542),(557,542),(558,542),(563,542),(564,542),(565,542),(684,542),(495,543),(496,543),(503,543),(506,543),(507,543),(515,543),(516,543),(540,543),(544,543),(545,543),(547,543),(548,543),(552,543),(555,543),(556,543),(557,543),(558,543),(569,543),(601,543),(602,543),(603,543),(611,543),(612,543),(613,543),(617,543),(630,543),(631,543),(632,543),(633,543),(634,543),(638,543),(497,544),(503,544),(508,544),(509,544),(515,544),(517,544),(603,544),(605,544),(497,545),(508,545),(497,546),(508,546),(497,547),(503,547),(508,547),(614,547),(615,547),(497,548),(508,548),(536,548),(593,548),(497,549),(503,549),(508,549),(614,549),(615,549),(497,550),(508,550),(522,550),(644,550),(497,551),(499,551),(508,551),(516,551),(550,551),(497,552),(508,552),(497,553),(503,553),(504,553),(532,553),(609,553),(497,554),(508,554),(497,555),(508,555),(574,555),(576,555),(578,555),(673,555),(675,555),(687,555),(499,556),(637,556),(682,556),(499,557),(570,557),(572,557),(573,557),(574,557),(575,557),(576,557),(577,557),(578,557),(671,557),(674,557),(675,557),(684,557),(499,558),(684,558),(499,559),(548,559),(570,559),(572,559),(573,559),(574,559),(575,559),(576,559),(577,559),(578,559),(595,559),(598,559),(599,559),(612,559),(617,559),(634,559),(671,559),(674,559),(675,559),(684,559),(691,559),(692,559),(693,559),(499,560),(515,560),(634,560),(499,561),(562,561),(499,562),(499,563),(566,563),(567,563),(568,563),(570,563),(635,563),(636,563),(661,563),(687,563),(499,564),(515,564),(516,564),(499,565),(499,566),(608,566),(499,567),(555,567),(556,567),(557,567),(558,567),(559,567),(560,567),(561,567),(565,567),(499,568),(500,569),(510,569),(517,569),(548,569),(614,569),(615,569),(616,569),(617,569),(500,570),(510,570),(517,570),(501,571),(511,571),(512,571),(524,571),(525,571),(634,571),(646,571),(666,571),(667,571),(502,572),(513,572),(502,573),(513,573),(526,573),(503,574),(503,575),(503,576),(618,576),(691,576),(692,576),(693,576),(503,577),(504,577),(515,577),(517,577),(503,578),(503,579),(515,579),(503,580),(570,580),(571,580),(572,580),(503,581),(515,581),(619,581),(503,582),(515,582),(620,582),(503,583),(503,584),(515,584),(544,584),(634,584),(640,584),(641,584),(503,585),(515,585),(503,586),(515,586),(685,586),(691,586),(692,586),(693,586),(503,587),(515,587),(503,588),(513,588),(515,588),(544,588),(503,589),(515,589),(503,590),(515,590),(503,591),(603,591),(503,592),(504,592),(520,592),(521,592),(522,592),(523,592),(524,592),(525,592),(526,592),(527,592),(528,592),(529,592),(530,592),(531,592),(581,592),(582,592),(603,592),(606,592),(607,592),(616,592),(624,592),(503,593),(504,593),(515,593),(517,593),(529,593),(634,593),(653,593),(684,593),(503,594),(503,595),(515,595),(538,595),(503,596),(513,596),(515,596),(516,596),(503,597),(509,597),(515,597),(503,598),(539,598),(544,598),(503,599),(515,599),(503,600),(509,600),(515,600),(503,601),(634,601),(660,601),(503,602),(515,602),(503,603),(548,603),(562,603),(563,603),(603,603),(605,603),(684,603),(503,604),(515,604),(503,605),(515,605),(503,606),(603,606),(503,607),(621,607),(503,608),(515,608),(503,609),(509,609),(515,609),(503,610),(515,610),(535,610),(540,610),(544,610),(547,610),(548,610),(550,610),(683,610),(686,610),(503,611),(503,612),(513,612),(575,612),(576,612),(603,612),(605,612),(612,612),(503,613),(503,614),(503,615),(503,616),(503,617),(622,617),(503,618),(515,618),(503,619),(509,619),(514,619),(527,619),(503,620),(515,620),(503,621),(515,621),(503,622),(515,622),(503,623),(504,623),(517,623),(529,623),(503,624),(615,624),(503,625),(546,625),(553,625),(503,626),(503,627),(619,627),(503,628),(509,628),(515,628),(504,629),(517,629),(504,630),(517,630),(504,631),(559,631),(560,631),(561,631),(566,631),(567,631),(570,631),(572,631),(612,631),(504,632),(517,632),(529,632),(599,632),(504,633),(517,633),(505,634),(519,634),(531,634),(506,635),(507,635),(508,635),(514,635),(520,635),(521,635),(522,635),(526,635),(527,635),(528,635),(531,635),(603,635),(604,635),(605,635),(606,635),(607,635),(610,635),(624,635),(688,635),(508,636),(508,637),(508,638),(508,639),(509,640),(513,641),(513,642),(513,643),(513,644),(513,645),(514,646),(514,647),(514,648),(514,649),(514,650),(527,650),(514,651),(527,651),(615,651),(515,652),(516,652),(515,653),(515,654),(516,654),(528,654),(531,654),(515,655),(515,656),(515,657),(544,657),(515,658),(516,658),(535,658),(515,659),(515,660),(515,661),(634,661),(640,661),(641,661),(668,661),(678,661),(515,662),(515,663),(515,664),(515,665),(515,666),(515,667),(515,668),(515,669),(515,670),(516,670),(608,670),(515,671),(515,672),(516,673),(528,673),(531,673),(516,674),(540,674),(548,674),(552,674),(517,675),(517,676),(517,677),(517,678),(517,679),(550,679),(695,679),(518,680),(530,680),(634,680),(528,681),(534,682),(535,683),(538,683),(546,683),(548,683),(551,683),(552,683),(554,683),(637,683),(671,683),(535,684),(540,684),(544,684),(545,684),(547,684),(552,684),(563,684),(535,685),(619,685),(622,685),(535,686),(550,686),(580,686),(659,686),(535,687),(538,687),(552,687),(640,687),(641,687),(660,687),(537,688),(543,688),(548,688),(553,688),(573,688),(574,688),(603,688),(608,688),(610,688),(611,688),(613,688),(683,688),(686,688),(537,689),(546,689),(613,689),(538,690),(594,690),(538,691),(599,691),(538,692),(538,693),(538,694),(597,694),(634,694),(662,694),(538,695),(540,696),(542,696),(547,696),(540,697),(540,698),(548,698),(540,699),(544,699),(545,699),(548,699),(550,699),(552,699),(610,699),(686,699),(540,700),(546,700),(547,700),(548,700),(686,700),(540,701),(554,701),(540,702),(541,702),(546,702),(547,702),(548,702),(691,702),(692,702),(693,702),(543,703),(546,703),(544,704),(545,704),(544,705),(544,706),(544,707),(634,707),(640,707),(641,707),(544,708),(545,708),(544,709),(545,709),(544,710),(686,710),(544,711),(545,711),(563,711),(618,711),(621,711),(622,711),(684,711),(544,712),(544,713),(544,714),(545,715),(603,715),(605,715),(545,716),(548,717),(550,717),(563,717),(603,717),(605,717),(608,717),(548,718),(548,719),(548,720),(548,721),(550,721),(548,722),(548,723),(548,724),(548,725),(548,726),(548,727),(548,728),(548,729),(548,730),(548,731),(550,731),(549,732),(550,733),(550,734),(614,734),(616,734),(550,735),(550,736),(550,737),(555,738),(556,738),(557,738),(558,738),(555,739),(556,739),(557,739),(558,739),(565,739),(583,739),(555,740),(556,740),(557,740),(558,740),(555,741),(556,741),(557,741),(558,741),(565,741),(555,742),(556,742),(557,742),(558,742),(565,742),(555,743),(556,743),(557,743),(558,743),(559,743),(560,743),(561,743),(565,743),(555,744),(556,744),(557,744),(558,744),(565,744),(555,745),(556,745),(557,745),(558,745),(565,745),(575,745),(576,745),(555,746),(556,746),(557,746),(558,746),(564,746),(555,747),(556,747),(557,747),(558,747),(555,748),(556,748),(557,748),(558,748),(563,748),(564,748),(565,748),(559,749),(560,749),(561,749),(562,750),(562,751),(563,751),(603,751),(605,751),(563,752),(634,752),(662,752),(678,752),(684,752),(564,753),(564,754),(630,754),(676,754),(680,754),(564,755),(564,756),(564,757),(564,758),(564,759),(630,759),(676,759),(680,759),(564,760),(565,761),(579,761),(581,761),(582,761),(565,762),(565,763),(566,764),(567,764),(566,765),(567,765),(634,765),(635,765),(636,765),(684,765),(566,766),(567,766),(568,767),(573,767),(574,767),(687,767),(688,767),(569,768),(570,769),(572,769),(570,770),(572,770),(570,771),(570,772),(570,773),(570,774),(570,775),(570,776),(570,777),(570,778),(570,779),(570,780),(570,781),(570,782),(570,783),(570,784),(570,785),(570,786),(570,787),(570,788),(570,789),(570,790),(570,791),(570,792),(570,793),(570,794),(572,794),(570,795),(572,795),(570,796),(572,796),(570,797),(572,797),(571,798),(571,799),(571,800),(571,801),(571,802),(571,803),(571,804),(571,805),(571,806),(572,806),(608,806),(572,807),(572,808),(572,809),(572,810),(572,811),(572,812),(572,813),(572,814),(572,815),(572,816),(572,817),(572,818),(572,819),(572,820),(572,821),(572,822),(572,823),(572,824),(572,825),(572,826),(572,827),(572,828),(572,829),(572,830),(573,831),(575,831),(577,831),(674,831),(687,831),(575,832),(576,832),(575,833),(576,833),(577,833),(578,833),(575,834),(576,834),(575,835),(576,835),(575,836),(576,836),(575,837),(576,837),(575,838),(576,838),(577,838),(578,838),(577,839),(578,839),(580,840),(608,840),(581,841),(582,841),(585,842),(595,842),(598,842),(599,842),(587,843),(588,844),(589,845),(590,846),(591,847),(592,848),(593,849),(595,850),(596,851),(598,852),(599,853),(599,854),(600,855),(601,855),(602,855),(600,856),(601,856),(602,856),(600,857),(601,857),(602,857),(600,858),(601,858),(602,858),(600,859),(601,859),(602,859),(600,860),(601,860),(602,860),(600,861),(601,861),(602,861),(600,862),(600,863),(600,864),(601,864),(602,864),(600,865),(601,865),(602,865),(600,866),(600,867),(600,868),(601,868),(602,868),(600,869),(601,869),(602,869),(600,870),(601,870),(602,870),(601,871),(601,872),(602,872),(602,873),(603,874),(605,874),(603,875),(605,875),(603,876),(603,877),(605,877),(603,878),(605,878),(612,878),(603,879),(605,879),(603,880),(603,881),(605,881),(603,882),(603,883),(605,883),(603,884),(603,885),(605,885),(603,886),(605,886),(603,887),(605,887),(603,888),(605,888),(603,889),(605,889),(603,890),(605,890),(603,891),(608,891),(611,891),(613,891),(603,892),(603,893),(605,893),(603,894),(605,894),(603,895),(605,895),(612,895),(603,896),(603,897),(605,897),(603,898),(612,898),(603,899),(605,899),(603,900),(604,900),(605,900),(606,900),(608,900),(611,900),(613,900),(603,901),(605,901),(603,902),(605,902),(603,903),(605,903),(603,904),(603,905),(605,905),(605,906),(605,907),(608,908),(608,909),(608,910),(608,911),(610,911),(608,912),(610,912),(608,913),(610,913),(665,913),(684,913),(608,914),(608,915),(690,915),(608,916),(608,917),(610,918),(610,919),(610,920),(614,921),(615,921),(616,921),(617,921),(614,922),(615,922),(614,923),(615,923),(618,924),(621,924),(622,924),(684,924),(619,925),(619,926),(622,927),(640,927),(641,927),(660,927),(678,927),(622,928),(623,929),(623,930),(623,931),(623,932),(625,933),(627,933),(625,934),(626,934),(626,935),(628,935),(634,935),(627,936),(628,936),(629,937),(630,938),(688,938),(630,939),(630,940),(633,941),(634,942),(651,942),(652,942),(634,943),(654,943),(634,944),(655,944),(634,945),(659,945),(634,946),(673,946),(684,946),(634,947),(634,948),(653,948),(634,949),(668,949),(634,950),(651,950),(652,950),(634,951),(635,951),(636,951),(637,951),(638,951),(639,951),(640,951),(641,951),(642,951),(643,951),(644,951),(645,951),(646,951),(647,951),(649,951),(651,951),(652,951),(653,951),(654,951),(655,951),(656,951),(657,951),(658,951),(659,951),(660,951),(661,951),(662,951),(663,951),(664,951),(665,951),(666,951),(667,951),(668,951),(669,951),(670,951),(671,951),(672,951),(673,951),(674,951),(675,951),(676,951),(677,951),(678,951),(679,951),(680,951),(681,951),(634,952),(653,952),(658,952),(661,952),(667,952),(674,952),(675,952),(676,952),(677,952),(684,952),(634,953),(679,953),(634,954),(680,954),(634,955),(681,955),(637,956),(656,956),(671,956),(654,957),(657,958),(666,958),(663,959),(664,960),(669,961),(670,962),(671,963),(672,964),(683,965),(686,965),(684,966),(684,967),(684,968),(684,969),(684,970),(684,971),(684,972),(685,973),(686,974),(689,975),(691,976),(692,976),(693,976),(691,977),(692,977),(693,977),(691,978),(692,978),(693,978),(691,979),(692,979),(693,979);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (659,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/8.1/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/8.1/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 8.1 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explicitly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL supports partial revocation of global privileges, such that a\nglobal privilege can be restricted from applying to particular schemas\n(see https://dev.mysql.com/doc/refman/8.1/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-grants.html'),(660,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/8.1/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/8.1/en/invisible-indexes.html.\n\no Expression\n\n  MySQL supports functional key parts (see\n  https://dev.mysql.com/doc/refman/8.1/en/create-index.html#create-inde\n  x-functional-key-parts); this affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/8.1/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nSHOW INDEX includes the table\'s generated invisible key, if it has one,\nby default. You can cause this information to be suppressed in the\nstatement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.1/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-index.html'),(661,'SHOW MASTER STATUS',3,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the source server. It requires the REPLICATION CLIENT privilege (or\nthe deprecated SUPER privilege).\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: source-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-master-status.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-master-status.html'),(662,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/8.1/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-open-tables.html'),(663,'SHOW PARSE_TREE',3,'Syntax:\nSHOW PARSE_TREE select_statement\n\nSHOW PARSE_TREE displays a representation of the parse tree for the\ninput SELECT statement, in JSON format.\n\n*Note*:\n\nThis statement is available only in debug builds, or if the MySQL\nserver was built using -DWITH_SHOW_PARSE_TREE. It is intended for use\nin testing and development only, and not in production.\n\nExample:\n\nmysql> SHOW PARSE_TREE SELECT * FROM t3 WHERE o_id > 2\\G\n*************************** 1. row ***************************\nShow_parse_tree: {\n  \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n  \"type\": \"PT_select_stmt\",\n  \"components\": [\n    {\n      \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n      \"type\": \"PT_query_expression\",\n      \"components\": [\n        {\n          \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n          \"type\": \"PT_query_specification\",\n          \"components\": [\n            {\n              \"text\": \"*\",\n              \"type\": \"PT_select_item_list\",\n              \"components\": [\n                {\n                  \"text\": \"*\",\n                  \"type\": \"Item_asterisk\"\n                }\n              ]\n            },\n            {\n              \"text\": \"t3\",\n              \"type\": \"PT_table_factor_table_ident\",\n              \"table_ident\": \"`t3`\"\n            },\n            {\n              \"text\": \"o_id > 2\",\n              \"type\": \"PTI_where\",\n              \"components\": [\n                {\n                  \"text\": \"o_id > 2\",\n                  \"type\": \"PTI_comp_op\",\n                  \"operator\": \">\",\n                  \"components\": [\n                    {\n                      \"text\": \"o_id\",\n                      \"type\": \"PTI_simple_ident_ident\"\n                    },\n                    {\n                      \"text\": \"2\",\n                      \"type\": \"Item_int\"\n                    }\n                  ]\n                }\n              ]\n            }\n          ]\n        }\n      ]\n    }\n  ]\n}\n1 row in set (0.01 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-parse-tree.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-parse-tree.html'),(664,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-plugins.html'),(665,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-privileges.html'),(666,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.1/en/show-procedure-code.html'),(667,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.1/en/show-procedure-status.html'),(668,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/8.1/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAn alternative implementation for SHOW PROCESSLIST is available based\non the Performance Schema processlist table, which, unlike the default\nSHOW PROCESSLIST implementation, does not require a mutex and has\nbetter performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/8.1/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-processlist.html'),(669,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/8.1/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretation for\nthe two statements for some status values (see\nhttps://dev.mysql.com/doc/refman/8.1/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.1/en/show-profile.html'),(670,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/8.1/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-profiles.html'),(671,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-relaylog-events.html'),(672,'SHOW REPLICAS',3,'Syntax:\nSHOW REPLICAS\n\nDisplays a list of replicas currently registered with the source. SHOW\nREPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info\n  option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-replicas.html'),(673,'SHOW SLAVE HOSTS',3,'Syntax:\nSHOW SLAVE HOSTS\n\nDeprecated alias for SHOW REPLICAS.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-slave-hosts.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-slave-hosts.html'),(674,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW REPLICA STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. The statement requires the REPLICATION CLIENT\nprivilege (or the deprecated SUPER privilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: localhost\n                  Source_User: repl\n                  Source_Port: 13000\n                Connect_Retry: 60\n              Source_Log_File: source-bin.000002\n          Read_Source_Log_Pos: 1307\n               Relay_Log_File: replica-relay-bin.000003\n                Relay_Log_Pos: 1508\n        Relay_Source_Log_File: source-bin.000002\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 1307\n              Relay_Log_Space: 1858\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562\n             Source_Info_File:\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Reading event from the relay log\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_name:\n           Source_TLS_Version: TLSv1.2\n       Source_public_key_path: public_key.pem\n        Get_source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/8.1/en/performance-schema-replication-\ntables.html.\n\nYou can set the GTID_ONLY option for the CHANGE REPLICATION SOURCE TO\nstatement to stop a replication channel from persisting file names and\nfile positions in the replication metadata repositories. With this\nsetting, file positions for the source binary log file and the relay\nlog file are tracked in memory. The SHOW REPLICA STATUS statement still\ndisplays file positions in normal use. However, because the file\npositions are not being regularly updated in the connection metadata\nrepository and the applier metadata repository except in a few\nsituations, they are likely to be out of date if the server is\nrestarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-replica-status.html'),(675,'SHOW SLAVE STATUS',3,'Syntax:\nSHOW SLAVE STATUS [FOR CHANNEL channel]\n\nDeprecated alias for SHOW REPLICA STATUS.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-slave-status.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-slave-status.html'),(676,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/8.1/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.1/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/8.1/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/8.1/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-status.html'),(677,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-table-status.html'),(678,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-tables.html'),(679,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/8.1/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-triggers.html'),(680,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/8.1/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.1/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/8.1/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.1/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/8.1/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/8.1/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-variables.html'),(681,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.1/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/8.1/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/show-warnings.html'),(682,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/8.1/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/binlog.html'),(683,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/cache-index.html'),(684,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | HOSTS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    TABLES\n  | TABLES tbl_name [, tbl_name] ...\n  | TABLES WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... FOR EXPORT\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/8.1/en/stored-program-restrictions.html\n.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.1/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-hosts, flush-logs,\nflush-privileges, flush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/8.1/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/8.1/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/flush.html'),(685,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/kill.html'),(686,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/load-index.html'),(687,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    MASTER\n  | REPLICA\n  | SLAVE\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.1/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET MASTER\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one.\n\n  RESET SLAVE is a deprecated alias for RESET REPLICA, and should no\n  longer be used.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/reset.html'),(688,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/8.1/en/persisted-system-variables.html\n.\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/8.1/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/reset-persist.html'),(689,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/restart.html'),(690,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.1/en/mysql-shutdown.html) C API\nfunction. A successful SHUTDOWN sequence consists of checking the\nprivileges, validating the arguments, and sending an OK packet to the\nclient. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/shutdown.html'),(691,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/explain.html'),(692,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/explain.html'),(693,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/explain.html'),(694,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.1/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nThe HELP statement does not require a terminator such as ; or \\G.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/help.html'),(695,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.1/en/use.html'),(696,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.1/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.1/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.1/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('backend_development','ar_internal_metadata','PRIMARY','2023-11-18 06:18:38','n_diff_pfx01',0,1,'key'),('backend_development','ar_internal_metadata','PRIMARY','2023-11-18 06:18:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('backend_development','ar_internal_metadata','PRIMARY','2023-11-18 06:18:38','size',1,NULL,'Number of pages in the index'),('backend_development','schema_migrations','PRIMARY','2023-11-18 06:18:38','n_diff_pfx01',0,1,'version'),('backend_development','schema_migrations','PRIMARY','2023-11-18 06:18:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('backend_development','schema_migrations','PRIMARY','2023-11-18 06:18:38','size',1,NULL,'Number of pages in the index'),('backend_development','users','PRIMARY','2023-11-18 06:18:38','n_diff_pfx01',0,1,'id'),('backend_development','users','PRIMARY','2023-11-18 06:18:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('backend_development','users','PRIMARY','2023-11-18 06:18:38','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','ar_internal_metadata','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',2,1,'key'),('fitapp_api_development','ar_internal_metadata','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','ar_internal_metadata','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','schema_migrations','PRIMARY','2024-05-05 02:51:15','n_diff_pfx01',22,1,'version'),('fitapp_api_development','schema_migrations','PRIMARY','2024-05-05 02:51:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','schema_migrations','PRIMARY','2024-05-05 02:51:15','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','todos','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_development','todos','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','todos','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_days','PRIMARY','2024-05-12 06:15:19','n_diff_pfx01',15,1,'id'),('fitapp_api_development','training_days','PRIMARY','2024-05-12 06:15:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_days','PRIMARY','2024-05-12 06:15:19','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_days','index_training_days_on_user_id','2024-05-12 06:15:19','n_diff_pfx01',1,1,'user_id'),('fitapp_api_development','training_days','index_training_days_on_user_id','2024-05-12 06:15:19','n_diff_pfx02',15,1,'user_id,id'),('fitapp_api_development','training_days','index_training_days_on_user_id','2024-05-12 06:15:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_days','index_training_days_on_user_id','2024-05-12 06:15:19','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_days','index_training_days_on_user_id_and_date','2024-05-12 06:15:19','n_diff_pfx01',1,1,'user_id'),('fitapp_api_development','training_days','index_training_days_on_user_id_and_date','2024-05-12 06:15:19','n_diff_pfx02',15,1,'user_id,date'),('fitapp_api_development','training_days','index_training_days_on_user_id_and_date','2024-05-12 06:15:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_days','index_training_days_on_user_id_and_date','2024-05-12 06:15:19','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_menus','PRIMARY','2024-05-12 12:00:12','n_diff_pfx01',18,1,'id'),('fitapp_api_development','training_menus','PRIMARY','2024-05-12 12:00:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_menus','PRIMARY','2024-05-12 12:00:12','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_menus','index_training_menus_on_training_day_id','2024-05-12 12:00:12','n_diff_pfx01',12,1,'training_day_id'),('fitapp_api_development','training_menus','index_training_menus_on_training_day_id','2024-05-12 12:00:12','n_diff_pfx02',18,1,'training_day_id,id'),('fitapp_api_development','training_menus','index_training_menus_on_training_day_id','2024-05-12 12:00:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_menus','index_training_menus_on_training_day_id','2024-05-12 12:00:12','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_sessions','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_development','training_sessions','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_sessions','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_diff_pfx01',0,1,'user_id'),('fitapp_api_development','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_diff_pfx02',0,1,'user_id,id'),('fitapp_api_development','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_sets','PRIMARY','2024-05-12 11:16:49','n_diff_pfx01',22,1,'id'),('fitapp_api_development','training_sets','PRIMARY','2024-05-12 11:16:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_sets','PRIMARY','2024-05-12 11:16:49','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','training_sets','index_training_sets_on_training_menu_id','2024-05-12 11:16:49','n_diff_pfx01',14,1,'training_menu_id'),('fitapp_api_development','training_sets','index_training_sets_on_training_menu_id','2024-05-12 11:16:49','n_diff_pfx02',22,1,'training_menu_id,id'),('fitapp_api_development','training_sets','index_training_sets_on_training_menu_id','2024-05-12 11:16:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','training_sets','index_training_sets_on_training_menu_id','2024-05-12 11:16:49','size',1,NULL,'Number of pages in the index'),('fitapp_api_development','users','PRIMARY','2024-05-12 12:03:44','n_diff_pfx01',2,1,'id'),('fitapp_api_development','users','PRIMARY','2024-05-12 12:03:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_development','users','PRIMARY','2024-05-12 12:03:44','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','ar_internal_metadata','PRIMARY','2024-05-05 02:51:05','n_diff_pfx01',2,1,'key'),('fitapp_api_test','ar_internal_metadata','PRIMARY','2024-05-05 02:51:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','ar_internal_metadata','PRIMARY','2024-05-05 02:51:05','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','schema_migrations','PRIMARY','2024-05-05 02:50:55','n_diff_pfx01',22,1,'version'),('fitapp_api_test','schema_migrations','PRIMARY','2024-05-05 02:50:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','schema_migrations','PRIMARY','2024-05-05 02:50:55','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','todos','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','todos','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','todos','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_days','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','training_days','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_days','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_days','index_training_days_on_user_id','2024-05-05 02:50:45','n_diff_pfx01',0,1,'user_id'),('fitapp_api_test','training_days','index_training_days_on_user_id','2024-05-05 02:50:45','n_diff_pfx02',0,1,'user_id,id'),('fitapp_api_test','training_days','index_training_days_on_user_id','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_days','index_training_days_on_user_id','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_days','index_training_days_on_user_id_and_date','2024-05-05 02:50:45','n_diff_pfx01',0,1,'user_id'),('fitapp_api_test','training_days','index_training_days_on_user_id_and_date','2024-05-05 02:50:45','n_diff_pfx02',0,1,'user_id,date'),('fitapp_api_test','training_days','index_training_days_on_user_id_and_date','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_days','index_training_days_on_user_id_and_date','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_menus','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','training_menus','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_menus','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_menus','index_training_menus_on_training_day_id','2024-05-05 02:50:45','n_diff_pfx01',0,1,'training_day_id'),('fitapp_api_test','training_menus','index_training_menus_on_training_day_id','2024-05-05 02:50:45','n_diff_pfx02',0,1,'training_day_id,id'),('fitapp_api_test','training_menus','index_training_menus_on_training_day_id','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_menus','index_training_menus_on_training_day_id','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_sessions','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','training_sessions','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_sessions','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_diff_pfx01',0,1,'user_id'),('fitapp_api_test','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_diff_pfx02',0,1,'user_id,id'),('fitapp_api_test','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_sessions','index_training_sessions_on_user_id','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_sets','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','training_sets','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_sets','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','training_sets','index_training_sets_on_training_menu_id','2024-05-05 02:50:45','n_diff_pfx01',0,1,'training_menu_id'),('fitapp_api_test','training_sets','index_training_sets_on_training_menu_id','2024-05-05 02:50:45','n_diff_pfx02',0,1,'training_menu_id,id'),('fitapp_api_test','training_sets','index_training_sets_on_training_menu_id','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','training_sets','index_training_sets_on_training_menu_id','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_api_test','users','PRIMARY','2024-05-05 02:50:45','n_diff_pfx01',0,1,'id'),('fitapp_api_test','users','PRIMARY','2024-05-05 02:50:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_api_test','users','PRIMARY','2024-05-05 02:50:45','size',1,NULL,'Number of pages in the index'),('fitapp_dev','ar_internal_metadata','PRIMARY','2023-11-04 05:20:41','n_diff_pfx01',0,1,'key'),('fitapp_dev','ar_internal_metadata','PRIMARY','2023-11-04 05:20:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','ar_internal_metadata','PRIMARY','2023-11-04 05:20:41','size',1,NULL,'Number of pages in the index'),('fitapp_dev','schema_migrations','PRIMARY','2023-11-04 05:20:41','n_diff_pfx01',0,1,'version'),('fitapp_dev','schema_migrations','PRIMARY','2023-11-04 05:20:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','schema_migrations','PRIMARY','2023-11-04 05:20:41','size',1,NULL,'Number of pages in the index'),('fitapp_dev','users','PRIMARY','2023-11-27 12:44:05','n_diff_pfx01',3,1,'id'),('fitapp_dev','users','PRIMARY','2023-11-27 12:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','users','PRIMARY','2023-11-27 12:44:05','size',1,NULL,'Number of pages in the index'),('fitapp_dev','users','index_users_on_confirmation_token','2023-11-27 12:44:05','n_diff_pfx01',3,1,'confirmation_token'),('fitapp_dev','users','index_users_on_confirmation_token','2023-11-27 12:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','users','index_users_on_confirmation_token','2023-11-27 12:44:05','size',1,NULL,'Number of pages in the index'),('fitapp_dev','users','index_users_on_email','2023-11-27 12:44:05','n_diff_pfx01',3,1,'email'),('fitapp_dev','users','index_users_on_email','2023-11-27 12:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','users','index_users_on_email','2023-11-27 12:44:05','size',1,NULL,'Number of pages in the index'),('fitapp_dev','users','index_users_on_reset_password_token','2023-11-27 12:44:05','n_diff_pfx01',1,1,'reset_password_token'),('fitapp_dev','users','index_users_on_reset_password_token','2023-11-27 12:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','users','index_users_on_reset_password_token','2023-11-27 12:44:05','size',1,NULL,'Number of pages in the index'),('fitapp_dev','users','index_users_on_uid_and_provider','2023-11-27 12:44:05','n_diff_pfx01',3,1,'uid'),('fitapp_dev','users','index_users_on_uid_and_provider','2023-11-27 12:44:05','n_diff_pfx02',3,1,'uid,provider'),('fitapp_dev','users','index_users_on_uid_and_provider','2023-11-27 12:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_dev','users','index_users_on_uid_and_provider','2023-11-27 12:44:05','size',1,NULL,'Number of pages in the index'),('fitapp_tst','ar_internal_metadata','PRIMARY','2023-11-13 10:20:33','n_diff_pfx01',2,1,'key'),('fitapp_tst','ar_internal_metadata','PRIMARY','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','ar_internal_metadata','PRIMARY','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','schema_migrations','PRIMARY','2023-11-13 10:20:33','n_diff_pfx01',0,1,'version'),('fitapp_tst','schema_migrations','PRIMARY','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','schema_migrations','PRIMARY','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','users','PRIMARY','2023-11-13 10:20:33','n_diff_pfx01',0,1,'id'),('fitapp_tst','users','PRIMARY','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','users','PRIMARY','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','users','index_users_on_confirmation_token','2023-11-13 10:20:33','n_diff_pfx01',0,1,'confirmation_token'),('fitapp_tst','users','index_users_on_confirmation_token','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','users','index_users_on_confirmation_token','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','users','index_users_on_email','2023-11-13 10:20:33','n_diff_pfx01',0,1,'email'),('fitapp_tst','users','index_users_on_email','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','users','index_users_on_email','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','users','index_users_on_reset_password_token','2023-11-13 10:20:33','n_diff_pfx01',0,1,'reset_password_token'),('fitapp_tst','users','index_users_on_reset_password_token','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','users','index_users_on_reset_password_token','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('fitapp_tst','users','index_users_on_uid_and_provider','2023-11-13 10:20:33','n_diff_pfx01',0,1,'uid'),('fitapp_tst','users','index_users_on_uid_and_provider','2023-11-13 10:20:33','n_diff_pfx02',0,1,'uid,provider'),('fitapp_tst','users','index_users_on_uid_and_provider','2023-11-13 10:20:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('fitapp_tst','users','index_users_on_uid_and_provider','2023-11-13 10:20:33','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2023-10-08 07:36:59','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2023-10-08 07:36:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2023-10-08 07:36:59','size',1,NULL,'Number of pages in the index'),('mysql','posts','GEN_CLUST_INDEX','2023-10-08 08:15:21','n_diff_pfx01',0,1,'DB_ROW_ID'),('mysql','posts','GEN_CLUST_INDEX','2023-10-08 08:15:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','posts','GEN_CLUST_INDEX','2023-10-08 08:15:21','size',1,NULL,'Number of pages in the index'),('ninomiya','persons','GEN_CLUST_INDEX','2023-08-29 14:20:55','n_diff_pfx01',2,1,'DB_ROW_ID'),('ninomiya','persons','GEN_CLUST_INDEX','2023-08-29 14:20:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ninomiya','persons','GEN_CLUST_INDEX','2023-08-29 14:20:55','size',1,NULL,'Number of pages in the index'),('ninomiya','posts','PRIMARY','2023-08-30 09:51:34','n_diff_pfx01',5,1,'id'),('ninomiya','posts','PRIMARY','2023-08-30 09:51:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ninomiya','posts','PRIMARY','2023-08-30 09:51:34','size',1,NULL,'Number of pages in the index'),('ninomiya','students','GEN_CLUST_INDEX','2023-08-29 14:20:55','n_diff_pfx01',1,1,'DB_ROW_ID'),('ninomiya','students','GEN_CLUST_INDEX','2023-08-29 14:20:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ninomiya','students','GEN_CLUST_INDEX','2023-08-29 14:20:55','size',1,NULL,'Number of pages in the index'),('ninomiya','users','GEN_CLUST_INDEX','2023-08-30 05:57:25','n_diff_pfx01',2,1,'DB_ROW_ID'),('ninomiya','users','GEN_CLUST_INDEX','2023-08-30 05:57:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ninomiya','users','GEN_CLUST_INDEX','2023-08-30 05:57:25','size',1,NULL,'Number of pages in the index'),('ninomiya','users','Name','2023-08-30 05:57:25','n_diff_pfx01',2,1,'Name'),('ninomiya','users','Name','2023-08-30 05:57:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ninomiya','users','Name','2023-08-30 05:57:25','size',1,NULL,'Number of pages in the index'),('progate','posts','GEN_CLUST_INDEX','2023-08-29 14:20:57','n_diff_pfx01',3,1,'DB_ROW_ID'),('progate','posts','GEN_CLUST_INDEX','2023-08-29 14:20:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('progate','posts','GEN_CLUST_INDEX','2023-08-29 14:20:57','size',1,NULL,'Number of pages in the index'),('shop_app','items','PRIMARY','2023-08-29 14:20:57','n_diff_pfx01',3,1,'id'),('shop_app','items','PRIMARY','2023-08-29 14:20:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shop_app','items','PRIMARY','2023-08-29 14:20:57','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2023-08-29 14:20:57','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2023-08-29 14:20:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2023-08-29 14:20:57','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('backend_development','ar_internal_metadata','2023-11-18 06:18:38',0,1,0),('backend_development','schema_migrations','2023-11-18 06:18:38',0,1,0),('backend_development','users','2023-11-18 06:18:38',0,1,0),('fitapp_api_development','ar_internal_metadata','2024-05-05 02:50:45',2,1,0),('fitapp_api_development','schema_migrations','2024-05-05 02:51:15',22,1,0),('fitapp_api_development','todos','2024-05-05 02:50:45',0,1,0),('fitapp_api_development','training_days','2024-05-12 06:15:19',15,1,2),('fitapp_api_development','training_menus','2024-05-12 12:00:12',18,1,1),('fitapp_api_development','training_sessions','2024-05-05 02:50:45',0,1,1),('fitapp_api_development','training_sets','2024-05-12 11:16:49',22,1,1),('fitapp_api_development','users','2024-05-12 12:03:44',2,1,0),('fitapp_api_test','ar_internal_metadata','2024-05-05 02:51:05',2,1,0),('fitapp_api_test','schema_migrations','2024-05-05 02:50:55',22,1,0),('fitapp_api_test','todos','2024-05-05 02:50:45',0,1,0),('fitapp_api_test','training_days','2024-05-05 02:50:45',0,1,2),('fitapp_api_test','training_menus','2024-05-05 02:50:45',0,1,1),('fitapp_api_test','training_sessions','2024-05-05 02:50:45',0,1,1),('fitapp_api_test','training_sets','2024-05-05 02:50:45',0,1,1),('fitapp_api_test','users','2024-05-05 02:50:45',0,1,0),('fitapp_dev','ar_internal_metadata','2023-11-04 05:20:41',0,1,0),('fitapp_dev','schema_migrations','2023-11-04 05:20:41',0,1,0),('fitapp_dev','users','2023-11-27 12:44:05',3,1,4),('fitapp_tst','ar_internal_metadata','2023-11-13 10:20:33',2,1,0),('fitapp_tst','schema_migrations','2023-11-13 10:20:33',0,1,0),('fitapp_tst','users','2023-11-13 10:20:33',0,1,4),('mysql','component','2023-10-08 07:36:59',0,1,0),('mysql','posts','2023-10-08 08:15:21',0,1,0),('ninomiya','persons','2023-10-08 07:37:00',2,1,0),('ninomiya','posts','2023-08-30 09:51:34',5,1,0),('ninomiya','students','2023-10-08 07:37:00',1,1,0),('ninomiya','users','2023-08-30 05:57:25',2,1,1),('progate','posts','2023-10-08 07:37:00',3,1,0),('shop_app','items','2023-08-29 14:20:57',3,1,0),('sys','sys_config','2023-08-29 14:20:57',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint unsigned NOT NULL,
  `inserts` int unsigned NOT NULL,
  `updates` int unsigned NOT NULL,
  `deletes` int unsigned NOT NULL,
  `schemaops` int unsigned NOT NULL,
  `orig_server_id` int unsigned NOT NULL,
  `orig_epoch` bigint unsigned NOT NULL,
  `gci` int unsigned NOT NULL,
  `next_position` bigint unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8mb3_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `message` varchar(140) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  CONSTRAINT `posts_chk_1` CHECK (((`likes` >= 0) and (`likes` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Db`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@connecting host','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2023-08-20 01:15:59',NULL),('disk_temptable_row_cost',NULL,'2023-08-20 01:15:59',NULL),('key_compare_cost',NULL,'2023-08-20 01:15:59',NULL),('memory_temptable_create_cost',NULL,'2023-08-20 01:15:59',NULL),('memory_temptable_row_cost',NULL,'2023-08-20 01:15:59',NULL),('row_evaluate_cost',NULL,'2023-08-20 01:15:59',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF','GENERATE') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@connecting host','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2023-08-20 01:16:00','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8mb3_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2023-10-08 07:36:59',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2023-08-20 01:16:00',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2023-08-20 01:16:00',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*6F24378D3C76B04B6BFEE512FADC94CAB5BA69EA','N','2024-03-17 11:31:41',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','tesuto1','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*91774E96EF8BAD9371BB4E0A020343FE8AC737D7','N','2023-10-08 02:22:30',NULL,'N','N','N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `backend_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `backend_development` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `backend_development`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2023-11-18 06:18:38.337405','2023-11-18 06:18:38.337405');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20231118061805');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `backend_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `backend_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `backend_test`;

--
-- Current Database: `fitapp_api_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fitapp_api_development` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fitapp_api_development`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2024-05-05 02:50:45.569465','2024-05-05 02:50:45.569465'),('schema_sha1','4b1c0ae0e8b8a576c8b12b9a6d7b4538f11633ac','2024-05-05 02:50:45.595708','2024-05-05 02:50:45.595708');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20240320080331'),('20240322070041'),('20240327021556'),('20240327021721'),('20240327022004'),('20240327022240'),('20240327022635'),('20240401021604'),('20240403120728'),('20240403120817'),('20240403120946'),('20240403122750'),('20240403123003'),('20240403130016'),('20240407054206'),('20240409125136'),('20240409125257'),('20240409130216'),('20240410122236'),('20240412005822'),('20240422015156'),('20240502130813'),('20240505073614');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_days`
--

DROP TABLE IF EXISTS `training_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_days` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_training_days_on_user_id_and_date` (`user_id`,`date`),
  KEY `index_training_days_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_a5d156f0f9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_days`
--

LOCK TABLES `training_days` WRITE;
/*!40000 ALTER TABLE `training_days` DISABLE KEYS */;
INSERT INTO `training_days` VALUES (1,1,'2024-05-05','2024-05-05 02:53:51.497051','2024-05-05 02:53:51.497051'),(2,1,'2024-05-04','2024-05-05 03:20:07.240510','2024-05-05 03:20:07.240510'),(3,1,'2024-05-02','2024-05-05 07:10:10.947069','2024-05-05 07:10:10.947069'),(4,1,'2024-05-11','2024-05-06 08:04:24.803549','2024-05-06 08:04:24.803549'),(5,1,'2024-05-18','2024-05-06 08:08:12.697312','2024-05-06 08:08:12.697312'),(6,1,'2024-05-06','2024-05-06 14:02:44.596153','2024-05-06 14:02:44.596153'),(8,1,'2024-05-09','2024-05-08 05:55:19.706210','2024-05-08 05:55:19.706210'),(9,1,'2024-05-08','2024-05-08 11:58:42.903295','2024-05-08 11:58:42.903295'),(10,1,'2024-05-10','2024-05-10 02:42:18.266578','2024-05-10 02:42:18.266578'),(11,1,'2024-11-09','2024-05-10 09:29:35.762493','2024-05-10 09:29:35.762493'),(12,1,'2024-05-01','2024-05-10 12:14:32.286423','2024-05-10 12:14:32.286423'),(13,1,'2024-05-03','2024-05-10 12:14:49.730740','2024-05-10 12:14:49.730740'),(14,1,'2024-05-22','2024-05-10 12:17:19.367878','2024-05-10 12:17:19.367878'),(15,1,'2024-06-06','2024-05-10 12:17:43.702177','2024-05-10 12:17:43.702177'),(16,1,'2024-05-12','2024-05-12 06:15:19.600341','2024-05-12 06:15:19.600341'),(17,1,'2024-05-25','2024-05-12 11:49:07.553904','2024-05-12 11:49:07.553904');
/*!40000 ALTER TABLE `training_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_menus`
--

DROP TABLE IF EXISTS `training_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_menus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body_part` varchar(255) DEFAULT NULL,
  `exercise_name` varchar(255) DEFAULT NULL,
  `training_day_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_menus_on_training_day_id` (`training_day_id`),
  CONSTRAINT `fk_rails_f9fde505d3` FOREIGN KEY (`training_day_id`) REFERENCES `training_days` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_menus`
--

LOCK TABLES `training_menus` WRITE;
/*!40000 ALTER TABLE `training_menus` DISABLE KEYS */;
INSERT INTO `training_menus` VALUES (1,NULL,'benchpress',1,'2024-05-05 02:53:51.528974','2024-05-05 02:53:51.528974'),(2,NULL,'pullup',1,'2024-05-05 02:53:51.534414','2024-05-05 02:53:51.534414'),(4,NULL,'懸垂',3,'2024-05-05 07:10:10.957216','2024-05-05 07:10:10.957216'),(143,NULL,'benchpress',6,'2024-05-08 05:44:04.672603','2024-05-08 05:44:04.672603'),(153,NULL,'abs',9,'2024-05-08 13:21:05.261838','2024-05-08 13:21:05.261838'),(194,'','a',8,'2024-05-09 03:54:02.423416','2024-05-09 03:54:02.423416'),(195,'','b',8,'2024-05-09 03:54:02.436381','2024-05-09 03:54:02.436381'),(196,'背中','c',8,'2024-05-09 03:54:02.444596','2024-05-09 03:54:02.444596'),(197,'','d',8,'2024-05-09 03:54:02.453662','2024-05-09 03:54:02.453662'),(198,'腕','e',8,'2024-05-09 03:54:02.459628','2024-05-09 03:54:02.459628'),(199,'肩','g',8,'2024-05-09 03:54:02.464007','2024-05-09 03:54:02.464007'),(201,'胸','ディップス',10,'2024-05-10 02:42:18.335964','2024-05-10 02:42:18.335964'),(202,'胸','benchpress',11,'2024-05-10 09:29:35.784763','2024-05-10 09:29:35.784763'),(204,'胸','benchpress',13,'2024-05-10 12:14:49.743301','2024-05-10 12:14:49.743301'),(205,'胸','s',14,'2024-05-10 12:17:19.378959','2024-05-10 12:17:19.378959'),(207,'胸','a',15,'2024-05-10 12:18:21.368630','2024-05-10 12:18:21.368630'),(208,'胸','bench',12,'2024-05-11 00:59:06.466703','2024-05-11 00:59:06.466703'),(212,'胸','o',16,'2024-05-12 11:36:43.894317','2024-05-12 11:36:43.894317'),(225,NULL,'a',2,'2024-05-12 12:00:12.093384','2024-05-12 12:00:12.093384');
/*!40000 ALTER TABLE `training_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_sessions`
--

DROP TABLE IF EXISTS `training_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_sessions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_sessions`
--

LOCK TABLES `training_sessions` WRITE;
/*!40000 ALTER TABLE `training_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_sets`
--

DROP TABLE IF EXISTS `training_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_sets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `set_number` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `reps` int DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `training_menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_sets_on_training_menu_id` (`training_menu_id`),
  CONSTRAINT `fk_rails_2f0451ed8b` FOREIGN KEY (`training_menu_id`) REFERENCES `training_menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_sets`
--

LOCK TABLES `training_sets` WRITE;
/*!40000 ALTER TABLE `training_sets` DISABLE KEYS */;
INSERT INTO `training_sets` VALUES (1,1,0,0,0,'2024-05-05 02:53:51.530623','2024-05-05 11:45:13.232147',1),(2,1,90,8,0,'2024-05-05 02:53:51.535383','2024-05-05 02:53:51.535383',2),(3,2,90,8,0,'2024-05-05 03:19:39.616043','2024-05-05 03:19:39.616043',2),(6,1,100,10,0,'2024-05-05 07:10:10.959802','2024-05-05 07:10:10.959802',4),(51,2,0,0,0,'2024-05-06 05:53:04.426347','2024-05-06 05:53:04.426347',1),(52,3,90,8,0,'2024-05-06 05:53:04.448378','2024-05-06 05:53:04.448378',2),(53,4,90,8,0,'2024-05-06 05:53:04.454956','2024-05-06 05:53:04.454956',2),(263,1,100,10,0,'2024-05-08 05:44:04.683174','2024-05-08 05:44:04.683174',143),(264,2,2,0,0,'2024-05-08 05:44:04.691166','2024-05-08 05:44:04.691166',143),(265,3,4,0,0,'2024-05-08 05:44:04.696541','2024-05-08 05:44:04.696541',143),(274,1,10,10,0,'2024-05-08 13:21:05.269452','2024-05-08 13:21:05.269452',153),(310,1,0,0,0,'2024-05-09 03:54:02.431369','2024-05-09 03:54:02.431369',194),(311,1,100,10,0,'2024-05-10 02:42:18.350424','2024-05-10 02:42:18.350424',201),(312,1,100,100,0,'2024-05-10 09:29:35.808471','2024-05-10 09:29:35.808471',202),(314,1,100,10,0,'2024-05-10 12:14:49.753267','2024-05-10 12:14:49.753267',204),(315,1,1000,10,0,'2024-05-10 12:17:19.386847','2024-05-10 12:17:19.386847',205),(317,1,10000,1,0,'2024-05-10 12:18:21.385268','2024-05-10 12:18:21.385268',207),(318,1,100,10,1,'2024-05-11 00:59:06.482111','2024-05-11 00:59:06.482111',208),(319,2,100,10,0,'2024-05-11 00:59:06.492922','2024-05-11 00:59:06.492922',208),(320,3,100,10,0,'2024-05-11 00:59:06.500255','2024-05-11 00:59:06.500255',208),(323,1,100,10,0,'2024-05-12 11:36:43.916742','2024-05-12 11:36:43.916742',212);
/*!40000 ALTER TABLE `training_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'106328513442892547365','Ryo Ninomiya','google','2024-05-05 02:53:14.300929','2024-05-05 02:53:14.300929'),(2,'110446993639298212985','Ryo Ninomiya','google','2024-05-12 12:03:44.715647','2024-05-12 12:03:44.715647');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `fitapp_api_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fitapp_api_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fitapp_api_test`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','test','2024-05-05 02:50:45.681435','2024-05-05 02:50:45.685436'),('schema_sha1','4b1c0ae0e8b8a576c8b12b9a6d7b4538f11633ac','2024-05-05 02:50:45.689510','2024-05-05 02:50:45.689510');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20240320080331'),('20240322070041'),('20240327021556'),('20240327021721'),('20240327022004'),('20240327022240'),('20240327022635'),('20240401021604'),('20240403120728'),('20240403120817'),('20240403120946'),('20240403122750'),('20240403123003'),('20240403130016'),('20240407054206'),('20240409125136'),('20240409125257'),('20240409130216'),('20240410122236'),('20240412005822'),('20240422015156'),('20240502130813');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_days`
--

DROP TABLE IF EXISTS `training_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_days` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_training_days_on_user_id_and_date` (`user_id`,`date`),
  KEY `index_training_days_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_a5d156f0f9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_days`
--

LOCK TABLES `training_days` WRITE;
/*!40000 ALTER TABLE `training_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_menus`
--

DROP TABLE IF EXISTS `training_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_menus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body_part` varchar(255) DEFAULT NULL,
  `exercise_name` varchar(255) DEFAULT NULL,
  `training_day_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_menus_on_training_day_id` (`training_day_id`),
  CONSTRAINT `fk_rails_f9fde505d3` FOREIGN KEY (`training_day_id`) REFERENCES `training_days` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_menus`
--

LOCK TABLES `training_menus` WRITE;
/*!40000 ALTER TABLE `training_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_sessions`
--

DROP TABLE IF EXISTS `training_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_sessions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_sessions`
--

LOCK TABLES `training_sessions` WRITE;
/*!40000 ALTER TABLE `training_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_sets`
--

DROP TABLE IF EXISTS `training_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_sets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `set_number` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `reps` int DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `training_menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_training_sets_on_training_menu_id` (`training_menu_id`),
  CONSTRAINT `fk_rails_2f0451ed8b` FOREIGN KEY (`training_menu_id`) REFERENCES `training_menus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_sets`
--

LOCK TABLES `training_sets` WRITE;
/*!40000 ALTER TABLE `training_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `fitapp_dev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fitapp_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fitapp_dev`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2023-11-04 05:20:41.882046','2023-11-04 05:20:41.882046');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20231104052015');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) NOT NULL DEFAULT 'email',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `allow_password_change` tinyint(1) DEFAULT '0',
  `remember_created_at` datetime(6) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `confirmation_sent_at` datetime(6) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tokens` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_uid_and_provider` (`uid`,`provider`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'email','tstmail@yahoo.co.jp','$2a$12$Lxz5mR/RdO9.Rxn.toa83Ovo5SGkvX9TVGPxj9dE/iQKNKqrmyVE2',NULL,NULL,0,NULL,'yai4kDJXPcUPa6pwF1sS',NULL,'2023-11-04 12:20:00.605914',NULL,NULL,NULL,NULL,'tstmail@yahoo.co.jp',NULL,'2023-11-04 12:20:00.605819','2023-11-04 12:20:00.605819'),(50,'email','guest@example.com','$2a$12$8EZ8nPDKGMnzT1Nxdcj83uzn/6rcFD3kegy5oV.u3YKbIkNSNs0kC',NULL,NULL,0,NULL,NULL,'2023-11-18 09:37:53.263800',NULL,NULL,NULL,NULL,NULL,'guest@example.com','{\"Z_Fmv9gXFoD8niwsDG8fuQ\":{\"token\":\"$2a$10$TOfa7ATCAKl2eNmvhqcN0uklPMO8fFz7/zZ7nB4/69SQTGHMlNhTa\",\"expiry\":1701509873},\"_8tKPa0nBntz6WmEKsuGCA\":{\"token\":\"$2a$10$PX2l7Qn4bmdsF8HCKs3gyumaU89XnSAoLc6pARuWM5pFAhcKl2mBa\",\"expiry\":1701510790},\"8phemifCQAKvFeegu0dhkQ\":{\"token\":\"$2a$10$.wXSUHje/BnyPpckdxpVueO39y2knzM4Dj58pqhCpN/mVoeqwOFCK\",\"expiry\":1701511330}}','2023-11-18 09:37:53.265496','2023-11-18 10:02:10.460437'),(55,'email','fcbryo_3098@yahoo.co.jp','$2a$12$rChQ/KtxTrC1gi.YPMCuAuaNRo7PA/nHqfzXyBQqHgYI5Hiv6p6J2',NULL,NULL,0,NULL,'YqA99wMcVa7Y_NswG36e','2023-11-27 12:45:29.936710','2023-11-27 12:44:05.713859',NULL,NULL,NULL,NULL,'fcbryo_3098@yahoo.co.jp',NULL,'2023-11-27 12:44:05.713828','2023-11-27 12:45:29.936939');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `fitapp_tst`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fitapp_tst` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fitapp_tst`;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','test','2023-11-13 10:20:33.506869','2023-11-13 10:20:33.506869'),('schema_sha1','ed0f28bde165120a50c903533b7c582146a356a2','2023-11-13 10:20:33.510893','2023-11-13 10:20:33.510893');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20231104052015');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) NOT NULL DEFAULT 'email',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `allow_password_change` tinyint(1) DEFAULT '0',
  `remember_created_at` datetime(6) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `confirmation_sent_at` datetime(6) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tokens` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_uid_and_provider` (`uid`,`provider`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `miniapp_dev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `miniapp_dev` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `miniapp_dev`;

--
-- Current Database: `miniapp_tst`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `miniapp_tst` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `miniapp_tst`;

--
-- Current Database: `nino`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nino` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nino`;

--
-- Current Database: `Ninomiya`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Ninomiya` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Ninomiya`;

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persons` (
  `ID` int NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persons`
--

LOCK TABLES `Persons` WRITE;
/*!40000 ALTER TABLE `Persons` DISABLE KEYS */;
INSERT INTO `Persons` VALUES (2,'田中',NULL,20),(2,'田中',NULL,13);
/*!40000 ALTER TABLE `Persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(140) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Thanks100%',12),(2,'Arigato',4),(3,'thanks_somuch',4),(4,'Gracias',50),(5,'Danke',90);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (170);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int unsigned DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Score` float DEFAULT '0',
  `Imn` int DEFAULT NULL,
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tanaka',6.9,15),(1,'Ikki',6.9,9);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `progate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `progate` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `progate`;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `message` varchar(140) DEFAULT NULL,
  `likes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('Thanks',12),('Arigato',3),('Merci',104);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `shop_app`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `shop_app` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shop_app`;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `cost` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'にんじん',60,100),(2,'バナナ',200,150),(3,'牛乳',120,80);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 11:17:55