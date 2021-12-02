/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id_categoria bigint auto_increment,
nome_categoria varchar (255),
estoque int,
primary key (id_categoria)
);

create table tb_produto(
id_produto bigint auto_increment,
nome_produto varchar(255) not null,
preco decimal (5,2),
estado varchar (255) not null,
funcao varchar (255) not null,
id_categoria bigint, 

foreign key (id_categoria) references tb_categoria (id_categoria),
primary key (id_produto)
);

insert into tb_categoria (nome_categoria,estoque)
values	("remedio",1000),
		("higiene",300),
		("esquipamento",40),
		("curativo",100),
		("embelezamento", 50);

insert into tb_produto (nome_produto,preco,estado,funcao,id_categoria)
VALUES	("PRODUTO 1" , 20.00, "solido", "tratamento",1),
		("PRODUTO 2" , 67.90, "solido", "limpeza",2),
		("PRODUTO 3" , 25.99, "liquido", "limpeza",2),
		("PRODUTO 4" , 99.99, "solido", "tratamento",3),
		("PRODUTO 5" , 9.00, "solido", "tratamento",4),
		("PRODUTO 6" , 7.00, "solido", "cosmetico",5),
		("PRODUTO 7" , 20.00, "solido", "tratamento",1),
		("PRODUTO 8" , 20.00, "solido", "tratamento",1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome_produto like "%b";

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria where tb_categoria.nome_categoria = "curativo";