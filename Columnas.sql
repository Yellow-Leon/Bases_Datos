DROP DATABASE IF EXISTS Columnas;
CREATE DATABASE Columnas;
USE Columnas;

Create table Tabla(
  Uno INT NOT NULL,
  dos VARCHAR(5) DEFAULT 'ABC');

INSERT INTO Tabla VALUES (1, 'hola');
INSERT INTO Tabla(uno, dos) VALUES (1, 'bye');
INSERT INTO Tabla(dos, uno) VALUES ('otra', 2);
INSERT INTO Tabla(uno) VALUES (2);
-- INSERT INTO Tabla(dos) VALUES ('prueb')
INSERT INTO Tabla VALUES (5, NULL);

SELECT * FROM Tabla;
