CREATE DATABASE gestion_flotilla;
USE gestion_flotilla;

CREATE TABLE Vehículo (
  idVehiculo INT NOT NULL,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  anio YEAR NOT NULL,
  placa VARCHAR(10) NOT NULL UNIQUE,
  estado VARCHAR(20) NOT NULL,
  PRIMARY KEY (idVehiculo)
);

CREATE TABLE Conductor (
  idConductor INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  licencia VARCHAR(20) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL,
  PRIMARY KEY (idConductor)
);

CREATE TABLE Mantenimiento (
  idMantenimiento INT NOT NULL,
  idVehiculo INT NOT NULL,
  fecha DATE NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  costo DECIMAL(10,2) NOT NULL,
  descripcion TEXT,
  PRIMARY KEY (idMantenimiento),
  FOREIGN KEY (idVehiculo) REFERENCES Vehículo(idVehiculo)
);

CREATE TABLE Ruta (
  idRuta INT NOT NULL,
  idVehiculo INT NOT NULL,
  idConductor INT NOT NULL,
  origen VARCHAR(100) NOT NULL,
  destino VARCHAR(100) NOT NULL,
  fechaSalida DATETIME NOT NULL,
  fechaLlegada DATETIME NOT NULL,
  PRIMARY KEY (idRuta),
  FOREIGN KEY (idVehiculo) REFERENCES Vehículo(idVehiculo),
  FOREIGN KEY (idConductor) REFERENCES Conductor(idConductor)
);

CREATE TABLE Combustible (
  idCombustible INT NOT NULL,
  idVehiculo INT NOT NULL,
  fecha DATE NOT NULL,
  cantidadLitros DECIMAL(5,2) NOT NULL,
  costoTotal DECIMAL(10,2) NOT NULL,
  estacionServicio VARCHAR(100) NOT NULL,
  PRIMARY KEY (idCombustible),
  FOREIGN KEY (idVehiculo) REFERENCES Vehículo(idVehiculo)
);


INSERT INTO Vehículo (idVehiculo, marca, modelo, anio, placa, estado) VALUES
(1, 'Toyota', 'Corolla', 2020, 'ABC123', 'activo'),
(2, 'Nissan', 'Versa', 2019, 'XYZ789', 'mantenimiento'),
(3, 'Honda', 'Civic', 2021, 'DEF456', 'activo'),
(4, 'Ford', 'Focus', 2018, 'GHI789', 'inactivo'),
(5, 'Chevrolet', 'Malibu', 2022, 'JKL012', 'activo'),
(6, 'Hyundai', 'Elantra', 2020, 'MNO345', 'mantenimiento'),
(7, 'Mazda', '3', 2019, 'PQR678', 'activo'),
(8, 'Volkswagen', 'Jetta', 2021, 'STU901', 'activo'),
(9, 'Kia', 'Forte', 2018, 'VWX234', 'inactivo'),
(10, 'Tesla', 'Model 3', 2022, 'YZA567', 'activo'),
(11, 'Subaru', 'Impreza', 2020, 'BCD890', 'mantenimiento'),
(12, 'BMW', 'Serie 3', 2019, 'EFG123', 'activo'),
(13, 'Mercedes', 'Clase C', 2021, 'HIJ456', 'activo'),
(14, 'Audi', 'A4', 2018, 'KLM789', 'inactivo'),
(15, 'Lexus', 'IS 300', 2022, 'NOP012', 'activo'),
(16, 'Jeep', 'Wrangler', 2020, 'QRS345', 'mantenimiento'),
(17, 'Dodge', 'Charger', 2019, 'TUV678', 'activo'),
(18, 'Porsche', '911', 2021, 'WXY901', 'activo'),
(19, 'Ferrari', '488', 2018, 'ZAB234', 'inactivo'),
(20, 'Lamborghini', 'Huracan', 2022, 'CDE567', 'activo');

INSERT INTO Conductor (idConductor, nombre, licencia, telefono) VALUES
(1, 'Juan Pérez', 'ABC12345', '555-1010'),
(2, 'María López', 'XYZ78901', '555-2020'),
(3, 'Carlos Gómez', 'DEF45678', '555-3030'),
(4, 'Ana Torres', 'GHI78912', '555-4040'),
(5, 'José Ramírez', 'JKL01234', '555-5050'),
(6, 'Laura Fernández', 'MNO34567', '555-6060'),
(7, 'David Herrera', 'PQR67890', '555-7070'),
(8, 'Sofía Medina', 'STU90123', '555-8080'),
(9, 'Alejandro Díaz', 'VWX23456', '555-9090'),
(10, 'Lucía Castro', 'YZA56789', '555-1111'),
(11, 'Ricardo Vargas', 'BCD89012', '555-2222'),
(12, 'Elena Ruiz', 'EFG12345', '555-3333'),
(13, 'Javier Morales', 'HIJ45678', '555-4444'),
(14, 'Gabriela Soto', 'KLM78901', '555-5555'),
(15, 'Fernando Ortega', 'NOP01234', '555-6666'),
(16, 'Isabel Navarro', 'QRS34567', '555-7777'),
(17, 'Tomás Ríos', 'TUV67890', '555-8888'),
(18, 'Patricia Serrano', 'WXY90123', '555-9999'),
(19, 'Miguel Peña', 'ZAB23456', '555-1212'),
(20, 'Carla Suárez', 'CDE56789', '555-1313');

INSERT INTO Mantenimiento (idMantenimiento, idVehiculo, fecha, tipo, costo, descripcion) VALUES
(1, 1, '2025-01-10', 'Cambio de aceite', 50.00, 'Cambio de aceite y filtro'),
(2, 2, '2025-01-15', 'Frenos', 200.00, 'Revisión y cambio de frenos'),
(3, 3, '2025-02-05', 'Alineación', 80.00, 'Alineación y balanceo'),
(4, 4, '2025-02-12', 'Batería', 150.00, 'Reemplazo de batería'),
(5, 5, '2025-02-20', 'Suspensión', 300.00, 'Revisión de suspensión delantera'),
(6, 6, '2025-03-01', 'Neumáticos', 400.00, 'Cambio de 4 neumáticos'),
(7, 7, '2025-03-10', 'Aceite de transmisión', 120.00, 'Cambio de aceite de transmisión'),
(8, 8, '2025-03-15', 'Sistema eléctrico', 180.00, 'Revisión del sistema eléctrico'),
(9, 9, '2025-04-01', 'Aire acondicionado', 200.00, 'Carga de gas y revisión'),
(10, 10, '2025-04-10', 'Filtros', 70.00, 'Cambio de filtros de aire y cabina'),
(11, 11, '2025-04-20', 'Frenos', 220.00, 'Revisión y cambio de frenos traseros'),
(12, 12, '2025-05-01', 'Motor', 500.00, 'Afinación completa'),
(13, 13, '2025-05-15', 'Luces', 60.00, 'Cambio de faros delanteros'),
(14, 14, '2025-05-25', 'Radiador', 250.00, 'Limpieza y cambio de refrigerante'),
(15, 15, '2025-06-01', 'Transmisión', 600.00, 'Revisión y reparación de transmisión'),
(16, 16, '2025-06-10', 'Parabrisas', 90.00, 'Cambio de parabrisas delantero'),
(17, 17, '2025-06-20', 'Bujías', 110.00, 'Cambio de bujías y cables'),
(18, 18, '2025-07-01', 'Dirección', 280.00, 'Revisión y ajuste de dirección'),
(19, 19, '2025-07-10', 'Escape', 320.00, 'Revisión y cambio del sistema de escape'),
(20, 20, '2025-07-20', 'Alternador', 350.00, 'Reemplazo de alternador');

INSERT INTO Ruta (idRuta, idVehiculo, idConductor, origen, destino, fechaSalida, fechaLlegada) VALUES
(1, 1, 1, 'Ciudad A', 'Ciudad B', '2025-02-01 08:00:00', '2025-02-01 09:30:00'),
(2, 2, 2, 'Ciudad B', 'Ciudad C', '2025-02-02 09:00:00', '2025-02-02 10:50:00'),
(3, 3, 3, 'Ciudad C', 'Ciudad D', '2025-02-03 10:00:00', '2025-02-03 11:00:00'),
(4, 4, 4, 'Ciudad D', 'Ciudad E', '2025-02-04 07:30:00', '2025-02-04 10:00:00'),
(5, 5, 5, 'Ciudad E', 'Ciudad F', '2025-02-05 11:00:00', '2025-02-05 13:10:00'),
(6, 6, 6, 'Ciudad F', 'Ciudad G', '2025-02-06 12:30:00', '2025-02-06 14:10:00'),
(7, 7, 7, 'Ciudad G', 'Ciudad H', '2025-02-07 14:00:00', '2025-02-07 17:00:00'),
(8, 8, 8, 'Ciudad H', 'Ciudad I', '2025-02-08 15:00:00', '2025-02-08 16:10:00'),
(9, 9, 9, 'Ciudad I', 'Ciudad J', '2025-02-09 06:00:00', '2025-02-09 09:30:00'),
(10, 10, 10, 'Ciudad J', 'Ciudad K', '2025-02-10 13:00:00', '2025-02-10 14:40:00'),
(11, 11, 11, 'Ciudad K', 'Ciudad L', '2025-02-11 16:00:00', '2025-02-11 18:20:00'),
(12, 12, 12, 'Ciudad L', 'Ciudad M', '2025-02-12 07:00:00', '2025-02-12 09:40:00'),
(13, 13, 13, 'Ciudad M', 'Ciudad N', '2025-02-13 08:30:00', '2025-02-13 11:40:00'),
(14, 14, 14, 'Ciudad N', 'Ciudad O', '2025-02-14 12:00:00', '2025-02-14 14:00:00'),
(15, 15, 15, 'Ciudad O', 'Ciudad P', '2025-02-15 17:00:00', '2025-02-15 18:20:00'),
(16, 16, 16, 'Ciudad P', 'Ciudad Q', '2025-02-16 10:00:00', '2025-02-16 11:05:00'),
(17, 17, 17, 'Ciudad Q', 'Ciudad R', '2025-02-17 05:30:00', '2025-02-17 08:05:00'),
(18, 18, 18, 'Ciudad R', 'Ciudad S', '2025-02-18 06:00:00', '2025-02-18 11:00:00'),
(19, 19, 19, 'Ciudad S', 'Ciudad T', '2025-02-19 08:30:00', '2025-02-19 12:50:00'),
(20, 20, 20, 'Ciudad T', 'Ciudad U', '2025-02-20 09:00:00', '2025-02-20 11:20:00');



INSERT INTO Combustible (idCombustible, idVehiculo, fecha, cantidadLitros, costoTotal, estacionServicio) VALUES
(1, 1, '2025-02-01', 50.00, 90.00, 'Gasolinera Shell'),
(2, 2, '2025-02-02', 40.00, 75.00, 'Gasolinera Pemex'),
(3, 3, '2025-02-03', 55.00, 100.00, 'Gasolinera BP'),
(4, 4, '2025-02-04', 60.00, 110.00, 'Gasolinera ExxonMobil'),
(5, 5, '2025-02-05', 45.00, 85.00, 'Gasolinera Total'),
(6, 6, '2025-02-06', 38.00, 72.00, 'Gasolinera Gulf'),
(7, 7, '2025-02-07', 52.00, 95.00, 'Gasolinera Chevron'),
(8, 8, '2025-02-08', 47.00, 89.00, 'Gasolinera Repsol'),
(9, 9, '2025-02-09', 62.00, 120.00, 'Gasolinera Texaco'),
(10, 10, '2025-02-10', 50.00, 92.00, 'Gasolinera Mobil'),
(11, 11, '2025-02-11', 41.00, 78.00, 'Gasolinera PDV'),
(12, 12, '2025-02-12', 53.00, 98.00, 'Gasolinera Gulf'),
(13, 13, '2025-02-13', 49.00, 91.00, 'Gasolinera Shell'),
(14, 14, '2025-02-14', 44.00, 82.00, 'Gasolinera Pemex'),
(15, 15, '2025-02-15', 58.00, 2400.00, 'Gasolinera BP'),  
(16, 16, '2025-02-16', 37.00, 69.00, 'Gasolinera ExxonMobil'),
(17, 17, '2025-02-17', 55.00, 2400.00, 'Gasolinera Total'), 
(18, 18, '2025-02-18', 63.00, 2400.00, 'Gasolinera Texaco'),
(19, 19, '2025-02-19', 46.00, 2400.00, 'Gasolinera Repsol'),
(20, 20, '2025-02-20', 59.00, 2400.00, 'Gasolinera Mobil');

SELECT *
FROM Vehículo
WHERE idVehiculo IN (
    SELECT idVehiculo
    FROM Mantenimiento
    WHERE fecha >= '2025-01-01' AND fecha <= '2025-01-31'
);

SELECT *
FROM Vehículo
WHERE idVehiculo IN (
    SELECT idVehiculo
    FROM Mantenimiento
    WHERE fecha >= '2025-03-01' AND fecha <= '2025-03-31'
);

SELECT nombre
FROM Conductor
WHERE idConductor IN (
  SELECT idConductor
  FROM Ruta
  WHERE fechaSalida BETWEEN '2025-02-14 00:00:00' AND '2025-02-14 23:59:59'
);

SELECT idVehiculo, costoTotal
FROM Combustible
WHERE fecha BETWEEN '2025-01-01' AND '2025-02-28'
AND costoTotal > 2300;

SELECT idMantenimiento, idVehiculo, fecha, tipo, costo, descripcion
FROM Mantenimiento
WHERE fecha BETWEEN '2025-01-01' AND '2025-01-31';

SELECT * 
FROM Vehículo 
WHERE estado = 'activo';

SELECT nombre 
FROM Conductor 
WHERE idConductor IN (
    SELECT idConductor 
    FROM Ruta 
    WHERE fechaSalida BETWEEN '2025-02-01' AND '2025-02-10'
);

SELECT * 
FROM Ruta 
WHERE idVehiculo = 3;

SELECT idCombustible, cantidadLitros
FROM Combustible
WHERE idVehiculo = 5;

SELECT idMantenimiento, idVehiculo, fecha, tipo, costo
FROM Mantenimiento
WHERE fecha BETWEEN '2025-02-01' AND '2025-02-28'
AND costo > 200;

DELIMITER //
CREATE PROCEDURE RegistrarMantenimiento(
    IN p_idMantenimiento INT,
    IN p_idVehiculo INT,
    IN p_fecha DATE,
    IN p_tipo VARCHAR(50),
    IN p_costo DECIMAL(10,2),
    IN p_descripcion TEXT
)
BEGIN
    INSERT INTO Mantenimiento (idMantenimiento, idVehiculo, fecha, tipo, costo, descripcion) 
    VALUES (p_idMantenimiento, p_idVehiculo, p_fecha, p_tipo, p_costo, p_descripcion);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE ActualizarEstadoVehiculo(
    IN p_idVehiculo INT,
    IN p_nuevoEstado VARCHAR(20)
)
BEGIN
    UPDATE Vehículo
    SET estado = p_nuevoEstado
    WHERE idVehiculo = p_idVehiculo;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION CalcularGastoMantenimiento(p_idVehiculo INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(costo) INTO total
    FROM Mantenimiento
    WHERE idVehiculo = p_idVehiculo;
    RETURN IFNULL(total, 0);
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION ObtenerEstadoVehiculo(p_idVehiculo INT) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE v_estado VARCHAR(20);
    SELECT estado INTO v_estado
    FROM Vehículo
    WHERE idVehiculo = p_idVehiculo;
    RETURN v_estado;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE ActualizarEstadosMantenimiento()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_idVehiculo INT;
    DECLARE cur CURSOR FOR 
        SELECT idVehiculo FROM Mantenimiento WHERE fecha >= CURDATE() - INTERVAL 30 DAY;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_idVehiculo;
        IF done THEN
            LEAVE read_loop;
        END IF;

        UPDATE Vehículo
        SET estado = 'mantenimiento'
        WHERE idVehiculo = v_idVehiculo;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE ListarVehiculosMantenimiento()
BEGIN
    DECLARE v_idVehiculo INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT idVehiculo FROM Vehículo WHERE estado = 'mantenimiento';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_idVehiculo;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT * FROM Vehículo WHERE idVehiculo = v_idVehiculo;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER BeforeDeleteVehiculo
BEFORE DELETE ON Vehículo
FOR EACH ROW
BEGIN
    DECLARE count_mantenimiento INT;
    
    SELECT COUNT(*) INTO count_mantenimiento
    FROM Mantenimiento
    WHERE idVehiculo = OLD.idVehiculo;

    IF count_mantenimiento > 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No se puede eliminar el vehículo, tiene registros de mantenimiento';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER before_delete_vehiculo
BEFORE DELETE ON Vehículo
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Ruta WHERE idVehiculo = OLD.idVehiculo) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede eliminar el vehículo porque tiene rutas asignadas';
    END IF;
END //
DELIMITER ;

CALL RegistrarMantenimiento(21, 5, '2025-08-01', 'Cambio de frenos', 250.00, 'Cambio de frenos delanteros y traseros');
CALL ActualizarEstadoVehiculo(3, 'mantenimiento');
SELECT * FROM Mantenimiento WHERE idVehiculo = 5;
SELECT * FROM Vehículo WHERE idVehiculo = 3;

SELECT CalcularGastoMantenimiento(5);
SELECT ObtenerEstadoVehiculo(2);

CALL ActualizarEstadosMantenimiento();
SELECT idVehiculo, estado FROM Vehículo WHERE estado = 'mantenimiento';
CALL ListarVehiculosMantenimiento();
SELECT * FROM Vehículo WHERE estado = 'mantenimiento';

DELETE FROM Vehículo WHERE idVehiculo = 1;
DELETE FROM Vehículo WHERE idVehiculo = 3;