CREATE DATABASE ListaTreino_Exercicio_01;

USE ListaTreino_Exercicio_01;

CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT,
    nome VARCHAR(50),
    endereco VARCHAR(100),
    PRIMARY KEY (id_paciente)
);

CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT,
    id_pacienteFK INT,
    descricao VARCHAR(100),
    PRIMARY KEY (id_consulta),
    FOREIGN KEY (id_pacienteFK) REFERENCES Pacientes(id_paciente)
);