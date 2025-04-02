-- Nodo LCS1-Principal
CREATE DATABASE LCS1_Principal;
USE LCS1_Principal;

CREATE TABLE Flotilla (
	flotillaId INT AUTO_INCREMENT UNIQUE,
	nombreEmpresa VARCHAR (100) NOT NULL,
	gestorFlotilla VARCHAR (100) NOT NULL,
	fechaCreacion DATE NOT NULL,
	PRIMARY KEY (flotillaId)
);

CREATE TABLE Vehiculo (
	vehiculoId INT AUTO_INCREMENT UNIQUE,
	flotillaId INT NOT NULL,
	tipo VARCHAR (50) NOT NULL,
	modelo VARCHAR (50) NOT NULL,
	marca VARCHAR (50) NOT NULL,
	anio INT NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Activo',
	fechaVerificacion DATE,
	PRIMARY KEY (vehiculoId),
	FOREIGN KEY (flotillaId) REFERENCES Flotilla (flotillaId)
);

CREATE TABLE Documento (
	documentoId INT AUTO_INCREMENT UNIQUE,
	vehiculoId INT NOT NULL,
	tipo VARCHAR (50) NOT NULL,
	fechaVencimiento DATE NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Vigente',
	rutaArchivo VARCHAR (255) NOT NULL,
	PRIMARY KEY (documentoId),
	FOREIGN KEY (vehiculoId) REFERENCES Vehiculo (vehiculoId)
);

-- Nodo LCS2-Mantenimiento
CREATE DATABASE LCS2_Mantenimiento;
USE LCS2_Mantenimiento;

CREATE TABLE Flotilla (
	flotillaId INT AUTO_INCREMENT UNIQUE,
	nombreEmpresa VARCHAR (100) NOT NULL,
	gestorFlotilla VARCHAR (100) NOT NULL,
	fechaCreacion DATE NOT NULL,
	PRIMARY KEY (flotillaId)
);

CREATE TABLE Vehiculo (
	vehiculoId INT AUTO_INCREMENT UNIQUE,
	flotillaId INT NOT NULL,
	tipo VARCHAR (50) NOT NULL,
	modelo VARCHAR (50) NOT NULL,
	marca VARCHAR (50) NOT NULL,
	anio INT NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Activo',
	fechaVerificacion DATE,
	PRIMARY KEY (vehiculoId),
	FOREIGN KEY (flotillaId) REFERENCES Flotilla (flotillaId)
);

CREATE TABLE Mantenimiento (
	mantenimientoId INT AUTO_INCREMENT UNIQUE,
	vehiculoId INT NOT NULL,
	fechaServicio DATE NOT NULL,
	tipoServicio VARCHAR (100) NOT NULL,
	descripcion VARCHAR (200) NOT NULL,
	costo DECIMAL (10 ,2) NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Completado',
	PRIMARY KEY (mantenimientoId),
	FOREIGN KEY (vehiculoId) REFERENCES Vehiculo (vehiculoId)
);

-- Nodo LCS3-Rutas
CREATE DATABASE LCS3_Rutas;
USE LCS3_Rutas;

CREATE TABLE Flotilla (
	flotillaId INT AUTO_INCREMENT UNIQUE,
	nombreEmpresa VARCHAR (100) NOT NULL,
	gestorFlotilla VARCHAR (100) NOT NULL,
	fechaCreacion DATE NOT NULL,
	PRIMARY KEY (flotillaId)
);

CREATE TABLE Conductor (
	conductorId INT AUTO_INCREMENT UNIQUE,
	nombre VARCHAR (100) NOT NULL,
	numeroLicencia VARCHAR (50) NOT NULL,
	vencimientoLicencia DATE NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Activo',
	PRIMARY KEY (conductorId)
);

CREATE TABLE Vehiculo (
	vehiculoId INT AUTO_INCREMENT UNIQUE,
	flotillaId INT NOT NULL,
	tipo VARCHAR (50) NOT NULL,
	modelo VARCHAR (50) NOT NULL,
	marca VARCHAR (50) NOT NULL,
	anio INT NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Activo',
	fechaVerificacion DATE,
	PRIMARY KEY (vehiculoId),
	FOREIGN KEY (flotillaId) REFERENCES Flotilla (flotillaId)
);

CREATE TABLE Ruta (
	rutaId INT AUTO_INCREMENT UNIQUE, 
	vehiculoId INT NOT NULL,
	conductorId INT NOT NULL,
	horaInicio DATETIME NOT NULL,
	horaFin DATETIME NOT NULL,
	distancia DECIMAL (10,2) NOT NULL,
	ubicacionInicio VARCHAR (100) NOT NULL,
	ubicacionFin VARCHAR (100) NOT NULL,
	estado VARCHAR (20) NOT NULL DEFAULT 'Pendiente',
	PRIMARY KEY (rutaId),
	FOREIGN KEY (vehiculoId) REFERENCES Vehiculo (vehiculoId),
	FOREIGN KEY (conductorId) REFERENCES Conductor (conductorId)
);

CREATE TABLE TransaccionCombustible (
	transaccionId INT AUTO_INCREMENT UNIQUE,
	vehiculoId INT NOT NULL,
	conductorId INT NOT NULL,
	monto DECIMAL (10 ,2) NOT NULL,
	cantidad DECIMAL (10 ,2) NOT NULL,
	tipoCombustible VARCHAR (20) NOT NULL,
	fechaTransaccion DATETIME NOT NULL,
	ubicacion VARCHAR (100) NOT NULL,
	PRIMARY KEY (transaccionId),
	FOREIGN KEY (vehiculoId) REFERENCES Vehiculo (vehiculoId),
	FOREIGN KEY (conductorId) REFERENCES Conductor (conductorId)
);

USE sistemagestionflotillas;

-- Exportar datos a CSV
SELECT * INTO OUTFILE '/tmp/Conductor.csv' FROM sistemagestionflotillas.conductor;
SELECT * INTO OUTFILE '/tmp/Documento.csv' FROM sistemagestionflotillas.documento;
SELECT * INTO OUTFILE '/tmp/Flotilla.csv' FROM sistemagestionflotillas.flotilla;
SELECT * INTO OUTFILE '/tmp/Mantenimiento.csv' FROM sistemagestionflotillas.mantenimiento;
SELECT * INTO OUTFILE '/tmp/Ruta.csv' FROM sistemagestionflotillas.ruta;
SELECT * INTO OUTFILE '/tmp/TransaccionCombustible.csv' FROM sistemagestionflotillas.transaccioncombustible;
SELECT * INTO OUTFILE '/tmp/Vehiculo.csv' FROM sistemagestionflotillas.vehiculo;

USE LCS1_Principal;
USE LCS2_Mantenimiento;
USE LCS3_Rutas;

-- Importar datos desde CSV
LOAD DATA INFILE '/tmp/Flotilla.csv' INTO TABLE LCS1_Principal.Flotilla;
LOAD DATA INFILE '/tmp/Vehiculo.csv' INTO TABLE LCS1_Principal.Vehiculo;
LOAD DATA INFILE '/tmp/Documento.csv' INTO TABLE LCS1_Principal.Documento;
LOAD DATA INFILE '/tmp/Flotilla.csv' INTO TABLE LCS2_Mantenimiento.Flotilla;
LOAD DATA INFILE '/tmp/Vehiculo.csv' INTO TABLE LCS2_Mantenimiento.Vehiculo;
LOAD DATA INFILE '/tmp/Mantenimiento.csv' INTO TABLE LCS2_Mantenimiento.Mantenimiento;
LOAD DATA INFILE '/tmp/Flotilla.csv' INTO TABLE LCS3_Rutas.Flotilla;
LOAD DATA INFILE '/tmp/Conductor.csv' INTO TABLE LCS3_Rutas.Conductor;
LOAD DATA INFILE '/tmp/Vehiculo.csv' INTO TABLE LCS3_Rutas.Vehiculo;
LOAD DATA INFILE '/tmp/Ruta.csv' INTO TABLE LCS3_Rutas.Ruta;
LOAD DATA INFILE '/tmp/TransaccionCombustible.csv' INTO TABLE LCS3_Rutas.TransaccionCombustible;

-- Consultar rutas asignadas a vehículos (LCS1_Principal y LCS3_Rutas)
SELECT 
    v.vehiculoId, 
    v.tipo, 
    v.modelo, 
    v.marca, 
    r.rutaId, 
    r.horaInicio, 
    r.horaFin, 
    r.distancia, 
    r.ubicacionInicio, 
    r.ubicacionFin
FROM LCS1_Principal.Vehiculo v
JOIN LCS3_Rutas.Ruta r ON v.vehiculoId = r.vehiculoId;

-- Nodo LCS1-Principal
USE LCS1_Principal;

-- Trigger para verificar documentos vencidos
DELIMITER $$
CREATE TRIGGER actualizar_estado_documento
BEFORE UPDATE ON Documento
FOR EACH ROW
BEGIN
    IF NEW.fechaVencimiento < CURDATE() THEN
        SET NEW.estado = 'Vencido';
    END IF;
END $$
DELIMITER ;

-- Nodo LCS2-Mantenimiento
USE LCS2_Mantenimiento;

-- Trigger para verificar el costo del mantenimiento
DELIMITER $$
CREATE TRIGGER validar_costo_mantenimiento
BEFORE INSERT ON Mantenimiento
FOR EACH ROW
BEGIN
    IF NEW.costo <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El costo debe ser mayor que 0';
    END IF;
END $$
DELIMITER ;

-- Nodo LCS3-Rutas
USE LCS3_Rutas;

-- Trigger para evitar rutas con hora de fin menor que la de inicio
DELIMITER $$
CREATE TRIGGER validar_horas_ruta
BEFORE INSERT ON Ruta
FOR EACH ROW
BEGIN
    IF NEW.horaFin <= NEW.horaInicio THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La hora de fin debe ser posterior a la hora de inicio';
    END IF;
END $$
DELIMITER ;

-- Trigger para verificar licencias vencidas de conductores
DELIMITER $$
CREATE TRIGGER actualizar_estado_conductor
BEFORE UPDATE ON Conductor
FOR EACH ROW
BEGIN
    IF NEW.vencimientoLicencia < CURDATE() THEN
        SET NEW.estado = 'Inactivo';
    END IF;
END $$
DELIMITER ;

-- Nodo LCS1-Principal
USE LCS1_Principal;

-- Procedimiento para agregar un nuevo documento
DELIMITER $$
CREATE PROCEDURE AgregarDocumento(
    IN p_vehiculoId INT,
    IN p_tipo VARCHAR(50),
    IN p_fechaVencimiento DATE,
    IN p_rutaArchivo VARCHAR(255)
)
BEGIN
    INSERT INTO Documento (vehiculoId, tipo, fechaVencimiento, rutaArchivo)
    VALUES (p_vehiculoId, p_tipo, p_fechaVencimiento, p_rutaArchivo);
END $$
DELIMITER ;

-- Nodo LCS2-Mantenimiento
USE LCS2_Mantenimiento;

-- Procedimiento para registrar mantenimiento
DELIMITER $$
CREATE PROCEDURE RegistrarMantenimiento(
    IN p_vehiculoId INT,
    IN p_fechaServicio DATE,
    IN p_tipoServicio VARCHAR(100),
    IN p_descripcion VARCHAR(200),
    IN p_costo DECIMAL(10,2)
)
BEGIN
    INSERT INTO Mantenimiento (vehiculoId, fechaServicio, tipoServicio, descripcion, costo)
    VALUES (p_vehiculoId, p_fechaServicio, p_tipoServicio, p_descripcion, p_costo);
END $$
DELIMITER ;

-- Nodo LCS3-Rutas
USE LCS3_Rutas;

-- Procedimiento para asignar una ruta
DELIMITER $$
CREATE PROCEDURE AsignarRuta(
    IN p_vehiculoId INT,
    IN p_conductorId INT,
    IN p_horaInicio DATETIME,
    IN p_horaFin DATETIME,
    IN p_distancia DECIMAL(10,2),
    IN p_ubicacionInicio VARCHAR(100),
    IN p_ubicacionFin VARCHAR(100)
)
BEGIN
    INSERT INTO Ruta (vehiculoId, conductorId, horaInicio, horaFin, distancia, ubicacionInicio, ubicacionFin)
    VALUES (p_vehiculoId, p_conductorId, p_horaInicio, p_horaFin, p_distancia, p_ubicacionInicio, p_ubicacionFin);
END $$
DELIMITER ;

-- Procedimiento para registrar una transacción de combustible
DELIMITER $$
CREATE PROCEDURE RegistrarTransaccionCombustible(
    IN p_vehiculoId INT,
    IN p_conductorId INT,
    IN p_monto DECIMAL(10,2),
    IN p_cantidad DECIMAL(10,2),
    IN p_tipoCombustible VARCHAR(20),
    IN p_fechaTransaccion DATETIME,
    IN p_ubicacion VARCHAR(100)
)
BEGIN
    INSERT INTO TransaccionCombustible (vehiculoId, conductorId, monto, cantidad, tipoCombustible, fechaTransaccion, ubicacion)
    VALUES (p_vehiculoId, p_conductorId, p_monto, p_cantidad, p_tipoCombustible, p_fechaTransaccion, p_ubicacion);
END $$
DELIMITER ;
