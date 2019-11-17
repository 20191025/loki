CREATE DATABASE  IF NOT EXISTS `odin` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `odin`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: odin
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `ACCION`
--

DROP TABLE IF EXISTS `ACCION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCION` (
  `codAccion` varchar(12) NOT NULL,
  `accion` varchar(50) NOT NULL,
  `codPadre` varchar(12) DEFAULT NULL,
  `nivel` int(11) DEFAULT '0',
  `esGrupo` char(1) NOT NULL DEFAULT 'N',
  `codArbolFormato` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codAccion`),
  UNIQUE KEY `codAccion_UNIQUE` (`codAccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCION`
--

LOCK TABLES `ACCION` WRITE;
/*!40000 ALTER TABLE `ACCION` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACCION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACCIONOBJETO`
--

DROP TABLE IF EXISTS `ACCIONOBJETO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCIONOBJETO` (
  `codAccion` varchar(12) NOT NULL,
  `objeto` varchar(50) NOT NULL,
  `permiso` char(1) NOT NULL,
  PRIMARY KEY (`codAccion`,`objeto`,`permiso`),
  CONSTRAINT `aofk1` FOREIGN KEY (`codAccion`) REFERENCES `accion` (`codAccion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCIONOBJETO`
--

LOCK TABLES `ACCIONOBJETO` WRITE;
/*!40000 ALTER TABLE `ACCIONOBJETO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACCIONOBJETO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APP`
--

DROP TABLE IF EXISTS `APP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APP` (
  `idApp` int(11) NOT NULL AUTO_INCREMENT,
  `nombreApp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Descripcion` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyWords` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idApp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APP`
--

LOCK TABLES `APP` WRITE;
/*!40000 ALTER TABLE `APP` DISABLE KEYS */;
/*!40000 ALTER TABLE `APP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONEXION`
--

DROP TABLE IF EXISTS `CONEXION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONEXION` (
  `idConexion` int(11) NOT NULL AUTO_INCREMENT,
  `codConexion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cadenaConexion` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usuarioBD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `claveBD` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipoBD` int(11) NOT NULL,
  `proveedorBD` int(11) NOT NULL,
  `activa` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cadenaConexionRpt` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idConexion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONEXION`
--

LOCK TABLES `CONEXION` WRITE;
/*!40000 ALTER TABLE `CONEXION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONEXION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MENU`
--

DROP TABLE IF EXISTS `MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MENU` (
  `codMenu` varchar(12) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `imgNormal` varchar(255) DEFAULT NULL,
  `imgCandidato` varchar(255) DEFAULT NULL,
  `imgSeleccionado` varchar(255) DEFAULT NULL,
  `expandible` char(1) NOT NULL,
  `codMenuPadre` varchar(12) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `orden` varchar(12) NOT NULL,
  `nivel` int(11) NOT NULL,
  `activo` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tip` varchar(512) DEFAULT NULL,
  `modulo` varchar(2) NOT NULL,
  `objeto` varchar(50) DEFAULT NULL,
  `permiso` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `esProceso` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `codMenuPadreProceso` varchar(12) DEFAULT NULL,
  `icono` varchar(512) DEFAULT NULL,
  `idApp` int(11) NOT NULL,
  PRIMARY KEY (`codMenu`),
  KEY `mfk01_idx` (`idApp`),
  CONSTRAINT `mfk01` FOREIGN KEY (`idApp`) REFERENCES `app` (`idApp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MENU`
--

LOCK TABLES `MENU` WRITE;
/*!40000 ALTER TABLE `MENU` DISABLE KEYS */;
/*!40000 ALTER TABLE `MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERFIL`
--

DROP TABLE IF EXISTS `PERFIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERFIL` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePerfil` varchar(50) NOT NULL,
  PRIMARY KEY (`idPerfil`),
  UNIQUE KEY `id_UNIQUE` (`idPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERFIL`
--

LOCK TABLES `PERFIL` WRITE;
/*!40000 ALTER TABLE `PERFIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PERFIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROL`
--

DROP TABLE IF EXISTS `ROL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROL` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) NOT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `id_UNIQUE` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROL`
--

LOCK TABLES `ROL` WRITE;
/*!40000 ALTER TABLE `ROL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLACCION`
--

DROP TABLE IF EXISTS `ROLACCION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLACCION` (
  `idRol` int(11) NOT NULL,
  `codAccion` varchar(12) NOT NULL,
  PRIMARY KEY (`idRol`,`codAccion`),
  KEY `rafk02_idx` (`codAccion`),
  CONSTRAINT `rafk01` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rafk02` FOREIGN KEY (`codAccion`) REFERENCES `accion` (`codAccion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLACCION`
--

LOCK TABLES `ROLACCION` WRITE;
/*!40000 ALTER TABLE `ROLACCION` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLACCION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USUARIO`
--

DROP TABLE IF EXISTS `USUARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USUARIO` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `loginUsuario` varchar(50) NOT NULL,
  `passwordUsuario` varchar(50) NOT NULL,
  `nombre1` varchar(50) NOT NULL,
  `nombre2` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `idTipoDocumento` varchar(50) NOT NULL,
  `numDocumento` varchar(50) NOT NULL,
  `telefono1` varchar(50) DEFAULT NULL,
  `telefono2` varchar(50) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIO`
--

LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'odin'
--

--
-- Dumping routines for database 'odin'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-17 13:36:02
