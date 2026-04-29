select * from pessoas;
select * from carros;
select * from funcionario;
select * from servico;
desc carros;

alter table carros change `id` id_carros text;
delete from pessoas where id = 1;
alter table pessoas add column id int auto_increment primary key first;
SET SQL_SAFE_UPDATES = 0;

create table funcionario (
id_funcionario int auto_increment primary key,
nome varchar(50) not null,
data_de_nascimento date not null,
cargo varchar (40) not null
);
create table servico (
id_servico int auto_increment primary key,
descricao varchar(200),
id_funcionario int,
id_carros int,
id_pessoas int,
foreign key (id_funcionario) references funcionario (id_funcionario),
foreign key (id_carros) references carros (id),
foreign key (id_pessoas) references pessoas (id)
);

INSERT INTO funcionario (nome, data_de_nascimento, cargo) VALUES
('Carlos Silva', '1985-03-12', 'Mecânico'),
('João Pereira', '1990-07-25', 'Auxiliar Mecânico'),
('Marcos Oliveira', '1982-11-03', 'Eletricista Automotivo'),
('Lucas Souza', '1995-06-18', 'Atendente'),
('Rafael Costa', '1988-09-30', 'Mecânico'),
('Fernando Santos', '1979-01-22', 'Supervisor'),
('Bruno Almeida', '1992-04-10', 'Borracheiro'),
('Diego Rocha', '1987-12-05', 'Mecânico'),
('Eduardo Martins', '1993-08-14', 'Lavador de Veículos'),
('Gustavo Ribeiro', '1984-05-27', 'Gerente');