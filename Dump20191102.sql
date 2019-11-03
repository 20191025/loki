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

-- Dump completed on 2019-11-02 21:28:29
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: thor
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
-- Table structure for table `ATRIBUTOXCATALOGO`
--

DROP TABLE IF EXISTS `ATRIBUTOXCATALOGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATRIBUTOXCATALOGO` (
  `idCatalogo` int(11) NOT NULL,
  `idAtributo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAtributo` varchar(45) NOT NULL,
  `ExtRef` varchar(45) DEFAULT NULL,
  UNIQUE KEY `idAtributo_UNIQUE` (`idAtributo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATRIBUTOXCATALOGO`
--

LOCK TABLES `ATRIBUTOXCATALOGO` WRITE;
/*!40000 ALTER TABLE `ATRIBUTOXCATALOGO` DISABLE KEYS */;
INSERT INTO `ATRIBUTOXCATALOGO` VALUES (3,1,'MUJER',NULL),(3,2,'HOMBRE',NULL),(2,3,'SOLTERO',NULL),(2,4,'CASADO',NULL),(2,5,'DIVORCIADO',NULL),(2,6,'VIUDO',NULL),(2,7,'UNION LIBRE',NULL),(6,8,'NATURAL',NULL),(6,9,'JURIDICO',NULL),(5,10,'DISTRIBUIDORES',NULL),(5,11,'DIRECTO',NULL),(1,12,'CEDULA DE CIUDADANIA',NULL),(1,13,'CEDULA DE EXTRANJERIA',NULL),(1,14,'PASAPORTE',NULL),(4,15,'VENDEDOR',NULL),(7,16,'MEDICAMENTO',NULL),(7,17,'GOLOSINA',NULL);
/*!40000 ALTER TABLE `ATRIBUTOXCATALOGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATALOGO`
--

DROP TABLE IF EXISTS `CATALOGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATALOGO` (
  `idCatalogo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`idCatalogo`),
  UNIQUE KEY `idEstadoCivil_UNIQUE` (`idCatalogo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATALOGO`
--

LOCK TABLES `CATALOGO` WRITE;
/*!40000 ALTER TABLE `CATALOGO` DISABLE KEYS */;
INSERT INTO `CATALOGO` VALUES (1,'TIPO DE DOCUMENTO'),(2,'ESTADO CIVIL'),(3,'SEXO'),(4,'CARGO'),(5,'CATEGORIA DEL CLIENTE'),(6,'TIPO CLIENTE'),(7,'TIPO DE PRODUCTO');
/*!40000 ALTER TABLE `CATALOGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CIUDADES`
--

DROP TABLE IF EXISTS `CIUDADES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CIUDADES` (
  `idCiudad` int(11) NOT NULL,
  `nombreCiudad` varchar(45) NOT NULL,
  PRIMARY KEY (`idCiudad`),
  UNIQUE KEY `idCiudad_UNIQUE` (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CIUDADES`
--

LOCK TABLES `CIUDADES` WRITE;
/*!40000 ALTER TABLE `CIUDADES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CIUDADES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTES`
--

DROP TABLE IF EXISTS `CLIENTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENTES` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoCliente` int(11) NOT NULL,
  `nitCliente` varchar(50) NOT NULL,
  `razonsocialCliente` varchar(200) NOT NULL,
  `direccionCliente` varchar(400) NOT NULL,
  `idCiudadCliente` int(11) NOT NULL,
  `idMunicipioCliente` int(11) NOT NULL,
  `idDepartamentoCliente` int(11) NOT NULL,
  `idPaisCliente` int(11) NOT NULL,
  `telefonoFijoCliente` varchar(20) DEFAULT NULL,
  `extensionCliente` varchar(10) DEFAULT NULL,
  `telefonoMovilCliente` varchar(20) DEFAULT NULL,
  `idCategoriaCliente` int(11) NOT NULL,
  `correoCliente` varchar(50) DEFAULT NULL,
  `idestatusCliente` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `urlCliente` varchar(500) DEFAULT NULL,
  `instagramCliente` varchar(500) DEFAULT NULL,
  `facebookCliente` varchar(500) DEFAULT NULL,
  `twitterCliente` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTES`
--

LOCK TABLES `CLIENTES` WRITE;
/*!40000 ALTER TABLE `CLIENTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COTIZACIONDETALLES`
--

DROP TABLE IF EXISTS `COTIZACIONDETALLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COTIZACIONDETALLES` (
  `idCotizacionDetalles` int(11) NOT NULL AUTO_INCREMENT,
  `idCotizacion` int(11) NOT NULL,
  `idProduccion` int(11) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valorImpuesto` decimal(2,2) NOT NULL,
  PRIMARY KEY (`idCotizacionDetalles`),
  UNIQUE KEY `idCotizacionDetalles_UNIQUE` (`idCotizacionDetalles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COTIZACIONDETALLES`
--

LOCK TABLES `COTIZACIONDETALLES` WRITE;
/*!40000 ALTER TABLE `COTIZACIONDETALLES` DISABLE KEYS */;
/*!40000 ALTER TABLE `COTIZACIONDETALLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COTIZACIONES`
--

DROP TABLE IF EXISTS `COTIZACIONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COTIZACIONES` (
  `idCotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  PRIMARY KEY (`idCotizacion`),
  UNIQUE KEY `idCotizacion_UNIQUE` (`idCotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COTIZACIONES`
--

LOCK TABLES `COTIZACIONES` WRITE;
/*!40000 ALTER TABLE `COTIZACIONES` DISABLE KEYS */;
/*!40000 ALTER TABLE `COTIZACIONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTAMENTOS`
--

DROP TABLE IF EXISTS `DEPARTAMENTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTAMENTOS` (
  `idDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  UNIQUE KEY `idDepartamento_UNIQUE` (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTAMENTOS`
--

LOCK TABLES `DEPARTAMENTOS` WRITE;
/*!40000 ALTER TABLE `DEPARTAMENTOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEPARTAMENTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADOS`
--

DROP TABLE IF EXISTS `EMPLEADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLEADOS` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoDocumentoEmpleado` int(11) DEFAULT NULL,
  `numDocumentoEmpleado` varchar(45) NOT NULL,
  `nombre1Empleado` varchar(50) NOT NULL,
  `nombre2Empleado` varchar(50) NOT NULL,
  `apellido1Empleado` varchar(50) NOT NULL,
  `apellido2Empleado` varchar(50) NOT NULL,
  `idEstadoCivil` int(11) NOT NULL,
  `idSexo` int(11) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `idCiudadNacimiento` int(11) NOT NULL,
  `nombreCiudadNacimiento` varchar(50) DEFAULT NULL,
  `direccionEmpleado` varchar(200) NOT NULL,
  `idCiudadEmpleado` int(11) NOT NULL,
  `idMunicipioEmpleado` int(11) NOT NULL,
  `idDepartamentoEmpleado` int(11) NOT NULL,
  `idPaisEmpleado` int(11) NOT NULL,
  `idCargoEmpleado` int(11) NOT NULL,
  `idSupervisor` int(11) DEFAULT NULL,
  `telefonoFijoEmpleado` varchar(20) DEFAULT NULL,
  `telefonoMovil1Empleado` varchar(20) DEFAULT NULL,
  `telefonoMovil2Empleado` varchar(20) DEFAULT NULL,
  `extensionEmpleado` varchar(10) DEFAULT NULL,
  `correo1Empleado` varchar(50) NOT NULL,
  `correo2Empleado` varchar(50) DEFAULT NULL,
  `idEstatusEmpleado` int(11) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE KEY `idEmpleado_UNIQUE` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADOS`
--

LOCK TABLES `EMPLEADOS` WRITE;
/*!40000 ALTER TABLE `EMPLEADOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLEADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPRESAS`
--

DROP TABLE IF EXISTS `EMPRESAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPRESAS` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(50) NOT NULL,
  `razonSocial` varchar(200) NOT NULL,
  `direccion` varchar(400) NOT NULL,
  `telefono1` varchar(20) DEFAULT NULL,
  `telefono2` varchar(20) DEFAULT NULL,
  `idCiudad` int(11) NOT NULL,
  `idMunicipio` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idPais` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa_UNIQUE` (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPRESAS`
--

LOCK TABLES `EMPRESAS` WRITE;
/*!40000 ALTER TABLE `EMPRESAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPRESAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTATUS`
--

DROP TABLE IF EXISTS `ESTATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ESTATUS` (
  `idEstatus` int(11) NOT NULL,
  `nombreTabla` varchar(100) NOT NULL,
  PRIMARY KEY (`idEstatus`),
  UNIQUE KEY `idEstatus_UNIQUE` (`idEstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTATUS`
--

LOCK TABLES `ESTATUS` WRITE;
/*!40000 ALTER TABLE `ESTATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ESTATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTURADETALLES`
--

DROP TABLE IF EXISTS `FACTURADETALLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACTURADETALLES` (
  `idFacturaDetalles` int(11) NOT NULL AUTO_INCREMENT,
  `idFactura` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valorImpuesto` decimal(2,2) NOT NULL,
  PRIMARY KEY (`idFacturaDetalles`),
  UNIQUE KEY `idFacturaDetalles_UNIQUE` (`idFacturaDetalles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTURADETALLES`
--

LOCK TABLES `FACTURADETALLES` WRITE;
/*!40000 ALTER TABLE `FACTURADETALLES` DISABLE KEYS */;
/*!40000 ALTER TABLE `FACTURADETALLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTURAS`
--

DROP TABLE IF EXISTS `FACTURAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACTURAS` (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `numOrdenCompra` varchar(50) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `idCotizacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  UNIQUE KEY `idFactura_UNIQUE` (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTURAS`
--

LOCK TABLES `FACTURAS` WRITE;
/*!40000 ALTER TABLE `FACTURAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `FACTURAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMPUESTOS`
--

DROP TABLE IF EXISTS `IMPUESTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMPUESTOS` (
  `idImpuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreImpuesto` varchar(50) NOT NULL,
  `valor` decimal(2,2) NOT NULL,
  PRIMARY KEY (`idImpuesto`),
  UNIQUE KEY `idImpuesto_UNIQUE` (`idImpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMPUESTOS`
--

LOCK TABLES `IMPUESTOS` WRITE;
/*!40000 ALTER TABLE `IMPUESTOS` DISABLE KEYS */;
INSERT INTO `IMPUESTOS` VALUES (1,'IVA',0.19);
/*!40000 ALTER TABLE `IMPUESTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOGO`
--

DROP TABLE IF EXISTS `LOGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGO` (
  `idLogo` int(11) NOT NULL,
  `logo` blob NOT NULL,
  PRIMARY KEY (`idLogo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOGO`
--

LOCK TABLES `LOGO` WRITE;
/*!40000 ALTER TABLE `LOGO` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUNICIPIOS`
--

DROP TABLE IF EXISTS `MUNICIPIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MUNICIPIOS` (
  `idMunicipio` int(11) NOT NULL,
  `nombreMunicipio` varchar(45) NOT NULL,
  PRIMARY KEY (`idMunicipio`),
  UNIQUE KEY `idMunicipio_UNIQUE` (`idMunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUNICIPIOS`
--

LOCK TABLES `MUNICIPIOS` WRITE;
/*!40000 ALTER TABLE `MUNICIPIOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MUNICIPIOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAISES`
--

DROP TABLE IF EXISTS `PAISES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAISES` (
  `idPais` int(11) NOT NULL,
  `nombrePais` varchar(45) NOT NULL,
  PRIMARY KEY (`idPais`),
  UNIQUE KEY `idPais_UNIQUE` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAISES`
--

LOCK TABLES `PAISES` WRITE;
/*!40000 ALTER TABLE `PAISES` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAISES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTOS`
--

DROP TABLE IF EXISTS `PRODUCTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTOS` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(200) NOT NULL,
  `idTipoProducto` int(11) NOT NULL,
  `precioProducto` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `idProducto_UNIQUE` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTOS`
--

LOCK TABLES `PRODUCTOS` WRITE;
/*!40000 ALTER TABLE `PRODUCTOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'thor'
--

--
-- Dumping routines for database 'thor'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-02 21:28:29
