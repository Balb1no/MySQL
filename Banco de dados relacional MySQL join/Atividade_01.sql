/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
<<<<<<< HEAD
os personagens que são arqueiros).
*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id_classe bigint(5) auto_increment,
tipo varchar(30) not null,
habitat varchar(30) not null,
vida int not null,
primary key (id_classe)
);

create table tb_personagem(
id_person bigint(5) auto_increment,
nome varchar(30) not null,
idade int not null,
personalidade varchar(30) not null,
atq_principal varchar(30) not null,
poder_ataq int not null,
poder_defesa int not null,
fk_classe bigint(5),
primary key (id_person),
foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_classe(tipo, habitat, vida)
values("Pombito","Cidade",100),
      ("Ratoso","Esgoto",100),
      ("Largatissauro","Parede",100),
      ("Baratão","Cozinha",100),
      ("Pernicurto","Ouvido",100);
      
insert into tb_personagem(nome, idade, personalidade, atq_principal, poder_ataq, poder_defesa, fk_classe)
values ("Israel", 27, "Passivo", "Esquiva", 1000, 7000, 1),
	   ("Gretchen", 19, "Metida", "Conga", 2000, 9000, 2),
       ("Vandame", 27, "Briguento", "Dancinha", 7000, 7000, 3),
       ("Todo Duro", 27, "Confiante", "Gancho", 9000, 8000, 4),
       ("Orlandão", 60, "Desconfiado", "Fugir", 4000, 4500, 5),
       ("Arnold", 27, "Tranquilo", "Rolamento", 7000, 6000, 6),
       ("Galo Cego", 50, "Irritado", "Grito", 3000, 1500, 7),
       ("Pablito", 47, "Agressivo", "Caderada", 9000, 1000, 8);

select * from tb_personagem where poder_ataq > 2000;
select * from tb_personagem where poder_defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";
select * from tb_personagem  inner join tb_classe on tb_classe.id_classe = tb_personagem.fk_classe where tipo = "Largatissauro";