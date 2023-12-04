-- Inserção de dados na tabela Passageiro
INSERT INTO
  Passageiro (Nome, Sobrenome, Endereco, Telefone, Email)
VALUES
  (
    'João',
    'Silva',
    'Rua A, 123',
    '123456789',
    'joao.silva@email.com'
  ),
  (
    'Maria',
    'Santos',
    'Rua B, 456',
    '987654321',
    'maria.santos@email.com'
  ),
  (
    'Carlos',
    'Oliveira',
    'Av. X, 789',
    '111223344',
    'carlos.oliveira@email.com'
  ),
  (
    'Ana',
    'Pereira',
    'Rua Y, 987',
    '555666777',
    'ana.pereira@email.com'
  ),
  (
    'Pedro',
    'Ferreira',
    'Av. Z, 654',
    '999888777',
    'pedro.ferreira@email.com'
  ),
  (
    'Fernanda',
    'Lima',
    'Rua C, 321',
    '333222111',
    'fernanda.lima@email.com'
  ),
  (
    'Roberto',
    'Costa',
    'Av. D, 456',
    '777888999',
    'roberto.costa@email.com'
  ),
  (
    'Mariana',
    'Almeida',
    'Rua E, 987',
    '555777888',
    'mariana.almeida@email.com'
  ),
  (
    'Lucas',
    'Ribeiro',
    'Av. F, 123',
    '111555888',
    'lucas.ribeiro@email.com'
  ),
  (
    'Julia',
    'Martins',
    'Rua G, 456',
    '333111444',
    'julia.martins@email.com'
  );

-- Inserção de dados na tabela Aeroporto
INSERT INTO
  Aeroporto (CodigoAeroporto, NomeAeroporto, Localizacao)
VALUES
  (
    'GIG',
    'Aeroporto Internacional do Rio de Janeiro - Galeão',
    'Rio de Janeiro'
  ),
  ('GRU', 'Aeroporto de Guarulhos', 'São Paulo'),
  ('BSB', 'Aeroporto de Brasília', 'Brasília'),
  ('CNF', 'Aeroporto de Confins', 'Belo Horizonte'),
  ('SSA', 'Aeroporto de Salvador', 'Salvador'),
  ('REC', 'Aeroporto do Recife', 'Recife'),
  ('FOR', 'Aeroporto de Fortaleza', 'Fortaleza'),
  ('POA', 'Aeroporto Salgado Filho', 'Porto Alegre'),
  ('FLN', 'Aeroporto Hercílio Luz', 'Florianópolis'),
  ('CWB', 'Aeroporto Afonso Pena', 'Curitiba');

-- Inserção de dados na tabela Aeronave
INSERT INTO
  Aeronave (TipoAeronave, Capacidade)
VALUES
  ('Boeing 737', 150),
  ('Airbus A320', 180),
  ('Embraer E195', 120),
  ('Boeing 777', 300),
  ('Airbus A350', 250),
  ('Boeing 767', 200),
  ('Embraer E175', 90),
  ('Airbus A330', 220),
  ('Boeing 747', 400),
  ('Embraer E190', 110);

-- Inserção de dados na tabela Voo
INSERT INTO
  Voo (
    AeroportoPartida,
    AeroportoChegada,
    HoraPartida,
    HoraChegada,
    TipoAeronave
  )
VALUES
  (
    'GIG',
    'GRU',
    '2023-12-04 10:00:00',
    '2023-12-04 12:00:00',
    'Boeing 737'
  ),
  (
    'GRU',
    'GIG',
    '2023-12-05 14:30:00',
    '2023-12-05 16:30:00',
    'Airbus A320'
  ),
  (
    'BSB',
    'CNF',
    '2023-12-06 08:45:00',
    '2023-12-06 09:45:00',
    'Embraer E195'
  ),
  (
    'SSA',
    'REC',
    '2023-12-07 16:00:00',
    '2023-12-07 18:00:00',
    'Boeing 777'
  ),
  (
    'FOR',
    'POA',
    '2023-12-08 12:30:00',
    '2023-12-08 15:00:00',
    'Airbus A350'
  ),
  (
    'FLN',
    'CWB',
    '2023-12-09 09:15:00',
    '2023-12-09 10:15:00',
    'Boeing 767'
  ),
  (
    'GIG',
    'FOR',
    '2023-12-10 20:00:00',
    '2023-12-10 23:00:00',
    'Embraer E175'
  ),
  (
    'CNF',
    'SSA',
    '2023-12-11 11:30:00',
    '2023-12-11 13:30:00',
    'Airbus A330'
  ),
  (
    'POA',
    'FLN',
    '2023-12-12 18:45:00',
    '2023-12-12 20:45:00',
    'Boeing 747'
  ),
  (
    'CWB',
    'BSB',
    '2023-12-13 14:00:00',
    '2023-12-13 16:00:00',
    'Embraer E190'
  );

-- Inserção de dados na tabela Bilhete
INSERT INTO
  Bilhete (
    IDPassageiro,
    NumeroVoo,
    NumeroAssento,
    PrecoBilhete
  )
VALUES
  (1, 1, 'A01', 200.00),
  (2, 2, 'B03', 180.00),
  (3, 3, 'C05', 150.00),
  (4, 4, 'D02', 300.00),
  (5, 5, 'E07', 250.00),
  (6, 6, 'F04', 200.00),
  (7, 7, 'G09', 120.00),
  (8, 8, 'H06', 220.00),
  (9, 9, 'I11', 400.00),
  (10, 10, 'J08', 110.00);

-- Inserção de dados na tabela FuncionarioAeroporto
INSERT INTO
  FuncionarioAeroporto (Nome, Sobrenome, Cargo, Salario)
VALUES
  ('Eduardo', 'Mendes', 'Atendente', 3000.00),
  ('Beatriz', 'Souza', 'Piloto', 8000.00),
  (
    'Camila',
    'Ferreira',
    'Comissário de Bordo',
    4000.00
  ),
  ('Fábio', 'Rocha', 'Mecânico', 3500.00),
  ('Gustavo', 'Alves', 'Atendente', 3000.00),
  ('Ingrid', 'Lima', 'Piloto', 8000.00),
  (
    'José',
    'Oliveira',
    'Comissário de Bordo',
    4000.00
  ),
  ('Kátia', 'Santos', 'Mecânica', 3500.00),
  ('Leandro', 'Silva', 'Atendente', 3000.00),
  ('Mariana', 'Ribeiro', 'Piloto', 8000.00);

-- Inserção de dados na tabela Reserva
INSERT INTO
  Reserva (IDPassageiro, NumeroVoo, DataReserva)
VALUES
  (2, 2, '2023-12-05 08:00:00'),
  (4, 4, '2023-12-07 10:30:00'),
  (6, 6, '2023-12-09 14:45:00'),
  (8, 8, '2023-12-11 18:00:00'),
  (10, 10, '2023-12-13 22:15:00'),
  (1, 1, '2023-12-04 07:30:00'),
  (3, 3, '2023-12-06 12:15:00'),
  (5, 5, '2023-12-08 16:30:00'),
  (7, 7, '2023-12-10 20:45:00'),
  (9, 9, '2023-12-12 11:00:00');

-- Inserção de dados na tabela VooAeronave
INSERT INTO
  VooAeronave (NumeroVoo, IDAeronave, DataAtribuicao)
VALUES
  (1, 1, '2023-12-04 09:30:00'),
  (2, 2, '2023-12-05 13:45:00'),
  (3, 3, '2023-12-06 08:00:00'),
  (4, 4, '2023-12-07 15:30:00'),
  (5, 5, '2023-12-08 11:00:00'),
  (6, 6, '2023-12-09 09:00:00'),
  (7, 7, '2023-12-10 19:30:00'),
  (8, 8, '2023-12-11 11:15:00'),
  (9, 9, '2023-12-12 17:30:00'),
  (10, 10, '2023-12-13 13:45:00');

-- Inserção de dados na tabela VooPartida
INSERT INTO
  VooPartida (
    CodigoAeroporto,
    NumeroVoo,
    PortaoPartida,
    DataPartida
  )
VALUES
  ('GIG', 1, 'A01', '2023-12-04 10:00:00'),
  ('GRU', 2, 'B03', '2023-12-05 14:30:00'),
  ('BSB', 3, 'C05', '2023-12-06 08:45:00'),
  ('SSA', 4, 'D02', '2023-12-07 16:00:00'),
  ('FOR', 5, 'E07', '2023-12-08 12:30:00'),
  ('FLN', 6, 'F04', '2023-12-09 09:15:00'),
  ('GIG', 7, 'G09', '2023-12-10 20:00:00'),
  ('CNF', 8, 'H06', '2023-12-11 11:30:00'),
  ('POA', 9, 'I11', '2023-12-12 18:45:00'),
  ('CWB', 10, 'J08', '2023-12-13 14:00:00');

-- Inserção de dados na tabela VooChegada
INSERT INTO
  VooChegada (
    CodigoAeroporto,
    NumeroVoo,
    PortaoChegada,
    DataChegada
  )
VALUES
  ('GRU', 1, 'A01', '2023-12-04 12:00:00'),
  ('GIG', 2, 'B03', '2023-12-05 16:30:00'),
  ('CNF', 3, 'C05', '2023-12-06 09:45:00'),
  ('REC', 4, 'D02', '2023-12-07 18:00:00'),
  ('POA', 5, 'E07', '2023-12-08 15:00:00'),
  ('CWB', 6, 'F04', '2023-12-09 10:15:00'),
  ('FOR', 7, 'G09', '2023-12-10 23:00:00'),
  ('SSA', 8, 'H06', '2023-12-11 13:30:00'),
  ('FLN', 9, 'I11', '2023-12-12 20:45:00'),
  ('BSB', 10, 'J08', '2023-12-13 16:00:00');

-- Inserção de dados na tabela Emprego
INSERT INTO
  Emprego (
    CodigoAeroporto,
    IDFuncionario,
    DataInicioEmprego,
    DataFimEmprego
  )
VALUES
  ('GIG', 1, '2023-01-01', NULL),
  ('GIG', 2, '2023-01-02', NULL),
  ('GRU', 3, '2023-01-03', NULL),
  ('GRU', 4, '2023-01-04', '2023-06-01'),
  ('SSA', 5, '2023-01-05', '2023-12-31'),
  ('SSA', 6, '2023-01-06', NULL),
  ('BSB', 7, '2023-01-07', NULL),
  ('BSB', 8, '2023-01-08', '2023-11-30'),
  ('GIG', 9, '2023-01-09', NULL),
  ('GRU', 10, '2023-01-10', NULL);