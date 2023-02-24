-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: empresa2
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descricao` varchar(40) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'GERENTE',10000.00),(2,'ENGENHEIRO',8000.00),(3,'SUPERVISOR',3000.00),(4,'OPERARIO',2200.00),(5,'VENDEDOR',5000.00);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `estado` char(2) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `idrepresentante` int(11) NOT NULL,
  `idregiao` int(11) NOT NULL,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FRK_CLIENTE_REPRESENTANTE` (`idrepresentante`),
  KEY `FRK_CLIENTE_REGIAO` (`idregiao`),
  CONSTRAINT `FRK_CLIENTE_REGIAO` FOREIGN KEY (`idregiao`) REFERENCES `regiao` (`id`),
  CONSTRAINT `FRK_CLIENTE_REPRESENTANTE` FOREIGN KEY (`idrepresentante`) REFERENCES `representante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'QUALITAS IND E COMERCIO','RUA FELICIANO ANTUNES','76',NULL,'JD CHAPARRAL','ITAPIRA','13843000','SP','39131122',1,4,'J'),(2,'METALURGICA RL','AV ORESTES PRESTES','390',NULL,'JD LARAMO','ITAPIRA','13843000','SP','39134433',1,4,'J'),(3,'JF MAQUINAS E EQUIPAMENTOS','RUA BORBA GATO','78',NULL,'JD PLANALTO VERDE','CAMPINAS','13843000','SP','39137090',2,1,'J'),(4,'PENHA IND DE PAPELAO LTDA','RUA OSVALDO CRUZ','374',NULL,'JD PROGRESSO','SAO PAULO','13843000','SP','39131345',3,5,'J'),(5,'INTERNATIONAL PAPER','RODOVIA SP 340','5467',NULL,'','MOGI GUACU','13840000','SP','38619878',1,4,'J'),(6,'MAHLE IND E COMERCIO','Av. Ernst MAHLE','2000',NULL,'','MOGI GUACU','13846146','SP',' 38619100',3,5,'J'),(7,'JOSE VANTUAM','Rua 8','27','','CENTRO','ARARAS','13600-000','SP','',1,1,'F'),(8,'AGOSTINHO DE HIPONA','RUA CONFISSOES','430','','CENTRO','RIO CLARO','13506-000','SP','',2,1,'F');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'FINANCEIRO'),(2,'COMERCIAL'),(3,'ADMINISTRATIVO'),(4,'PRODUCAO');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empregado` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `pais` varchar(40) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `escolaridade` int(11) NOT NULL,
  `cargo` varchar(40) NOT NULL,
  `salario` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1,'ANA PAULA','RUA 1','5',NULL,'VILA MARIANA','ITAPIRA','SP','13843000','BRASIL','39134589',3,'ENGENHEIRO',10000.000),(2,'PEDRO HENRIQUE','RUA ALVAREZ TEIXEIRA','1521',NULL,'JD CARMEN LIDIA','ITAPIRA','SP','13843000','INGLATERRA','39138976',3,'ENGENHEIRO',18000.000),(3,'MARIO CAVENAZZI','RUA TIRADENTES','327',NULL,'JD PORTO VELHO','ITAPIRA','SP','13843000','INGLATERRA','39131254',2,'SUPERVISOR',8000.000),(4,'JURANDIR VIEIRA','AV MARECHAL RONDOM','2034',NULL,'VILA MATILDE','ITAPIRA','SP','13843000','BRASIL','39136547',3,'GERENTE',8000.000),(5,'AMALIA CARDOSO','RUA CORUMBA','737',NULL,'JD AUREA','ITAPIRA','SP','13843000','ARGENTINA','39132234',1,'OPERARIO',2500.000);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filho`
--

DROP TABLE IF EXISTS `filho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filho` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) DEFAULT NULL,
  `nome_filho` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FRK_FILHO_PAI` (`id_pai`),
  CONSTRAINT `FRK_FILHO_PAI` FOREIGN KEY (`id_pai`) REFERENCES `pai` (`id_pai`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filho`
--

LOCK TABLES `filho` WRITE;
/*!40000 ALTER TABLE `filho` DISABLE KEYS */;
INSERT INTO `filho` VALUES (1,NULL,'Marcelo Stravazza'),(2,3,'Luis Inácio'),(3,2,'Marcolino de limea'),(4,4,'Amir de tonhos');
/*!40000 ALTER TABLE `filho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagto`
--

DROP TABLE IF EXISTS `formapagto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapagto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagto`
--

LOCK TABLES `formapagto` WRITE;
/*!40000 ALTER TABLE `formapagto` DISABLE KEYS */;
INSERT INTO `formapagto` VALUES (1,'A VISTA'),(2,'A PRAZO'),(3,'BOLETO'),(4,'CHEQUE');
/*!40000 ALTER TABLE `formapagto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `idpedido` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `quantidade` decimal(10,3) NOT NULL,
  `precounitario` decimal(10,3) NOT NULL,
  PRIMARY KEY (`idpedido`,`idproduto`),
  KEY `FRK_ITENS_PRODUTO` (`idproduto`),
  CONSTRAINT `FRK_ITENS_PEDIDO` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `FRK_ITENS_PRODUTO` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,5.000,0.250),(1,2,3.000,0.450),(2,1,2.000,0.250),(2,3,10.000,0.450),(3,1,15.000,0.250),(4,2,20.000,0.450),(5,1,35.000,0.250),(6,1,40.000,0.250),(7,2,35.000,0.450),(8,4,28.000,0.050),(9,5,60.000,0.050),(10,2,100.000,0.050),(10,3,100.000,0.450),(10,4,100.000,0.050);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pai`
--

DROP TABLE IF EXISTS `pai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pai` (
  `id_pai` int(11) NOT NULL,
  `nome_pai` varchar(40) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`id_pai`),
  UNIQUE KEY `UNK_PAI` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pai`
--

LOCK TABLES `pai` WRITE;
/*!40000 ALTER TABLE `pai` DISABLE KEYS */;
INSERT INTO `pai` VALUES (2,'Mourrice Madagascar','123.123.123-00'),(3,'Stevie Wonder','123.123.555-00'),(4,'Rei Charles III','123.123.444-00');
/*!40000 ALTER TABLE `pai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `datemissao` date NOT NULL,
  `datentrega` date DEFAULT NULL,
  `idformapagto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FRK_PEDIDO_CLIENTE` (`idcliente`),
  KEY `FRK_PEDIDO_FORMAPAGTO` (`idformapagto`),
  CONSTRAINT `FRK_PEDIDO_CLIENTE` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FRK_PEDIDO_FORMAPAGTO` FOREIGN KEY (`idformapagto`) REFERENCES `formapagto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,'2019-01-05','2019-04-06',1),(2,2,'2019-01-06','2019-04-07',2),(3,1,'2019-02-03','2019-02-03',3),(4,3,'2019-03-15','2019-03-18',1),(5,4,'2019-04-04','2019-04-10',3),(6,5,'2019-04-04','2019-04-10',3),(7,6,'2019-04-04','2019-04-10',3),(8,5,'2019-04-04','2019-04-10',3),(9,4,'2019-04-04','2019-04-10',2),(10,6,'2019-04-04','2019-04-10',1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `precodecompra` decimal(10,2) NOT NULL DEFAULT 0.00,
  `precodevenda` decimal(10,2) NOT NULL DEFAULT 0.00,
  `estoque` decimal(10,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'PARAFUSO SEXTAVADO 1 POL.',0.15,0.25,10000.000),(2,'PARAFUSO ROSCA SOBERBA',0.30,0.45,15000.000),(3,'PARAFUSO SEXTAVADO 2 POL.',0.30,0.45,8000.000),(4,'PORCA',0.02,0.05,12000.000),(5,'ARRUELA',0.02,0.05,14000.000),(6,'TESTE',0.20,0.80,10.000);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(40) NOT NULL,
  `estado` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (1,'CAMPINAS','SP'),(2,'PIRACICABA','SP'),(3,'GRANDE SAO PAULO','SP'),(4,'BAIXA MOGIANA','SP'),(5,'SAO PAULO','SP');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES (1,'ALVARO','RUA ORLANDO SILVA','13',NULL,'JD VILLAGE','ITAPIRA','SP','13843000','39138876'),(2,'PEIXOTO','AV DEODORA DA FONSECA','980',NULL,'JD CRUZEIRO','ITAPIRA','SP','13843000','39131423'),(3,'JOAQUIM','RUA DOS PRADOS','26',NULL,'JD CATAGUA','ITAPIRA','SP','13843000','39133390'),(4,'SINESIO','RUA ODORICO PARAGUACU','456',NULL,'JD FRONTEIRA','ITAPIRA','SP','13843000','39135527');
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t1` (
  `a` int(11) DEFAULT NULL CHECK (`a` > 2),
  `b` int(11) DEFAULT NULL CHECK (`b` > 2)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (3,3),(4,4);
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 21:22:09
