USE bdTransito

-- A)
SELECT COUNT (idMotorista)
FROM tbMotorista

-- B)
SELECT COUNT (nomeMotorista) AS 'Funcionários com sobrenome Silva'
    FROM tbMotorista
        WHERE nomeMotorista LIKE '%Silva%'

-- C)
SELECT COUNT (dataNascimentoMotorista) AS 'Funcionários que nasceram em 2000'
	FROM tbMotorista
		WHERE dataNascimentoMotorista = '2000'

-- D)
SELECT COUNT (pontuacaoAcumulada) AS 'Motoristas que possuem mais de 10 pontos de pontuação acumulada'
	FROM tbMotorista
		WHERE pontuacaoAcumulada > 10

-- E)
SELECT SUM (pontuacaoAcumulada) AS 'Somatória da pontuação de todos os motoristas'
	FROM tbMotorista

-- F)
SELECT AVG (pontuacaoAcumulada) AS 'Média da pontuação de todos os motoristas'
	FROM tbMotorista

-- G)
SELECT COUNT (idVeiculo) AS 'Quantidade de veículos que o motoristas de código 1 possui'
	FROM tbVeiculo
		WHERE idMotorista = 1

-- H)
SELECT COUNT (placaVeiculo) AS 'Veiculos que a placa começa com A'
	FROM tbVeiculo
		WHERE placaVeiculo LIKE 'A%'

-- I)
SELECT COUNT (anoVeiculo)
	FROM tbVeiculo
		WHERE anoVeiculo < '2010'

-- J)
SELECT AVG (anoVeiculo)
	FROM tbVeiculo

-- K)
SELECT COUNT (modeloVeiculo)
    FROM tbVeiculo
        WHERE modeloVeiculo LIKE '%Sedan%'

-- L)
SELECT SUM (pontosMulta)
	FROM tbMulta
		WHERE idVeiculo = 2

-- M)
SELECT AVG (pontosMulta)
	FROM tbMulta

-- N) A quantidade de multas aplicadas no mês de abril de 2018
SELECT COUNT (idMulta)
	FROM tbMulta
		WHERE dataMulta BETWEEN '01/04/2018' AND '30/04/2021'

-- O)A quantidade de veículos cuja placa termine com o número 1 ou 2
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%1' OR  placaVeiculo LIKE '%2'

-- P)A quantiadade de veículos cuja placa termine com o número 3 ou 4
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%3' OR  placaVeiculo LIKE '%4'

-- Q)A quantidade de veículos cuja placa termine com o número 5 ou 6
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%5' OR  placaVeiculo LIKE '%6'

-- R)A quantidade de veículos cuja placa termine com 7 ou 8
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%7' OR  placaVeiculo LIKE '%8'

-- S)A quantidade de veículos cuja placa termine com 9 ou 0
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%9' OR  placaVeiculo LIKE '%0'

-- T)A quantidade de veículos por ano de fabricação
SELECT COUNT (idVeiculo), anoVeiculo
	FROM tbVeiculo
		GROUP BY anoVeiculo
			
-- U)A quantidade de motoristas por pontuação acumulada
SELECT (nomeMotorista)
	FROM tbMotorista
		ORDER BY pontuacaoAcumulada

-- V) A quantidade de motoristas que ultrapassaram os 20 pontos
SELECT COUNT (nomeMotorista)
	FROM tbMotorista
		WHERE pontuacaoAcumulada > 20

--W) A pontuação média dos motoristas nascidos no ano de 2000
SELECT AVG (pontuacaoAcumulada)
	FROM tbMotorista
		WHERE  dataNascimentoMotorista = '1997'

--x) A média dos pontos das multas aplicadas em julho de 2017

SELECT AVG (pontosMulta)
	FROM tbMulta
		WHERE dataMulta BETWEEN '01/06/2017' AND '30/06/2017'

-- y) Quantos veículos não podem circular na segunda-feira (placa final 1 ou 2)
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%1' OR placaVeiculo LIKE '%2'