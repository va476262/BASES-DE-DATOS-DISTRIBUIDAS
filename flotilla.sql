USE sistemagestionflotillas;

-- Fragmentación Horizontal
-- 1. Conductores Activos
CREATE VIEW Conductores_Activos AS
SELECT * FROM Conductor WHERE estado = 'Activo';

SELECT * FROM Conductores_Activos;

-- 2. Conductores Inactivos
CREATE VIEW Conductores_Inactivos AS
SELECT * FROM Conductor WHERE estado = 'Inactivo';

SELECT * FROM Conductores_Inactivos;

-- 3. Conductores con licencia que vence en 2025
CREATE VIEW Conductores_Vence_2025 AS
SELECT * FROM Conductor WHERE YEAR(vencimientoLicencia) = 2025;

SELECT * FROM Conductores_Vence_2025;

-- 4. Conductores con licencia que vence en 2026
CREATE VIEW Conductores_Vence_2026 AS
SELECT * FROM Conductor WHERE YEAR(vencimientoLicencia) = 2026;

SELECT * FROM Conductores_Vence_2026;

-- 5. Conductores con nombre que comienza con 'P'
CREATE VIEW Conductores_Nombre_P AS
SELECT * FROM Conductor WHERE nombre LIKE 'P%';

SELECT * FROM Conductores_Nombre_P;

-- Fragmentación Vertical
-- 1. Vista con conductorId y nombre
CREATE VIEW Conductor_Nombre AS
SELECT conductorId, nombre FROM Conductor;

SELECT * FROM Conductor_Nombre;

-- 2. Vista con conductorId y numeroLicencia
CREATE VIEW Conductor_Licencia AS
SELECT conductorId, numeroLicencia FROM Conductor;

SELECT * FROM Conductor_Licencia;

-- 3. Vista con conductorId y vencimientoLicencia
CREATE VIEW Conductor_Vencimiento AS
SELECT conductorId, vencimientoLicencia FROM Conductor;

SELECT * FROM Conductor_Vencimiento;

-- 4. Vista con conductorId y estado
CREATE VIEW Conductor_Estado AS
SELECT conductorId, estado FROM Conductor;

SELECT * FROM Conductor_Estado;

-- 5. Vista con nombre y estado
CREATE VIEW Conductor_Nombre_Estado AS
SELECT nombre, estado FROM Conductor;

SELECT * FROM Conductor_Nombre_Estado;
