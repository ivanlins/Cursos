use cadastro;

update cursos
set nome = 'PHP'
where id_curso = '4';

update cursos
set nome = 'JAVA'
where id_curso = '5';

update cursos
set ano = '2015'
where id_curso = 4;

update cursos
set ano = '2018', carga = '0'
where ano = 2050
limit 1;

SELECT * FROM cursos;