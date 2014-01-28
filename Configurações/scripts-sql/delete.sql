--Autor: Doug
--Data: 27/03/2011
--Deletado o registro pois o mesmo estava duplicado com o cadastro da funcionária Ilma de Carvalho e através de uma consulta pelo cpf descobri que o nome do funcionario não existia na tabela pessoa, nem através de um backup.
--O nome do funcionário pelo cpf deveria ser: LUCIMAR RAMOS FERNANDES DE SOUZA
--Código de registro: 51
delete from funcionario where id = 40;