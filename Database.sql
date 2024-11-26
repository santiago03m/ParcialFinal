CREATE DATABASE ManejoAlmacenDB
GO
USE ManejoAlmacenDB
GO
CREATE TABLE Seccion(
	codigo INT PRIMARY KEY IDENTITY(1,1),
	nombre NVARCHAR(100),
	jefe NVARCHAR(100)
);

CREATE TABLE Articulos(
	codigo INT PRIMARY KEY IDENTITY(1,1),
	nombre NVARCHAR(100),
	precio INT,
	seccion INT FOREIGN KEY REFERENCES Seccion(codigo)
);
GO
CREATE VIEW VistaSeccionesArticulos AS
SELECT 
    s.codigo AS CodigoSeccion,
    s.nombre AS NombreSeccion,
    s.jefe AS JefeSeccion,
    a.codigo AS CodigoArticulo,
    a.nombre AS NombreArticulo,
    a.precio AS PrecioArticulo
FROM 
    Seccion s
LEFT JOIN 
    Articulos a ON s.codigo = a.seccion;
GO
INSERT INTO Seccion (nombre, jefe) VALUES ('Electrónica', 'Juan Pérez');
INSERT INTO Seccion (nombre, jefe) VALUES ('Ropa', 'María López');
INSERT INTO Seccion (nombre, jefe) VALUES ('Alimentos', 'Carlos García');
INSERT INTO Seccion (nombre, jefe) VALUES ('Juguetes', 'Ana Martínez');
GO
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Televisor', 500, 1);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Radio', 30, 1);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Camiseta', 20, 2);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Pantalones', 40, 2);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Pan', 2, 3);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Leche', 1, 3);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Muñeca', 15, 4);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Pelota', 10, 4);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Laptop', 800, 1);
INSERT INTO Articulos (nombre, precio, seccion) VALUES ('Zapatos', 50, 2);
GO