--Tabela: HorariosJornada
--Autor: renan
--Data: 27/12/2010

alter table horariosjornada add(diaSeguinte bit(1));

--Tabela: Cliente
--Autor: renan
--Data: 27/12/2010
alter table cliente change cnpj cpfCnpj varchar(20);
alter table cliente add column tipoDocumento varchar(10) not null;
update cliente set tipoDocumento = "CNPJ";

--Tabela: Cliente
--Autor: renan
--Data: 05/01/2011
alter table cliente add column situacao varchar(10) not null;
update cliente set situacao="ATIVO" where dataInicioContrato is null;
update cliente set situacao="INATIVO" where dataFinalContrato is not null;

--Table: FormaPagamento
--Autor: renan
--Data:13/01/11
alter table formaPagamento add column nome varchar(100) not null;
alter table funcionario drop column cargo;
alter table funcionario add column idCargo bigint(20);
alter table funcionario add foreign key (idCargo) References cargo (id);
alter table funcionario drop column codigoRegistro;
alter table funcionario add column codigoRegistro bigint(20) not null;
alter table funcionario add column nascionalidade varchar(100);
alter table funcionario add column naturalidade varchar(100);
alter table funcionario add column ufRg varchar(5);
alter table funcionario add column observacao varchar(300);
alter table funcionario add column setor varchar(100);

--Table: Funcionario
--Autor: renan
--Data:19/01/11
alter table funcionario drop column setor;
ALTER TABLE funcionario ADD COLUMN idSetor bigint(20);
ALTER TABLE funcionario ADD FOREIGN KEY (idSetor) REFERENCES Setor (id);
ALTER TABLE funcionario ADD COLUMN banco varchar(50);
ALTER TABLE funcionario ADD COLUMN agencia varchar(50);
ALTER TABLE funcionario ADD COLUMN conta varchar(50);
ALTER TABLE funcionario ADD COLUMN tipoConta varchar(50);
ALTER TABLE setor ADD COLUMN descricao varchar(200);
ALTER TABLE cargo ADD COLUMN cbo bigint(6);
ALTER TABLE dependente ADD COLUMN dataInclusao datetime;
alter table funcionario change tipoConta tipoContaBancaria varchar(50);
alter table funcionario change estadoCivil estadoCivil varchar(70);

--Autor renan
--Data: 25/01.2011
alter table funcionario drop column paisRG;
alter table funcionario drop column cidadeRG;
update funcionario set ctps = null;
alter table funcionario change ctps ctps bigint(8);
ALTER TABLE funcionario ADD COLUMN serieCtps bigint(6);
ALTER TABLE funcionario ADD COLUMN ufCtps varchar(2);
alter table funcionario add column tipoContrato varchar(50);

--Autor: renan
--Data: 26/01/2011
alter table funcionario add column idTipoAdmissao bigint(20);
ALTER TABLE funcionario ADD FOREIGN KEY (idTipoAdmissao) REFERENCES TipoAdmissao (id);
alter table funcionario add column idVinculoEmpregaticio bigint(20);
ALTER TABLE funcionario ADD FOREIGN KEY (idVinculoEmpregaticio) REFERENCES VinculoEmpregaticio (id);
alter table funcionario add column idSituacaoFuncionario bigint(20);
ALTER TABLE funcionario ADD FOREIGN KEY (idSituacaoFuncionario) REFERENCES SituacaoFuncionario (id);
alter table funcionario change escolaridade escolaridade varchar(100);
alter table funcionario add column ufNaturalidade varchar(2);
alter table funcionario add column naturalizado bit(1);
alter table funcionario add column dataNaturalizacao datetime;
alter table funcionario add column deficienteFisico bit(1);
alter table funcionario add column dataNascimentoConjuge datetime;
alter table funcionario add column nomeConjuge varchar(255);

/*
 * Autor: Felipe
 * Data: 26/01/2011
 */
alter table funcionario add column raca varchar(20);

/*
 * Autor: Felipe
 * Data: 02/01/2011
 */
ALTER TABLE cliente CHANGE COLUMN estado idEstado INT(11) NULL DEFAULT NULL;
update cliente set idEstado = (Select ID from Estado where SIGLA='SP');
ALTER TABLE cliente ADD CONSTRAINT FK_CLIENTE_ESTADO FOREIGN KEY (idEstado) REFERENCES Estado (ID);
update empresa set estado = null;
ALTER TABLE empresa CHANGE COLUMN estado idEstado INT(11) NULL DEFAULT NULL;
update empresa set idEstado = (Select ID from Estado where SIGLA='SP');
ALTER TABLE empresa ADD CONSTRAINT FK_EMPRESA_ESTADO FOREIGN KEY (idEstado) REFERENCES Estado (ID);
update pessoa set estado = null;
ALTER TABLE pessoa CHANGE COLUMN estado idEstado INT(11) NULL DEFAULT NULL;
update pessoa set idEstado = (Select ID from Estado where SIGLA='SP');
ALTER TABLE pessoa ADD CONSTRAINT FK_PESSOA_ESTADO FOREIGN KEY (idEstado) REFERENCES Estado (ID);
update fornecedor set estado = null;
ALTER TABLE fornecedor CHANGE COLUMN estado idEstado INT(11) NULL DEFAULT NULL;
update fornecedor set idEstado = (Select ID from Estado where SIGLA='SP');
ALTER TABLE fornecedor ADD CONSTRAINT FK_FORNECEDOR_ESTADO FOREIGN KEY (idEstado) REFERENCES Estado (ID);

/**
 * Autor: Renan
 * Data: 07/02/2011
 */
alter table situacaoFuncionario add column codigoCor int(2);

/**
 * Autor: Renan
 * Data: 20/02/2011
 */
alter table dependente add column localNascimento varchar(100);
alter table dependente add column cartorio varchar(100);
alter table dependente add column numeroRegistro int(11);
alter table dependente add column numeroFolha int(11);
alter table dependente add column dataBaixa datetime;

/**
 * Autor: Renan
 * Data: 22/02/2011
 */
alter table funcionario add column idTelefoneResidencial bigint(20);
alter table funcionario add column idTelefoneCelular bigint(20);
alter table funcionario add column idTelefoneRecado1 bigint(20);
alter table funcionario add column idTelefoneCelularRecado1 bigint(20);
alter table funcionario add column idTelefoneRecado2 bigint(20);
alter table funcionario add column idTelefoneCelularRecado2 bigint(20);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF1 FOREIGN KEY (idTelefoneResidencial) REFERENCES Telefone (ID);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF2 FOREIGN KEY (idTelefoneCelular) REFERENCES Telefone (ID);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF3 FOREIGN KEY (idTelefoneRecado1) REFERENCES Telefone (ID);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF4 FOREIGN KEY (idTelefoneCelularRecado1) REFERENCES Telefone (ID);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF5 FOREIGN KEY (idTelefoneRecado2) REFERENCES Telefone (ID);
ALTER TABLE funcionario ADD CONSTRAINT FK_FUNC_TELEF6 FOREIGN KEY (idTelefoneCelularRecado2) REFERENCES Telefone (ID);

/**
 * Autor: Renan
 * Data: 23/02/2011
 */
ALTER TABLE ValeTransporte ADD CONSTRAINT FK_VALETRANS_TIPOVALETRANS FOREIGN KEY (idTipoValeTransporte) REFERENCES TipoValeTransporte (ID);
ALTER TABLE ValeTransporte ADD CONSTRAINT FK_VALETRANS_FUNC FOREIGN KEY (idFuncionario) REFERENCES Funcionario (ID);
alter table valetransporte add column rumoTransporte varchar(10) not null;

/**
 * Autor: Renan
 * Data: 26/02/2011
 */
alter table valetransporte add column diasTrabalhados int(5);

/**
 * Autor: Renan
 * Data: 26/02/2011
 */
ALTER TABLE ValeRefeicao ADD CONSTRAINT FK_VALEREFE_TIPOVALEREFE FOREIGN KEY (idTipoValeRefeicao) REFERENCES TipoValeRefeicao (ID);
ALTER TABLE ValeRefeicao ADD CONSTRAINT FK_VALEREFE_FUNC FOREIGN KEY (idFuncionario) REFERENCES Funcionario (ID);
alter table ValeRefeicao add column diasTrabalhados int(5);
alter table fornecedor change cnpj cpfCnpj varchar(20);
alter table fornecedor add column tipoDocumento varchar(10) not null;
update fornecedor set tipoDocumento = "CNPJ";
alter table fornecedor add column situacao varchar(10);
update fornecedor set situacao = "ATIVO";

/**
 * Autor: Renan
 * Data: 15/03/2011
 */
alter table auditoriacadastro change descricaoOperacao descricaoOperacao varchar(2000);
alter table grauparentesco change ativo situacao varchar(10);
alter table dependente add column idGrauParentesco bigint(20);
ALTER TABLE dependente ADD FOREIGN KEY (idGrauParentesco) REFERENCES GrauParentesco (id);
alter table funcionario change observacao observacao varchar(2000);

/**
 * Autor: Renan
 * Data: 19/03/2011
 */
alter table empresa change nomeFantasia nomeFantasia varchar(255);
alter table funcionario add column horasSemanais bigint(20);
alter table funcionario add column horasMensais bigint(20);

/**
 * Autor: Renan
 * Data: 23/03/2011
 */
alter table auditoriacadastro change descricaoOperacao descricaoOperacao text;

/**
 * Autor: Doug
 * Data: 25/03/2011
 */
alter table funcionario add column version bigint(20) not null default 0 after horasMensais;

/**
 * Autor: Renan
 * Data: 06/04/2011
 */
alter table cliente add column idCidade int(11);
alter table cliente add constraint FK_CLIENTE_CID foreign key (idCidade) references Cidade (id);

/**
 * Autor: Renan
 * Data: 13/04/2011
 */
alter table cliente add isTrabalhaFeriado boolean default false;

/**
 * Autor: Renan
 * Data: 17/04/2011
 */
alter table funcionario add isPrimeiroEmprego boolean;
alter table funcionario add certificadoReservista varchar(100);

/**
 * Autor: Renan
 * Data: 26/04/2011
 */
alter table cliente add isSabadoDiaUtil boolean default false;
alter table cliente add isDomingoDiaUtil boolean default false;
alter table valetransporte add isTrabalhaMesCheio boolean default true;
update valetransporte set isTrabalhaMesCheio = false where diasTrabalhados is not null;

/**
 * Autor: Renan
 * Data: 21/05/2011
 */
alter table calculovaletransporte add mesAno varchar(15) not null;
alter table calculovaletransporte add tipoCalculo varchar(50) not null;
alter table calculovaletransporte add idFuncionario bigint(20);
alter table calculovaletransporte add constraint FK_calculovt_func foreign key (idFuncionario) references funcionario (id);

/**
 * Autor: Renan
 * Data: 24/05/2011
 */
delete from pagamentoValeTransporte;
delete from calculoValeTransporte;
alter table calculovaletransporte add dataRecibo date not null;

/**
 * Autor: Renan
 * Data: 09/06/2011
 */
alter table calculovalerefeicao add dataRecibo date not null;

/**
 * Autor: Doug
 * Data: 04/07/2011
 */
alter table intervalojornada add column idJornadaTrabalho bigint(20) not null;
alter table intervalojornada add foreign key (idJornadaTrabalho) references jornadatrabalho (id);

ALTER TABLE jornadatrabalho ADD COLUMN horarioInicial VARCHAR(5) NULL  AFTER utilizada , 
ADD COLUMN horarioFinal VARCHAR(5) NULL  AFTER horarioInicial;

/**
 * Autor: Renan
 * Data: 21/07/2011
 */
alter table jornadatrabalho add diaSeguinte boolean default false;

alter table Funcionario add adicionalNoturno boolean default false;
alter table Funcionario add adicionalPericulosidade boolean default false;
alter table Funcionario add adicionalInsalubridade boolean default false;

/**
 * Autor: Renan
 * Data: 04/08/2011
 */
alter table verba change percentual percentual varchar(20);

/**
 * Autor: Renan
 * Data: 19/09/2011
 */
delete from verba;
alter table verba add(tipo varchar(20) not null);
alter table verba drop column quantidade;
alter table verba add(atestado boolean);
alter table verba add(abono boolean);
alter table verba add(dsr boolean);
alter table verba add(valeTransporte boolean);
alter table verba add(valeRefeicao boolean);
alter table verba add(cestaBasica boolean);
alter table verba add(emprestimo boolean);

alter table dependente add continuaDependente binary(1) DEFAULT false;

alter table alteracaosalarial add idCargoAnterior bigint(20);
alter table alteracaosalarial add constraint FK_ALTERACAOSALARIAL_CARGOANTERIOR FOREIGN KEY (idCargoAnterior) REFERENCES Cargo (id);