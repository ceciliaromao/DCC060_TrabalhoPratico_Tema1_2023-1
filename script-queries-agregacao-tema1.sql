-- Query 1: Contar o número total de voos disponíveis
SELECT
  COUNT(*) AS TotalVoos
FROM
  Voo;

-- Query 2: Calcular a média de capacidade das aeronaves
SELECT
  AVG(Capacidade) AS MediaCapacidadeAeronaves
FROM
  Aeronave;

-- Query 3: Encontrar a quantidade de reservas feitas por passageiro
SELECT
  P.Nome,
  P.Sobrenome,
  COUNT(R.IDReserva) AS QuantidadeReservas
FROM
  Passageiro P
  LEFT JOIN Reserva R ON P.IDPassageiro = R.IDPassageiro
GROUP BY
  P.IDPassageiro;

-- Query 4: Identificar o voo com o maior preço médio de bilhete
SELECT
  V.NumeroVoo,
  AVG(B.PrecoBilhete) AS PrecoMedioBilhete
FROM
  Voo V
  INNER JOIN Bilhete B ON V.NumeroVoo = B.NumeroVoo
GROUP BY
  V.NumeroVoo
ORDER BY
  PrecoMedioBilhete DESC
LIMIT
  1;

-- Query 5: Calcular a receita total da companhia aérea
SELECT
  SUM(B.PrecoBilhete) AS ReceitaTotal
FROM
  Bilhete B;

-- Query 6: Contar o número total de reservas por passageiro
SELECT
  P.IDPassageiro,
  P.Nome,
  P.Sobrenome,
  COUNT(R.IDReserva) AS TotalReservas
FROM
  Passageiro P
  LEFT JOIN Reserva R ON P.IDPassageiro = R.IDPassageiro
GROUP BY
  P.IDPassageiro;

-- Query 7: Calcular o preço médio dos bilhetes por tipo de aeronave
SELECT
  A.TipoAeronave,
  AVG(B.PrecoBilhete) AS PrecoMedio
FROM
  Aeronave A
  LEFT JOIN VooAeronave VA ON A.IDAeronave = VA.IDAeronave
  LEFT JOIN Voo V ON VA.NumeroVoo = V.NumeroVoo
  LEFT JOIN Bilhete B ON V.NumeroVoo = B.NumeroVoo
GROUP BY
  A.TipoAeronave;

-- Query 8: Encontrar o número total de voos de chegada por aeroporto
SELECT
  A.CodigoAeroporto,
  A.NomeAeroporto,
  COUNT(C.NumeroVoo) AS TotalVoosChegada
FROM
  Aeroporto A
  LEFT JOIN VooChegada C ON A.CodigoAeroporto = C.CodigoAeroporto
GROUP BY
  A.CodigoAeroporto;

-- Query 9: Calcular a capacidade total de todas as aeronaves
SELECT
  SUM(Capacidade) AS CapacidadeTotal
FROM
  Aeronave;

-- Query 10: Encontrar o menor e o maior salário dos funcionários
SELECT
  MIN(Salario) AS MenorSalario,
  MAX(Salario) AS MaiorSalario
FROM
  FuncionarioAeroporto;
