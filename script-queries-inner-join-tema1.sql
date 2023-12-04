-- Query 1: Obter informações sobre os voos e suas aeronaves
SELECT
  V.NumeroVoo,
  V.HoraPartida,
  V.HoraChegada,
  A.TipoAeronave,
  A.Capacidade
FROM
  Voo V
  INNER JOIN VooAeronave VA ON V.NumeroVoo = VA.NumeroVoo
  INNER JOIN Aeronave A ON VA.IDAeronave = A.IDAeronave;

-- Query 2: Listar os passageiros que fizeram reservas e detalhes dos voos reservados
SELECT
  P.Nome,
  P.Sobrenome,
  R.DataReserva,
  V.NumeroVoo,
  V.HoraPartida,
  V.HoraChegada
FROM
  Passageiro P
  INNER JOIN Reserva R ON P.IDPassageiro = R.IDPassageiro
  INNER JOIN Voo V ON R.NumeroVoo = V.NumeroVoo;

-- Query 3: Detalhes dos voos com informações sobre aeroportos de partida e chegada
SELECT
  V.NumeroVoo,
  AP.NomeAeroporto AS Partida,
  V.HoraPartida,
  AC.NomeAeroporto AS Chegada
  V.HoraChegada,
FROM
  Voo V
INNER JOIN VooPartida VP ON V.NumeroVoo = VP.NumeroVoo
INNER JOIN Aeroporto AP ON VP.CodigoAeroporto = AP.CodigoAeroporto
INNER JOIN VooChegada VC ON V.NumeroVoo = VC.NumeroVoo
INNER JOIN Aeroporto AC ON VC.CodigoAeroporto = AC.CodigoAeroporto;

-- Query 4: Detalhes dos bilhetes comprados, incluindo informações do passageiro
SELECT
  B.NumeroBilhete,
  P.Nome,
  P.Sobrenome,
  B.NumeroAssento,
  B.PrecoBilhete
FROM
  Bilhete B
  INNER JOIN Passageiro P ON B.IDPassageiro = P.IDPassageiro;

-- Query 5: Funcionários de um aeroporto específico e detalhes de seus empregos
SELECT
  F.Nome,
  F.Sobrenome,
  F.Cargo,
  F.Salario,
  E.DataInicioEmprego,
  E.DataFimEmprego
FROM
  FuncionarioAeroporto F
  INNER JOIN Emprego E ON F.IDFuncionario = E.IDFuncionario
WHERE
  E.CodigoAeroporto = 'GIG';

-- Query 6: Obter detalhes da reserva de um passageiro, incluindo informações do voo
SELECT
  *
FROM
  Reserva R
  INNER JOIN Passageiro P ON R.IDPassageiro = P.IDPassageiro
  INNER JOIN Voo V ON R.NumeroVoo = V.NumeroVoo;

-- Query 7: Lista de voos com detalhes da aeronave atribuída
SELECT
  *
FROM
  VooAeronave VA
  INNER JOIN Voo V ON VA.NumeroVoo = V.NumeroVoo
  INNER JOIN Aeronave A ON VA.IDAeronave = A.IDAeronave;

-- Query 8: Informações sobre voos de chegada, incluindo detalhes do aeroporto de chegada
SELECT
  *
FROM
  VooChegada C
  INNER JOIN Voo V ON C.NumeroVoo = V.NumeroVoo
  INNER JOIN Aeroporto A ON C.CodigoAeroporto = A.CodigoAeroporto;

-- Query 9: Informações sobre voos de partida, incluindo detalhes do aeroporto de chegada
SELECT
  *
FROM
  VooPartida P
  INNER JOIN Voo V ON P.NumeroVoo = V.NumeroVoo
  INNER JOIN Aeroporto A ON P.CodigoAeroporto = A.CodigoAeroporto;

-- Query 10: Detalhes dos bilhetes comprados, incluindo informações do passageiro
SELECT
  *
FROM
  Bilhete B
  INNER JOIN Passageiro P ON B.IDPassageiro = P.IDPassageiro;

-- Query 11: Lista de funcionários com detalhes do aeroporto onde trabalham
SELECT
  *
FROM
  Emprego E
  INNER JOIN FuncionarioAeroporto F ON E.IDFuncionario = F.IDFuncionario
  INNER JOIN Aeroporto A ON E.CodigoAeroporto = A.CodigoAeroporto;
