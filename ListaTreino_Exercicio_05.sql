CREATE DATABASE ListaTreino_Exercicio_05;

USE ListaTreino_Exercicio_05;


CREATE TABLE Clientes (
  ID INT AUTO_INCREMENT,
  Nome VARCHAR(50),
  Email VARCHAR(50),
  PRIMARY KEY (ID)
);

CREATE TABLE Pedidos (
  ID INT AUTO_INCREMENT,
  DataPedido DATETIME,
  ClienteID_FK INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ClienteID_FK) REFERENCES Clientes(ID)
);

CREATE TABLE ItensPedido (
  ID INT AUTO_INCREMENT,
  PedidoID_FK INT,
  Item VARCHAR(50),
  Valor NUMERIC(8,2),
  PRIMARY KEY (ID),
  FOREIGN KEY (PedidoID_FK) REFERENCES Pedidos(ID)
);



INSERT INTO Clientes (Nome, Email) VALUES
  ('João', 'joao@email.com'),
  ('Maria', 'maria@email.com'),
  ('José', 'jose@email.com');

INSERT INTO Pedidos (DataPedido) VALUES
  ('2023-05-01'),
  ('2023-05-03'),
  ('2023-05-05'),
  ('2023-05-08');

INSERT INTO ItensPedido (Item, Valor) VALUES
  ('Lápis', 2.50),
  ('Caneta', 3.00),
  ('Caderno', 8.50),
  ('Borracha', 1.50),
  ('Lápis', 2.50),
  ('Livro', 20.00);
