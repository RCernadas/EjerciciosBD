DROP DATABASE IF EXISTS articulos;
CREATE DATABASE articulos;
USE articulos;

CREATE TABLE Fabricante(
codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100) NOT NULL
);

CREATE TABLE Articulo(
codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100),
precio INT,
fabricante INT,
FOREIGN KEY(fabricante) REFERENCES Fabricante(codigo)
);
