CREATE TABLE NivelDeEnsino
(Id integer IDENTITY NOT NULL PRIMARY KEY ,
Nome varchar(50) NOT NULL)

CREATE TABLE Curso
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Nome varchar(50) NOT NULL,
NivelDeEnsinoId integer NOT NULL,
FOREIGN KEY(NivelDeEnsinoId) REFERENCES NivelDeEnsino(Id))

CREATE TABLE Professor
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Nome varchar(50) NOT NULL,
DataNascimento date NOT NULL,
CPF varchar(50) NOT NULL UNIQUE,
Email varchar(50) NOT NULL)

CREATE TABLE Cadeira
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Nome varchar(50) NOT NULL,
Turno varchar(50) NOT NULL,
ProfessorId integer NOT NULL,
FOREIGN KEY(ProfessorId) REFERENCES Professor(Id))

CREATE TABLE CursoCadeira
(CursoId integer NOT NULL,
CadeiraId integer NOT NULL,
FOREIGN KEY(CursoId) REFERENCES Curso(Id),
FOREIGN KEY(CadeiraId) REFERENCES Cadeira(Id),
PRIMARY KEY (CursoId, CadeiraId))

CREATE TABLE DiaDaSemana
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Nome varchar(50) NOT NULL)

CREATE TABLE DiaCadeira
(DiaDaSemanaId integer NOT NULL,
CadeiraId integer NOT NULL,
FOREIGN KEY(DiaDaSemanaId) REFERENCES DiaDaSemana(Id),
FOREIGN KEY(CadeiraId) REFERENCES Cadeira(Id))

CREATE TABLE Aluno
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Nome varchar(50) NOT NULL,
DataNascimento date NOT NULL,
CPF varchar(50) NOT NULL UNIQUE,
Email varchar(50) NOT NULL)

CREATE TABLE Historico
(Id integer IDENTITY NOT NULL PRIMARY KEY,
DataDeMatricula date NOT NULL,
AlunoId integer NOT NULL UNIQUE,
FOREIGN KEY(AlunoId) REFERENCES Aluno(Id))

CREATE TABLE Nota
(Id integer IDENTITY NOT NULL PRIMARY KEY,
Valor decimal(4,2) NOT NULL,
HistoricoId integer NOT NULL,
CadeiraId integer NOT NULL,
FOREIGN KEY(HistoricoId) REFERENCES Historico(Id),
FOREIGN KEY(CadeiraId) REFERENCES Cadeira(Id))

CREATE TABLE CursoHistorico
(CursoId integer NOT NULL,
HistoricoId integer NOT NULL,
FOREIGN KEY(CursoId) REFERENCES Curso(Id),
FOREIGN KEY(HistoricoId) REFERENCES Historico(Id),
PRIMARY KEY (CursoId, HistoricoId))