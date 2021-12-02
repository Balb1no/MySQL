CREATE TABLE `tb_Usuarios` (
	`id` bigint(4) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_Temas` (
	`id` bigint(4) NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_Postagens` (
	`id` bigint(4) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(1000) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`tema_id` bigint(4) NOT NULL,
	`usuario_id` bigint(4) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_Postagens` ADD CONSTRAINT `tb_Postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_Temas`(`id`);

ALTER TABLE `tb_Postagens` ADD CONSTRAINT `tb_Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_Usuarios`(`id`);




