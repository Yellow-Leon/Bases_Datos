DROP DATABASE IF EXISTS TIPOS_DATOS;
CREATE DATABASE TIPOS_DATOS;
USE TIPOS_DATOS;

CREATE TABLE TIPOSDATOS (
   flotante FLOAT(10,2),
   decimales DECIMAL(7,3),
   codigo CHAR (4),
   texto TEXT,
   dia DATE,
   momento DATETIME,
   hora TIME,
   color ENUM('Rojo','Verde','Azul'));
   
INSERT INTO TIPOSDATOS VALUES(2.2 , 4, 'BBRJ', 'Hola', '2024/10/4', '2024/10/4 12:10:00', '12:10:00', 'Azul');
