DROP DATABASE IF EXISTS Libreria;
CREATE DATABASE Libreria;
USE Libreria;

CREATE TABLE Autor(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  dni VARCHAR(50) UNIQUE KEY
);
CREATE TABLE Tienda(
  cif VARCHAR(50) PRIMARY KEY,
  ubicacion VARCHAR(50),
  web VARCHAR(50)
);
CREATE TABLE Libros(
  isnb INT PRIMARY KEY,
  titulo VARCHAR(50),
  fecha_publicacion DATE,
  genero VARCHAR(50) DEFAULT 'Fantasia',
  precio DOUBLE (50),
  id_Autor INT,
  cif_Tienda VARCHAR(50), 
  FOREIGN KEY (id_Autor) REFERENCES Autor(id),
  FOREIGN KEY (cif_Tienda) REFERENCES Tienda(cif)
  );
  
INSERT INTO Autor VALUES(10, 'bORJA', '123');
INSERT INTO Tienda VALUES('7212', 'AJROb', '321');
