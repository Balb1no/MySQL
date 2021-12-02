	create database db_empresaRH;							-- Criando database	
    use db_empresaRH;										-- Selecionando qual database vou utilizar
    create table tb_infoFuncionarios(
    id_funcionarios bigint(5) auto_increment,				-- Implementação da coluna id dos funcionários na tabela
    nome varchar(255) not null,								-- Implementação da coluna nome dos funcionários na tabela
    email varchar(255) not null,							-- Implementação da coluna email dos funcionários na tabela	
    dat_nascimento date,									-- Implementação da coluna data de nascimento dos funcionários na tabela
    sexo enum("Masculino","Feminino","Outro"),			-- Implementação da coluna sexo dos funcionários na tabela
	salario decimal (10,2),									-- Implementação da coluna salário dos funcionários na tabela
    primary key (id_funcionarios)							-- Fazendo do id_funcionarios dos funcionários a chave primária da tabela
    );
    
    insert into tb_infoFuncionarios(nome, email, dat_nascimento, sexo, salario) 	-- Inserindo os valores váriaveis
		values ("Gabriel","gl@gmail.com","2000-08-21","Masculino","4000"),
               ("Paulo","po@gmail.com","1991-03-17","Masculino","6000"),
               ("Sabrina","sb@gmail.com","1987-07-04","Feminino","5000"),
               ("Amanda","ad@gmail.com","1979-04-12","Feminino","7000"),
               ("Roberto","ro@gmail.com","1996-09-27","Masculino","3000");
               
select*from tb_infoFuncionarios where salario > 2000; -- Tabela de funcionários com salário maior que R$ 2000,00
select*from tb_infoFuncionarios where salario < 2000; -- Tabela de funcionários com salário menor que R$ 2000,00

update `db_empresarh`.`tb_infofuncionarios` set `salario` = '1000' where (`id_funcionarios` = '2');