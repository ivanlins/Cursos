create table pessoas(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
);

insert into pessoas values 
(default, 'Christiane', '1978-10-31', 'F', '70', '1.65', 'Italia'),
(default, 'Maurilio', '1980-03-18', 'M', '100.39', '1.80', 'EUA'),
(default, 'Enzo', '2017-02-15', 'M', '20', 0.90, 'Brasil');

select * from pessoas;

