-- Query 1: Lista todos o voos com ou sem informações sobre reservas de passageiros
-- útil para identificar voos que ainda não possuem reservas
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
