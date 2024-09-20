use biblioteca;
CREATE TABLE `Usuarios` (
  `id_usuario` INT PRIMARY KEY AUTO_INCREMENT, 
  `nombre` VARCHAR(100),
  `email` VARCHAR(100),
  `fecha_registro` DATE
);

CREATE TABLE `Libros` (
  `id_libro` INT PRIMARY KEY AUTO_INCREMENT,
  `titulo` VARCHAR(100),
  `autor` VARCHAR(100),
  `año_publicacion` INT
);

CREATE TABLE `Prestamos` (
  `id_prestamo` INT PRIMARY KEY AUTO_INCREMENT,
  `id_usuario` INT,
  `id_libro` INT,
  `fecha_prestamo` DATE,
  `fecha_devolucion` DATE
);

CREATE TABLE `Pagos` (
  `id_pago` INT PRIMARY KEY AUTO_INCREMENT,
  `id_usuario` INT,
  `monto` DECIMAL,
  `fecha_pago` DATE
);

ALTER TABLE `Prestamos` ADD FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`);

ALTER TABLE `Prestamos` ADD FOREIGN KEY (`id_libro`) REFERENCES `Libros` (`id_libro`);

ALTER TABLE `Pagos` ADD FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`);

