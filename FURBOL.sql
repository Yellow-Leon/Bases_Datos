DROP DATABASE IF EXISTS FURBOL;
CREATE DATABASE FURBOL;
USE FURBOL;

CREATE TABLE EQUIPO( 
   ID INT PRIMARY KEY,
   NOMBRE varchar(100),
   CIUDAD varchar(100));

CREATE TABLE JUGADOR(
   DNI varchar(100) PRIMARY KEY,
   NACIONALIDAD varchar(100),
   DORSAL INT,
   NOMBRE varchar(100),
   ALTURA FLOAT,
   ID_EQUIPO INT,
   FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID));
   
INSERT INTO EQUIPO VALUES(1, 'REAL MADRID', 'MADRID');
INSERT INTO EQUIPO VALUES(2, 'BARCELONA' , 'BARCELONA');

INSERT INTO JUGADOR VALUES
('A100', 'FRANCES', 10, 'KYLIAN MBAPPE',  1.8, 1),
('B200', 'BRAZUCA', 8,'VINICIUS JUNIOR',  1.9, 1),
('C300', 'ESPAÑOL', 7,'LAMINE YAMAL',  1.6, 2),
('D400', 'ESPAÑOL', 6,'GAVI', 1.7, 2);
