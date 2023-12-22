-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: navarrete
-- ------------------------------------------------------
-- Server version	8.0.35

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post',9,'add_post'),(34,'Can change post',9,'change_post'),(35,'Can delete post',9,'delete_post'),(36,'Can view post',9,'view_post'),(37,'Can add categoria',10,'add_categoria'),(38,'Can change categoria',10,'change_categoria'),(39,'Can delete categoria',10,'delete_categoria'),(40,'Can view categoria',10,'view_categoria'),(41,'Can add item',11,'add_item'),(42,'Can change item',11,'change_item'),(43,'Can delete item',11,'delete_item'),(44,'Can view item',11,'view_item'),(45,'Can add servicio',12,'add_servicio'),(46,'Can change servicio',12,'change_servicio'),(47,'Can delete servicio',12,'delete_servicio'),(48,'Can view servicio',12,'view_servicio'),(49,'Can add mensaje',13,'add_mensaje'),(50,'Can change mensaje',13,'change_mensaje'),(51,'Can delete mensaje',13,'delete_mensaje'),(52,'Can view mensaje',13,'view_mensaje');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$zjxmjWUPcchPvehOKMRmjr$Uw8RR8wHk+Q+QyLu9iBBdJ5unGIDzbvr7T/zZEz4tUQ=','2023-12-14 19:51:47.587963',1,'ElCerrotico','','','elcerroticooficial@gmail.com',1,1,'2023-12-14 19:35:52.864912');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categoria`
--

DROP TABLE IF EXISTS `blog_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categoria`
--

LOCK TABLES `blog_categoria` WRITE;
/*!40000 ALTER TABLE `blog_categoria` DISABLE KEYS */;
INSERT INTO `blog_categoria` VALUES (3,'Marketing'),(4,'Ventas');
/*!40000 ALTER TABLE `blog_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_categoria_id_bba59a64_fk_blog_categoria_id` (`categoria_id`),
  CONSTRAINT `blog_post_categoria_id_bba59a64_fk_blog_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `blog_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'Inteligencia Economica','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','blog/neom-cYy-o9i8aCs-unsplash.jpg',3),(4,'Capuchino','Lorem Ipsum','blog/imagen4.jpg',4);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-14 19:52:07.216118','1','Marketing',1,'[{\"added\": {}}]',7,1),(2,'2023-12-14 19:52:20.184418','1','Marketing',3,'',7,1),(3,'2023-12-14 20:18:48.511654','2','Marketing',1,'[{\"added\": {}}]',7,1),(4,'2023-12-14 20:19:14.212885','1','Comercio',1,'[{\"added\": {}}]',8,1),(5,'2023-12-14 20:19:34.210553','1','Comercio',3,'',8,1),(6,'2023-12-14 20:19:40.094671','2','Marketing',3,'',7,1),(7,'2023-12-14 20:41:54.219728','1','Beneficios',1,'[{\"added\": {}}]',11,1),(8,'2023-12-14 20:42:38.580739','2','Casos de Uso',1,'[{\"added\": {}}]',11,1),(9,'2023-12-14 20:43:43.235673','1','Analítica Descriptiva',1,'[{\"added\": {}}]',12,1),(10,'2023-12-14 22:29:04.941483','3','Beneficios',1,'[{\"added\": {}}]',11,1),(11,'2023-12-14 22:29:26.496638','4','Análisis de Clientes y Segmentación',1,'[{\"added\": {}}]',11,1),(12,'2023-12-14 22:29:43.670633','5','Optimización de Operaciones',1,'[{\"added\": {}}]',11,1),(13,'2023-12-14 22:29:57.519574','6','Gestión del Talento y Recursos Humanos',1,'[{\"added\": {}}]',11,1),(14,'2023-12-14 22:30:30.196508','7','Personalización de Experiencia del Cliente',1,'[{\"added\": {}}]',11,1),(15,'2023-12-14 22:31:39.269101','2','Consultoría Analítica',1,'[{\"added\": {}}]',12,1),(16,'2023-12-14 22:32:32.072802','8','Capacitacion in-company',1,'[{\"added\": {}}]',11,1),(17,'2023-12-14 22:32:55.680001','9','Capacitación online de Análisis de datos e Inteligencia de Negocios',1,'[{\"added\": {}}]',11,1),(18,'2023-12-14 22:33:22.647632','10','Capacitacion de Power BI',1,'[{\"added\": {}}]',11,1),(19,'2023-12-14 22:33:40.342179','11','Capacitacion de Dataviz',1,'[{\"added\": {}}]',11,1),(20,'2023-12-14 22:33:51.757797','3','Capacitación',1,'[{\"added\": {}}]',12,1),(21,'2023-12-14 23:32:24.801152','3','Marketing',1,'[{\"added\": {}}]',7,1),(22,'2023-12-14 23:34:09.125251','2','Inteligencia Economica',1,'[{\"added\": {}}]',8,1),(23,'2023-12-15 14:50:32.129544','3','Capacitación',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(24,'2023-12-15 14:50:39.376231','2','Consultoría Analítica',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(25,'2023-12-15 14:50:49.431583','1','Analítica Descriptiva',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(26,'2023-12-15 15:59:44.362670','1','Marketing',1,'[{\"added\": {}}]',10,1),(27,'2023-12-15 16:00:41.131701','1','Analisis de Siniestros',1,'[{\"added\": {}}]',9,1),(28,'2023-12-15 23:25:57.047750','4','Ventas',1,'[{\"added\": {}}]',7,1),(29,'2023-12-15 23:26:29.692691','3','Ventas 2023',1,'[{\"added\": {}}]',8,1),(30,'2023-12-15 23:29:40.731787','3','Ventas 2023',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',8,1),(31,'2023-12-15 23:29:58.689666','3','Ventas 2023',3,'',8,1),(32,'2023-12-18 16:37:59.856318','4','Capuchino',1,'[{\"added\": {}}]',8,1),(33,'2023-12-19 04:15:41.836627','26','{\'__v_isShallow\': False, \'dep\': {\'w\': 0, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 0, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(34,'2023-12-19 04:15:41.884052','25','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(35,'2023-12-19 04:15:41.927662','24','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(36,'2023-12-19 04:15:41.983870','23','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(37,'2023-12-19 04:15:42.018130','22','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(38,'2023-12-19 04:15:42.062847','21','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(39,'2023-12-19 04:15:42.350935','20','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(40,'2023-12-19 04:15:42.623629','19','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(41,'2023-12-19 04:15:42.726132','18','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(42,'2023-12-19 04:15:42.791954','17','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(43,'2023-12-19 04:15:42.824890','16','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(44,'2023-12-19 04:15:42.858871','15','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(45,'2023-12-19 04:15:42.950712','14','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(46,'2023-12-19 04:15:42.991960','13','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(47,'2023-12-19 04:15:43.041875','12','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(48,'2023-12-19 04:15:43.091978','11','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(49,'2023-12-19 04:15:43.125388','10','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(50,'2023-12-19 04:15:43.184236','9','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(51,'2023-12-19 04:15:43.245081','8','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(52,'2023-12-19 04:15:43.284014','7','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(53,'2023-12-19 04:15:43.325531','6','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(54,'2023-12-19 04:15:43.384524','5','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(55,'2023-12-19 04:15:43.417481','4','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(56,'2023-12-19 04:15:43.450732','3','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(57,'2023-12-19 04:15:43.484118','2','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'\', ',3,'',13,1),(58,'2023-12-19 04:15:43.542899','1','{\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'} {\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'}',3,'',13,1),(59,'2023-12-19 04:17:16.887382','49','{\'__v_isShallow\': False, \'dep\': {\'w\': 0, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 0, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(60,'2023-12-19 04:17:16.928060','48','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(61,'2023-12-19 04:17:16.960888','47','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(62,'2023-12-19 04:17:16.994630','46','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(63,'2023-12-19 04:17:17.028534','45','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(64,'2023-12-19 04:17:17.085117','44','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(65,'2023-12-19 04:17:17.144971','43','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(66,'2023-12-19 04:17:17.177023','42','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(67,'2023-12-19 04:17:17.221590','41','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(68,'2023-12-19 04:17:17.294674','40','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(69,'2023-12-19 04:17:17.378751','39','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(70,'2023-12-19 04:17:17.419704','38','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(71,'2023-12-19 04:17:17.477068','37','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(72,'2023-12-19 04:17:17.519767','36','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(73,'2023-12-19 04:17:17.577085','35','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(74,'2023-12-19 04:17:17.619320','34','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(75,'2023-12-19 04:17:17.677506','33','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(76,'2023-12-19 04:17:17.720188','32','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(77,'2023-12-19 04:17:17.814735','31','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(78,'2023-12-19 04:17:18.112889','30','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Pér',3,'',13,1),(79,'2023-12-19 04:17:18.252829','29','{\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'Gustavo\', \'_value\': \'Gustavo\'} {\'__v_isShallow\': False, \'dep\': {\'w\': 2, \'n\': 0}, \'__v_isRef\': True, \'_rawValue\': \'\', ',3,'',13,1),(80,'2023-12-19 04:17:18.420951','28','{\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'} {\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'}',3,'',13,1),(81,'2023-12-19 04:17:18.459879','27','{\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'} {\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'}',3,'',13,1),(82,'2023-12-19 04:27:00.546742','51','Gustavo Pérez',3,'',13,1),(83,'2023-12-19 04:27:00.596314','50','{\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'} {\'__v_isShallow\': False, \'__v_isRef\': True, \'_rawValue\': \'\', \'_value\': \'\'}',3,'',13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','categoria'),(8,'blog','post'),(5,'contenttypes','contenttype'),(13,'mensajes','mensaje'),(10,'portafolio','categoria'),(9,'portafolio','post'),(11,'servicios','item'),(12,'servicios','servicio'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-14 19:34:49.037653'),(2,'auth','0001_initial','2023-12-14 19:35:01.582807'),(3,'admin','0001_initial','2023-12-14 19:35:04.333920'),(4,'admin','0002_logentry_remove_auto_add','2023-12-14 19:35:04.393812'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-14 19:35:04.454692'),(6,'contenttypes','0002_remove_content_type_name','2023-12-14 19:35:05.250443'),(7,'auth','0002_alter_permission_name_max_length','2023-12-14 19:35:06.747480'),(8,'auth','0003_alter_user_email_max_length','2023-12-14 19:35:07.104643'),(9,'auth','0004_alter_user_username_opts','2023-12-14 19:35:07.150778'),(10,'auth','0005_alter_user_last_login_null','2023-12-14 19:35:07.877644'),(11,'auth','0006_require_contenttypes_0002','2023-12-14 19:35:07.913102'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-14 19:35:07.960423'),(13,'auth','0008_alter_user_username_max_length','2023-12-14 19:35:09.827816'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-14 19:35:10.712988'),(15,'auth','0010_alter_group_name_max_length','2023-12-14 19:35:10.832883'),(16,'auth','0011_update_proxy_permissions','2023-12-14 19:35:10.901797'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-14 19:35:12.952879'),(18,'sessions','0001_initial','2023-12-14 19:35:13.511527'),(19,'blog','0001_initial','2023-12-14 19:51:30.294309'),(20,'blog','0002_alter_post_imagen','2023-12-14 19:51:30.345516'),(21,'portafolio','0001_initial','2023-12-14 20:01:35.793810'),(22,'portafolio','0002_alter_post_imagen','2023-12-14 20:11:15.625413'),(23,'servicios','0001_initial','2023-12-14 20:11:20.012702'),(24,'servicios','0002_servicio_imagen','2023-12-15 14:49:07.392215'),(25,'mensajes','0001_initial','2023-12-19 03:15:52.557235'),(26,'mensajes','0002_alter_mensaje_numero_telefono','2023-12-19 04:13:27.794140');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ytiy3zpgqiu036qadmr9ln312jrfrpt','.eJxVjLEOwjAMRP8lM4psN6UNIzvfEDmxSwoolZp2Qvw7rdQBhlvuvbu3CbwuOaxV5zCKuRg0p98ucnpq2YE8uNwnm6ayzGO0u2IPWu1tEn1dD_fvIHPN29oN0gOiU0HpvSYP4MkRoTiOib0wNCLE4jscqIXWQbOF1J-ho0jm8wXaKjci:1rDrkJ:0cUMHzK3IzMvns_KOtF4LEOcDo9dwBpqiIWwQKtXwfw','2023-12-28 19:51:47.700336');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes_mensaje`
--

DROP TABLE IF EXISTS `mensajes_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes_mensaje` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `numero_telefono` varchar(255) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes_mensaje`
--

LOCK TABLES `mensajes_mensaje` WRITE;
/*!40000 ALTER TABLE `mensajes_mensaje` DISABLE KEYS */;
INSERT INTO `mensajes_mensaje` VALUES (52,'Carlos','Pérez','carlos18bp@gmail.com','+ 57 3152371666','Holaaaaaaaa'),(53,'Gustavo','Pérez','carlos18bp@gmail.com','+ 57 3152371666','dwwefwefwe'),(54,'Gustavo','Pérez','carlos18bp@gmail.com','+ 57 3152371666','dwwefwefwe'),(55,'Gustavo','','','',''),(56,'Gustavo','','','',''),(57,'Gustavo','','','',''),(58,'Gustavo','','','','');
/*!40000 ALTER TABLE `mensajes_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio_categoria`
--

DROP TABLE IF EXISTS `portafolio_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portafolio_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_categoria`
--

LOCK TABLES `portafolio_categoria` WRITE;
/*!40000 ALTER TABLE `portafolio_categoria` DISABLE KEYS */;
INSERT INTO `portafolio_categoria` VALUES (1,'Marketing');
/*!40000 ALTER TABLE `portafolio_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio_post`
--

DROP TABLE IF EXISTS `portafolio_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portafolio_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `dashboard` varchar(500) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portafolio_post_categoria_id_c5b1614a_fk_portafolio_categoria_id` (`categoria_id`),
  CONSTRAINT `portafolio_post_categoria_id_c5b1614a_fk_portafolio_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `portafolio_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_post`
--

LOCK TABLES `portafolio_post` WRITE;
/*!40000 ALTER TABLE `portafolio_post` DISABLE KEYS */;
INSERT INTO `portafolio_post` VALUES (1,'Analisis de Siniestros','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','<iframe title=\"Siniestros en Ecuador\" width=\"600\" height=\"373.5\" src=\"https://app.powerbi.com/view?r=eyJrIjoiMjU2YzJlNzctMTg5MS00ZTg1LWIwM2ItNWRiNGMyMjQ2MWYzIiwidCI6IjU3ZjQyYjM0LTE2OTktNDg4Yi05OWRlLTA4NmY0Zjk0N2E5NSIsImMiOjF9\" frameborder=\"0\" allowFullScreen=\"true\"></iframe>','portfolio/imagen5.jpg',1);
/*!40000 ALTER TABLE `portafolio_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_item`
--

DROP TABLE IF EXISTS `servicios_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo_item` varchar(255) NOT NULL,
  `descripcion_item` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_item`
--

LOCK TABLES `servicios_item` WRITE;
/*!40000 ALTER TABLE `servicios_item` DISABLE KEYS */;
INSERT INTO `servicios_item` VALUES (1,'Beneficios','<ul style=\"list-style-type: disc;\">\r\n    <li>Comprensi&oacute;n Inmediata de los Datos</li>\r\n    <li>Identificaci&oacute;n de Oportunidades Estrat&eacute;gicas</li>\r\n    <li>Elimine la preparaci&oacute;n manual de informes o reportes cada d&iacute;a y mejore para que tenga el control por medio de un tablero de datos.</li>\r\n    <li>Comunicaci&oacute;n Efectiva de Resultados</li>\r\n</ul>'),(2,'Casos de Uso','<ul style=\"list-style-type: disc;\">\r\n    <li>An&aacute;lisis de Ventas y Rendimiento del Producto</li>\r\n    <li>Seguimiento de la Experiencia del Cliente</li>\r\n    <li>Eficiencia Operativa en Recursos Humanos</li>\r\n</ul>'),(3,'Beneficios','<ul style=\"list-style-type: disc;\">\r\n    <li>Tener un diagn&oacute;stico claro de datos que se maneja en la empresa.</li>\r\n    <li>Desarrollo de KPIs y M&eacute;tricas Clave.</li>\r\n    <li>Implementaci&oacute;n de Soluciones Tecnol&oacute;gicas</li>\r\n</ul>'),(4,'Análisis de Clientes y Segmentación','Aplicamos análisis de datos para segmentar clientes en grupos homogéneos según comportamientos, preferencias y características demográficas. Esto permite una personalización más efectiva de las estrategias de marketing y una mejor retención de clientes.'),(5,'Optimización de Operaciones','Utilizamos análisis de datos para identificar cuellos de botella, patrones de desperdicio y oportunidades de mejora en los procesos operativos.'),(6,'Gestión del Talento y Recursos Humanos','Analizamos datos relacionados con la fuerza laboral, como la rotación de empleados, el rendimiento y la satisfacción laboral. Identificamos áreas de mejora en la gestión del talento y desarrollamos estrategias para fortalecer la retención y el compromiso de los empleados.'),(7,'Personalización de Experiencia del Cliente','Utilizamos análisis de datos para comprender el comportamiento y las preferencias individuales de los clientes. Esto permite la personalización de productos, servicios y experiencias, mejorando la satisfacción del cliente y la lealtad a la marca.'),(8,'Capacitacion in-company','ㅤ'),(9,'Capacitación online de Análisis de datos e Inteligencia de Negocios','ㅤ'),(10,'Capacitacion de Power BI','ㅤ'),(11,'Capacitacion de Dataviz','ㅤ');
/*!40000 ALTER TABLE `servicios_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_servicio`
--

DROP TABLE IF EXISTS `servicios_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_servicio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icono` varchar(100) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_servicio`
--

LOCK TABLES `servicios_servicio` WRITE;
/*!40000 ALTER TABLE `servicios_servicio` DISABLE KEYS */;
INSERT INTO `servicios_servicio` VALUES (1,'services/icono1.gif','Analítica Descriptiva','La analítica descriptiva es el primer paso esencial en nuestro conjunto de servicios de análisis de datos. Nos enfocamos en revelar la historia detrás de los datos, proporcionando resúmenes claros y visualizaciones impactantes que permiten a nuestros clientes comprender rápidamente patrones y tendencias clave en sus conjuntos de datos. Nuestro enfoque experto no solo destaca la información relevante, sino que también facilita la identificación de áreas de interés para análisis más profundos, respaldando así una toma de decisiones informada.','services/imagen3.jpg'),(2,'services/icono2.gif','Consultoría Analítica','Nuestra Consultoría Analítica de Datos ofrece a su empresa un enfoque especializado y personalizado para aprovechar al máximo el vasto potencial de sus datos. Nuestro equipo de expertos en análisis de datos trabaja en colaboración con su organización para desentrañar insights significativos y convertir datos en decisiones estratégicas.','services/imagen4.jpg'),(3,'services/icono3.gif','Capacitación','Capacitaciones sobre temas de Inteligencias de negocios y análisis de datos.','services/imagen5.jpg');
/*!40000 ALTER TABLE `servicios_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_servicio_items`
--

DROP TABLE IF EXISTS `servicios_servicio_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_servicio_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `servicio_id` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servicios_servicio_items_servicio_id_item_id_76e80593_uniq` (`servicio_id`,`item_id`),
  KEY `servicios_servicio_items_item_id_4745594d_fk_servicios_item_id` (`item_id`),
  CONSTRAINT `servicios_servicio_i_servicio_id_a3922a9b_fk_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios_servicio` (`id`),
  CONSTRAINT `servicios_servicio_items_item_id_4745594d_fk_servicios_item_id` FOREIGN KEY (`item_id`) REFERENCES `servicios_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_servicio_items`
--

LOCK TABLES `servicios_servicio_items` WRITE;
/*!40000 ALTER TABLE `servicios_servicio_items` DISABLE KEYS */;
INSERT INTO `servicios_servicio_items` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11);
/*!40000 ALTER TABLE `servicios_servicio_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 10:40:17
