create database Projeto;
use Projeto;

create table cadastro (
idCadastro int auto_increment,
nome varchar(45),
email varchar(55),
senha varchar(45),
primary key (idCadastro)
);

create table cursos (
idCursos int auto_increment,
categoria varchar(45),
qtd_aulas int,
fkCadastro int,
primary key (idCursos),
foreign key (fkCadastro) references cadastro (idCadastro)
);

insert into cadastro values
(null, 'Erick Saraiva', 'erick.ssilva@bandtec.com.br', 'bandtec@100'),
(null, 'Maurício Sousa', 'mauricio.sousa@bandtec.com.br', 'bandtec@200');

insert into cursos values
(null, 'Movimentação', 4, 1),
(null, 'Mira', 5, 2),
(null, 'Noção de Jogo', 4, 1);

select * from cadastro;
select * from cursos;

select * from cadastro join cursos on fkCadastro = idCadastro;
select nome, email, senha, categoria, qtd_aulas from cadastro
join cursos on fkCadastro = idCadastro;

use evolve;
select * from usuario;