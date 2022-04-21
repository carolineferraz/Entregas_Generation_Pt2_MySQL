create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    matricula varchar(255) not null,
    turno varchar(5) not null,
    nota double not null,
    primary key (id)
);

insert into tb_estudantes (nome,matricula,turno,nota)
	values ("João Ferreira","111111","Manhã",9.0);
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Luiza Cavalcanti","222222","Manhã",9.5);    
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Maria Antonieta de Sousa","333333","Tarde",7.5);   
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("José Pereira","444444","Tarde",6.0);   
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Ramona Alencar","555555","Manhã",6.5);   
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Luís Gustavo Alencar","666666","Manhã",8.0);   
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Simone Gusmão","777777","Tarde",10.0);   
    
insert into tb_estudantes (nome,matricula,turno,nota)
	values ("Jorge Lima","888888","Manhã",10.0);   
    
select * from tb_estudantes;

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 10.0 where id = 1;

select * from tb_estudantes;





