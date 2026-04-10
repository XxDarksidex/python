create table hospedes(
id_hospedes int auto_increment primary key,
nome varchar (45) not null
);

create table quartos(
id_quartos int auto_increment primary key,
preco decimal (10,2) not null,
id_hospedes int,
foreign key (id_hospedes) references hospedes (id_hospedes)
);

create table reservas(
id_reserva int auto_increment primary key,
data_reserva datetime default current_timestamp,
id_hospedes int,
reserva date not null, 
foreign key (id_hospedes) references hospedes (id_hospedes)
);

create table pagamentos(
id_pagamento int auto_increment primary key,
pagamento decimal (10,2),
id_hospedes int
);

insert into hospedes (nome) values ("maria"),("pedro"),("joão");
insert into quartos (preco,id_hospedes) values (100,1),(120.30,2),(99.99,3);
insert into reservas (id_hospedes,reserva) values (1,'2026-04-20'),(2,'2026-04-05'),(3,'2026-04-29');
insert into pagamentos (pagamento,id_hospedes) values (100,1),(120,2),(99.99,3);


select * from hospedes;
select * from quartos;
select * from reservas;
select * from pagamentos;

drop table pagamentos;
drop table reservas;

delete from hospedes;