--Autor: Doug
--Data: 27/03/2011
--Deletado o registro pois o mesmo estava duplicado com o cadastro da funcion�ria Ilma de Carvalho e atrav�s de uma consulta pelo cpf descobri que o nome do funcionario n�o existia na tabela pessoa, nem atrav�s de um backup.
--O nome do funcion�rio pelo cpf deveria ser: LUCIMAR RAMOS FERNANDES DE SOUZA
--C�digo de registro: 51
delete from funcionario where id = 40;