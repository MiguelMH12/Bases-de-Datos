-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: microservicio1
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Miguel',3.678987,99.218323),(2,'Jaz',7.123321,102.343444);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecharegistro` datetime NOT NULL,
  `fechaentrega` datetime NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_cliente1_idx` (`cliente_id`),
  CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2019-09-27 19:28:46','2019-09-27 19:28:46',1),(2,'2019-09-27 20:58:23','2019-09-27 20:58:23',1),(3,'2019-09-27 21:02:49','2019-09-27 21:02:49',1),(4,'2019-09-27 21:05:35','2019-09-27 21:05:35',1),(5,'2019-09-27 21:07:29','2019-09-27 21:07:29',1),(6,'2019-09-27 21:08:10','2019-09-27 21:08:10',1),(7,'2019-09-27 21:10:50','2019-09-27 21:10:50',1),(8,'2019-09-27 21:15:07','2019-09-27 21:15:07',1),(9,'2019-09-27 21:15:57','2019-09-27 21:15:57',1),(10,'2019-09-27 21:16:50','2019-09-27 21:16:50',1),(11,'2019-09-27 21:21:38','2019-09-27 21:21:38',1),(12,'2019-09-27 21:22:21','2019-09-27 21:22:21',1),(13,'2019-09-27 21:27:34','2019-09-27 21:27:34',1),(14,'2019-09-27 21:28:15','2019-09-27 21:28:15',1),(15,'2019-09-27 21:30:46','2019-09-27 21:30:46',1),(16,'2019-09-27 21:34:14','2019-09-27 21:34:14',1),(17,'2019-09-27 21:36:37','2019-09-27 21:36:37',1),(18,'2019-09-27 21:39:31','2019-09-27 21:39:31',1),(19,'2019-09-27 21:40:49','2019-09-27 21:40:49',1),(20,'2019-09-27 21:49:34','2019-09-27 21:49:34',1),(21,'2019-09-27 21:50:38','2019-09-27 21:50:38',1),(22,'2019-09-27 21:52:08','2019-09-27 21:52:08',1),(23,'2019-09-27 21:53:10','2019-09-27 21:53:10',1),(24,'2019-09-27 21:54:50','2019-09-27 21:54:50',2),(25,'2019-09-27 21:55:29','2019-09-27 21:55:29',2),(26,'2019-09-27 21:56:24','2019-09-27 21:56:24',2);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Harina','20','url de la imagen harina'),(2,'Jamon Chingon','56','url de la imagen jamon'),(3,'Coca','100','url de la imagen coca');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosdelpedido`
--

DROP TABLE IF EXISTS `productosdelpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productosdelpedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productosdelpedido_pedido1_idx` (`pedido_id`),
  KEY `fk_productosdelpedido_producto1_idx` (`producto_id`),
  CONSTRAINT `fk_productosdelpedido_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_productosdelpedido_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosdelpedido`
--

LOCK TABLES `productosdelpedido` WRITE;
/*!40000 ALTER TABLE `productosdelpedido` DISABLE KEYS */;
INSERT INTO `productosdelpedido` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,3,1),(6,3,2),(7,3,3),(8,4,1),(9,4,2),(10,4,3),(11,5,1),(12,5,2),(13,5,3),(14,6,1),(15,6,2),(16,6,3),(17,7,1),(18,7,2),(19,7,3),(20,10,1),(21,10,2),(22,10,3),(23,11,1),(24,11,2),(25,11,3),(26,12,1),(27,12,2),(28,12,3),(29,15,1),(30,15,2),(31,15,3),(32,17,1),(33,17,2),(34,17,3),(35,18,1),(36,18,2),(37,18,3),(38,19,1),(39,19,2),(40,19,3),(41,20,1),(42,21,1),(43,21,2),(44,21,3),(45,22,1),(46,22,2),(47,22,3),(48,23,1),(49,23,2),(50,23,3),(51,24,1),(52,24,2),(53,25,1),(54,26,1);
/*!40000 ALTER TABLE `productosdelpedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-27 17:05:11
