/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id_categoria bigint (5) auto_increment,
nome_categoria varchar(255),
tipo varchar(255),
primary key (id_categoria)
);

create table tb_produto(
id_produto bigint (5) auto_increment,
nome_produto varchar (255),
preco decimal (5,2),
marca varchar (255),
peso decimal (5,1),
estoque int,
id_categoria bigint (5),
foreign key (id_categoria) references tb_categoria(id_categoria),
primary key (id_produto)
);


insert into tb_categoria (nome_categoria,tipo)
values 	("cimento","obra"),
		("mascara","proteção"),
		("papel de parede", "decoração"),
		("furadeira","eletricos"),
		("lampadas","iluminação");

insert into tb_produto ( nome_produto, preco, marca, peso, estoque, id_categoria)
values 	("produto 1", 120.00, "votoran", 15.3 , 60, 1),
		("produto 2", 90.00, "parmeru", 10.2 , 70, 2),
		("produto 3", 66.99, "santauru", 12.4 , 89, 2),
		("produto 4", 20.00, "volox", 9.1 , 20, 3),
		("produto 5", 50.00, "zimax", 2.0 , 24, 3),
		("produto 6", 60.00, "sigma", 1.0 , 24, 4),
		("produto 7", 75.00, "starX", 10.9 , 98, 5),
		("produto 8", 35.00, "Cimentox", 12.0 , 65, 1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome_produto like "%C%";

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria where tipo = "obra";

select * from tb_produto inner join tb__categoria on tb_produto.id_produto = tb_categoria.id_categoria where tb_categoria.nome_categoria = "lampadas";