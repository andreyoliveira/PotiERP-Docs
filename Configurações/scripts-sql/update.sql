--Autor: Doug
--Data: 27/03/2011
update funcionario set idpessoa = 148 where id = 6;
update funcionario set idpessoa = 145 where id = 3;
update funcionario set idpessoa = 151 where id = 9;
update funcionario set ctps = null where id in (6,9);
UPDATE PESSOA SET dataNascimento =  '1987-04-14', email =  NULL,bairro= 'Campestre',cep =  '09170680',cidade =  'Santo Andr� ',complemento =  'Casa 01',endereco =  'Rua das Flores',idEstado =  NULL,numero =  '577',nome =  'Alex Sandro Cl�udio Soliano ',sexo= '0' WHERE ID = '146';
UPDATE PESSOA SET dataNascimento =  '1944-05-17', email =  NULL,bairro= 'S�o Mateus ',cep =  '08390240',cidade =  'S�o Paulo',complemento =  '',endereco =  'Avenida Sertanista',idEstado =  NULL,numero =  '1879',nome =  'Antonio Gomes da Silva ',sexo= '0' WHERE ID = '152';

/**
 * Autor: Renan
 * Data: 06/04/2011
 */
update cliente set idCidade = 1 where id in (32, 47, 48);
update cliente set idCidade = 2 where id in (8, 30, 34);
update cliente set idCidade = 3 where id in (50, 13, 46);
update cliente set idCidade = 4 where id in (14);
update cliente set idCidade = 5 where id in (7);
update cliente set idCidade = 6 where id in (5,6,9,11,12,18,22,23,26,29,36,39,40,44,49);
update cliente set idCidade = 7 where id in (15,28,33,35,38);
update cliente set idCidade = 8 where id in (20);
update cliente set idCidade = 9 where id in (4,10,16,17,19,21,24,25,27,31,37,41,42,43,45,51);
update cliente set idEstado = 21;

/**
 * Autor: Renan
 * Data: 20/07/2011
 */
update parametrosrh set valor = '0500', tipoparametro = 'HORARIO';