create table usuario_assiste_curso(
`id` int not null auto_increment,
`data` date,
`idusuario` int,
`idcursos` int,
primary key(id), 
foreign key(idusuario) references usuarios(id),
foreign key(idcursos) references cursos(idcurso)
) default charset = utf8;

insert into usuario_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from usuario_assiste_curso;

select u.nome, idcursos, c.nome from usuarios u 
join usuario_assiste_curso a 
on u.id = a.idusuario
join cursos c
on a.idcursos = c.idcurso
order by u.nome;
