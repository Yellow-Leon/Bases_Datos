DROP DATABASE IF EXISTS Ejercicio;
CREATE DATABASE Ejercicio;
USE Ejercicio;

CREATE TABLE Ej1 (
  a INT,
  b DATE,
  c VARCHAR(5));
  
-- INSERTAR:
-- 1. valores en a, b y c
INSERT INTO Ej1 VALUES (1, '2024-10-8', 'LOL');
-- 2. valores en orden b, c, a
INSERT INTO Ej1(b, c, a) VALUES ('2024-10-8', 'LOL', 1);
-- 3. valores en c y b
INSERT INTO Ej1(c, b) VALUES ('LOL', '2024-10-8');
-- 4. valor en b
INSERT INTO Ej1(b) VALUES ('2024-10-8');
-- '2024-10-08'
SELECT * FROM Ej1;

-- Ejercicio 2
CREATE TABLE Ej2 (
  a INT NOT NULL,
  b INT NOT NULL DEFAULT 0,
  c VARCHAR(5),
  d VARCHAR(5) DEFAULT 'Hola');
   
-- INSERTAR:
-- 1. Valores en a, b, d
INSERT INTO Ej2(a, b, d) VALUES (5, 12, 'ligma');
-- 2. Valores en a, b, c 
INSERT INTO Ej2(a, b, c) VALUES (5, 12, 'LOL');
-- 3. Valores en c, a y dafault en b
INSERT INTO Ej2(c, a, d) VALUES ('LOL', 5, NULL);
-- 4. Valor en a con default en b y d
INSERT INTO Ej2(a, c) VALUES (5, 'LOL');
-- 5. Valor en a con NULL en d
INSERT INTO Ej2(a, d) VALUES (5, NULL); 

SELECT * FROM Ej2;

-- EJERCICIO 3
CREATE TABLE Ej3 (
  a INT AUTO_INCREMENT PRIMARY KEY,
  b VARCHAR(5) UNIQUE KEY,
  c VARCHAR (5) DEFAULT 'hola');
  
INSERT INTO Ej3(b, c) VALUES 
   ('LIGMA', 'LIMAO'),
   ('LOL', 'FRFR');
INSERT INTO Ej3 VALUES
   (5, 'ASF', 'CAP');
INSERT INTO Ej3(b, c) VALUES
   ('TCA', 'ROT');
   
SELECT * FROM Ej3;


