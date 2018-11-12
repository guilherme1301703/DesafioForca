create database desafioforca;

use desafioforca;

create table situacao(
	id int auto_increment primary key,
    nome varchar(255)
);

create table dificuldade(
	id int auto_increment primary key,
    nome varchar(255)
);

create table jogoSituacao(
	id int auto_increment primary key,
    idSituacao int,
    data datetime,
    FOREIGN KEY (idSituacao)
      REFERENCES situacao(id)
);

create table jogo(
	id int auto_increment primary key,
    nome varchar(200),
    idDificuldade int,
    vidas int,
    palavra varchar(255),
    palavraMostra varchar(255),
    chute varchar(255),
    dataInicio datetime,
    FOREIGN KEY (idDificuldade)
      REFERENCES dificuldade(id)
);