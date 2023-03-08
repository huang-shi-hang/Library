-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: onebyone
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add bookinfo',7,'add_bookinfo'),(26,'Can change bookinfo',7,'change_bookinfo'),(27,'Can delete bookinfo',7,'delete_bookinfo'),(28,'Can view bookinfo',7,'view_bookinfo'),(29,'Can add returninfo',8,'add_returninfo'),(30,'Can change returninfo',8,'change_returninfo'),(31,'Can delete returninfo',8,'delete_returninfo'),(32,'Can view returninfo',8,'view_returninfo'),(33,'Can add loguser',9,'add_loguser'),(34,'Can change loguser',9,'change_loguser'),(35,'Can delete loguser',9,'delete_loguser'),(36,'Can view loguser',9,'view_loguser'),(37,'Can add borrowinfo',10,'add_borrowinfo'),(38,'Can change borrowinfo',10,'change_borrowinfo'),(39,'Can delete borrowinfo',10,'delete_borrowinfo'),(40,'Can view borrowinfo',10,'view_borrowinfo'),(41,'Can add menu',11,'add_menu'),(42,'Can change menu',11,'change_menu'),(43,'Can delete menu',11,'delete_menu'),(44,'Can view menu',11,'view_menu'),(45,'Can add perm group',12,'add_permgroup'),(46,'Can change perm group',12,'change_permgroup'),(47,'Can delete perm group',12,'delete_permgroup'),(48,'Can view perm group',12,'view_permgroup'),(49,'Can add permission',13,'add_permission'),(50,'Can change permission',13,'change_permission'),(51,'Can delete permission',13,'delete_permission'),(52,'Can view permission',13,'view_permission'),(53,'Can add role',14,'add_role'),(54,'Can change role',14,'change_role'),(55,'Can delete role',14,'delete_role'),(56,'Can view role',14,'view_role'),(57,'Can add user info',15,'add_userinfo'),(58,'Can change user info',15,'change_userinfo'),(59,'Can delete user info',15,'delete_userinfo'),(60,'Can view user info',15,'view_userinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$5HWrVPf2mOy3n43fURrSOw$9onoD6AqMk8lFKgn7uSXyBV3EH1Q9TQHWe3bAVwRDdA=','2021-12-19 14:41:57.315931',1,'hshlibrary','','','3042569263@qq.com',1,1,'2021-12-14 12:23:38.673533'),(2,'pbkdf2_sha256$260000$lr7Frz2HKjVT24LxENstu4$ghS2Vz4D/dwWC5+3mQmT7VMTzXT3OUeXRRXbCzA3jEk=',NULL,1,'1111','','','3042569263@qq.com',1,1,'2021-12-19 15:18:40.657356'),(3,'pbkdf2_sha256$260000$BqqZOkVRmHdEVswiAIQvlT$AxQ0YmaLLjahvy8FPMhk37UEldeIBnifsyfepniQIFo=','2021-12-19 15:23:43.848699',1,'2222','','','3042569263@qq.com',1,1,'2021-12-19 15:23:18.850728');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-15 03:35:00.375003','1','书籍信息',1,'[{\"added\": {}}]',11,1),(2,'2021-12-15 03:35:07.945159','1','bookinfo组',1,'[{\"added\": {}}]',12,1),(3,'2021-12-15 03:35:32.806916','1','书籍信息修改',1,'[{\"added\": {}}]',13,1),(4,'2021-12-15 03:37:16.977687','2','书籍信息增加',1,'[{\"added\": {}}]',13,1),(5,'2021-12-15 03:37:46.993100','1','书籍信息管理',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u540d\\u79f0\"]}}]',13,1),(6,'2021-12-15 03:38:49.191599','3','书籍信息修改',1,'[{\"added\": {}}]',13,1),(7,'2021-12-15 03:39:31.939658','4','书籍信息删除',1,'[{\"added\": {}}]',13,1),(8,'2021-12-15 03:41:54.423349','2','用户信息',1,'[{\"added\": {}}]',11,1),(9,'2021-12-15 03:41:57.210257','2','userinfo组',1,'[{\"added\": {}}]',12,1),(10,'2021-12-15 03:42:05.926746','5','用户信息管理',1,'[{\"added\": {}}]',13,1),(11,'2021-12-15 03:43:22.750846','6','用户信息修改',1,'[{\"added\": {}}]',13,1),(12,'2021-12-15 03:46:27.284452','3','借阅管理',1,'[{\"added\": {}}]',11,1),(13,'2021-12-15 03:46:30.424328','3','borrow组',1,'[{\"added\": {}}]',12,1),(14,'2021-12-15 03:46:39.849939','7','借阅信息管理',1,'[{\"added\": {}}]',13,1),(15,'2021-12-15 03:47:40.126635','8','借阅信息增加',1,'[{\"added\": {}}]',13,1),(16,'2021-12-15 03:48:44.945111','9','借阅信息修改',1,'[{\"added\": {}}]',13,1),(17,'2021-12-15 03:50:33.549173','10','借阅信息删除',1,'[{\"added\": {}}]',13,1),(18,'2021-12-15 03:52:22.776001','4','borrow审批组',1,'[{\"added\": {}}]',12,1),(19,'2021-12-15 03:52:43.534912','11','借阅信息审批',1,'[{\"added\": {}}]',13,1),(20,'2021-12-15 03:53:58.093094','11','待审批借阅信息',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u540d\\u79f0\"]}}]',13,1),(21,'2021-12-15 03:55:20.819585','12','借阅信息审批',1,'[{\"added\": {}}]',13,1),(22,'2021-12-15 03:57:27.177900','1','普通用户',1,'[{\"added\": {}}]',14,1),(23,'2021-12-15 03:57:39.057501','2','管理员',1,'[{\"added\": {}}]',14,1),(24,'2021-12-15 03:59:23.440914','1','学生甲',1,'[{\"added\": {}}]',15,1),(25,'2021-12-15 04:00:03.610984','2','管理员甲',1,'[{\"added\": {}}]',15,1),(26,'2021-12-15 04:01:53.258445','3','学生乙',1,'[{\"added\": {}}]',15,1),(27,'2021-12-15 04:02:29.630594','4','管理员乙',1,'[{\"added\": {}}]',15,1),(28,'2021-12-15 07:34:11.930192','10','借阅信息删除',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u4ee3\\u7801\"]}}]',13,1),(29,'2021-12-16 07:29:50.038143','13','还书',1,'[{\"added\": {}}]',13,1),(30,'2021-12-16 07:30:01.171664','2','管理员',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1),(31,'2021-12-16 08:23:03.235584','14','还书信息审批',1,'[{\"added\": {}}]',13,1),(32,'2021-12-16 08:23:47.596836','14','还书信息审批',2,'[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u4e8c\\u7ea7\\u83dc\\u5355\"]}}]',13,1),(33,'2021-12-16 08:23:57.012175','2','管理员',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1),(34,'2021-12-16 08:25:00.905193','14','还书信息审批',2,'[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u4e8c\\u7ea7\\u83dc\\u5355\"]}}]',13,1),(35,'2021-12-16 08:28:32.625451','14','待审批还书信息',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u540d\\u79f0\"]}}]',13,1),(36,'2021-12-16 08:29:02.386747','14','待审批还书信息',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u4ee3\\u7801\"]}}]',13,1),(37,'2021-12-16 09:06:56.170826','15','续借',1,'[{\"added\": {}}]',13,1),(38,'2021-12-16 09:07:05.228528','2','管理员',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1),(39,'2021-12-16 09:59:18.123646','4','借阅记录',1,'[{\"added\": {}}]',11,1),(40,'2021-12-16 09:59:19.929247','5','list组',1,'[{\"added\": {}}]',12,1),(41,'2021-12-16 09:59:40.387070','16','全部借阅记录',1,'[{\"added\": {}}]',13,1),(42,'2021-12-16 10:00:39.739392','17','个人借阅记录',1,'[{\"added\": {}}]',13,1),(43,'2021-12-16 10:00:50.676199','2','管理员',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1),(44,'2021-12-16 14:06:03.847466','5','管理员丙',1,'[{\"added\": {}}]',15,1),(45,'2021-12-19 14:43:11.825597','1','普通用户',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1),(46,'2021-12-19 15:02:06.916300','1','普通用户',2,'[{\"changed\": {\"fields\": [\"\\u62e5\\u6709\\u6743\\u9650\"]}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'rbac','menu'),(12,'rbac','permgroup'),(13,'rbac','permission'),(14,'rbac','role'),(15,'rbac','userinfo'),(6,'sessions','session'),(7,'system','bookinfo'),(10,'system','borrowinfo'),(9,'system','loguser'),(8,'system','returninfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-14 12:08:40.958630'),(2,'auth','0001_initial','2021-12-14 12:08:41.619299'),(3,'admin','0001_initial','2021-12-14 12:08:41.774750'),(4,'admin','0002_logentry_remove_auto_add','2021-12-14 12:08:41.786754'),(5,'admin','0003_logentry_add_action_flag_choices','2021-12-14 12:08:41.797717'),(6,'contenttypes','0002_remove_content_type_name','2021-12-14 12:08:41.913289'),(7,'auth','0002_alter_permission_name_max_length','2021-12-14 12:08:41.984471'),(8,'auth','0003_alter_user_email_max_length','2021-12-14 12:08:42.099288'),(9,'auth','0004_alter_user_username_opts','2021-12-14 12:08:42.109295'),(10,'auth','0005_alter_user_last_login_null','2021-12-14 12:08:42.169125'),(11,'auth','0006_require_contenttypes_0002','2021-12-14 12:08:42.174154'),(12,'auth','0007_alter_validators_add_error_messages','2021-12-14 12:08:42.184086'),(13,'auth','0008_alter_user_username_max_length','2021-12-14 12:08:42.251352'),(14,'auth','0009_alter_user_last_name_max_length','2021-12-14 12:08:42.333422'),(15,'auth','0010_alter_group_name_max_length','2021-12-14 12:08:42.397337'),(16,'auth','0011_update_proxy_permissions','2021-12-14 12:08:42.408330'),(17,'auth','0012_alter_user_first_name_max_length','2021-12-14 12:08:42.475933'),(18,'rbac','0001_initial','2021-12-14 12:08:43.163572'),(19,'rbac','0002_auto_20211212_2052','2021-12-14 12:08:44.219658'),(20,'sessions','0001_initial','2021-12-14 12:08:44.262667'),(21,'system','0001_initial','2021-12-14 12:08:44.637057'),(22,'system','0002_auto_20211214_2005','2021-12-14 12:08:44.833755'),(23,'system','0003_alter_borrowinfo_oprator','2021-12-14 12:08:44.879664'),(24,'system','0004_alter_bookinfo_status','2021-12-15 03:30:31.626768');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('i9sydkzi1wzim6797zagde4u6kqqpskz','.eJytlt2ymyAQgN-F29oIKIi57H2fIEkdFDyxMZrxp53Mmbx7IRqjUTx24g2jy_58LMvCJ7jI4pyUZZJnQZQLWYLtDqRJWQELcCHUKGSqRimSChwsUBdpcJJXsP0ESA_TNnftxrSxuavY5bWs5NkO8_yk1W2l0pcp21eRdmTv4Hf_8O11SjnvZg43C-ApnB72AKEuZfGKoGWDeNqrs2iR3Y8pXpgXRf53vGgtHS1bC40L15P9pb_OFbKqi2wiygdPsmZNrjFTVvNnXEB0lNFp7Dvgl0uR_5H27pdtZmqNNQGZIjCF5mnauOk7Pl8fssNNOTzLrG7qcvcJEgG2yAJVUqUSbMG-diWl-9qLXKG-Y4n2NYU0VpKQq2_PhRTcwyrlqRq9JCLQPrM6TdtQbYj791dxwM1qmPASJsJ8qUbM4SRTWywPJPQOj7OER30rHkocf5LnpU5X4XIX5QljuK99St1JruERWQWL9LE8gpmax463uKT6PcdQUnjENB2nY6JLmGa2cNTznmjkHS6vz0UgivVWQfIfx6_fLw3ZckZU_Ug97w8qtoRq9gD2-vUDynuHyF9CNHsEJy6LVcgQXJSsuVM4vqrWIRv0dhIzpUbuahR7vonVwNfdaGvVGMKL8tbxGrjGV2rXw9BbeIOmz2LBmr5nwHi-JtbZOnd-6548C7Zu8KpYcQOHfV5K0ZiYukHzrlorQYOGThBV6fChZENDFoZQp4-QEdTgsWRIiTtL1XPeUXnDGxlzPYZ8MdXztbYClH4iqmsryJLolPFzu09dLpWaS5i-oRwMGtVWC0OMEIRISQNeV8fg7kYHBy-ykEcnmekJ8ZtnH_kmyrOqSMKNVtm0s-Xmp3rBpj9a3YGDIy-PyjpkKiBxMYIOZdznsYi5F8aIM1VXsaAuc2IfUV86hGOHsxh5GLpR7DMqaUQluP0DAX9QtQ:1myyLJ:D2FP16HulsVyM1fJaMV-QtHz3-v4uDFafWBKXigL_NY','2022-01-02 15:43:21.914662'),('zu50oemg306gjse8vu4hd03d0cro4d4b','.eJytlNmumzAQQP_Fr6WJwRvkse_9giRCxsuNG5YrwKqiKP_eceAq0EAVqXkZmVnPDGNf0adpK9d1rqlz1WjTod0ela7rUYSk1iC1KUEa7Xp0jFAufX_KfWfa3Gm0QwTNdIVUZ1MHg_4l649mo5q6b12xCS6b0dptfkKl8sfoO0twkt0JojOrYiEV4yy2gorMKJylhDNqLZYFxphYqm0iCKZEUaE1IYwKrowwSqeMQVLflvnZXNDuCpAglru79zVr8tErZLgHbLtL15tqWzRt2_wO4Vvwmmsh27MyJNru8ffs-O3ZCCVXba3pfVsvVPmQDtTHW4TYc08LyNVlCAwxEFSZ2g9D2V9R-H8iQr3rSwMjP3iGY3vwGcfs4Kk18cFzzEEjCglnQTEfxgrOyyP5dPq-FbUvy7FY-CTjebnSJPstGqjSV6hYmhmQicQrVOMv-YIS_0OUvUIEZyDijGQrRH_tw1vIYvzSsJIEBz2nK2jzbXwPGZmSpVanwGT42hI9dv491dm0ujBGDyFryzLcrHcVn90rahIZZCHngWlRwE9h9uu5mkA97u3qraL_hJrkvoV3IbyttVPnWlajc8E5ULMQIhhJ0OA02hOcxPDKxuj2B50F8bs:1myy6g:T0ibmPR30YriPzjVQjeCDTJr46-_cGWqG62yyEotsWI','2022-01-02 15:28:14.331050');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_menu`
--

DROP TABLE IF EXISTS `rbac_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_menu`
--

LOCK TABLES `rbac_menu` WRITE;
/*!40000 ALTER TABLE `rbac_menu` DISABLE KEYS */;
INSERT INTO `rbac_menu` VALUES (1,'书籍信息'),(3,'借阅管理'),(4,'借阅记录'),(2,'用户信息');
/*!40000 ALTER TABLE `rbac_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_permgroup`
--

DROP TABLE IF EXISTS `rbac_permgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_permgroup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rbac_permgroup_menu_id_1483037e_fk` (`menu_id`),
  CONSTRAINT `rbac_permgroup_menu_id_1483037e_fk` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permgroup`
--

LOCK TABLES `rbac_permgroup` WRITE;
/*!40000 ALTER TABLE `rbac_permgroup` DISABLE KEYS */;
INSERT INTO `rbac_permgroup` VALUES (1,'bookinfo组',1),(2,'userinfo组',2),(3,'borrow组',3),(4,'borrow审批组',3),(5,'list组',4);
/*!40000 ALTER TABLE `rbac_permgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_permission`
--

DROP TABLE IF EXISTS `rbac_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `url` varchar(128) NOT NULL,
  `perm_code` varchar(32) NOT NULL,
  `perm_group_id` bigint NOT NULL,
  `pid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `url` (`url`),
  KEY `rbac_permission_perm_group_id_4b19e4a0_fk` (`perm_group_id`),
  KEY `rbac_permission_pid_id_6939354d_fk` (`pid_id`),
  CONSTRAINT `rbac_permission_perm_group_id_4b19e4a0_fk` FOREIGN KEY (`perm_group_id`) REFERENCES `rbac_permgroup` (`id`),
  CONSTRAINT `rbac_permission_pid_id_6939354d_fk` FOREIGN KEY (`pid_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permission`
--

LOCK TABLES `rbac_permission` WRITE;
/*!40000 ALTER TABLE `rbac_permission` DISABLE KEYS */;
INSERT INTO `rbac_permission` VALUES (1,'书籍信息管理','/system/booklist/','list',1,NULL),(2,'书籍信息增加','/system/bookadd/','add',1,1),(3,'书籍信息修改','/system/bookedit/<int:id>/','edit',1,1),(4,'书籍信息删除','/system/bookdel/<int:id>/','del',1,1),(5,'用户信息管理','/system/userlist/','list',2,NULL),(6,'用户信息修改','/system/useredit/<int:id>/','edit',2,5),(7,'借阅信息管理','/system/borrowlist/','list',3,NULL),(8,'借阅信息增加','/system/borrowadd/','add',3,7),(9,'借阅信息修改','/system/borrowedit/<int:id>/','edit',3,7),(10,'借阅信息删除','/system/borrowdel/<int:id>/','del',3,7),(11,'待审批借阅信息','/system/borrowcheck/','list',4,NULL),(12,'借阅信息审批','/system/borrow_approve/<str:ids>/','edit',4,11),(13,'还书','/system/borrowreturn/','edit',3,7),(14,'待审批还书信息','/system/borrowreturncheck/','list',4,NULL),(15,'续借','/system/borrowagain/','edit',3,7),(16,'全部借阅记录','/system/allborrow/','list',5,NULL),(17,'个人借阅记录','/system/myborrow/','list',5,NULL);
/*!40000 ALTER TABLE `rbac_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role`
--

DROP TABLE IF EXISTS `rbac_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role`
--

LOCK TABLES `rbac_role` WRITE;
/*!40000 ALTER TABLE `rbac_role` DISABLE KEYS */;
INSERT INTO `rbac_role` VALUES (1,'普通用户'),(2,'管理员');
/*!40000 ALTER TABLE `rbac_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role_permissions`
--

DROP TABLE IF EXISTS `rbac_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_role_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role_permissions`
--

LOCK TABLES `rbac_role_permissions` WRITE;
/*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */;
INSERT INTO `rbac_role_permissions` VALUES (2,1,7),(3,1,8),(4,1,9),(5,1,10),(24,1,13),(25,1,15),(23,1,17),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,2,14),(20,2,15),(21,2,16),(22,2,17);
/*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_userinfo`
--

DROP TABLE IF EXISTS `rbac_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_userinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_userinfo`
--

LOCK TABLES `rbac_userinfo` WRITE;
/*!40000 ALTER TABLE `rbac_userinfo` DISABLE KEYS */;
INSERT INTO `rbac_userinfo` VALUES (1,'20210001','20210001','学生甲','3042569263@qq.com'),(2,'20211001','20211001','管理员甲','3042569263@qq.com'),(3,'20210002','20210002','学生乙','3042569263@qq.com'),(4,'20211002','20211002','管理员乙','3042569263@qq.com'),(5,'20211003','20211003','管理员丙','3042569263@qq.com');
/*!40000 ALTER TABLE `rbac_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_userinfo_roles`
--

DROP TABLE IF EXISTS `rbac_userinfo_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_userinfo_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userinfo_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_userinfo_roles_userinfo_id_role_id_aeda2126_uniq` (`userinfo_id`,`role_id`),
  KEY `rbac_userinfo_roles_role_id_7554e792_fk_rbac_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_userinfo_roles`
--

LOCK TABLES `rbac_userinfo_roles` WRITE;
/*!40000 ALTER TABLE `rbac_userinfo_roles` DISABLE KEYS */;
INSERT INTO `rbac_userinfo_roles` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,2);
/*!40000 ALTER TABLE `rbac_userinfo_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_bookinfo`
--

DROP TABLE IF EXISTS `system_bookinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_bookinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_num` varchar(7) NOT NULL,
  `author` varchar(10) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `remarks` varchar(32) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_num` (`book_num`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_bookinfo`
--

LOCK TABLES `system_bookinfo` WRITE;
/*!40000 ALTER TABLE `system_bookinfo` DISABLE KEYS */;
INSERT INTO `system_bookinfo` VALUES (7,'003','黄士航',10.00,'003','0'),(8,'004','黄士航',10.00,'004','0'),(9,'005','黄士航',10.00,'005','0'),(10,'006','黄士航',10.00,'006','0'),(11,'007','黄士航',10.00,'007','0'),(14,'008','黄士航',10.00,'008','0'),(15,'010','黄士航',10.00,'010','0');
/*!40000 ALTER TABLE `system_bookinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_borrowinfo`
--

DROP TABLE IF EXISTS `system_borrowinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_borrowinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bookuser` varchar(32) NOT NULL,
  `time_begin` date DEFAULT NULL,
  `time_end` date DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `approve_status` varchar(1) DEFAULT NULL,
  `book_id` bigint NOT NULL,
  `oprator` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `system_borrowinfo_book_id_130494ce_fk_system_bookinfo_id` (`book_id`),
  CONSTRAINT `system_borrowinfo_book_id_130494ce_fk_system_bookinfo_id` FOREIGN KEY (`book_id`) REFERENCES `system_bookinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_borrowinfo`
--

LOCK TABLES `system_borrowinfo` WRITE;
/*!40000 ALTER TABLE `system_borrowinfo` DISABLE KEYS */;
INSERT INTO `system_borrowinfo` VALUES (13,'学生甲','2021-12-15','2022-03-15','2021-12-15','0',7,'学生甲改'),(26,'管理员甲','2021-12-15','2022-01-15','2021-12-15','0',11,'管理员甲'),(27,'管理员甲','2021-12-16','2021-12-16','2021-12-16','0',14,'管理员甲'),(28,'管理员甲','2021-12-16','2022-03-16','2021-12-16','0',9,'管理员甲');
/*!40000 ALTER TABLE `system_borrowinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_loguser`
--

DROP TABLE IF EXISTS `system_loguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_loguser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `head_img` varchar(100) DEFAULT NULL,
  `user_obj_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_obj_id` (`user_obj_id`),
  CONSTRAINT `system_loguser_user_obj_id_fe646278_fk_rbac_userinfo_id` FOREIGN KEY (`user_obj_id`) REFERENCES `rbac_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_loguser`
--

LOCK TABLES `system_loguser` WRITE;
/*!40000 ALTER TABLE `system_loguser` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_loguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_returninfo`
--

DROP TABLE IF EXISTS `system_returninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_returninfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bookuser` varchar(32) NOT NULL,
  `author` varchar(10) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `time_begin` date DEFAULT NULL,
  `time_end` date DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `book_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `system_returninfo_book_id_f3d555c2_fk_system_bookinfo_id` (`book_id`),
  CONSTRAINT `system_returninfo_book_id_f3d555c2_fk_system_bookinfo_id` FOREIGN KEY (`book_id`) REFERENCES `system_bookinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_returninfo`
--

LOCK TABLES `system_returninfo` WRITE;
/*!40000 ALTER TABLE `system_returninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_returninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'onebyone'
--

--
-- Dumping routines for database 'onebyone'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19 23:47:14
