-- Criação da tabela Passageiro
CREATE TABLE Passageiro (
  IDPassageiro SERIAL PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Sobrenome VARCHAR(255) NOT NULL,
  Endereco VARCHAR(255),
  Telefone VARCHAR(15),
  Email VARCHAR(255) UNIQUE
);

-- Criação da tabela Aeroporto
CREATE TABLE Aeroporto (
  CodigoAeroporto VARCHAR(4) PRIMARY KEY,
  NomeAeroporto VARCHAR(255) NOT NULL,
  Localizacao VARCHAR(255)
);

-- Criação da tabela Aeronave
CREATE TABLE Aeronave (
  IDAeronave SERIAL PRIMARY KEY,
  TipoAeronave VARCHAR(255) NOT NULL,
  Capacidade INT NOT NULL
);

-- Criação da tabela Voo
CREATE TABLE Voo (
  NumeroVoo SERIAL PRIMARY KEY,
  AeroportoPartida VARCHAR(4) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  AeroportoChegada VARCHAR(4) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  HoraPartida TIMESTAMP,
  HoraChegada TIMESTAMP,
  TipoAeronave VARCHAR(255),
  UNIQUE (NumeroVoo, AeroportoPartida, AeroportoChegada)
);

-- Criação da tabela Bilhete
CREATE TABLE Bilhete (
  NumeroBilhete SERIAL PRIMARY KEY,
  IDPassageiro INT REFERENCES Passageiro(IDPassageiro) ON DELETE RESTRICT ON UPDATE CASCADE,
  NumeroVoo INT REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  NumeroAssento VARCHAR(10),
  PrecoBilhete DECIMAL(10, 2) CHECK (PrecoBilhete >= 0),
  UNIQUE (IDPassageiro, NumeroVoo)
);

-- Criação da tabela FuncionarioAeroporto
CREATE TABLE FuncionarioAeroporto (
  IDFuncionario SERIAL PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Sobrenome VARCHAR(255) NOT NULL,
  Cargo VARCHAR(255),
  Salario DECIMAL(10, 2) CHECK (Salario >= 0)
);

-- Criação da tabela de relacionamento PassageiroVoo (Reserva)
CREATE TABLE Reserva (
  IDReserva SERIAL PRIMARY KEY,
  IDPassageiro INT REFERENCES Passageiro(IDPassageiro) ON DELETE RESTRICT ON UPDATE CASCADE,
  NumeroVoo INT REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  DataReserva TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE (IDPassageiro, NumeroVoo)
);

-- Criação da tabela de relacionamento VooAeronave
CREATE TABLE VooAeronave (
  IDAtribuicao SERIAL PRIMARY KEY,
  NumeroVoo INT REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  IDAeronave INT REFERENCES Aeronave(IDAeronave) ON DELETE RESTRICT ON UPDATE CASCADE,
  DataAtribuicao TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE (NumeroVoo, IDAeronave)
);

-- Criação da tabela de relacionamento AeroportoVoo (Partida)
CREATE TABLE VooPartida (
  IDPartida SERIAL PRIMARY KEY,
  CodigoAeroporto VARCHAR(4) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  NumeroVoo INT REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  PortaoPartida VARCHAR(10),
  DataPartida TIMESTAMP,
  UNIQUE (CodigoAeroporto, NumeroVoo)
);

-- Criação da tabela de relacionamento AeroportoVoo (Chegada)
CREATE TABLE VooChegada (
  IDChegada SERIAL PRIMARY KEY,
  CodigoAeroporto VARCHAR(4) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  NumeroVoo INT REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  PortaoChegada VARCHAR(10),
  DataChegada TIMESTAMP,
  UNIQUE (CodigoAeroporto, NumeroVoo)
);

-- Criação da tabela de relacionamento AeroportoFuncionarioAeroporto (Emprego)
CREATE TABLE Emprego (
  IDEmprego SERIAL PRIMARY KEY,
  CodigoAeroporto VARCHAR(4) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  IDFuncionario INT REFERENCES FuncionarioAeroporto(IDFuncionario) ON DELETE RESTRICT ON UPDATE CASCADE,
  DataInicioEmprego TIMESTAMP NOT NULL DEFAULT NOW(),
  DataFimEmprego TIMESTAMP,
  UNIQUE (CodigoAeroporto, IDFuncionario)
);

-- Criação de índices nas chaves estrangeiras
CREATE INDEX idx_fk_IDPassageiro ON Reserva(IDPassageiro);

CREATE INDEX idx_fk_NumeroVoo_Reserva ON Reserva(NumeroVoo);

CREATE INDEX idx_fk_NumeroVoo_Aeronave ON VooAeronave(NumeroVoo);

CREATE INDEX idx_fk_IDAeronave ON VooAeronave(IDAeronave);

CREATE INDEX idx_fk_CodigoAeroporto_VooPartida ON VooPartida(CodigoAeroporto);

CREATE INDEX idx_fk_NumeroVoo_VooPartida ON VooPartida(NumeroVoo);

CREATE INDEX idx_fk_CodigoAeroporto_VooChegada ON VooChegada(CodigoAeroporto);

CREATE INDEX idx_fk_NumeroVoo_VooChegada ON VooChegada(NumeroVoo);

CREATE INDEX idx_fk_CodigoAeroporto_Emprego ON Emprego(CodigoAeroporto);

CREATE INDEX idx_fk_IDFuncionario_Emprego ON Emprego(IDFuncionario);
