use cadastro;
create table if not exists Cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2019'
) default charset=utf8;

alter table cursos
add column id_curso int first;

alter table cursos
add primary key(id_curso);

desc cursos;


create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'joão', '66'),
('2', 'aparecida', '63'),
('3', 'marcos', 27);

select * from teste;

drop table if exists teste;
