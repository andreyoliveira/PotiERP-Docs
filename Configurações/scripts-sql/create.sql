--Tabela: Funcionalidade
--Autor: renan
--Data: 12/01/2011
create table cargo (
	id bigint(20) not null auto_increment primary key,
	cargo varchar(150) not null,
	descricao varchar(250) 
);

--Autor: renan
--Data: 26/01/2011
create table TipoAdmissao (
	id bigint(20) not null auto_increment primary key,
	nome varchar(150) not null,
	descricao varchar(250) 
);


--Autor: Renan
--Data: 26/01/2011
create table VinculoEmpregaticio (
	id bigint(20) not null auto_increment primary key,
    codigo bigint(20) not null,
	nome varchar(150) not null,
	descricao varchar(250) 
);
create table SituacaoFuncionario (
	id bigint(20) not null auto_increment primary key,
  codigo bigint(20) not null,
	nome varchar(150) not null,
	descricao varchar(250) 
);

/*
 * Autor: Felipe
 * Data: 31/01/2011
 */
CREATE TABLE `Pais` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(4) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `SIGLA` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODIGO_UNIQUE` (`CODIGO`),
  UNIQUE KEY `NOME_UNIQUE` (`NOME`)
)

CREATE TABLE `Estado` (
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
)

/*
 * Autor: Renan
 * Data: 07/02/2011
 */
create table LocalTrabalho (
	id bigint(20) not null auto_increment primary key,
  idFuncionario bigint(20) not null,
	idCliente bigint(20) not null,
	idJornadaTrabalho bigint(20) not null,
  idSetor bigint(20) not null,
  diaSemana int(11) not null  
  );
  
ALTER TABLE LocalTrabalho ADD FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);
ALTER TABLE LocalTrabalho ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);
ALTER TABLE LocalTrabalho ADD FOREIGN KEY (idJornadaTrabalho) REFERENCES JornadaTrabalho (id);
ALTER TABLE LocalTrabalho ADD FOREIGN KEY (idSetor) REFERENCES Setor (id);

/**
 * Autor: Renan
 * Data: 22/02/2011
 */
create table TipoValeTransporte (
id int(11) not null auto_increment primary key,
codigo varchar(10) not null,
nome varchar(150) not null,
valor decimal(19,2) not null,
descricao varchar(250),
situacao varchar(10)
);

/**
 * Autor: Renan
 * Data: 23/02/2011
 */
create table ValeTransporte (
id int(11) not null auto_increment primary key,
dataAtribuicao datetime not null,
idTipoValeTransporte int(11) not null,
idFuncionario bigint(20) not null,
observacao varchar(250),
situacao varchar(10)
);

/**
 * Autor: Renan
 * Data: 26/02/2011
 */
create table TipoValeRefeicao (
id int(11) not null auto_increment primary key,
codigo varchar(10) not null,
nome varchar(150) not null,
valor decimal(19,2) not null,
descricao varchar(250),
situacao varchar(10)
);

/**
 * Autor: Renan
 * Data: 23/02/2011
 */
create table ValeRefeicao (
id int(11) not null auto_increment primary key,
dataAtribuicao datetime not null,
idTipoValeRefeicao int(11) not null,
idFuncionario bigint(20) not null
);

/**
* Autor: Doug
* Data: 29/03/2011
*/
CREATE TABLE cidade (
id INT NOT NULL auto_increment,  
codigo VARCHAR(4) NULL ,  
nome VARCHAR(255) NOT NULL ,
sigla VARCHAR(5) NULL ,  
idEstado INT NULL ,
PRIMARY KEY (id) ,  
INDEX FK_CIDADE_ESTADO (IdEstado ASC) ,  
CONSTRAINT FK_CIDADE_ESTADO FOREIGN KEY (IdEstado ) REFERENCES estado (ID) ON DELETE NO ACTION ON UPDATE NO ACTION);

CREATE  TABLE feriado (
id INT NOT NULL auto_increment,  
nome VARCHAR(255) NOT NULL ,  
idCidade INT NULL ,
idEstado INT NULL ,  
idPais INT NULL ,
data DATETIME NOT NULL,
isExpira TINYINT(1)  NULL DEFAULT false,
tipoFeriado INT NOT NULL,
isFeriadoPassado TINYINT(1)  NULL,
PRIMARY KEY (id) ,  
INDEX FK_FERIADO_PAIS (idPais ASC) ,  
INDEX FK_FERIADO_ESTADO (idEstado ASC) ,  
INDEX FK_FERIADO_CIDADE (idCidade ASC) ,  
CONSTRAINT FK_FERIADO_PAIS FOREIGN KEY (idPais ) REFERENCES pais (ID ) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT FK_FERIADO_ESTADO FOREIGN KEY (idEstado ) REFERENCES estado (ID ) ON DELETE NO ACTION ON UPDATE NO ACTION,  
CONSTRAINT FK_FERIADO_CIDADE FOREIGN KEY (idCidade ) REFERENCES cidade (id ) ON DELETE NO ACTION ON UPDATE NO ACTION);

/**
* Autor: Renan
* Data: 01/05/2011
*/
DELETE FROM VALETRANSPORTE;
CREATE TABLE CALCULOVALETRANSPORTE (
id INT NOT NULL auto_increment,
idUsuario bigint(20) not null,
dataInicio date not null,
dataFim date not null,
quantidadeTotal int,
valorTotal decimal(19,2),
situacao varchar(20),
PRIMARY KEY (id));
ALTER TABLE CALCULOVALETRANSPORTE ADD FOREIGN KEY (idUsuario) REFERENCES Usuario (id);

CREATE TABLE PAGAMENTOVALETRANSPORTE (
id INT NOT NULL auto_increment,
idCalculoValeTransporte int not null,
idFuncionario bigint(20) not null,
idCliente bigint(20) not null,
idTipoValeTransporte int(11) not null,
rumoTransporte varchar(10) not null,
dataValeTransporte date not null,
PRIMARY KEY (id));
ALTER TABLE PAGAMENTOVALETRANSPORTE ADD FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);
ALTER TABLE PAGAMENTOVALETRANSPORTE ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);
ALTER TABLE PAGAMENTOVALETRANSPORTE ADD FOREIGN KEY (idTipoValeTransporte) REFERENCES TipoValeTransporte (id);
ALTER TABLE PAGAMENTOVALETRANSPORTE ADD FOREIGN KEY (idCalculoValeTransporte) REFERENCES CalculoValeTransporte (id);

ALTER TABLE VALETRANSPORTE ADD idCliente bigint(20) not null;
ALTER TABLE VALETRANSPORTE ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);

/**
* Autor: Renan
* Data: 09/06/2011
 */
DELETE FROM VALEREFEICAO;
CREATE TABLE CALCULOVALEREFEICAO (
id INT NOT NULL auto_increment,
idUsuario bigint(20) not null,
dataInicio date not null,
dataFim date not null,
quantidadeTotal int,
valorTotal decimal(19,2),
situacao varchar(20),
PRIMARY KEY (id));
ALTER TABLE CALCULOVALEREFEICAO ADD FOREIGN KEY (idUsuario) REFERENCES Usuario (id);

CREATE TABLE PAGAMENTOVALEREFEICAO (
id INT NOT NULL auto_increment,
idCalculoValeRefeicao int not null,
idFuncionario bigint(20) not null,
idCliente bigint(20) not null,
idTipoValeRefeicao int(11) not null,
dataValeRefeicao date not null,
PRIMARY KEY (id));
ALTER TABLE PAGAMENTOVALEREFEICAO ADD FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);
ALTER TABLE PAGAMENTOVALEREFEICAO ADD FOREIGN KEY (idTipoValeRefeicao) REFERENCES TipoValeRefeicao (id);
ALTER TABLE PAGAMENTOVALEREFEICAO ADD FOREIGN KEY (idCalculoValeRefeicao) REFERENCES CalculoValeRefeicao (id);

alter table calculovaleRefeicao add mesAno varchar(15) not null;
alter table calculovaleRefeicao add tipoCalculo varchar(50) not null;
alter table calculovaleRefeicao add idFuncionario bigint(20);
alter table calculovaleRefeicao add constraint FK_calculovr_func foreign key (idFuncionario) references funcionario (id);
alter table pagamentovalerefeicao drop idCliente;

/**
* Autor: Doug
* Data: 04/07/2011
 */
create table intervalojornada (
  id bigint(20) not null auto_increment primary key,
  tempo bigint(20) not null ,
  tipointervalo varchar(250) not null
);

/**
 * Autor: Renan
 * data: 18/07/2011
 */
create table parametrosrh (
  id bigint(20) not null auto_increment primary key,
  nome varchar(255) not null,
  descricao varchar(1000) not null,
  tipoparametro varchar(50) not null,
  valor varchar(1000) not null
);

/**
 * Autor: Renan
 * data: 02/08/2011
 */
create table TipoCestaBasica (
id int(11) not null auto_increment primary key,
codigo varchar(10) not null,
nome varchar(150) not null,
valor decimal(19,2) not null,
descricao varchar(250),
situacao varchar(10)
);

create table CestaBasica (
id int(11) not null auto_increment primary key,
dataAtribuicao datetime not null,
idTipoCestaBasica int(11) not null,
idFuncionario bigint(20) not null
);

ALTER TABLE CestaBasica ADD CONSTRAINT FK_CESTA_TIPOCESTA FOREIGN KEY (idTipoCestaBasica) REFERENCES TipoCestaBasica (ID);
ALTER TABLE CestaBasica ADD CONSTRAINT FK_CESTA_FUNC FOREIGN KEY (idFuncionario) REFERENCES Funcionario (ID);

create table Verba (
id int(11) not null auto_increment primary key,
codigo varchar(10) not null,
nome varchar(150) not null,
descricao varchar(250),
base varchar(20) not null,
sobre varchar(20),
quantidade int(10),
percentual decimal(10,4),
situacao varchar(10)
);

create table apontamentosfolha (
id int(11) not null auto_increment primary key,
dataReferencia date not null,
idFuncionario bigint(20) not null,
idVerba int(11) not null
);

ALTER TABLE apontamentosfolha ADD CONSTRAINT FK_APONT_VERBA FOREIGN KEY (idVerba) REFERENCES Verba (ID);
ALTER TABLE apontamentosfolha ADD CONSTRAINT FK_APONT_FUNC FOREIGN KEY (idFuncionario) REFERENCES Funcionario (ID);


/**
 * Autor: Douglas
 * data: 16/10/2011
 */
CREATE  TABLE responsavel (
  id bigint(20) not null auto_increment primary key,
  idFuncionario bigint(20) not null
);

alter table responsavel add constraint FK_RESPONSAVEL_FUNCIONARIO FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);

create table responsavel_cliente (
	idResponsavel bigint(20) not null,
	idCliente bigint(20) not null
);

alter table responsavel_cliente add constraint FK_RESPONSAVEL_CLIENTE_CLIENTE FOREIGN KEY (idCliente) REFERENCES Cliente (id);
alter table responsavel_cliente add constraint FK_RESPONSAVEL_CLIENTE_RESPONSAVEL FOREIGN KEY (idResponsavel) REFERENCES Responsavel (id);

--Tabela RECURSO
--Andrey 31/10/2011
create table erp.recurso (
    id bigint(20) not null auto_increment primary key,
    codigo varchar(4) not null,
    descricao varchar(80) not null
);

--Tabela ALTERACAOSALARIAL
--Andrey 06/12/2011
create table alteracaosalarial (
    id              bigint(20)   not null auto_increment primary key,
    idFuncionario   bigint(20)   not null,
    dataAlteracao   datetime     not null,
    salarioAnterior numeric(6,2) not null,
    reajuste        numeric(2,2) not null,
    salarioAtual    numeric(6,2) not null,
    idCargo         bigint(20)   not null,
    motivo          varchar(255) not null
);

alter table alteracaosalarial add constraint FK_ALTERACAOSALARIAL_FUNCIONARIO FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);
alter table alteracaosalarial add constraint FK_ALTERACAOSALARIAL_CARGO FOREIGN KEY (idCargo) REFERENCES Cargo (id);

--Tabela FERIAS
--Andrey 12/12/2011
create table ferias (
    id                          bigint(20) not null auto_increment primary key,
    idFuncionario               bigint(20) not null,
    periodoInicialAquisitivo    datetime not null,
    periodoFinalAquisitivo      datetime not null,
    feriasColetivas             boolean not null,
    periodoInicialGozo          datetime not null,
    periodoFinalGozo            datetime not null,
    retornoTrabalho             datetime
);

alter table ferias add constraint FK_FERIAS_FUNCIONARIO FOREIGN KEY (idFuncionario) REFERENCES funcionario (id);

/**
 * Tabela de relacionamento entre clientes e setores.
 * TODO [Estevao] : arrumar os relacionamentos e FKS
 */
CREATE TABLE `cliente_setor` (
  `idCliente` bigint(20) NOT NULL,
  `idSetor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/**
 * Tabela de relacionamento entre clientes e jornada trabalho.
 * TODO [Estevao] : arrumar os relacionamentos e FKS
 */
CREATE TABLE `cliente_jornadatrabalho` (
  `idCliente` bigint(20) NOT NULL,
  `idJornadaTrabalho` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table alteracaoCliente (
    id              bigint(20)   not null auto_increment primary key,
    idFuncionario   bigint(20)   not null,
    idClienteAnterior bigint(20)   not null,
    idClienteAtual    bigint(20)   not null,
    dataTransferencia datetime   not null
);

alter table alteracaoCliente add constraint FK_ALTERACAOCLIENTE_FUNCIONARIO FOREIGN KEY (idFuncionario) REFERENCES Funcionario (id);
alter table alteracaoCliente add constraint FK_ALTERACAOCLIENTE_CLIENTEANTERIOR FOREIGN KEY (idClienteAnterior) REFERENCES Cliente (id);
alter table alteracaoCliente add constraint FK_ALTERACAOCLIENTE_CLIENTEATUAL FOREIGN KEY (idClienteAtual) REFERENCES Cliente (id);

--Tabela HISTORICODEMISSAO
--Andrey 28/12/2012
create table historicoDemissao (
    id 				bigint(20) 		not null auto_increment primary key,
    idFuncionario 	bigint(20) 		not null,
    dataDemissao 	datetime 		not null,
    motivo 			varchar(255) 	not null,
    tipoAvisoPrevio	varchar(255) 	not null
);

alter table historicoDemissao add constraint FK_DEMISSAO_FUNCIONARIO FOREIGN KEY (idFuncionario) REFERENCES funcionario (id);

/**
 * Autor: Douglas
 * data: 11/12/2011
 * Alterado: Andrey - 05/01/2012
 */
create table afastamento (
       id 							bigint(20) 		not null auto_increment primary key,
       idFuncionario 				bigint(20) 		not null,
       motivo 						varchar(255) 	not null,
       dataUltimoDiaTrabalho 		datetime 		not null,
       dataAfastamento 				datetime 		not null,
       dataRetorno 					datetime,
       afastamentoComEstabilidade 	TINYINT(1) 		not NULL
);

/*Retirado por n�o haver mais liga��o com situacaoFuncionario*/
/*alter table afastamento add constraint
FK_AFASTAMENTO_SITUACAO_FUNCIONARIO foreign key
(idSituacaoFuncionario) references situacaoFuncionario(id);*/

alter table afastamento add constraint FK_AFASTAMENTO_FUNCIONARIO 
FOREIGN KEY (idFuncionario) REFERENCES funcionario (id);

/**
 * Autor: Andrey
 * Data: 19/03/2012
 */
create table medidadisciplinar(
    id bigint(20) not null auto_increment primary key,
    idFuncionario bigint(20) not null,
    motivo varchar(255) not null,
    medidaAdotada varchar(255) not null,
    dataInicialOcorrencia datetime not null,
    dataFinalOcorrencia datetime not null,
    observacao varchar(255)
);

alter table medidadisciplinar add constraint FK_MEDIDADISCIPLINAR_FUNCIONARIO 
FOREIGN KEY (idFuncionario) REFERENCES funcionario(id);

/**
 * Autor: Andrey
 * Data: 28/05/2012
 */
create table tiposervico(
    id bigint(20) not null auto_increment primary key,
    codigo varchar(10) not null,
    descricao varchar(150) not null
);

create table programacaoservico(
    id bigint(20) not null auto_increment primary key,
    idCliente bigint(20) not null,
    idTipoServico bigint(20) not null,
    dataPrevisao datetime not null,
    dataRealizacao dateTime
);

alter table programacaoservico add constraint FK_PROGRAMACAOSERVICO_CLIENTE
FOREIGN KEY (idCliente) REFERENCES cliente(id);

alter table programacaoservico add constraint FK_PROGRAMACAOSERVICO_TIPOSERVICO
FOREIGN KEY (idTipoServico) REFERENCES tiposervico(id);

--Tabela: Periodicidade
--Autor: renan
create table periodicidade (
	id bigint(20) not null auto_increment primary key,
	nome varchar(150) not null
);

alter table cliente add idPeriodicidade bigint(20);

alter table cliente add constraint FK_CLIENTE_PERIODICIDADE
FOREIGN KEY (idPeriodicidade) REFERENCES periodicidade(id);

insert into periodicidade values (1, 'Semanal');
insert into periodicidade values (2, 'Quinzenal');
insert into periodicidade values (3, 'Mensal');

alter table erp.responsavel add isSupervisor boolean;

alter table programacaovisitas add idTipoServico bigint(20);
alter table programacaovisitas add constraint FK_PROGRAMACAO_TIPOSERVICO
FOREIGN KEY (idTipoServico) REFERENCES tiposervico(id);

--Tabela HISTORICOCOMERCIAL
--Felipe 01/06/2012
create table historicocomercial (
    id              bigint(20)   not null auto_increment primary key,
    idCliente 		bigint(20) not null,
    ano				bigint(20) not null,
    mes				bigint(20) not null,
    valorNFe		numeric(8,2) not null,
    retencao        numeric(8,2) not null,
    retencaoISS    	numeric(8,2) not null,
    abatimentos		numeric(8,2) not null,
    totalDeducoes   numeric(8,2) not null,
    totalLiquidoNFe   numeric(8,2) not null
);

ALTER TABLE historicocomercial ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);

--Autor: renan
create table contratoCliente(
    id bigint(20) not null auto_increment primary key,
    idCliente bigint(20) not null,
    idTipoServico bigint(20) not null,
    idPeriodicidade bigint(20) not null
);

alter table contratoCliente add constraint FK_CONTRATO_CLIENTE
FOREIGN KEY (idCliente) REFERENCES cliente(id);

alter table contratoCliente add constraint FK_TIPOSERVICO_CLIENTE
FOREIGN KEY (idTipoServico) REFERENCES tipoServico(id);

alter table contratoCliente add constraint FK_PERIODICIDADE_CLIENTE
FOREIGN KEY (idPeriodicidade) REFERENCES periodicidade(id);

--Autor: renan
create table reajusteCliente(
    id bigint(20) not null auto_increment primary key,
    idCliente bigint(20) not null,
    valor decimal(19,2) not null,
    dataReajuste date not null
);

alter table reajusteCliente add constraint FK_REAJUSTE_CLIENTE
FOREIGN KEY (idCliente) REFERENCES cliente(id);

alter table cliente add column valorContrato decimal(19,2) not null default 0;

alter table reajusteCliente add column valorReajustado decimal(19,2) not null default 0;
