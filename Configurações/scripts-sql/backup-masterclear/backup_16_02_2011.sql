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
INSERT INTO `adicional` VALUES (1,'Adicional de Periculosidade (30%) sobre salário normal','Adicional de periculosidade (30%)','162.80'),(2,'Adicional de Insalubridade (20%) sobre salário mínimo','Adicional de Insalubridade (20%)','102.00');
/*!40000 ALTER TABLE `adicional` ENABLE KEYS */;
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
  KEY `FK23FAFAEC2566534C` (`idBanco`),
  CONSTRAINT `FK23FAFAEC2566534C` FOREIGN KEY (`idBanco`) REFERENCES `banco` (`id`)
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
  KEY `FK53206ECF7D7D9AB2` (`idUsuario`),
  CONSTRAINT `FK53206ECF7D7D9AB2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
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
INSERT INTO `beneficio` VALUES (1,'Cesta Básica','Cesta Básica','51.73'),(2,'Vale Refeição','Vale Refeição','4.08'),(3,'Vale Transporte ( 02 conduções )','Vale Transporte ( 02 conduções )','5.30'),(4,'Vale Transporte ( 04 conduções )','Vale Transporte ( 04 conduções )','10.60'),(5,'Prêmio - Líder - Cesari Base 1','Prêmio - Líder','80.00'),(6,'Prêmio - Encarregada - Cesari Base 1','Prêmio - Encarregada','210.00');
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
  `cbo` bigint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Auxiliar de Limpeza','Auxiliar de Limpeza',514320),(2,'Ajudante Geral','Ajudante Geral',514325),(3,'Limpador de Vidros','Limpador de Vidros',514305),(4,'Jardineiro C','Jardineiro C',622010),(5,'Zelador','Zelador',514120),(6,'Diretor','Diretor',123305),(7,'Supervisora Regional','Supervisora Regional',520110),(8,'Gerente Operacional','Gerente Operacional',141205),(9,'Encarregada de Limpeza C','Encarregada de Limpeza C',410105),(10,'Encarregada de Limpeza B','Encarregada de Limpeza B',410105),(11,'Recepcionista','Recepcionista',422105),(12,'Líder de Limpeza','Líder de Limpeza',514225),(13,'Jardineiro B','Jardineiro B',622010),(14,'Auxiliar Administrativo','Auxiliar Administrativo',411010),(15,'Controlador de Acesso','Controlador de Acesso',517420);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
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
  `idEstado` int(11) DEFAULT NULL,
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
  KEY `FK_CLIENTE_ESTADO` (`idEstado`),
  CONSTRAINT `FK96841DDA61705069` FOREIGN KEY (`idMatriz`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK96841DDA8CCD1D0C` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDA8CCD916B` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDACBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK96841DDACC8EA4C9` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FK96841DDACC8F1928` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FK_CLIENTE_ESTADO` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (4,'60872306009701','104','2008-08-21 00:00:00',NULL,1,'Armazenagem distribuição de tintas','Chácara Santo Antonio','04711000','São Paulo ','','Rua Engenheiro Mesquita Sampaio',21,573,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',93,94,95,96,1,NULL,'CNPJ','ATIVO'),(5,'01527330001921','102',NULL,NULL,NULL,'','Vila Elclor - Paranapiacaba','09154900','Santo André','KM 38','Estrada de Ferro Santos Jundiaí, s/n',21,NULL,'Base 4 - Cesari Empresa Multimodal de Movimentação de Materiais Ltda','','Cesari Empresa Multimodal de Movimentação de Mat - Base 4',63,64,65,66,1,NULL,'CNPJ','ATIVO'),(6,'60872306001131','103','2009-03-01 00:00:00',NULL,1,'Armazenagem distribuição de tintas','Várzea do Tamanduateí','09290416','Santo André','','Rua Angelo Franchini,',21,151,'Sherwin Wiilliams do Brasil Ltda','','Sherwin Wiilliams do Brasil Ltda',95,96,97,98,1,NULL,'CNPJ','ATIVO'),(7,'60872306009892','101','2008-03-01 00:00:00',NULL,1,'Armazenagem distribuição de tintas','Presidente Altino','06210030','Osasco','','Rua José Lopes Lazzaro',21,365,'Sherwin Wiilliams do Brasil Ltda','','Sherwin Wiilliams do Brasil Ltda',97,98,99,100,1,NULL,'CNPJ','ATIVO'),(8,'66903477000195','105','2008-09-01 00:00:00',NULL,1,'Industria química','Jd. Ruyce','09961720','Diadema','','Rua Emir Macedo Nogueira',21,273,'Farber Chemie Indústria Química Ltda','','Farber Chemie Indústria Química Ltda',9,10,11,12,1,NULL,'CNPJ','ATIVO'),(9,'08157285000180','106','2008-08-29 00:00:00',NULL,5,'Serviços de escritórios','Parque das Nações','09241000','Santo André ','','Rua Columbia',21,461,'IPL Serviços de Escritórios Ltda ','','IPL Serviços de Escritórios Ltda ',11,12,13,14,1,NULL,'CNPJ','ATIVO'),(10,'06012292000169','107','2008-09-02 00:00:00',NULL,20,'Fabricação de Software','Vila Mariana','04040031','São Paulo','Conj. 43','Rua Loefgreen',21,1291,'Synapsystem Ltda','','Synapsystem Ltda',13,14,15,16,1,NULL,'CNPJ','ATIVO'),(11,'53715975000162','108','2008-08-29 00:00:00',NULL,5,'Sindicato','Vila Guiomar','09290000','Santo André','','Rua Catequese',21,1105,'Sindicato dos Contabilistas de Santo André','','Sindicato dos Contabilistas de Santo André',15,16,17,18,1,NULL,'CNPJ','ATIVO'),(12,'59357749000133','109','2008-09-10 00:00:00',NULL,1,'Fabricação de peças automotivas','Pq.Jaçatuba','09290520','Santo André','','Av. dos Estados',21,8293,'Tec Pan Indústria e Comércio de Plásticos Ltda ','','Tec Pan Indústria e Comércio de Plásticos Ltda ',105,106,107,108,1,NULL,'CNPJ','ATIVO'),(13,'60872306001301','111','2008-11-10 00:00:00',NULL,1,'Armazenagem distribuição de tintas','Parque João Ramalho','07240130','Guarulhos','','Av.Paquistão',21,440,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',101,102,103,104,1,NULL,'CNPJ','ATIVO'),(14,'60872306011609','112','2009-04-01 00:00:00',NULL,1,'Armazenagem distribuição de tintas','Vila Suissa','08210000','Mogi das Cruzes','','Av.Francisco Rodrigues Filho',21,3970,'Sherwin Williams do Brasil Ltda','','Sherwin Williams do Brasil Ltda',103,104,105,106,1,NULL,'CNPJ','ATIVO'),(15,'10233825000100','113',NULL,NULL,3,'Manutenção equipamentos','Rudge Ramos ','09626120','São Bernardo do Campo ','','Rua André Capretz Filho',21,46,'Carimed Equipamentos Médicos Ltda','','Carimed Equipamentos Médicos Ltda',23,24,25,26,1,NULL,'CNPJ','ATIVO'),(16,'07692770000191','114','2009-09-10 00:00:00',NULL,5,'Sistemas de Informática','Bela Vista ','01310000','São Paulo','','Av.Paulista',21,726,'Itélios do Brasil Informática Ltda ','','Itélios do Brasil Informática Ltda ',107,108,109,110,1,NULL,'CNPJ','ATIVO'),(17,'65654121000100','115','2009-10-01 00:00:00',NULL,3,'Venda de papel','Casa Verde','02512010','São Paulo','','Rua Zanzibar',21,1149,'Papel Ecológico Comércio Ltda','','Papel Ecológico Comércio Ltda',27,28,29,30,1,NULL,'CNPJ','ATIVO'),(18,'66762964000185','117',NULL,NULL,20,'Estamparia','Camilópolis ','09230310','Santo André','','Rua Taubaté',21,1130,'Famadi Indústria Comércio e Serviços Ltda','','Famadi Indústria Comércio e Serviços Ltda',29,30,31,32,1,NULL,'CNPJ','ATIVO'),(19,'73431686001030','119','2009-12-10 00:00:00',NULL,1,'Agência de Turismo','Centro','01332000','São Paulo','','Rua Itapeva',21,26,'Kontik Franstur Viagens e Turismo Ltda','','Kontik Franstur Viagens e Turismo Ltda',31,32,33,34,1,NULL,'CNPJ','ATIVO'),(20,'66762964000266','120',NULL,NULL,20,'Estamparia','Barcelona','09230310','São Caetano do Sul','','Av.Goiás',21,3111,'Famadi Indústria Comércio e Serviços Ltda ','','Famadi Indústria Comércio e Serviços Ltda ',33,34,35,36,1,NULL,'CNPJ','ATIVO'),(21,'08484540000108','121','2010-02-09 00:00:00',NULL,1,'Fabricação de Software','Jardim Paulista','01454011','São Paulo','','Rua Professor Arthur Ramos',21,183,'GMC Software Tecnologia Ltda ','','GMC Software Tecnologia Ltda ',35,36,37,38,1,NULL,'CNPJ','ATIVO'),(22,'00787057000182','122','2010-03-01 00:00:00',NULL,5,'Fabricação software','Campestre','09080111','Santo André','','Av. Dom Pedro II',21,1641,'H A da Fonte Sanches Me','','H A da Fonte Sanches Me',37,38,39,40,1,NULL,'CNPJ','ATIVO'),(23,'58698432000106','123','2010-04-05 00:00:00',NULL,1,'Restaurante','Vila Metalúrgica ','09230020','Santo André ','','Rua Atenas',21,111,'Vovó Lina Comidas Caseiras Lda ','','Vovó Lina Comidas Caseiras Lda ',39,40,41,42,1,NULL,'CNPJ','ATIVO'),(24,'29739737004361','125',NULL,NULL,NULL,'','Vila Mariana','04121000','São Paulo','','Rua Santa Cruz',21,541,'Elevadores Ótis Ltda - Regional SP','','Elevadores Ótis Ltda - Regional SP',41,42,43,44,1,NULL,'CNPJ','ATIVO'),(25,'29739737004604','126',NULL,NULL,1,'Fabricação Elevadores','Vila Madalena ','05441050','São Paulo','','Rua Borges de Barros',21,59,'Elevadores Ótis Ltda - SPO ','','Elevadores Ótis Ltda - SPO ',43,44,45,46,1,NULL,'CNPJ','ATIVO'),(26,'29739737005252','127',NULL,NULL,1,'Fabricação de Elevadores','Saúde','04138002','Santo André','','Rua Caramuru',21,646,'Elevadores Ótis Ltda - SPS','','Elevadores Ótis Ltda - SPS',45,46,47,48,1,NULL,'CNPJ','ATIVO'),(27,'29739737005333','128',NULL,NULL,1,'Fabricação de Elevadores','Bela Vista','01306000','São Paulo','','Rua Avanhandava',21,830,'Elevadores Ótis Ltda - SPN','','Elevadores Ótis Ltda - SPN',47,48,49,50,1,NULL,'CNPJ','ATIVO'),(28,'29739737002822','129',NULL,NULL,NULL,'','Chácara Inglesa','09726000','São Bernardo do Campo ','','Av.Barão de Mauá',21,243,'Elevadores Ótis Ltda - ABC','','Elevadores Ótis Ltda - ABC',49,50,51,52,1,NULL,'CNPJ','ATIVO'),(29,'60708880000187','130','2010-04-27 00:00:00',NULL,10,'Reparos','Vila Gilda','09190460','Santo André ','','Rua Santa Mônica',21,66,'RZR Bombas Positivas Ltda ','','RZR Bombas Positivas Ltda ',51,52,53,54,1,NULL,'CNPJ','ATIVO'),(30,'02987129000160','132','2010-05-03 00:00:00',NULL,1,'Fabricação equipamentos proteção','Jd.Ruyce','09980000','Diadema','','Av.Nossa Senhora das Graças',21,1315,'Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP','','Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP',53,54,55,56,1,NULL,'CNPJ','ATIVO'),(31,'55706147000193','133','2010-05-07 00:00:00',NULL,8,'Condominio Residencial','Jabaquara','04323010','São Paulo','','Rua Coronel Luís de Faria e Souza',21,274,'Condominio Edíficio Rogério','','Condominio Edíficio Rogério',141,142,143,144,1,NULL,'CNPJ','ATIVO'),(32,'01527330000100','134','2010-05-31 00:00:00',NULL,26,'Transportaroa ','Jd. São Marcos ','11570000','Cubatão','','Av.Plínio de Queiroz, S/N',21,NULL,'Base 2 - Cesari Empresa Multimodal de Mov de Materiais Limitada - Base 2','','Cesari Empresa Multimodal de Mov de Mat - Base 2',61,62,63,64,1,NULL,'CNPJ','ATIVO'),(33,'67315556000148','136','2010-06-02 00:00:00',NULL,20,'Clinica psicologia','Jd. do Mar','09750510','São Bernardo do Campo ','','Rua Bering',21,163,'Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda','','Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda',65,66,67,68,1,NULL,'CNPJ','ATIVO'),(34,'49524341000155','138',NULL,NULL,20,'Galvanoplastia','Idealópolis','09950580','Diadema ','','Rua Idealópolis',21,354,'Galvonoplastia Anchieta Ltda ','','Galvanoplastia Anchieta Ltda ',79,80,81,82,1,NULL,'CNPJ','ATIVO'),(35,'03691655000141','140','2010-08-05 00:00:00',NULL,30,'Fabricação','Rudge Ramos','11570000','São Bernardo do Campo','','Rua Pio XII',21,89,'DMZ Produtos para Laboratórios Lda','','DMZ Produtos para Laboratórios Lda',71,72,73,74,1,NULL,'CNPJ','ATIVO'),(36,'35402759000185','141','2010-08-19 00:00:00',NULL,1,'Armazenagens de pães','Vila Palmares','05560000','Santo André ','Galpão','Rua. Afonsina',21,180,'Filial Santo André - Bimbo do Brasil Ltda','','Bimbo do Brasil Ltda',81,82,83,84,1,NULL,'CNPJ','ATIVO'),(37,'11409362000157','144',NULL,NULL,30,'Condominio residencial','Quarta Parada','03174000','São Paulo','','Rua Serra da Bocaina',21,121,'Residencial Bio Vitta','','Residencial Bio Vitta',75,76,77,78,1,NULL,'CNPJ','ATIVO'),(38,'00822263000186','145','2010-10-01 00:00:00',NULL,30,'Manutenção equipamentos','Jd. Nova Petrópolis ','09770330','São Bernardo do Campo','','Rua Alameda Dona Thereza Cristina',21,819,'W-Service Comércio e Serviços em Equipamentos Elétricos Ltda','','W-Service Comércio e Serviços em Equipamentos Elétricos Ltda',77,78,79,80,1,NULL,'CNPJ','ATIVO'),(39,'09337554000153','100','2008-01-23 00:00:00',NULL,5,'Serviços de Limpeza e Conservação','Parque Erasmo Assunção','09271410','Santo André','','Av. Itamarati',21,2773,'Master Clear Serviços de Limpeza Ltda','','Master Clear Serviços de Limpeza Ltda',159,160,145,146,1,NULL,'CNPJ','ATIVO'),(40,'09367429000196','099','2009-01-21 00:00:00',NULL,1,'','Vila Campestre','09290000','Santo André','','Av. Dom Pedro II',NULL,2283,'Villa Safari Buffet Ltda','','Villa Safari Buffet Ltda',163,164,149,150,1,NULL,'CNPJ','ATIVO'),(41,'01250600000170','110','2009-01-13 00:00:00',NULL,1,'','Butantã','03298733','São Paulo','','Av. Caxingui',NULL,198,'Laboratório Lian de Protese Odontológica Ltda','','Laboratório Lian de Protese Odontológica Ltda',165,166,151,152,1,NULL,'CNPJ','ATIVO'),(42,'07052844000125','116','2009-09-01 00:00:00',NULL,5,'Academia de ginástica','Jardim Bonfiglioli','09626120','São Paulo','','Rua General Brasilio Taborda',NULL,140,'Era Sport e Serviços Ltda','','Era Sport e Serviços Ltda',168,169,153,154,1,NULL,'CNPJ','ATIVO'),(43,'07510876000127','137','2010-01-12 00:00:00',NULL,1,'Publicidade','Cidade Manções','04575060','São Paulo','','Rua. Geraldo Flausino Gomes ',NULL,100,'Ooh Midia Comunicação Ltda','','Ooh Midia Comunicação Ltda',170,171,155,156,1,NULL,'CNPJ','ATIVO'),(44,'06653440826','118','2010-04-05 00:00:00',NULL,8,'Condominio Residencial','Vila Eldizia','09181570','Santo André','','Rua.Javaés',21,616,'Eduardo Pin','','Eduardo Pin',173,174,157,158,1,NULL,'CPF','ATIVO'),(45,'35402759000185','143','2010-09-10 00:00:00',NULL,1,'Armazenagem de pães','Cangaiba','04300011','São Paulo','Galpão','Rua. Floresta Azul',21,977,'Filial Cangaíba - Bimbo do Brasil Ltda','','Bimbo do Brasil Ltda',254,255,193,194,1,NULL,'CNPJ','ATIVO'),(46,'35402759000185','146','2010-11-08 00:00:00',NULL,1,'Armazenagem de pães','Cumbica','07223040','Guarulhos ','','Rua. Bicas',21,102,'Filial Guarulhos - Bimbo do Brasil Ltda','','Bimbo do Brasil Ltda',256,257,195,196,1,NULL,'CNPJ','ATIVO'),(47,'01527330000100','139','2010-09-01 00:00:00',NULL,26,'Transportadora','Jardim São Marcos','11570000','Cubatão','','Av. Plínio de Queiroz',21,NULL,'Base 1 Term - Cesari Empresa Multimodal de Movimentações de materiais Ltda','','Cesari Empresa Multimodal de Movimentações de materiais Ltda',258,259,197,198,1,NULL,'CNPJ','ATIVO'),(48,'01527330000100','142','2010-09-01 00:00:00',NULL,26,'Transportadora','Jardim São Marcos                 ','11570000','Cubatão ','','Av. Plínio de Queiroz',21,NULL,'Base 1 Adm - Cesari Empresa Multimodal de Movimentação de Materiais Ltda','','Cesari Empresa Multimodal de Movimentação de Materiais Ltda',260,261,199,200,1,NULL,'CNPJ','ATIVO'),(49,'05389530802','131','2010-04-29 00:00:00',NULL,1,'Residencial','Silveira','09110050','Santo André','Casa','Rua. Alencastro ',21,162,'Nanci Rodrigues Rozão de Sá','','Nanci Rodrigues Rozão de Sá',265,266,201,202,1,NULL,'CPF','ATIVO'),(50,'05075152000177','147','2011-03-14 00:00:00',NULL,10,'Sistemas de armazenagém integradas','Bonsucesso','07175450','Guaruhos','','Rua. Felício Antônio Alves',21,298,'Mundial Logística Integrada Ltda','','Mundial Logística Integrada Ltda',271,272,205,206,1,NULL,'CNPJ','ATIVO');
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
  `dataInclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7540B1663995D50C` (`idFuncionario`),
  CONSTRAINT `FK7540B1663995D50C` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES (1,'2007-08-19 00:00:00','Gabriel Felicio Colonhezi Basilio',18,'2009-01-02 00:00:00'),(2,'2009-07-22 00:00:00','Agatha Shayane da Silva',42,'2009-10-01 00:00:00'),(3,'2007-12-01 00:00:00','Felipe Gustavo de Souza Pereira',43,'2009-10-01 00:00:00'),(4,'2005-09-05 00:00:00','Renato da Silva Ribeiro',44,'2009-10-01 00:00:00'),(5,'2009-05-29 00:00:00','Renata Rosa da Silva Ribeiro',44,'2009-10-01 00:00:00'),(6,'2003-07-18 00:00:00','Alycia Stefany Martins Pereira ',14,'2009-12-10 00:00:00'),(7,'1992-10-29 00:00:00','Ulysses Donaldson Costa da Conceição ',45,'2009-02-13 00:00:00'),(8,'1998-05-27 00:00:00','Bárbara Raquel Costa da Conceição ',45,'2009-02-13 00:00:00'),(9,'1996-08-16 00:00:00','Wesley Costa da Conceição ',45,'2009-02-13 00:00:00'),(10,'1999-04-16 00:00:00','Natanael dos Santos Arruda ',47,'2010-01-04 00:00:00'),(11,'2001-06-11 00:00:00','Queren Novais de Oliveira ',47,'2010-01-04 00:00:00'),(12,'2005-12-21 00:00:00','Ismael Silas de Souza Rodrigues',53,'2010-02-03 00:00:00'),(13,'2000-03-21 00:00:00','Evilyn Victoria Souza Rodrigues',53,'2010-02-03 00:00:00'),(14,'1995-11-09 00:00:00','Vinicíus Santos da Silva',54,'2010-09-10 00:00:00'),(15,'2001-03-28 00:00:00','Vivian Santos da Silva ',54,'2010-09-10 00:00:00'),(16,'2003-01-19 00:00:00','Raissa Pereira da Silva ',52,'2010-09-01 00:00:00'),(17,'2000-05-10 00:00:00','Rayane de Lima Pereira ',52,'2010-09-01 00:00:00'),(18,'1997-07-10 00:00:00','Ricardo Antonio de Souza Viana',55,'2010-02-06 00:00:00'),(19,'1999-09-03 00:00:00','Sagith Helena de Souza Viana',55,'2010-02-06 00:00:00'),(20,'2004-12-13 00:00:00','Carlos Eduardo Trajano Sampaio ',61,'2010-09-01 00:00:00'),(21,'1997-06-18 00:00:00','Antonio Erisberto de Sousa Oliveira',34,'2010-09-27 00:00:00'),(22,'1996-04-10 00:00:00','Delvani de Souza Oliveira ',34,'2010-09-27 00:00:00');
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
  `idEstado` int(11) DEFAULT NULL,
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
  KEY `FK_EMPRESA_ESTADO` (`idEstado`),
  CONSTRAINT `FK26DD8695BD2F305` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK26DD8695BD2F306` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK26DD869CD5A0AF8` FOREIGN KEY (`idMatriz`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_EMPRESA_ESTADO` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'09337554000153',NULL,'comercial@masterclear.com.br','Parque Erasmo Assunção','09271410','Santo André','','Av. Itamarati',NULL,2773,'Master Clear Serviços de Limpeza Ltda','Master Clear Serviços de Limpeza Ltda','Levi','Serviços de Limpeza e Conservação',NULL,3,4);
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
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(5) NOT NULL,
  `SIGLA` varchar(5) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `idPais` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODIGO_UNIQUE` (`CODIGO`),
  UNIQUE KEY `SIGLA_UNIQUE` (`SIGLA`),
  UNIQUE KEY `NOME_UNIQUE` (`NOME`),
  KEY `fk_estado_pais` (`idPais`),
  CONSTRAINT `fk_estado_pais` FOREIGN KEY (`idPais`) REFERENCES `pais` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'01','AC','Acre',1),(2,'02','AL','Alagoas',1),(3,'03','AP','Amapǭ',1),(4,'04','AM','Amazonas',1),(5,'05','BA','Bahia',1),(6,'06','CE','Cearǭ',1),(7,'07','DF','Distrito Federal',1),(8,'09','GO','Goiǭs',1),(9,'10','MA','Maranhǜo',1),(10,'11','MT','Mato Grosso',1),(11,'12','MS','Mato Grosso do Sul',1),(12,'13','MG','Minas Gerais',1),(13,'14','PA','Parǭ',1),(14,'16','PR','Paranǭ',1),(15,'17','PE','Pernambuco',1),(16,'19','RJ','Rio de Janeiro',1),(17,'20','RN','Rio Grande do Norte',1),(18,'21','RS','Rio Grande do Sul',1),(19,'23','RR','Roraima',1),(20,'24','SC','Santa Catarina',1),(21,'25','SP','Sǜo Paulo',1),(22,'26','SE','Sergipe',1),(23,'27','TO','Tocantins',1),(24,'08','ES','Espirito Santo',1),(25,'15','PB','Paraiba',1),(26,'18','PI','Piaui',1),(27,'22','RO','Rondonia',1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
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
  `idEstado` int(11) DEFAULT NULL,
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
  KEY `FK_FORNECEDOR_ESTADO` (`idEstado`),
  CONSTRAINT `FKC4F07D85145DBD91` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKC4F07D855BD2F305` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D855BD2F306` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D85A87B4D18` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKC4F07D85CBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_FORNECEDOR_ESTADO` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'74580333000173','101',NULL,'2008-01-15 00:00:00',6,'Vila Primavera','03390030','São Paulo','','Rua. Lopes Benevides',21,219,'Star Limp Comércio de Embalagens e Produtos de Limpeza em Geral','','Star Limp Comércio de Embalagens e Produtos de Limpeza em Geral','Vendas de Produtos de Limpeza e Equipamentos',83,84,1,85,86),(2,'44649812000138','103',NULL,'2008-05-13 00:00:00',10,'Cerqueira Cesar','01305100','São Paulo','','Rua. Augusta',21,1029,'Intermédica Sistema de Saúde S/A','','Intermédica Sistema de Saúde S/A','Plano de Saúde empresarial',87,88,1,89,90),(3,'58144007000167','102',NULL,'2008-02-01 00:00:00',10,'Vila Alzira','09195470','Santo André','','Av. Firestone',21,50,'Siemaco ABC - Sindicato dos Empregados em empresas de limpeza e conservação','','Siemaco ABC - Sindicato dos Empregados em empresas de limpeza e conservação','Sindicato',89,90,1,91,92),(4,'66970229000167','104',NULL,'2009-11-18 00:00:00',25,'Cerqueira Cesar','01418200','São Paulo','','Alameda Santos',21,2356,'Nextel Telecomunicações Ltda','','Nextel Telecomunicações Ltda','Rádio comunicação',91,92,1,93,94),(5,'04854411000103','105',NULL,'2010-12-27 00:00:00',20,'Vila Príncipe de gales','09299900','Santo André','','Av. Príncipe de gales',21,185,'Grupo Trans livre express Ltda','www.grupotranslivre.com.br','Grupo Trans livre express Ltda','Serviços de motoboy',111,112,1,113,114),(6,'09326373000121','106',NULL,'2010-06-01 00:00:00',20,'Vila Curuça','09280250','Santo André','','Av. Itamarati',21,1960,'Transleve Transportes rápidos Ltda','ID 9*60284 - Tel direto motoboy: 8913-2140','Transleve Transportes rápidos Ltda','Serviços de motoboy',113,114,1,115,116),(7,'57549156000143','107',NULL,'2008-08-01 00:00:00',5,'Centro','09010000','Santo André','Sala 03','Rua. Coronel Oliveira Lima',21,467,'Seasamed assessoria médica ocupaconal santo andré ltda','','Seasa assessoria médica ocupaconal santo andré ltda','Serviços exames médicos colaboradores',115,116,1,117,118),(8,'79080131000186','108',NULL,'2010-11-01 00:00:00',22,'Santana de Parnaíba','06530001','São Paulo','Sala 20','Av. Tenente Marques',21,5201,'CBA Bônus brasil serviços de alimentos ltda','www.cba.com.br','Bônus brasil serviços de alimentos ltda','Serviços fornecimento de refeição e cestas básicas',117,118,1,119,120),(9,'07838658000116','109',NULL,'2008-12-17 00:00:00',5,'Vila Curuça','09290730','Santo André','','Av. Itamarati',21,1193,'Gummynho papelaria Ltda','','Gummynho papelaria Ltda','Vendas de papelaria',119,120,1,121,122),(10,'04687987000115','110',NULL,'2009-12-30 00:00:00',5,'Centro','00088444','São Bernardo do Campo','Conjunto 31','Av. São João Batista',21,197,'Cabam mediação & arbitragem Ltda','www.cabam.com.br','Cabam mediação & arbitragem Ltda','Serviços de homologação',121,122,1,123,124),(11,'06196959000120','111',NULL,'2010-10-01 00:00:00',5,'Bras','03017000','São Paulo','','Rua. Bresser',21,177,'Leticia & Vitor confecção Ltda','','Leticia & Vitor confecção Ltda','Confecção de uniformes aos colaboradores',123,124,1,125,126),(12,'55043319000196','112',NULL,'2010-01-01 00:00:00',10,'Santa Tereszinha','09210660','Santo André','','Rua. Porto Seguro',21,518,'Lúcio Imóveis S/c Ltda','','Lúcio Imóveis S/c Ltda','Locação imóvel',125,126,1,127,128),(13,'07247975000168','113',NULL,'2010-09-01 00:00:00',5,'Macuco','11015201','Santos','A','Av. Conselheiro Rodrigues Alves',21,55,'Tecnutri Técnicas Nutricionais alimentação empresarial Ltda','www.tecnutri.com.br','Técnicas Nutricionais alimentação empresarial Ltda','Fornecimento de alimentação colaboradores',127,128,1,129,130),(14,'62040001000117','114',NULL,'2009-01-01 00:00:00',10,'Vila Pires','09130410','Santo André','','Av. Dom Pedro I',21,1181,'Novabor Borrachas e Plásticos Ltda','www.novabor.com.br','Novabor Borrachas e Plásticos Ltda','Vendas equipamentos segurança',129,130,1,131,132),(15,'04184711001609','115',NULL,'2010-09-30 00:00:00',10,'Fazenda grande','13213086','Jundiaí','','Rodovia Vice Prefeito H Tonolli',21,1500,'Joanin Savon indústria e comércio importação e exportação ltda','','Savon indústria e comércio importação e exportação ltda','Vendas cestas básicas',131,132,1,133,134),(16,'01109184000438','116',NULL,'2008-01-01 00:00:00',6,'Centro','01452002','São Paulo','','Av. Brigadeiro Faria Lima',21,1384,'Universo Online S/A','','Universo Online S/A','Serviços de internet',133,134,1,135,136),(17,'59276790002129','117',NULL,'2010-10-04 00:00:00',10,'Parque Jaçatuba','09290520','Santo André','','Av. Dos Estados',21,5745,'Comercial Oswaldo Cruz Ltda','','Comercial Oswaldo Cruz Ltda','Vendas cestas básicas colaboradores',135,136,1,137,138),(18,'44050045000146','118',NULL,'2009-01-01 00:00:00',16,'Parque Jaçatuba','09290500','Santo André','','Rua dos Ramalhões',21,0,'Esporte Clube Santo André','','Esporte Clube Santo André','Serviços de lazer',137,138,1,139,140),(19,'04206050000180','119',NULL,'2010-11-01 00:00:00',20,'Vila Andrade','05724006','São Paulo','','Av. Giovanni Gronchi',21,7143,'Tim Celular S/A','','Tim Celular S/A','Serviços de internet móvel',139,140,1,141,142),(20,'00241384000134','120',NULL,'2008-01-31 00:00:00',1,'Vila Curuça','09290000','Santo André','Nextel ID 7*13305','Rua. Lituânia',21,260,'Serv-Lar Assistência Técnica Ltda','','Serv-Lar Assistência Técnica Ltda','Assistência técnica enceradeira, roçadeira e locação',161,162,1,147,148),(21,'11001753000138','121',NULL,'2010-08-02 00:00:00',1,'Centro','11510001','Cubatão','Bloco 2','Av. 9 de Abril',21,1821,'Hotel Rainha do Mar Ltda','Banco Itaú - Ag. 9228 - C/c. 10658-0\r\n','Hotel Rainha do Mar Ltda','Hotelaria',186,187,1,159,160),(22,'01148472000159','122',NULL,'2010-03-16 00:00:00',1,'Alto da Lapa','05083070','São Paulo','','Rua. Sales Junior',21,609,'Noroeste Comercial de Suprimentos Ltda','','Noroeste Comercial de Suprimentos Ltda','Vendas de Randap',188,189,1,161,162),(23,'12474341000188','123',NULL,'2011-01-10 00:00:00',5,'Embaré','11025003','Santos','Sala 15','Av. Pedro Lessa',21,2559,'Link Alimentação & Serviços Ltda','Empresa do Grupo Tecnutri','Link Alimentação & Serviços Ltda','Alimentação',203,204,1,163,164),(24,'03444391000121','124',NULL,'2009-02-03 00:00:00',1,'Centro','09010120','Santo André','','Rua. Correia Dias',21,152,'Vega Solux Serviços Empresariais Ltda','www.soluxrh.com.br','Vega Solux Serviços Empresariais Ltda','Mão de Obra Temporária',208,209,1,165,166),(25,'07044419000437','125',NULL,'2010-01-01 00:00:00',1,'Moóca','03166001','São Paulo','','Rua. Taquari',21,1240,'Só-Frio Comércio de Eletrônicos Ltda','www.sofrio.com.br','Só-Frio Comércio de Eletrônicos Ltda','Vendas ar condicionado e instação',210,211,1,167,168),(26,'61695227000193','126',NULL,'2008-01-01 00:00:00',10,'São Paulo','04547100','São Paulo','','Rua. Lourenço Marques',21,158,'Eletropaulo Metropolitana Eletricidade de São Paulo SA','','Eletropaulo Metropolitana Eletricidade de São Paulo SA','Fornecimento de Energia',230,231,1,169,170),(27,'00836770000179','127',NULL,'2010-02-02 00:00:00',10,'Parque Jaçatuba','09290000','Santo André','','Rua. Maranguape',21,78,'Interação Centro Educacional Ltda','','Interação Centro Educacional Ltda','Educação',232,233,1,171,172),(28,'02558157000162','128',NULL,'2008-02-05 00:00:00',2,'Bela Vista','01321001','São Paulo','','Rua. Martiniano de Carvalho',21,851,'Telefonica Telecomunicações de São Paulo SA','','Telefonica Telecomunicações de São Paulo SA','Serviços de telefonia',234,235,1,173,174),(29,'44185817000157','129',NULL,'2011-02-18 00:00:00',30,'Vila Guiomar','09090480','Santo André','','Av. Dom Jorge Marcos de Oliveira',21,120,'Corpo de Patrulheiros Mirins de Santo André','www.abcaprendiz.org.br','Corpo de Patrulheiros Mirins de Santo André','Mão de Obra',236,237,1,175,176),(30,'59274605000113','130',NULL,'2010-06-28 00:00:00',28,'São Paulo','04062003','São Paulo','','Av. Indianópolis',21,3096,'Banco GMC SA','www.bancogmc.com.br','Banco GMC SA','Financiamento de veículos',238,239,1,177,178),(31,'06990590000204','131',NULL,'2009-02-03 00:00:00',1,'Barra Funda','01440030','São Paulo','Parte 1','Rua. Dr. Edgar Theotonio Santana',21,351,'Google Brasil Internet Ltda','','Google Brasil Internet Ltda','Serviços internet',240,241,1,179,180),(32,'55728224000106','132',NULL,'2008-02-13 00:00:00',1,'Santo André','09210580','Santo André','','Av. Dos Estados',21,4555,'Copafer Comercial Ltda','','Copafer Comercial Ltda','Vendas equipamentos elétricos',242,243,1,181,182),(33,'57604530000166','133',NULL,'2008-02-01 00:00:00',15,'Parque das Nações','09200000','Santo André','','Rua. Iuguslávia',21,31,'Semasa saneamento ambiental de Santo André SA','','Semasa saneamento ambiental de Santo André SA','Fornecimento de água',244,245,1,183,184),(34,'00927916000191','134',NULL,'2010-02-02 00:00:00',1,'Centro','09510130','São Caetano do Sul','','Rua. Pará',21,23,'Galpão da informática Ltda','www.galpaodainformatica.com.br','Galpão da informática Ltda','Vendas equipamentos de informática',246,247,1,185,186),(35,'01438784001179','135',NULL,'2010-12-22 00:00:00',28,'Centro','09520150','São Caetano do Sul','','Av. Dos Estados ',21,1750,'Leroy merlin Companhia Brasileira de Bricolagem ','','Leroy merlin Companhia Brasileira de Bricolagem ','Vendas material de limpeza',248,249,1,187,188),(36,'00150954000180','136',NULL,'2008-02-28 00:00:00',1,'Campos Elíseos','01217000','São Paulo','','Alameda Dino Bueno',21,711,'Certec indústria de enceradeiras Ltda','www.grupocertec.com.br','Certec indústria de enceradeiras Ltda','Vendas equipamentos',250,251,1,189,190),(37,'03527473000130','137',NULL,'2010-02-02 00:00:00',1,'Utinga','09220310','Santo André','Loja','Av. Da Paz',21,862,'HC Eletro Assistência Técnica Ltda','','HC Eletro Assistência Técnica Ltda','Conserto e manuteção wap',252,253,1,191,192),(38,'66162934000138','138',NULL,'2011-02-15 00:00:00',1,'Parque Erasmo Assunção','09271180','Santo André','','Av. Eduardo Prado',21,28,'Santo André Vidros','','Santo André Vidros','Vendas vidros  ',267,268,1,203,204);
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidade`
--

LOCK TABLES `funcionalidade` WRITE;
/*!40000 ALTER TABLE `funcionalidade` DISABLE KEYS */;
INSERT INTO `funcionalidade` VALUES (125,1,'Incluir Adicional'),(126,2,'Excluir Adicional'),(127,3,'Alterar Adicional'),(128,4,'Consultar Adiciomal'),(129,5,'Incluir Benefício'),(130,6,'Excluir Benefício'),(131,7,'Alterar Benefício'),(132,8,'Consultar Benefício'),(133,9,'Incluir Cliente'),(134,10,'Excluir Cliente'),(135,11,'Alterar Cliente'),(136,12,'Consultar Cliente'),(137,13,'Incluir Desconto'),(138,14,'Excluir Desconto'),(139,15,'Alterar Desconto'),(140,16,'Consultar Desconto'),(141,17,'Incluir Empresa'),(142,18,'Excluir Empresa'),(143,19,'Alterar Empresa'),(144,20,'Consultar Empresa'),(145,21,'Incluir Encargo'),(146,22,'Excluir Encargo'),(147,23,'Alterar Encargo'),(148,24,'Consultar Encargo'),(149,25,'Incluir Fornecedor'),(150,26,'Excluir Fornecedor'),(151,27,'Alterar Fornecedor'),(152,28,'Consultar Fornecedor'),(153,29,'Incluir Jornada de Trabalho'),(154,30,'Excluir Jornada de Trabalho'),(155,31,'Alterar Jornada de Trabalho'),(156,32,'Consultar Jornada de Trabalho'),(157,33,'Incluir Tipo de Demissão'),(158,34,'Excluir Tipo de Demissão'),(159,35,'Alterar Tipo de Demissão'),(160,36,'Consultar Tipo de Demissão'),(161,37,'Incluir Funcionário'),(162,38,'Excluir Funcionário'),(163,39,'Alterar Funcionário'),(164,40,'Consultar Funcionário'),(165,41,'Incluir Usuário'),(166,42,'Excluir Usuário'),(167,43,'Alterar Usuário'),(168,44,'Consultar Usuário'),(169,45,'Alterar senha do usuário'),(170,46,'Incluir Perfil'),(171,47,'Excluir Perfil'),(172,48,'Alterar Perfil'),(173,49,'Consultar Perfil'),(174,50,'Incluir Cargo'),(175,51,'Excluir Cargo'),(176,52,'Alterar Cargo'),(177,53,'Consultar Cargo'),(178,54,'Incluir Forma de Pagamento'),(179,55,'Excluir Forma de Pagamento'),(180,56,'Alterar Forma de Pagamento'),(181,57,'Consultar Forma de Pagamento'),(182,58,'Incluir Tipo de Admissao'),(183,59,'Excluir Tipo de Admissao'),(184,60,'Alterar Tipo de Admissao'),(185,61,'Consultar Tipo de Admissao'),(186,62,'Incluir Situacoes do Funcionario'),(187,63,'Excluir Situacoes do Funcionario'),(188,64,'Alterar Situacoes do Funcionario'),(189,65,'Consultar Situacoes do Funcionario'),(190,66,'Incluir Vinculo Empregaticio'),(191,67,'Excluir Vinculo Empregaticio'),(192,68,'Alterar Vinculo Empregaticio'),(193,69,'Consultar Vinculo Empregaticio'),(194,70,'Incluir Dependente'),(195,71,'Excluir Dependente'),(196,72,'Alterar Dependente'),(197,73,'Consultar Dependente');
/*!40000 ALTER TABLE `funcionalidade` ENABLE KEYS */;
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
  `ctps` bigint(8) DEFAULT NULL,
  `dataEmissaoCtps` datetime DEFAULT NULL,
  `ctpsEstrangeiro` varchar(255) DEFAULT NULL,
  `dataEmissaoCtpsEstrangeiro` datetime DEFAULT NULL,
  `dataValidadeCtpsEstrangeiro` datetime DEFAULT NULL,
  `dataAdmissao` datetime DEFAULT NULL,
  `dataExameMedico` datetime DEFAULT NULL,
  `categoriaDocumentoMilitar` varchar(255) DEFAULT NULL,
  `documentoMilitar` varchar(255) DEFAULT NULL,
  `numeroDocumentoMilitar` bigint(20) DEFAULT NULL,
  `escolaridade` varchar(100) DEFAULT NULL,
  `estadoCivil` varchar(70) DEFAULT NULL,
  `indicacao` varchar(255) DEFAULT NULL,
  `nomeMae` varchar(255) DEFAULT NULL,
  `nomePai` varchar(255) DEFAULT NULL,
  `dataEmissaoPis` datetime DEFAULT NULL,
  `pis` varchar(255) DEFAULT NULL,
  `dataEmissaoRg` datetime DEFAULT NULL,
  `estadoRg` varchar(255) DEFAULT NULL,
  `orgaoEmissorRg` varchar(255) DEFAULT NULL,
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
  `idSetor` bigint(20) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `agencia` varchar(50) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `tipoContaBancaria` varchar(50) DEFAULT NULL,
  `serieCtps` bigint(6) DEFAULT NULL,
  `ufCtps` varchar(2) DEFAULT NULL,
  `tipoContrato` varchar(50) DEFAULT NULL,
  `idTipoAdmissao` bigint(20) DEFAULT NULL,
  `idVinculoEmpregaticio` bigint(20) DEFAULT NULL,
  `idSituacaoFuncionario` bigint(20) DEFAULT NULL,
  `ufNaturalidade` varchar(2) DEFAULT NULL,
  `naturalizado` bit(1) DEFAULT NULL,
  `dataNaturalizacao` datetime DEFAULT NULL,
  `deficienteFisico` bit(1) DEFAULT NULL,
  `dataNascimentoConjuge` datetime DEFAULT NULL,
  `nomeConjuge` varchar(255) DEFAULT NULL,
  `raca` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB3A9C5BB8F49D43C` (`idPessoaReferencia`),
  KEY `FKB3A9C5BBB7A18838` (`idPessoa`),
  KEY `FKB3A9C5BB6E772212` (`idJornadaTrabalho`),
  KEY `FKB3A9C5BB420AE1C` (`idFormaPagamento`),
  KEY `FKB3A9C5BBCBBE3568` (`idEmpresa`),
  KEY `FKB3A9C5BBA7D2EB4E` (`idContaBancaria`),
  KEY `FKB3A9C5BBF3EAC04A` (`idCliente`),
  KEY `idCargo` (`idCargo`),
  KEY `idSetor` (`idSetor`),
  KEY `idTipoAdmissao` (`idTipoAdmissao`),
  KEY `idVinculoEmpregaticio` (`idVinculoEmpregaticio`),
  KEY `idSituacaoFuncionario` (`idSituacaoFuncionario`),
  CONSTRAINT `FKB3A9C5BB420AE1C` FOREIGN KEY (`idFormaPagamento`) REFERENCES `formapagamento` (`id`),
  CONSTRAINT `FKB3A9C5BB6E772212` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`),
  CONSTRAINT `FKB3A9C5BB8F49D43C` FOREIGN KEY (`idPessoaReferencia`) REFERENCES `pessoareferencia` (`id`),
  CONSTRAINT `FKB3A9C5BBA7D2EB4E` FOREIGN KEY (`idContaBancaria`) REFERENCES `contabancaria` (`id`),
  CONSTRAINT `FKB3A9C5BBB7A18838` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKB3A9C5BBCBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKB3A9C5BBF3EAC04A` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`id`),
  CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`idTipoAdmissao`) REFERENCES `tipoadmissao` (`id`),
  CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`idVinculoEmpregaticio`) REFERENCES `vinculoempregaticio` (`id`),
  CONSTRAINT `funcionario_ibfk_5` FOREIGN KEY (`idSituacaoFuncionario`) REFERENCES `situacaofuncionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'',NULL,'',NULL,NULL,NULL,NULL,'04759973443',57105,'1999-09-03 00:00:00','',NULL,NULL,'2008-04-01 00:00:00','2008-04-01 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','CASADO',NULL,'Josefa Maria da Conceição ','Mario Francisco dos Santos ',NULL,'20361101486','1999-09-03 00:00:00',NULL,'Satuba','99002005629',NULL,'','','598.00',NULL,'2008-04-01 00:00:00',NULL,'','0250','30029911708','003',7,NULL,1,1,16,143,NULL,1,1,'Brasileira ','Atalaia','AL','',7,'Bradesco','2474-0','24598-4','CORRENTE',19,'AL','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0','1979-02-26 00:00:00','Marcelo Fernandes Costa ','BRANCO'),(2,'',NULL,'',NULL,NULL,NULL,NULL,'65528042534',82732,NULL,'',NULL,NULL,'2010-05-06 00:00:00','2010-04-20 00:00:00','','',0,'PRIMEIROGRAU_COMPLETO','CASADO',NULL,'Maria de Lourdes da Silva Pereira','Júlio Pereira Benevides ','1991-05-20 00:00:00','12447967332','2002-05-15 00:00:00',NULL,'Mauá','329252562',NULL,'','','598.00',NULL,'2010-05-06 00:00:00',NULL,'','098','51592780590','339',7,NULL,1,1,16,144,NULL,1,80,'Brasileira ','Jequie','SP','',NULL,'Bradesco','121-0','153817-9','CORRENTE',35,'BA','INDETERMINADO',2,1,1,'BA','\0',NULL,'\0','1962-12-16 00:00:00','Adenildo Gonçalves dos Santos ','PARDO'),(3,'',NULL,'',NULL,NULL,NULL,NULL,'23036404821',39655,'2003-07-08 00:00:00','',NULL,NULL,'2010-12-01 00:00:00','2010-11-30 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Eliane Duda dos Santos','Edberto Ventura da Silva',NULL,'20492232525','2001-04-02 00:00:00',NULL,'Maceió','451034375',NULL,'','','598.00',NULL,'2010-12-01 00:00:00',NULL,'','222','353261440116','339',33,NULL,1,1,14,145,NULL,1,173,'Brasileira','Maceió','AL','',NULL,'','','',NULL,287,'SP','INDETERMINADO',2,1,1,'AL','\0',NULL,'\0',NULL,'','PARDO'),(4,'',NULL,'',NULL,NULL,NULL,NULL,'35041009821',55551,'2009-04-07 00:00:00','',NULL,NULL,'2010-08-05 00:00:00','2010-08-03 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Cátia Regina Cláudio','Gersino Efigenio Soliano',NULL,'13344153772','2009-04-07 00:00:00',NULL,'SBC','466038367',NULL,'','','598.00',NULL,'2010-08-05 00:00:00',NULL,'','0124','337354420116','414',35,NULL,1,1,15,146,NULL,1,104,'Brasileiro','São Bernardo do Campo ','SP','',2,'Bradesco','109-0','373900-7','CORRENTE',348,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','NEGRO'),(5,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'00782809405',11993,'1996-08-05 00:00:00',NULL,NULL,NULL,'2010-02-05 00:00:00','2010-02-08 00:00:00','0','0',0,'SEGUNDOGRAU_COMPLETO','CASADO',NULL,'Marina Mariana da Silva Roci','José Luiz da Rocha ','2011-01-03 00:00:00','0','2005-11-03 00:00:00',NULL,'Salgueiro','359118835',NULL,NULL,NULL,'598.00',NULL,'2010-02-10 00:00:00',NULL,'','126','051376050892','263',12,NULL,1,1,1,147,NULL,1,66,'Brasileira ','Salgueiro ','PE','',NULL,'Bradesco','2971-8','6477-7','SALARIO',37,'PE',NULL,NULL,NULL,1,'PE',NULL,NULL,'','1973-07-09 00:00:00','Gonzaga Francisco dos Santos ','BRANCO'),(6,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'31542472890',NULL,'2011-01-04 00:00:00',NULL,NULL,NULL,'2009-05-12 00:00:00','2009-05-11 00:00:00','0','0',0,NULL,NULL,NULL,'Angela Maria do Carmo','h','2011-01-17 00:00:00','13727282818','1996-12-03 00:00:00',NULL,'SSP','350341023',NULL,NULL,NULL,'472.00',NULL,'2009-05-12 00:00:00','2009-06-25 00:00:00','','0','0','0',5,NULL,1,1,9,148,NULL,1,26,'Brasileira','Santo Andre','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'',NULL,'',NULL,NULL,NULL,NULL,'03490387597',404376,'2010-03-01 00:00:00','',NULL,NULL,'2010-10-05 00:00:00',NULL,'','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Normeide Cerqueira de Souza ','Agnaldo Rios da Silva ',NULL,'16111589203','2003-11-18 00:00:00',NULL,'Ruy Barbosa','1393575560',NULL,'','','670.00',NULL,'2010-10-05 00:00:00',NULL,'','110','119551560507','086',32,NULL,1,1,17,149,NULL,2,150,'Brasileiro','Ruy Barbosa','BA','',3,'Bradesco','481-2','138395-7','SALARIO',30,'BA','INDETERMINADO',2,1,1,'BA','\0',NULL,'\0',NULL,'','BRANCO'),(8,'',NULL,'',NULL,NULL,NULL,NULL,'28435226840',50689,'2009-06-16 00:00:00','',NULL,NULL,'2010-09-01 00:00:00','2010-08-16 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Janete Alves da Silva','Florisval Aureliano da Silva ','1995-06-26 00:00:00','125.52709.48.8','2007-03-24 00:00:00',NULL,'Santo André','29800835-X',NULL,'','','1000.00',NULL,'2010-09-01 00:00:00',NULL,'','0261','2808239701 / 59','375',39,NULL,1,1,15,150,NULL,14,122,'Brasileira ','Santo André','SP','',1,'Bradesco','904-0','4369-9','CORRENTE',200,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','BRANCO'),(9,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'36713676871',NULL,'1999-05-11 00:00:00',NULL,NULL,NULL,'2008-08-12 00:00:00','2008-08-11 00:00:00','0','0',0,NULL,NULL,NULL,'Lindalva dos Santos','Jose Laurentino dos Santos','2011-01-17 00:00:00','20607124258','2000-03-31 00:00:00',NULL,'SSP','44.431.587.1',NULL,NULL,NULL,'43772.00',NULL,'2008-08-12 00:00:00','2008-08-19 00:00:00','','0','0','0',40,NULL,1,1,26,151,NULL,1,5,'Brasileira','Pesqueira','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'',NULL,'',NULL,NULL,NULL,NULL,'77124758815',91474,'2004-08-11 00:00:00','',NULL,NULL,'2010-11-17 00:00:00',NULL,'','',0,'QUARTASERIE_INCOMPLETA','DIVORCIADO',NULL,'Josefa Gomes da Silva ','João Gomes da Silva ',NULL,'10376119966','2004-08-12 00:00:00',NULL,'Minas Novas','74410921',NULL,'','','624.07',NULL,'2010-11-17 00:00:00',NULL,'','0134','82031890141','375',37,NULL,1,1,6,152,NULL,4,168,'Brasileiro','Minas Novas','MG','',NULL,'Bradesco','3338-3','4335-4','CORRENTE',90,'SP','INDETERMINADO',2,1,1,'MG','\0',NULL,'\0',NULL,'','PARDO'),(11,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'01645281302',NULL,'2011-01-17 00:00:00',NULL,NULL,NULL,'2008-10-01 00:00:00','2008-09-30 00:00:00','0','0',0,NULL,NULL,NULL,'Raimunda Maria Eulalia','Cantilo Jose Cirilo','2011-01-17 00:00:00','160.446.887.80','2001-08-08 00:00:00',NULL,'SSP','2.265.309',NULL,NULL,NULL,'43772.00',NULL,'2008-10-01 00:00:00','2008-11-01 00:00:00','','0145','034227891503','062',12,NULL,1,1,1,153,NULL,1,16,'Brasileira','Itaianopolis','PI','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'',NULL,'',NULL,NULL,NULL,NULL,'12445567858',59070,NULL,'',NULL,NULL,'2010-11-08 00:00:00',NULL,'','',0,'QUARTASERIE_INCOMPLETA','SOLTEIRO',NULL,'Maria Biata ','Adão de Paula','1998-09-22 00:00:00','12374551182','2006-03-15 00:00:00',NULL,'Diadema','238204121',NULL,'','','598.00',NULL,'2010-11-08 00:00:00',NULL,'','0399','172526780175','222',8,NULL,1,1,5,154,NULL,1,169,'Brasileira','São Paulo','SP','',NULL,'Bradesco ','0120-1','520445-3','CORRENTE',120,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','NEGRO'),(13,'',NULL,'',NULL,NULL,NULL,NULL,'27296308800',98566,'1993-02-04 00:00:00','',NULL,NULL,'2010-09-13 00:00:00','2011-01-17 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria Genoveva dos Santos ','Miguel Justino dos Santos ',NULL,'13797147898','2005-06-10 00:00:00',NULL,'Cubatão','29160609-X',NULL,'','','598.00',NULL,'2010-09-13 00:00:00',NULL,'','','','',32,NULL,1,1,33,155,NULL,1,129,'Brasileira ','Salgadinho','SP','',NULL,'Bradesco ','00481-2','0136101-5','SALARIO',160,'SP','INDETERMINADO',2,1,1,'PE','\0',NULL,'\0',NULL,'','NEGRO'),(14,'',NULL,'',NULL,NULL,NULL,NULL,'28422560852',63223,'1996-01-09 00:00:00','',NULL,NULL,'2009-12-10 00:00:00','2009-07-28 00:00:00','','',0,'PRIMEIROGRAU_COMPLETO','DIVORCIADO',NULL,'Alzira Gonçalves Galhardo ','Antonio Martins Galhardo',NULL,'13677992817','2000-03-22 00:00:00',NULL,'SP','297517454',NULL,'','','598.00',NULL,'2009-12-10 00:00:00',NULL,'','0122','2122502001 / 59','283',19,NULL,1,1,2,156,NULL,1,52,'Brasileira ','Diadema','SP','',NULL,'Bradesco ','3311-1','6462-9','SALARIO',209,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','BRANCO'),(15,'0','2011-01-17 00:00:00','0',NULL,NULL,NULL,NULL,'04846433803',NULL,'2011-01-17 00:00:00',NULL,NULL,NULL,'2009-08-07 00:00:00','2009-08-19 00:00:00','0','0',0,NULL,NULL,NULL,'Ondina Geralda de Araujo Martins','Jose Teodoro Martins','2011-01-17 00:00:00','106.530.922.85','1998-09-03 00:00:00',NULL,'SSP','13.782.238-8',NULL,NULL,NULL,'47274.00',NULL,'2009-08-07 00:00:00','2009-09-26 00:00:00','','0039','69919130167','217',39,NULL,1,1,17,157,NULL,1,35,'Brasileira','Guarulhos','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'25246835839',NULL,'1991-06-04 00:00:00',NULL,NULL,NULL,'2010-09-01 00:00:00','2010-08-20 00:00:00','0','0',0,NULL,NULL,NULL,'Severina Maria Gabriel ','Antonio Vicente Gabriel ','2011-01-03 00:00:00','20366831296','2009-05-20 00:00:00',NULL,'PE','282977661',NULL,NULL,NULL,'598.00',NULL,'2010-09-01 00:00:00',NULL,'','151','39087860876','119',32,NULL,1,1,33,158,NULL,1,116,'Brasileira','Igarassu','PE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'0','2011-01-18 00:00:00','0',NULL,NULL,NULL,NULL,'30352501898',NULL,'2011-01-18 00:00:00',NULL,NULL,NULL,'2009-05-13 00:00:00','2009-05-12 00:00:00','0','0',0,NULL,NULL,NULL,'Josefa nde Goes Barreto','Ezequias do Nascimento','2011-01-18 00:00:00','131.70873.813','2009-04-30 00:00:00',NULL,'SSP','46827747X',NULL,NULL,NULL,'47274.00',NULL,'2009-05-13 00:00:00','2009-08-01 00:00:00','','0','0','0',12,NULL,1,1,6,167,NULL,1,27,'Brasileiro','Ribeirão Pires','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'B','2011-01-20 00:00:00','',NULL,NULL,NULL,NULL,'24871921867',79845,'2011-01-20 00:00:00','',NULL,NULL,'2009-01-05 00:00:00','2009-01-05 00:00:00','','',0,'SUPERIOR_COMPLETO','CASADO',NULL,'Nerci Colonhezi Basilio','Elisconidio da Silva Basilio','2011-01-20 00:00:00','12501113928','2011-01-20 00:00:00',NULL,'SSP','284447171',NULL,'','','3300.00',NULL,'2011-01-20 00:00:00','2011-01-20 00:00:00','','','','306',39,NULL,1,1,18,172,NULL,6,21,'Brasileiro','Santo André','SP','',4,'','','',NULL,156,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0','1973-10-12 00:00:00','Elisabete Felicio Colonhezi Basilio','BRANCO'),(19,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'39497395809',1622,'2008-05-08 00:00:00','',NULL,NULL,'2008-05-12 00:00:00','2008-05-12 00:00:00','0','0',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria dos Anjos Lopes de Carvalho','Ermelindo Pereira de Carvalho','2008-05-27 00:00:00','16267126537','2002-09-09 00:00:00',NULL,'SSP','410821081',NULL,'','','43772.00',NULL,'2008-05-05 00:00:00','2009-04-30 00:00:00','','01111','2447334800116','382',12,NULL,1,1,30,200,NULL,1,2,'Brasileiro','Malacacheta MG','SP','',7,'','','',NULL,206,'','INDETERMINADO',2,1,1,'','\0',NULL,'\0',NULL,'','BRANCO'),(20,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'06899754819',NULL,'2002-01-08 00:00:00',NULL,NULL,NULL,'2008-08-12 00:00:00','2008-08-11 00:00:00','0','0',0,NULL,NULL,NULL,'Maria do Rosario de Moraes','Pedro Alcanjo de Moraes','2011-01-20 00:00:00','10825713967','2002-01-08 00:00:00',NULL,'SSP','14.573.497-3',NULL,NULL,NULL,'533.41',NULL,'2008-08-12 00:00:00','2008-10-28 00:00:00','','0074','188079740175','263',12,NULL,1,1,35,176,NULL,15,4,'Brasileiro','São Paulo','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'89721721387',NULL,'2000-07-11 00:00:00',NULL,NULL,NULL,'2008-01-01 00:00:00','2008-01-30 00:00:00','0','0',0,NULL,NULL,NULL,'Albertina da Silva Sousa','Sabino Alexandre de Sousa','2011-01-20 00:00:00','200.546.450.47','2011-01-20 00:00:00',NULL,'SSP','2.178.490',NULL,NULL,NULL,'43772.00',NULL,'2008-11-10 00:00:00','2008-09-04 00:00:00','','0','0','0',12,NULL,1,1,30,177,NULL,1,14,'Brasileira','Itaianopolis','PI','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'38888649840',NULL,'2010-11-26 00:00:00',NULL,NULL,NULL,'2010-12-01 00:00:00','2010-11-26 00:00:00','0','0',0,NULL,NULL,NULL,'Márcia Cristina Celice ','Gileno de Souza Nunes ','2009-06-08 00:00:00','2011461135601','2010-05-06 00:00:00',NULL,'Santo André','484601428',NULL,NULL,NULL,'598.00',NULL,'2010-12-01 00:00:00',NULL,'','0133','361730270167','364',25,NULL,1,1,8,178,NULL,1,174,'Brasileira','Santo André','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'27224757829',NULL,'2008-12-01 00:00:00',NULL,NULL,NULL,'2008-01-01 00:00:00','2008-01-25 00:00:00','0','0',0,NULL,NULL,NULL,'Edite Pereira Dos Santos','Valmir CIrino Dos Santos','2007-12-01 00:00:00','128036559936','2011-01-20 00:00:00',NULL,'SSP','34.664.975-4',NULL,NULL,NULL,'43772.00',NULL,'2008-01-01 00:00:00','2009-07-01 00:00:00','','0092','6148197515','263',12,NULL,1,1,35,179,NULL,1,19,'Brasileira','Xique Xique','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'33057992854',NULL,'2011-01-20 00:00:00',NULL,NULL,NULL,'2007-09-10 00:00:00','2007-09-09 00:00:00','0','0',0,NULL,NULL,NULL,'Rosilene Alves Rufino','Moacir Marques Rufino','2008-10-10 00:00:00','1.339.768.689-9','2011-01-20 00:00:00',NULL,'SSP','43.079.434-4',NULL,NULL,NULL,'43772.00',NULL,'2007-09-10 00:00:00','2009-01-01 00:00:00','','0','0','0',12,NULL,1,1,32,180,NULL,1,13,'Brasileiro','São Bernardo do Campo','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'13389605800',30711,'1992-01-08 00:00:00','',NULL,NULL,'2010-10-14 00:00:00','2011-01-03 00:00:00','0','0',0,'SEGUNDOGRAU_COMPLETO','DIVORCIADO',NULL,'Neide Vitorino de Bastos ','João Vitaliano de Bastos ','1993-05-14 00:00:00','12487701414','2008-04-25 00:00:00',NULL,'Cubatão','145481761',NULL,'','','598.00',NULL,'2010-10-14 00:00:00',NULL,'','0106','42669240132','119',32,NULL,1,1,34,181,NULL,1,153,'Brasileira ','Goianinha','SP','',NULL,'Bradesco ','481-2','138451-1','SALARIO',160,'SP','INDETERMINADO',2,1,1,'RN','\0',NULL,'\0',NULL,'','PARDO'),(26,'0','2011-01-20 00:00:00','0',NULL,NULL,NULL,NULL,'26748978807',0,'2011-01-18 00:00:00','',NULL,NULL,'2008-06-02 00:00:00','2007-06-01 00:00:00','0','0',0,'QUARTASERIE_INCOMPLETA','CASADO',NULL,'Maria de Assis da Fonseca','Jorge Reduzino da Fonseca','2008-06-02 00:00:00','12600444779','2007-12-05 00:00:00',NULL,'SSP','292131665',NULL,'','','43772.00',NULL,'2008-06-02 00:00:00','2009-03-29 00:00:00','','0081','185370810116','263',6,NULL,1,1,15,182,NULL,1,3,'Brasileiro','Santo Andre','SP','',NULL,'','','',NULL,0,'','INDETERMINADO',2,1,6,'SP','\0',NULL,'\0',NULL,'','NEGRO'),(27,'',NULL,'',NULL,NULL,NULL,NULL,'37663643836',26511,NULL,'',NULL,NULL,'2010-02-18 00:00:00','2010-02-17 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Cátia Regina Cláudio ','Gersino Efigênio Soliano',NULL,'13752442777','2007-02-16 00:00:00',NULL,'SBC','466048774',NULL,'','','598.00',NULL,'2010-02-18 00:00:00',NULL,'','0175','377097790191','414',39,NULL,1,1,18,183,NULL,1,67,'Brasileiro','São Bernardo do Campo','SP','',NULL,'Bradesco','302-6','324320-6','SALARIO',348,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0','1989-05-26 00:00:00','','NEGRO'),(28,'0','2011-01-21 00:00:00','0',NULL,NULL,NULL,NULL,'34824422825',NULL,'2002-10-17 00:00:00',NULL,NULL,NULL,'2008-10-01 00:00:00','2008-09-30 00:00:00','0','0',0,NULL,NULL,NULL,'Cleonice Batista','Sinesio do Carmo Silva','2002-10-17 00:00:00','20902215390','2001-10-07 00:00:00',NULL,'SSP','40.206.253-X',NULL,NULL,NULL,'43772.00',NULL,'2007-10-01 00:00:00','2009-02-26 00:00:00','','0110','338391600167','263',12,NULL,1,1,15,184,NULL,1,15,'Brasileiro','Santo Andre','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'0','2011-01-19 00:00:00','0',NULL,NULL,NULL,NULL,'26657127847',NULL,'2011-01-03 00:00:00',NULL,NULL,NULL,'2008-08-20 00:00:00','2008-08-19 00:00:00','0','0',0,NULL,NULL,NULL,'Maria Aparecida Orlando','Paulo Orlando Netto','2008-08-20 00:00:00','12710345856','2005-03-31 00:00:00',NULL,'SSP','245944163',NULL,NULL,NULL,'43772.00',NULL,'2007-08-20 00:00:00','2008-11-01 00:00:00','','0084','255511350135','263',40,NULL,1,1,26,185,NULL,1,6,'Brasilleiro','Vila Guilherme','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'35306409806',31531,'2011-01-03 00:00:00','',NULL,NULL,'2009-12-08 00:00:00','2009-12-05 00:00:00','03/01/2011','0',0,'SEGUNDOGRAU_INCOMPLETO','SOLTEIRO',NULL,'Maria Neuza Rodrigues','João Avelino dos Santos','2011-01-03 00:00:00','20140067811','2009-03-20 00:00:00',NULL,'SSP','450091326',NULL,'','','520.00',NULL,'2010-03-08 00:00:00','2010-04-21 00:00:00','','410','342103930183','227',42,NULL,1,1,30,201,NULL,1,72,'Brasileiro','São Paulo','SP','',1,'','','',NULL,311,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','PARDO'),(31,'0','2011-01-21 00:00:00','0',NULL,NULL,NULL,NULL,'39523268817',NULL,'2006-05-06 00:00:00',NULL,NULL,NULL,'2010-06-01 00:00:00','2010-08-19 00:00:00','0','0',0,NULL,NULL,NULL,'Maria Josefa Ferreira','Everaldo Moreira da Silva','2010-06-01 00:00:00','20140067811','2005-05-06 00:00:00',NULL,'SSP','41.082.045-3',NULL,NULL,NULL,'54267.00',NULL,'2009-06-01 00:00:00','2011-01-20 00:00:00','','130','353333920116','382',5,NULL,1,1,9,191,NULL,4,84,'Brasileiro','Maua','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'0','2007-01-16 00:00:00','0',NULL,NULL,NULL,NULL,'15102936808',NULL,'2007-11-06 00:00:00',NULL,NULL,NULL,'2008-11-10 00:00:00','2008-11-07 00:00:00','0','0',0,NULL,NULL,NULL,'Julia Pereira','João Galdino Ferreira','2007-11-10 00:00:00','1.253.9835661','2006-09-11 00:00:00',NULL,'SSP','27.974.181-9',NULL,NULL,NULL,'43762.00',NULL,'2008-11-10 00:00:00','2009-06-25 00:00:00','','39','258858970141','395',13,NULL,1,1,16,193,NULL,1,18,'Brasileiro','Xique Xique','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'',NULL,'',NULL,NULL,NULL,NULL,'85995576372',14107,'2009-05-11 00:00:00','',NULL,NULL,'2010-09-27 00:00:00',NULL,'','',0,'SEGUNDOGRAU_COMPLETO',NULL,NULL,'Francisca Vieira de Souza ','Raimundo Pereira de Souza',NULL,'13433130816','1997-02-25 00:00:00',NULL,'Campo Maior ','1860721',NULL,'','','598.00',NULL,'2010-09-27 00:00:00',NULL,'','','','',32,NULL,1,1,33,194,NULL,1,145,'Brasileira ','Campo Maior ','PI','',NULL,'Bradesco','481-2','0136941-5','SALARIO',366,'SP','INDETERMINADO',2,1,1,'PI','\0',NULL,'\0',NULL,'','PARDO'),(35,'0','2005-10-11 00:00:00','0',NULL,NULL,NULL,NULL,'37705625857',NULL,'2006-01-02 00:00:00',NULL,NULL,NULL,'2009-01-05 00:00:00','2009-01-02 00:00:00','0','0',0,NULL,NULL,NULL,'Maria Jose Ferreira','Everaldo Moreira da Silva','2009-01-05 00:00:00','134.33130816','2005-03-04 00:00:00',NULL,'SSP','41082063-5',NULL,NULL,NULL,'43772.00',NULL,'2009-01-05 00:00:00','2009-02-02 00:00:00','','0130','347253200124','382',12,NULL,1,1,32,195,NULL,1,22,'Brasileiro','Rio Claro','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'31613698828',NULL,'2001-09-04 00:00:00',NULL,NULL,NULL,'2010-09-02 00:00:00','2011-01-03 00:00:00','0','0',0,NULL,NULL,NULL,'Iraci Melo dos Santos ','Clóvis José dos Santos ','2007-12-12 00:00:00','1296282349301','1993-01-10 00:00:00',NULL,'Cumbe','1305628',NULL,NULL,NULL,'598.00',NULL,'2010-09-02 00:00:00',NULL,'','0147','12481132100','119',32,NULL,1,1,33,196,NULL,1,125,'Brasileira ','Cumbe ','SE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'0','2007-01-01 00:00:00','0',NULL,NULL,NULL,NULL,'12948660874',NULL,'2007-01-08 00:00:00',NULL,NULL,NULL,'2008-09-10 00:00:00','2008-09-09 00:00:00','0','0',0,NULL,NULL,NULL,'Leonor dos Santos','a','2007-09-10 00:00:00','12137157375','2001-03-12 00:00:00',NULL,'SSP','22030.0951',NULL,NULL,NULL,'43772.00',NULL,'2008-09-10 00:00:00','2007-10-23 00:00:00','','0036','101049940132','263',12,NULL,1,1,30,197,NULL,1,10,'Brasileira','Ilha das Flores','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'30426355890',NULL,'2011-01-03 00:00:00',NULL,NULL,NULL,'2010-06-14 00:00:00','2010-06-11 00:00:00','0','0',0,NULL,NULL,NULL,'Benedita Godoe','José Geraldo da Silva ','2011-01-03 00:00:00','13101337819','2007-07-27 00:00:00',NULL,'São Paulo','366607959',NULL,NULL,NULL,'598.00',NULL,'2010-06-14 00:00:00',NULL,'','0155','222522990124','403',17,NULL,1,1,8,198,NULL,1,87,'Brasileira ','Pilar','SP','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'25472252806',1622,'2008-08-14 00:00:00',NULL,NULL,NULL,'2009-12-08 00:00:00','2009-12-07 00:00:00','0','0',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Aparecida Ramos de Souza','Nelson Fernandes de Souza','2011-01-03 00:00:00','12861960770','2007-07-25 00:00:00',NULL,'SSP','298611624',NULL,NULL,NULL,'472.74',NULL,'2008-12-08 00:00:00','2010-01-12 00:00:00','','062','2555499501','263',12,NULL,1,1,30,200,NULL,1,51,'Brasileiro','Suzano','SP','',7,NULL,NULL,NULL,NULL,206,'SP','INDETERMINADO',NULL,1,NULL,'SP',NULL,NULL,'\0',NULL,'','PARDO'),(41,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'34085500856',89539,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-08-30 00:00:00','0','0',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Luzinete Viera da Cruz','Eufrazio Viera da Cruz','2011-01-03 00:00:00','13461527776','2008-11-18 00:00:00',NULL,'SSP','264163084',NULL,'','','472.74',NULL,'2009-10-01 00:00:00','2010-03-09 00:00:00','','0194','302769290132','374',41,NULL,1,1,3,202,NULL,1,37,'Brasileira','Serrolandia','SP','',1,'','','',NULL,277,'SP','INDETERMINADO',2,1,1,'BA','\0',NULL,'\0',NULL,'','PARDO'),(42,'0','2011-01-03 00:00:00','0',NULL,NULL,NULL,NULL,'08765102410',60459,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-09-30 00:00:00','0','0',0,'PRIMEIROGRAU_COMPLETO','SOLTEIRO',NULL,'Maria da Paz Silva','João Benedito da Silva','2009-10-01 00:00:00','20068207152','2008-03-03 00:00:00',NULL,'SSP','8050067',NULL,'','','472.74',NULL,'2009-10-01 00:00:00','2009-12-04 00:00:00','','0064','073018890892','048',4,NULL,1,1,16,205,NULL,1,42,'Brasileira','Altino','SP','',7,'','','',NULL,8,'PE','INDETERMINADO',2,1,1,'PE','\0',NULL,'\0',NULL,'','PARDO'),(43,'',NULL,'',NULL,NULL,NULL,NULL,'28791722845',5273,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-09-14 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Valdete Andrade Pereira','','2011-01-03 00:00:00','12718620147','2009-07-17 00:00:00',NULL,'SSP','424734540',NULL,'','','472.74',NULL,'2009-10-01 00:00:00','2009-10-28 00:00:00','','','','',42,NULL,1,1,31,206,NULL,1,45,'Brasileiro','Butanta','SP','',4,'','','',NULL,236,'SP','INDETERMINADO',2,NULL,1,'SP','\0',NULL,'\0',NULL,'','NEGRO'),(44,'',NULL,'',NULL,NULL,NULL,NULL,'14762893870',60659,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-09-14 00:00:00','','',0,'ANALFABETO','SOLTEIRO',NULL,'Francisca Duarte Ferreira','Antonio Ribeiro Campos','2011-01-03 00:00:00','12393634438','2007-09-21 00:00:00',NULL,'SSP','37562904X',NULL,'','','472.74',NULL,'2009-10-01 00:00:00','2009-10-10 00:00:00','','0322','269840740159','192',42,NULL,1,1,30,207,NULL,1,44,'Brasileiro','Carius','SP','',1,'','','',NULL,174,'SP','INDETERMINADO',2,1,1,'CE','\0',NULL,'\0',NULL,'','PARDO'),(45,'',NULL,'',NULL,NULL,NULL,NULL,'30997145854',62713,NULL,'',NULL,NULL,'2009-02-13 00:00:00','2009-02-12 00:00:00','','',0,'PRIMEIROGRAU_COMPLETO','SEPARADO',NULL,'Maria José Costa ','Rosel Pio Costa ',NULL,'20962076249','2003-08-19 00:00:00',NULL,'São Luis','385040040',NULL,'','','1195.00',NULL,'2009-02-13 00:00:00',NULL,'','097','22551261139','339',12,NULL,1,1,9,212,NULL,7,24,'Brasileira ','São Luis ','MA','',2,'Bradesco ','121-P','710600-9','SALARIO',259,'SP','INDETERMINADO',2,1,1,'MA','\0',NULL,'\0',NULL,'','PARDO'),(46,'',NULL,'',NULL,NULL,NULL,NULL,'34413609824',91980,NULL,'',NULL,NULL,'2009-12-10 00:00:00','2009-12-09 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria de Lourdes Avelino da Silva','Elizio Pereira Borges','2009-12-10 00:00:00','13677992817',NULL,NULL,'SSP','452503887',NULL,'','','472.74',NULL,'2009-12-10 00:00:00',NULL,'','060','2945OO940141','372',19,NULL,1,1,9,213,NULL,1,54,'Brasilleira','Itapcirica da Serra','SP','',1,'','','',NULL,327,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','PARDO'),(47,'',NULL,'',NULL,NULL,NULL,NULL,'31321749805',32567,NULL,'',NULL,NULL,'2010-01-04 00:00:00',NULL,'','',0,'PRIMEIROGRAU_COMPLETO','CASADO',NULL,'Natailde da Silva Novais ','Aderito Bispo dos Santos ',NULL,'20432987783','2000-11-10 00:00:00',NULL,'Salvador','37218036-X',NULL,'','','598.00',NULL,'2010-01-04 00:00:00',NULL,'','0622','323554660116','371',16,NULL,1,1,20,214,NULL,1,55,'Brasileira ','Salvador ','BA','',1,'Bradesco','1823-6','1340-4','CORRENTE',211,'SP','INDETERMINADO',2,1,2,'BA','\0',NULL,'\0','1965-05-06 00:00:00','Weligton Francisco de Oliveira ','PARDO'),(48,'',NULL,'',NULL,NULL,NULL,NULL,'31321749805',32567,NULL,'',NULL,NULL,'2008-08-21 00:00:00','2008-08-19 00:00:00','','',0,'PRIMEIROGRAU_COMPLETO','CASADO',NULL,'Natailde da Silva Novais ','Aderito Bispo dos Santos ',NULL,'13667725778','2000-11-10 00:00:00',NULL,'São Paulo ','37218036-X',NULL,'','','437.72',NULL,'2008-08-21 00:00:00','2009-03-31 00:00:00','','0622','323554660116','371',4,NULL,1,1,15,215,NULL,1,7,'Brasileira ','Salvador','SP','',1,'Bradesco ','1823-6','1340-4','CORRENTE',211,'SP','INDETERMINADO',2,1,5,'BA','\0',NULL,'\0','1965-05-06 00:00:00','Weligton Francisco de Oliveira ','PARDO'),(49,'',NULL,'',NULL,NULL,NULL,NULL,'17694445807',36655,NULL,'',NULL,NULL,'2009-11-03 00:00:00','2009-11-02 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria Cavalheiro da Mota','Dirceu Gonçalves da Mota','2009-11-03 00:00:00','12531003454',NULL,NULL,'SSP','287089666',NULL,'','','472.74',NULL,'2009-11-03 00:00:00','2010-01-04 00:00:00','','147','268696680132','374',42,NULL,1,1,37,216,NULL,1,49,'Brasileira','Ribeira','SP','',1,'','','',NULL,294,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','PARDO'),(50,'',NULL,'',NULL,NULL,NULL,NULL,'12470861861',61107,NULL,'',NULL,NULL,'2010-11-13 00:00:00','2010-11-23 00:00:00','','',0,'QUINTA_OITAVA_INCOMPLETA','SOLTEIRO',NULL,'Benedita Baldoino Vieira','Antonio Vieira ','1975-01-01 00:00:00','10659800621','1987-05-28 00:00:00',NULL,'Ribeirão P','108482078',NULL,'','','598.00',NULL,'2010-11-13 00:00:00',NULL,'','0083','061781170175','382',12,NULL,1,1,30,217,NULL,1,170,'Brasileira ','Ribeirão Pires','SP','',2,'Bradesco ','121-0','602816-0','CORRENTE',177,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','BRANCO'),(51,'',NULL,'',NULL,NULL,NULL,NULL,'03809421510',68434,NULL,'',NULL,NULL,'2009-10-13 00:00:00','2009-10-13 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Miriam de Jesus','','2009-10-13 00:00:00','16528465224',NULL,NULL,'SSP','1483226549',NULL,'','','472.74',NULL,'2009-10-13 00:00:00','2010-05-20 00:00:00','','0125','127214180566','135',42,NULL,1,1,37,218,NULL,1,47,'Brasileiro','Almadina','SP','',1,'','','',NULL,342,'SP','INDETERMINADO',2,1,1,'CE','\0',NULL,'\0',NULL,'','NEGRO'),(52,'',NULL,'',NULL,NULL,NULL,NULL,'33051532886',72062,'1998-02-17 00:00:00','',NULL,NULL,'2010-09-01 00:00:00','2010-08-20 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Judite Maria de Lima Pereira ','Aldecinio Manoel Pereira ',NULL,'16616057934','1997-03-17 00:00:00',NULL,'Surubim ','5847121',NULL,'','','598.00',NULL,'2010-09-01 00:00:00',NULL,'','0134','59982430884','119',32,NULL,1,1,6,219,NULL,1,111,'Brasileira ','Surubim ','PE','',2,'Bradesco ','481-2','136159-7','SALARIO',237,'SP','INDETERMINADO',2,1,1,'PE','\0',NULL,'\0',NULL,'','NEGRO'),(53,'',NULL,'',NULL,NULL,NULL,NULL,'29794015873',70346,'2011-01-03 00:00:00','',NULL,NULL,'2010-02-03 00:00:00','2010-02-02 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','CASADO',NULL,'Matilde de souza Rodrigues','Genesio Alves Rodrigues','2010-02-03 00:00:00','13059265932','2003-07-24 00:00:00',NULL,'SSP','348440329',NULL,'','','520.00',NULL,'2010-02-03 00:00:00','2010-03-01 00:00:00','','183','212906200183','339',6,NULL,1,1,16,220,NULL,1,65,'Brasileira','Santo Andre','SP','',7,'','','',NULL,206,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0','1979-08-07 00:00:00','Edson Santos Rodrigues','PARDO'),(54,'',NULL,'',NULL,NULL,NULL,NULL,'89483804434',57308,'1991-09-04 00:00:00','',NULL,NULL,'2010-09-10 00:00:00','2010-09-02 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','CASADO',NULL,'Rizomar Maria da Conceição Santos ','Antonio Miguel dos Santos ',NULL,'12515529838','2009-11-19 00:00:00',NULL,'São Paulo','539044581',NULL,'','','805.00',NULL,'2010-09-10 00:00:00',NULL,'','0092','020387831708','389',37,NULL,1,1,28,221,NULL,9,128,'Brasileira','Flexeiras','SP','',1,'Bradesco','601-7','1001274-0','POUPANCA',11,'AL','INDETERMINADO',2,1,1,'AL','\0',NULL,'\0','1969-10-25 00:00:00','Valdomiro Domingos da Silva Filho','NEGRO'),(55,'',NULL,'',NULL,NULL,NULL,NULL,'26441001861',71699,'2011-01-03 00:00:00','',NULL,NULL,'2010-02-06 00:00:00','2010-02-05 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Terezinha Antonio dos Santos Viana','Osmar Ferraz Viana','2010-02-06 00:00:00','12545549837','1998-10-13 00:00:00',NULL,'SSP','302802848',NULL,'','','520.00',NULL,'2010-02-06 00:00:00','2010-02-19 00:00:00','','282','268905760124','374',42,NULL,1,1,31,222,NULL,1,63,'Brasileiro','São Paulo','SP','',1,'','','',NULL,183,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','PARDO'),(56,'',NULL,'',NULL,NULL,NULL,NULL,'15561203894',27012,'1989-09-04 00:00:00','',NULL,NULL,'2010-09-01 00:00:00','2010-10-04 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria do Rosário','José Antonio Henrique ',NULL,'12400132439','1989-10-16 00:00:00',NULL,'Boa Espera','252842182',NULL,'','','598.00',NULL,'2010-09-01 00:00:00',NULL,'','0059','206767360167','367',19,NULL,1,1,9,223,NULL,1,124,'Brasileira','Boa Esperança','MG','',1,'Bradesco ','3444-4','17926-4','SALARIO',126,'SP','INDETERMINADO',2,1,1,'MG','\0',NULL,'\0',NULL,'','NEGRO'),(57,'',NULL,'',NULL,NULL,NULL,NULL,'01058425595',80142,'2011-01-03 00:00:00','',NULL,NULL,'2010-02-20 00:00:00','2010-02-19 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Amelia Alves de Souza','Bartolomeu de Souza','2010-02-20 00:00:00','13303021774','2010-01-05 00:00:00',NULL,'SSP','398417312',NULL,'','','520.00',NULL,'2010-02-20 00:00:00','2010-03-08 00:00:00','','','','',42,NULL,1,1,36,224,NULL,1,68,'Brasileiro','Xique Xique','SP','',1,'','','',NULL,85,'BA',NULL,2,1,1,'BA','\0',NULL,'\0',NULL,'','NEGRO'),(58,'',NULL,'',NULL,NULL,NULL,NULL,'08734859802',20195,'2008-05-15 00:00:00','',NULL,NULL,'2010-09-01 00:00:00','2010-08-23 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria do Carmo Oliveira ','Severino Correia Sobrinho',NULL,'12080395485','1981-10-30 00:00:00',NULL,'Cubatão','16417366',NULL,'','','858.00',NULL,'2010-09-01 00:00:00',NULL,'','0045','42383110116','119',32,NULL,1,1,33,225,NULL,10,115,'Brasileira','Tuparetama','SP','',1,'Bradesco','302-6','324022-3','SALARIO',35,'SP','INDETERMINADO',2,1,1,'PE','\0',NULL,'\0',NULL,'','BRANCO'),(59,'',NULL,'',NULL,NULL,NULL,NULL,'12451723874',92061,NULL,'',NULL,NULL,'2009-08-03 00:00:00','2009-07-27 00:00:00','','',0,'PRIMEIROGRAU_COMPLETO','CASADO',NULL,'Elena Ercília de Souza','Jair Silva de Souza',NULL,'12344937554','2006-06-24 00:00:00',NULL,'SBC','220918831',NULL,'','','672.35',NULL,'2009-08-03 00:00:00',NULL,'','0009','204729220108','409',15,NULL,1,1,11,226,NULL,11,33,'Brasileira','São Bernardo do Campo','SP','',5,'Bradesco','302-6','324022-3','SALARIO',81,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0','1968-01-08 00:00:00','Eliesio Vieira Lima','NEGRO'),(60,'',NULL,'',NULL,NULL,NULL,NULL,'13486893823',8052,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-09-21 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Ana Carmina de Carvalho','Francisco Carmino de Carvalho','2009-10-01 00:00:00','12379400190','1988-09-27 00:00:00',NULL,'SSP','1074855',NULL,'','','472.74',NULL,'2009-10-01 00:00:00','2010-03-23 00:00:00','','0092','302433280175','263',12,NULL,1,1,1,227,NULL,1,40,'Brasileiro','Campinas do Piaui','SP','',1,'','','',NULL,9,'PI','INDETERMINADO',2,1,1,'PI','\0',NULL,'\0',NULL,'','BRANCO'),(61,'',NULL,'',NULL,NULL,NULL,NULL,'31459833856',18519,'2000-12-04 00:00:00','',NULL,NULL,'2010-09-01 00:00:00','2010-08-20 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Salete Souza da Silva Sampaio','Francisco Carlos Sampaio',NULL,'16651367073','2000-08-26 00:00:00',NULL,'Cubatão','408268682',NULL,'','','656.00',NULL,'2010-09-01 00:00:00',NULL,'','0118','296393450124','119',32,NULL,1,1,34,228,NULL,12,112,'Brasileira ','Cubatão','SP','',3,'Bradesco','481-2','136157-0','SALARIO',276,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','NEGRO'),(62,'',NULL,'',NULL,NULL,NULL,NULL,'45529876315',98637,'2011-01-03 00:00:00','',NULL,NULL,'2009-10-01 00:00:00','2009-09-30 00:00:00','','',0,'ANALFABETO','SOLTEIRO',NULL,'Maria Antonia de Jesus Filha','Jose Raimundo da Silva','2009-10-01 00:00:00','19008016349','2009-07-20 00:00:00',NULL,'SSP','346650628',NULL,'','','472.74',NULL,'2099-10-01 00:00:00','2009-12-10 00:00:00','','0346','031434390787','307',12,NULL,1,1,33,229,NULL,1,39,'Brasileiro','Jardim','SP','',2,'','','',NULL,321,'SP','INDETERMINADO',2,1,1,'CE','\0',NULL,'\0',NULL,'','BRANCO'),(63,'',NULL,'',NULL,NULL,NULL,NULL,'79724728315',86669,NULL,'',NULL,NULL,'2010-06-01 00:00:00','2010-06-09 00:00:00','','',0,'SEGUNDOGRAU_COMPLETO','CASADO',NULL,'Maria das Graças Vieira Ramos ','Antonio Rivaldo de Figueiredo ',NULL,'12647981819','1994-08-15 00:00:00',NULL,'Piauí','112518789',NULL,'','','598.00',NULL,'2010-06-01 00:00:00',NULL,'','158','19387961520','005',NULL,NULL,1,1,NULL,264,NULL,1,85,'Brasileira','Piauí','PI','',NULL,'Bradesco','481-2','136332-8','CORRENTE',377,'SP','INDETERMINADO',2,1,1,'PI','\0',NULL,'\0',NULL,'Francisco Valdinar Ramos Vieira ','BRANCO'),(64,'',NULL,'',NULL,NULL,NULL,NULL,'16950304862',4091,'1991-07-25 00:00:00','',NULL,NULL,'2011-02-11 00:00:00',NULL,'','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Iraci Santana da Cruz ','Reginaldo Soares da Cruz ',NULL,'12485858340','2005-07-12 00:00:00',NULL,'São Paulo','283008143',NULL,'','','598.00',NULL,'2011-02-11 00:00:00',NULL,'','0134','196417440191','119',NULL,NULL,1,1,NULL,269,NULL,1,205,'Brasileira ','São Paulo ','SP','',NULL,'','','',NULL,160,'SP','INDETERMINADO',2,1,1,'SP','\0',NULL,'\0',NULL,'','PARDO'),(65,'',NULL,'',NULL,NULL,NULL,NULL,'13389118802',83789,'2010-08-31 00:00:00','',NULL,NULL,'2011-02-11 00:00:00',NULL,'','',0,'SEGUNDOGRAU_COMPLETO','SOLTEIRO',NULL,'Maria Francisca Ferreira ','Josuel Bernanrdo de Sousa',NULL,'12554169839','2004-12-29 00:00:00',NULL,'Cabo','273465624',NULL,'','','598.00',NULL,'2011-02-11 00:00:00',NULL,'','0109','201154080116','119',NULL,NULL,1,1,NULL,270,NULL,1,204,'Brasileira ','Cabo','PE','',NULL,'','','',NULL,142,'SP','INDETERMINADO',2,1,1,'PE','\0',NULL,'\0',NULL,'','BRANCO');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosjornada`
--

LOCK TABLES `horariosjornada` WRITE;
/*!40000 ALTER TABLE `horariosjornada` DISABLE KEYS */;
INSERT INTO `horariosjornada` VALUES (1,0,'1400','0600','1200','1100',NULL),(2,1,'1400','0600','1200','1100',NULL),(3,2,'1400','0600','1200','1100',NULL),(4,3,'1400','0600','1200','1100',NULL),(5,4,'1400','0600','1200','1100',NULL),(6,5,'1700','0700','1300','1200',NULL),(7,6,'','','','',NULL),(8,0,'1500','0600','1200','1100',NULL),(9,1,'1500','0600','1200','1100',NULL),(10,2,'1500','0600','1200','1100',NULL),(11,3,'1500','0600','1200','1100',NULL),(12,4,'1500','0600','1200','1100',NULL),(13,5,'1000','0600','1000','0900',NULL),(14,6,'','','','',NULL),(15,0,'1500','0600','1200','1100',NULL),(16,1,'1500','0600','1200','1100',NULL),(17,2,'1500','0600','1200','1100',NULL),(18,3,'1500','0600','1200','1100',NULL),(19,4,'1500','0600','1200','1100',NULL),(20,5,'1000','0600','1000','0900',NULL),(21,6,'','','','',NULL),(22,0,'1600','0600','1200','1100',NULL),(23,1,'1600','0600','1200','1100',NULL),(24,2,'1600','0600','1200','1100',NULL),(25,3,'1600','0600','1200','1100',NULL),(26,4,'1500','0600','1200','1100',NULL),(27,5,'','','','',NULL),(28,6,'','','','',NULL),(29,0,'1400','0600','1200','1100',NULL),(30,1,'1400','0600','1200','1100',NULL),(31,2,'1400','0600','1200','1100',NULL),(32,3,'1400','0600','1200','1100',NULL),(33,4,'1400','0600','1200','1100',NULL),(34,5,'1700','0700','1300','1200',NULL),(35,6,'','','','',NULL),(36,0,'1400','0600','1200','1100',NULL),(37,1,'1400','0600','1200','1100',NULL),(38,2,'1400','0600','1200','1100',NULL),(39,3,'1400','0600','1200','1100',NULL),(40,4,'1400','0600','1200','1100',NULL),(41,5,'1700','0700','1300','1200',NULL),(42,6,'','','','',NULL),(43,0,'1400','0600','1200','1100','\0'),(44,1,'1400','0600','1200','1100','\0'),(45,2,'1400','0600','1200','1100','\0'),(46,3,'1400','0600','1200','1100','\0'),(47,4,'1400','0600','1200','1100','\0'),(48,5,'1700','0700','1300','1200','\0'),(49,6,'','','','','\0'),(50,0,'1600','0600','1200','1100','\0'),(51,1,'1600','0600','1200','1100','\0'),(52,2,'1600','0600','1200','1100','\0'),(53,3,'1600','0600','1200','1100','\0'),(54,4,'1500','0600','1200','1100','\0'),(55,5,'','','','','\0'),(56,6,'','','','','\0'),(57,0,'1450','0630','1230','1130',NULL),(58,1,'1450','0630','1230','1130',NULL),(59,2,'1450','0630','1230','1130',NULL),(60,3,'1450','0630','1230','1130',NULL),(61,4,'1450','0630','1230','1130',NULL),(62,5,'1450','0630','1230','1130',NULL),(63,6,'','','','',NULL),(64,0,'1630','0642','1200','1100','\0'),(65,1,'1630','0642','1200','1100','\0'),(66,2,'1630','0642','1200','1100','\0'),(67,3,'1630','0642','1200','1100','\0'),(68,4,'1630','0642','1200','1100','\0'),(69,5,'','','','','\0'),(70,6,'','','','','\0'),(71,0,'1450','0630','1200','1100','\0'),(72,1,'1450','0630','1200','1100','\0'),(73,2,'1450','0630','1200','1100','\0'),(74,3,'1450','0630','1200','1100','\0'),(75,4,'1450','0630','1200','1100','\0'),(76,5,'1450','0630','1230','1130','\0'),(77,6,'','','','','\0'),(78,0,'1520','0700','1300','1200','\0'),(79,1,'1520','0700','1300','1200','\0'),(80,2,'1520','0700','1300','1200','\0'),(81,3,'1520','0700','1300','1200','\0'),(82,4,'1520','0700','1300','1200','\0'),(83,5,'1520','0700','1300','1200','\0'),(84,6,'','','','','\0'),(85,0,'1600','0700','1300','1200',NULL),(86,1,'1600','0700','1300','1200',NULL),(87,2,'1600','0700','1300','1200',NULL),(88,3,'1600','0700','1300','1200',NULL),(89,4,'1600','0700','1300','1200',NULL),(90,5,'1100','0700','1200','1100',NULL),(91,6,'','','','',NULL),(92,0,'1648','0700','1300','1200','\0'),(93,1,'1648','0700','1300','1200','\0'),(94,2,'1648','0700','1300','1200','\0'),(95,3,'1648','0700','1300','1200','\0'),(96,4,'1648','0700','1300','1200','\0'),(97,5,'','','','','\0'),(98,6,'','','','','\0'),(99,0,'1600','0700','1300','1200',NULL),(100,1,'1600','0700','1300','1200',NULL),(101,2,'1600','0700','1300','1200',NULL),(102,3,'1600','0700','1300','1200',NULL),(103,4,'1600','0700','1300','1200',NULL),(104,5,'1100','0700','1200','1100',NULL),(105,6,'','','','',NULL),(106,0,'1700','0700','1300','1200','\0'),(107,1,'1700','0700','1300','1200','\0'),(108,2,'1700','0700','1300','1200','\0'),(109,3,'1700','0700','1300','1200','\0'),(110,4,'1600','0700','1300','1200','\0'),(111,5,'','','','','\0'),(112,6,'','','','','\0'),(113,0,'1618','0700','1300','1200',NULL),(114,1,'1618','0700','1300','1200',NULL),(115,2,'1618','0700','1300','1200',NULL),(116,3,'1618','0700','1300','1200',NULL),(117,4,'1618','0700','1300','1200',NULL),(118,5,'','','','',NULL),(119,6,'','','','',NULL),(120,0,'1700','0712','1300','1200','\0'),(121,1,'1700','0712','1300','1200','\0'),(122,2,'1700','0712','1300','1200','\0'),(123,3,'1700','0712','1300','1200','\0'),(124,4,'1700','0730','1300','1200','\0'),(125,5,'','','','','\0'),(126,6,'','','','','\0'),(127,0,'1130','0730','1300','1200',NULL),(128,1,'','','','',NULL),(129,2,'1130','0730','1300','1200',NULL),(130,3,'','','','',NULL),(131,4,'1130','0730','1300','1200',NULL),(132,5,'','','','',NULL),(133,6,'','','','',NULL),(134,0,'1800','1500','1500','1400',NULL),(135,1,'1800','1500','1500','1400',NULL),(136,2,'1800','1500','1500','1400',NULL),(137,3,'1800','1500','1500','1400',NULL),(138,4,'1800','1500','1500','1400',NULL),(139,5,'','','','',NULL),(140,6,'','','','',NULL),(141,0,'1130','0730','1300','1200',NULL),(142,1,'1130','0730','1300','1200',NULL),(143,2,'1130','0730','1300','1200',NULL),(144,3,'1130','0730','1300','1200',NULL),(145,4,'1130','0730','1300','1200',NULL),(146,5,'','','','',NULL),(147,6,'','','','',NULL),(148,0,'1500','0600','1200','1100','\0'),(149,1,'1500','0600','1200','1100','\0'),(150,2,'1500','0600','1200','1100','\0'),(151,3,'1500','0600','1200','1100','\0'),(152,4,'1500','0600','1200','1100','\0'),(153,5,'1000','0600','','','\0'),(154,6,'','','','','\0'),(155,0,'1600','0700','1300','1200','\0'),(156,1,'1600','0700','1300','1200','\0'),(157,2,'1600','0700','1300','1200','\0'),(158,3,'1600','0700','1300','1200','\0'),(159,4,'1600','0700','1300','1200','\0'),(160,5,'1100','0700','','','\0'),(161,6,'','','','','\0'),(162,0,'1130','0730','','','\0'),(163,1,'','','','','\0'),(164,2,'1130','0730','','','\0'),(165,3,'','','','','\0'),(166,4,'1130','0730','','','\0'),(167,5,'','','','','\0'),(168,6,'','','','','\0'),(169,0,'1800','1500','','','\0'),(170,1,'1800','1500','','','\0'),(171,2,'1800','1500','','','\0'),(172,3,'1800','1500','','','\0'),(173,4,'1800','1500','','','\0'),(174,5,'','','','','\0'),(175,6,'','','','','\0'),(176,0,'1630','0730','','','\0'),(177,1,'1630','0730','','','\0'),(178,2,'1630','0730','','','\0'),(179,3,'1630','0730','','','\0'),(180,4,'1630','0730','','','\0'),(181,5,'','','','','\0'),(182,6,'','','','','\0'),(183,0,'1718','0700','1300','1200','\0'),(184,1,'1718','0700','1300','1200','\0'),(185,2,'1718','0700','1300','1200','\0'),(186,3,'1718','0700','1300','1200','\0'),(187,4,'1618','0700','1300','1200','\0'),(188,5,'','','','','\0'),(189,6,'','','','','\0'),(190,0,'1730','0730','1300','1200',NULL),(191,1,'1730','0730','1300','1200',NULL),(192,2,'1730','0730','1300','1200',NULL),(193,3,'1730','0730','1300','1200',NULL),(194,4,'1630','0730','1300','1200',NULL),(195,5,'','','','',NULL),(196,6,'','','','',NULL),(197,0,'1730','0730','1300','1200','\0'),(198,1,'1730','0730','1300','1200','\0'),(199,2,'1730','0730','1300','1200','\0'),(200,3,'1730','0730','1300','1200','\0'),(201,4,'1630','0730','1300','1200','\0'),(202,5,'','','','','\0'),(203,6,'','','','','\0'),(204,0,'1718','0730','1300','1200','\0'),(205,1,'1718','0730','1300','1200','\0'),(206,2,'1718','0730','1300','1200','\0'),(207,3,'1718','0730','1300','1200','\0'),(208,4,'1618','0730','1300','1200','\0'),(209,5,'','','','','\0'),(210,6,'','','','','\0'),(211,0,'1700','0800','1300','1200','\0'),(212,1,'1700','0800','1300','1200','\0'),(213,2,'1700','0800','1300','1200','\0'),(214,3,'1700','0800','1300','1200','\0'),(215,4,'1700','0800','1300','1200','\0'),(216,5,'1200','0800','','','\0'),(217,6,'','','','','\0'),(218,0,'1800','0800','1300','1200',NULL),(219,1,'1800','0800','1300','1200',NULL),(220,2,'1800','0800','1300','1200',NULL),(221,3,'1800','0800','1300','1200',NULL),(222,4,'1700','0800','1300','1200',NULL),(223,5,'','','','',NULL),(224,6,'','','','',NULL),(225,0,'1200','0800','','','\0'),(226,1,'1200','0800','','','\0'),(227,2,'1200','0800','','','\0'),(228,3,'1200','0800','','','\0'),(229,4,'1200','0800','','','\0'),(230,5,'1200','0800','','','\0'),(231,6,'','','','','\0'),(232,0,'1700','1300','','',NULL),(233,1,'','','','',NULL),(234,2,'','','','',NULL),(235,3,'','','','',NULL),(236,4,'','','','',NULL),(237,5,'','','','',NULL),(238,6,'','','','',NULL),(239,0,'1700','1300','','','\0'),(240,1,'','','','','\0'),(241,2,'','','','','\0'),(242,3,'','','','','\0'),(243,4,'','','','','\0'),(244,5,'','','','','\0'),(245,6,'','','','','\0'),(246,0,'','','','',NULL),(247,1,'','','','',NULL),(248,2,'','','','',NULL),(249,3,'','','','',NULL),(250,4,'1700','1300','','',NULL),(251,5,'','','','',NULL),(252,6,'','','','',NULL),(253,0,'','','','','\0'),(254,1,'','','','','\0'),(255,2,'','','','','\0'),(256,3,'1630','0930','','','\0'),(257,4,'','','','','\0'),(258,5,'','','','','\0'),(259,6,'','','','','\0'),(260,0,'','','','','\0'),(261,1,'','','','','\0'),(262,2,'','','','','\0'),(263,3,'','','','','\0'),(264,4,'1500','1100','','','\0'),(265,5,'','','','','\0'),(266,6,'','','','','\0'),(267,0,'','','','','\0'),(268,1,'1100','0900','','','\0'),(269,2,'','','','','\0'),(270,3,'1100','0900','','','\0'),(271,4,'','','','','\0'),(272,5,'','','','','\0'),(273,6,'','','','','\0'),(274,0,'','','','','\0'),(275,1,'1618','0730','','','\0'),(276,2,'','','','','\0'),(277,3,'1618','0730','','','\0'),(278,4,'1618','0730','','','\0'),(279,5,'','','','','\0'),(280,6,'','','','','\0'),(281,0,'','','','','\0'),(282,1,'1500','1300','','','\0'),(283,2,'','','','','\0'),(284,3,'1500','1300','','','\0'),(285,4,'','','','','\0'),(286,5,'','','','','\0'),(287,6,'','','','','\0'),(288,0,'1800','0800','1300','1200','\0'),(289,1,'1800','0800','1300','1200','\0'),(290,2,'1800','0800','1300','1200','\0'),(291,3,'1800','0800','1300','1200','\0'),(292,4,'1700','0800','1300','1200','\0'),(293,5,'','','','','\0'),(294,6,'','','','','\0'),(295,0,'1618','0700','1400','1300','\0'),(296,1,'1618','0700','1400','1300','\0'),(297,2,'1618','0700','1400','1300','\0'),(298,3,'1618','0700','1400','1300','\0'),(299,4,'1618','0700','1400','1300','\0'),(300,5,'','','','','\0'),(301,6,'','','','','\0'),(302,0,'1720','0900','1400','1300','\0'),(303,1,'1720','0900','1400','1300','\0'),(304,2,'1720','0900','1400','1300','\0'),(305,3,'1720','0900','1400','1300','\0'),(306,4,'1720','0900','1400','1300','\0'),(307,5,'1450','0630','1200','1100','\0'),(308,6,'','','','','\0'),(309,0,'1754','0930','1400','1300','\0'),(310,1,'1754','0930','1400','1300','\0'),(311,2,'1754','0930','1400','1300','\0'),(312,3,'1754','0930','1400','1300','\0'),(313,4,'1754','0930','1400','1300','\0'),(314,5,'1754','0930','1400','1300','\0'),(315,6,'','','','','\0'),(316,0,'2000','1200','1800','1700','\0'),(317,1,'2000','1200','1800','1700','\0'),(318,2,'2000','1200','1800','1700','\0'),(319,3,'2000','1200','1800','1700','\0'),(320,4,'2000','1200','1800','1700','\0'),(321,5,'2000','1200','1800','1700','\0'),(322,6,'','','','','\0'),(323,0,'2200','1400','2000','1900','\0'),(324,1,'2200','1400','2000','1900','\0'),(325,2,'2200','1400','2000','1900','\0'),(326,3,'2200','1400','2000','1900','\0'),(327,4,'2200','1400','2000','1900','\0'),(328,5,'1900','0900','1500','1400','\0'),(329,6,'','','','','\0'),(330,0,'1000','0600','1200','1100','\0'),(331,1,'1000','0600','1200','1100','\0'),(332,2,'1000','0600','1200','1100','\0'),(333,3,'1000','0600','1200','1100','\0'),(334,4,'1000','0600','1200','1100','\0'),(335,5,'1000','0600','','','\0'),(336,6,'','','','','\0'),(337,0,'0600','2200','0300','0200',''),(338,1,'0600','2200','0300','0200',''),(339,2,'0600','2200','0300','0200',''),(340,3,'0600','2200','0300','0200',''),(341,4,'0600','2200','0300','0200',''),(342,5,'','','','','\0'),(343,6,'1300','0700','1300','1200',''),(344,0,'1506','0630','1200','1100',''),(345,1,'1506','0630','1200','1100',''),(346,2,'1506','0630','1200','1100',''),(347,3,'1506','0630','1200','1100',''),(348,4,'1506','0630','1200','1100',''),(349,5,'1230','0630','','',''),(350,6,'','','','','\0'),(351,0,'1736','0900','1400','1300',''),(352,1,'1736','0900','1400','1300',''),(353,2,'1736','0900','1400','1300',''),(354,3,'1736','0900','1400','1300',''),(355,4,'1736','0900','1400','1300',''),(356,5,'1230','0630','','',''),(357,6,'','','','','\0'),(358,0,'2100','1300','1900','1800',''),(359,1,'2100','1300','1900','1800',''),(360,2,'2100','1300','1900','1800',''),(361,3,'2100','1300','1900','1800',''),(362,4,'2100','1300','1900','1800',''),(363,5,'1800','0700','1300','1200',''),(364,6,'','','','','\0'),(365,0,'2200','1300','1900','1800',''),(366,1,'2200','1300','1900','1800',''),(367,2,'2200','1300','1900','1800',''),(368,3,'2200','1300','1900','1800',''),(369,4,'2200','1300','1900','1800',''),(370,5,'1500','1100','','',''),(371,6,'','','','','\0'),(372,0,'1100','0700','2000','1900',''),(373,1,'1100','0700','2000','1900',''),(374,2,'1100','0700','2000','1900',''),(375,3,'1100','0700','2000','1900',''),(376,4,'1100','0700','2000','1900',''),(377,5,'1500','1100','','',''),(378,6,'','','','','\0'),(379,0,'1500','0630','1200','1100',''),(380,1,'1500','0630','1200','1100',''),(381,2,'1500','0630','1200','1100',''),(382,3,'1500','0630','1200','1100',''),(383,4,'1500','0630','1200','1100',''),(384,5,'1630','0900','1400','1300',''),(385,6,'','','','','\0'),(386,0,'1000','0600','','','\0'),(387,1,'1000','0600','','','\0'),(388,2,'1000','0600','','','\0'),(389,3,'1000','0600','','','\0'),(390,4,'1000','0600','','','\0'),(391,5,'','','','','\0'),(392,6,'','','','','\0'),(393,0,'1200','0700','','','\0'),(394,1,'1200','0700','','','\0'),(395,2,'1200','0700','','','\0'),(396,3,'1200','0700','','','\0'),(397,4,'1200','0700','','','\0'),(398,5,'','','','','\0'),(399,6,'','','','','\0'),(400,0,'1230','0630','','','\0'),(401,1,'1230','0630','','','\0'),(402,2,'1230','0630','','','\0'),(403,3,'1230','0630','','','\0'),(404,4,'1230','0630','','','\0'),(405,5,'','','','','\0'),(406,6,'','','','','\0'),(407,0,'1800','0700','','','\0'),(408,1,'1800','0700','','','\0'),(409,2,'1800','0700','','','\0'),(410,3,'1800','0700','','','\0'),(411,4,'1800','0700','','','\0'),(412,5,'','','','','\0'),(413,6,'','','','','\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadatrabalho`
--

LOCK TABLES `jornadatrabalho` WRITE;
/*!40000 ALTER TABLE `jornadatrabalho` DISABLE KEYS */;
INSERT INTO `jornadatrabalho` VALUES (1,'Turno 1 - Das 06:00 às 14:00 horas',220,44,'Turno 1 - Das 06:00 às 14:00 horas',NULL),(2,'Turno 2 - Das 06:00 às 15:00 horas',220,44,'Turno 2 - Das 06:00 às 15:00 horas',NULL),(3,'Turno 3 - Das 06:00 às 16:00 horas',220,44,'Turno 3 - Das 06:00 às 16:00 horas',NULL),(4,'Turno 4 - Das 06:30 às 14:50 horas',220,44,'Turno 4 - Das 06:30 às 14:50 horas',NULL),(5,'Turno 5 - Das 06:42 às 16:30 horas',220,44,'Turno 5 - Das 06:42 às 16:30 horas',NULL),(6,'Turno 6 - Das 07:00 às 15:20 horas',220,44,'Turno 6 - Das 07:00 às 15:20 horas',NULL),(7,'Turno 7 - Das 07:00 às 16:00 horas',220,44,'Turno 7 - Das 07:00 às 16:00 horas',NULL),(8,'Turno 8 - Das 07:00 às 16:48 horas ',220,44,'Turno 8 - Das 07:00 às 16:48 horas',NULL),(9,'Turno 9 - Das 07:00 às 17:00 horas',220,44,'Turno 9 - Das 07:00 às 17:00 horas',NULL),(10,'Turno 10 - Das 07:00 às 17:18 horas',220,44,'Turno 10 - Das 07:00 às 17:18 horas',NULL),(11,'Turno 11 - Das 07:12 às 17:00 horas',220,44,'Turno 11 - Das 07:12 às 17:00 horas',NULL),(12,'Turno 12 - Das 07:30 às 11:30 horas',48,12,'Turno 12 - Das 07:30 às 11:30 horas',NULL),(13,'Turno 13 - Das 15:00 às 18:00 horas',60,15,'Turno 13 - Das 15:00 às 18:00 horas',NULL),(14,'Turno 14 - Das 07:30 às 16:30 horas',80,20,'Turno 14 - Das 07:30 às 16:30 horas',NULL),(15,'Turno 15 - Das 07:30 às 17:30 horas',220,44,'Turno 15 - Das 07:30 às 17:30 horas',NULL),(16,'Turno 16 - Das 07:30 às 17:18 horas',220,44,'Turno 16 - Das 07:30 às 17:18 horas',NULL),(17,'Turno 17 - Das 08:00 às 17:00 horas',220,44,'Turno 17 - Das 08:00 às 17:00 horas',NULL),(18,'Turno 18 - Das 08:00 às 18:00 horas',220,44,'Turno 18 - Das 08:00 às 18:00 horas',NULL),(19,'Turno 19 - Das 08:00 às 12:00 horas',96,24,'Turno 19 - Das 08:00 às 12:00 horas',NULL),(20,'Turno 20 - Das 13:00 às 17:00 horas',16,4,'Turno 20 - Das 13:00 às 17:00 horas',NULL),(21,'Turno 21 - Das 11:00 às 15:00 horas',16,4,'Turno 21 - Das 11:00 às 15:00 horas',NULL),(22,'Turno 22 - Das 09:00 às 16:30 horas',8,4,'Turno 22 - Das 09:00 às 16:30 horas',NULL),(23,'Turno 23 - Das 09:00 às 11:00 horas',72,18,'Turno 23 - Das 09:00 às 11:00 horas',NULL),(24,'Turno 24 - Das 07:30 às 16:18 horas',48,12,'Turno 24 - Das 07:30 às 16:18 horas',NULL),(25,'Turno 25 - Das 13:00 às 15:00 horas',16,4,'Turno 25 - Das 13:00 às 15:00 horas',NULL),(26,'Turno 26 - Das 07:00 às 16:18 horas',220,44,'Turno 26 - Das 07:00 às 16:18 horas',NULL),(27,'Turno 27 - Das 09:00 às 17:20 horas',220,44,'Turno 27 - Das 09:00 às 17:20 horas',NULL),(28,'Turno 28 - Das 09:30 às 17:54 horas',220,44,'Turno 28 - Das 09:30 às 17:54 horas',NULL),(29,'Turno 29 - Das 12:00 às 20:00 horas',220,44,'Turno 29 - Das 12:00 às 20:00 horas',NULL),(30,'Turno 30 - Das 14:00 às 22:00 horas',220,44,'Turno 30 - Das 14:00 às 22:00 horas',NULL),(31,'Turno 31 - Das 06:00 às 10:00 horas',220,44,'Turno 31 - Das 06:00 às 10:00 horas',NULL),(32,'Turno 32 - Das 22:00 às 06:00 horas',220,44,'Turno 32 - Das 22:00 às 06:00 horas',NULL),(33,'Turno 33 - Das 06:30 às 15:06 horas',220,44,'Turno 33 - Das 06:30 às 15:06 horas',NULL),(34,'Turno 34 - Das 09:00 às 17:36 horas',220,44,'Turno 34 - Das 09:00 às 17:36 horas',NULL),(35,'Turno 35 - Das 13:00 às 21:00 horas',220,44,'Turno 35 - Das 13:00 às 21:00 horas',NULL),(36,'Turno 36 - Das 13:00 às 22:00 horas',220,44,'Turno 36 - Das 13:00 às 22:00 horas',NULL),(37,'Turno 37 - Das 07:00 às 11:00 horas',220,44,'Turno 37 - Das 07:00 às 11:00 horas',NULL),(38,'Turno 38 - Das 06:30 às 15:00 horas',220,44,'Turno 38 - Das 06:30 às 15:00 horas',NULL),(39,'Turno 39 - Das 06:00 às 10:00 horas',220,44,'Turno 39 - Das 06:00 às 10:00 horas',NULL),(40,'Turno 40 - Das 07:00 às 12:00 horas',80,20,'Turno 40 - Das 07:00 às 12:00 horas',NULL),(41,'Turno 41 - Das 06:30 às 12:30 horas',24,6,'Turno 41 - Das 06:30 às 12:30 horas',NULL),(42,'Turno 42 - Das 07:00 às 18:00 horas',220,44,'Turno 42 - Das 07:00 às 18:00 horas',NULL);
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
INSERT INTO `jornadatrabalho_horariosjornada` VALUES (1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(3,50),(3,51),(3,52),(3,53),(3,54),(3,55),(3,56),(5,64),(5,65),(5,66),(5,67),(5,68),(5,69),(5,70),(4,71),(4,72),(4,73),(4,74),(4,75),(4,76),(4,77),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83),(6,84),(8,92),(8,93),(8,94),(8,95),(8,96),(8,97),(8,98),(9,106),(9,107),(9,108),(9,109),(9,110),(9,111),(9,112),(11,120),(11,121),(11,122),(11,123),(11,124),(11,125),(11,126),(2,148),(2,149),(2,150),(2,151),(2,152),(2,153),(2,154),(7,155),(7,156),(7,157),(7,158),(7,159),(7,160),(7,161),(12,162),(12,163),(12,164),(12,165),(12,166),(12,167),(12,168),(13,169),(13,170),(13,171),(13,172),(13,173),(13,174),(13,175),(14,176),(14,177),(14,178),(14,179),(14,180),(14,181),(14,182),(10,183),(10,184),(10,185),(10,186),(10,187),(10,188),(10,189),(15,197),(15,198),(15,199),(15,200),(15,201),(15,202),(15,203),(16,204),(16,205),(16,206),(16,207),(16,208),(16,209),(16,210),(17,211),(17,212),(17,213),(17,214),(17,215),(17,216),(17,217),(19,225),(19,226),(19,227),(19,228),(19,229),(19,230),(19,231),(20,239),(20,240),(20,241),(20,242),(20,243),(20,244),(20,245),(22,253),(22,254),(22,255),(22,256),(22,257),(22,258),(22,259),(21,260),(21,261),(21,262),(21,263),(21,264),(21,265),(21,266),(23,267),(23,268),(23,269),(23,270),(23,271),(23,272),(23,273),(24,274),(24,275),(24,276),(24,277),(24,278),(24,279),(24,280),(25,281),(25,282),(25,283),(25,284),(25,285),(25,286),(25,287),(18,288),(18,289),(18,290),(18,291),(18,292),(18,293),(18,294),(26,295),(26,296),(26,297),(26,298),(26,299),(26,300),(26,301),(27,302),(27,303),(27,304),(27,305),(27,306),(27,307),(27,308),(28,309),(28,310),(28,311),(28,312),(28,313),(28,314),(28,315),(29,316),(29,317),(29,318),(29,319),(29,320),(29,321),(29,322),(30,323),(30,324),(30,325),(30,326),(30,327),(30,328),(30,329),(31,330),(31,331),(31,332),(31,333),(31,334),(31,335),(31,336),(32,337),(32,338),(32,339),(32,340),(32,341),(32,342),(32,343),(33,344),(33,345),(33,346),(33,347),(33,348),(33,349),(33,350),(34,351),(34,352),(34,353),(34,354),(34,355),(34,356),(34,357),(35,358),(35,359),(35,360),(35,361),(35,362),(35,363),(35,364),(36,365),(36,366),(36,367),(36,368),(36,369),(36,370),(36,371),(37,372),(37,373),(37,374),(37,375),(37,376),(37,377),(37,378),(38,379),(38,380),(38,381),(38,382),(38,383),(38,384),(38,385),(39,386),(39,387),(39,388),(39,389),(39,390),(39,391),(39,392),(40,393),(40,394),(40,395),(40,396),(40,397),(40,398),(40,399),(41,400),(41,401),(41,402),(41,403),(41,404),(41,405),(41,406),(42,407),(42,408),(42,409),(42,410),(42,411),(42,412),(42,413);
/*!40000 ALTER TABLE `jornadatrabalho_horariosjornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localtrabalho`
--

DROP TABLE IF EXISTS `localtrabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localtrabalho` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idFuncionario` bigint(20) NOT NULL,
  `idCliente` bigint(20) NOT NULL,
  `idJornadaTrabalho` bigint(20) NOT NULL,
  `idSetor` bigint(20) NOT NULL,
  `diaSemana` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idFuncionario` (`idFuncionario`),
  KEY `idCliente` (`idCliente`),
  KEY `idJornadaTrabalho` (`idJornadaTrabalho`),
  KEY `idSetor` (`idSetor`),
  CONSTRAINT `localtrabalho_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `localtrabalho_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `localtrabalho_ibfk_3` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`),
  CONSTRAINT `localtrabalho_ibfk_4` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localtrabalho`
--

LOCK TABLES `localtrabalho` WRITE;
/*!40000 ALTER TABLE `localtrabalho` DISABLE KEYS */;
INSERT INTO `localtrabalho` VALUES (10,63,32,2,2,0),(11,63,32,2,2,1),(12,63,32,2,2,2),(13,63,32,2,2,3),(14,63,32,2,2,4),(15,63,32,2,2,5),(16,8,39,15,1,0),(17,8,39,15,1,1),(18,8,39,15,1,2),(19,8,39,15,1,3),(20,8,39,15,1,4),(42,65,48,34,8,0),(43,65,48,34,8,1),(44,65,48,34,8,2),(45,65,48,34,8,3),(46,65,48,34,8,4),(47,65,48,34,8,5),(53,18,39,18,4,0),(54,18,39,18,4,1),(55,18,39,18,4,2),(56,18,39,18,4,3),(57,18,39,17,4,4);
/*!40000 ALTER TABLE `localtrabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(4) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `SIGLA` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODIGO_UNIQUE` (`CODIGO`),
  UNIQUE KEY `NOME_UNIQUE` (`NOME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'55','Brasil','BR');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
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
  `idEstado` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `sexo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PESSOA_ESTADO` (`idEstado`),
  CONSTRAINT `FK_PESSOA_ESTADO` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(2,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(3,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(4,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(5,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(6,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(7,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(8,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(9,NULL,'camila@farber.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Camila Palomares',NULL),(10,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(11,NULL,'rafael@grupoipl.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rafael Pereira',NULL),(12,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(13,NULL,'renato@synapsystem.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Renato Desidério',NULL),(14,NULL,'cassia@acquaeventos.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cássia',NULL),(15,NULL,'rafael@grupouipl.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rafael',NULL),(16,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rose',NULL),(17,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(18,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(19,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(20,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(21,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(22,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(23,NULL,'sueli.silva@carimed.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sueli Silva',NULL),(24,NULL,'carlos.goncalves@carimed.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carlos',NULL),(25,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(26,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(27,NULL,'luana@papelecologico.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luana',NULL),(28,NULL,'marcio@papelecologico.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marcio',NULL),(29,NULL,'sandro@famadi.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sandro Pussateli',NULL),(30,NULL,'famadi@famadi.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(31,NULL,'giselerosa@kontik.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gisele Rosa',NULL),(32,NULL,'thiagobatello@kontik.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(33,NULL,'sandro@famadi.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sandro Pussateli',NULL),(34,NULL,'famadi@famadi.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(35,NULL,'financeiro@gmc.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cris',NULL),(36,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(37,NULL,'marcia@hafsinformatica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marcia',NULL),(38,NULL,'hugo@hafsinformatica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hugo Alexandre da Fonte Sanches',NULL),(39,NULL,'carol@vovolina.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carol',NULL),(40,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(41,NULL,'ednalva.dias@otis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ednalva ',NULL),(42,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(43,NULL,'ligia.lemos@otis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ligia Lemos',NULL),(44,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(45,NULL,'Jose.bayeux@otis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jose Bayeux',NULL),(46,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(47,NULL,'daniela.oliveira@otis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Daniela Oliveira',NULL),(48,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(49,NULL,'ednalva.dias@otis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ednalva Dias',NULL),(50,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(51,NULL,'thais@rzrbombas.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Thais',NULL),(52,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(53,NULL,'marciamaineti@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marcia',NULL),(54,NULL,'financeiro@ultramasterplug.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Feliciano',NULL),(55,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(56,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(57,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(58,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(59,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(60,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(61,NULL,'nalva@cesari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nalva ',NULL),(62,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(63,NULL,'helio.honorato@cesari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hélio Honorato',NULL),(64,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(65,NULL,'inesogata@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ines Komoguchi Ogata',NULL),(66,NULL,'fonau@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nilton Nobuo',NULL),(67,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(68,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(69,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(70,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(71,NULL,'tatiane.nery@medicarebrasil.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tatiane',NULL),(72,NULL,'rtyamane@htbtecnologia.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rogério',NULL),(73,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(74,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(75,NULL,'jeobox_10@yahoo.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jeovan',NULL),(76,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(77,NULL,'patricia@wservice.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Patricia Ribeiro',NULL),(78,NULL,'l.carlos@wservice.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luis Carlos',NULL),(79,NULL,'cassiaditchun.anchieta@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cássia Ditchum ',NULL),(80,NULL,'galvonoplastiaanchieta@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(81,NULL,'reis.rodrigo@grupobimbo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rodrigo Reis',NULL),(82,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(83,NULL,'kelly@starlimp.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kelly',NULL),(84,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(85,NULL,'movimentacaopme@intermedica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(86,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(87,NULL,'movimentacaopme@intermedica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(88,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(89,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(90,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(91,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(92,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(93,NULL,'maria.eunice@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Maria Eunice',NULL),(94,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(95,NULL,'pablo.moraes@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pablo Moraes',NULL),(96,NULL,'carlos.casanova@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carlos Casanova',NULL),(97,NULL,'emerson.queiroz@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Emerson Queiroz',NULL),(98,NULL,'roberto.alonzo@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Roberto Alonzo',NULL),(99,NULL,'eduardo.surita@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Surita',NULL),(100,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(101,NULL,'deborah.lemke@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Deborah Lemke',NULL),(102,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(103,NULL,'eduardo.surita@sherwin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Surita',NULL),(104,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(105,NULL,'adm.mara@tecpan.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mara',NULL),(106,NULL,'tecpan.com@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leticia',NULL),(107,NULL,'daniel.wagner@itelios.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Daniel Wagner',NULL),(108,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(109,NULL,'translivre.com@bol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riva',NULL),(110,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(111,NULL,'translivre.com@bol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riva',NULL),(112,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(113,NULL,'gabriela.ramos@transleveexpress.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gabriela',NULL),(114,NULL,'contato@transleveexpress.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(115,NULL,'seasamed@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ligia',NULL),(116,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nilci',NULL),(117,NULL,'doni.torezani@cba.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Doni Torezani',NULL),(118,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(119,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ana',NULL),(120,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Erica',NULL),(121,NULL,'luciano@cabam.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luciano Coelho Cardoso',NULL),(122,NULL,'atendimento@cabam.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(123,NULL,'f.sales.gomes@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Francisco',NULL),(124,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(125,NULL,'lucioimoveis@lucioimoveis.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carolina',NULL),(126,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(127,NULL,'luciano@tecnutri.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luciano',NULL),(128,NULL,'rh@tecnutri.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Andre',NULL),(129,NULL,'andre@novabor.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'André - Vendas',NULL),(130,NULL,'patricia@novabor.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Patricia - Financeiro',NULL),(131,NULL,'cestas@joanin.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Neide - Vendas',NULL),(132,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(133,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(134,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(135,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(136,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(137,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(138,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(139,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(140,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(141,NULL,'rogeriosindico@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ednei',NULL),(142,NULL,'reinaldomrangel@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rangel',NULL),(143,'1981-04-04',NULL,'Presidente Altino','06216210','Osasco ','','Rua Maria Luiza Ferreira',21,2,'Aliziane Maria dos Santos ',1),(144,'1970-07-03',NULL,'Alto Boa Vista ','09390810','Mauá','','Rua João Salvador Peres Tunico',21,35,'Alaide da Silva Pereira Santos ',1),(145,'1988-07-07',NULL,'Jd. Oratorio','09380600','Santo Andre','','Travessa Itaparica',NULL,16,'Edlayne Santos Ventura',1),(146,'1987-04-14',NULL,'Campestre','09170680','Santo André ','Casa 01','Rua das Flores',NULL,577,'Alex Sandro Cláudio Soliano ',0),(147,'1978-07-12',NULL,'Jardim Alzira Franco','09273245','Santo André','Casa 05','Travessa Amor Perfeito',NULL,157,'Alzira Maria da Rocha Santos ',1),(148,'1979-10-20',NULL,'Vila Figueredo','09445000','Rio Grande da Serra','Casa 2','Rua Jose Figueiredo',NULL,255,'Ana Cristina Alves do Nascimento',1),(149,'1986-10-11',NULL,'Vila Esperança','11500000','Cubatão','','Rua São Bartolomeu',NULL,360,'Andre Souza da Silva ',0),(150,'1979-11-23',NULL,'Jardim Iguatemi ','08380250','São Paulo','','Rua Arnaldo Aguiar Barbosa',21,130,'Angela Aureliano da Silva ',1),(151,'2007-08-12',NULL,'Jd Alzira Franco','09273285','Santo Andre','A','Tr Bela Cintra',NULL,4,'Maria Rafaela dos Santos',1),(152,'1944-05-17',NULL,'São Mateus ','08390240','São Paulo','','Avenida Sertanista',NULL,1879,'Antonio Gomes da Silva ',0),(153,'1981-04-07',NULL,'Pq Capuava','09270070','Santo Andre','0','Rua Malaia',NULL,162,'Eva Raimunda Cirilo',1),(154,'1962-01-25',NULL,'Eldorado','09970341','Diadema','','Rua Lucas Moreira Neves',NULL,101,'Brandina de Paula',1),(155,'1975-05-27',NULL,'Vila dos Pescadores','11531000','Cubatão','','Avenida Ferroviária',NULL,874,'Caçilda Maria dos Santos Reis ',1),(156,'1980-10-17',NULL,'Jardim Ruyce','09961590','Diadema ','','Rua Barão de Guarapava',NULL,33,'Cátia Martins Galhardo',1),(157,'1961-04-12',NULL,'Cerqueira Leite','09390590','Maua','','Rua Projetada ',NULL,27,'Doristel Araujo Martins',1),(158,'1973-06-01',NULL,'Pilões','11543000','Cubatão','','Rua Oliveira ',NULL,986,'Cosma Vicente Gabriel ',1),(159,NULL,'comercial@masterclear.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Levi Colonhezi',NULL),(160,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(161,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Adelmo',NULL),(162,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(163,NULL,'renata@villa safari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Renata',NULL),(164,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(165,NULL,'lablian@terra.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carmen',NULL),(166,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(167,'1983-08-08',NULL,'PQ AMERICA','09450000','Rio Grande da Serra','','Rua Xavantes ',NULL,20,'Peterson Robson Barreto Machuda',0),(168,NULL,'eduardovilas25@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Vilas ',NULL),(169,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(170,NULL,'frezende@ohhmidia.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fernando Rezende',NULL),(171,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(172,'1978-03-06',NULL,'Parque Jaçatuba','09290510','Santo André','','Rua. Itanhaem',21,84,'Levi Colonhezi Basilio',0),(173,NULL,'pin@linksat.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Eduardo Pin',NULL),(174,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(175,'1983-09-27',NULL,'Centro','09450000','Rio Grande da Serra','','Estrada do Rio Pequeno',NULL,2500,'Ilma de Carvalho',1),(176,'1963-12-08',NULL,'Pq Erasmo Assunção','09273005','Santo Andre','','Rua Papiro ',NULL,22,'Ademir Alcanjo de Morais',0),(177,'1978-08-25',NULL,'PQ capuava','09270070','Santo Andre','','Rua Malaia ',NULL,162,'Edileusa Albertina de Sosa vieira',1),(178,'1990-05-03',NULL,'Jardim Rosina','09390375','Mauá','','Rua Pascoal Pagano',NULL,104,'Aline Celice Nunes',1),(179,'1972-09-19',NULL,'Jd Sorocaba','09273085','Santo Andre','','Flor de Cactos',NULL,79,'Risonete Pereira dos Santos',1),(180,'1984-10-09',NULL,'Pq João Ramalho','09273005','Santo Andre','','Rua Papiro',NULL,88,'Felipe Marques Rufino',0),(181,'1962-06-06',NULL,'Vila Esperança','11540200','Cubatão','','Avenida Principal ',NULL,131,'Dalva Maria Basto de Oliveira ',1),(182,'1970-06-02',NULL,'Pq João Ramalho','09290230','Santo Andre','','Rua Parauna',21,74,'Sara Alice Assis Santos',1),(183,'1989-05-26',NULL,'Alto Industrial ','09762250','São Bernardo do Campo','','Rua Aurélio Bonfim',NULL,96,'Douglas Cláudio Soliano ',0),(184,'1987-08-08',NULL,'Pq João Ramalho','09290030','Santo Andre','','Rua Maragogipe',NULL,600,'Sidnei do Carmo Silva',0),(185,'1978-07-17',NULL,'Pq João Ramalho','09290260','Santo Andre','','Av Sorocaba',NULL,506,'Paula Cristiane Orlando Rocha',1),(186,NULL,'ailotto@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Valéria',NULL),(187,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(188,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Valdete',NULL),(189,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(190,'1987-04-16',NULL,'Centro','09450000','Rio Grande da Serra','','Rua Rio Pequeno',NULL,2500,'Jose Edvaldo Moreira da Silva',0),(191,'1988-04-16',NULL,'Rio Pequeno','09500000','Rio Grande da Serra','','Estrada do Rio Pequeno',NULL,3000,'Jose Edvaldo Moreira da Silva',0),(193,'1972-04-22',NULL,'Jd Cumbica','07240001','Guarulhos','','Vel Taquaritinga do Norte',NULL,123,'Maria da Paixão Pereira Ferreira',1),(194,'1978-11-13',NULL,'Professor Jorge ','11500300','Cubatão','0','Rua José Gonçalves Torres ',NULL,370,'Elsa Maria Pereira de Souza',1),(195,'1986-08-13',NULL,'Centro','09450000','Rio Grande da Serra','','Estrada do Rio Pequeno ',NULL,2500,'Elenilson Moreira da Silva',0),(196,'1974-08-11',NULL,'Vila Nova','11520000','Cubatão ','','Rua Rio de Janeiro ',NULL,441,'Genilza Melo dos Santos ',1),(197,'1962-10-16',NULL,'Pq João Ramalho','09290260','Santo Andre','','Av Sorocaba',NULL,506,'Maria Pureza Santos',1),(198,'1983-09-21',NULL,'Conjunto City Jaraguá','02998200','São Paulo','','Rua Amavaraty',NULL,539,'Geraldina Godoi da Luz ',1),(200,'1983-09-27',NULL,'Centro','09450000','Rio Grande da Serra','','Estrada do Rio Pequeno',21,2500,'Ilma de Carvalho',1),(201,'1989-01-16',NULL,'Cotia','06717285','São Paulo','cs 3','Rua - Serra da Lage',NULL,433,'João Carlos Rodrigues dos Santos',0),(202,'1984-08-30',NULL,'Jd Bonfiglioli','05358140','Butanta','','Rua Francisco Francolino de Oliveira',NULL,20,'Eliene Vieira da Cruz',1),(203,NULL,'luciano@tecnutri.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Luciano Kokan',NULL),(204,NULL,'link.servicos@uol.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(205,'1990-01-30',NULL,'Jd Cerqueira Leite','09390280','Maua','','Rua Senador Teotono Vilela',NULL,309,'Simone Maria da Silva',1),(206,'1982-01-20',NULL,'Vila Gomes','05590040','Sp','','Rua Tomas Lupo',NULL,135,'Ricardo Andrade Pereira',0),(207,'1971-06-28',NULL,'Petoria','07780000','Franco da Rocha','','Rua Pitassilgo ',NULL,267,'Francisco Duarte Ribeiro',0),(208,NULL,'comercial1@soluxrh.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lenice',NULL),(209,NULL,'dpessoal@soluxrh.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ivone',NULL),(210,NULL,'fatima@sofrio.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fátima',NULL),(211,NULL,'sofrio@sofrio.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(212,'1974-03-15',NULL,'Jardim Cerqueira Leite ','09300000','Mauá','Casa 17 Vila 09','Rua Projetada C S/N',21,0,'Naceude Pereira Costa ',1),(213,'1979-02-26',NULL,'Jd Capela','04960030','SP','','Rua Citeron',NULL,301,'Elizangela da Silva Pereira Borges',1),(214,'1976-01-04',NULL,'Chácara Gaivota ','04849342','São Paulo','Casa 03','Rua Das Torres',NULL,63,'Naldilza Novais de Oliveira',1),(215,'1976-01-04',NULL,'Chácara Gaivotas ','04849342','São Paulo','Casa 03','Rua das Torres',21,63,'Naldilza Novais dos Santos',1),(216,'1973-07-15',NULL,'Vila Tiradentes','05364030','SP','','Rua Baartolomeu Veneto',21,126,'Elza Carvalho da Mota',1),(217,'1955-01-30',NULL,'Jardim Elizabeth','09335300','Mauá','Casa 02','Rua Pernambuco',NULL,220,'Paulo Eduardo Vieira ',0),(218,'1999-10-15',NULL,'Jd Recanto dos Victors','06717250','Cotia','','Rua Agudos ',NULL,88,'Rafael de Jesus',0),(219,'1979-01-11',NULL,'Vila Natal ','11538100','Cubatão','','Rua dos Lírios ',21,44,'Rita Sávia de Lima Pereira ',1),(220,'1980-06-27',NULL,'Vila Magini','09390130','Maua','','Rua Antonieta Monteiro Hauck',NULL,83,'Shirlei de Souza Rodrigues',1),(221,'1973-07-20',NULL,'Parque Taipas ','02987050','São Paulo','','Rua Mateus Dantas',NULL,10,'Risoneide Maria dos Santos da Silva ',1),(222,'1978-07-24',NULL,'Jd Ivana','05365200','São Paulo','','Av Pujais Sabate',NULL,53,'Andre Ferraz Viana',0),(223,'1971-07-13',NULL,'Vila Nilva','09450000','Rio Grande da Serra ','','Rua dos Canários ',NULL,23,'Rosalva Henrique ',1),(224,'1979-09-01',NULL,'Parque D.Pedro','01020030','São Paulo','','Rua Frederico Alvarenga',NULL,223,'Manoel Alves de Souza',0),(225,'1966-12-03',NULL,'Vila Paulista','11510140','Cubatão','22 Bloco 06','Rua Domingos Costa',NULL,158,'Sônia Maria Correia',1),(226,'1972-03-09',NULL,'Jardim do Lago ','09840660','São Bernardo do Campo','','Rua Alvares de Azevedo',NULL,90,'Sueli de Souza Lima ',1),(227,'1970-12-29',NULL,'Jd Alzira Franco','09200000','Santo Andre','Conjunto Habitacional','Quadra E',NULL,37,'Valdete Carmina de Carvalho',1),(228,'1983-07-20',NULL,'Vila Nova ','11525110','Cubatão','','Rua Paraíba',21,702,'Thaiane Souza da Silva Sampaio ',1),(229,'1973-03-20',NULL,'','09290340','Santo Andre','','Av dos Estados ',NULL,7345,'Francisco Reginaldo da Silva',0),(230,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(231,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(232,NULL,'contato@escolainteracao.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Simone',NULL),(233,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(234,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(235,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(236,NULL,'marketing@abcaprendiz.org.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fabiana de Carvalho',NULL),(237,NULL,'abcaprendiz@abcaprendiz.org.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(238,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(239,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(240,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(241,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(242,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Vendas',NULL),(243,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(244,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(245,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(246,NULL,'william@galpaodainformatica.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Willian Laerte',NULL),(247,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(248,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(249,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(250,NULL,'daniela@grupocertec.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Daniela',NULL),(251,NULL,'certec@grupocertec.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(252,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(253,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(254,NULL,'reis.rodrigo@grupobimbo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rodrigo Reis',NULL),(255,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(256,NULL,'reis.rodrigo@grupobimbo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rodrigo Reis',NULL),(257,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(258,NULL,'nalva@cesari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nalva',NULL),(259,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(260,NULL,'nalva@cesari.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nalva',NULL),(261,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(264,'1973-09-03',NULL,'Vila Natal','11538105','Cubatão ','P 35 J','Rua Júlio Amaro Ribeiro',21,51,'Vanda Lúcia Figueredo Vieiras',1),(265,NULL,'nancirodriguesrs@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nanci Rodrigues Rozão de Sá',NULL),(266,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(267,NULL,'savidros@yahoo.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(268,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(269,'1974-06-09',NULL,'Vila Esperança','11540200','Cubatão ','','Avenida Plrincipal',21,265,'Ronaldo Santana da Cruz',0),(270,'1972-10-15',NULL,'Vila Natal','11538070','Cubatão','','Rua das Palmas',21,490,'Josiane Maria Ferreira de Souza',1),(271,NULL,'fatima.freitas@mundiallogistics.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fátima Freitas',NULL),(272,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
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
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'Escritórios ','Escritórios '),(2,'Área Fabril','Área Fabril'),(3,'Base I - Terminal / Armazéns','Base I - Terminal / Armazéns'),(4,'Diretoria Comercial','Diretoria Comercial'),(5,'Recepção','Recepção'),(6,'Portaria','Portaria'),(7,'Escritórios / Armazén','Escritórios / Armazén'),(8,'Base I - Prédio / Administrativo','Base I - Prédio / Administrativo'),(9,'Base I - Prédio / Administrativo / Borracharia','Base I - Prédio / Administrativo / Borracharia'),(10,'Base I - Prédio / Administrativo / Portaria','Base I - Prédio / Administrativo / Portaria'),(11,'Base I - Prédio / Administrativo / Sala dos Motoristas','Base I - Prédio / Administrativo / Sala dos Motoristas'),(12,'Externo / Clientes','Externo / Clientes');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacaofuncionario`
--

DROP TABLE IF EXISTS `situacaofuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacaofuncionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` bigint(20) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `codigoCor` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacaofuncionario`
--

LOCK TABLES `situacaofuncionario` WRITE;
/*!40000 ALTER TABLE `situacaofuncionario` DISABLE KEYS */;
INSERT INTO `situacaofuncionario` VALUES (1,1,'Empregado em atividade normal, com remuneração, sem qualquer tipo de afastamento','Empregado em atividade normal, com remuneração, sem qualquer tipo de afastamento',4),(2,2,'Empregado afastado por motivo de doença do trabalho','Empregado afastado por motivo de doença do trabalho',0),(3,3,'Empregado afastado para prestação de serviço militar','Empregado afastado para prestação de serviço militar',0),(4,4,'Empregado afastado por motivo de licença gestante','Empregado afastado por motivo de licença gestante',0),(5,5,'Empregado afastado por motivo de doença superior a 15 dias','Empregado afastado por motivo de doença superior a 15 dias',0),(6,6,'Demitido','Empregado demitido',5),(7,7,'Férias','Empregado de férias',1);
/*!40000 ALTER TABLE `situacaofuncionario` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'',''),(2,'',''),(3,'(11) 4476-2217',''),(4,'(11) 4476-2792',''),(5,'',''),(6,'',''),(7,'',''),(8,'',''),(9,'',''),(10,'',''),(11,'(11) 4066-1000',''),(12,'',''),(13,'(11) 4997-5347','7742-3630'),(14,'',''),(15,'(11) 5573.3388',''),(16,'(11) 9268.5672',''),(17,'(11) 4432-0066 ',''),(18,'',''),(19,'',''),(20,'',''),(21,'',''),(22,'',''),(23,'',''),(24,'',''),(25,'(11) 2677-4386 ',''),(26,'',''),(27,'',''),(28,'',''),(29,'(11) 3951-1560',''),(30,'',''),(31,'(11) 4997-9621',''),(32,'',''),(33,'(11) 2168-2118',''),(34,'(11) 2168-2000',''),(35,'(11) 4997-9621',''),(36,'',''),(37,'(11) 2337-7746',''),(38,'(11) 3798-1540 ',''),(39,'(11) 4424-1551',''),(40,'',''),(41,'(11) 4976-5828',''),(42,'',''),(43,'11-4330-4759',''),(44,'',''),(45,'(11) 3246-5500',''),(46,'',''),(47,'(11) 2195-3300',''),(48,'',''),(49,'11-2187-5400',''),(50,'',''),(51,'11-4330-4759',''),(52,'',''),(53,'(11) 4426-7632',''),(54,'',''),(55,'11-4177-3258',''),(56,'',''),(57,'',''),(58,'',''),(59,'',''),(60,'',''),(61,'',''),(62,'',''),(63,'(11) 2102-8000',''),(64,'',''),(65,'(11) 2188-9000',''),(66,'',''),(67,'(11) 4125-4327',''),(68,'(11) 4123-0842',''),(69,'',''),(70,'',''),(71,'',''),(72,'',''),(73,'(11) 2381-8329',''),(74,'',''),(75,'',''),(76,'',''),(77,'(11) 2065-7228',''),(78,'',''),(79,'(11) 4332-3555',''),(80,'',''),(81,'(11) 3382-4500',''),(82,'(11) 3382-4530',''),(83,'(11) 2176-9701 ',''),(84,'(11) 8933-4055',''),(85,'(11) 2910-6452',''),(86,'(11) 2916-6029',''),(87,'',''),(88,'',''),(89,'',''),(90,'',''),(91,'(11) 4451-1792',''),(92,'(11) 4972-2458',''),(93,'',''),(94,'',''),(95,'(11) 3566-3900',''),(96,'',''),(97,'(11) 3463-7100',''),(98,'',''),(99,'(11) 3563-4802',''),(100,'',''),(101,'',''),(102,'',''),(103,'(11) 3598-6600 ',''),(104,'(11) 3598-6600',''),(105,'(11) ',''),(106,'',''),(107,'(11) 4475-5097','9358-0048'),(108,'',''),(109,'(11) 4063-4380',''),(110,'',''),(111,'11 4994 4740',''),(112,'11 4990 2139',''),(113,'(11) 4994 4740',''),(114,'(11) 4990 2139',''),(115,'(11) 4476-9622',''),(116,'(11) 7696-6415',''),(117,'(11) 4438-7951',''),(118,'(11) 4468-1468',''),(119,'(11) 2125-1048',''),(120,'(11) 2125-1010',''),(121,'(11) 4475-2064',''),(122,'',''),(123,'(11) 4362-4732',''),(124,'(11) 3425-9875',''),(125,'(11) 2081-5354',''),(126,'',''),(127,'(11) 4996-3044',''),(128,'',''),(129,'(13) 3235-8595',''),(130,'',''),(131,'(11) 4453-4300',''),(132,'(11) 4451-1388',''),(133,'(11) 4479-9722',''),(134,'',''),(135,'',''),(136,'',''),(137,'(11) 44799722',''),(138,'',''),(139,'(11) 2125-6200',''),(140,'',''),(141,'',''),(142,'',''),(143,'(11) 5021-3940',''),(144,'(11) 8531-3402',''),(145,'(11) 4476-2217',''),(146,'',''),(147,'(11) 4401-1222',''),(148,'(11) 4479-4046',''),(149,'(11) 4473-1505',''),(150,'',''),(151,'(11) 3726-7572',''),(152,'',''),(153,'(11) 3726-7100',''),(154,'',''),(155,'(11) 3878-4200',''),(156,'',''),(157,'(11) 2324-9347',''),(158,'(11) 9484-7329',''),(159,'(13) 3361-4422',''),(160,'',''),(161,'(11) 3831-1925',''),(162,'',''),(163,'(13) 3235-8595',''),(164,'',''),(165,'(11) 4435-1210',''),(166,'',''),(167,'(11) 2799-7000',''),(168,'',''),(169,'0800-7272196',''),(170,'0800-7272120',''),(171,'(11) 4472-8329',''),(172,'',''),(173,'10315',''),(174,'',''),(175,'(11) 4438-7733',''),(176,'',''),(177,'0800-7280613',''),(178,'',''),(179,'',''),(180,'',''),(181,'(11) 4996-6000',''),(182,'',''),(183,'(11) 115',''),(184,'',''),(185,'(11) 4229-7347',''),(186,'(11) 4221-5751',''),(187,'(11) 4223-9500',''),(188,'',''),(189,'(11) 3333-888',''),(190,'',''),(191,'(11) 4461-1997',''),(192,'',''),(193,'(11) 2176-9701 ',''),(194,'(11) 8933-4055',''),(195,'(11) 2176-9701 ',''),(196,'(11) 8933-4055',''),(197,'(11) 2102-8000',''),(198,'',''),(199,'(11) 2102-8000',''),(200,'',''),(201,'(11) 7877-4693',''),(202,'',''),(203,'(11) 4472-1280',''),(204,'(11) 4401-1555',''),(205,'(11) 2489-3000','303024'),(206,'','');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoadmissao`
--

DROP TABLE IF EXISTS `tipoadmissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoadmissao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoadmissao`
--

LOCK TABLES `tipoadmissao` WRITE;
/*!40000 ALTER TABLE `tipoadmissao` DISABLE KEYS */;
INSERT INTO `tipoadmissao` VALUES (1,'Admissão de empregado no 1o. emprego','Admissão de empregado no 1o. emprego'),(2,'Admissão de empregado com emprego anterior (reemprego)','Admissão de empregado com emprego anterior (reemprego)'),(3,'Transferência / movimentação do empregado / servidor oriundo de estabelecimento da mesma empresa com ônus para a cedente','Transferência / movimentação do empregado / servidor oriundo de estabelecimento da mesma empresa com ônus para a cedente'),(4,'Transferência / movimentação do empregado / servidor oriundo de estabelecimento da mesma empresa sem ônus para a cedente','Transferência / movimentação do empregado / servidor oriundo de estabelecimento da mesma empresa sem ônus para a cedente');
/*!40000 ALTER TABLE `tipoadmissao` ENABLE KEYS */;
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
INSERT INTO `tipodemissao` VALUES (4,'Dispensa sem justa causa','Dispensa sem justa causa'),(5,'Dispensa com justa causa','Dispensa com justa causa'),(6,'Término do contrato de trabalho','Término do contrato de trabalho'),(7,'Antecipação do término do contrato de trabalho','Antecipação do término do contrato de trabalho'),(8,'Solicitação de demissão pelo empregado','Solicitação de demissão pelo empregado');
/*!40000 ALTER TABLE `tipodemissao` ENABLE KEYS */;
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
INSERT INTO `tipoperfil_funcionalidade` VALUES (5,125),(5,126),(5,127),(5,128),(5,129),(5,130),(5,131),(5,132),(5,133),(5,134),(5,135),(5,136),(5,137),(5,138),(5,139),(5,140),(5,141),(5,142),(5,143),(5,144),(5,145),(5,146),(5,147),(5,148),(5,149),(5,150),(5,151),(5,152),(5,153),(5,154),(5,155),(5,156),(5,157),(5,158),(5,159),(5,160),(5,161),(5,162),(5,163),(5,164),(5,165),(5,166),(5,167),(5,168),(5,169),(5,170),(5,171),(5,172),(5,173),(5,174),(5,175),(5,176),(5,177),(5,178),(5,179),(5,180),(5,181),(5,182),(5,183),(5,184),(5,185),(5,186),(5,187),(5,188),(5,189),(5,190),(5,191),(5,192),(5,193),(5,194),(5,195),(5,196),(5,197);
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
  KEY `FK5B4D8B0EB7A18838` (`idPessoa`),
  CONSTRAINT `FK5B4D8B0EB7A18838` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,NULL,'2011-11-22','2011-01-17','21ef05aed5af92469a50b35623d52101','Angela',NULL),(3,NULL,'2011-11-22','2011-01-17','68c26935d45bf7340b70c481e2578906','Bete',NULL),(4,NULL,'2011-11-22','2011-01-17','21ef05aed5af92469a50b35623d52101','Valdirene',NULL),(5,NULL,NULL,'2011-01-07','68c26935d45bf7340b70c481e2578906','Levi',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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

--
-- Table structure for table `vinculoempregaticio`
--

DROP TABLE IF EXISTS `vinculoempregaticio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculoempregaticio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` bigint(20) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculoempregaticio`
--

LOCK TABLES `vinculoempregaticio` WRITE;
/*!40000 ALTER TABLE `vinculoempregaticio` DISABLE KEYS */;
INSERT INTO `vinculoempregaticio` VALUES (1,10,'Trabalhador urbano vinculado a empregador pessoa Jurídica por contrato de trabalho regido pela CLT, por prazo indeterminado','Trabalhador urbano vinculado a empregador pessoa Jurídica por contrato de trabalho regido pela CLT, por prazo indeterminado'),(2,15,'Trabalhador urbano vinculado a empregador pessoa Física por contrato de trabalho regido pela CLT, por prazo indeterminado','Trabalhador urbano vinculado a empregador pessoa Física por contrato de trabalho regido pela CLT, por prazo indeterminado');
/*!40000 ALTER TABLE `vinculoempregaticio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-16 14:48:15
