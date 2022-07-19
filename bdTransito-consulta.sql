USE bdTransito

-- A)
SELECT COUNT (idMotorista)
FROM tbMotorista

-- B)
SELECT COUNT (nomeMotorista) AS 'Funcion�rios com sobrenome Silva'
    FROM tbMotorista
        WHERE nomeMotorista LIKE '%Silva%'

-- C)
SELECT COUNT (dataNascimentoMotorista) AS 'Funcion�rios que nasceram em 2000'
	FROM tbMotorista
		WHERE dataNascimentoMotorista = '2000'

-- D)
SELECT COUNT (pontuacaoAcumulada) AS 'Motoristas que possuem mais de 10 pontos de pontua��o acumulada'
	FROM tbMotorista
		WHERE pontuacaoAcumulada > 10

-- E)
SELECT SUM (pontuacaoAcumulada) AS 'Somat�ria da pontua��o de todos os motoristas'
	FROM tbMotorista

-- F)
SELECT AVG (pontuacaoAcumulada) AS 'M�dia da pontua��o de todos os motoristas'
	FROM tbMotorista

-- G)
SELECT COUNT (idVeiculo) AS 'Quantidade de ve�culos que o motoristas de c�digo 1 possui'
	FROM tbVeiculo
		WHERE idMotorista = 1

-- H)
SELECT COUNT (placaVeiculo) AS 'Veiculos que a placa come�a com A'
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

-- N) A quantidade de multas aplicadas no m�s de abril de 2018
SELECT COUNT (idMulta)
	FROM tbMulta
		WHERE dataMulta BETWEEN '01/04/2018' AND '30/04/2021'

-- O)A quantidade de ve�culos cuja placa termine com o n�mero 1 ou 2
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%1' OR  placaVeiculo LIKE '%2'

-- P)A quantiadade de ve�culos cuja placa termine com o n�mero 3 ou 4
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%3' OR  placaVeiculo LIKE '%4'

-- Q)A quantidade de ve�culos cuja placa termine com o n�mero 5 ou 6
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%5' OR  placaVeiculo LIKE '%6'

-- R)A quantidade de ve�culos cuja placa termine com 7 ou 8
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%7' OR  placaVeiculo LIKE '%8'

-- S)A quantidade de ve�culos cuja placa termine com 9 ou 0
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%9' OR  placaVeiculo LIKE '%0'

-- T)A quantidade de ve�culos por ano de fabrica��o
SELECT COUNT (idVeiculo), anoVeiculo
	FROM tbVeiculo
		GROUP BY anoVeiculo
			
-- U)A quantidade de motoristas por pontua��o acumulada
SELECT (nomeMotorista)
	FROM tbMotorista
		ORDER BY pontuacaoAcumulada

-- V) A quantidade de motoristas que ultrapassaram os 20 pontos
SELECT COUNT (nomeMotorista)
	FROM tbMotorista
		WHERE pontuacaoAcumulada > 20

--W) A pontua��o m�dia dos motoristas nascidos no ano de 2000
SELECT AVG (pontuacaoAcumulada)
	FROM tbMotorista
		WHERE  dataNascimentoMotorista = '1997'

--x) A m�dia dos pontos das multas aplicadas em julho de 2017

SELECT AVG (pontosMulta)
	FROM tbMulta
		WHERE dataMulta BETWEEN '01/06/2017' AND '30/06/2017'

-- y) Quantos ve�culos n�o podem circular na segunda-feira (placa final 1 ou 2)
SELECT COUNT (idVeiculo)
	FROM tbVeiculo
		WHERE placaVeiculo LIKE '%1' OR placaVeiculo LIKE '%2'