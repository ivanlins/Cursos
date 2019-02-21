desc usuarios;

alter table usuarios
	add column cursopreferido int;
    
alter table usuarios
	add foreign key (cursopreferido)
	references cursos(idcurso);
    
select * from usuarios;
select * from cursos;

update usuarios 
set cursopreferido = '6'
where id = 1;

delete from cursos
	where idcurso = 28;