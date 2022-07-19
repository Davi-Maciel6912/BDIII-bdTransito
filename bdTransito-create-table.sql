CREATE DATABASE bdTransito
--DROP DATABASE bdTransito
USE bdTransito

CREATE TABLE tbMotorista(
	idMotorista INT PRIMARY KEY IDENTITY (1,1)
	, nomeMotorista VARCHAR (50) NOT NULL
	, dataNascimentoMotorista SMALLDATETIME NOT NULL
	, cpfMotorista VARCHAR (20) NOT NULL
	, CNHMotorista VARCHAR (15) NOT NULL
	, pontuacaoAcumulada INT NOT NULL)

CREATE TABLE tbVeiculo(
	idVeiculo INT PRIMARY KEY IDENTITY (1,1)
	, modeloVeiculo VARCHAR (50) NOT NULL
	, placaVeiculo VARCHAR (15) NOT NULL
	, renavamVeiculo VARCHAR (16) NOT NULL
	, anoVeiculo SMALLDATETIME NOT NULL
	, idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista)
)


CREATE TABLE tbMulta(
	idMulta INT PRIMARY KEY IDENTITY (1,1)
	, dataMulta SMALLDATETIME NOT NULL
	, horaMulta SMALLDATETIME NOT NULL
	, pontosMulta INT NOT NULL
	, idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
)