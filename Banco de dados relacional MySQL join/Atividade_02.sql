/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
tipo enum ("Salgado", "Doce"),
Tamanho enum ("P", "M", "G"),
id_pizza bigint,
primary key(id)
);

create table tb_pizza(
id_pizza bigint(5) auto_increment,
nome_pizza varchar(35) not null,
preco decimal(10,2),
borda enum ("Catupiry", "Sem borda", "Cheddar"),
sts boolean,
id_categoria bigint(5),
primary key (id_pizza),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria (tipo, tamanho)
values ("Salgado", "G"),
	   ("Doce", "G"),
       ("Salgado", "M"),
       ("Doce", "P"),
       ("Salgado", "M");

insert into tb_pizza (nome_pizza, preco, borda, sts, id_categoria)
values ("Marguerita", 45.00, "Sem borda", true, 1),
       ("Toscana", 45.00, "Catupiry", false, 2),
       ("Frango com Catupiry", 45.00, "Cheddar", false, 4),
       ("Baiana", 55.00, "Cheddar", true, 2),
       ("Calabresa", 40.00, "Sem borda", false, 3),
       ("Mussarela", 40.00, "Cheddar", true, 3),
       ("Quatro Queijos", 55.00, "Catupiry", true, 1),
       ("Portugesa", 55.00, "Catupiry", false, 5);
       
       select * from tb_pizza where preco > 45;
       
       select * from tb_pizza where preco > 29 and preco < 60;
       
       select * from tb_pizza where nome_pizza like "%c%";
       
       select * from tb_pizza inner join tb_categoria on tb_pizza.id_categoria = tb_categoria.id;
       
       select * from tb_pizza inner join tb_categoria on tb_pizza.id_categoria = tb_categoria.id where tipo = "Doce";