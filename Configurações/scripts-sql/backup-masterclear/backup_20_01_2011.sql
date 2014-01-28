-- MySQL dump 10.13  Distrib 5.1.50, for Win32 (ia32)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	5.1.50-community

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
-- Table structure for table `adicional`
--

DROP TABLE IF EXISTS `adicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adicional` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adicional`
--

LOCK TABLES `adicional` WRITE;
/*!40000 ALTER TABLE `adicional` DISABLE KEYS */;
INSERT INTO `adicional` (id,descricao, nome, valor) VALUES (1,'Adicional de Periculosidade (30%) sobre salário normal','Adicional de periculosidade (30%)','162.80'),(2,'Adicional de Insalubridade (20%) sobre salário mínimo','Adicional de Insalubridade (20%)','102.00');
/*!40000 ALTER TABLE `adicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `sigla` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agencia`
--

DROP TABLE IF EXISTS `agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `idBanco` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_AGENCIA_BANCO` (`idBanco`),
  CONSTRAINT `FK_AGENCIA_BANCO` FOREIGN KEY (`idBanco`) REFERENCES `banco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencia`
--

LOCK TABLES `agencia` WRITE;
/*!40000 ALTER TABLE `agencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataNascimento` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `sexo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` (id, dataNascimento, email, bairro, cep, cidade, complemento, endereco, estado, numero, nome, sexo) VALUES (1,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(2,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(3,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(4,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(5,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(6,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(7,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(8,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(9,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(10,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(11,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(12,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(13,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(14,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(15,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(16,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(17,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(18,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(19,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(20,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(21,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(22,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(23,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(24,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(25,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(26,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(27,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(28,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(29,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(30,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(31,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(32,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(33,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(34,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(35,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(36,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(37,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(38,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(39,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(40,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(41,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(42,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(43,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(44,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(45,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(46,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(47,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(48,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(49,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(50,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(51,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(52,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(53,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(54,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(55,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(56,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(57,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(58,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(59,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(60,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(61,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(62,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(63,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(64,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(65,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(66,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(67,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(68,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(69,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(70,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(71,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(72,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(73,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(74,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(75,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(76,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(77,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(78,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(79,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(80,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(81,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(82,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(83,NULL,'kelly@starlimp.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kelly',NULL),(84,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(85,NULL,'movimentacaopme@intermedica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(86,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(87,NULL,'movimentacaopme@intermedica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(88,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(89,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(90,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(91,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(92,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(93,NULL,'maria.eunice@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Maria Eunice',NULL),(94,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(95,NULL,'pablo.moraes@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pablo Moraes',NULL),(96,NULL,'carlos.casanova@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carlos Casanova',NULL),(97,NULL,'emerson.queiroz@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Emerson Queiroz',NULL),(98,NULL,'roberto.alonzo@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Roberto Alonzo',NULL),(99,NULL,'eduardo.surita@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Surita',NULL),(100,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(101,NULL,'deborah.lemke@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Deborah Lemke',NULL),(102,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(103,NULL,'eduardo.surita@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Surita',NULL),(104,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(105,NULL,'adm.mara@tecpan.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mara',NULL),(106,NULL,'tecpan.com@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leticia',NULL),(107,NULL,'daniel.wagner@itelios.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Daniel Wagner',NULL),(108,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(109,NULL,'translivre.com@bol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riva',NULL),(110,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(111,NULL,'translivre.com@bol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riva',NULL),(112,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(113,NULL,'gabriela.ramos@transleveexpress.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gabriela',NULL),(114,NULL,'contato@transleveexpress.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(115,NULL,'seasamed@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ligia',NULL),(116,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nilci',NULL),(117,NULL,'doni.torezani@cba.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Doni Torezani',NULL),(118,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(119,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ana',NULL),(120,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Erica',NULL),(121,NULL,'luciano@cabam.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luciano Coelho Cardoso',NULL),(122,NULL,'atendimento@cabam.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(123,NULL,'f.sales.gomes@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Francisco',NULL),(124,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(125,NULL,'lucioimoveis@lucioimoveis.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carolina',NULL),(126,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(127,NULL,'luciano@tecnutri.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luciano',NULL),(128,NULL,'rh@tecnutri.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Andre',NULL),(129,NULL,'andre@novabor.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'André - Vendas',NULL),(130,NULL,'patricia@novabor.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Patricia - Financeiro',NULL),(131,NULL,'cestas@joanin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Neide - Vendas',NULL),(132,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(133,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(134,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(135,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(136,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(137,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(138,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(139,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(140,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(141,NULL,'rogeriosindico@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ednei',NULL),(142,NULL,'reinaldomrangel@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rangel',NULL),(143,'1981-04-04',NULL,'Presidente Altino','06216210','Osasco ','','Rua Maria Luiza Ferreira','São Paulo ',2,'Aliziane Maria dos Santos ',1),(144,'1970-07-03',NULL,'Alto Boa Vista ','09390810','Mauá','','Rua João Salvador Peres Tunico','São Paulo ',35,'Alaide da Silva Pereira Santos ',1),(145,'1988-07-07',NULL,'Jd. Oratorio','09380600','Santo Andre','','Travessa Itaparica','SP',16,'Edlayne Santos Ventura',1),(146,'1987-04-14',NULL,'Campestre','09170680','Santo André ','Casa 01','Rua das Flores','São Paulo ',577,'Alex Sandro Cláudio Soliano ',0),(147,'1978-07-12',NULL,'Jardim Alzira Franco','09273245','Santo André','Casa 05','Travessa Amor Perfeito','São Paulo ',157,'Alzira Maria da Rocha Santos ',1),(148,'1979-10-20',NULL,'Vila Figueredo','09445000','Rio Grande da Serra','Casa 2','Rua Jose Figueiredo','São Paulo',255,'Ana Cristina Alves do Nascimento',1),(149,'1986-10-11',NULL,'Vila Esperança','11500000','Cubatão','','Rua São Bartolomeu','São Paulo ',360,'Andre Souza da Silva ',0),(150,'1979-11-23',NULL,'Jardim Iguatemi ','08380250','São Paulo','','Rua Arnaldo Aguiar Barbosa','São Paulo ',130,'Angela Aureliano da Silva ',1),(151,'2007-08-12',NULL,'Jd Alzira Franco','09273285','Santo Andre','A','Tr Bela Cintra','SP',4,'Maria Rafaela dos Santos',1),(152,'1944-05-17',NULL,'São Mateus ','08390240','São Paulo','','Avenida Sertanista','São Paulo',1879,'Antonio Gomes da Silva ',0),(153,'1981-04-07',NULL,'Pq Capuava','09270070','Santo Andre','0','Rua Malaia','SP',162,'Eva Raimunda Cirilo',1),(154,'1962-01-25',NULL,'Eldorado','09970341','Diadema','','Rua Lucas Moreira Neves','São Paulo ',101,'Brandina de Paula',1),(155,'1975-05-27',NULL,'Vila dos Pescadores','11531000','Cubatão','','Avenida Ferroviária','São Paulo ',874,'Caçilda Maria dos Santos Reis ',1),(156,'1980-10-17',NULL,'Jardim Ruyce','09961590','Diadema ','','Rua Barão de Guarapava','São Paulo ',33,'Cátia Martins Galhardo',1),(157,'1961-04-12',NULL,'Cerqueira Leite','09390590','Maua','','Rua Projetada ','SP',27,'Doristel Araujo Martins',1),(158,'1973-06-01',NULL,'Pilões','11543000','Cubatão','','Rua Oliveira ','São Paulo ',986,'Cosma Vicente Gabriel ',1),(159,NULL,'comercial@masterclear.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Levi Colonhezi',NULL),(160,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(161,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Adelmo',NULL),(162,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(163,NULL,'renata@villa safari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Renata',NULL),(164,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(165,NULL,'lablian@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carmen',NULL),(166,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(167,'1983-08-08',NULL,'PQ AMERICA','09450000','Rio Grande da Serra','','Rua Xavantes ','São Paulo',20,'Peterson Robson Barreto Machuda',0),(168,NULL,'eduardovilas25@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Vilas ',NULL),(169,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(170,NULL,'frezende@ohhmidia.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fernando Rezende',NULL),(171,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(172,'1978-03-06',NULL,'Parque Jaçatuba','09290510','Santo André','','Rua. Itanhaem','São Paulo',84,'Levi Colonhezi Basilio',0),(173,NULL,'pin@linksat.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Pin',NULL),(174,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataCadastro` date DEFAULT NULL,
  `dataExpiraSenha` date DEFAULT NULL,
  `dataUltimaAlteracao` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_USUARIO_PESSOA` (`idPessoa`),
  CONSTRAINT `FK_USUARIO_PESSOA` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (id, dataCadastro, dataExpiraSenha, dataUltimaAlteracao, password, username, idPessoa) VALUES (2,NULL,'2011-11-22','2011-01-17','21ef05aed5af92469a50b35623d52101','Angela',NULL),(3,NULL,'2011-11-22','2011-01-17','68c26935d45bf7340b70c481e2578906','Bete',NULL),(4,NULL,'2011-11-22','2011-01-17','21ef05aed5af92469a50b35623d52101','Valdirene',NULL),(5,NULL,NULL,'2011-01-07','68c26935d45bf7340b70c481e2578906','Levi',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoriacadastro`
--

DROP TABLE IF EXISTS `auditoriacadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoriacadastro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataOperacao` datetime DEFAULT NULL,
  `descricaoOperacao` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `nomeTabela` varchar(255) DEFAULT NULL,
  `tipoOperacao` varchar(255) DEFAULT NULL,
  `idUsuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_AUDITORIACADASTRO_USUARIO` (`idUsuario`),
  CONSTRAINT `FK_AUDITORIACADASTRO_USUARIO` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoriacadastro`
--

LOCK TABLES `auditoriacadastro` WRITE;
/*!40000 ALTER TABLE `auditoriacadastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoriacadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficio`
--

DROP TABLE IF EXISTS `beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficio`
--

LOCK TABLES `beneficio` WRITE;
/*!40000 ALTER TABLE `beneficio` DISABLE KEYS */;
INSERT INTO `beneficio` (id, descricao, nome, valor) VALUES (1,'Cesta Básica','Cesta Básica','51.73'),(2,'Vale Refeição','Vale Refeição','4.08'),(3,'Vale Transporte ( 02 conduções )','Vale Transporte ( 02 conduções )','5.30'),(4,'Vale Transporte ( 04 conduções )','Vale Transporte ( 04 conduções )','10.60'),(5,'Prêmio - Líder - Cesari Base 1','Prêmio - Líder','80.00'),(6,'Prêmio - Encarregada - Cesari Base 1','Prêmio - Encarregada','210.00');
/*!40000 ALTER TABLE `beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(150) NOT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (id, cargo, descricao) VALUES (1,'Auxiliar de Limpeza','Auxiliar de Limpeza'),(2,'Ajudante Geral','Ajudante Geral'),(3,'Limpador de Vidros','Limpador de Vidros'),(4,'Jardineiro C','Jardineiro C'),(5,'Zelador','Zelador'),(6,'Diretor','Diretor'),(7,'Supervisora Regional','Supervisora Regional'),(8,'Gerente Operacional','Gerente Operacional'),(9,'Encarregada de Limpeza C','Encarregada de Limpeza C'),(10,'Encarregada de Limpeza B','Encarregada de Limpeza B'),(11,'Recepcionista','Recepcionista'),(12,'Líder de Limpeza','Líder de Limpeza'),(13,'Jardineiro B','Jardineiro B'),(14,'Auxiliar Administrativo','Auxiliar Administrativo'),(15,'Controlador de Acesso','Controlador de Acesso');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) DEFAULT NULL,
  `ramal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` (id, numero, ramal) VALUES (1,'',''),(2,'',''),(3,'(11) 4476-2217',''),(4,'(11) 4476-2792',''),(5,'',''),(6,'',''),(7,'',''),(8,'',''),(9,'',''),(10,'',''),(11,'',''),(12,'',''),(13,'',''),(14,'',''),(15,'',''),(16,'',''),(17,'',''),(18,'',''),(19,'',''),(20,'',''),(21,'',''),(22,'',''),(23,'',''),(24,'',''),(25,'',''),(26,'',''),(27,'',''),(28,'',''),(29,'',''),(30,'',''),(31,'',''),(32,'',''),(33,'',''),(34,'',''),(35,'',''),(36,'',''),(37,'',''),(38,'',''),(39,'',''),(40,'',''),(41,'',''),(42,'',''),(43,'',''),(44,'',''),(45,'',''),(46,'',''),(47,'',''),(48,'',''),(49,'',''),(50,'',''),(51,'',''),(52,'',''),(53,'',''),(54,'',''),(55,'',''),(56,'',''),(57,'',''),(58,'',''),(59,'',''),(60,'',''),(61,'',''),(62,'',''),(63,'',''),(64,'',''),(65,'',''),(66,'',''),(67,'',''),(68,'',''),(69,'',''),(70,'',''),(71,'',''),(72,'',''),(73,'',''),(74,'',''),(75,'',''),(76,'',''),(77,'',''),(78,'',''),(79,'',''),(80,'',''),(81,'',''),(82,'',''),(83,'',''),(84,'',''),(85,'(11) 2910-6452',''),(86,'(11) 2916-6029',''),(87,'',''),(88,'',''),(89,'',''),(90,'',''),(91,'(11) 4451-1792',''),(92,'(11) 4972-2458',''),(93,'',''),(94,'',''),(95,'',''),(96,'',''),(97,'',''),(98,'',''),(99,'',''),(100,'',''),(101,'',''),(102,'',''),(103,'',''),(104,'',''),(105,'',''),(106,'',''),(107,'',''),(108,'',''),(109,'',''),(110,'',''),(111,'11 4994 4740',''),(112,'11 4990 2139',''),(113,'(11) 4994 4740',''),(114,'(11) 4990 2139',''),(115,'(11) 4476-9622',''),(116,'(11) 7696-6415',''),(117,'(11) 4438-7951',''),(118,'(11) 4468-1468',''),(119,'(11) 2125-1048',''),(120,'(11) 2125-1010',''),(121,'(11) 4475-2064',''),(122,'',''),(123,'(11) 4362-4732',''),(124,'(11) 3425-9875',''),(125,'(11) 2081-5354',''),(126,'',''),(127,'(11) 4996-3044',''),(128,'',''),(129,'(13) 3235-8595',''),(130,'',''),(131,'(11) 4453-4300',''),(132,'(11) 4451-1388',''),(133,'(11) 4479-9722',''),(134,'',''),(135,'',''),(136,'',''),(137,'(11) 44799722',''),(138,'',''),(139,'(11) 2125-6200',''),(140,'',''),(141,'',''),(142,'',''),(143,'(11) 5021-3940',''),(144,'(11) 8531-3402',''),(145,'(11) 4476-2217',''),(146,'',''),(147,'(11) 4401-1222',''),(148,'(11) 4479-4046',''),(149,'(11) 4473-1505',''),(150,'',''),(151,'(11) 3726-7572',''),(152,'',''),(153,'(11) 3726-7100',''),(154,'',''),(155,'(11) 3878-4200',''),(156,'',''),(157,'(11) 2324-9347',''),(158,'(11) 9484-7329','');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) NOT NULL,
  `codigoMunicipal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nomeFantasia` varchar(255) NOT NULL,
  `razaoSocial` varchar(255) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `tipoAtividade` varchar(255) NOT NULL,
  `idMatriz` bigint(20) DEFAULT NULL,
  `idTelefone1` bigint(20) DEFAULT NULL,
  `idTelefone2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK26DD869CD5A0AF8` (`idMatriz`),
  KEY `FK26DD8695BD2F306` (`idTelefone2`),
  KEY `FK26DD8695BD2F305` (`idTelefone1`),
  CONSTRAINT `FK26DD8695BD2F305` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK26DD8695BD2F306` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK26DD869CD5A0AF8` FOREIGN KEY (`idMatriz`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (id, cnpj, codigoMunicipal, email, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, responsavel, tipoAtividade, idMatriz, idTelefone1, idTelefone2) VALUES (1,'09337554000153',NULL,'comercial@masterclear.com.br','Parque Erasmo Assunção','09271410','Santo André','','Av. Itamarati','São Paulo',2773,'Master Clear Serviços de Limpeza Ltda','Master Clear Serviços de Limpeza Ltda','Levi','Serviços de Limpeza e Conservação',NULL,3,4);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresamatriz_empresafilial`
--

DROP TABLE IF EXISTS `empresamatriz_empresafilial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresamatriz_empresafilial` (
  `idMatriz` bigint(20) NOT NULL,
  `idFilial` bigint(20) NOT NULL,
  UNIQUE KEY `idFilial` (`idFilial`),
  KEY `FKB2048A01CD5A0AF8` (`idMatriz`),
  KEY `FKB2048A01C1D514E0` (`idFilial`),
  CONSTRAINT `FKB2048A01C1D514E0` FOREIGN KEY (`idFilial`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKB2048A01CD5A0AF8` FOREIGN KEY (`idMatriz`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresamatriz_empresafilial`
--

LOCK TABLES `empresamatriz_empresafilial` WRITE;
/*!40000 ALTER TABLE `empresamatriz_empresafilial` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresamatriz_empresafilial` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpfCnpj` varchar(20) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `dataInicioContrato` datetime DEFAULT NULL,
  `dataFinalContrato` datetime DEFAULT NULL,
  `diaPagamento` int(11) DEFAULT NULL,
  `tipoAtividade` varchar(255) NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nomeFantasia` varchar(255) NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `razaoSocial` varchar(255) NOT NULL,
  `idContato1` bigint(20) DEFAULT NULL,
  `idContato2` bigint(20) DEFAULT NULL,
  `idTelefone1` bigint(20) DEFAULT NULL,
  `idTelefone2` bigint(20) DEFAULT NULL,
  `idEmpresa` bigint(20) NOT NULL,
  `idMatriz` bigint(20) DEFAULT NULL,
  `tipoDocumento` varchar(10) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK96841DDACC8F1928` (`idContato2`),
  KEY `FK96841DDA8CCD916B` (`idTelefone2`),
  KEY `FK96841DDA61705069` (`idMatriz`),
  KEY `FK96841DDACC8EA4C9` (`idContato1`),
  KEY `FK96841DDACBBE3568` (`idEmpresa`),
  KEY `FK96841DDA8CCD1D0C` (`idTelefone1`),
  CONSTRAINT `FK96841DDA61705069` FOREIGN KEY (`idMatriz`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK96841DDA8CCD1D0C` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDA8CCD916B` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDACBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK96841DDACC8EA4C9` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FK96841DDACC8F1928` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (id,  cpfCnpj,  codigo,  dataInicioContrato,  dataFinalContrato,  diaPagamento,  tipoAtividade,  bairro,  cep,  cidade,  complemento,  endereco,  estado,  numero,  nomeFantasia,  observacao,  razaoSocial ,  idContato1,  idContato2,  idTelefone1 ,  idTelefone2 ,  idEmpresa,  idMatriz,  tipoDocumento,  situacao) VALUES (4,'60872306009701','104',NULL,NULL,1,'Armazenagem distribuição de tintas','Chácara Santo Antonio','04711000','São Paulo ','','Rua Engenheiro Mesquita Sampaio','São Paulo ',573,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',93,94,95,96,1,NULL,'CNPJ','ATIVO'),(5,'01527330001921','102',NULL,NULL,NULL,'','Vila Elclor - Paranapiacaba','09154900','Santo André','KM 38','Estrada de Ferro Santos Jundiaí, s/n','São Paulo',0,'Cesari Empresa Multimodal de Movimentação de Materiais Ltda','','Cesari Empresa Multimodal de Movimentação de Mat - Base 4',63,64,65,66,1,NULL,'CNPJ','ATIVO'),(6,'60872306001131','103',NULL,NULL,1,'Armazenagem distribuição de tintas','Várzea do Tamanduateí','09290416','Santo André','','Rua Angelo Franchini,','São Paulo',151,'Sherwin Wiilliams do Brasil Ltda','','Sherwin Wiilliams do Brasil Ltda',95,96,97,98,1,NULL,'CNPJ','ATIVO'),(7,'60872306009892','101',NULL,NULL,1,'Armazenagem distribuição de tintas','Presidente Altino','06210030','Osasco','','Rua José Lopes Lazzaro','São Paulo',365,'Sherwin Wiilliams do Brasil Ltda','','Sherwin Wiilliams do Brasil Ltda',97,98,99,100,1,NULL,'CNPJ','ATIVO'),(8,'66903477000195','105',NULL,NULL,NULL,'','Jd. Ruyce','09961720','Diadema','','Rua Emir Macedo Nogueira','São Paulo',273,'Farber Chemie Indústria Química Ltda','','Farber Chemie Indústria Química Ltda',9,10,11,12,1,NULL,'CNPJ','ATIVO'),(9,'08157285000180','106',NULL,NULL,NULL,'','Parque das Nações','09241000','Santo André ','','Rua Columbia','São Paulo',461,'IPL Serviços de Escritórios Ltda ','','IPL Serviços de Escritórios Ltda ',11,12,13,14,1,NULL,'CNPJ','ATIVO'),(10,'06012292000169','107',NULL,NULL,NULL,'','Vila Mariana','04040031','São Paulo','Conj. 43','Rua Loefgreen','São Paulo',1291,'Synapsystem Ltda','','Synapsystem Ltda',13,14,15,16,1,NULL,'CNPJ','ATIVO'),(11,'53715975000162','108',NULL,NULL,NULL,'','Vila Guiomar','09290000','Santo André','','Rua Catequese','São Paulo',1105,'Sindicato dos Contabilistas de Santo André','','Sindicato dos Contabilistas de Santo André',15,16,17,18,1,NULL,'CNPJ','ATIVO'),(12,'59357749000133','109',NULL,NULL,1,'Fabricação de peças automotivas','Pq.Jaçatuba','09290520','Santo André','','Av. dos Estados','São Paulo',8293,'Tec Pan Indústria e Comércio de Plásticos Ltda ','','Tec Pan Indústria e Comércio de Plásticos Ltda ',105,106,107,108,1,NULL,'CNPJ','ATIVO'),(13,'60872306001301','111',NULL,NULL,1,'Armazenagem distribuição de tintas','Parque João Ramalho','07240130','Guarulhos','','Av.Paquistão','São Paulo',440,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',101,102,103,104,1,NULL,'CNPJ','ATIVO'),(14,'60872306011609','112',NULL,NULL,1,'Armazenagem distribuição de tintas','Vila Suissa','08210000','Mogi das Cruzes','','Av.Francisco Rodrigues Filho','São Paulo',3970,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',103,104,105,106,1,NULL,'CNPJ','ATIVO'),(15,'10233825000100','113',NULL,NULL,NULL,'','Rudge Ramos ','09626120','São Bernardo do Campo ','','Rua André Capretz Filho','São Paulo ',46,'Carimed Equipamentos Médicos Ltda','','Carimed Equipamentos Médicos Ltda',23,24,25,26,1,NULL,'CNPJ','ATIVO'),(16,'07692770000191','114',NULL,NULL,5,'Sistemas de Informática','Bela Vista ','01310000','São Paulo','','Av.Paulista','São Paulo',726,'Itélios do Brasil Informática Ltda ','','Itélios do Brasil Informática Ltda ',107,108,109,110,1,NULL,'CNPJ','ATIVO'),(17,'65654121000100','115',NULL,NULL,NULL,'','Casa Verde','02512010','São Paulo','','Rua Zanzibar','São Paulo',1149,'Papel Ecológico Comércio Ltda','','Papel Ecológico Comércio Ltda',27,28,29,30,1,NULL,'CNPJ','ATIVO'),(18,'66762964000185','117',NULL,NULL,NULL,'','Camilópolis ','09230310','Santo André','','Rua Taubaté','São Paulo',1130,'Famadi Indústria Comércio e Serviços Ltda','','Famadi Indústria Comércio e Serviços Ltda',29,30,31,32,1,NULL,'CNPJ','ATIVO'),(19,'73431686001030','119',NULL,NULL,NULL,'','Centro','01332000','São Paulo','','Rua Itapeva','São Paulo ',26,'Kontik Franstur Viagens e Turismo Ltda','','Kontik Franstur Viagens e Turismo Ltda',31,32,33,34,1,NULL,'CNPJ','ATIVO'),(20,'66762964000266','120',NULL,NULL,NULL,'','Barcelona','09230310','São Caetano do Sul','','Av.Goiás','São Paulo ',3111,'Famadi Indústria Comércio e Serviços Ltda ','','Famadi Indústria Comércio e Serviços Ltda ',33,34,35,36,1,NULL,'CNPJ','ATIVO'),(21,'08484540000108','121',NULL,NULL,NULL,'','Jardim Paulista','01454011','São Paulo','','Rua Professor Arthur Ramos','São Paulo',183,'GMC Software Tecnologia Ltda ','','GMC Software Tecnologia Ltda ',35,36,37,38,1,NULL,'CNPJ','ATIVO'),(22,'00787057000182','122',NULL,NULL,NULL,'','Ipiranga','09080111','São Paulo','','Rua Vieira de Almeida','São Paulo',299,'H A da Fonte Sanches Me','','H A da Fonte Sanches Me',37,38,39,40,1,NULL,'CNPJ','ATIVO'),(23,'58698432000106','123',NULL,NULL,NULL,'','Vila Metalúrgica ','09230020','Santo André ','','Rua Atenas','São Paulo ',111,'Vovó Lina Comidas Caseiras Lda ','','Vovó Lina Comidas Caseiras Lda ',39,40,41,42,1,NULL,'CNPJ','ATIVO'),(24,'29739737004361','125',NULL,NULL,NULL,'','Vila Mariana','04121000','São Paulo','','Rua Santa Cruz','São Paulo',541,'Elevadores Ótis Ltda - Regional SP','','Elevadores Ótis Ltda - Regional SP',41,42,43,44,1,NULL,'CNPJ','ATIVO'),(25,'29739737004604','126',NULL,NULL,NULL,'','Vila Madalena ','05441050','São Paulo','','Rua Borges de Barros','São Paulo',59,'Elevadores Ótis Ltda - SPO ','','Elevadores Ótis Ltda - SPO ',43,44,45,46,1,NULL,'CNPJ','ATIVO'),(26,'29739737005252','127',NULL,NULL,NULL,'','Saúde','04138002','Santo André','','Rua Caramuru','São Paulo ',646,'Elevadores Ótis Ltda - SPS','','Elevadores Ótis Ltda - SPS',45,46,47,48,1,NULL,'CNPJ','ATIVO'),(27,'29739737005333','128',NULL,NULL,NULL,'','Bela Vista','01306000','São Paulo','','Rua Avanhandava','São Paulo',830,'Elevadores Ótis Ltda - SPN','','Elevadores Ótis Ltda - SPN',47,48,49,50,1,NULL,'CNPJ','ATIVO'),(28,'29739737002822','129',NULL,NULL,NULL,'','Chácara Inglesa','09726000','São Bernardo do Campo ','','Av.Barão de Mauá','São Paulo ',243,'Elevadores Ótis Ltda - ABC','','Elevadores Ótis Ltda - ABC',49,50,51,52,1,NULL,'CNPJ','ATIVO'),(29,'60708880000187','130',NULL,NULL,NULL,'','Vila Gilda','09190460','Santo André ','','Rua Santa Mônica','São Paulo ',66,'RZR Bombas Positivas Ltda ','','RZR Bombas Positivas Ltda ',51,52,53,54,1,NULL,'CNPJ','ATIVO'),(30,'02987129000160','132',NULL,NULL,NULL,'','Jd.Ruyce','09980000','Diadema','','Av.Nossa Senhora das Graças','São Paulo',1315,'Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP','','Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP',53,54,55,56,1,NULL,'CNPJ','ATIVO'),(31,'55706147000193','133',NULL,NULL,NULL,'','Jabaquara','04323010','São Paulo','','Rua Coronel Luís de Faria e Souza','São Paulo',274,'Condominio Edíficio Rogério','','Condominio Edíficio Rogério',141,142,143,144,1,NULL,'CNPJ','ATIVO'),(32,'01527330000100','134',NULL,NULL,NULL,'','Jd. São Marcos ','11570000','Cubatão','','Av.Plínio de Queiroz, S/N','São Paulo ',0,'Cesari Empresa Multimodal de Mov de Materiais Limitada - Base 1','','Cesari Empresa Multimodal de Mov de Mat - Base 2',61,62,63,64,1,NULL,'CNPJ','ATIVO'),(33,'67315556000148','136',NULL,NULL,NULL,'','Jd. do Mar','09750510','São Bernardo do Campo ','','Rua Bering','São Paulo',163,'Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda','','Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda',65,66,67,68,1,NULL,'CNPJ','ATIVO'),(34,'49524341000155','138',NULL,NULL,NULL,'','Idealópolis','09950580','Diadema ','','Rua Idealópolis','São Paulo',354,'Galvonoplastia Anchieta Ltda ','','Galvanoplastia Anchieta Ltda ',79,80,81,82,1,NULL,'CNPJ','ATIVO'),(35,'03691655000141','140',NULL,NULL,NULL,'','Rudge Ramos','11570000','São Bernardo do Campo','','Rua Pio XII','São Paulo ',89,'DMZ Produtos para Laboratórios Lda','','DMZ Produtos para Laboratórios Lda',71,72,73,74,1,NULL,'CNPJ','ATIVO'),(36,'35402759000185','141',NULL,NULL,NULL,'','Jd. Cambara ','05560000','Santo André ','','Rua Érico Veríssimo ','São Paulo ',342,'Bimbo do Brasil Ltda','','Bimbo do Brasil Ltda',81,82,83,84,1,NULL,'CNPJ','ATIVO'),(37,'11409362000157','144',NULL,NULL,NULL,'','Quarta Parada','03174000','São Paulo','','Rua Serra da Bocaina','São Paulo',121,'Residencial Bio Vitta','','Residencial Bio Vitta',75,76,77,78,1,NULL,'CNPJ','ATIVO'),(38,'00822263000186','145',NULL,NULL,NULL,'','Jd. Nova Petrópolis ','09770330','São Bernardo do Campo','','Rua Alameda Dona Thereza Cristina','São Paulo ',819,'W-Service Comércio e Serviços em Equipamentos Elétricos Ltda','','W-Service Comércio e Serviços em Equipamentos Elétricos Ltda',77,78,79,80,1,NULL,'CNPJ','ATIVO'),(39,'09337554000153','100','2008-01-23 00:00:00',NULL,5,'Serviços de Limpeza e Conservação','Parque Erasmo Assunção','09271410','Santo André','','Av. Itamarati','São Paulo',2773,'Master Clear Serviços de Limpeza Ltda','','Master Clear Serviços de Limpeza Ltda',159,160,145,146,1,NULL,'CNPJ','ATIVO'),(40,'09367429000196','99','2009-01-21 00:00:00','2009-01-30 00:00:00',1,'','Vila Campestre','09290000','Santo André','','Av. Dom Pedro II','São Paulo',2283,'Villa Safari Buffet Ltda','','Villa Safari Buffet Ltda',163,164,149,150,1,NULL,'CNPJ','INATIVO'),(41,'01250600000170','110','2009-01-13 00:00:00',NULL,1,'','Butantã','03298733','São Paulo','','Av. Caxingui','São Paulo',198,'Laboratório Lian de Protese Odontológica Ltda','','Laboratório Lian de Protese Odontológica Ltda',165,166,151,152,1,NULL,'CNPJ','ATIVO'),(42,'07052844000125','116','2009-09-01 00:00:00',NULL,5,'Academia de ginástica','Jardim Bonfiglioli','09626120','São Paulo','','Rua General Brasilio Taborda','São Paulo',140,'Era Sport e Serviços Ltda','','Era Sport e Serviços Ltda',168,169,153,154,1,NULL,'CNPJ','ATIVO'),(43,'07510876000127','137','2010-01-12 00:00:00',NULL,1,'Publicidade','Cidade Manções','04575060','São Paulo','','Rua. Geraldo Flausino Gomes ','São Paulo',100,'Ooh Midia Comunicação Ltda','','Ooh Midia Comunicação Ltda',170,171,155,156,1,NULL,'CNPJ','ATIVO'),(44,'06653440826','118','2010-04-05 00:00:00',NULL,8,'Condominio Residencial','Vila Eldizia','09181570','Santo André','','Rua.Javaés','São Paulo',616,'Eduardo Pin','','Eduardo Pin',173,174,157,158,1,NULL,'CPF','ATIVO');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientematriz_clientefilial`
--

DROP TABLE IF EXISTS `clientematriz_clientefilial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientematriz_clientefilial` (
  `idMatriz` bigint(20) NOT NULL,
  `idFilial` bigint(20) NOT NULL,
  UNIQUE KEY `idFilial` (`idFilial`),
  KEY `FK3BF959A361705069` (`idMatriz`),
  KEY `FK3BF959A355EB5A51` (`idFilial`),
  CONSTRAINT `FK3BF959A355EB5A51` FOREIGN KEY (`idFilial`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK3BF959A361705069` FOREIGN KEY (`idMatriz`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientematriz_clientefilial`
--

LOCK TABLES `clientematriz_clientefilial` WRITE;
/*!40000 ALTER TABLE `clientematriz_clientefilial` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientematriz_clientefilial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contabancaria`
--

DROP TABLE IF EXISTS `contabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contabancaria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `tipoContaBancaria` int(11) DEFAULT NULL,
  `idAgencia` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK306B89ACED87A6E` (`idAgencia`),
  CONSTRAINT `FK306B89ACED87A6E` FOREIGN KEY (`idAgencia`) REFERENCES `agencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contabancaria`
--

LOCK TABLES `contabancaria` WRITE;
/*!40000 ALTER TABLE `contabancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `contabancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodemissao`
--

DROP TABLE IF EXISTS `tipodemissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodemissao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodemissao`
--

LOCK TABLES `tipodemissao` WRITE;
/*!40000 ALTER TABLE `tipodemissao` DISABLE KEYS */;
INSERT INTO `tipodemissao` (id, descricao, nome) VALUES (4,'Dispensa sem justa causa','Dispensa sem justa causa'),(5,'Dispensa com justa causa','Dispensa com justa causa'),(6,'Término do contrato de trabalho','Término do contrato de trabalho'),(7,'Antecipação do término do contrato de trabalho','Antecipação do término do contrato de trabalho'),(8,'Solicitação de demissão pelo empregado','Solicitação de demissão pelo empregado');
/*!40000 ALTER TABLE `tipodemissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoriaHabilitacao` varchar(255) DEFAULT NULL,
  `dataVencimentoHabilitacao` datetime DEFAULT NULL,
  `habilitacao` varchar(255) DEFAULT NULL,
  `nomeConselhoRegional` varchar(255) DEFAULT NULL,
  `numeroConselhoRegional` bigint(20) DEFAULT NULL,
  `regiaoConselhoRegional` varchar(255) DEFAULT NULL,
  `siglaConselhoRegional` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `ctps` varchar(255) DEFAULT NULL,
  `dataEmissaoCtps` datetime DEFAULT NULL,
  `ctpsEstrangeiro` varchar(255) DEFAULT NULL,
  `dataEmissaoCtpsEstrangeiro` datetime DEFAULT NULL,
  `dataValidadeCtpsEstrangeiro` datetime DEFAULT NULL,
  `dataAdmissao` datetime DEFAULT NULL,
  `dataExameMedico` datetime DEFAULT NULL,
  `categoriaDocumentoMilitar` varchar(255) DEFAULT NULL,
  `documentoMilitar` varchar(255) DEFAULT NULL,
  `numeroDocumentoMilitar` bigint(20) DEFAULT NULL,
  `escolaridade` int(11) DEFAULT NULL,
  `estadoCivil` int(11) DEFAULT NULL,
  `indicacao` varchar(255) DEFAULT NULL,
  `nomeMae` varchar(255) DEFAULT NULL,
  `nomePai` varchar(255) DEFAULT NULL,
  `dataEmissaoPis` datetime DEFAULT NULL,
  `pis` varchar(255) DEFAULT NULL,
  `cidadeRg` varchar(255) DEFAULT NULL,
  `dataEmissaoRg` datetime DEFAULT NULL,
  `estadoRg` varchar(255) DEFAULT NULL,
  `orgaoEmissorRg` varchar(255) DEFAULT NULL,
  `paisRG` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `dataValidadeRne` datetime DEFAULT NULL,
  `rne` varchar(255) DEFAULT NULL,
  `tipoVistoRne` varchar(255) DEFAULT NULL,
  `salario` decimal(19,2) DEFAULT NULL,
  `bancoDepositanteFgts` varchar(255) DEFAULT NULL,
  `dataOpcaoFgts` datetime DEFAULT NULL,
  `dataRetratacaoFgts` datetime DEFAULT NULL,
  `optanteFgts` bit(1) DEFAULT NULL,
  `secaoTituloEleitor` varchar(255) DEFAULT NULL,
  `tituloEleitor` varchar(255) DEFAULT NULL,
  `zonaTituloEleitor` varchar(255) DEFAULT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
  `idContaBancaria` bigint(20) DEFAULT NULL,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `idFormaPagamento` bigint(20) DEFAULT NULL,
  `idJornadaTrabalho` bigint(20) DEFAULT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  `idPessoaReferencia` bigint(20) DEFAULT NULL,
  `idCargo` bigint(20) DEFAULT NULL,
  `codigoRegistro` bigint(20) NOT NULL,
  `nascionalidade` varchar(100) DEFAULT NULL,
  `naturalidade` varchar(100) DEFAULT NULL,
  `ufRg` varchar(5) DEFAULT NULL,
  `observacao` varchar(300) DEFAULT NULL,
  `setor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB3A9C5BB8F49D43C` (`idPessoaReferencia`),
  KEY `FKB3A9C5BBB7A18838` (`idPessoa`),
  KEY `FKB3A9C5BB6E772212` (`idJornadaTrabalho`),
  KEY `FKB3A9C5BB420AE1C` (`idFormaPagamento`),
  KEY `FKB3A9C5BBCBBE3568` (`idEmpresa`),
  KEY `FKB3A9C5BBA7D2EB4E` (`idContaBancaria`),
  KEY `FKB3A9C5BBF3EAC04A` (`idCliente`),
  KEY `idCargo` (`idCargo`),
  CONSTRAINT `FKB3A9C5BB420AE1C` FOREIGN KEY (`idFormaPagamento`) REFERENCES `formapagamento` (`id`),
  CONSTRAINT `FKB3A9C5BB6E772212` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`),
  CONSTRAINT `FKB3A9C5BB8F49D43C` FOREIGN KEY (`idPessoaReferencia`) REFERENCES `pessoareferencia` (`id`),
  CONSTRAINT `FKB3A9C5BBA7D2EB4E` FOREIGN KEY (`idContaBancaria`) REFERENCES `contabancaria` (`id`),
  CONSTRAINT `FKB3A9C5BBB7A18838` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKB3A9C5BBCBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKB3A9C5BBF3EAC04A` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'04759973443','00057105 / 00019','1999-09-03 00:00:00',NULL,NULL,NULL,'2008-04-01 00:00:00','2008-04-01 00:00:00','0','0',0,NULL,1,NULL,'Josefa Maria da Conceição ','Mario Francisco dos Santos ','2011-01-17 00:00:00','20361101486','0','1999-09-03 00:00:00',NULL,'Satuba ','Brasil','99002005629',NULL,NULL,NULL,'598.00',NULL,'2008-04-01 00:00:00','2011-01-17 00:00:00','','0250','30029911708','003',7,NULL,1,1,16,143,NULL,1,1,'Brasileira ','Alagoas','AL','','Geral '),(2,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'65528042534','00082732 / 00035','2011-01-17 00:00:00',NULL,NULL,NULL,'2010-05-06 00:00:00','2010-04-20 00:00:00','0','0',0,NULL,0,NULL,'Maria de Lourdes da Silva Pereira','Júlio Pereira Benevides ','2011-01-17 00:00:00','12447967332','0','2002-05-15 00:00:00',NULL,'Mauá','0','329252562',NULL,NULL,NULL,'598.00',NULL,'2010-05-06 00:00:00',NULL,'','098','51592780590','339',26,NULL,1,1,16,144,NULL,1,80,'Brasileira ','Bahia','SP','','Geral'),(3,'00','2011-01-04 00:00:00','00',NULL,NULL,NULL,NULL,'23036404821','00039655 / 00287 / sp','2011-01-01 00:00:00','',NULL,NULL,'2010-12-01 00:00:00','2010-11-30 00:00:00','k','0',0,NULL,0,NULL,'Eliane Duda dos Santos','Edberto Ventura da Silva','2011-01-01 00:00:00','0','EXCLUIR ESTE CAMPO','2001-04-02 00:00:00',NULL,'SSP','Brasil','451034375',NULL,'','','598.00',NULL,'2010-12-01 00:00:00',NULL,'','222','353261440116','339',33,NULL,1,1,14,145,NULL,1,173,'Brasileira','Maceio','SP','','EXCLUIR ESTE CAMPO'),(4,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'35041009821','00055551 / 00348','2011-01-17 00:00:00',NULL,NULL,NULL,'2010-08-05 00:00:00','2010-08-03 00:00:00','0','0',0,NULL,0,NULL,'Cátia Regina Cláudio','Gersino Efigenio Soliano','2011-01-17 00:00:00','0','0','2009-04-07 00:00:00',NULL,'SBC','0','466038367',NULL,NULL,NULL,'598.00',NULL,'2010-08-05 00:00:00','2011-01-17 00:00:00','','0124','337354420116','414',35,NULL,1,1,15,146,NULL,1,104,'Brasileiro','São Bernardo do Campo ','SP','','Geral '),(5,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'00782809405','00011993 / 00037','1996-08-05 00:00:00',NULL,NULL,NULL,'2010-02-05 00:00:00','2010-02-08 00:00:00','0','0',0,NULL,1,NULL,'Marina Mariana da Silva Roci','José Luiz da Rocha ','2011-01-17 00:00:00','0','0','2005-11-03 00:00:00',NULL,'Salgueiro ','0','359118835',NULL,NULL,NULL,'598.00',NULL,'2010-02-10 00:00:00','2011-01-17 00:00:00','','126','051376050892','263',12,NULL,1,1,1,147,NULL,1,66,'Brasileira ','Pernambuco','PE','','Geral'),(6,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'31542472890','0099843/00287/SP','2011-01-04 00:00:00',NULL,NULL,NULL,'2009-05-12 00:00:00','2009-05-11 00:00:00','0','0',0,NULL,1,NULL,'Angela Maria do Carmo','h','2011-01-17 00:00:00','13727282818','São Bernardo do Campo','1996-12-03 00:00:00',NULL,'SSP','Brasil','350341023',NULL,NULL,NULL,'472.00',NULL,'2009-05-12 00:00:00','2009-06-25 00:00:00','','0','0','0',5,NULL,1,1,9,148,NULL,1,26,'Brasileira','Santo Andre','SP','','Geral'),(7,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'03490387597','04043761 / 00003','2011-01-17 00:00:00',NULL,NULL,NULL,'2010-10-05 00:00:00','2011-01-17 00:00:00','0','0',0,NULL,0,NULL,'Normeide Cerqueira de Souza ','Agnaldo Rios da Silva ','2011-01-17 00:00:00','16111589203','0','2003-11-18 00:00:00',NULL,'Macajuba','0','1393575560',NULL,NULL,NULL,'670.00',NULL,'2010-10-05 00:00:00','2011-01-17 00:00:00','','110','119551560507','086',32,NULL,1,1,17,149,NULL,2,150,'Brasileiro','Bahia','BA','','Geral'),(8,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'28435226840','00050689 / 00200','2009-06-16 00:00:00',NULL,NULL,NULL,'2010-09-01 00:00:00','2010-08-16 00:00:00','0','0',0,NULL,0,NULL,'Janete Alves da Silva','Florisval Aureliano da Silva ','1995-06-26 00:00:00','125.52709.48.8','0','2007-03-24 00:00:00',NULL,'Santo André','0','29800835-X',NULL,NULL,NULL,'1000.00',NULL,'2010-09-01 00:00:00','2011-01-17 00:00:00','','0261','2808239701 / 59','375',38,NULL,1,1,15,150,NULL,11,122,'Brasileira ','Santo André','SP','','Geral '),(9,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'36713676871','00097172/00256/SP','1999-05-11 00:00:00',NULL,NULL,NULL,'2008-08-12 00:00:00','2008-08-11 00:00:00','0','0',0,NULL,1,NULL,'Lindalva dos Santos','Jose Laurentino dos Santos','2011-01-17 00:00:00','20607124258','Pesqueira ','2000-03-31 00:00:00',NULL,'SSP','Brasil','44.431.587.1',NULL,NULL,NULL,'43772.00',NULL,'2008-08-12 00:00:00','2008-08-19 00:00:00','','0','0','0',40,NULL,1,1,26,151,NULL,1,5,'Brasileira','Pesqueira','SP','','Geral'),(10,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'77124758815','00091474 / 00090','2004-08-11 00:00:00',NULL,NULL,NULL,'2010-11-17 00:00:00','2011-01-17 00:00:00','0','0',0,NULL,3,NULL,'Josefa Gomes da Silva ','João Gomes da Silva ','2011-01-17 00:00:00','10376119966','0','2004-08-12 00:00:00',NULL,'Minas Novas','0','74410921',NULL,NULL,NULL,'624.07',NULL,'2010-11-17 00:00:00','2011-01-17 00:00:00','','0134','82031890141','375',37,NULL,1,1,6,152,NULL,4,168,'Brasileiro ','Minas Gerais ','MG','','Geral'),(11,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'01645281302','00004273/00023/pi','2011-01-17 00:00:00',NULL,NULL,NULL,'2008-10-01 00:00:00','2008-09-30 00:00:00','0','0',0,NULL,0,NULL,'Raimunda Maria Eulalia','Cantilo Jose Cirilo','2011-01-17 00:00:00','160.446.887.80','Itainópolis','2001-08-08 00:00:00',NULL,'SSP','Brasil','2.265.309',NULL,NULL,NULL,'43772.00',NULL,'2008-10-01 00:00:00','2008-11-01 00:00:00','','0145','034227891503','062',12,NULL,1,1,1,153,NULL,1,16,'Brasileira','Itaianopolis','PI','','Geral'),(12,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'12445567858','00059070 / 00120','2011-01-17 00:00:00',NULL,NULL,NULL,'2010-01-08 00:00:00','2011-01-17 00:00:00','0','0',0,NULL,0,NULL,'Maria Biata ','Adão de Paula','1998-09-22 00:00:00','12374551182','0','2006-03-15 00:00:00',NULL,'Diadema ','0','238204121',NULL,NULL,NULL,'598.00',NULL,'2010-11-08 00:00:00','2011-01-17 00:00:00','','0399','172526780175','222',8,NULL,1,1,5,154,NULL,1,169,'São Paulo','São Paulo','SP','','Geral '),(13,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'27296308800','00098566 / 00160','1993-02-04 00:00:00',NULL,NULL,NULL,'2010-09-13 00:00:00','2011-01-17 00:00:00','0','0',0,NULL,0,NULL,'Maria Genoveva dos Santos ','Miguel Justino dos Santos ','2011-01-17 00:00:00','13797147898','0','2005-06-10 00:00:00',NULL,'Cubatão','0','29160609-X',NULL,NULL,NULL,'598.00',NULL,'2010-09-13 00:00:00','2011-01-17 00:00:00','','0','0','0',32,NULL,1,1,33,155,NULL,1,129,'Brasileira ','Pernambuco ','SP','','Geral '),(14,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'28422560852','00063223 / 00209','1996-01-09 00:00:00',NULL,NULL,NULL,'2009-12-10 00:00:00','2009-07-28 00:00:00','0','0',0,NULL,1,NULL,'Alzira Gonçalves Galhardo ','Antonio Martins Galhardo','2011-01-17 00:00:00','13677992817','0','2000-03-22 00:00:00',NULL,'São Paulo','0','297517454',NULL,NULL,NULL,'598.00',NULL,'2009-12-10 00:00:00','2011-01-17 00:00:00','','0122','2122502001 / 59','283',19,NULL,1,1,2,156,NULL,1,52,'Brasileira ','São Paulo','SP','','Geral '),(15,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'04846433803','00022265/00133/SP','2011-01-17 00:00:00',NULL,NULL,NULL,'2009-08-07 00:00:00','2009-08-19 00:00:00','0','0',0,NULL,1,NULL,'Ondina Geralda de Araujo Martins','Jose Teodoro Martins','2011-01-17 00:00:00','106.530.922.85','Maua','1998-09-03 00:00:00',NULL,'SSP','Brasil','13.782.238-8',NULL,NULL,NULL,'47274.00',NULL,'2009-08-07 00:00:00','2009-09-26 00:00:00','','0039','69919130167','217',39,NULL,1,1,17,157,NULL,1,35,'Brasileira','Guarulhos','SP','','GERAL'),(16,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'25246835839','00036364 / 00147','1991-06-04 00:00:00',NULL,NULL,NULL,'2010-09-01 00:00:00','2010-08-20 00:00:00','0','0',0,NULL,0,NULL,'Severina Maria Gabriel ','Antonio Vicente Gabriel ','2011-01-17 00:00:00','20366831296','0','2009-05-20 00:00:00',NULL,'Igarassu','0','282977661',NULL,NULL,NULL,'598.00',NULL,'2010-09-01 00:00:00','2011-01-17 00:00:00','','151','39087860876','119',32,NULL,1,1,33,158,NULL,1,116,'Brasileira','Pernambuco','PE','','Geral '),(17,'0','2011-01-18 00:00:00','0',NULL,NULL,NULL,NULL,'30352501898','00057014/00259/SP','2011-01-18 00:00:00',NULL,NULL,NULL,'2009-05-13 00:00:00','2009-05-12 00:00:00','0','0',0,NULL,1,NULL,'Josefa nde Goes Barreto','Ezequias do Nascimento','2011-01-18 00:00:00','131.70873.813','Ribeirão Pires','2009-04-30 00:00:00',NULL,'SSP','Brasil','46827747X',NULL,NULL,NULL,'47274.00',NULL,'2009-05-13 00:00:00','2009-08-01 00:00:00','','0','0','0',12,NULL,1,1,6,167,NULL,1,27,'Brasileiro','Ribeirão Pires','SP','','Geral'),(18,'B','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'24871921867','79845 / 00156','2011-01-20 00:00:00',NULL,NULL,NULL,'2009-01-05 00:00:00','2009-01-05 00:00:00','0','0',0,NULL,1,NULL,'Nerci Colonhezi Basilio','Elisconidio da Silva Basilio','2011-01-20 00:00:00','12501113928','0','2011-01-20 00:00:00',NULL,'SSP','Brasil','28.444.717.1',NULL,NULL,NULL,'3.30',NULL,'2011-01-20 00:00:00','2011-01-20 00:00:00','','0','0','306',39,NULL,1,1,18,172,NULL,6,21,'Brasileiro','Santo André','SP','','Diretoria');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demissao`
--

DROP TABLE IF EXISTS `demissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demissao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataDemissao` datetime DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `idFuncionario` bigint(20) DEFAULT NULL,
  `idTipoDemissao` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36A32E0B633D47C8` (`idTipoDemissao`),
  KEY `FK36A32E0B3995D50C` (`idFuncionario`),
  CONSTRAINT `FK36A32E0B3995D50C` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `FK36A32E0B633D47C8` FOREIGN KEY (`idTipoDemissao`) REFERENCES `tipodemissao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demissao`
--

LOCK TABLES `demissao` WRITE;
/*!40000 ALTER TABLE `demissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `demissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataNascimento` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `idFuncionario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7540B1663995D50C` (`idFuncionario`),
  CONSTRAINT `FK7540B1663995D50C` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desconto`
--

DROP TABLE IF EXISTS `desconto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desconto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desconto`
--

LOCK TABLES `desconto` WRITE;
/*!40000 ALTER TABLE `desconto` DISABLE KEYS */;
INSERT INTO `desconto` VALUES (2,'Contribuição Negocial Coletiva (2%) sobre o salário','Contribuição Negocial Coletiva','10.40'),(3,'Contribuição Assistencial Social Familiar','Contribuição Assistencial Social Familiar','1.00'),(4,'Assistência Médica Intermédica','Assistência Médica','45.00'),(5,'Vale Transporte (6%) sobre o salário','Vale Transporte','31.20'),(6,'Refeição (0,10) desconto ao dia - Master Clear','Refeição','2.20'),(7,'Refeição (1,20) desconto ao dia - Kontik','Refeição 1a. opção','26.40'),(8,'Refeição (1,50) desconto ao dia - Cesari Base 1','Refeição 2a. opção','39.00');
/*!40000 ALTER TABLE `desconto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargo`
--

DROP TABLE IF EXISTS `encargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encargo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargo`
--

LOCK TABLES `encargo` WRITE;
/*!40000 ALTER TABLE `encargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `encargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecorepositorio`
--

DROP TABLE IF EXISTS `enderecorepositorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecorepositorio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecorepositorio`
--

LOCK TABLES `enderecorepositorio` WRITE;
/*!40000 ALTER TABLE `enderecorepositorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecorepositorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagamento`
--

DROP TABLE IF EXISTS `formapagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapagamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagamento`
--

LOCK TABLES `formapagamento` WRITE;
/*!40000 ALTER TABLE `formapagamento` DISABLE KEYS */;
INSERT INTO `formapagamento` VALUES (1,'Mensal','Mensalista'),(2,'Hora','Horista');
/*!40000 ALTER TABLE `formapagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `dataFinalContrato` datetime DEFAULT NULL,
  `dataInicioContrato` datetime DEFAULT NULL,
  `diaPagamento` int(11) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nomeFantasia` varchar(255) NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `razaoSocial` varchar(255) NOT NULL,
  `tipoAtividade` varchar(255) NOT NULL,
  `idContato1` bigint(20) DEFAULT NULL,
  `idContato2` bigint(20) DEFAULT NULL,
  `idEmpresa` bigint(20) NOT NULL,
  `idTelefone1` bigint(20) DEFAULT NULL,
  `idTelefone2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC4F07D85A87B4D18` (`idContato1`),
  KEY `FKC4F07D855BD2F306` (`idTelefone2`),
  KEY `FKC4F07D855BD2F305` (`idTelefone1`),
  KEY `FKC4F07D85145DBD91` (`idContato2`),
  KEY `FKC4F07D85CBBE3568` (`idEmpresa`),
  CONSTRAINT `FKC4F07D85145DBD91` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKC4F07D855BD2F305` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D855BD2F306` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D85A87B4D18` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKC4F07D85CBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'74580333000173','101',NULL,'2008-01-15 00:00:00',6,'Vila Primavera','03390030','São Paulo','','Rua. Lopes Benevides','São Paulo',219,'Star Limp Comércio de Embalagens e Produtos de Limpeza em Geral','','Star Limp Comércio de Embalagens e Produtos de Limpeza em Geral','Vendas de Produtos de Limpeza e Equipamentos',83,84,1,85,86),(2,'44649812000138','103',NULL,'2008-05-13 00:00:00',10,'Cerqueira Cesar','01305100','São Paulo','','Rua. Augusta','São Paulo',1029,'Intermédica Sistema de Saúde S/A','','Intermédica Sistema de Saúde S/A','Plano de Saúde empresarial',87,88,1,89,90),(3,'58144007000167','102',NULL,'2008-02-01 00:00:00',10,'Vila Alzira','09195470','Santo André','','Av. Firestone','São Paulo',50,'Siemaco ABC - Sindicato dos Empregados em empresas de limpeza e conservação','','Siemaco ABC - Sindicato dos Empregados em empresas de limpeza e conservação','Sindicato',89,90,1,91,92),(4,'66970229000167','104',NULL,'2009-11-18 00:00:00',25,'Cerqueira Cesar','01418200','São Paulo','','Alameda Santos','São Paulo',2356,'Nextel Telecomunicações Ltda','','Nextel Telecomunicações Ltda','Rádio comunicação',91,92,1,93,94),(5,'04854411000103','105',NULL,'2010-12-27 00:00:00',20,'Vila Príncipe de gales','09299900','Santo André','','Av. Príncipe de gales','São Paulo',185,'Grupo Trans livre express Ltda','www.grupotranslivre.com.br','Grupo Trans livre express Ltda','Serviços de motoboy',111,112,1,113,114),(6,'09326373000121','106',NULL,'2010-06-01 00:00:00',20,'Vila Curuça','09280250','Santo André','','Av. Itamarati','São Paulo',1960,'Transleve Transportes rápidos Ltda','ID 9*60284 - Tel direto motoboy: 8913-2140','Transleve Transportes rápidos Ltda','Serviços de motoboy',113,114,1,115,116),(7,'57549156000143','107',NULL,'2008-08-01 00:00:00',5,'Centro','09010000','Santo André','Sala 03','Rua. Coronel Oliveira Lima','São Paulo',467,'Seasamed assessoria médica ocupaconal santo andré ltda','','Seasa assessoria médica ocupaconal santo andré ltda','Serviços exames médicos colaboradores',115,116,1,117,118),(8,'79080131000186','108',NULL,'2010-11-01 00:00:00',22,'Santana de Parnaíba','06530001','São Paulo','Sala 20','Av. Tenente Marques','São Paulo',5201,'CBA Bônus brasil serviços de alimentos ltda','www.cba.com.br','Bônus brasil serviços de alimentos ltda','Serviços fornecimento de refeição e cestas básicas',117,118,1,119,120),(9,'07838658000116','109',NULL,'2008-12-17 00:00:00',5,'Vila Curuça','09290730','Santo André','','Av. Itamarati','São Paulo',1193,'Gummynho papelaria Ltda','','Gummynho papelaria Ltda','Vendas de papelaria',119,120,1,121,122),(10,'04687987000115','110',NULL,'2009-12-30 00:00:00',5,'Centro','00088444','São Bernardo do Campo','Conjunto 31','Av. São João Batista','São Paulo',197,'Cabam mediação & arbitragem Ltda','www.cabam.com.br','Cabam mediação & arbitragem Ltda','Serviços de homologação',121,122,1,123,124),(11,'06196959000120','111',NULL,'2010-10-01 00:00:00',5,'Bras','03017000','São Paulo','','Rua. Bresser','São Paulo',177,'Leticia & Vitor confecção Ltda','','Leticia & Vitor confecção Ltda','Confecção de uniformes aos colaboradores',123,124,1,125,126),(12,'55043319000196','112',NULL,'2010-01-01 00:00:00',10,'Santa Tereszinha','09210660','Santo André','','Rua. Porto Seguro','São Paulo',518,'Lúcio Imóveis S/c Ltda','','Lúcio Imóveis S/c Ltda','Locação imóvel',125,126,1,127,128),(13,'07247975000168','113',NULL,'2010-09-01 00:00:00',5,'Macuco','11015201','Santos','A','Av. Conselheiro Rodrigues Alves','São Paulo',55,'Tecnutri Técnicas Nutricionais alimentação empresarial Ltda','www.tecnutri.com.br','Técnicas Nutricionais alimentação empresarial Ltda','Fornecimento de alimentação colaboradores',127,128,1,129,130),(14,'62040001000117','114',NULL,'2009-01-01 00:00:00',10,'Vila Pires','09130410','Santo André','','Av. Dom Pedro I','São Paulo',1181,'Novabor Borrachas e Plásticos Ltda','www.novabor.com.br','Novabor Borrachas e Plásticos Ltda','Vendas equipamentos segurança',129,130,1,131,132),(15,'04184711001609','115',NULL,'2010-09-30 00:00:00',10,'Fazenda grande','13213086','Jundiaí','','Rodovia Vice Prefeito H Tonolli','são Paulo',1500,'Joanin Savon indústria e comércio importação e exportação ltda','','Savon indústria e comércio importação e exportação ltda','Vendas cestas básicas',131,132,1,133,134),(16,'01109184000438','116',NULL,'2008-01-01 00:00:00',6,'Centro','01452002','São Paulo','','Av. Brigadeiro Faria Lima','São Paulo',1384,'Universo Online S/A','','Universo Online S/A','Serviços de internet',133,134,1,135,136),(17,'59276790002129','117',NULL,'2010-10-04 00:00:00',10,'Parque Jaçatuba','09290520','Santo André','','Av. Dos Estados','São Paulo',5745,'Comercial Oswaldo Cruz Ltda','','Comercial Oswaldo Cruz Ltda','Vendas cestas básicas colaboradores',135,136,1,137,138),(18,'44050045000146','118',NULL,'2009-01-01 00:00:00',16,'Parque Jaçatuba','09290500','Santo André','','Rua dos Ramalhões','SãoPaulo',0,'Esporte Clube Santo André','','Esporte Clube Santo André','Serviços de lazer',137,138,1,139,140),(19,'04206050000180','119',NULL,'2010-11-01 00:00:00',20,'Vila Andrade','05724006','São Paulo','','Av. Giovanni Gronchi','São Paulo',7143,'Tim Celular S/A','','Tim Celular S/A','Serviços de internet móvel',139,140,1,141,142),(20,'00241384000134','120',NULL,'2008-01-31 00:00:00',1,'Vila Curuça','09290000','Santo André','Nextel ID 7*13305','Rua. Lituânia','São Paulo',260,'Serv-Lar Assistência Técnica Ltda','','Serv-Lar Assistência Técnica Ltda','Assistência técnica enceradeira, roçadeira e locação',161,162,1,147,148);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionalidade`
--

DROP TABLE IF EXISTS `funcionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` bigint(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidade`
--

LOCK TABLES `funcionalidade` WRITE;
/*!40000 ALTER TABLE `funcionalidade` DISABLE KEYS */;
INSERT INTO `funcionalidade` VALUES (125,1,'Incluir Adicional'),(126,2,'Excluir Adicional'),(127,3,'Alterar Adicional'),(128,4,'Consultar Adiciomal'),(129,5,'Incluir Benefício'),(130,6,'Excluir Benefício'),(131,7,'Alterar Benefício'),(132,8,'Consultar Benefício'),(133,9,'Incluir Cliente'),(134,10,'Excluir Cliente'),(135,11,'Alterar Cliente'),(136,12,'Consultar Cliente'),(137,13,'Incluir Desconto'),(138,14,'Excluir Desconto'),(139,15,'Alterar Desconto'),(140,16,'Consultar Desconto'),(141,17,'Incluir Empresa'),(142,18,'Excluir Empresa'),(143,19,'Alterar Empresa'),(144,20,'Consultar Empresa'),(145,21,'Incluir Encargo'),(146,22,'Excluir Encargo'),(147,23,'Alterar Encargo'),(148,24,'Consultar Encargo'),(149,25,'Incluir Fornecedor'),(150,26,'Excluir Fornecedor'),(151,27,'Alterar Fornecedor'),(152,28,'Consultar Fornecedor'),(153,29,'Incluir Jornada de Trabalho'),(154,30,'Excluir Jornada de Trabalho'),(155,31,'Alterar Jornada de Trabalho'),(156,32,'Consultar Jornada de Trabalho'),(157,33,'Incluir Tipo de Demissão'),(158,34,'Excluir Tipo de Demissão'),(159,35,'Alterar Tipo de Demissão'),(160,36,'Consultar Tipo de Demissão'),(161,37,'Incluir Funcionário'),(162,38,'Excluir Funcionário'),(163,39,'Alterar Funcionário'),(164,40,'Consultar Funcionário'),(165,41,'Incluir Usuário'),(166,42,'Excluir Usuário'),(167,43,'Alterar Usuário'),(168,44,'Consultar Usuário'),(169,45,'Alterar senha do usuário'),(170,46,'Incluir Perfil'),(171,47,'Excluir Perfil'),(172,48,'Alterar Perfil'),(173,49,'Consultar Perfil'),(174,50,'Incluir Cargo'),(175,51,'Excluir Cargo'),(176,52,'Alterar Cargo'),(177,53,'Consultar Cargo'),(178,54,'Incluir Forma de Pagamento'),(179,55,'Excluir Forma de Pagamento'),(180,56,'Alterar Forma de Pagamento'),(181,57,'Consultar Forma de Pagamento');
/*!40000 ALTER TABLE `funcionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grauparentesco`
--

DROP TABLE IF EXISTS `grauparentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grauparentesco` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grauparentesco`
--

LOCK TABLES `grauparentesco` WRITE;
/*!40000 ALTER TABLE `grauparentesco` DISABLE KEYS */;
/*!40000 ALTER TABLE `grauparentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariosjornada`
--

DROP TABLE IF EXISTS `horariosjornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horariosjornada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `diaSemana` int(11) DEFAULT NULL,
  `horarioFinal` varchar(255) DEFAULT NULL,
  `horarioInicial` varchar(255) DEFAULT NULL,
  `intervaloFinal` varchar(255) DEFAULT NULL,
  `intervaloInicial` varchar(255) DEFAULT NULL,
  `diaSeguinte` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosjornada`
--

LOCK TABLES `horariosjornada` WRITE;
/*!40000 ALTER TABLE `horariosjornada` DISABLE KEYS */;
INSERT INTO `horariosjornada` VALUES (1,0,'1400','0600','1200','1100',NULL),(2,1,'1400','0600','1200','1100',NULL),(3,2,'1400','0600','1200','1100',NULL),(4,3,'1400','0600','1200','1100',NULL),(5,4,'1400','0600','1200','1100',NULL),(6,5,'1700','0700','1300','1200',NULL),(7,6,'','','','',NULL),(8,0,'1500','0600','1200','1100',NULL),(9,1,'1500','0600','1200','1100',NULL),(10,2,'1500','0600','1200','1100',NULL),(11,3,'1500','0600','1200','1100',NULL),(12,4,'1500','0600','1200','1100',NULL),(13,5,'1000','0600','1000','0900',NULL),(14,6,'','','','',NULL),(15,0,'1500','0600','1200','1100',NULL),(16,1,'1500','0600','1200','1100',NULL),(17,2,'1500','0600','1200','1100',NULL),(18,3,'1500','0600','1200','1100',NULL),(19,4,'1500','0600','1200','1100',NULL),(20,5,'1000','0600','1000','0900',NULL),(21,6,'','','','',NULL),(22,0,'1600','0600','1200','1100',NULL),(23,1,'1600','0600','1200','1100',NULL),(24,2,'1600','0600','1200','1100',NULL),(25,3,'1600','0600','1200','1100',NULL),(26,4,'1500','0600','1200','1100',NULL),(27,5,'','','','',NULL),(28,6,'','','','',NULL),(29,0,'1400','0600','1200','1100',NULL),(30,1,'1400','0600','1200','1100',NULL),(31,2,'1400','0600','1200','1100',NULL),(32,3,'1400','0600','1200','1100',NULL),(33,4,'1400','0600','1200','1100',NULL),(34,5,'1700','0700','1300','1200',NULL),(35,6,'','','','',NULL),(36,0,'1400','0600','1200','1100',NULL),(37,1,'1400','0600','1200','1100',NULL),(38,2,'1400','0600','1200','1100',NULL),(39,3,'1400','0600','1200','1100',NULL),(40,4,'1400','0600','1200','1100',NULL),(41,5,'1700','0700','1300','1200',NULL),(42,6,'','','','',NULL),(43,0,'1400','0600','1200','1100',NULL),(44,1,'1400','0600','1200','1100',NULL),(45,2,'1400','0600','1200','1100',NULL),(46,3,'1400','0600','1200','1100',NULL),(47,4,'1400','0600','1200','1100',NULL),(48,5,'1700','0700','1300','1200',NULL),(49,6,'','','','',NULL),(50,0,'1600','0600','1200','1100',NULL),(51,1,'1600','0600','1200','1100',NULL),(52,2,'1600','0600','1200','1100',NULL),(53,3,'1600','0600','1200','1100',NULL),(54,4,'1500','0600','1200','1100',NULL),(55,5,'','','','',NULL),(56,6,'','','','',NULL),(57,0,'1450','0630','1230','1130',NULL),(58,1,'1450','0630','1230','1130',NULL),(59,2,'1450','0630','1230','1130',NULL),(60,3,'1450','0630','1230','1130',NULL),(61,4,'1450','0630','1230','1130',NULL),(62,5,'1450','0630','1230','1130',NULL),(63,6,'','','','',NULL),(64,0,'1630','0642','1200','1100',NULL),(65,1,'1630','0642','1200','1100',NULL),(66,2,'1630','0642','1200','1100',NULL),(67,3,'1630','0642','1200','1100',NULL),(68,4,'1630','0642','1200','1100',NULL),(69,5,'','','','',NULL),(70,6,'','','','',NULL),(71,0,'1450','0630','1200','1100',NULL),(72,1,'1450','0630','1200','1100',NULL),(73,2,'1450','0630','1200','1100',NULL),(74,3,'1450','0630','1200','1100',NULL),(75,4,'1450','0630','1200','1100',NULL),(76,5,'1450','0630','1230','1130',NULL),(77,6,'','','','',NULL),(78,0,'1520','0700','1300','1200',NULL),(79,1,'1520','0700','1300','1200',NULL),(80,2,'1520','0700','1300','1200',NULL),(81,3,'1520','0700','1300','1200',NULL),(82,4,'1520','0700','1300','1200',NULL),(83,5,'1520','0700','1300','1200',NULL),(84,6,'','','','',NULL),(85,0,'1600','0700','1300','1200',NULL),(86,1,'1600','0700','1300','1200',NULL),(87,2,'1600','0700','1300','1200',NULL),(88,3,'1600','0700','1300','1200',NULL),(89,4,'1600','0700','1300','1200',NULL),(90,5,'1100','0700','1200','1100',NULL),(91,6,'','','','',NULL),(92,0,'1648','0700','1300','1200',NULL),(93,1,'1648','0700','1300','1200',NULL),(94,2,'1648','0700','1300','1200',NULL),(95,3,'1648','0700','1300','1200',NULL),(96,4,'1648','0700','1300','1200',NULL),(97,5,'','','','',NULL),(98,6,'','','','',NULL),(99,0,'1600','0700','1300','1200',NULL),(100,1,'1600','0700','1300','1200',NULL),(101,2,'1600','0700','1300','1200',NULL),(102,3,'1600','0700','1300','1200',NULL),(103,4,'1600','0700','1300','1200',NULL),(104,5,'1100','0700','1200','1100',NULL),(105,6,'','','','',NULL),(106,0,'1700','0700','1300','1200',NULL),(107,1,'1700','0700','1300','1200',NULL),(108,2,'1700','0700','1300','1200',NULL),(109,3,'1700','0700','1300','1200',NULL),(110,4,'1600','0700','1300','1200',NULL),(111,5,'','','','',NULL),(112,6,'','','','',NULL),(113,0,'1618','0700','1300','1200',NULL),(114,1,'1618','0700','1300','1200',NULL),(115,2,'1618','0700','1300','1200',NULL),(116,3,'1618','0700','1300','1200',NULL),(117,4,'1618','0700','1300','1200',NULL),(118,5,'','','','',NULL),(119,6,'','','','',NULL),(120,0,'1700','0712','1300','1200',NULL),(121,1,'1700','0712','1300','1200',NULL),(122,2,'1700','0712','1300','1200',NULL),(123,3,'1700','0712','1300','1200',NULL),(124,4,'1700','0730','1300','1200',NULL),(125,5,'','','','',NULL),(126,6,'','','','',NULL),(127,0,'1130','0730','1300','1200',NULL),(128,1,'','','','',NULL),(129,2,'1130','0730','1300','1200',NULL),(130,3,'','','','',NULL),(131,4,'1130','0730','1300','1200',NULL),(132,5,'','','','',NULL),(133,6,'','','','',NULL),(134,0,'1800','1500','1500','1400',NULL),(135,1,'1800','1500','1500','1400',NULL),(136,2,'1800','1500','1500','1400',NULL),(137,3,'1800','1500','1500','1400',NULL),(138,4,'1800','1500','1500','1400',NULL),(139,5,'','','','',NULL),(140,6,'','','','',NULL),(141,0,'1130','0730','1300','1200',NULL),(142,1,'1130','0730','1300','1200',NULL),(143,2,'1130','0730','1300','1200',NULL),(144,3,'1130','0730','1300','1200',NULL),(145,4,'1130','0730','1300','1200',NULL),(146,5,'','','','',NULL),(147,6,'','','','',NULL),(148,0,'1500','0600','1200','1100',NULL),(149,1,'1500','0600','1200','1100',NULL),(150,2,'1500','0600','1200','1100',NULL),(151,3,'1500','0600','1200','1100',NULL),(152,4,'1500','0600','1200','1100',NULL),(153,5,'1000','0600','','',NULL),(154,6,'','','','',NULL),(155,0,'1600','0700','1300','1200',NULL),(156,1,'1600','0700','1300','1200',NULL),(157,2,'1600','0700','1300','1200',NULL),(158,3,'1600','0700','1300','1200',NULL),(159,4,'1600','0700','1300','1200',NULL),(160,5,'1100','0700','','',NULL),(161,6,'','','','',NULL),(162,0,'1130','0730','','',NULL),(163,1,'','','','',NULL),(164,2,'1130','0730','','',NULL),(165,3,'','','','',NULL),(166,4,'1130','0730','','',NULL),(167,5,'','','','',NULL),(168,6,'','','','',NULL),(169,0,'1800','1500','','',NULL),(170,1,'1800','1500','','',NULL),(171,2,'1800','1500','','',NULL),(172,3,'1800','1500','','',NULL),(173,4,'1800','1500','','',NULL),(174,5,'','','','',NULL),(175,6,'','','','',NULL),(176,0,'1130','0730','','',NULL),(177,1,'1130','0730','','',NULL),(178,2,'1130','0730','','',NULL),(179,3,'1130','0730','','',NULL),(180,4,'1130','0730','','',NULL),(181,5,'','','','',NULL),(182,6,'','','','',NULL),(183,0,'1718','0700','1300','1200',NULL),(184,1,'1718','0700','1300','1200',NULL),(185,2,'1718','0700','1300','1200',NULL),(186,3,'1718','0700','1300','1200',NULL),(187,4,'1618','0700','1300','1200',NULL),(188,5,'','','','',NULL),(189,6,'','','','',NULL),(190,0,'1730','0730','1300','1200',NULL),(191,1,'1730','0730','1300','1200',NULL),(192,2,'1730','0730','1300','1200',NULL),(193,3,'1730','0730','1300','1200',NULL),(194,4,'1630','0730','1300','1200',NULL),(195,5,'','','','',NULL),(196,6,'','','','',NULL),(197,0,'1730','0730','1300','1200',NULL),(198,1,'1730','0730','1300','1200',NULL),(199,2,'1730','0730','1300','1200',NULL),(200,3,'1730','0730','1300','1200',NULL),(201,4,'1630','0730','1300','1200',NULL),(202,5,'','','','',NULL),(203,6,'','','','',NULL),(204,0,'1718','0730','1300','1200',NULL),(205,1,'1718','0730','1300','1200',NULL),(206,2,'1718','0730','1300','1200',NULL),(207,3,'1718','0730','1300','1200',NULL),(208,4,'1618','0730','1300','1200',NULL),(209,5,'','','','',NULL),(210,6,'','','','',NULL),(211,0,'1700','0800','1300','1200',NULL),(212,1,'1700','0800','1300','1200',NULL),(213,2,'1700','0800','1300','1200',NULL),(214,3,'1700','0800','1300','1200',NULL),(215,4,'1700','0800','1300','1200',NULL),(216,5,'1200','0800','','',NULL),(217,6,'','','','',NULL),(218,0,'1800','0800','1300','1200',NULL),(219,1,'1800','0800','1300','1200',NULL),(220,2,'1800','0800','1300','1200',NULL),(221,3,'1800','0800','1300','1200',NULL),(222,4,'1700','0800','1300','1200',NULL),(223,5,'','','','',NULL),(224,6,'','','','',NULL),(225,0,'1200','0800','','',NULL),(226,1,'1200','0800','','',NULL),(227,2,'1200','0800','','',NULL),(228,3,'1200','0800','','',NULL),(229,4,'1200','0800','','',NULL),(230,5,'1200','0800','','',NULL),(231,6,'','','','',NULL),(232,0,'1700','1300','','',NULL),(233,1,'','','','',NULL),(234,2,'','','','',NULL),(235,3,'','','','',NULL),(236,4,'','','','',NULL),(237,5,'','','','',NULL),(238,6,'','','','',NULL),(239,0,'1700','1300','','',NULL),(240,1,'','','','',NULL),(241,2,'','','','',NULL),(242,3,'','','','',NULL),(243,4,'','','','',NULL),(244,5,'','','','',NULL),(245,6,'','','','',NULL),(246,0,'','','','',NULL),(247,1,'','','','',NULL),(248,2,'','','','',NULL),(249,3,'','','','',NULL),(250,4,'1700','1300','','',NULL),(251,5,'','','','',NULL),(252,6,'','','','',NULL),(253,0,'','','','',NULL),(254,1,'','','','',NULL),(255,2,'','','','',NULL),(256,3,'1700','1300','','',NULL),(257,4,'','','','',NULL),(258,5,'','','','',NULL),(259,6,'','','','',NULL),(260,0,'','','','',NULL),(261,1,'','','','',NULL),(262,2,'','','','',NULL),(263,3,'','','','',NULL),(264,4,'1700','1300','','',NULL),(265,5,'','','','',NULL),(266,6,'','','','',NULL),(267,0,'','','','',NULL),(268,1,'1800','0800','','',NULL),(269,2,'','','','',NULL),(270,3,'1800','0800','','',NULL),(271,4,'','','','',NULL),(272,5,'','','','',NULL),(273,6,'','','','',NULL),(274,0,'','','','',NULL),(275,1,'1200','0800','','',NULL),(276,2,'','','','',NULL),(277,3,'1200','0800','','',NULL),(278,4,'1200','0800','','',NULL),(279,5,'','','','',NULL),(280,6,'','','','',NULL),(281,0,'','','','',NULL),(282,1,'1500','1300','','',NULL),(283,2,'','','','',NULL),(284,3,'1500','1300','','',NULL),(285,4,'','','','',NULL),(286,5,'','','','',NULL),(287,6,'','','','',NULL),(288,0,'1800','0800','1300','1200',NULL),(289,1,'1800','0800','1300','1200',NULL),(290,2,'1800','0800','1300','1200',NULL),(291,3,'1800','0800','1300','1200',NULL),(292,4,'1700','0800','1300','1200',NULL),(293,5,'','','','',NULL),(294,6,'','','','',NULL),(295,0,'1800','0800','1400','1300',NULL),(296,1,'1800','0800','1400','1300',NULL),(297,2,'1800','0800','1400','1300',NULL),(298,3,'1800','0800','1400','1300',NULL),(299,4,'1800','0900','1400','1300',NULL),(300,5,'','','','',NULL),(301,6,'','','','',NULL),(302,0,'1720','0900','1400','1300',NULL),(303,1,'1720','0900','1400','1300',NULL),(304,2,'1720','0900','1400','1300',NULL),(305,3,'1720','0900','1400','1300',NULL),(306,4,'1720','0900','1400','1300',NULL),(307,5,'1450','0630','1200','1100',NULL),(308,6,'','','','',NULL),(309,0,'1754','0930','1400','1300',NULL),(310,1,'1754','0930','1400','1300',NULL),(311,2,'1754','0930','1400','1300',NULL),(312,3,'1754','0930','1400','1300',NULL),(313,4,'1754','0930','1400','1300',NULL),(314,5,'1754','0930','1400','1300',NULL),(315,6,'','','','',NULL),(316,0,'2000','1200','1800','1700',NULL),(317,1,'2000','1200','1800','1700',NULL),(318,2,'2000','1200','1800','1700',NULL),(319,3,'2000','1200','1800','1700',NULL),(320,4,'2000','1200','1800','1700',NULL),(321,5,'2000','1200','1800','1700',NULL),(322,6,'','','','',NULL),(323,0,'2200','1400','2000','1900',NULL),(324,1,'2200','1400','2000','1900',NULL),(325,2,'2200','1400','2000','1900',NULL),(326,3,'2200','1400','2000','1900',NULL),(327,4,'2200','1400','2000','1900',NULL),(328,5,'1900','0900','1500','1400',NULL),(329,6,'','','','',NULL),(330,0,'1500','0600','1200','1100',NULL),(331,1,'1500','0600','1200','1100',NULL),(332,2,'1500','0600','1200','1100',NULL),(333,3,'1500','0600','1200','1100',NULL),(334,4,'1500','0600','1200','1100',NULL),(335,5,'1000','0600','','',NULL),(336,6,'','','','',NULL),(337,0,'0600','2200','0300','0200',''),(338,1,'0600','2200','0300','0200',''),(339,2,'0600','2200','0300','0200',''),(340,3,'0600','2200','0300','0200',''),(341,4,'0600','2200','0300','0200',''),(342,5,'','','','','\0'),(343,6,'1300','0700','1300','1200',''),(344,0,'1506','0630','1200','1100',''),(345,1,'1506','0630','1200','1100',''),(346,2,'1506','0630','1200','1100',''),(347,3,'1506','0630','1200','1100',''),(348,4,'1506','0630','1200','1100',''),(349,5,'1230','0630','','',''),(350,6,'','','','','\0'),(351,0,'1736','0900','1400','1300',''),(352,1,'1736','0900','1400','1300',''),(353,2,'1736','0900','1400','1300',''),(354,3,'1736','0900','1400','1300',''),(355,4,'1736','0900','1400','1300',''),(356,5,'1230','0630','','',''),(357,6,'','','','','\0');
/*!40000 ALTER TABLE `horariosjornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadatrabalho`
--

DROP TABLE IF EXISTS `jornadatrabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornadatrabalho` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `horasMensais` bigint(20) DEFAULT NULL,
  `horasSemanais` bigint(20) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `utilizada` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadatrabalho`
--

LOCK TABLES `jornadatrabalho` WRITE;
/*!40000 ALTER TABLE `jornadatrabalho` DISABLE KEYS */;
INSERT INTO `jornadatrabalho` VALUES (1,'Turno 1 - Segunda à Sexta 06:00 às 14:00 e aos Sábados 07:00 às 17:00',220,44,'Turno 1 - Segunda à Sexta 06:00 às 14:00 e aos Sábados 07:00 às 17:00',NULL),(2,'Turno 2 - Segunda à Sexta 06:00 às 15:00 e aos Sábados 06:00 às 10:00',220,44,'Turno 2 - Segunda à Sexta 06:00 às 15:00 e aos Sábados 06:00 às 10:00',NULL),(3,'Turno 3 - Segunda à Quinta 06:00 às 16:00 e as Sextas 06:00 às 15:00',220,44,'Turno 3 - Segunda à Quinta 06:00 às 16:00 e as Sextas 06:00 às 15:00',NULL),(4,'Turno 4 - Segunda à Sábado 06:30 às 14:50 ',220,44,'Turno 4 - Segunda à Sábado 06:30 às 14:50 ',NULL),(5,'Turno 5 - Segunda à Sexta 06:42 às 16:30 ',220,44,'Turno 5 - Segunda à Sexta 06:42 às 16:30 ',NULL),(6,'Turno 6 - Segunda à Sábado 07:00 às 15:20 ',220,44,'Turno 6 - Segunda à Sábado 07:00 às 15:20 ',NULL),(7,'Turno 7 - Segunda à Sexta 07:00 às 16:00 e aos Sábados 07:00 às 11:00 ',220,44,'Turno 7 - Segunda à Sexta 07:00 às 16:00 e aos Sábados 07:00 às 11:00 ',NULL),(8,'Turno 8 - Segunda à Sexta 07:00 às 16:48  ',220,44,'Turno 8 - Segunda à Sexta 07:00 às 16:48  ',NULL),(9,'Turno 9 - Segunda à Quinta 07:00 às 17:00 e as Sextas 07:00 às 16:00 ',220,44,'Turno 9 - Segunda à Quinta 07:00 às 17:00 e as Sextas 07:00 às 16:00 ',NULL),(10,'Turno 10 - Segunda à Quinta 07:00 às 17:18 e as Sextas 07:00 às 16:18 ',220,44,'Turno 10 - Segunda à Quinta 07:00 às 17:18 e as Sextas 07:00 às 16:18 ',NULL),(11,'Turno 11 - Segunda à Quinta 07:12 às 17:00 e as Sextas 07:30 às 17:00 ',220,44,'Turno 11 - Segunda à Quinta 07:12 às 17:00 e as Sextas 07:30 às 17:00 ',NULL),(12,'Turno 12 - Segunda, Quarta e Sexta 07:30 às 11:30 ',48,12,'Turno 12 - Segunda, Quarta e Sexta 07:30 às 11:30 ',NULL),(13,'Turno 13 - Segunda à Sexta 15:00 às 18:00 ',60,15,'Turno 13 - Segunda à Sexta 15:00 às 18:00 ',NULL),(14,'Turno 14 - Segunda à Sexta 07:30 às 11:30 ',80,20,'Turno 14 - Segunda à Sexta 07:30 às 11:30 ',NULL),(15,'Turno 15 - Segunda à Quinta 07:30 às 17:30 e as Sextas 07:30 às 16:30 ',220,44,'Turno 15 - Segunda à Quinta 07:30 às 17:30 e as Sextas 07:30 às 16:30 ',NULL),(16,'Turno 16 - Segunda à Quinta 07:30 às 17:18 e as Sextas 07:30 às 16:18 ',220,44,'Turno 16 - Segunda à Quinta 07:30 às 17:18 e as Sextas 07:30 às 16:18 ',NULL),(17,'Turno 17 - Segunda à Sexta 08:00 às 17:00 e aos Sábados 08:00 às 12:00 ',220,44,'Turno 17 - Segunda à Sexta 08:00 às 17:00 e aos Sábados 08:00 às 12:00 ',NULL),(18,'Turno 18 - Segunda à Quinta 08:00 às 18:00 e as Sextas 08:00 às 17:00 ',220,44,'Turno 18 - Segunda à Quinta 08:00 às 18:00 e as Sextas 08:00 às 17:00 ',NULL),(19,'Turno 19 - Segunda à Sábado 08:00 às 12:00 ',96,24,'Turno 19 - Segunda à Sábado 08:00 às 12:00 ',NULL),(20,'Turno 20 - Às Segunda 13:00 às 17:00 ',16,4,'Turno 20 - Às Segunda 13:00 às 17:00 ',NULL),(21,'Turno 21 - Às Sextas 13:00 às 17:00 ',16,4,'Turno 21 - Às Sextas 13:00 às 17:00 ',NULL),(22,'Turno 22 - Às Quintas 13:00 às 17:00 ',8,4,'Turno 22 - Às Quintas 13:00 às 17:00 ',NULL),(23,'Turno 23- Terças e Quintas 08:00 às 18:00 ',72,18,'Turno 23- Terças e Quintas 08:00 às 18:00 ',NULL),(24,'Turno 24 - Às Terças, Quintas e Sextas 08:00 às 12:00 ',48,12,'Turno 24 - Às Terças, Quintas e Sextas 08:00 às 12:00 ',NULL),(25,'Turno 25 - Às Terças e Quintas 13:00 às 15:00 ',16,4,'Turno 25 - Às Terças e Quintas 13:00 às 15:00 ',NULL),(26,'Turno 26 - Segunda à Quinta 08:00 às 18:00 e as Sextas 09:00 às 18:00 ',220,44,'Turno 26 - Segunda à Quinta 08:00 às 18:00 e as Sextas 09:00 às 18:00 ',NULL),(27,'Turno 27 - Segunda à Sexta 09:00 às 17:20 e as Sábados 06:30 às 14:50 ',220,44,'Turno 27 - Segunda à Sexta 09:00 às 17:20 e as Sábados 06:30 às 14:50 ',NULL),(28,'Turno 28 - Segunda à Sábado 09:30 às 17:54',220,44,'Turno 28 - Segunda à Sábado 09:30 às 17:54',NULL),(29,'Turno 29 - Segunda à Sábado 12:00 às 20:00',220,44,'Turno 29 - Segunda à Sábado 12:00 às 20:00',NULL),(30,'Turno 30 - Segunda à Sexta 14:00 às 22:00 e aos Sábados 09:00 às 19:00',220,44,'Turno 30 - Segunda à Sexta 14:00 às 22:00 e aos Sábados 09:00 às 19:00',NULL),(31,'Turno 31 - Segunda à Sexta 06:00 às 15:00 e aos Sábados 06:00 às 10:00',220,44,'Turno 31 - Segunda à Sexta 06:00 às 15:00 e aos Sábados 06:00 às 10:00',NULL),(32,'Turno 32 - Segunda à Sexta 22:00 às 06:00 e aos Domingos 07:00 às 13:00 horas',220,44,'Turno 32 - Segunda à Sexta 22:00 às 06:00 e aos Domingos 07:00 às 12:00 horas',NULL),(33,'Turno 33 - Segunda à Sexta 06:30 às 15:06 e aos Sábados 06:30 às 12:30 horas',220,44,'Turno 33 - Segunda à Sexta 06:30 às 15:06 e aos Sábados 06:30 às 12:30 horas',NULL),(34,'Turno 34 - Segunda à Sexta 09:00 às 17:36 e aos Sábados 06:30 às 12:30 horas',220,44,'Turno 34 - Segunda à Sexta 09:00 às 17:36 e aos Sábados 06:30 às 12:30 horas',NULL);
/*!40000 ALTER TABLE `jornadatrabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadatrabalho_horariosjornada`
--

DROP TABLE IF EXISTS `jornadatrabalho_horariosjornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornadatrabalho_horariosjornada` (
  `idJornadaTrabalho` bigint(20) NOT NULL,
  `idHorariosJornada` bigint(20) NOT NULL,
  KEY `FK2C4D1A1B3A873FCE` (`idHorariosJornada`),
  KEY `FK2C4D1A1B6E772212` (`idJornadaTrabalho`),
  CONSTRAINT `FK2C4D1A1B3A873FCE` FOREIGN KEY (`idHorariosJornada`) REFERENCES `horariosjornada` (`id`),
  CONSTRAINT `FK2C4D1A1B6E772212` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadatrabalho_horariosjornada`
--

LOCK TABLES `jornadatrabalho_horariosjornada` WRITE;
/*!40000 ALTER TABLE `jornadatrabalho_horariosjornada` DISABLE KEYS */;
INSERT INTO `jornadatrabalho_horariosjornada` VALUES (1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(3,50),(3,51),(3,52),(3,53),(3,54),(3,55),(3,56),(5,64),(5,65),(5,66),(5,67),(5,68),(5,69),(5,70),(4,71),(4,72),(4,73),(4,74),(4,75),(4,76),(4,77),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83),(6,84),(8,92),(8,93),(8,94),(8,95),(8,96),(8,97),(8,98),(9,106),(9,107),(9,108),(9,109),(9,110),(9,111),(9,112),(11,120),(11,121),(11,122),(11,123),(11,124),(11,125),(11,126),(2,148),(2,149),(2,150),(2,151),(2,152),(2,153),(2,154),(7,155),(7,156),(7,157),(7,158),(7,159),(7,160),(7,161),(12,162),(12,163),(12,164),(12,165),(12,166),(12,167),(12,168),(13,169),(13,170),(13,171),(13,172),(13,173),(13,174),(13,175),(14,176),(14,177),(14,178),(14,179),(14,180),(14,181),(14,182),(10,183),(10,184),(10,185),(10,186),(10,187),(10,188),(10,189),(15,197),(15,198),(15,199),(15,200),(15,201),(15,202),(15,203),(16,204),(16,205),(16,206),(16,207),(16,208),(16,209),(16,210),(17,211),(17,212),(17,213),(17,214),(17,215),(17,216),(17,217),(19,225),(19,226),(19,227),(19,228),(19,229),(19,230),(19,231),(20,239),(20,240),(20,241),(20,242),(20,243),(20,244),(20,245),(22,253),(22,254),(22,255),(22,256),(22,257),(22,258),(22,259),(21,260),(21,261),(21,262),(21,263),(21,264),(21,265),(21,266),(23,267),(23,268),(23,269),(23,270),(23,271),(23,272),(23,273),(24,274),(24,275),(24,276),(24,277),(24,278),(24,279),(24,280),(25,281),(25,282),(25,283),(25,284),(25,285),(25,286),(25,287),(18,288),(18,289),(18,290),(18,291),(18,292),(18,293),(18,294),(26,295),(26,296),(26,297),(26,298),(26,299),(26,300),(26,301),(27,302),(27,303),(27,304),(27,305),(27,306),(27,307),(27,308),(28,309),(28,310),(28,311),(28,312),(28,313),(28,314),(28,315),(29,316),(29,317),(29,318),(29,319),(29,320),(29,321),(29,322),(30,323),(30,324),(30,325),(30,326),(30,327),(30,328),(30,329),(31,330),(31,331),(31,332),(31,333),(31,334),(31,335),(31,336),(32,337),(32,338),(32,339),(32,340),(32,341),(32,342),(32,343),(33,344),(33,345),(33,346),(33,347),(33,348),(33,349),(33,350),(34,351),(34,352),(34,353),(34,354),(34,355),(34,356),(34,357);
/*!40000 ALTER TABLE `jornadatrabalho_horariosjornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoareferencia`
--

DROP TABLE IF EXISTS `pessoareferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoareferencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idGrauParentesco` bigint(20) DEFAULT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK16B0B619D0A0CD0` (`idGrauParentesco`),
  KEY `FK16B0B619B7A18838` (`idPessoa`),
  CONSTRAINT `FK16B0B619B7A18838` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FK16B0B619D0A0CD0` FOREIGN KEY (`idGrauParentesco`) REFERENCES `grauparentesco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoareferencia`
--

LOCK TABLES `pessoareferencia` WRITE;
/*!40000 ALTER TABLE `pessoareferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoareferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoperfil`
--

DROP TABLE IF EXISTS `tipoperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoperfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `sigla` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoperfil`
--

LOCK TABLES `tipoperfil` WRITE;
/*!40000 ALTER TABLE `tipoperfil` DISABLE KEYS */;
INSERT INTO `tipoperfil` VALUES (5,'ADMINISTRATOR','ADM');
/*!40000 ALTER TABLE `tipoperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoperfil_funcionalidade`
--

DROP TABLE IF EXISTS `tipoperfil_funcionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoperfil_funcionalidade` (
  `idTipoPerfil` bigint(20) NOT NULL,
  `idFuncionalidade` bigint(20) NOT NULL,
  KEY `FKE7CC59176D235D8F` (`idTipoPerfil`),
  KEY `FKE7CC59172EA2491A` (`idFuncionalidade`),
  CONSTRAINT `FKE7CC59172EA2491A` FOREIGN KEY (`idFuncionalidade`) REFERENCES `funcionalidade` (`id`),
  CONSTRAINT `FKE7CC59176D235D8F` FOREIGN KEY (`idTipoPerfil`) REFERENCES `tipoperfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoperfil_funcionalidade`
--

LOCK TABLES `tipoperfil_funcionalidade` WRITE;
/*!40000 ALTER TABLE `tipoperfil_funcionalidade` DISABLE KEYS */;
INSERT INTO `tipoperfil_funcionalidade` VALUES (5,125),(5,126),(5,127),(5,128),(5,129),(5,130),(5,131),(5,132),(5,133),(5,134),(5,135),(5,136),(5,137),(5,138),(5,139),(5,140),(5,141),(5,142),(5,143),(5,144),(5,145),(5,146),(5,147),(5,148),(5,149),(5,150),(5,151),(5,152),(5,153),(5,154),(5,155),(5,156),(5,157),(5,158),(5,159),(5,160),(5,161),(5,162),(5,163),(5,164),(5,165),(5,166),(5,167),(5,168),(5,169),(5,170),(5,171),(5,172),(5,173),(5,174),(5,175),(5,176),(5,177),(5,178),(5,179),(5,180),(5,181);
/*!40000 ALTER TABLE `tipoperfil_funcionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotelefone`
--

DROP TABLE IF EXISTS `tipotelefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotelefone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotelefone`
--

LOCK TABLES `tipotelefone` WRITE;
/*!40000 ALTER TABLE `tipotelefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipotelefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tipoperfil`
--

DROP TABLE IF EXISTS `usuario_tipoperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_tipoperfil` (
  `idUsuario` bigint(20) NOT NULL,
  `idTipoPerfil` bigint(20) NOT NULL,
  KEY `FK8CBD44116D235D8F` (`idTipoPerfil`),
  KEY `FK8CBD44117D7D9AB2` (`idUsuario`),
  CONSTRAINT `FK8CBD44116D235D8F` FOREIGN KEY (`idTipoPerfil`) REFERENCES `tipoperfil` (`id`),
  CONSTRAINT `FK8CBD44117D7D9AB2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tipoperfil`
--

LOCK TABLES `usuario_tipoperfil` WRITE;
/*!40000 ALTER TABLE `usuario_tipoperfil` DISABLE KEYS */;
INSERT INTO `usuario_tipoperfil` VALUES (5,5),(2,5),(3,5),(4,5);
/*!40000 ALTER TABLE `usuario_tipoperfil` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-20 13:34:08
