create database centro_cirurgico_bd;

use centro_cirurgico_bd;

create table tbl_especialidade(
cod_especialidade int unsigned auto_increment primary key,
nome_especialidade varchar(100) not null
);

create table tbl_paciente(
cod_paciente int unsigned auto_increment primary key,
nome_paciente varchar(500) not null,
telefone_paciente varchar(10),
celular_paciente varchar(11) not null,
email_paciente varchar(11) not null,
nome_responsavel varchar(500) not null,
telefone_responsavel varchar(11) not null
);

CREATE TABLE tbl_medico (
    cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_especialidade INT UNSIGNED NOT NULL,
    nome_medico VARCHAR(500) NOT NULL,
    telefone_medico VARCHAR(10),
    celular_medico VARCHAR(11) NOT NULL,
    email_medico VARCHAR(11) NOT NULL
);

create table tbl_insumo(
cod_insumos int unsigned auto_increment primary key,
cod_paciente int unsigned not null,
nome_insumo varchar(100) not null,
quantidade_insumo decimal(10,2)
);

create table tbl_sala(
cod_sala int unsigned auto_increment primary key,
cod_especialidade int unsigned not null,
nro_sala varchar(10) not null
);

create table tbl_agenda(
cod_agenda int unsigned auto_increment primary key,
cod_sala int unsigned not null,
cod_medico int unsigned not null,
cod_paciente int unsigned not null,
data_cirurgia varchar(10) not null,
status_cirurgia enum('Agendado', 'Concluído', 'Cancelado')
);
