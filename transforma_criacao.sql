CREATE DATABASE transforma;

-- Criando a tabela Usuario
CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(25) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    rua VARCHAR(150) NOT NULL,
    numero INT NOT NULL,
    complemento INT,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cep INT NOT NULL,
	descricao TEXT
);

-- Criando a tabela ONG
CREATE TABLE ONG (
    id SERIAL PRIMARY KEY, 
    num_curtidas INT,
    proj_concluidos INT,
    num_voluntarios INT,
    FOREIGN KEY (id) REFERENCES Usuario (id) ON DELETE CASCADE
);

-- Criando a tabela Voluntario
CREATE TABLE Voluntario (
    id SERIAL PRIMARY KEY,
    projetos_participados INT,
    FOREIGN KEY (id) REFERENCES Usuario (id) ON DELETE CASCADE
);

CREATE TYPE status_enum AS ENUM ('Pendente', 'Em Andamento', 'Concluído');
-- Criando tabela Projeto
CREATE TABLE Projeto (
    id SERIAL PRIMARY KEY,
    id_ong INT,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    meta_voluntarios INT,
    data_inicio DATE,
    data_termino DATE,
    status status_enum,
    FOREIGN KEY (id_ong) REFERENCES ONG (id) ON DELETE CASCADE
);
-- Criando tabela Etapa
CREATE TABLE Etapa (
    id SERIAL PRIMARY KEY,
	id_projeto INT, 
    nome VARCHAR(30) NOT NULL,
    data DATE,
    descricao TEXT,
	rua VARCHAR(150),
    numero INT,
    complemento INT,
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep INT,
	FOREIGN KEY(id_projeto) REFERENCES Projeto (id) ON DELETE CASCADE
);


CREATE TYPE status_enum2 AS ENUM ('Pendente', 'Aprovado', 'Rejeitado');
-- Criando tabela Inscricao
CREATE TABLE Inscricao (
    id SERIAL PRIMARY KEY,
    id_usuario INT,
    id_projeto INT,
    data_inscricao DATE NOT NULL,
    status status_enum2,
    justificativa TEXT,
    data_resultado DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_projeto) REFERENCES Projeto (id) ON DELETE CASCADE
);

-- Criando tabela Notificacao
CREATE TABLE Notificacao (
    id SERIAL PRIMARY KEY,
	id_usuario INT,
    titulo VARCHAR(30),
    descricao TEXT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE
);

-- Criando tabela Avaliacao
CREATE TABLE Avaliacao (
    id SERIAL PRIMARY KEY,
    id_usuario INT,
    id_projeto INT,
    nota INT,
    comentario TEXT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_projeto) REFERENCES Projeto (id) ON DELETE CASCADE
);

-- Criando tabela Publicacao
CREATE TABLE Publicacao (
    id SERIAL PRIMARY KEY,
    id_usuario SERIAL,
    legenda VARCHAR(180),
    anexo VARCHAR(100),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE
);

-- Criando tabela Curte
CREATE TABLE Curte (
    id_usuario SERIAL,
    id_publicacao SERIAL,
    PRIMARY KEY (id_usuario, id_publicacao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_publicacao) REFERENCES Publicacao (id) ON DELETE CASCADE
);

-- Criando tabela Comenta
CREATE TABLE Comenta (
    id_usuario SERIAL,
    id_publicacao SERIAL,
    comentario TEXT,
    PRIMARY KEY (id_usuario, id_publicacao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_publicacao) REFERENCES Publicacao (id) ON DELETE CASCADE
);

-- Criando tabela Compartilha
CREATE TABLE Compartilha (
    id_usuario SERIAL,
    id_publicacao SERIAL,
    PRIMARY KEY (id_usuario, id_publicacao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_publicacao) REFERENCES Publicacao (id) ON DELETE CASCADE
);

-- Criando tabela Segue
CREATE TABLE Segue (
    id_usuario1 SERIAL,
    id_usuario2 SERIAL,
    PRIMARY KEY (id_usuario1, id_usuario2),
    FOREIGN KEY (id_usuario1) REFERENCES Usuario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario2) REFERENCES Usuario (id) ON DELETE CASCADE
);

-- Criando tabela Colabora
CREATE TABLE Colabora (
    id_voluntario SERIAL,
    id_projeto SERIAL,
    data_entrada DATE NOT NULL,
    data_termino DATE,
    PRIMARY KEY (id_voluntario, id_projeto),
    FOREIGN KEY (id_voluntario) REFERENCES Voluntario (id) ON DELETE CASCADE,
    FOREIGN KEY (id_projeto) REFERENCES Projeto (id) ON DELETE CASCADE
);

CREATE TABLE Recebe (
	id_usuario SERIAL,
	id_notificacao SERIAL,
	FOREIGN KEY (id_usuario) REFERENCES Usuario (id) ON DELETE CASCADE,
	FOREIGN KEY (id_notificacao) REFERENCES Notificacao (id) ON DELETE CASCADE
)