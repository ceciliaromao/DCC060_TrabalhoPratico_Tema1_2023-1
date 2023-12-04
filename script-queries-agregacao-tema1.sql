-- Query 1: calcula o total de lugares, lugares livres, lugares ocupados e a porcentagem de ocupação em cada voo com base na capacidade da aeronave
SELECT
  V.NumeroVoo,
  A.Capacidade AS TotalLugares,
  COUNT(B.NumeroAssento) AS LugaresOcupados,
  A.Capacidade - COUNT(B.NumeroAssento) AS LugaresLivres,
  CONCAT(
    ROUND(
      (COUNT(B.NumeroAssento) * 100.0) / A.Capacidade,
      2
    ),
    '%'
  ) AS PorcentagemOcupacao
FROM
  Voo V
  LEFT JOIN VooAeronave VA ON V.NumeroVoo = VA.NumeroVoo
  LEFT JOIN Aeronave A ON VA.IDAeronave = A.IDAeronave
  LEFT JOIN Bilhete B ON V.NumeroVoo = B.NumeroVoo
GROUP BY
  V.NumeroVoo,
  A.Capacidade
ORDER BY
  V.NumeroVoo;


-- Query 2: Calcular a média de preços dos bilhetes e o valor total de vendas por tipo de aeronave
SELECT
  A.TipoAeronave,
  AVG(B.PrecoBilhete) AS MediaPrecoBilhete,
  SUM(B.PrecoBilhete) AS ValorTotalVendas
FROM
  Aeronave A
  LEFT JOIN VooAeronave VA ON A.IDAeronave = VA.IDAeronave
  LEFT JOIN Voo V ON VA.NumeroVoo = V.NumeroVoo
  LEFT JOIN Bilhete B ON V.NumeroVoo = B.NumeroVoo
GROUP BY
  A.TipoAeronave;

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

-- Query 6: Aeroporto com o maior número de voos de partida
SELECT
  AP.NomeAeroporto AS AeroportoPartida,
  COUNT(V.NumeroVoo) AS QuantidadeVoosPartida
FROM
  Voo V
  LEFT JOIN VooPartida VP ON V.NumeroVoo = VP.NumeroVoo
  LEFT JOIN Aeroporto AP ON VP.CodigoAeroporto = AP.CodigoAeroporto
GROUP BY
  AP.NomeAeroporto
ORDER BY
  QuantidadeVoosPartida DESC
LIMIT
  1;

-- Query 7: Encontrar o número total de voos de chegada por aeroporto
SELECT
  A.CodigoAeroporto,
  A.NomeAeroporto,
  COUNT(C.NumeroVoo) AS TotalVoosChegada
FROM
  Aeroporto A
  LEFT JOIN VooChegada C ON A.CodigoAeroporto = C.CodigoAeroporto
GROUP BY
  A.CodigoAeroporto;

-- Query 8: Encontrar o menor e o maior salário dos funcionários
SELECT
  MIN(Salario) AS MenorSalario,
  MAX(Salario) AS MaiorSalario
FROM
  FuncionarioAeroporto;
