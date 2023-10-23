/*PRIMEIRO PASSO: CRIAR O BANCO DE DADOS*/
create database dw_tua1;

/*SEGUNDO PASSO: USAR O BANCO DE DADOS*/
use  dw_tua1;

/*TERCEIRO PASSO: SE É A PRIMEIRA VEZ CRIANDO O BANCO DE DADOS "DW_TUA1", É NECESSÁRIO EXECUTAR AS CRIAÇÕES DAS TABELAS(SELECIONANDO TODO O CÓDIGO E DEPOIS APERTAR O BOTÃO DO "RAIO")*/
CREATE TABLE Profissional (
    nomeProfissional varchar(60),
    idProfissional int PRIMARY KEY NOT NULL AUTO_INCREMENT
);

CREATE TABLE Cliente (
    idCliente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeCliente varchar(60),
    emailCliente varchar(60),
    senhaCliente varchar(30),
    cpfCliente varchar(30) 
);

CREATE TABLE Servico (
    nomeServico varchar(30),
    tempoServico varchar(30),
    precoServico varchar(30),
    idServico int PRIMARY KEY NOT NULL AUTO_INCREMENT
);

CREATE TABLE Agendamento (
    idAgendamento int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dataAgendamento varchar(30),
    horaAgendamento varchar(30),
    FK_Comanda_idComanda int
);

CREATE TABLE Comanda (
    idComanda int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    precoTotal varchar(30)
);


 /*CRIANDO A FOREIGN KEY DA COMANDA ID*/
ALTER TABLE Agendamento ADD CONSTRAINT FK_Agendamento_1
    FOREIGN KEY (FK_Comanda_idComanda)
    REFERENCES Comanda (idComanda)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
