create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment,
    preco double not null,
    disponivel boolean not null,
    primary key (id)
);

create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(50) not null,
    sabor varchar(50) not null,
    tamanho varchar(50) not null,
    espessuraMassa varchar(50) not null,
    id_categoria bigint,
    primary key (id),
    foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias (preco,disponivel) values (59.90,true);
insert into tb_categorias (preco,disponivel) values (59.90,false);
insert into tb_categorias (preco,disponivel) values (79.90,false);
insert into tb_categorias (preco,disponivel) values (42.00,true);
insert into tb_categorias (preco,disponivel) values (42.00,false);

insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Bomba do Hemetério","Peperoni com calabresa e borda de catupiry","grande","grossa",3);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Alto José do Pinho","Calabresa acebolada","grande","grossa",5);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Areias","4 queijos","grande","grossa",2);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Madalena","Camarão","média","fina",4);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Embiribeira","Goiabada com queijo","média","grossa",1);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Várzea","Marguerita","grande","grossa",4);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Curado","Carne de sol acebolada","grande","fina",1);
insert into tb_pizzas (nome,sabor,tamanho,espessuraMassa,id_categoria) 
	values ("Pina","Brigadeiro","média","grossa",1);
    
select * from tb_pizzas;
select * from tb_categorias;
    
select tb_pizzas.nome, tb_pizzas.sabor, tb_pizzas.tamanho, tb_categorias.preco from tb_pizzas 
	inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria where preco > 45;
    
select tb_pizzas.nome, tb_pizzas.sabor, tb_pizzas.tamanho, tb_categorias.preco from tb_pizzas 
	inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria where preco > 50 and preco < 100;
    
select * from tb_pizzas 
	inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria where nome like "%m%";
    
select tb_pizzas.nome, tb_pizzas.sabor, tb_pizzas.tamanho, tb_categorias.preco from tb_pizzas 
	inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria where tb_categorias.disponivel = true;



