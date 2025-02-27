CREATE DATABASE  IF NOT EXISTS `gestion_flotilla` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestion_flotilla`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_flotilla
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `asignadoa`
--

DROP TABLE IF EXISTS `asignadoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignadoa` (
  `idRuta` int NOT NULL,
  `idConductor` int NOT NULL,
  PRIMARY KEY (`idRuta`,`idConductor`),
  KEY `idConductor` (`idConductor`),
  CONSTRAINT `asignadoa_ibfk_1` FOREIGN KEY (`idRuta`) REFERENCES `ruta` (`idRuta`),
  CONSTRAINT `asignadoa_ibfk_2` FOREIGN KEY (`idConductor`) REFERENCES `conductor` (`idConductor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignadoa`
--

LOCK TABLES `asignadoa` WRITE;
/*!40000 ALTER TABLE `asignadoa` DISABLE KEYS */;
INSERT INTO `asignadoa` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `asignadoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combustible`
--

DROP TABLE IF EXISTS `combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combustible` (
  `idCombustible` int NOT NULL,
  `fecha` date NOT NULL,
  `cantidadLitros` decimal(5,2) NOT NULL,
  `costoTotal` decimal(10,2) NOT NULL,
  `estacionServicio` varchar(100) NOT NULL,
  PRIMARY KEY (`idCombustible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combustible`
--

LOCK TABLES `combustible` WRITE;
/*!40000 ALTER TABLE `combustible` DISABLE KEYS */;
INSERT INTO `combustible` VALUES (1,'2024-02-01',50.00,90.00,'Gasolinera Shell'),(2,'2024-02-02',40.00,75.00,'Gasolinera Pemex'),(3,'2024-02-03',55.00,100.00,'Gasolinera BP'),(4,'2024-02-04',60.00,110.00,'Gasolinera ExxonMobil'),(5,'2024-02-05',45.00,85.00,'Gasolinera Total'),(6,'2024-02-06',38.00,72.00,'Gasolinera Gulf'),(7,'2024-02-07',52.00,95.00,'Gasolinera Chevron'),(8,'2024-02-08',47.00,89.00,'Gasolinera Repsol'),(9,'2024-02-09',62.00,120.00,'Gasolinera Texaco'),(10,'2024-02-10',50.00,92.00,'Gasolinera Mobil'),(11,'2024-02-11',41.00,78.00,'Gasolinera PDV'),(12,'2024-02-12',53.00,98.00,'Gasolinera Gulf'),(13,'2024-02-13',49.00,91.00,'Gasolinera Shell'),(14,'2024-02-14',44.00,82.00,'Gasolinera Pemex'),(15,'2024-02-15',58.00,112.00,'Gasolinera BP'),(16,'2024-02-16',37.00,69.00,'Gasolinera ExxonMobil'),(17,'2024-02-17',55.00,105.00,'Gasolinera Total'),(18,'2024-02-18',63.00,125.00,'Gasolinera Texaco'),(19,'2024-02-19',46.00,86.00,'Gasolinera Repsol'),(20,'2024-02-20',59.00,115.00,'Gasolinera Mobil');
/*!40000 ALTER TABLE `combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `idConductor` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `licencia` varchar(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`idConductor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Juan Pérez','ABC12345','555-1010'),(2,'María López','XYZ78901','555-2020'),(3,'Carlos Gómez','DEF45678','555-3030'),(4,'Ana Torres','GHI78912','555-4040'),(5,'José Ramírez','JKL01234','555-5050'),(6,'Laura Fernández','MNO34567','555-6060'),(7,'David Herrera','PQR67890','555-7070'),(8,'Sofía Medina','STU90123','555-8080'),(9,'Alejandro Díaz','VWX23456','555-9090'),(10,'Lucía Castro','YZA56789','555-1111'),(11,'Ricardo Vargas','BCD89012','555-2222'),(12,'Elena Ruiz','EFG12345','555-3333'),(13,'Javier Morales','HIJ45678','555-4444'),(14,'Gabriela Soto','KLM78901','555-5555'),(15,'Fernando Ortega','NOP01234','555-6666'),(16,'Isabel Navarro','QRS34567','555-7777'),(17,'Tomás Ríos','TUV67890','555-8888'),(18,'Patricia Serrano','WXY90123','555-9999'),(19,'Miguel Peña','ZAB23456','555-1212'),(20,'Carla Suárez','CDE56789','555-1313');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consume`
--

DROP TABLE IF EXISTS `consume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consume` (
  `idCombustible` int NOT NULL,
  `idVehiculo` int NOT NULL,
  PRIMARY KEY (`idCombustible`,`idVehiculo`),
  KEY `idVehiculo` (`idVehiculo`),
  CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`idCombustible`) REFERENCES `combustible` (`idCombustible`),
  CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`idVehiculo`) REFERENCES `vehículo` (`idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consume`
--

LOCK TABLES `consume` WRITE;
/*!40000 ALTER TABLE `consume` DISABLE KEYS */;
INSERT INTO `consume` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `consume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `idMantenimiento` int NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idMantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,'2024-01-10','Cambio de aceite',50.00,'Cambio de aceite y filtro'),(2,'2024-01-15','Frenos',200.00,'Revisión y cambio de frenos'),(3,'2024-02-05','Alineación',80.00,'Alineación y balanceo'),(4,'2024-02-12','Batería',150.00,'Reemplazo de batería'),(5,'2024-02-20','Suspensión',300.00,'Revisión de suspensión delantera'),(6,'2024-03-01','Neumáticos',400.00,'Cambio de 4 neumáticos'),(7,'2024-03-10','Aceite de transmisión',120.00,'Cambio de aceite de transmisión'),(8,'2024-03-15','Sistema eléctrico',180.00,'Revisión del sistema eléctrico'),(9,'2024-04-01','Aire acondicionado',200.00,'Carga de gas y revisión'),(10,'2024-04-10','Filtros',70.00,'Cambio de filtros de aire y cabina'),(11,'2024-04-20','Frenos',220.00,'Revisión y cambio de frenos traseros'),(12,'2024-05-01','Motor',500.00,'Afinación completa'),(13,'2024-05-15','Luces',60.00,'Cambio de faros delanteros'),(14,'2024-05-25','Radiador',250.00,'Limpieza y cambio de refrigerante'),(15,'2024-06-01','Transmisión',600.00,'Revisión y reparación de transmisión'),(16,'2024-06-10','Parabrisas',90.00,'Cambio de parabrisas delantero'),(17,'2024-06-20','Bujías',110.00,'Cambio de bujías y cables'),(18,'2024-07-01','Dirección',280.00,'Revisión y ajuste de dirección'),(19,'2024-07-10','Escape',320.00,'Revisión y cambio del sistema de escape'),(20,'2024-07-20','Alternador',350.00,'Reemplazo de alternador');
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realiza`
--

DROP TABLE IF EXISTS `realiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza` (
  `idVehiculo` int NOT NULL,
  `idRuta` int NOT NULL,
  PRIMARY KEY (`idVehiculo`,`idRuta`),
  KEY `idRuta` (`idRuta`),
  CONSTRAINT `realiza_ibfk_1` FOREIGN KEY (`idVehiculo`) REFERENCES `vehículo` (`idVehiculo`),
  CONSTRAINT `realiza_ibfk_2` FOREIGN KEY (`idRuta`) REFERENCES `ruta` (`idRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiza`
--

LOCK TABLES `realiza` WRITE;
/*!40000 ALTER TABLE `realiza` DISABLE KEYS */;
INSERT INTO `realiza` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `realiza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `idRuta` int NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `fechaSalida` datetime NOT NULL,
  `fechaLlegada` datetime NOT NULL,
  PRIMARY KEY (`idRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (1,'Ciudad A','Ciudad B','2024-02-01 08:00:00','2024-02-01 14:00:00'),(2,'Ciudad C','Ciudad D','2024-02-02 09:00:00','2024-02-02 15:30:00'),(3,'Ciudad E','Ciudad F','2024-02-03 07:30:00','2024-02-03 13:45:00'),(4,'Ciudad G','Ciudad H','2024-02-04 10:00:00','2024-02-04 16:00:00'),(5,'Ciudad I','Ciudad J','2024-02-05 11:15:00','2024-02-05 17:30:00'),(6,'Ciudad K','Ciudad L','2024-02-06 12:00:00','2024-02-06 18:15:00'),(7,'Ciudad M','Ciudad N','2024-02-07 06:45:00','2024-02-07 13:00:00'),(8,'Ciudad O','Ciudad P','2024-02-08 09:30:00','2024-02-08 14:45:00'),(9,'Ciudad Q','Ciudad R','2024-02-09 07:00:00','2024-02-09 12:30:00'),(10,'Ciudad S','Ciudad T','2024-02-10 08:15:00','2024-02-10 14:00:00'),(11,'Ciudad U','Ciudad V','2024-02-11 10:00:00','2024-02-11 16:30:00'),(12,'Ciudad W','Ciudad X','2024-02-12 07:45:00','2024-02-12 13:45:00'),(13,'Ciudad Y','Ciudad Z','2024-02-13 06:30:00','2024-02-13 12:00:00'),(14,'Ciudad AA','Ciudad BB','2024-02-14 09:15:00','2024-02-14 15:00:00'),(15,'Ciudad CC','Ciudad DD','2024-02-15 11:30:00','2024-02-15 17:45:00'),(16,'Ciudad EE','Ciudad FF','2024-02-16 08:00:00','2024-02-16 14:15:00'),(17,'Ciudad GG','Ciudad HH','2024-02-17 06:45:00','2024-02-17 12:45:00'),(18,'Ciudad II','Ciudad JJ','2024-02-18 10:30:00','2024-02-18 16:15:00'),(19,'Ciudad KK','Ciudad LL','2024-02-19 09:00:00','2024-02-19 14:30:00'),(20,'Ciudad MM','Ciudad NN','2024-02-20 07:15:00','2024-02-20 13:30:00');
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene`
--

DROP TABLE IF EXISTS `tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiene` (
  `idVehiculo` int NOT NULL,
  `idMantenimiento` int NOT NULL,
  PRIMARY KEY (`idVehiculo`,`idMantenimiento`),
  KEY `idMantenimiento` (`idMantenimiento`),
  CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`idVehiculo`) REFERENCES `vehículo` (`idVehiculo`),
  CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`idMantenimiento`) REFERENCES `mantenimiento` (`idMantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene`
--

LOCK TABLES `tiene` WRITE;
/*!40000 ALTER TABLE `tiene` DISABLE KEYS */;
INSERT INTO `tiene` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehículo`
--

DROP TABLE IF EXISTS `vehículo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehículo` (
  `idVehiculo` int NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anio` year NOT NULL,
  `placa` varchar(10) NOT NULL,
  `estado` enum('activo','inactivo','mantenimiento') NOT NULL,
  PRIMARY KEY (`idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehículo`
--

LOCK TABLES `vehículo` WRITE;
/*!40000 ALTER TABLE `vehículo` DISABLE KEYS */;
INSERT INTO `vehículo` VALUES (1,'Toyota','Corolla',2020,'ABC123','activo'),(2,'Nissan','Versa',2019,'XYZ789','mantenimiento'),(3,'Honda','Civic',2021,'DEF456','activo'),(4,'Ford','Focus',2018,'GHI789','inactivo'),(5,'Chevrolet','Malibu',2022,'JKL012','activo'),(6,'Hyundai','Elantra',2020,'MNO345','mantenimiento'),(7,'Mazda','3',2019,'PQR678','activo'),(8,'Volkswagen','Jetta',2021,'STU901','activo'),(9,'Kia','Forte',2018,'VWX234','inactivo'),(10,'Tesla','Model 3',2022,'YZA567','activo'),(11,'Subaru','Impreza',2020,'BCD890','mantenimiento'),(12,'BMW','Serie 3',2019,'EFG123','activo'),(13,'Mercedes','Clase C',2021,'HIJ456','activo'),(14,'Audi','A4',2018,'KLM789','inactivo'),(15,'Lexus','IS 300',2022,'NOP012','activo'),(16,'Jeep','Wrangler',2020,'QRS345','mantenimiento'),(17,'Dodge','Charger',2019,'TUV678','activo'),(18,'Porsche','911',2021,'WXY901','activo'),(19,'Ferrari','488',2018,'ZAB234','inactivo'),(20,'Lamborghini','Huracan',2022,'CDE567','activo');
/*!40000 ALTER TABLE `vehículo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gestion_flotilla'
--

--
-- Dumping routines for database 'gestion_flotilla'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 17:47:14
