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
idCursos INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(50),
qtd_aulas INT
);

create table momento (
fkUsuario INT,
fkCursos INT,
primary key (fkUsuario, fkCursos),
foreign key (fkUsuario) references usuario (id),
foreign key (fkCursos) references cursos (idCursos)
);

select * from usuario;
select * from cursos;
select * from momento;

insert into cursos values
(null, 'Movimentação', 3),
(null, 'Mira', 3),
(null, 'Utitários', 3);

insert into usuario values
(null, 'Erick Saraiva', 'erick@gmail.com', 'Erick123', 'Médio'),
(null, 'Rodrigo Rodrigues', 'rodrigo@gmail.com', 'Rodrigo123', 'Básico'),
(null, 'Gabriel Silva', 'gabriel@gmail.com', 'Gabriel123', 'Experiente'),
(null, 'Joao Sousa', 'joao@gmail.com', 'Joao123', 'Experiente'),
(null, 'Marcos Silva', 'marcos@gmail.com', 'Marcos123', 'Básico');

insert into momento values
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 3);

select * from usuario
join cursos
join momento on fkCursos = idCursos and fkUsuario = id;

select nome, email, senha, nivel, categoria, qtd_aulas from usuario
join cursos
join momento on fkUsuario = id and fkCursos = idCursos;