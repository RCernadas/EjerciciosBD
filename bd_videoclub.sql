DROP DATABASE IF EXISTS videoclub;
CREATE DATABASE videoclub;
USE videoclub;


CREATE TABLE pelicula(
codigo INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(30),
director VARCHAR (25),
precio_alquiler DOUBLE
);
