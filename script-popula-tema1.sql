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
    'Avenida B, 456',
    '987654321',
    'maria.santos@email.com'
  ),
  (
    'Carlos',
    'Oliveira',
    'Rua C, 789',
    '567890123',
    'carlos.oliveira@email.com'
  ),
  (
    'Ana',
    'Pereira',
    'Avenida D, 101',
    '345678901',
    'ana.pereira@email.com'
  ),
  (
    'Pedro',
    'Martins',
    'Rua E, 234',
    '234567890',
    'pedro.martins@email.com'
  ),
  (
    'Julia',
    'Lima',
    'Avenida F, 567',
    '678901234',
    'julia.lima@email.com'
  ),
  (
    'Fernando',
    'Souza',
    'Rua G, 890',
    '890123456',
    'fernando.souza@email.com'
  ),
  (
    'Cristina',
    'Costa',
    'Avenida H, 111',
    '456789012',
    'cristina.costa@email.com'
  ),
  (
    'Eduardo',
    'Ribeiro',
    'Rua I, 222',
    '901234567',
    'eduardo.ribeiro@email.com'
  ),
  (
    'Isabela',
    'Almeida',
    'Avenida J, 333',
    '123789456',
    'isabela.almeida@email.com'
  );

-- Inserção de dados na tabela Aeroporto
INSERT INTO
  Aeroporto (NomeAeroporto, Localizacao)
VALUES
  ('Aeroporto A', 'Cidade A'),
  ('Aeroporto B', 'Cidade B'),
  ('Aeroporto C', 'Cidade C'),
  ('Aeroporto D', 'Cidade D'),
  ('Aeroporto E', 'Cidade E'),
  ('Aeroporto F', 'Cidade F'),
  ('Aeroporto G', 'Cidade G'),
  ('Aeroporto H', 'Cidade H'),
  ('Aeroporto I', 'Cidade I'),
  ('Aeroporto J', 'Cidade J');

-- Inserção de dados na tabela Aeronave
INSERT INTO
  Aeronave (TipoAeronave, Capacidade)
VALUES
  ('Boeing 737', 150),
  ('Airbus A320', 180),
  ('Boeing 747', 400),
  ('Airbus A380', 550),
  ('Embraer E190', 100),
  ('Boeing 777', 300),
  ('Airbus A330', 250),
  ('Bombardier CRJ900', 90),
  ('Airbus A350', 300),
  ('Embraer E145', 50);

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
    1,
    2,
    '2023-12-01 08:00:00',
    '2023-12-01 10:00:00',
    'Boeing 737'
  ),
  (
    2,
    3,
    '2023-12-02 12:00:00',
    '2023-12-02 15:00:00',
    'Airbus A320'
  ),
  (
    3,
    4,
    '2023-12-03 16:00:00',
    '2023-12-03 18:00:00',
    'Boeing 747'
  ),
  (
    4,
    5,
    '2023-12-04 20:00:00',
    '2023-12-05 02:00:00',
    'Airbus A380'
  ),
  (
    5,
    6,
    '2023-12-05 10:30:00',
    '2023-12-05 12:30:00',
    'Embraer E190'
  ),
  (
    6,
    7,
    '2023-12-06 14:00:00',
    '2023-12-06 16:30:00',
    'Boeing 777'
  ),
  (
    7,
    8,
    '2023-12-07 18:00:00',
    '2023-12-07 20:30:00',
    'Airbus A330'
  ),
  (
    8,
    9,
    '2023-12-08 22:00:00',
    '2023-12-09 01:00:00',
    'Bombardier CRJ900'
  ),
  (
    9,
    10,
    '2023-12-10 05:00:00',
    '2023-12-10 07:00:00',
    'Airbus A350'
  ),
  (
    10,
    1,
    '2023-12-11 08:30:00',
    '2023-12-11 10:30:00',
    'Embraer E145'
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
  (1, 1, 10, 150.00),
  (2, 2, 15, 200.00),
  (3, 3, 20, 250.00),
  (4, 4, 25, 300.00),
  (5, 5, 30, 180.00),
  (6, 6, 5, 280.00),
  (7, 7, 12, 320.00),
  (8, 8, 18, 180.00),
  (9, 9, 22, 200.00),
  (10, 10, 8, 150.00);

-- Inserção de dados na tabela FuncionarioAeroporto
INSERT INTO
  FuncionarioAeroporto (Nome, Sobrenome, Cargo, Salario)
VALUES
  ('Lucas', 'Cunha', 'Atendente', 3000.00),
  ('Amanda', 'Lopes', 'Piloto', 8000.00),
  (
    'Rodrigo',
    'Costa',
    'Comissário de Bordo',
    3500.00
  ),
  (
    'Mariana',
    'Rocha',
    'Agente de Segurança',
    2500.00
  ),
  (
    'Gabriel',
    'Lima',
    'Engenheiro de Manutenção',
    6000.00
  ),
  ('Luana', 'Oliveira', 'Atendente', 3000.00),
  ('Rafael', 'Santos', 'Piloto', 8000.00),
  (
    'Patricia',
    'Martins',
    'Comissário de Bordo',
    3500.00
  ),
  (
    'Felipe',
    'Almeida',
    'Agente de Segurança',
    2500.00
  ),
  (
    'Camila',
    'Silva',
    'Engenheiro de Manutenção',
    6000.00
  );

-- Inserção de dados na tabela Reserva
INSERT INTO
  Reserva (IDPassageiro, NumeroVoo, DataReserva)
VALUES
  (1, 1, '2023-11-25 09:00:00'),
  (2, 2, '2023-11-26 10:00:00'),
  (3, 3, '2023-11-27 11:00:00'),
  (4, 4, '2023-11-28 12:00:00'),
  (5, 5, '2023-11-29 13:00:00'),
  (6, 6, '2023-11-30 14:00:00'),
  (7, 7, '2023-12-01 15:00:00'),
  (8, 8, '2023-12-02 16:00:00'),
  (9, 9, '2023-12-03 17:00:00'),
  (10, 10, '2023-12-04 18:00:00');

-- Inserção de dados na tabela VooAeronave
INSERT INTO
  VooAeronave (NumeroVoo, IDAeronave, DataAtribuicao)
VALUES
  (1, 1, '2023-11-25 08:30:00'),
  (2, 2, '2023-11-26 09:30:00'),
  (3, 3, '2023-11-27 10:30:00'),
  (4, 4, '2023-11-28 11:30:00'),
  (5, 5, '2023-11-29 12:30:00'),
  (6, 6, '2023-11-30 13:30:00'),
  (7, 7, '2023-12-01 14:30:00'),
  (8, 8, '2023-12-02 15:30:00'),
  (9, 9, '2023-12-03 16:30:00'),
  (10, 10, '2023-12-04 17:30:00');

-- Inserção de dados na tabela VooPartida
INSERT INTO
  VooPartida (
    CodigoAeroporto,
    NumeroVoo,
    PortaoPartida,
    DataPartida
  )
VALUES
  (1, 1, 'A1', '2023-12-01 08:00:00'),
  (2, 2, 'B2', '2023-12-02 12:00:00'),
  (3, 3, 'C3', '2023-12-03 16:00:00'),
  (4, 4, 'D4', '2023-12-04 20:00:00'),
  (5, 5, 'E5', '2023-12-05 10:30:00'),
  (6, 6, 'F6', '2023-12-06 14:00:00'),
  (7, 7, 'G7', '2023-12-07 18:00:00'),
  (8, 8, 'H8', '2023-12-08 22:00:00'),
  (9, 9, 'I9', '2023-12-10 05:00:00'),
  (10, 10, 'J10', '2023-12-11 08:30:00');

-- Inserção de dados na tabela VooChegada
INSERT INTO
  VooChegada (
    CodigoAeroporto,
    NumeroVoo,
    PortaoChegada,
    DataChegada
  )
VALUES
  (2, 1, 'A1', '2023-12-01 10:00:00'),
  (3, 2, 'B2', '2023-12-02 15:00:00'),
  (4, 3, 'C3', '2023-12-03 18:00:00'),
  (5, 4, 'D4', '2023-12-05 02:00:00'),
  (6, 5, 'E5', '2023-12-05 12:30:00'),
  (7, 6, 'F6', '2023-12-06 16:30:00'),
  (8, 7, 'G7', '2023-12-07 20:30:00'),
  (9, 8, 'H8', '2023-12-09 01:00:00'),
  (10, 9, 'I9', '2023-12-10 07:00:00'),
  (1, 10, 'J10', '2023-12-11 10:30:00');

-- Inserção de dados na tabela Emprego
INSERT INTO
  Emprego (
    CodigoAeroporto,
    IDFuncionario,
    DataInicioEmprego,
    DataFimEmprego
  )
VALUES
  (1, 1, '2023-11-25 08:00:00', NULL),
  (2, 2, '2023-11-26 09:00:00', NULL),
  (3, 3, '2023-11-27 10:00:00', NULL),
  (4, 4, '2023-11-28 11:00:00', NULL),
  (5, 5, '2023-11-29 12:00:00', NULL),
  (6, 6, '2023-11-30 13:00:00', NULL),
  (7, 7, '2023-12-01 14:00:00', NULL),
  (8, 8, '2023-12-02 15:00:00', NULL),
  (9, 9, '2023-12-03 16:00:00', NULL),
  (10, 10, '2023-12-04 17:00:00', NULL);
  