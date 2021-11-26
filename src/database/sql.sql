CREATE DATABASE evolve;

USE evolve;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    nivel varchar(20)
);


create table cursos (
idCursos int auto_increment,
categoria varchar(45),
qtd_aulas int,
fkUsuario int,
primary key (idCursos),
foreign key (fkUsuario) references usuario (id)
);

select * from usuario;
select * from cursos;

insert into cursos values
(null, 'Movimentação', 3, null),
(null, 'Mira', 3, null),
(null, 'Utitários', 3, null);