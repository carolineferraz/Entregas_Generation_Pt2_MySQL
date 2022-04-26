create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
	id bigint auto_increment,
    preco double not null,
    disponivel boolean not null,
    primary key (id)
);

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(50) not null,
    tipo varchar(50) not null,
    marca varchar(50) not null,
    quantidade int,
    id_categoria bigint,
    primary key (id),
    foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias (preco, disponivel) 
	values (55,true);
insert into tb_categorias (preco, disponivel) 
	values (55,false);
insert into tb_categorias (preco, disponivel) 
	values (20,true);
insert into tb_categorias (preco, disponivel) 
	values (98,true);
insert into tb_categorias (preco, disponivel) 
	values (25,true);
    
select * from tb_categorias;

insert into tb_produtos (nome, tipo, marca, quantidade, id_categoria) 
	values ("shampoo","Produto de higiene pessoal","J&J",30,5);
insert into tb_produtos (nome, tipo, marca, quantidade, id_categoria) 
	values ("tylenol","Medicação","Medicamento Genérico",20,3);
insert into tb_produtos (nome, tipo, marca, quantidade, id_categoria) 
	values ("Pasta de dente","Produto de higiene pessoal","Sorriso",26,3);
insert into tb_produtos (nome, tipo, marca, quantidade, id_categoria) 
	values ("Antibiótico 1","Medicação","Medicamento Genérico",15,4);
insert into tb_produtos (nome, tipo, marca, quantidade, id_categoria) 
	values ("Antibiótico 2","Medicação","Medicamento Genérico",8,1);
insert into tb_produtos (nome, tipo, marca, id_categoria) 
	values ("Antibiótico 3","Medicação","Medicamento Genérico",2);
    
select * from tb_produtos;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria 
	where preco > 50;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria 
	where preco > 5 and preco < 60;
    
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria 
	where nome like "%c%";
    
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria 
	where tipo = "Produto de higiene pessoal";