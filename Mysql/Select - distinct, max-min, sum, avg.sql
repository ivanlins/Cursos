select * from usuarios;
INSERT INTO `usuarios` 
(`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES 
('62', 'Ivan Lins', 'Estudante', '1997-09-04', 'M', '94.00', '1.75', 'Brasil');

select distinct nacionalidade from usuarios
order by nacionalidade;

select max(carga) from cursos;

select count(*) from cursos
	where carga > 30;
    
select max(totaulas) from cursos
where ano = '2016';
    
select nome, min(totaulas) from cursos
where ano = '2016';

select sum(totaulas) from cursos
where ano = 2016;

select avg(totaulas) from cursos
where ano = 2016;
