/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).*/

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id_categoria bigint auto_increment,
tipo varchar (255) not null,
pecas bigint,
primary key (id_categoria)
);

create table tb_produto(
id_produto bigint auto_increment,
nome varchar (255) not null,
peso decimal (4,2),
preco decimal (5,2),
id_categoria  bigint,
foreign key (id_categoria) references tb_categoria (id_categoria),
primary key (id_produto)
);

insert into tb_categoria (tipo,pecas)
values	("bovinos",4),
		("suinos",4),
		("aves",6),
		("peixes",10),
		("caprinos",6);

insert into tb_produto(nome,peso,preco,id_categoria)
values	("carne 1",19.5, 62.00,1),
		("carne 2",11.9, 12.35,2),
		("carne 3",8.5, 66.60,3),
		("carne 4",16.5, 88.90,4),
		("carne 5",22.2, 77.99,4),
		("carne 6",1.5, 33.00,5),
		("carne 7",4.0, 50.00,2),
		("carne 8",10.0, 14.00,2);

select * from tb_produto where preco>50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria where tb_categoria.tipo = "peixes";