--Tabela: Funcionalidade
--Autor: felipe
--Data: 29/11/2010
insert into funcionalidade (codigo, descricao) values (1, 'Incluir Adicional');
insert into funcionalidade (codigo, descricao) values (2, 'Excluir Adicional');
insert into funcionalidade (codigo, descricao) values (3, 'Alterar Adicional');
insert into funcionalidade (codigo, descricao) values (4, 'Consultar Adiciomal');
insert into funcionalidade (codigo, descricao) values (5, 'Incluir Benefício');
insert into funcionalidade (codigo, descricao) values (6, 'Excluir Benefício');
insert into funcionalidade (codigo, descricao) values (7, 'Alterar Benefício');
insert into funcionalidade (codigo, descricao) values (8, 'Consultar Benefício');
insert into funcionalidade (codigo, descricao) values (9, 'Incluir Cliente');
insert into funcionalidade (codigo, descricao) values (10, 'Excluir Cliente');
insert into funcionalidade (codigo, descricao) values (11, 'Alterar Cliente');
insert into funcionalidade (codigo, descricao) values (12, 'Consultar Cliente');
insert into funcionalidade (codigo, descricao) values (13, 'Incluir Desconto');
insert into funcionalidade (codigo, descricao) values (14, 'Excluir Desconto');
insert into funcionalidade (codigo, descricao) values (15, 'Alterar Desconto');
insert into funcionalidade (codigo, descricao) values (16, 'Consultar Desconto');
insert into funcionalidade (codigo, descricao) values (17, 'Incluir Empresa');
insert into funcionalidade (codigo, descricao) values (18, 'Excluir Empresa');
insert into funcionalidade (codigo, descricao) values (19, 'Alterar Empresa');
insert into funcionalidade (codigo, descricao) values (20, 'Consultar Empresa');
insert into funcionalidade (codigo, descricao) values (21, 'Incluir Encargo');
insert into funcionalidade (codigo, descricao) values (22, 'Excluir Encargo');
insert into funcionalidade (codigo, descricao) values (23, 'Alterar Encargo');
insert into funcionalidade (codigo, descricao) values (24, 'Consultar Encargo');
insert into funcionalidade (codigo, descricao) values (25, 'Incluir Fornecedor');
insert into funcionalidade (codigo, descricao) values (26, 'Excluir Fornecedor');
insert into funcionalidade (codigo, descricao) values (27, 'Alterar Fornecedor');
insert into funcionalidade (codigo, descricao) values (28, 'Consultar Fornecedor');
insert into funcionalidade (codigo, descricao) values (29, 'Incluir Jornada de Trabalho');
insert into funcionalidade (codigo, descricao) values (30, 'Excluir Jornada de Trabalho');
insert into funcionalidade (codigo, descricao) values (31, 'Alterar Jornada de Trabalho');
insert into funcionalidade (codigo, descricao) values (32, 'Consultar Jornada de Trabalho');
insert into funcionalidade (codigo, descricao) values (33, 'Incluir Tipo de Demissão');
insert into funcionalidade (codigo, descricao) values (34, 'Excluir Tipo de Demissão');
insert into funcionalidade (codigo, descricao) values (35, 'Alterar Tipo de Demissão');
insert into funcionalidade (codigo, descricao) values (36, 'Consultar Tipo de Demissão');
insert into funcionalidade (codigo, descricao) values (37, 'Incluir Funcionário');
insert into funcionalidade (codigo, descricao) values (38, 'Excluir Funcionário');
insert into funcionalidade (codigo, descricao) values (39, 'Alterar Funcionário');
insert into funcionalidade (codigo, descricao) values (40, 'Consultar Funcionário');
insert into funcionalidade (codigo, descricao) values (41, 'Incluir Usuário');
insert into funcionalidade (codigo, descricao) values (42, 'Excluir Usuário');
insert into funcionalidade (codigo, descricao) values (43, 'Alterar Usuário');
insert into funcionalidade (codigo, descricao) values (44, 'Consultar Usuário');
insert into funcionalidade (codigo, descricao) values (45, 'Alterar senha do usuário');
insert into funcionalidade (codigo, descricao) values (46, 'Incluir Perfil');
insert into funcionalidade (codigo, descricao) values (47, 'Excluir Perfil');
insert into funcionalidade (codigo, descricao) values (48, 'Alterar Perfil');
insert into funcionalidade (codigo, descricao) values (49, 'Consultar Perfil');
insert into funcionalidade (codigo, descricao) values (50, 'Incluir Cargo');
insert into funcionalidade (codigo, descricao) values (51, 'Excluir Cargo');
insert into funcionalidade (codigo, descricao) values (52, 'Alterar Cargo');
insert into funcionalidade (codigo, descricao) values (53, 'Consultar Cargo');
insert into funcionalidade (codigo, descricao) values (54, 'Incluir Forma de Pagamento');
insert into funcionalidade (codigo, descricao) values (55, 'Excluir Forma de Pagamento');
insert into funcionalidade (codigo, descricao) values (56, 'Alterar Forma de Pagamento');
insert into funcionalidade (codigo, descricao) values (57, 'Consultar Forma de Pagamento');

insert into tipoPerfil (descricao, sigla) values ('ADMINISTRATOR', 'ADM');

insert into usuario_tipoperfil (idUsuario, idTipoPerfil) values (1,3);

insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,176);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,177);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,178);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,179);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,180);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,181);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,182);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,183);
insert into tipoperfil_funcionalidade (idTipoPerfil, idFuncionalidade) values (3,184);

delete from usuario_tipoperfil;
delete from tipoperfil_funcionalidade;
delete from tipoperfil;
delete from funcionalidade;

--Autor: Renan
--Data: 26/01/2011
insert into funcionalidade (codigo, descricao) values (58, 'Incluir Tipo de Admissão');
insert into funcionalidade (codigo, descricao) values (59, 'Excluir Tipo de Admissão');
insert into funcionalidade (codigo, descricao) values (60, 'Alterar Tipo de Admissão');
insert into funcionalidade (codigo, descricao) values (61, 'Consultar Tipo de Admissão');
insert into funcionalidade (codigo, descricao) values (62, 'Incluir Situações do Funcionário');
insert into funcionalidade (codigo, descricao) values (63, 'Excluir Situações do Funcionário');
insert into funcionalidade (codigo, descricao) values (64, 'Alterar Situações do Funcionário');
insert into funcionalidade (codigo, descricao) values (65, 'Consultar Situações do Funcionário');
insert into funcionalidade (codigo, descricao) values (66, 'Incluir Vínculo Empregatício');
insert into funcionalidade (codigo, descricao) values (67, 'Excluir Vínculo Empregatício');
insert into funcionalidade (codigo, descricao) values (68, 'Alterar Vínculo Empregatício');
insert into funcionalidade (codigo, descricao) values (69, 'Consultar Vínculo Empregatício');
insert into funcionalidade (codigo, descricao) values (70, 'Incluir Dependente');
insert into funcionalidade (codigo, descricao) values (71, 'Excluir Dependente');
insert into funcionalidade (codigo, descricao) values (72, 'Alterar Dependente');
insert into funcionalidade (codigo, descricao) values (73, 'Consultar Dependente');

/*
 * Autor: Felipe
 * Data: 31/01/2011
 */
insert into pais (codigo, sigla, nome) values ('55', 'BR', 'Brasil');

insert into estado (codigo, sigla, nome, idPais) values ('01', 'AC', 'Acre', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('02', 'AL', 'Alagoas', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('03', 'AP', 'Amapá', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('04', 'AM', 'Amazonas', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('05', 'BA', 'Bahia', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('06', 'CE', 'Ceará', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('07', 'DF', 'Distrito Federal', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('08', 'ES', 'Espírito Santo', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('09', 'GO', 'Goiás', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('10', 'MA', 'Maranhão', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('11', 'MT', 'Mato Grosso', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('12', 'MS', 'Mato Grosso do Sul', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('13', 'MG', 'Minas Gerais', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('14', 'PA', 'Pará', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('15', 'PB', 'Paraíba', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('16', 'PR', 'Paraná', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('17', 'PE', 'Pernambuco', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('18', 'PI', 'Piauí', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('19', 'RJ', 'Rio de Janeiro', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('20', 'RN', 'Rio Grande do Norte', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('21', 'RS', 'Rio Grande do Sul', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('22', 'RO', 'Rondônia', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('23', 'RR', 'Roraima', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('24', 'SC', 'Santa Catarina', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('25', 'SP', 'São Paulo', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('26', 'SE', 'Sergipe', (select id from pais where codigo = '55'));
insert into estado (codigo, sigla, nome, idPais) values ('27', 'TO', 'Tocantins', (select id from pais where codigo = '55'));

/**
 * Autor: Renan
 * Data: 22/02/2011
 */
insert into funcionalidade (codigo, descricao) values (74, 'Incluir Tipo de Vale Transporte');
insert into funcionalidade (codigo, descricao) values (75, 'Excluir Tipo de Vale Transporte');
insert into funcionalidade (codigo, descricao) values (76, 'Alterar Tipo de Vale Transporte');
insert into funcionalidade (codigo, descricao) values (77, 'Consultar Tipo de Vale Transporte');

/**
 * Autor: Renan
 * Data: 23/02/2011
 */
insert into funcionalidade (codigo, descricao) values (78, 'Incluir Vale Transporte');
insert into funcionalidade (codigo, descricao) values (79, 'Excluir Vale Transporte');
insert into funcionalidade (codigo, descricao) values (80, 'Alterar Vale Transporte');
insert into funcionalidade (codigo, descricao) values (81, 'Consultar Vale Transporte');

/**
 * Autor: Renan
 * Data: 26/02/2011
 */
insert into funcionalidade (codigo, descricao) values (82, 'Incluir Tipo de Vale Refeicao');
insert into funcionalidade (codigo, descricao) values (83, 'Excluir Tipo de Vale Refeicao');
insert into funcionalidade (codigo, descricao) values (84, 'Alterar Tipo de Vale Refeicao');
insert into funcionalidade (codigo, descricao) values (85, 'Consultar Tipo de Vale Refeicao');

/**
 * Autor: Renan
 * Data: 15/03/2011
 */
insert into funcionalidade (codigo, descricao) values (86, 'Incluir Grau Parentesco');
insert into funcionalidade (codigo, descricao) values (87, 'Excluir Grau Parentesco');
insert into funcionalidade (codigo, descricao) values (88, 'Alterar Grau Parentesco');
insert into funcionalidade (codigo, descricao) values (89, 'Consultar Grau Parentesco');

/**
 * Autor: Renan
 * Data: 06/04/2011
 */
insert into cidade (id, nome, idEstado) values (1,'Cubatão', 21);
insert into cidade (id, nome, idEstado) values (2,'Diadema', 21);
insert into cidade (id, nome, idEstado) values (3,'Guaruhos', 21);
insert into cidade (id, nome, idEstado) values (4,'Mogi das Cruzes', 21);
insert into cidade (id, nome, idEstado) values (5,'Osasco', 21);
insert into cidade (id, nome, idEstado) values (6,'Santo André', 21);
insert into cidade (id, nome, idEstado) values (7,'São Bernardo do Campo', 21);
insert into cidade (id, nome, idEstado) values (8,'São Caetano do Sul', 21);
insert into cidade (id, nome, idEstado) values (9,'São Paulo', 21);

/**
 * Autor: Renan
 * 18/07/2011
 */
insert into parametrosrh values (1, 'HORAS_PAGAMENTO_VR', 'Quantidade mínima de horas trabalhadas no dia para realizar o pagamento de vale refeição ao funcionário.', 'NUMERICO', '6');

/**
 * Autor: Felipe
 * Data: 01/06/2012
 */
insert into funcionalidade (codigo, descricao) values (90, 'Incluir Solicitação de Pagamento');
insert into funcionalidade (codigo, descricao) values (91, 'Excluir Solicitação de Pagamento');
insert into funcionalidade (codigo, descricao) values (92, 'Alterar Solicitação de Pagamento');
insert into funcionalidade (codigo, descricao) values (93, 'Consultar Solicitação de Pagamento');
insert into funcionalidade (codigo, descricao) values (94, 'Incluir Histórico Comercial');
insert into funcionalidade (codigo, descricao) values (95, 'Excluir Histórico Comercial');
insert into funcionalidade (codigo, descricao) values (96, 'Alterar Histórico Comercial');
insert into funcionalidade (codigo, descricao) values (97, 'Consultar Histórico Comercial');