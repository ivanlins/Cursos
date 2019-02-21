select nome, cursopreferido from usuarios;

select nome, ano from cursos;

select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u inner join cursos as c
on c.idcurso = u.cursopreferido order by u.nome;

select * from usuarios;

 select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u left outer join cursos as c
on c.idcurso = u.cursopreferido;

 select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u right outer join cursos as c
on c.idcurso = u.cursopreferido;