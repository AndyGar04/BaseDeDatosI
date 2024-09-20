-- Creación de la tabla 'departamento'
DROP DATABASE IF EXISTS universidad;
CREATE DATABASE universidad;
USE universidad;
CREATE TABLE departamento (
    nombre_dept VARCHAR(50) PRIMARY KEY,
    edificio VARCHAR(50),
    presupuesto DECIMAL(10, 2)
);

-- Inserción de datos en la tabla 'departamento'
INSERT INTO departamento (nombre_dept, edificio, presupuesto) VALUES
('Ciencias', 'Edificio A', 100000.00),
('Matemáticas', 'Edificio B', 120000.00),
('Ingeniería', 'Edificio C', 150000.00),
('Humanidades', 'Edificio D', 90000.00);

-- Creación de la tabla 'profesor'
CREATE TABLE profesor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    nombre_dept VARCHAR(50),
    sueldo DECIMAL(10, 2),
    FOREIGN KEY (nombre_dept) REFERENCES departamento(nombre_dept)
);

-- Inserción de datos en la tabla 'profesor'
INSERT INTO profesor (nombre, nombre_dept, sueldo) VALUES
('Juan Pérez', 'Ciencias', 50000.00),
('Ana Gómez', 'Matemáticas', 55000.00),
('Luis García', 'Ingeniería', 60000.00),
('María Rodríguez', 'Humanidades', 45000.00),
('Pedro Martínez', 'Ciencias', 48000.00);

