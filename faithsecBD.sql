CREATE DATABASE  IF NOT EXISTS `outrofaithsec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `outrofaithsec`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: outrofaithsec
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `chamada`
--

DROP TABLE IF EXISTS `chamada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamada` (
  `idChamada` int NOT NULL AUTO_INCREMENT,
  `responsavel` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `criticidade` varchar(45) DEFAULT NULL,
  `inicio` time DEFAULT NULL,
  `termino` time DEFAULT NULL,
  `nfc_enfermeiro` varchar(40) DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `idPaciente` int DEFAULT NULL,
  PRIMARY KEY (`idChamada`),
  KEY `fk_nfc_enfermeiro` (`nfc_enfermeiro`),
  KEY `fk_idPaciente` (`idPaciente`),
  CONSTRAINT `fk_idPaciente` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_nfc_enfermeiro` FOREIGN KEY (`nfc_enfermeiro`) REFERENCES `enfermeiro` (`nfc`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamada`
--

LOCK TABLES `chamada` WRITE;
/*!40000 ALTER TABLE `chamada` DISABLE KEYS */;
INSERT INTO `chamada` VALUES (44,'Carlos Almeida','2025-02-04','Normal','19:33:55','19:34:04','E387322A',NULL,NULL),(45,'Lucas Yuri','2025-02-04','Normal','19:35:28','19:35:30','636C0D2A',NULL,NULL),(46,'Carlos Almeida','2025-02-04','Normal','19:35:54','19:35:58','E387322A',NULL,NULL),(47,'Carlos Almeida','2025-02-04','Auxilio','19:54:50','19:55:20','E387322A',NULL,NULL),(48,'Lucas Yuri','2025-02-04','Auxilio','19:55:27','19:55:47','636C0D2A',NULL,NULL),(49,'Carlos Almeida','2025-02-04','Auxilio','19:55:48','19:56:05','E387322A',NULL,NULL),(50,'Carlos Almeida','2025-02-04','Auxilio','20:02:19','20:03:19','E387322A',NULL,NULL),(51,'Carlos Almeida','2025-02-04','Auxilio','20:07:28','20:07:36','E387322A',NULL,NULL),(52,'Carlos Almeida','2025-02-04','Auxilio','20:07:45','20:07:59','E387322A',NULL,NULL),(53,'Carlos Almeida','2025-02-04','Emergencia','20:18:31','20:18:44','E387322A',NULL,NULL),(54,'Carlos Almeida','2025-02-04','Auxilio','20:20:01','20:20:18','E387322A',NULL,NULL),(55,'Carlos Almeida','2025-02-04','Auxilio','20:24:41','20:24:59','E387322A',NULL,NULL),(56,'Carlos Almeida','2025-02-04','Emergencia','20:36:38','20:37:08','E387322A',NULL,NULL),(57,'Lucas Yuri','2025-02-04','Emergencia','20:37:35','20:37:41','636C0D2A',NULL,NULL),(58,'Lucas Yuri','2025-02-04','Emergencia','20:44:09','20:44:34','636C0D2A',NULL,NULL),(59,'Lucas Yuri','2025-02-04','Auxilio','20:56:39','20:57:15','636C0D2A',NULL,NULL),(60,'Lucas Yuri','2025-02-04','Auxilio','20:57:18','20:57:25','636C0D2A',NULL,NULL),(61,'Lucas Yuri','2025-02-04','Auxilio','20:57:28','20:57:38','636C0D2A',NULL,NULL),(62,'Lucas Yuri','2025-02-04','Auxilio','21:05:59','21:09:33','636C0D2A',NULL,NULL),(63,'Lucas Yuri','2025-02-04','Auxilio','21:19:56','21:20:05','636C0D2A',NULL,NULL),(64,'Carlos Almeida','2025-02-04','Emergencia','21:20:26','21:20:30','E387322A',NULL,NULL),(65,'Carlos Almeida','2025-02-04','Auxilio','21:37:51','21:37:54','E387322A',NULL,NULL),(66,'Carlos Almeida','2025-02-04','Emergencia','21:38:52','21:38:56','E387322A',NULL,NULL),(67,'Lucas Yuri','2025-02-04','Emergencia','21:39:32','21:39:46','636C0D2A',NULL,NULL),(68,'Lucas Yuri','2025-02-04','Auxilio','21:40:06','21:40:08','636C0D2A',NULL,NULL),(69,'Lucas Yuri','2025-02-04','Emergencia','21:44:00','21:44:12','636C0D2A',NULL,NULL),(70,'Lucas Yuri','2025-02-04','Auxilio','21:53:08','21:53:37','636C0D2A',NULL,NULL),(71,'Lucas Yuri','2025-02-04','Auxilio','21:54:36','21:54:44','636C0D2A',NULL,NULL),(72,'Lucas Yuri','2025-02-05','Emergencia','08:31:47','08:32:00','636C0D2A',NULL,NULL),(73,'Lucas Yuri','2025-02-05','Auxilio','08:32:04','08:32:20','636C0D2A',NULL,NULL),(74,'Lucas Yuri','2025-02-05','Emergencia','08:34:05','08:34:15','636C0D2A',NULL,NULL),(75,'Lucas Yuri','2025-02-05','Emergencia','08:55:22','08:56:08','636C0D2A',NULL,NULL),(76,'Carlos Almeida','2025-02-05','Emergencia','08:58:46','08:58:55','E387322A',NULL,NULL),(77,'Lucas Yuri','2025-02-05','Emergencia','09:00:11','09:00:16','636C0D2A',NULL,NULL),(78,'Lucas Yuri','2025-02-05','Emergencia','09:00:19','09:00:46','636C0D2A',NULL,NULL),(79,'Carlos Almeida','2025-02-05','Auxilio','09:00:51','09:01:21','E387322A',NULL,NULL),(80,'Lucas Yuri','2025-02-05','Auxilio','09:02:07','09:02:10','636C0D2A',NULL,NULL),(81,'Carlos Almeida','2025-02-05','Emergencia','09:35:08','09:35:28','E387322A',NULL,NULL),(82,'Carlos Almeida','2025-02-05','Auxilio','09:35:55','09:36:07','E387322A',NULL,NULL),(83,'Carlos Almeida','2025-02-05','Emergencia','09:36:18','09:36:39','E387322A',NULL,NULL),(84,'Carlos Almeida','2025-02-05','Auxilio','18:10:44','18:10:49','E387322A',NULL,NULL),(85,'Carlos Almeida','2025-02-05','Auxilio','18:12:32','18:12:53','E387322A',NULL,NULL),(86,'Carlos Almeida','2025-02-05','Auxilio','18:18:52','18:19:03','E387322A',NULL,NULL),(87,'Lucas Yuri','2025-02-05','Emergencia','18:19:43','18:19:49','636C0D2A',NULL,NULL),(88,'Lucas Yuri','2025-02-05','Auxilio','18:20:40','18:20:50','636C0D2A',NULL,NULL),(89,'Lucas Yuri','2025-02-05','Auxilio','18:27:08','18:27:22','636C0D2A',NULL,NULL),(90,'Lucas Yuri','2025-02-05','Auxilio','18:39:12','18:40:03','636C0D2A',NULL,NULL),(91,'Lucas Yuri','2025-02-05','Auxilio','19:24:14','19:24:24','636C0D2A',NULL,NULL),(92,'Lucas Yuri','2025-02-05','Emergencia','19:25:16','19:25:19','636C0D2A',NULL,NULL),(93,'Carlos Almeida','2025-02-05','Emergencia','19:52:12','19:52:31','E387322A',NULL,NULL),(94,'Carlos Almeida','2025-02-06','Auxilio','09:26:06','09:26:55','E387322A',NULL,NULL),(95,'Carlos Almeida','2025-02-06','Auxilio','09:29:30','09:31:46','E387322A',NULL,NULL),(96,'Lucas Yuri','2025-02-06','Auxilio','09:33:23','09:34:45','636C0D2A',NULL,NULL),(97,'Carlos Almeida','2025-02-06','Auxilio','09:35:42','09:36:26','E387322A',NULL,NULL),(98,'Lucas Yuri','2025-02-06','Emergencia','09:37:58','09:39:40','636C0D2A',NULL,NULL),(99,'Carlos Almeida','2025-02-06','Auxilio','09:39:51','09:39:59','E387322A',NULL,NULL),(100,'Carlos Almeida','2025-02-06','Auxilio','09:41:11','09:41:31','E387322A',NULL,NULL),(101,'Carlos Almeida','2025-02-06','Emergencia','09:42:38','09:42:48','E387322A',NULL,NULL),(102,'Carlos Almeida','2025-02-06','Auxilio','10:32:49','10:32:53','E387322A',NULL,NULL),(103,'Carlos Almeida','2025-02-06','Auxilio','10:35:39','10:36:42','E387322A',NULL,NULL),(104,'Victor Silveira','2025-02-06','Auxilio','10:54:54','10:54:57','5394162C',NULL,NULL),(105,'Victor Silveira','2025-02-06','Auxilio','11:04:44','11:05:13','5394162C',NULL,NULL),(106,'Victor Silveira','2025-02-06','Auxilio','11:09:04','11:09:13','5394162C',NULL,NULL),(107,'Victor Silveira','2025-02-06','Emergencia','11:09:29','11:09:43','5394162C',NULL,NULL),(108,'Carlos Almeida','2025-02-06','Auxilio','11:10:31','11:10:35','E387322A',NULL,NULL),(109,'Victor Silveira','2025-02-06','Auxilio','18:09:00','18:09:14','5394162C',NULL,NULL),(110,'Victor Silveira','2025-02-06','Emergencia','18:09:20','18:09:57','5394162C',NULL,NULL),(111,'Victor Silveira','2025-02-06','Emergencia','18:12:15','18:12:25','5394162C',NULL,NULL),(112,'Victor Silveira','2025-02-06','Auxilio','18:12:30','18:12:33','5394162C',NULL,NULL),(113,'Victor Silveira','2025-02-06','Emergencia','18:13:13','18:13:21','5394162C',NULL,NULL),(114,'Victor Silveira','2025-02-06','Auxilio','18:13:24','18:13:26','5394162C',NULL,NULL),(115,'Victor Silveira','2025-02-06','Emergencia','18:17:05','18:17:27','5394162C',NULL,NULL),(116,'Victor Silveira','2025-02-06','Auxilio','18:17:54','18:17:58','5394162C',NULL,NULL),(117,'Carlos Almeida','2025-02-06','Auxilio','18:19:06','18:19:24','E387322A',NULL,NULL),(118,'Lucas Yuri','2025-02-06','Emergencia','18:22:22','18:22:25','636C0D2A',NULL,NULL),(119,'Victor Silveira','2025-02-06','Auxilio','18:22:54','18:23:28','5394162C',NULL,NULL),(120,'Victor Silveira','2025-02-06','Emergencia','18:23:55','18:24:01','5394162C',NULL,NULL),(121,'Lucas Yuri','2025-02-06','Auxilio','18:27:43','18:27:52','636C0D2A',NULL,NULL),(122,'Carlos Almeida','2025-02-06','Auxilio','18:32:24','18:32:28','E387322A',NULL,NULL),(123,'Lucas Yuri','2025-02-06','Auxilio','18:49:51','18:49:57','636C0D2A',NULL,NULL),(124,'Lucas Yuri','2025-02-06','Emergencia','18:50:00','18:51:16','636C0D2A',NULL,NULL),(125,'Lucas Yuri','2025-02-06','Auxilio','18:52:46','18:52:54','636C0D2A',NULL,NULL),(126,'Carlos Almeida','2025-02-06','Emergencia','18:57:45','18:58:03','E387322A',NULL,NULL),(127,'Lucas Yuri','2025-02-06','Auxilio','18:58:07','18:58:11','636C0D2A',NULL,NULL),(128,'Lucas Yuri','2025-02-06','Auxilio','19:10:30','19:11:02','636C0D2A',NULL,NULL),(129,'Lucas Yuri','2025-02-06','Auxilio','19:11:04','19:11:06','636C0D2A',NULL,NULL),(130,'Lucas Yuri','2025-02-06','Auxilio','19:18:20','19:18:25','636C0D2A',NULL,NULL),(131,'Victor Silveira','2025-02-06','Auxilio','19:20:58','19:21:00','5394162C',NULL,NULL),(132,'Victor Silveira','2025-02-06','Emergencia','19:23:50','19:23:53','5394162C',NULL,NULL),(133,'Victor Silveira','2025-02-06','Emergencia','19:24:44','19:24:48','5394162C',NULL,NULL),(134,'Carlos Almeida','2025-02-06','Auxilio','19:25:22','19:25:25','E387322A',NULL,NULL),(135,'Lucas Yuri','2025-02-06','Auxilio','19:30:10','19:30:13','636C0D2A',NULL,NULL),(136,'Carlos Almeida','2025-02-06','Emergencia','19:42:51','19:42:53','E387322A',NULL,NULL),(137,'Carlos Almeida','2025-02-06','Auxilio','19:43:04','19:43:08','E387322A',NULL,NULL),(138,'Carlos Almeida','2025-02-06','Emergencia','19:43:15','19:43:23','E387322A',NULL,NULL),(139,'Victor Silveira','2025-02-06','Auxilio','19:43:47','19:43:53','5394162C',NULL,NULL),(140,'Carlos Almeida','2025-02-06','Emergencia','19:47:05','19:47:07','E387322A',NULL,NULL),(141,'Lucas Yuri','2025-02-06','Emergencia','19:47:34','19:47:37','636C0D2A',NULL,NULL),(142,'Lucas Yuri','2025-02-06','Auxilio','19:48:10','19:48:12','636C0D2A',NULL,NULL),(143,'Carlos Almeida','2025-02-06','Emergencia','19:48:16','19:48:18','E387322A',NULL,NULL),(144,'Lucas Yuri','2025-02-06','Emergencia','19:48:22','19:48:24','636C0D2A',NULL,NULL),(145,'Carlos Almeida','2025-02-06','Auxilio','20:02:42','20:02:45','E387322A',NULL,NULL),(146,'Lucas Yuri','2025-02-06','Auxilio','20:03:35','20:03:37','636C0D2A',NULL,NULL),(147,'Victor Silveira','2025-02-06','Auxilio','20:06:14','20:06:45','5394162C',NULL,NULL),(148,'Victor Silveira','2025-02-06','Emergencia','20:06:57','20:07:15','5394162C',NULL,NULL),(149,'Victor Hugo','2025-02-06','Auxilio','20:12:52','20:14:29','5394162C',NULL,NULL),(150,'Carlos Almeida','2025-02-06','Auxilio','21:14:42','21:14:55','E387322A',NULL,NULL),(151,'Carlos Almeida','2025-02-06','Auxilio','21:25:59','21:26:07','E387322A',NULL,NULL),(152,'Carlos Almeida','2025-02-08','Emergencia','20:28:29','20:29:11','E387322A',NULL,NULL),(153,'Carlos Almeida','2025-02-08','Emergencia','20:31:22','20:34:12','E387322A',NULL,NULL),(154,'Carlos Almeida','2025-02-08','Emergencia','20:34:42','20:34:46','E387322A',NULL,NULL),(155,'Carlos Almeida','2025-02-08','Auxilio','20:45:43','20:45:58','E387322A',NULL,NULL),(156,'Carlos Almeida','2025-02-08','Auxilio','20:46:03','20:46:17','E387322A',NULL,NULL),(157,'Carlos Almeida','2025-02-08','Emergencia','20:46:22','20:46:28','E387322A',NULL,NULL),(158,'Carlos Almeida','2025-02-08','Emergencia','20:47:21','20:47:34','E387322A',NULL,NULL),(159,'Carlos Almeida','2025-02-08','Auxilio','20:47:36','20:47:43','E387322A',NULL,NULL),(160,'Carlos Almeida','2025-02-08','Auxilio','20:53:46','20:53:54','E387322A',NULL,NULL),(161,'Carlos Almeida','2025-02-08','Resolvida',NULL,NULL,'E387322A',NULL,NULL),(162,'Carlos Almeida','2025-02-08','Auxilio','21:47:51','21:47:55','E387322A',NULL,NULL),(163,'Victor Hugo','2025-02-08','Auxilio','22:10:15','22:10:24','5394162C',NULL,NULL),(164,'Carlos Almeida','2025-02-08','Auxilio','22:11:03','22:11:08','E387322A',NULL,NULL),(165,'Carlos Almeida','2025-02-08','Emergencia','22:13:53','22:14:00','E387322A',NULL,NULL),(166,'Victor Hugo','2025-02-08','Auxilio','22:14:57','22:15:03','5394162C',NULL,NULL),(167,'Victor Hugo','2025-02-11','Auxilio','20:16:14','20:16:20','5394162C',NULL,1),(168,'Carlos Almeida','2025-02-11','Emergencia','20:16:51','20:17:01','E387322A',NULL,1),(169,'Victor Hugo','2025-02-11','Auxilio','20:19:28','20:19:30','5394162C',NULL,1),(170,'Carlos Almeida','2025-02-14','Auxilio','20:47:57','20:48:02','E387322A',NULL,1),(171,'Carlos Almeida','2025-02-14','Auxilio','21:11:22','21:11:40','E387322A',NULL,1),(172,'Carlos Almeida','2025-02-14','Auxilio','21:11:52','21:12:00','E387322A',NULL,1),(173,'Carlos Almeida','2025-02-14','Emergencia','21:12:12','21:12:17','E387322A',NULL,1),(174,'Carlos Almeida','2025-02-14','Auxilio','21:12:21','21:12:30','E387322A',NULL,1),(175,'Carlos Almeida','2025-02-14','Emergencia','21:12:53','21:12:54','E387322A',NULL,1),(176,'Carlos Almeida','2025-02-14','Emergencia','21:13:51','21:14:36','E387322A',NULL,1),(177,'Carlos Almeida','2025-02-14','Emergencia','21:15:04','21:15:08','E387322A',NULL,1),(178,'Carlos Almeida','2025-02-14','Emergencia','21:24:20','21:24:24','E387322A',NULL,1),(179,'Carlos Almeida','2025-02-14','Auxilio','21:24:42','21:24:44','E387322A',NULL,1),(180,'Carlos Almeida','2025-02-14','Auxilio','21:25:03','21:25:07','E387322A',NULL,1),(181,'Victor Hugo','2025-02-14','Auxilio','21:25:50','21:26:07','5394162C',NULL,1),(182,'Victor Hugo','2025-02-14','Emergencia','21:26:40','21:26:49','5394162C',NULL,1),(183,'Victor Hugo','2025-02-14','Auxilio','21:27:42','21:27:47','5394162C',NULL,1),(184,'Carlos Almeida','2025-02-14','Auxilio','21:31:11','21:31:18','E387322A',NULL,1),(185,'Victor Hugo','2025-02-14','Auxilio','22:01:38','22:01:51','5394162C',NULL,1),(186,'Victor Hugo','2025-02-14','Auxilio','22:01:54','22:02:07','5394162C',NULL,1),(187,'Victor Hugo','2025-02-14','Auxilio','22:02:26','22:02:30','5394162C',NULL,1),(188,'Victor Hugo','2025-02-14','Emergencia','22:02:36','22:03:03','5394162C',NULL,1),(189,'Victor Hugo','2025-02-14','Auxilio','22:16:11','22:16:27','5394162C',NULL,1),(190,'Carlos Almeida','2025-02-14','Auxilio','22:16:53','22:17:29','E387322A',NULL,1),(191,'Victor Hugo','2025-02-14','Auxilio','22:17:49','22:17:51','5394162C',NULL,1),(192,'Victor Hugo','2025-02-14','Auxilio','22:18:28','22:18:36','5394162C',NULL,1),(193,'Victor Hugo','2025-02-14','Auxilio','22:19:39','22:20:14','5394162C',NULL,1),(194,'Victor Hugo','2025-02-14','Auxilio','22:23:11','22:23:22','5394162C',NULL,1),(195,'Victor Hugo','2025-02-14','Auxilio','22:27:16','22:27:24','5394162C',NULL,1),(196,'Victor Hugo','2025-02-15','Emergencia','17:41:16','17:41:26','5394162C',NULL,1),(197,'Victor Hugo','2025-02-15','Emergencia','17:41:38','17:41:42','5394162C',NULL,1),(198,'Victor Hugo','2025-02-15','Auxilio','17:48:31','17:48:34','5394162C',NULL,1),(199,'Victor Hugo','2025-02-15','Emergencia','17:54:04','17:54:05','5394162C',NULL,1),(200,'Victor Hugo','2025-02-15','Auxilio','18:02:21','18:03:52','5394162C',NULL,1),(201,'Victor Hugo','2025-02-15','Emergencia','18:03:57','18:04:49','5394162C',NULL,1),(202,'Victor Hugo','2025-02-15','Emergencia','19:40:18','19:40:19','5394162C',NULL,1),(203,'Victor Hugo','2025-02-15','Auxilio','19:40:53','19:40:55','5394162C',NULL,1),(204,'Victor Hugo','2025-02-15','Auxilio','19:41:25','19:42:36','5394162C',NULL,1),(205,'Victor Hugo','2025-02-15','Auxilio','19:44:17','19:44:18','5394162C',NULL,1),(206,'Victor Hugo','2025-02-17','Auxilio','09:36:46','09:37:18','5394162C',NULL,1),(207,'Victor Hugo','2025-02-17','Auxilio','09:38:38','09:38:39','5394162C',NULL,1),(208,'Victor Hugo','2025-02-17','Auxilio','10:05:25','10:05:32','5394162C',NULL,1),(209,'Victor Hugo','2025-02-17','Auxilio','10:06:17','10:06:21','5394162C',NULL,1),(210,'Sistema','2025-02-17','Emergencia','10:28:29',NULL,NULL,NULL,1),(211,'Victor Hugo','2025-02-17','Emergencia','10:28:30','10:28:38','5394162C',NULL,1),(212,'Sistema','2025-02-17','Auxilio','10:28:57',NULL,NULL,NULL,1),(213,'Victor Hugo','2025-02-17','Auxilio','10:28:57','10:29:05','5394162C',NULL,1),(214,'Sistema','2025-02-17','Emergencia','10:31:59',NULL,NULL,NULL,1),(215,'Victor Hugo','2025-02-17','Emergencia','10:32:00','10:32:05','5394162C',NULL,1),(216,'Sistema','2025-02-17','Auxilio','10:33:31',NULL,NULL,NULL,1),(217,'Sistema','2025-02-17','Emergencia','10:35:52',NULL,NULL,NULL,1),(218,'Victor Hugo','2025-02-17','Emergencia','10:35:53','10:36:00','5394162C',NULL,1),(219,'Sistema','2025-02-17','Emergencia','10:36:09',NULL,NULL,NULL,1),(220,'Victor Hugo','2025-02-17','Emergencia','10:36:09','10:36:15','5394162C',NULL,1),(221,'Sistema','2025-02-17','Emergencia','10:36:35',NULL,NULL,NULL,1),(222,'Sistema','2025-02-17','Emergencia','10:38:26',NULL,NULL,NULL,1),(223,'Sistema','2025-02-17','Emergencia','10:38:48',NULL,NULL,NULL,1),(224,'Sistema','2025-02-17','Emergencia','10:39:09',NULL,NULL,NULL,1),(225,'Sistema','2025-02-17','Emergencia','10:39:23',NULL,NULL,NULL,1),(226,'Sistema','2025-02-17','Emergencia','10:39:34',NULL,NULL,NULL,1),(227,'Victor Hugo','2025-02-17','Emergencia','10:39:36','10:39:37','5394162C',NULL,1),(228,'Sistema','2025-02-17','Emergencia','10:39:44',NULL,NULL,NULL,1),(229,'Victor Hugo','2025-02-17','Emergencia','10:39:45','10:39:46','5394162C',NULL,1),(230,'Victor Hugo','2025-02-17','Emergencia','10:48:36','10:48:45','5394162C',NULL,1),(231,'Sistema','2025-02-17','Emergencia','10:49:07',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `chamada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `nfc` varchar(30) NOT NULL,
  `telefone1` varchar(20) DEFAULT NULL,
  `telefone2` varchar(20) DEFAULT NULL,
  `qtdAtend` int DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `estadoCracha` enum('habilitado','desabilitado') NOT NULL DEFAULT 'habilitado',
  `ala` enum('UTI','Internação Geral','nenhum') NOT NULL DEFAULT 'nenhum',
  PRIMARY KEY (`nfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES ('123908','(12) 34444-4444','(12) 34444-4444',0,'GABRIELLE DE OLIVEIRA SANTOS','senhaSegura123','2025-01-22','Enfermeiro Intensivista (UTI)','123.456.789-10','Av. Paulista, 1000 - São Paulo, SP','desabilitado','UTI'),('43689q54','(52) 90909-0909','(52) 90909-0909',0,'Teste','123456','2023-10-24','Técnico de Enfermagem em UTI','123.456.789-10','Casa','desabilitado','UTI'),('5394162C','(31) 22456-5897','(31) 22456-5897',0,'Victor Hugo','909076','2024-10-08','Diretor de Enfermagem','123.456.789-10','Rua Castor','habilitado','UTI'),('636C0D2A','(11) 98995-9921','(11) 97654-0000',2,'Lucas Yuri','senhaSegura123','1993-09-30','Enfermeiro','12345678922','Av. Paulista, 1000 - São Paulo, SP','desabilitado','nenhum'),('ABC123',NULL,NULL,NULL,'Enfermeiro Teste',NULL,NULL,'Enfermeiro','98765432100',NULL,'desabilitado','nenhum'),('E387322A','(11) 98765-4321','(11) 97654-3210',15,'Carlos Almeida','senhaSegura123','1990-03-25','Enfermeiro Chefe','123.456.789-00','Av. Paulista, 1000 - São Paulo, SP','habilitado','Internação Geral'),('NFC123456','(11) 98765-4321','(11) 91234-5678',0,'Maria Silva Santos','senha123','1990-05-15','Enfermeira Sênior','123.456.789-00','Rua das Flores, 123 - Jardim Primavera, São Paulo - SP','habilitado','UTI');
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `nome` varchar(100) DEFAULT NULL,
  `datNasc` date DEFAULT NULL,
  `rg` char(9) DEFAULT NULL,
  `nmrCertidao` varchar(32) DEFAULT NULL,
  `telefone1` varchar(17) DEFAULT NULL,
  `telefone2` varchar(17) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `procedencia` varchar(100) DEFAULT NULL,
  `pessoaRespon` varchar(100) DEFAULT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `conjuge` varchar(100) DEFAULT NULL,
  `nomeMae` varchar(100) DEFAULT NULL,
  `nomePai` varchar(100) DEFAULT NULL,
  `estadoCivil` varchar(30) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) NOT NULL,
  `idPaciente` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES ('João Silva','1985-06-15','123456789','12345678901234567890123456789012','(11) 91234-5678','(11) 92345-6789','Rua das Flores, 123 - São Paulo, SP','Hospital Central','Maria Oliveira','Engenheiro','Ana Souza','Maria Silva','Carlos Souza','Casado','Branco','Masculino','12345678900',1),('Paciente Teste','1990-01-01','123456789',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12345678990',2);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prontuario`
--

DROP TABLE IF EXISTS `prontuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prontuario` (
  `idProntuario` int NOT NULL,
  `nomeCompleto` varchar(100) DEFAULT NULL,
  `comorbidades` varchar(45) DEFAULT NULL,
  `alergia` varchar(45) DEFAULT NULL,
  `medicaAtuais` varchar(45) DEFAULT NULL,
  `tipoSanguineo` varchar(20) DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `idade` varchar(10) DEFAULT NULL,
  `idPaciente` int DEFAULT NULL,
  PRIMARY KEY (`idProntuario`),
  KEY `idPaciente` (`idPaciente`),
  CONSTRAINT `idPaciente` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prontuario`
--

LOCK TABLES `prontuario` WRITE;
/*!40000 ALTER TABLE `prontuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `prontuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-17 10:53:21
