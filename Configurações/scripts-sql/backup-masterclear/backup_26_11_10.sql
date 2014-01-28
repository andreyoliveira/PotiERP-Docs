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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) NOT NULL,
  `codigo` varchar(255),
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
  `observacao` varchar(255),
  `razaoSocial` varchar(255) NOT NULL,
  `idContato1` bigint (20) DEFAULT NULL,
  `idContato2` bigint (20) DEFAULT NULL,
  `idTelefone1` bigint (20) DEFAULT NULL,
  `idTelefone2` bigint (20) DEFAULT NULL,
  `idEmpresa` bigint(20) NOT NULL,
  `idMatriz` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK96841DDACC8F1928` (`idContato2`),
  KEY `FK96841DDA8CCD916B` (`idTelefone2`),
  KEY `FK96841DDA61705069` (`idMatriz`),
  KEY `FK96841DDACC8EA4C9` (`idContato1`),
  KEY `FK96841DDACBBE3568` (`idEmpresa`),
  KEY `FK96841DDA8CCD1D0C` (`idTelefone1`),
  CONSTRAINT `FK96841DDA8CCD1D0C` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDA61705069` FOREIGN KEY (`idMatriz`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK96841DDA8CCD916B` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FK96841DDACBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK96841DDACC8EA4C9` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FK96841DDACC8F1928` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (4,'60872306009701','','Chácara Santo Antonio','04711000','São Paulo ','','Rua Engenheiro Mesquita Sampaio','São Paulo ',573,'Sherwin Williams do Brasil Ltda','Sherwin Williams do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (5,'01527330001921','','Vila Elclor - Paranapiacaba','09154900','Santo André','KM 38','Estrada de Ferro Santos Jundiaí, s/n','São Paulo',0,'Cesari Empresa Multimodal de Movimentação de Materiais Ltda','Cesari Empresa Multimodal de Movimentação de Materiais Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (6,'60872306001131','','Várzea do Tamanduateí','09290416','Santo André','','Rua Angelo Franchini,','São Paulo',151,'Sherwin Wiilliams do Brasil Ltda','Sherwin Wiilliams do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (7,'60872306009892','','Presidente Altino','06210030','Osasco','','Rua José Lopes Lazzaro','São Paulo',365,'Sherwin Wiilliams do Brasil Ltda','Sherwin Wiilliams do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (8,'66903477000195','','Jd. Ruyce','09961720','Diadema','','Rua Emir Macedo Nogueira','São Paulo',273,'Farber Chemie Indústria Química Ltda','Farber Chemie Indústria Química Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (9,'08157285000180','','Parque das Nações','09241000','Santo André ','','Rua Columbia','São Paulo',461,'IPL Serviços de Escritórios  Ltda ','IPL Serviços de Escritórios  Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (10,'06012292000169','','Vila Mariana','04040031','São Paulo','Conj. 43','Rua Loefgreen','São Paulo',1291,'Synapsystem Ltda','Synapsystem Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (11,'53715975000162','','Vila Guiomar','09290000','Santo André','','Rua Catequese','São Paulo',1105,'Sindicato dos Contabilistas de Santo André','Sindicato dos Contabilistas de Santo André',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (12,'59357749000133','','Pq.Jaçatuba','09290520','Santo André','','Av. dos Estados','São Paulo',8293,'Tec Pan Indústria e Comércio de Plásticos Ltda ','Tec Pan Indústria e Comércio de Plásticos Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (13,'60872306001301','','Parque João Ramalho','07240130','Guarulhos','','Av.Paquistão','São Paulo',440,'Sherwin Williams do Brasil Ltda','Sherwin Williams do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (14,'60872306011609','','Vila Suissa','08210000','Mogi das Cruzes','','Av.Francisco Rodrigues Filho','São Paulo',3970,'Sherwin Williams do Brasil Ltda','Sherwin Williams do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (15,'10233825000100','','Rudge Ramos ','09626120','São Bernardo do Campo ','','Rua André Capretz Filho','São Paulo ',46,'Carimed Equipamentos Médicos Ltda','Carimed Equipamentos Médicos Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (16,'07692770000191','','Bela Vista ','01310000','São Paulo','','Av.Paulista','São Paulo',726,'Itélios do Brasil Informática Ltda ','Itélios do Brasil Informática Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (17,'65654121000100','','Casa Verde','02512010','São Paulo','','Rua Zanzibar','São Paulo',1149,'Papel Ecológico Comércio Ltda','Papel Ecológico Comércio Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (18,'66762964000185','','Camilópolis ','09230310','Santo André','','Rua Taubaté','São Paulo',1130,'Famadi Indústria Comércio e Serviços Ltda','Famadi Indústria Comércio e Serviços Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (19,'73431686001030','','Centro','01332000','São Paulo','','Rua Itapeva','São Paulo ',26,'Kontik Franstur Viagens e Turismo Ltda','Kontik Franstur Viagens e Turismo Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (20,'66762964000266','','Barcelona','09230310','São Caetano do Sul','','Av.Goiás','São Paulo ',3111,'Famadi Indústria Comércio e Serviços Ltda ','Famadi Indústria Comércio e Serviços Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (21,'08484540000108','','Jardim Paulista','01454011','São Paulo','','Rua Professor Arthur Ramos','São Paulo',183,'GMC Software Tecnologia  Ltda ','GMC Software Tecnologia  Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (22,'00787057000182','','Ipiranga','09080111','São Paulo','','Rua Vieira de Almeida','São Paulo',299,'H A da Fonte Sanches Me','H A da Fonte Sanches Me',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (23,'58698432000106','','Vila Metalúrgica ','09230020','Santo André ','','Rua Atenas','São Paulo ',111,'Vovó Lina Comidas Caseiras Lda ','Vovó Lina Comidas Caseiras Lda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (24,'29739737004361','','Vila Mariana','04121000','São Paulo','','Rua Santa Cruz','São Paulo',541,'Elevadores Ótis Ltda - Regional SP','Elevadores Ótis Ltda - Regional SP',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (25,'29739737004604','','Vila Madalena ','05441050','São Paulo','','Rua Borges de Barros','São Paulo',59,'Elevadores Ótis Ltda - SPO ','Elevadores Ótis Ltda - SPO ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (26,'29739737005252','','Saúde','04138002','Santo André','','Rua Caramuru','São Paulo ',646,'Elevadores Ótis Ltda - SPS','Elevadores Ótis Ltda - SPS',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (27,'29739737005333','','Bela Vista','01306000','São Paulo','','Rua Avanhandava','São Paulo',830,'Elevadores Ótis Ltda - SPN','Elevadores Ótis Ltda - SPN',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (28,'29739737002822','','Chácara Inglesa','09726000','São Bernardo do Campo ','','Av.Barão de Mauá','São Paulo ',243,'Elevadores Ótis Ltda - ABC','Elevadores Ótis Ltda - ABC',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (29,'60708880000187','','Vila Gilda','09190460','Santo André ','','Rua Santa Mônica','São Paulo ',66,'RZR Bombas Positivas Ltda ','RZR Bombas Positivas Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (30,'02987129000160','','Jd.Ruyce','09980000','Diadema','','Av.Nossa Senhora das Graças','São Paulo',1315,'Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP','Ultra Master Plug Comércio e Indústria de Equipamentos de Proteção Individual Ltda - EPP',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (31,'55706147000193','','Jabaquara','04323010','São Paulo','','Rua Coronel Luís de Faria e Souza','São Paulo',274,'Condominio Edíficio Rogério','Condominio Edíficio Rogério',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (32,'01527330000100','','Jd. São Marcos ','11570000','Cubatão','','Av.Plínio de Queiroz, S/N','São Paulo ',0,'Cesari Empresa Multimodal de Mov de Materiais Limitada - Base 1','Cesari Empresa Multimodal de Mov de Materiais Limitada - Base 1',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (33,'67315556000148','','Jd. do Mar','09750510','São Bernardo do Campo ','','Rua Bering','São Paulo',163,'Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda','Fonau Fono Psico Fisiot Manut e Com de Aces Aud Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (34,'49524341000155','','Idealópolis','09950580','Diadema ','','Rua Idealópolis','São Paulo',354,'Galvonoplastia Anchieta Ltda ','Galvonoplastia Anchieta Ltda ',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (35,'03691655000141','','Rudge Ramos','11570000','São Bernardo do Campo','','Rua Pio XII','São Paulo ',89,'DMZ Produtos para Laboratórios Lda','DMZ Produtos para Laboratórios Lda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (36,'35402759000185','','Jd. Cambara ','05560000','Santo André ','','Rua Érico Veríssimo ','São Paulo ',342,'Bimbo do Brasil Ltda','Bimbo do Brasil Ltda',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (37,'11409362000157','','Quarta Parada','03174000','São Paulo','','Rua Serra da Bocaina','São Paulo',121,'Residencial Bio Vitta','Residencial Bio Vitta',1,NULL);
INSERT INTO `cliente` (id, cnpj, tipoAtividade, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idEmpresa, idMatriz) VALUES (38,'00822263000186','','Jd. Nova Petrópolis ','09770330','São Bernardo do Campo','','Rua Alameda Dona Thereza Cristina','São Paulo ',819,'W-Service Comércio e Serviços em Equipamentos Elétricos Ltda','W-Service Comércio e Serviços em Equipamentos Elétricos Ltda',1,NULL);
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
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (id, cnpj, tipoAtividade, codigoMunicipal, bairro, cep, cidade, complemento, endereco, estado, numero, nomeFantasia, razaoSocial, idMatriz) VALUES (1,'09337554000153','Limpeza','182.966','Parque Erasmo Assunção','09271410','Santo André','','Av. Itamarati','São Paulo',2773,'Master Clear ','Master Clear Serviços de Limpeza Ltda',NULL);
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
-- Table structure for table `formapagamento`
--

DROP TABLE IF EXISTS `formapagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapagamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagamento`
--

LOCK TABLES `formapagamento` WRITE;
/*!40000 ALTER TABLE `formapagamento` DISABLE KEYS */;
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
  CONSTRAINT `FKC4F07D85CBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKC4F07D85145DBD91` FOREIGN KEY (`idContato2`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKC4F07D855BD2F305` FOREIGN KEY (`idTelefone1`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D855BD2F306` FOREIGN KEY (`idTelefone2`) REFERENCES `telefone` (`id`),
  CONSTRAINT `FKC4F07D85A87B4D18` FOREIGN KEY (`idContato1`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidade`
--

LOCK TABLES `funcionalidade` WRITE;
/*!40000 ALTER TABLE `funcionalidade` DISABLE KEYS */;
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
  `cargo` varchar(255) DEFAULT NULL,
  `categoriaHabilitacao` varchar(255) DEFAULT NULL,
  `dataVencimentoHabilitacao` datetime DEFAULT NULL,
  `habilitacao` varchar(255) DEFAULT NULL,
  `codigoRegistro` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `FKB3A9C5BB8F49D43C` (`idPessoaReferencia`),
  KEY `FKB3A9C5BBB7A18838` (`idPessoa`),
  KEY `FKB3A9C5BB6E772212` (`idJornadaTrabalho`),
  KEY `FKB3A9C5BB420AE1C` (`idFormaPagamento`),
  KEY `FKB3A9C5BBCBBE3568` (`idEmpresa`),
  KEY `FKB3A9C5BBA7D2EB4E` (`idContaBancaria`),
  KEY `FKB3A9C5BBF3EAC04A` (`idCliente`),
  CONSTRAINT `FKB3A9C5BBF3EAC04A` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FKB3A9C5BB420AE1C` FOREIGN KEY (`idFormaPagamento`) REFERENCES `formapagamento` (`id`),
  CONSTRAINT `FKB3A9C5BB6E772212` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`),
  CONSTRAINT `FKB3A9C5BB8F49D43C` FOREIGN KEY (`idPessoaReferencia`) REFERENCES `pessoareferencia` (`id`),
  CONSTRAINT `FKB3A9C5BBA7D2EB4E` FOREIGN KEY (`idContaBancaria`) REFERENCES `contabancaria` (`id`),
  CONSTRAINT `FKB3A9C5BBB7A18838` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `FKB3A9C5BBCBBE3568` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosjornada`
--

LOCK TABLES `horariosjornada` WRITE;
/*!40000 ALTER TABLE `horariosjornada` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadatrabalho`
--

LOCK TABLES `jornadatrabalho` WRITE;
/*!40000 ALTER TABLE `jornadatrabalho` DISABLE KEYS */;
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
  CONSTRAINT `FK2C4D1A1B6E772212` FOREIGN KEY (`idJornadaTrabalho`) REFERENCES `jornadatrabalho` (`id`),
  CONSTRAINT `FK2C4D1A1B3A873FCE` FOREIGN KEY (`idHorariosJornada`) REFERENCES `horariosjornada` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadatrabalho_horariosjornada`
--

LOCK TABLES `jornadatrabalho_horariosjornada` WRITE;
/*!40000 ALTER TABLE `jornadatrabalho_horariosjornada` DISABLE KEYS */;
/*!40000 ALTER TABLE `jornadatrabalho_horariosjornada` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoperfil`
--

LOCK TABLES `tipoperfil` WRITE;
/*!40000 ALTER TABLE `tipoperfil` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2010-10-21',NULL,'2010-10-21','8e07dafd13495561db9063ebe4db4b27','levi',NULL);
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

-- Dump completed on 2010-11-26 22:01:01
