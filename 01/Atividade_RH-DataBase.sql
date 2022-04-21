create database db_rh_empresa;

use db_rh_empresa;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf varchar(15) not null,
    dataNascimento varchar(10) not null,
    salario double not null,
    primary key (id)
);

insert into tb_colaboradores (nome,cpf,dataNascimento,salario)
	values ("Maria Bernardina da Silva", "111.111.111-11","15/05/1990",5430.86);
    
insert into tb_colaboradores (nome,cpf,dataNascimento,salario)
	values ("Antonieta da Costa", "222.222.222-22","30/10/1988",8630.44);
    
insert into tb_colaboradores (nome,cpf,dataNascimento,salario)
	values ("Rosalina Pessoa", "333.333.333-33","07/01/1999",1544.98);
    
insert into tb_colaboradores (nome,cpf,dataNascimento,salario)
	values ("Roberval Brasil", "444.444.444-44","22/09/1997",1544.98);
    
insert into tb_colaboradores (nome,cpf,dataNascimento,salario)
	values ("Artur Santos", "555.555.555-55","06/08/1999",1544.98);
    
select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 3002.66 where id = 5;




