/*EXERCICIOS DE SELECT*/
/*--------------------*/
select * from usuarios
	where sexo = 'F';
    
 select * from usuarios
	where nascimento between '2000-01-01' and '2015-12-31'
    order by nascimento;
    
select * from usuarios
	where sexo ='M' and profissao = 'programador'
    order by nome;
    
select * from usuarios
	where sexo = 'F' and nome like'j%' and nacionalidade = 'Brasil';
        
select nome, nacionalidade from usuarios
	where sexo = 'M' and nome like '%silva%' and nacionalidade <> 'Brasil' and peso < 100;
    
select max(altura) from usuarios
	where sexo = 'M' and nacionalidade = 'Brasil';
    
select avg(peso) from usuarios;

select Min(peso) from usuarios
	where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-30';
    
select count(*) from usuarios
	where sexo = 'F' and altura > 1.90;