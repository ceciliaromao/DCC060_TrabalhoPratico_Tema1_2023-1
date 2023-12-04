-- Query 1: Voos com informações sobre reservas de passageiros
SELECT
  V.NumeroVoo,
  V.HoraPartida,
  V.HoraChegada,
  P.Nome AS NomePassageiro,
  P.Sobrenome AS SobrenomePassageiro,
  R.DataReserva
FROM
  Voo V
  LEFT JOIN Reserva R ON V.NumeroVoo = R.NumeroVoo
  LEFT JOIN Passageiro P ON R.IDPassageiro = P.IDPassageiro;

-- Query 2: Obter voos com ou sem aeronave atribuída
SELECT
  *
FROM
  Voo V
  LEFT JOIN VooAeronave VA ON V.NumeroVoo = VA.NumeroVoo;