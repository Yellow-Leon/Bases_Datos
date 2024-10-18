DROP DATABASE IF EXISTS Game;
CREATE DATABASE Game;
USE Game;

CREATE TABLE desarrolladora (
  nombre VARCHAR(50) PRIMARY KEY);
  
CREATE TABLE juegos(
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  fk_desarrolladora VARCHAR(50),
  FOREIGN KEY (fk_desarrolladora) REFERENCES desarrolladora(nombre)
     ON DELETE CASCADE
);
  
CREATE TABLE personajes(
  nombre VARCHAR(50) PRIMARY KEY,
  vida FLOAT,
  fk_juegos INT,
  FOREIGN KEY (fk_juegos) REFERENCES juegos(id)
     ON DELETE SET NULL
);

INSERT INTO desarrolladora VALUES ('Buggy Soft');
INSERT INTO juegos VALUES
  (0, 'Las aventuras del capitan salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitan salami Vegan ED', 'Buggy Soft');
INSERT INTO personajes  VALUES 
  ('Cap. Salami', 10.0, 0),
  ('Cap. Cuchiller', 10.0, 0),
  ('Cap. Seitan', 10.0, 1),
  ('Señor Chucharilla. Salami', 10.0, 1);

SELECT * FROM personajes;
SELECT * FROM juegos;
SELECT * FROM desarrolladora;

DELETE FROM juegos WHERE id=0;
