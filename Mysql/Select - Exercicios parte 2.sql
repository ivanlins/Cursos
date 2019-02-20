select profissao, count(profissao) from usuarios
	group by profissao;
    
select sexo, count(*) from usuarios
	where nascimento > '2005-01-01'
	group by sexo;
    
select nacionalidade, count(*) from usuarios
	where nacionalidade != 'Brasil'
	group by nacionalidade
    having count(*) > 3;
    
select altura, peso, count(*) from usuarios
	where peso > 100
    group by altura
    having altura > (select avg(altura) from usuarios);