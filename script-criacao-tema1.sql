-- Criação da tabela Passageiro
CREATE TABLE Passageiro (
  IDPassageiro SERIAL PRIMARY KEY,
  Nome VARCHAR(255),
  Sobrenome VARCHAR(255),
  Endereco VARCHAR(255),
  Telefone VARCHAR(15),
  Email VARCHAR(255)
);

-- Criação da tabela Aeroporto
CREATE TABLE Aeroporto (
  CodigoAeroporto SERIAL PRIMARY KEY,
  NomeAeroporto VARCHAR(255),
  Localizacao VARCHAR(255)
);

-- Criação da tabela Aeronave
CREATE TABLE Aeronave (
  IDAeronave SERIAL PRIMARY KEY,
  TipoAeronave VARCHAR(50),
  Capacidade INT
);

-- Criação da tabela Voo
CREATE TABLE Voo (
  NumeroVoo SERIAL PRIMARY KEY,
  AeroportoPartida INT,
  AeroportoChegada INT,
  HoraPartida TIMESTAMP,
  HoraChegada TIMESTAMP,
  TipoAeronave VARCHAR(255),
  FOREIGN KEY (AeroportoPartida) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (AeroportoChegada) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela Bilhete
CREATE TABLE Bilhete (
  NumeroBilhete SERIAL PRIMARY KEY,
  IDPassageiro INT,
  NumeroVoo INT,
  NumeroAssento INT,
  PrecoBilhete DECIMAL(10, 2),
  FOREIGN KEY (IDPassageiro) REFERENCES Passageiro(IDPassageiro) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela FuncionarioAeroporto
CREATE TABLE FuncionarioAeroporto (
  IDFuncionario SERIAL PRIMARY KEY,
  Nome VARCHAR(255),
  Sobrenome VARCHAR(255),
  Cargo VARCHAR(50),
  Salario DECIMAL(10, 2)
);

-- Criação da tabela de relacionamento PassageiroVoo (Reserva)
CREATE TABLE Reserva (
  IDReserva SERIAL PRIMARY KEY,
  IDPassageiro INT,
  NumeroVoo INT,
  DataReserva TIMESTAMP,
  FOREIGN KEY (IDPassageiro) REFERENCES Passageiro(IDPassageiro) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela de relacionamento VooAeronave
CREATE TABLE VooAeronave (
  IDAtribuicao SERIAL PRIMARY KEY,
  NumeroVoo INT,
  IDAeronave INT,
  DataAtribuicao TIMESTAMP,
  FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (IDAeronave) REFERENCES Aeronave(IDAeronave) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela de relacionamento AeroportoVoo (Partida)
CREATE TABLE VooPartida (
  IDPartida SERIAL PRIMARY KEY,
  CodigoAeroporto INT,
  NumeroVoo INT,
  PortaoPartida VARCHAR(10),
  DataPartida TIMESTAMP,
  FOREIGN KEY (CodigoAeroporto) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela de relacionamento AeroportoVoo (Chegada)
CREATE TABLE VooChegada (
  IDChegada SERIAL PRIMARY KEY,
  CodigoAeroporto INT,
  NumeroVoo INT,
  PortaoChegada VARCHAR(10),
  DataChegada TIMESTAMP,
  FOREIGN KEY (CodigoAeroporto) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Criação da tabela de relacionamento AeroportoFuncionarioAeroporto (Emprego)
CREATE TABLE Emprego (
  IDEmprego SERIAL PRIMARY KEY,
  CodigoAeroporto INT,
  IDFuncionario INT,
  DataInicioEmprego TIMESTAMP,
  DataFimEmprego TIMESTAMP,
  FOREIGN KEY (CodigoAeroporto) REFERENCES Aeroporto(CodigoAeroporto) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (IDFuncionario) REFERENCES FuncionarioAeroporto(IDFuncionario) ON DELETE RESTRICT ON UPDATE CASCADE
);
