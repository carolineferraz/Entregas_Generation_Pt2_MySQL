create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    item varchar(80) not null,
    especificacoes varchar(255) not null,
    preco double not null,
    qtdDisponivel int,
    primary key (id)
);

insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Brincos","Brincos argola em prata",50.00,20);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Cinto","Cinto de Concho com 88cm de comprimento",90.00,2);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Camisa","Camisa da banda Black Sabbath no tamanho P Babylook",35.00,8);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Camisa","Camisa da banda Judas Priest no tamanho G",35.00,5);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Calça","Calça jeans tamanho 36",80.00,6);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Bota","Bota em couro artificial na cor marrom. Tamanho 37",75.00,3);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Patch","Patch da banda Misfits",8.00,12);
    
insert into tb_produtos (item,especificacoes,preco,qtdDisponivel)
	values ("Patch","Patch da banda Thin Lizzy",8.00,3);
    
select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco < 50;

update tb_produtos set especificacoes = "Camisa da banda The Cramps no tamanho M modelo 'babylook'." where id = 3;

select * from tb_produtos;

    

    

    




