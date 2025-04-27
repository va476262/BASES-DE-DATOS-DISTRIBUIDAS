CREATE DATABASE INVESTIGADOR;
USE INVESTIGADOR;

CREATE TABLE Investigador (
	ID_Investigador INT AUTO_INCREMENT,
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (120),
    ORCID VARCHAR (30),
    Email VARCHAR (150),
    Movil VARCHAR (15),
    PRIMARY KEY (ID_Investigador)
);

CREATE TABLE Produccion (
	ID_Produccion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Tipo VARCHAR (20),
    Título VARCHAR (230),
    Anio INT,
    PRIMARY KEY (ID_Produccion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Formacion (
	ID_Formacion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Grado VARCHAR (18),
    Institucion VARCHAR (70),
    Nombre VARCHAR (120),
    Fecha_Termino DATE,
    PRIMARY KEY (ID_Formacion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Adscripcion (
	ID_Adscripcion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Instituto VARCHAR (80),
    Area VARCHAR (150),
    Nombramiento VARCHAR(50),
    Fecha_ingreso DATE,
    PRIMARY KEY (ID_Adscripcion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Proyecto (
	ID_Proyecto INT AUTO_INCREMENT,
    ID_Investigador INT,
    Nombre VARCHAR (250),
    Inicio DATE,
    Final DATE,
    PRIMARY KEY (ID_Proyecto),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

INSERT INTO Investigador (Paterno, Materno, Nombre, ORCID, Email, Movil) VALUES
('García', 'Sánchez', 'Carlos', '0000-0001-0001-0001', 'cgarcia@uaeh.edu.mx', '5217711000001'),
('Martínez', 'Gómez', 'Maria', '0000-0001-0001-0002', 'mmartinez@uaeh.edu.mx', '5217221000002'),
('Hernández', 'Díaz', 'Juan', '0000-0001-0001-0003', 'jhernandez@uaeh.edu.mx', '521551000003'),
('López', 'Ramírez', 'Luis', '0000-0001-0001-0004', 'llopez@uaeh.edu.mx', '521331000004'),
('González', 'Torres', 'Ana', '0000-0001-0001-0005', 'agonzalez@uaeh.edu.mx', '521811000005'),
('Pérez', 'Flores', 'Jose', '0000-0001-0001-0006', 'jperez@uaeh.edu.mx', '5214771000006'),
('Sánchez', 'Castro', 'Guadalupe', '0000-0001-0001-0007', 'gsanchez@uaeh.edu.mx', '5216641000007'),
('Ramírez', 'Romero', 'JoseLuis', '0000-0001-0001-0008', 'jramirez@uaeh.edu.mx', '5216561000008'),
('Torres', 'Mendoza', 'LuisMiguel', '0000-0001-0001-0009', 'ltorres@uaeh.edu.mx', '5216141000009'),
('Flores', 'Silva', 'Marisol', '0000-0001-0001-0010', 'mflores@uaeh.edu.mx', '5212221000010'),
('Rivera', 'Ramos', 'Francisco', '0000-0001-0001-0011', 'frivera@uaeh.edu.mx', '5217711000011'),
('Gómez', 'Morales', 'Alejandra', '0000-0001-0001-0012', 'agomez@uaeh.edu.mx', '5217221000012'),
('Díaz', 'Ortiz', 'Pedro', '0000-0001-0001-0013', 'pdiaz@uaeh.edu.mx', '521551000013'),
('Reyes', 'Jiménez', 'Sofia', '0000-0001-0001-0014', 'sreyes@uaeh.edu.mx', '521331000014'),
('Morales', 'Reyes', 'Miguel', '0000-0001-0001-0015', 'mmorales@uaeh.edu.mx', '521811000015'),
('Ortiz', 'Cruz', 'Rosa', '0000-0001-0001-0016', 'rortiz@uaeh.edu.mx', '5214771000016'),
('Gutiérrez', 'Vargas', 'Jorge', '0000-0001-0001-0017', 'jgutierrez@uaeh.edu.mx', '5216641000017'),
('Jiménez', 'Medina', 'Fernanda', '0000-0001-0001-0018', 'fjimenez@uaeh.edu.mx', '5216561000018'),
('Ramos', 'Navarro', 'Ricardo', '0000-0001-0001-0019', 'rramos@uaeh.edu.mx', '5216141000019'),
('Vázquez', 'Salazar', 'Valeria', '0000-0001-0001-0020', 'vvazquez@uaeh.edu.mx', '5212221000020'),
('Castro', 'Vega', 'Raul', '0000-0001-0001-0021', 'rcastro@uaeh.edu.mx', '5217711000021'),
('Ruiz', 'Mora', 'Ximena', '0000-0001-0001-0022', 'xruiz@uaeh.edu.mx', '5217221000022'),
('Mendoza', 'Carrillo', 'Hector', '0000-0001-0001-0023', 'hmendoza@uaeh.edu.mx', '521551000023'),
('Guerrero', 'Acosta', 'Patricia', '0000-0001-0001-0024', 'pguerrero@uaeh.edu.mx', '521331000024'),
('Silva', 'Montes', 'Enrique', '0000-0001-0001-0025', 'esilva@uaeh.edu.mx', '521811000025'),
('Romero', 'Espinoza', 'Claudia', '0000-0001-0001-0026', 'cromero@uaeh.edu.mx', '5214771000026'),
('Suárez', 'Cárdenas', 'Vicente', '0000-0001-0001-0027', 'vsuarez@uaeh.edu.mx', '5216641000027'),
('Navarro', 'Guerrero', 'Lucia', '0000-0001-0001-0028', 'lnavarro@uaeh.edu.mx', '5216561000028'),
('Moreno', 'Valdez', 'Roberto', '0000-0001-0001-0029', 'rmoreno@uaeh.edu.mx', '5216141000029'),
('Cruz', 'Robles', 'Carla', '0000-0001-0001-0030', 'ccruz@uaeh.edu.mx', '5212221000030'),
('Vargas', 'Paredes', 'Antonio', '0000-0001-0001-0031', 'avargas@uaeh.edu.mx', '5217711000031'),
('Medina', 'Sandoval', 'Daniela', '0000-0001-0001-0032', 'dmedina@uaeh.edu.mx', '5217221000032'),
('León', 'León', 'Eduardo', '0000-0001-0001-0033', 'eleon@uaeh.edu.mx', '521551000033'),
('Ortega', 'Rojas', 'Laura', '0000-0001-0001-0034', 'lortega@uaeh.edu.mx', '521331000034'),
('Cortés', 'Márquez', 'Jesus', '0000-0001-0001-0035', 'jcortes@uaeh.edu.mx', '521811000035'),
('Domínguez', 'Suárez', 'Alejandro', '0000-0001-0001-0036', 'adominguez@uaeh.edu.mx', '5214771000036'),
('Rojas', 'Aguirre', 'Camila', '0000-0001-0001-0037', 'crojas@uaeh.edu.mx', '5216641000037'),
('Molina', 'Herrera', 'Manuel', '0000-0001-0001-0038', 'mmolina@uaeh.edu.mx', '5216561000038'),
('Marín', 'Castillo', 'Gabriela', '0000-0001-0001-0039', 'gmarin@uaeh.edu.mx', '5216141000039'),
('Soto', 'Ríos', 'Diego', '0000-0001-0001-0040', 'dsoto@uaeh.edu.mx', '5212221000040'),
('Castillo', 'Soto', 'Monica', '0000-0001-0001-0041', 'mcastillo@uaeh.edu.mx', '5217711000041'),
('Ríos', 'Ruiz', 'Raquel', '0000-0001-0001-0042', 'rrios@uaeh.edu.mx', '5217221000042'),
('Ibarra', 'Mena', 'Sergio', '0000-0001-0001-0043', 'sibarra@uaeh.edu.mx', '521551000043'),
('Vera', 'Cabrera', 'Diana', '0000-0001-0001-0044', 'dvera@uaeh.edu.mx', '521331000044'),
('Pacheco', 'Bonilla', 'Marco', '0000-0001-0001-0045', 'mpacheco@uaeh.edu.mx', '521811000045'),
('Camacho', 'Bravo', 'Paola', '0000-0001-0001-0046', 'pcamacho@uaeh.edu.mx', '5214771000046'),
('Figueroa', 'Alvarez', 'Oscar', '0000-0001-0001-0047', 'ofigueroa@uaeh.edu.mx', '5216641000047'),
('Herrera', 'Amaya', 'Veronica', '0000-0001-0001-0048', 'vherrera@uaeh.edu.mx', '5216561000048'),
('Salazar', 'Arteaga', 'Ivan', '0000-0001-0001-0049', 'isalazar@uaeh.edu.mx', '5216141000049'),
('Vega', 'Balderas', 'Mariana', '0000-0001-0001-0050', 'mvega@uaeh.edu.mx', '5212221000050'),
('García', 'Sánchez', 'Hugo', '0000-0001-0001-0051', 'hgarcia@uaeh.edu.mx', '5217711000051'),
('Martínez', 'Gómez', 'Dolores', '0000-0001-0001-0052', 'dmartinez@uaeh.edu.mx', '5217221000052'),
('Hernández', 'Díaz', 'Cesar', '0000-0001-0001-0053', 'chernandez@uaeh.edu.mx', '521551000053'),
('López', 'Ramírez', 'Sandra', '0000-0001-0001-0054', 'slopez@uaeh.edu.mx', '521331000054'),
('González', 'Torres', 'Alberto', '0000-0001-0001-0055', 'agonzalez@uaeh.edu.mx', '521811000055'),
('Pérez', 'Flores', 'Pamela', '0000-0001-0001-0056', 'pperez@uaeh.edu.mx', '5214771000056'),
('Sánchez', 'Castro', 'Ramon', '0000-0001-0001-0057', 'rsanchez@uaeh.edu.mx', '5216641000057'),
('Ramírez', 'Romero', 'Natalia', '0000-0001-0001-0058', 'nramirez@uaeh.edu.mx', '5216561000058'),
('Torres', 'Mendoza', 'Bruno', '0000-0001-0001-0059', 'btorres@uaeh.edu.mx', '5216141000059'),
('Flores', 'Silva', 'Yolanda', '0000-0001-0001-0060', 'yflores@uaeh.edu.mx', '5212221000060'),
('Rivera', 'Ramos', 'Salvador', '0000-0001-0001-0061', 'srivera@uaeh.edu.mx', '5217711000061'),
('Gómez', 'Morales', 'Maribel', '0000-0001-0001-0062', 'mgomez@uaeh.edu.mx', '5217221000062'),
('Díaz', 'Ortiz', 'Ruben', '0000-0001-0001-0063', 'rdiaz@uaeh.edu.mx', '521551000063'),
('Reyes', 'Jiménez', 'Lucero', '0000-0001-0001-0064', 'lreyes@uaeh.edu.mx', '521331000064'),
('Morales', 'Reyes', 'Emilio', '0000-0001-0001-0065', 'emorales@uaeh.edu.mx', '521811000065'),
('Ortiz', 'Cruz', 'Armando', '0000-0001-0001-0066', 'aortiz@uaeh.edu.mx', '5214771000066'),
('Gutiérrez', 'Vargas', 'Luz', '0000-0001-0001-0067', 'lgutierrez@uaeh.edu.mx', '5216641000067'),
('Jiménez', 'Medina', 'Guillermo', '0000-0001-0001-0068', 'gjimenez@uaeh.edu.mx', '5216561000068'),
('Ramos', 'Navarro', 'Ruth', '0000-0001-0001-0069', 'rramos@uaeh.edu.mx', '5216141000069'),
('Vázquez', 'Salazar', 'Ernesto', '0000-0001-0001-0070', 'evazquez@uaeh.edu.mx', '5212221000070'),
('Castro', 'Vega', 'Irma', '0000-0001-0001-0071', 'icastro@uaeh.edu.mx', '5217711000071'),
('Ruiz', 'Mora', 'Bianca', '0000-0001-0001-0072', 'bruiz@uaeh.edu.mx', '5217221000072'),
('Mendoza', 'Carrillo', 'Javier', '0000-0001-0001-0073', 'jmendoza@uaeh.edu.mx', '521551000073'),
('Guerrero', 'Acosta', 'Ariana', '0000-0001-0001-0074', 'aguerrero@uaeh.edu.mx', '521331000074'),
('Silva', 'Montes', 'Ignacio', '0000-0001-0001-0075', 'isilva@uaeh.edu.mx', '521811000075'),
('Romero', 'Espinoza', 'Julian', '0000-0001-0001-0076', 'jromero@uaeh.edu.mx', '5214771000076'),
('Suárez', 'Cárdenas', 'Martha', '0000-0001-0001-0077', 'msuarez@uaeh.edu.mx', '5216641000077'),
('Navarro', 'Guerrero', 'Federico', '0000-0001-0001-0078', 'fnavarro@uaeh.edu.mx', '5216561000078'),
('Moreno', 'Valdez', 'Lorena', '0000-0001-0001-0079', 'lmoreno@uaeh.edu.mx', '5216141000079'),
('Cruz', 'Robles', 'Fernando', '0000-0001-0001-0080', 'fcruz@uaeh.edu.mx', '5212221000080'),
('Vargas', 'Paredes', 'Adrian', '0000-0001-0001-0081', 'avargas@uaeh.edu.mx', '5217711000081'),
('Medina', 'Sandoval', 'Silvia', '0000-0001-0001-0082', 'smedina@uaeh.edu.mx', '5217221000082'),
('León', 'León', 'Arturo', '0000-0001-0001-0083', 'aleon@uaeh.edu.mx', '521551000083'),
('Ortega', 'Rojas', 'Beatriz', '0000-0001-0001-0084', 'bortega@uaeh.edu.mx', '521331000084'),
('Cortés', 'Márquez', 'Gustavo', '0000-0001-0001-0085', 'gcortes@uaeh.edu.mx', '521811000085'),
('Domínguez', 'Suárez', 'Carolina', '0000-0001-0001-0086', 'cdominguez@uaeh.edu.mx', '5214771000086'),
('Rojas', 'Aguirre', 'Noemi', '0000-0001-0001-0087', 'nrojas@uaeh.edu.mx', '5216641000087'),
('Molina', 'Herrera', 'Mario', '0000-0001-0001-0088', 'mmolina@uaeh.edu.mx', '5216561000088'),
('Marín', 'Castillo', 'Samuel', '0000-0001-0001-0089', 'smarin@uaeh.edu.mx', '5216141000089'),
('Soto', 'Ríos', 'Magdalena', '0000-0001-0001-0090', 'msoto@uaeh.edu.mx', '5212221000090'),
('Castillo', 'Soto', 'Mauricio', '0000-0001-0001-0091', 'mcastillo@uaeh.edu.mx', '5217711000091'),
('Ríos', 'Ruiz', 'Esther', '0000-0001-0001-0092', 'erios@uaeh.edu.mx', '5217221000092'),
('Ibarra', 'Mena', 'Alfonso', '0000-0001-0001-0093', 'aibarra@uaeh.edu.mx', '521551000093'),
('Vera', 'Cabrera', 'Victor', '0000-0001-0001-0094', 'vvera@uaeh.edu.mx', '521331000094'),
('Pacheco', 'Bonilla', 'Mireya', '0000-0001-0001-0095', 'mpacheco@uaeh.edu.mx', '521811000095'),
('Camacho', 'Bravo', 'Elena', '0000-0001-0001-0096', 'ecamacho@uaeh.edu.mx', '5214771000096'),
('Figueroa', 'Alvarez', 'Victor', '0000-0001-0001-0097', 'vfigueroa@uaeh.edu.mx', '5216641000097'),
('Herrera', 'Amaya', 'Esteban', '0000-0001-0001-0098', 'eherrera@uaeh.edu.mx', '5216561000098'),
('Salazar', 'Arteaga', 'Marcel', '0000-0001-0001-0099', 'msalazar@uaeh.edu.mx', '5216141000099'),
('Vega', 'Balderas', 'Clara', '0000-0001-0001-0100', 'cvega@uaeh.edu.mx', '5212221000100');

INSERT INTO Produccion (ID_Investigador, Tipo, Título, Anio) VALUES
(1, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(2, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(3, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(4, 'Ponencia', 'Evaluación de energías renovables', 2018),
(5, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(6, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(7, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(8, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(9, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(10, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(11, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(12, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(13, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(14, 'Ponencia', 'Evaluación de energías renovables', 2018),
(15, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(16, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(17, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(18, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(19, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(20, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(21, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(22, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(23, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(24, 'Ponencia', 'Evaluación de energías renovables', 2018),
(25, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(26, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(27, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(28, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(29, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(30, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(31, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(32, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(33, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(34, 'Ponencia', 'Evaluación de energías renovables', 2018),
(35, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(36, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(37, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(38, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(39, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(40, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(41, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(42, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(43, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(44, 'Ponencia', 'Evaluación de energías renovables', 2018),
(45, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(46, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(47, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(48, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(49, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(50, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(51, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(52, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(53, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(54, 'Ponencia', 'Evaluación de energías renovables', 2018),
(55, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(56, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(57, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(58, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(59, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(60, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(61, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(62, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(63, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(64, 'Ponencia', 'Evaluación de energías renovables', 2018),
(65, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(66, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(67, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(68, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(69, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(70, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(71, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(72, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(73, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(74, 'Ponencia', 'Evaluación de energías renovables', 2018),
(75, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(76, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(77, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(78, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(79, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(80, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(81, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(82, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(83, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(84, 'Ponencia', 'Evaluación de energías renovables', 2018),
(85, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(86, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(87, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(88, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(89, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(90, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024),
(91, 'Articulo Cientifico', 'Avances en nanotecnología para aplicaciones médicas', 2015),
(92, 'Libro', 'Aplicaciones de biotecnología agrícola', 2016),
(93, 'Capitulo de libro', 'Métodos para inteligencia artificial en robótica', 2017),
(94, 'Ponencia', 'Evaluación de energías renovables', 2018),
(95, 'Reporte Técnico', 'Diseño de seguridad informática', 2019),
(96, 'Articulo Cientifico', 'Avances en robótica colaborativa', 2020),
(97, 'Libro', 'Aplicaciones de ciencias de materiales avanzados', 2021),
(98, 'Capitulo de libro', 'Métodos para ecología urbana', 2022),
(99, 'Ponencia', 'Evaluación de genómica computacional', 2023),
(100, 'Reporte Técnico', 'Diseño de neurociencias aplicadas', 2024);

INSERT INTO Formacion (ID_Investigador, Grado, Institucion, Nombre, Fecha_Termino) VALUES
(1, 'Licenciatura', 'Universidad Nacional', 'Ingeniería en Computación', '2005-01-04'),
(2, 'Maestría', 'Universidad Autónoma', 'Ingeniería Mecánica', '2006-02-07'),
(3, 'Doctorado', 'Tecnológico de Monterrey', 'Biotecnología', '2007-03-10'),
(4, 'Licenciatura', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2008-04-13'),
(5, 'Maestría', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2009-05-16'),
(6, 'Doctorado', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2010-06-19'),
(7, 'Licenciatura', 'Universidad de Sonora', 'Física', '2011-07-22'),
(8, 'Maestría', 'Universidad de Guanajuato', 'Química', '2012-08-25'),
(9, 'Doctorado', 'Instituto Politécnico Nacional', 'Psicología', '2013-09-28'),
(10, 'Licenciatura', 'Universidad Autónoma de Nuevo León', 'Medicina', '2014-10-03'),
(11, 'Maestría', 'Universidad Nacional', 'Ingeniería en Computación', '2015-11-06'),
(12, 'Doctorado', 'Universidad Autónoma', 'Ingeniería Mecánica', '2016-12-09'),
(13, 'Licenciatura', 'Tecnológico de Monterrey', 'Biotecnología', '2017-01-12'),
(14, 'Maestría', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2018-02-15'),
(15, 'Doctorado', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2019-03-18'),
(16, 'Licenciatura', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2020-04-21'),
(17, 'Maestría', 'Universidad de Sonora', 'Física', '2021-05-24'),
(18, 'Doctorado', 'Universidad de Guanajuato', 'Química', '2022-06-27'),
(19, 'Licenciatura', 'Instituto Politécnico Nacional', 'Psicología', '2023-07-02'),
(20, 'Maestría', 'Universidad Autónoma de Nuevo León', 'Medicina', '2024-08-05'),
(21, 'Doctorado', 'Universidad Nacional', 'Ingeniería en Computación', '2005-09-08'),
(22, 'Licenciatura', 'Universidad Autónoma', 'Ingeniería Mecánica', '2006-10-11'),
(23, 'Maestría', 'Tecnológico de Monterrey', 'Biotecnología', '2007-11-14'),
(24, 'Doctorado', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2008-12-17'),
(25, 'Licenciatura', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2009-01-20'),
(26, 'Maestría', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2010-02-23'),
(27, 'Doctorado', 'Universidad de Sonora', 'Física', '2011-03-26'),
(28, 'Licenciatura', 'Universidad de Guanajuato', 'Química', '2012-04-01'),
(29, 'Maestría', 'Instituto Politécnico Nacional', 'Psicología', '2013-05-04'),
(30, 'Doctorado', 'Universidad Autónoma de Nuevo León', 'Medicina', '2014-06-07'),
(31, 'Licenciatura', 'Universidad Nacional', 'Ingeniería en Computación', '2015-07-10'),
(32, 'Maestría', 'Universidad Autónoma', 'Ingeniería Mecánica', '2016-08-13'),
(33, 'Doctorado', 'Tecnológico de Monterrey', 'Biotecnología', '2017-09-16'),
(34, 'Licenciatura', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2018-10-19'),
(35, 'Maestría', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2019-11-22'),
(36, 'Doctorado', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2020-12-25'),
(37, 'Licenciatura', 'Universidad de Sonora', 'Física', '2021-01-28'),
(38, 'Maestría', 'Universidad de Guanajuato', 'Química', '2022-02-03'),
(39, 'Doctorado', 'Instituto Politécnico Nacional', 'Psicología', '2023-03-06'),
(40, 'Licenciatura', 'Universidad Autónoma de Nuevo León', 'Medicina', '2024-04-09'),
(41, 'Maestría', 'Universidad Nacional', 'Ingeniería en Computación', '2005-05-12'),
(42, 'Doctorado', 'Universidad Autónoma', 'Ingeniería Mecánica', '2006-06-15'),
(43, 'Licenciatura', 'Tecnológico de Monterrey', 'Biotecnología', '2007-07-18'),
(44, 'Maestría', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2008-08-21'),
(45, 'Doctorado', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2009-09-24'),
(46, 'Licenciatura', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2010-10-27'),
(47, 'Maestría', 'Universidad de Sonora', 'Física', '2011-11-02'),
(48, 'Doctorado', 'Universidad de Guanajuato', 'Química', '2012-12-05'),
(49, 'Licenciatura', 'Instituto Politécnico Nacional', 'Psicología', '2013-01-08'),
(50, 'Maestría', 'Universidad Autónoma de Nuevo León', 'Medicina', '2014-02-11'),
(51, 'Doctorado', 'Universidad Nacional', 'Ingeniería en Computación', '2015-03-14'),
(52, 'Licenciatura', 'Universidad Autónoma', 'Ingeniería Mecánica', '2016-04-17'),
(53, 'Maestría', 'Tecnológico de Monterrey', 'Biotecnología', '2017-05-20'),
(54, 'Doctorado', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2018-06-23'),
(55, 'Licenciatura', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2019-07-26'),
(56, 'Maestría', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2020-08-01'),
(57, 'Doctorado', 'Universidad de Sonora', 'Física', '2021-09-04'),
(58, 'Licenciatura', 'Universidad de Guanajuato', 'Química', '2022-10-07'),
(59, 'Maestría', 'Instituto Politécnico Nacional', 'Psicología', '2023-11-10'),
(60, 'Doctorado', 'Universidad Autónoma de Nuevo León', 'Medicina', '2024-12-13'),
(61, 'Licenciatura', 'Universidad Nacional', 'Ingeniería en Computación', '2005-01-16'),
(62, 'Maestría', 'Universidad Autónoma', 'Ingeniería Mecánica', '2006-02-19'),
(63, 'Doctorado', 'Tecnológico de Monterrey', 'Biotecnología', '2007-03-22'),
(64, 'Licenciatura', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2008-04-25'),
(65, 'Maestría', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2009-05-28'),
(66, 'Doctorado', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2010-06-03'),
(67, 'Licenciatura', 'Universidad de Sonora', 'Física', '2011-07-06'),
(68, 'Maestría', 'Universidad de Guanajuato', 'Química', '2012-08-09'),
(69, 'Doctorado', 'Instituto Politécnico Nacional', 'Psicología', '2013-09-12'),
(70, 'Licenciatura', 'Universidad Autónoma de Nuevo León', 'Medicina', '2014-10-15'),
(71, 'Maestría', 'Universidad Nacional', 'Ingeniería en Computación', '2015-11-18'),
(72, 'Doctorado', 'Universidad Autónoma', 'Ingeniería Mecánica', '2016-12-21'),
(73, 'Licenciatura', 'Tecnológico de Monterrey', 'Biotecnología', '2017-01-24'),
(74, 'Maestría', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2018-02-27'),
(75, 'Doctorado', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2019-03-02'),
(76, 'Licenciatura', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2020-04-05'),
(77, 'Maestría', 'Universidad de Sonora', 'Física', '2021-05-08'),
(78, 'Doctorado', 'Universidad de Guanajuato', 'Química', '2022-06-11'),
(79, 'Licenciatura', 'Instituto Politécnico Nacional', 'Psicología', '2023-07-14'),
(80, 'Maestría', 'Universidad Autónoma de Nuevo León', 'Medicina', '2024-08-17'),
(81, 'Doctorado', 'Universidad Nacional', 'Ingeniería en Computación', '2005-09-20'),
(82, 'Licenciatura', 'Universidad Autónoma', 'Ingeniería Mecánica', '2006-10-23'),
(83, 'Maestría', 'Tecnológico de Monterrey', 'Biotecnología', '2007-11-26'),
(84, 'Doctorado', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2008-12-01'),
(85, 'Licenciatura', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2009-01-04'),
(86, 'Maestría', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2010-02-07'),
(87, 'Doctorado', 'Universidad de Sonora', 'Física', '2011-03-10'),
(88, 'Licenciatura', 'Universidad de Guanajuato', 'Química', '2012-04-13'),
(89, 'Maestría', 'Instituto Politécnico Nacional', 'Psicología', '2013-05-16'),
(90, 'Doctorado', 'Universidad Autónoma de Nuevo León', 'Medicina', '2014-06-19'),
(91, 'Licenciatura', 'Universidad Nacional', 'Ingeniería en Computación', '2015-07-22'),
(92, 'Maestría', 'Universidad Autónoma', 'Ingeniería Mecánica', '2016-08-25'),
(93, 'Doctorado', 'Tecnológico de Monterrey', 'Biotecnología', '2017-09-28'),
(94, 'Licenciatura', 'Universidad de Guadalajara', 'Ciencias Ambientales', '2018-10-03'),
(95, 'Maestría', 'Benemérita Universidad', 'Ingeniería Eléctrica', '2019-11-06'),
(96, 'Doctorado', 'Universidad Veracruzana', 'Matemáticas Aplicadas', '2020-12-09'),
(97, 'Licenciatura', 'Universidad de Sonora', 'Física', '2021-01-12'),
(98, 'Maestría', 'Universidad de Guanajuato', 'Química', '2022-02-15'),
(99, 'Doctorado', 'Instituto Politécnico Nacional', 'Psicología', '2023-03-18'),
(100, 'Licenciatura', 'Universidad Autónoma de Nuevo León', 'Medicina', '2024-04-21');

INSERT INTO Adscripcion (ID_Investigador, Instituto, Area, Nombramiento, Fecha_ingreso) VALUES
(1, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2010-01-03'),
(2, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2011-02-05'),
(3, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2012-03-07'),
(4, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2013-04-09'),
(5, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2014-05-11'),
(6, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2015-06-13'),
(7, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2016-07-15'),
(8, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2017-08-17'),
(9, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2018-09-19'),
(10, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2019-10-21'),
(11, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2020-11-23'),
(12, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2021-12-25'),
(13, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2022-01-27'),
(14, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2023-02-01'),
(15, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2024-03-03'),
(16, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2010-04-05'),
(17, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2011-05-07'),
(18, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2012-06-09'),
(19, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2013-07-11'),
(20, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2014-08-13'),
(21, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2015-09-15'),
(22, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2016-10-17'),
(23, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2017-11-19'),
(24, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2018-12-21'),
(25, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2019-01-23'),
(26, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2020-02-25'),
(27, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2021-03-27'),
(28, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2022-04-01'),
(29, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2023-05-03'),
(30, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2024-06-05'),
(31, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2010-07-07'),
(32, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2011-08-09'),
(33, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2012-09-11'),
(34, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2013-10-13'),
(35, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2014-11-15'),
(36, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2015-12-17'),
(37, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2016-01-19'),
(38, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2017-02-21'),
(39, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2018-03-23'),
(40, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2019-04-25'),
(41, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2020-05-27'),
(42, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2021-06-01'),
(43, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2022-07-03'),
(44, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2023-08-05'),
(45, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2024-09-07'),
(46, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2010-10-09'),
(47, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2011-11-11'),
(48, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2012-12-13'),
(49, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2013-01-15'),
(50, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2014-02-17'),
(51, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2015-03-19'),
(52, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2016-04-21'),
(53, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2017-05-23'),
(54, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2018-06-25'),
(55, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2019-07-27'),
(56, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2020-08-01'),
(57, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2021-09-03'),
(58, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2022-10-05'),
(59, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2023-11-07'),
(60, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2024-12-09'),
(61, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2010-01-11'),
(62, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2011-02-13'),
(63, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2012-03-15'),
(64, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2013-04-17'),
(65, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2014-05-19'),
(66, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2015-06-21'),
(67, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2016-07-23'),
(68, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2017-08-25'),
(69, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2018-09-27'),
(70, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2019-10-01'),
(71, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2020-11-03'),
(72, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2021-12-05'),
(73, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2022-01-07'),
(74, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2023-02-09'),
(75, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2024-03-11'),
(76, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2010-04-13'),
(77, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2011-05-15'),
(78, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2012-06-17'),
(79, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2013-07-19'),
(80, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2014-08-21'),
(81, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2015-09-23'),
(82, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2016-10-25'),
(83, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2017-11-27'),
(84, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2018-12-01'),
(85, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2019-01-03'),
(86, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2020-02-05'),
(87, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2021-03-07'),
(88, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2022-04-09'),
(89, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2023-05-11'),
(90, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2024-06-13'),
(91, 'Universidad Nacional', 'Área Académica de Computación y Electrónica', 'TC', '2010-07-15'),
(92, 'Universidad Autónoma', 'Área Académica de Biotecnología', 'PTC', '2011-08-17'),
(93, 'Tecnológico de Monterrey', 'Área Académica de Ciencias Ambientales', 'Academia', '2012-09-19'),
(94, 'Universidad de Guadalajara', 'Área Académica de Matemáticas', 'Investigador Asociado', '2013-10-21'),
(95, 'Benemérita Universidad', 'Área Académica de Física', 'Investigador Titular', '2014-11-23'),
(96, 'Universidad Veracruzana', 'Área Académica de Química', 'TC', '2015-12-25'),
(97, 'Universidad de Sonora', 'Área Académica de Ingeniería Mecánica', 'PTC', '2016-01-27'),
(98, 'Universidad de Guanajuato', 'Área Académica de Medicina', 'Academia', '2017-02-01'),
(99, 'Instituto Politécnico Nacional', 'Área Académica de Psicología', 'Investigador Asociado', '2018-03-03'),
(100, 'Universidad Autónoma de Nuevo León', 'Área Académica de Ciencias Sociales', 'Investigador Titular', '2019-04-05');

INSERT INTO Proyecto (ID_Investigador, Nombre, Inicio, Final) VALUES
(1, 'Proyecto de nanotecnología para aplicaciones médicas', '2018-01-06', '2018-02-08'),
(2, 'Proyecto de biotecnología agrícola', '2019-02-11', '2019-03-15'),
(3, 'Proyecto de inteligencia artificial en robótica', '2020-03-16', '2020-04-22'),
(4, 'Proyecto de energías renovables', '2021-04-21', '2021-05-01'),
(5, 'Proyecto de seguridad informática', '2022-05-26', '2022-06-08'),
(6, 'Proyecto de robótica colaborativa', '2023-06-03', '2023-07-15'),
(7, 'Proyecto de ciencias de materiales avanzados', '2024-07-08', '2024-08-22'),
(8, 'Proyecto de ecología urbana', '2018-08-13', '2018-09-01'),
(9, 'Proyecto de genómica computacional', '2019-09-18', '2019-10-08'),
(10, 'Proyecto de neurociencias aplicadas', '2020-10-23', '2020-11-15'),
(11, 'Proyecto de nanotecnología para aplicaciones médicas', '2021-11-28', '2021-12-22'),
(12, 'Proyecto de biotecnología agrícola', '2022-12-05', '2023-12-01'),
(13, 'Proyecto de inteligencia artificial en robótica', '2023-01-10', '2023-02-08'),
(14, 'Proyecto de energías renovables', '2024-02-15', '2024-03-15'),
(15, 'Proyecto de seguridad informática', '2018-03-20', '2018-04-22'),
(16, 'Proyecto de robótica colaborativa', '2019-04-25', '2019-05-01'),
(17, 'Proyecto de ciencias de materiales avanzados', '2020-05-02', '2020-06-08'),
(18, 'Proyecto de ecología urbana', '2021-06-07', '2021-07-15'),
(19, 'Proyecto de genómica computacional', '2022-07-12', '2022-08-22'),
(20, 'Proyecto de neurociencias aplicadas', '2023-08-17', '2023-09-01'),
(21, 'Proyecto de nanotecnología para aplicaciones médicas', '2024-09-22', '2024-10-08'),
(22, 'Proyecto de biotecnología agrícola', '2018-10-27', '2018-11-15'),
(23, 'Proyecto de inteligencia artificial en robótica', '2019-11-04', '2019-12-22'),
(24, 'Proyecto de energías renovables', '2020-12-09', '2021-12-01'),
(25, 'Proyecto de seguridad informática', '2021-01-14', '2021-02-08'),
(26, 'Proyecto de robótica colaborativa', '2022-02-19', '2022-03-15'),
(27, 'Proyecto de ciencias de materiales avanzados', '2023-03-24', '2023-04-22'),
(28, 'Proyecto de ecología urbana', '2024-04-01', '2024-05-01'),
(29, 'Proyecto de genómica computacional', '2018-05-06', '2018-06-08'),
(30, 'Proyecto de neurociencias aplicadas', '2019-06-11', '2019-07-15'),
(31, 'Proyecto de nanotecnología para aplicaciones médicas', '2020-07-16', '2020-08-22'),
(32, 'Proyecto de biotecnología agrícola', '2021-08-21', '2021-09-01'),
(33, 'Proyecto de inteligencia artificial en robótica', '2022-09-26', '2022-10-08'),
(34, 'Proyecto de energías renovables', '2023-10-03', '2023-11-15'),
(35, 'Proyecto de seguridad informática', '2024-11-08', '2024-12-22'),
(36, 'Proyecto de robótica colaborativa', '2018-12-13', '2019-12-01'),
(37, 'Proyecto de ciencias de materiales avanzados', '2019-01-18', '2019-02-08'),
(38, 'Proyecto de ecología urbana', '2020-02-23', '2020-03-15'),
(39, 'Proyecto de genómica computacional', '2021-03-28', '2021-04-22'),
(40, 'Proyecto de neurociencias aplicadas', '2022-04-05', '2022-05-01'),
(41, 'Proyecto de nanotecnología para aplicaciones médicas', '2023-05-10', '2023-06-08'),
(42, 'Proyecto de biotecnología agrícola', '2024-06-15', '2024-07-15'),
(43, 'Proyecto de inteligencia artificial en robótica', '2018-07-20', '2018-08-22'),
(44, 'Proyecto de energías renovables', '2019-08-25', '2019-09-01'),
(45, 'Proyecto de seguridad informática', '2020-09-02', '2020-10-08'),
(46, 'Proyecto de robótica colaborativa', '2021-10-07', '2021-11-15'),
(47, 'Proyecto de ciencias de materiales avanzados', '2022-11-12', '2022-12-22'),
(48, 'Proyecto de ecología urbana', '2023-12-17', '2024-12-01'),
(49, 'Proyecto de genómica computacional', '2024-01-22', '2024-02-08'),
(50, 'Proyecto de neurociencias aplicadas', '2018-02-27', '2018-03-15'),
(51, 'Proyecto de nanotecnología para aplicaciones médicas', '2019-03-04', '2019-04-22'),
(52, 'Proyecto de biotecnología agrícola', '2020-04-09', '2020-05-01'),
(53, 'Proyecto de inteligencia artificial en robótica', '2021-05-14', '2021-06-08'),
(54, 'Proyecto de energías renovables', '2022-06-19', '2022-07-15'),
(55, 'Proyecto de seguridad informática', '2023-07-24', '2023-08-22'),
(56, 'Proyecto de robótica colaborativa', '2024-08-01', '2024-09-01'),
(57, 'Proyecto de ciencias de materiales avanzados', '2018-09-06', '2018-10-08'),
(58, 'Proyecto de ecología urbana', '2019-10-11', '2019-11-15'),
(59, 'Proyecto de genómica computacional', '2020-11-16', '2020-12-22'),
(60, 'Proyecto de neurociencias aplicadas', '2021-12-21', '2022-12-01'),
(61, 'Proyecto de nanotecnología para aplicaciones médicas', '2022-01-26', '2022-02-08'),
(62, 'Proyecto de biotecnología agrícola', '2023-02-03', '2023-03-15'),
(63, 'Proyecto de inteligencia artificial en robótica', '2024-03-08', '2024-04-22'),
(64, 'Proyecto de energías renovables', '2018-04-13', '2018-05-01'),
(65, 'Proyecto de seguridad informática', '2019-05-18', '2019-06-08'),
(66, 'Proyecto de robótica colaborativa', '2020-06-23', '2020-07-15'),
(67, 'Proyecto de ciencias de materiales avanzados', '2021-07-28', '2021-08-22'),
(68, 'Proyecto de ecología urbana', '2022-08-05', '2022-09-01'),
(69, 'Proyecto de genómica computacional', '2023-09-10', '2023-10-08'),
(70, 'Proyecto de neurociencias aplicadas', '2024-10-15', '2024-11-15'),
(71, 'Proyecto de nanotecnología para aplicaciones médicas', '2018-11-20', '2018-12-22'),
(72, 'Proyecto de biotecnología agrícola', '2019-12-25', '2020-12-01'),
(73, 'Proyecto de inteligencia artificial en robótica', '2020-01-02', '2020-02-08'),
(74, 'Proyecto de energías renovables', '2021-02-07', '2021-03-15'),
(75, 'Proyecto de seguridad informática', '2022-03-12', '2022-04-22'),
(76, 'Proyecto de robótica colaborativa', '2023-04-17', '2023-05-01'),
(77, 'Proyecto de ciencias de materiales avanzados', '2024-05-22', '2024-06-08'),
(78, 'Proyecto de ecología urbana', '2018-06-27', '2018-07-15'),
(79, 'Proyecto de genómica computacional', '2019-07-04', '2019-08-22'),
(80, 'Proyecto de neurociencias aplicadas', '2020-08-09', '2020-09-01'),
(81, 'Proyecto de nanotecnología para aplicaciones médicas', '2021-09-14', '2021-10-08'),
(82, 'Proyecto de biotecnología agrícola', '2022-10-19', '2022-11-15'),
(83, 'Proyecto de inteligencia artificial en robótica', '2023-11-24', '2023-12-22'),
(84, 'Proyecto de energías renovables', '2024-12-01', '2025-12-01'),
(85, 'Proyecto de seguridad informática', '2018-01-06', '2018-02-08'),
(86, 'Proyecto de robótica colaborativa', '2019-02-11', '2019-03-15'),
(87, 'Proyecto de ciencias de materiales avanzados', '2020-03-16', '2020-04-22'),
(88, 'Proyecto de ecología urbana', '2021-04-21', '2021-05-01'),
(89, 'Proyecto de genómica computacional', '2022-05-26', '2022-06-08'),
(90, 'Proyecto de neurociencias aplicadas', '2023-06-03', '2023-07-15'),
(91, 'Proyecto de nanotecnología para aplicaciones médicas', '2024-07-08', '2024-08-22'),
(92, 'Proyecto de biotecnología agrícola', '2018-08-13', '2018-09-01'),
(93, 'Proyecto de inteligencia artificial en robótica', '2019-09-18', '2019-10-08'),
(94, 'Proyecto de energías renovables', '2020-10-23', '2020-11-15'),
(95, 'Proyecto de seguridad informática', '2021-11-28', '2021-12-22'),
(96, 'Proyecto de robótica colaborativa', '2022-12-05', '2023-12-01'),
(97, 'Proyecto de ciencias de materiales avanzados', '2023-01-10', '2023-02-08'),
(98, 'Proyecto de ecología urbana', '2024-02-15', '2024-03-15'),
(99, 'Proyecto de genómica computacional', '2018-03-20', '2018-04-22'),
(100, 'Proyecto de neurociencias aplicadas', '2019-04-25', '2019-05-01');

CREATE DATABASE PROFESOR;
USE PROFESOR;

CREATE TABLE Programa (
	ID_Programa INT AUTO_INCREMENT,
    Nivel VARCHAR (25),
    Nombre VARCHAR (150),
    Fecha DATE,
    PRIMARY KEY (ID_Programa)
);

CREATE TABLE Asignatura (
	ID_Asignatura INT AUTO_INCREMENT,
    ID_Programa INT,
    Semestre INT,
    Nombre VARCHAR (120),
    PRIMARY KEY (ID_Asignatura),
    FOREIGN KEY (ID_Programa) REFERENCES Programa (ID_Programa)
);

CREATE TABLE Profesor (
	ID_Profesor INT AUTO_INCREMENT,
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (80),
    Email VARCHAR (150),
    Fecha_inicio DATE,
    PRIMARY KEY (ID_Profesor)
);

CREATE TABLE Curso (
	ID_Curso INT AUTO_INCREMENT,
    ID_Asignatura INT,
    ID_Profesor INT,
    Periodo VARCHAR (25),
    Anio INT,
    Grupo INT,
    PRIMARY KEY (ID_Curso),
    FOREIGN KEY (ID_Asignatura) REFERENCES Asignatura (ID_Asignatura),
    FOREIGN KEY (ID_Profesor) REFERENCES Profesor (ID_Profesor)
);

CREATE TABLE Alumno (
	ID_Alumno INT AUTO_INCREMENT,
    Numero_cuenta VARCHAR (25),
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (80),
    Email VARCHAR (150),
    PRIMARY KEY (ID_Alumno)
);

CREATE TABLE Alumno_curso (
	ID_Alumnocurso INT AUTO_INCREMENT,
    ID_Alumno INT,
    ID_Curso INT,
    Calificacion DECIMAL (10,2),
    PRIMARY KEY (ID_Alumnocurso),
    FOREIGN KEY (ID_Alumno) REFERENCES Alumno (ID_Alumno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso (ID_Curso)
);

INSERT INTO Programa (Nivel, Nombre, Fecha) VALUES
('Licenciatura', 'Licenciatura en Ciencias Computacionales', '2020-01-04'),
('Maestría', 'Maestría en Ingeniería Mecánica', '2021-02-07'),
('Doctorado', 'Doctorado en Biotecnología', '2022-03-10'),
('Licenciatura', 'Licenciatura en Administración de Empresas', '2023-04-13'),
('Maestría', 'Maestría en Ciencias Ambientales', '2024-05-16'),
('Doctorado', 'Doctorado en Matemáticas Aplicadas', '2025-06-19'),
('Licenciatura', 'Licenciatura en Física', '2020-07-22'),
('Maestría', 'Maestría en Química', '2021-08-25'),
('Doctorado', 'Doctorado en Psicología', '2022-09-28'),
('Licenciatura', 'Licenciatura en Medicina', '2023-10-03'),
('Maestría', 'Maestría en Ciencias Computacionales', '2024-11-06'),
('Doctorado', 'Doctorado en Ingeniería Mecánica', '2025-12-09'),
('Licenciatura', 'Licenciatura en Biotecnología', '2020-01-12'),
('Maestría', 'Maestría en Administración de Empresas', '2021-02-15'),
('Doctorado', 'Doctorado en Ciencias Ambientales', '2022-03-18'),
('Licenciatura', 'Licenciatura en Matemáticas Aplicadas', '2023-04-21'),
('Maestría', 'Maestría en Física', '2024-05-24'),
('Doctorado', 'Doctorado en Química', '2025-06-27'),
('Licenciatura', 'Licenciatura en Psicología', '2020-07-02'),
('Maestría', 'Maestría en Medicina', '2021-08-05'),
('Doctorado', 'Doctorado en Ciencias Computacionales', '2022-09-08'),
('Licenciatura', 'Licenciatura en Ingeniería Mecánica', '2023-10-11'),
('Maestría', 'Maestría en Biotecnología', '2024-11-14'),
('Doctorado', 'Doctorado en Administración de Empresas', '2025-12-17'),
('Licenciatura', 'Licenciatura en Ciencias Ambientales', '2020-01-20'),
('Maestría', 'Maestría en Matemáticas Aplicadas', '2021-02-23'),
('Doctorado', 'Doctorado en Física', '2022-03-26'),
('Licenciatura', 'Licenciatura en Química', '2023-04-01'),
('Maestría', 'Maestría en Psicología', '2024-05-04'),
('Doctorado', 'Doctorado en Medicina', '2025-06-07'),
('Licenciatura', 'Licenciatura en Ciencias Computacionales', '2020-07-10'),
('Maestría', 'Maestría en Ingeniería Mecánica', '2021-08-13'),
('Doctorado', 'Doctorado en Biotecnología', '2022-09-16'),
('Licenciatura', 'Licenciatura en Administración de Empresas', '2023-10-19'),
('Maestría', 'Maestría en Ciencias Ambientales', '2024-11-22'),
('Doctorado', 'Doctorado en Matemáticas Aplicadas', '2025-12-25'),
('Licenciatura', 'Licenciatura en Física', '2020-01-28'),
('Maestría', 'Maestría en Química', '2021-02-03'),
('Doctorado', 'Doctorado en Psicología', '2022-03-06'),
('Licenciatura', 'Licenciatura en Medicina', '2023-04-09'),
('Maestría', 'Maestría en Ciencias Computacionales', '2024-05-12'),
('Doctorado', 'Doctorado en Ingeniería Mecánica', '2025-06-15'),
('Licenciatura', 'Licenciatura en Biotecnología', '2020-07-18'),
('Maestría', 'Maestría en Administración de Empresas', '2021-08-21'),
('Doctorado', 'Doctorado en Ciencias Ambientales', '2022-09-24'),
('Licenciatura', 'Licenciatura en Matemáticas Aplicadas', '2023-10-27'),
('Maestría', 'Maestría en Física', '2024-11-02'),
('Doctorado', 'Doctorado en Química', '2025-12-05'),
('Licenciatura', 'Licenciatura en Psicología', '2020-01-08'),
('Maestría', 'Maestría en Medicina', '2021-02-11'),
('Doctorado', 'Doctorado en Ciencias Computacionales', '2022-03-14'),
('Licenciatura', 'Licenciatura en Ingeniería Mecánica', '2023-04-17'),
('Maestría', 'Maestría en Biotecnología', '2024-05-20'),
('Doctorado', 'Doctorado en Administración de Empresas', '2025-06-23'),
('Licenciatura', 'Licenciatura en Ciencias Ambientales', '2020-07-26'),
('Maestría', 'Maestría en Matemáticas Aplicadas', '2021-08-01'),
('Doctorado', 'Doctorado en Física', '2022-09-04'),
('Licenciatura', 'Licenciatura en Química', '2023-10-07'),
('Maestría', 'Maestría en Psicología', '2024-11-10'),
('Doctorado', 'Doctorado en Medicina', '2025-12-13'),
('Licenciatura', 'Licenciatura en Ciencias Computacionales', '2020-01-16'),
('Maestría', 'Maestría en Ingeniería Mecánica', '2021-02-19'),
('Doctorado', 'Doctorado en Biotecnología', '2022-03-22'),
('Licenciatura', 'Licenciatura en Administración de Empresas', '2023-04-25'),
('Maestría', 'Maestría en Ciencias Ambientales', '2024-05-28'),
('Doctorado', 'Doctorado en Matemáticas Aplicadas', '2025-06-03'),
('Licenciatura', 'Licenciatura en Física', '2020-07-06'),
('Maestría', 'Maestría en Química', '2021-08-09'),
('Doctorado', 'Doctorado en Psicología', '2022-09-12'),
('Licenciatura', 'Licenciatura en Medicina', '2023-10-15'),
('Maestría', 'Maestría en Ciencias Computacionales', '2024-11-18'),
('Doctorado', 'Doctorado en Ingeniería Mecánica', '2025-12-21'),
('Licenciatura', 'Licenciatura en Biotecnología', '2020-01-24'),
('Maestría', 'Maestría en Administración de Empresas', '2021-02-27'),
('Doctorado', 'Doctorado en Ciencias Ambientales', '2022-03-02'),
('Licenciatura', 'Licenciatura en Matemáticas Aplicadas', '2023-04-05'),
('Maestría', 'Maestría en Física', '2024-05-08'),
('Doctorado', 'Doctorado en Química', '2025-06-11'),
('Licenciatura', 'Licenciatura en Psicología', '2020-07-14'),
('Maestría', 'Maestría en Medicina', '2021-08-17'),
('Doctorado', 'Doctorado en Ciencias Computacionales', '2022-09-20'),
('Licenciatura', 'Licenciatura en Ingeniería Mecánica', '2023-10-23'),
('Maestría', 'Maestría en Biotecnología', '2024-11-26'),
('Doctorado', 'Doctorado en Administración de Empresas', '2025-12-01'),
('Licenciatura', 'Licenciatura en Ciencias Ambientales', '2020-01-04'),
('Maestría', 'Maestría en Matemáticas Aplicadas', '2021-02-07'),
('Doctorado', 'Doctorado en Física', '2022-03-10'),
('Licenciatura', 'Licenciatura en Química', '2023-04-13'),
('Maestría', 'Maestría en Psicología', '2024-05-16'),
('Doctorado', 'Doctorado en Medicina', '2025-06-19'),
('Licenciatura', 'Licenciatura en Ciencias Computacionales', '2020-07-22'),
('Maestría', 'Maestría en Ingeniería Mecánica', '2021-08-25'),
('Doctorado', 'Doctorado en Biotecnología', '2022-09-28'),
('Licenciatura', 'Licenciatura en Administración de Empresas', '2023-10-03'),
('Maestría', 'Maestría en Ciencias Ambientales', '2024-11-06'),
('Doctorado', 'Doctorado en Matemáticas Aplicadas', '2025-12-09'),
('Licenciatura', 'Licenciatura en Física', '2020-01-12'),
('Maestría', 'Maestría en Química', '2021-02-15'),
('Doctorado', 'Doctorado en Psicología', '2022-03-18'),
('Licenciatura', 'Licenciatura en Medicina', '2023-04-21');

INSERT INTO Asignatura (ID_Programa, Semestre, Nombre) VALUES
(1, 1, 'Cálculo I'),
(2, 2, 'Física I'),
(3, 3, 'Química I'),
(4, 4, 'Algoritmos y Estructuras de Datos'),
(5, 5, 'Programación Orientada a Objetos'),
(6, 6, 'Bases de Datos'),
(7, 7, 'Redes de Computadoras'),
(8, 8, 'Sistemas Operativos'),
(9, 1, 'Inteligencia Artificial'),
(10, 2, 'Estadística'),
(11, 3, 'Cálculo I'),
(12, 4, 'Física I'),
(13, 5, 'Química I'),
(14, 6, 'Algoritmos y Estructuras de Datos'),
(15, 7, 'Programación Orientada a Objetos'),
(16, 8, 'Bases de Datos'),
(17, 1, 'Redes de Computadoras'),
(18, 2, 'Sistemas Operativos'),
(19, 3, 'Inteligencia Artificial'),
(20, 4, 'Estadística'),
(21, 5, 'Cálculo I'),
(22, 6, 'Física I'),
(23, 7, 'Química I'),
(24, 8, 'Algoritmos y Estructuras de Datos'),
(25, 1, 'Programación Orientada a Objetos'),
(26, 2, 'Bases de Datos'),
(27, 3, 'Redes de Computadoras'),
(28, 4, 'Sistemas Operativos'),
(29, 5, 'Inteligencia Artificial'),
(30, 6, 'Estadística'),
(31, 7, 'Cálculo I'),
(32, 8, 'Física I'),
(33, 1, 'Química I'),
(34, 2, 'Algoritmos y Estructuras de Datos'),
(35, 3, 'Programación Orientada a Objetos'),
(36, 4, 'Bases de Datos'),
(37, 5, 'Redes de Computadoras'),
(38, 6, 'Sistemas Operativos'),
(39, 7, 'Inteligencia Artificial'),
(40, 8, 'Estadística'),
(41, 1, 'Cálculo I'),
(42, 2, 'Física I'),
(43, 3, 'Química I'),
(44, 4, 'Algoritmos y Estructuras de Datos'),
(45, 5, 'Programación Orientada a Objetos'),
(46, 6, 'Bases de Datos'),
(47, 7, 'Redes de Computadoras'),
(48, 8, 'Sistemas Operativos'),
(49, 1, 'Inteligencia Artificial'),
(50, 2, 'Estadística'),
(51, 3, 'Cálculo I'),
(52, 4, 'Física I'),
(53, 5, 'Química I'),
(54, 6, 'Algoritmos y Estructuras de Datos'),
(55, 7, 'Programación Orientada a Objetos'),
(56, 8, 'Bases de Datos'),
(57, 1, 'Redes de Computadoras'),
(58, 2, 'Sistemas Operativos'),
(59, 3, 'Inteligencia Artificial'),
(60, 4, 'Estadística'),
(61, 5, 'Cálculo I'),
(62, 6, 'Física I'),
(63, 7, 'Química I'),
(64, 8, 'Algoritmos y Estructuras de Datos'),
(65, 1, 'Programación Orientada a Objetos'),
(66, 2, 'Bases de Datos'),
(67, 3, 'Redes de Computadoras'),
(68, 4, 'Sistemas Operativos'),
(69, 5, 'Inteligencia Artificial'),
(70, 6, 'Estadística'),
(71, 7, 'Cálculo I'),
(72, 8, 'Física I'),
(73, 1, 'Química I'),
(74, 2, 'Algoritmos y Estructuras de Datos'),
(75, 3, 'Programación Orientada a Objetos'),
(76, 4, 'Bases de Datos'),
(77, 5, 'Redes de Computadoras'),
(78, 6, 'Sistemas Operativos'),
(79, 7, 'Inteligencia Artificial'),
(80, 8, 'Estadística'),
(81, 1, 'Cálculo I'),
(82, 2, 'Física I'),
(83, 3, 'Química I'),
(84, 4, 'Algoritmos y Estructuras de Datos'),
(85, 5, 'Programación Orientada a Objetos'),
(86, 6, 'Bases de Datos'),
(87, 7, 'Redes de Computadoras'),
(88, 8, 'Sistemas Operativos'),
(89, 1, 'Inteligencia Artificial'),
(90, 2, 'Estadística'),
(91, 3, 'Cálculo I'),
(92, 4, 'Física I'),
(93, 5, 'Química I'),
(94, 6, 'Algoritmos y Estructuras de Datos'),
(95, 7, 'Programación Orientada a Objetos'),
(96, 8, 'Bases de Datos'),
(97, 1, 'Redes de Computadoras'),
(98, 2, 'Sistemas Operativos'),
(99, 3, 'Inteligencia Artificial'),
(100, 4, 'Estadística');

INSERT INTO Profesor (Paterno, Materno, Nombre, Email, Fecha_inicio) VALUES
('García', 'Sánchez', 'Carlos', 'cgarcia@uaeh.edu.mx', '2000-01-03'),
('Martínez', 'Gómez', 'Maria', 'mmartinez@uaeh.edu.mx', '2001-02-05'),
('Hernández', 'Díaz', 'Juan', 'jhernandez@uaeh.edu.mx', '2002-03-07'),
('López', 'Ramírez', 'Luis', 'llopez@uaeh.edu.mx', '2003-04-09'),
('González', 'Torres', 'Ana', 'agonzalez@uaeh.edu.mx', '2004-05-11'),
('Pérez', 'Flores', 'Jose', 'jperez@uaeh.edu.mx', '2005-06-13'),
('Sánchez', 'Castro', 'Guadalupe', 'gsanchez@uaeh.edu.mx', '2006-07-15'),
('Ramírez', 'Romero', 'JoseLuis', 'jramirez@uaeh.edu.mx', '2007-08-17'),
('Torres', 'Mendoza', 'LuisMiguel', 'ltorres@uaeh.edu.mx', '2008-09-19'),
('Flores', 'Silva', 'Marisol', 'mflores@uaeh.edu.mx', '2009-10-21'),
('Rivera', 'Ramos', 'Francisco', 'frivera@uaeh.edu.mx', '2010-11-23'),
('Gómez', 'Morales', 'Alejandra', 'agomez@uaeh.edu.mx', '2011-12-25'),
('Díaz', 'Ortiz', 'Pedro', 'pdiaz@uaeh.edu.mx', '2012-01-27'),
('Reyes', 'Jiménez', 'Sofia', 'sreyes@uaeh.edu.mx', '2013-02-01'),
('Morales', 'Reyes', 'Miguel', 'mmorales@uaeh.edu.mx', '2014-03-03'),
('Ortiz', 'Cruz', 'Rosa', 'rortiz@uaeh.edu.mx', '2015-04-05'),
('Gutiérrez', 'Vargas', 'Jorge', 'jgutierrez@uaeh.edu.mx', '2000-05-07'),
('Jiménez', 'Medina', 'Fernanda', 'fjimenez@uaeh.edu.mx', '2001-06-09'),
('Ramos', 'Navarro', 'Ricardo', 'rramos@uaeh.edu.mx', '2002-07-11'),
('Vázquez', 'Salazar', 'Valeria', 'vvazquez@uaeh.edu.mx', '2003-08-13'),
('Castro', 'Vega', 'Raul', 'rcastro@uaeh.edu.mx', '2004-09-15'),
('Ruiz', 'Mora', 'Ximena', 'xruiz@uaeh.edu.mx', '2005-10-17'),
('Mendoza', 'Carrillo', 'Hector', 'hmendoza@uaeh.edu.mx', '2006-11-19'),
('Guerrero', 'Acosta', 'Patricia', 'pguerrero@uaeh.edu.mx', '2007-12-21'),
('Silva', 'Montes', 'Enrique', 'esilva@uaeh.edu.mx', '2008-01-23'),
('Romero', 'Espinoza', 'Claudia', 'cromero@uaeh.edu.mx', '2009-02-25'),
('Suárez', 'Cárdenas', 'Vicente', 'vsuarez@uaeh.edu.mx', '2010-03-27'),
('Navarro', 'Guerrero', 'Lucia', 'lnavarro@uaeh.edu.mx', '2011-04-01'),
('Moreno', 'Valdez', 'Roberto', 'rmoreno@uaeh.edu.mx', '2012-05-03'),
('Cruz', 'Robles', 'Carla', 'ccruz@uaeh.edu.mx', '2013-06-05'),
('Vargas', 'Paredes', 'Antonio', 'avargas@uaeh.edu.mx', '2014-07-07'),
('Medina', 'Sandoval', 'Daniela', 'dmedina@uaeh.edu.mx', '2015-08-09'),
('León', 'León', 'Eduardo', 'eleon@uaeh.edu.mx', '2000-09-11'),
('Ortega', 'Rojas', 'Laura', 'lortega@uaeh.edu.mx', '2001-10-13'),
('Cortés', 'Márquez', 'Jesus', 'jcortes@uaeh.edu.mx', '2002-11-15'),
('Domínguez', 'Suárez', 'Alejandro', 'adominguez@uaeh.edu.mx', '2003-12-17'),
('Rojas', 'Aguirre', 'Camila', 'crojas@uaeh.edu.mx', '2004-01-19'),
('Molina', 'Herrera', 'Manuel', 'mmolina@uaeh.edu.mx', '2005-02-21'),
('Marín', 'Castillo', 'Gabriela', 'gmarin@uaeh.edu.mx', '2006-03-23'),
('Soto', 'Ríos', 'Diego', 'dsoto@uaeh.edu.mx', '2007-04-25'),
('Castillo', 'Soto', 'Monica', 'mcastillo@uaeh.edu.mx', '2008-05-27'),
('Ríos', 'Ruiz', 'Raquel', 'rrios@uaeh.edu.mx', '2009-06-01'),
('Ibarra', 'Mena', 'Sergio', 'sibarra@uaeh.edu.mx', '2010-07-03'),
('Vera', 'Cabrera', 'Diana', 'dvera@uaeh.edu.mx', '2011-08-05'),
('Pacheco', 'Bonilla', 'Marco', 'mpacheco@uaeh.edu.mx', '2012-09-07'),
('Camacho', 'Bravo', 'Paola', 'pcamacho@uaeh.edu.mx', '2013-10-09'),
('Figueroa', 'Alvarez', 'Oscar', 'ofigueroa@uaeh.edu.mx', '2014-11-11'),
('Herrera', 'Amaya', 'Veronica', 'vherrera@uaeh.edu.mx', '2015-12-13'),
('Salazar', 'Arteaga', 'Ivan', 'isalazar@uaeh.edu.mx', '2000-01-15'),
('Vega', 'Balderas', 'Mariana', 'mvega@uaeh.edu.mx', '2001-02-17'),
('García', 'Sánchez', 'Hugo', 'hgarcia@uaeh.edu.mx', '2002-03-19'),
('Martínez', 'Gómez', 'Dolores', 'dmartinez@uaeh.edu.mx', '2003-04-21'),
('Hernández', 'Díaz', 'Cesar', 'chernandez@uaeh.edu.mx', '2004-05-23'),
('López', 'Ramírez', 'Sandra', 'slopez@uaeh.edu.mx', '2005-06-25'),
('González', 'Torres', 'Alberto', 'agonzalez@uaeh.edu.mx', '2006-07-27'),
('Pérez', 'Flores', 'Pamela', 'pperez@uaeh.edu.mx', '2007-08-01'),
('Sánchez', 'Castro', 'Ramon', 'rsanchez@uaeh.edu.mx', '2008-09-03'),
('Ramírez', 'Romero', 'Natalia', 'nramirez@uaeh.edu.mx', '2009-10-05'),
('Torres', 'Mendoza', 'Bruno', 'btorres@uaeh.edu.mx', '2010-11-07'),
('Flores', 'Silva', 'Yolanda', 'yflores@uaeh.edu.mx', '2011-12-09'),
('Rivera', 'Ramos', 'Salvador', 'srivera@uaeh.edu.mx', '2012-01-11'),
('Gómez', 'Morales', 'Maribel', 'mgomez@uaeh.edu.mx', '2013-02-13'),
('Díaz', 'Ortiz', 'Ruben', 'rdiaz@uaeh.edu.mx', '2014-03-15'),
('Reyes', 'Jiménez', 'Lucero', 'lreyes@uaeh.edu.mx', '2015-04-17'),
('Morales', 'Reyes', 'Emilio', 'emorales@uaeh.edu.mx', '2000-05-19'),
('Ortiz', 'Cruz', 'Armando', 'aortiz@uaeh.edu.mx', '2001-06-21'),
('Gutiérrez', 'Vargas', 'Luz', 'lgutierrez@uaeh.edu.mx', '2002-07-23'),
('Jiménez', 'Medina', 'Guillermo', 'gjimenez@uaeh.edu.mx', '2003-08-25'),
('Ramos', 'Navarro', 'Ruth', 'rramos@uaeh.edu.mx', '2004-09-27'),
('Vázquez', 'Salazar', 'Ernesto', 'evazquez@uaeh.edu.mx', '2005-10-01'),
('Castro', 'Vega', 'Irma', 'icastro@uaeh.edu.mx', '2006-11-03'),
('Ruiz', 'Mora', 'Bianca', 'bruiz@uaeh.edu.mx', '2007-12-05'),
('Mendoza', 'Carrillo', 'Javier', 'jmendoza@uaeh.edu.mx', '2008-01-07'),
('Guerrero', 'Acosta', 'Ariana', 'aguerrero@uaeh.edu.mx', '2009-02-09'),
('Silva', 'Montes', 'Ignacio', 'isilva@uaeh.edu.mx', '2010-03-11'),
('Romero', 'Espinoza', 'Julian', 'jromero@uaeh.edu.mx', '2011-04-13'),
('Suárez', 'Cárdenas', 'Martha', 'msuarez@uaeh.edu.mx', '2012-05-15'),
('Navarro', 'Guerrero', 'Federico', 'fnavarro@uaeh.edu.mx', '2013-06-17'),
('Moreno', 'Valdez', 'Lorena', 'lmoreno@uaeh.edu.mx', '2014-07-19'),
('Cruz', 'Robles', 'Fernando', 'fcruz@uaeh.edu.mx', '2015-08-21'),
('Vargas', 'Paredes', 'Adrian', 'avargas@uaeh.edu.mx', '2000-09-23'),
('Medina', 'Sandoval', 'Silvia', 'smedina@uaeh.edu.mx', '2001-10-25'),
('León', 'León', 'Arturo', 'aleon@uaeh.edu.mx', '2002-11-27'),
('Ortega', 'Rojas', 'Beatriz', 'bortega@uaeh.edu.mx', '2003-12-01'),
('Cortés', 'Márquez', 'Gustavo', 'gcortes@uaeh.edu.mx', '2004-01-03'),
('Domínguez', 'Suárez', 'Carolina', 'cdominguez@uaeh.edu.mx', '2005-02-05'),
('Rojas', 'Aguirre', 'Noemi', 'nrojas@uaeh.edu.mx', '2006-03-07'),
('Molina', 'Herrera', 'Mario', 'mmolina@uaeh.edu.mx', '2007-04-09'),
('Marín', 'Castillo', 'Samuel', 'smarin@uaeh.edu.mx', '2008-05-11'),
('Soto', 'Ríos', 'Magdalena', 'msoto@uaeh.edu.mx', '2009-06-13'),
('Castillo', 'Soto', 'Mauricio', 'mcastillo@uaeh.edu.mx', '2010-07-15'),
('Ríos', 'Ruiz', 'Esther', 'erios@uaeh.edu.mx', '2011-08-17'),
('Ibarra', 'Mena', 'Alfonso', 'aibarra@uaeh.edu.mx', '2012-09-19'),
('Vera', 'Cabrera', 'Victor', 'vvera@uaeh.edu.mx', '2013-10-21'),
('Pacheco', 'Bonilla', 'Mireya', 'mpacheco@uaeh.edu.mx', '2014-11-23'),
('Camacho', 'Bravo', 'Elena', 'ecamacho@uaeh.edu.mx', '2015-12-25'),
('Figueroa', 'Alvarez', 'Victor', 'vfigueroa@uaeh.edu.mx', '2000-01-27'),
('Herrera', 'Amaya', 'Esteban', 'eherrera@uaeh.edu.mx', '2001-02-01'),
('Salazar', 'Arteaga', 'Marcel', 'msalazar@uaeh.edu.mx', '2002-03-03'),
('Vega', 'Balderas', 'Clara', 'cvega@uaeh.edu.mx', '2003-04-05');

INSERT INTO Curso (ID_Asignatura, ID_Profesor, Periodo, Anio, Grupo) VALUES
(1, 1, 'Enero - Junio', 2020, 1),
(2, 2, 'Agosto - Diciembre', 2021, 2),
(3, 3, 'Enero - Junio', 2022, 3),
(4, 4, 'Agosto - Diciembre', 2023, 4),
(5, 5, 'Enero - Junio', 2024, 5),
(6, 6, 'Agosto - Diciembre', 2025, 1),
(7, 7, 'Enero - Junio', 2020, 2),
(8, 8, 'Agosto - Diciembre', 2021, 3),
(9, 9, 'Enero - Junio', 2022, 4),
(10, 10, 'Agosto - Diciembre', 2023, 5),
(11, 11, 'Enero - Junio', 2024, 1),
(12, 12, 'Agosto - Diciembre', 2025, 2),
(13, 13, 'Enero - Junio', 2020, 3),
(14, 14, 'Agosto - Diciembre', 2021, 4),
(15, 15, 'Enero - Junio', 2022, 5),
(16, 16, 'Agosto - Diciembre', 2023, 1),
(17, 17, 'Enero - Junio', 2024, 2),
(18, 18, 'Agosto - Diciembre', 2025, 3),
(19, 19, 'Enero - Junio', 2020, 4),
(20, 20, 'Agosto - Diciembre', 2021, 5),
(21, 21, 'Enero - Junio', 2022, 1),
(22, 22, 'Agosto - Diciembre', 2023, 2),
(23, 23, 'Enero - Junio', 2024, 3),
(24, 24, 'Agosto - Diciembre', 2025, 4),
(25, 25, 'Enero - Junio', 2020, 5),
(26, 26, 'Agosto - Diciembre', 2021, 1),
(27, 27, 'Enero - Junio', 2022, 2),
(28, 28, 'Agosto - Diciembre', 2023, 3),
(29, 29, 'Enero - Junio', 2024, 4),
(30, 30, 'Agosto - Diciembre', 2025, 5),
(31, 31, 'Enero - Junio', 2020, 1),
(32, 32, 'Agosto - Diciembre', 2021, 2),
(33, 33, 'Enero - Junio', 2022, 3),
(34, 34, 'Agosto - Diciembre', 2023, 4),
(35, 35, 'Enero - Junio', 2024, 5),
(36, 36, 'Agosto - Diciembre', 2025, 1),
(37, 37, 'Enero - Junio', 2020, 2),
(38, 38, 'Agosto - Diciembre', 2021, 3),
(39, 39, 'Enero - Junio', 2022, 4),
(40, 40, 'Agosto - Diciembre', 2023, 5),
(41, 41, 'Enero - Junio', 2024, 1),
(42, 42, 'Agosto - Diciembre', 2025, 2),
(43, 43, 'Enero - Junio', 2020, 3),
(44, 44, 'Agosto - Diciembre', 2021, 4),
(45, 45, 'Enero - Junio', 2022, 5),
(46, 46, 'Agosto - Diciembre', 2023, 1),
(47, 47, 'Enero - Junio', 2024, 2),
(48, 48, 'Agosto - Diciembre', 2025, 3),
(49, 49, 'Enero - Junio', 2020, 4),
(50, 50, 'Agosto - Diciembre', 2021, 5),
(51, 51, 'Enero - Junio', 2022, 1),
(52, 52, 'Agosto - Diciembre', 2023, 2),
(53, 53, 'Enero - Junio', 2024, 3),
(54, 54, 'Agosto - Diciembre', 2025, 4),
(55, 55, 'Enero - Junio', 2020, 5),
(56, 56, 'Agosto - Diciembre', 2021, 1),
(57, 57, 'Enero - Junio', 2022, 2),
(58, 58, 'Agosto - Diciembre', 2023, 3),
(59, 59, 'Enero - Junio', 2024, 4),
(60, 60, 'Agosto - Diciembre', 2025, 5),
(61, 61, 'Enero - Junio', 2020, 1),
(62, 62, 'Agosto - Diciembre', 2021, 2),
(63, 63, 'Enero - Junio', 2022, 3),
(64, 64, 'Agosto - Diciembre', 2023, 4),
(65, 65, 'Enero - Junio', 2024, 5),
(66, 66, 'Agosto - Diciembre', 2025, 1),
(67, 67, 'Enero - Junio', 2020, 2),
(68, 68, 'Agosto - Diciembre', 2021, 3),
(69, 69, 'Enero - Junio', 2022, 4),
(70, 70, 'Agosto - Diciembre', 2023, 5),
(71, 71, 'Enero - Junio', 2024, 1),
(72, 72, 'Agosto - Diciembre', 2025, 2),
(73, 73, 'Enero - Junio', 2020, 3),
(74, 74, 'Agosto - Diciembre', 2021, 4),
(75, 75, 'Enero - Junio', 2022, 5),
(76, 76, 'Agosto - Diciembre', 2023, 1),
(77, 77, 'Enero - Junio', 2024, 2),
(78, 78, 'Agosto - Diciembre', 2025, 3),
(79, 79, 'Enero - Junio', 2020, 4),
(80, 80, 'Agosto - Diciembre', 2021, 5),
(81, 81, 'Enero - Junio', 2022, 1),
(82, 82, 'Agosto - Diciembre', 2023, 2),
(83, 83, 'Enero - Junio', 2024, 3),
(84, 84, 'Agosto - Diciembre', 2025, 4),
(85, 85, 'Enero - Junio', 2020, 5),
(86, 86, 'Agosto - Diciembre', 2021, 1),
(87, 87, 'Enero - Junio', 2022, 2),
(88, 88, 'Agosto - Diciembre', 2023, 3),
(89, 89, 'Enero - Junio', 2024, 4),
(90, 90, 'Agosto - Diciembre', 2025, 5),
(91, 91, 'Enero - Junio', 2020, 1),
(92, 92, 'Agosto - Diciembre', 2021, 2),
(93, 93, 'Enero - Junio', 2022, 3),
(94, 94, 'Agosto - Diciembre', 2023, 4),
(95, 95, 'Enero - Junio', 2024, 5),
(96, 96, 'Agosto - Diciembre', 2025, 1),
(97, 97, 'Enero - Junio', 2020, 2),
(98, 98, 'Agosto - Diciembre', 2021, 3),
(99, 99, 'Enero - Junio', 2022, 4),
(100, 100, 'Agosto - Diciembre', 2023, 5);

INSERT INTO Alumno (Numero_cuenta, Paterno, Materno, Nombre, Email) VALUES
('500001', 'García', 'Sánchez', 'Carlos', 'gs500001@uaeh.edu.mx'),
('500002', 'Martínez', 'Gómez', 'Maria', 'mg500002@uaeh.edu.mx'),
('500003', 'Hernández', 'Díaz', 'Juan', 'hd500003@uaeh.edu.mx'),
('500004', 'López', 'Ramírez', 'Luis', 'lr500004@uaeh.edu.mx'),
('500005', 'González', 'Torres', 'Ana', 'gt500005@uaeh.edu.mx'),
('500006', 'Pérez', 'Flores', 'Jose', 'pf500006@uaeh.edu.mx'),
('500007', 'Sánchez', 'Castro', 'Guadalupe', 'sc500007@uaeh.edu.mx'),
('500008', 'Ramírez', 'Romero', 'JoseLuis', 'rr500008@uaeh.edu.mx'),
('500009', 'Torres', 'Mendoza', 'LuisMiguel', 'tm500009@uaeh.edu.mx'),
('500010', 'Flores', 'Silva', 'Marisol', 'fs500010@uaeh.edu.mx'),
('500011', 'Rivera', 'Ramos', 'Francisco', 'rr500011@uaeh.edu.mx'),
('500012', 'Gómez', 'Morales', 'Alejandra', 'gm500012@uaeh.edu.mx'),
('500013', 'Díaz', 'Ortiz', 'Pedro', 'do500013@uaeh.edu.mx'),
('500014', 'Reyes', 'Jiménez', 'Sofia', 'rj500014@uaeh.edu.mx'),
('500015', 'Morales', 'Reyes', 'Miguel', 'mr500015@uaeh.edu.mx'),
('500016', 'Ortiz', 'Cruz', 'Rosa', 'oc500016@uaeh.edu.mx'),
('500017', 'Gutiérrez', 'Vargas', 'Jorge', 'gv500017@uaeh.edu.mx'),
('500018', 'Jiménez', 'Medina', 'Fernanda', 'jm500018@uaeh.edu.mx'),
('500019', 'Ramos', 'Navarro', 'Ricardo', 'rn500019@uaeh.edu.mx'),
('500020', 'Vázquez', 'Salazar', 'Valeria', 'vs500020@uaeh.edu.mx'),
('500021', 'Castro', 'Vega', 'Raul', 'cv500021@uaeh.edu.mx'),
('500022', 'Ruiz', 'Mora', 'Ximena', 'rm500022@uaeh.edu.mx'),
('500023', 'Mendoza', 'Carrillo', 'Hector', 'mc500023@uaeh.edu.mx'),
('500024', 'Guerrero', 'Acosta', 'Patricia', 'ga500024@uaeh.edu.mx'),
('500025', 'Silva', 'Montes', 'Enrique', 'sm500025@uaeh.edu.mx'),
('500026', 'Romero', 'Espinoza', 'Claudia', 're500026@uaeh.edu.mx'),
('500027', 'Suárez', 'Cárdenas', 'Vicente', 'sc500027@uaeh.edu.mx'),
('500028', 'Navarro', 'Guerrero', 'Lucia', 'ng500028@uaeh.edu.mx'),
('500029', 'Moreno', 'Valdez', 'Roberto', 'mv500029@uaeh.edu.mx'),
('500030', 'Cruz', 'Robles', 'Carla', 'cr500030@uaeh.edu.mx'),
('500031', 'Vargas', 'Paredes', 'Antonio', 'vp500031@uaeh.edu.mx'),
('500032', 'Medina', 'Sandoval', 'Daniela', 'ms500032@uaeh.edu.mx'),
('500033', 'León', 'León', 'Eduardo', 'll500033@uaeh.edu.mx'),
('500034', 'Ortega', 'Rojas', 'Laura', 'or500034@uaeh.edu.mx'),
('500035', 'Cortés', 'Márquez', 'Jesus', 'cm500035@uaeh.edu.mx'),
('500036', 'Domínguez', 'Suárez', 'Alejandro', 'ds500036@uaeh.edu.mx'),
('500037', 'Rojas', 'Aguirre', 'Camila', 'ra500037@uaeh.edu.mx'),
('500038', 'Molina', 'Herrera', 'Manuel', 'mh500038@uaeh.edu.mx'),
('500039', 'Marín', 'Castillo', 'Gabriela', 'mc500039@uaeh.edu.mx'),
('500040', 'Soto', 'Ríos', 'Diego', 'sr500040@uaeh.edu.mx'),
('500041', 'Castillo', 'Soto', 'Monica', 'cs500041@uaeh.edu.mx'),
('500042', 'Ríos', 'Ruiz', 'Raquel', 'rr500042@uaeh.edu.mx'),
('500043', 'Ibarra', 'Mena', 'Sergio', 'im500043@uaeh.edu.mx'),
('500044', 'Vera', 'Cabrera', 'Diana', 'vc500044@uaeh.edu.mx'),
('500045', 'Pacheco', 'Bonilla', 'Marco', 'pb500045@uaeh.edu.mx'),
('500046', 'Camacho', 'Bravo', 'Paola', 'cb500046@uaeh.edu.mx'),
('500047', 'Figueroa', 'Alvarez', 'Oscar', 'fa500047@uaeh.edu.mx'),
('500048', 'Herrera', 'Amaya', 'Veronica', 'ha500048@uaeh.edu.mx'),
('500049', 'Salazar', 'Arteaga', 'Ivan', 'sa500049@uaeh.edu.mx'),
('500050', 'Vega', 'Balderas', 'Mariana', 'vb500050@uaeh.edu.mx'),
('500051', 'García', 'Sánchez', 'Hugo', 'gs500051@uaeh.edu.mx'),
('500052', 'Martínez', 'Gómez', 'Dolores', 'mg500052@uaeh.edu.mx'),
('500053', 'Hernández', 'Díaz', 'Cesar', 'hd500053@uaeh.edu.mx'),
('500054', 'López', 'Ramírez', 'Sandra', 'lr500054@uaeh.edu.mx'),
('500055', 'González', 'Torres', 'Alberto', 'gt500055@uaeh.edu.mx'),
('500056', 'Pérez', 'Flores', 'Pamela', 'pf500056@uaeh.edu.mx'),
('500057', 'Sánchez', 'Castro', 'Ramon', 'sc500057@uaeh.edu.mx'),
('500058', 'Ramírez', 'Romero', 'Natalia', 'rr500058@uaeh.edu.mx'),
('500059', 'Torres', 'Mendoza', 'Bruno', 'tm500059@uaeh.edu.mx'),
('500060', 'Flores', 'Silva', 'Yolanda', 'fs500060@uaeh.edu.mx'),
('500061', 'Rivera', 'Ramos', 'Salvador', 'rr500061@uaeh.edu.mx'),
('500062', 'Gómez', 'Morales', 'Maribel', 'gm500062@uaeh.edu.mx'),
('500063', 'Díaz', 'Ortiz', 'Ruben', 'do500063@uaeh.edu.mx'),
('500064', 'Reyes', 'Jiménez', 'Lucero', 'rj500064@uaeh.edu.mx'),
('500065', 'Morales', 'Reyes', 'Emilio', 'mr500065@uaeh.edu.mx'),
('500066', 'Ortiz', 'Cruz', 'Armando', 'oc500066@uaeh.edu.mx'),
('500067', 'Gutiérrez', 'Vargas', 'Luz', 'gv500067@uaeh.edu.mx'),
('500068', 'Jiménez', 'Medina', 'Guillermo', 'jm500068@uaeh.edu.mx'),
('500069', 'Ramos', 'Navarro', 'Ruth', 'rn500069@uaeh.edu.mx'),
('500070', 'Vázquez', 'Salazar', 'Ernesto', 'vs500070@uaeh.edu.mx'),
('500071', 'Castro', 'Vega', 'Irma', 'cv500071@uaeh.edu.mx'),
('500072', 'Ruiz', 'Mora', 'Bianca', 'rm500072@uaeh.edu.mx'),
('500073', 'Mendoza', 'Carrillo', 'Javier', 'mc500073@uaeh.edu.mx'),
('500074', 'Guerrero', 'Acosta', 'Ariana', 'ga500074@uaeh.edu.mx'),
('500075', 'Silva', 'Montes', 'Ignacio', 'sm500075@uaeh.edu.mx'),
('500076', 'Romero', 'Espinoza', 'Julian', 're500076@uaeh.edu.mx'),
('500077', 'Suárez', 'Cárdenas', 'Martha', 'sc500077@uaeh.edu.mx'),
('500078', 'Navarro', 'Guerrero', 'Federico', 'ng500078@uaeh.edu.mx'),
('500079', 'Moreno', 'Valdez', 'Lorena', 'mv500079@uaeh.edu.mx'),
('500080', 'Cruz', 'Robles', 'Fernando', 'cr500080@uaeh.edu.mx'),
('500081', 'Vargas', 'Paredes', 'Adrian', 'vp500081@uaeh.edu.mx'),
('500082', 'Medina', 'Sandoval', 'Silvia', 'ms500082@uaeh.edu.mx'),
('500083', 'León', 'León', 'Arturo', 'll500083@uaeh.edu.mx'),
('500084', 'Ortega', 'Rojas', 'Beatriz', 'or500084@uaeh.edu.mx'),
('500085', 'Cortés', 'Márquez', 'Gustavo', 'cm500085@uaeh.edu.mx'),
('500086', 'Domínguez', 'Suárez', 'Carolina', 'ds500086@uaeh.edu.mx'),
('500087', 'Rojas', 'Aguirre', 'Noemi', 'ra500087@uaeh.edu.mx'),
('500088', 'Molina', 'Herrera', 'Mario', 'mh500088@uaeh.edu.mx'),
('500089', 'Marín', 'Castillo', 'Samuel', 'mc500089@uaeh.edu.mx'),
('500090', 'Soto', 'Ríos', 'Magdalena', 'sr500090@uaeh.edu.mx'),
('500091', 'Castillo', 'Soto', 'Mauricio', 'cs500091@uaeh.edu.mx'),
('500092', 'Ríos', 'Ruiz', 'Esther', 'rr500092@uaeh.edu.mx'),
('500093', 'Ibarra', 'Mena', 'Alfonso', 'im500093@uaeh.edu.mx'),
('500094', 'Vera', 'Cabrera', 'Victor', 'vc500094@uaeh.edu.mx'),
('500095', 'Pacheco', 'Bonilla', 'Mireya', 'pb500095@uaeh.edu.mx'),
('500096', 'Camacho', 'Bravo', 'Elena', 'cb500096@uaeh.edu.mx'),
('500097', 'Figueroa', 'Alvarez', 'Victor', 'fa500097@uaeh.edu.mx'),
('500098', 'Herrera', 'Amaya', 'Esteban', 'ha500098@uaeh.edu.mx'),
('500099', 'Salazar', 'Arteaga', 'Marcel', 'sa500099@uaeh.edu.mx'),
('500100', 'Vega', 'Balderas', 'Clara', 'vb500100@uaeh.edu.mx');

INSERT INTO Alumno_curso (ID_Alumno, ID_Curso, Calificacion) VALUES
(1, 1, 6.0),
(2, 2, 6.1),
(3, 3, 6.2),
(4, 4, 6.3),
(5, 5, 6.4),
(6, 6, 6.5),
(7, 7, 6.6),
(8, 8, 6.7),
(9, 9, 6.8),
(10, 10, 6.9),
(11, 11, 7.0),
(12, 12, 7.1),
(13, 13, 7.2),
(14, 14, 7.3),
(15, 15, 7.4),
(16, 16, 7.5),
(17, 17, 7.6),
(18, 18, 7.7),
(19, 19, 7.8),
(20, 20, 7.9),
(21, 21, 8.0),
(22, 22, 8.1),
(23, 23, 8.2),
(24, 24, 8.3),
(25, 25, 8.4),
(26, 26, 8.5),
(27, 27, 8.6),
(28, 28, 8.7),
(29, 29, 8.8),
(30, 30, 8.9),
(31, 31, 9.0),
(32, 32, 9.1),
(33, 33, 9.2),
(34, 34, 9.3),
(35, 35, 9.4),
(36, 36, 9.5),
(37, 37, 9.6),
(38, 38, 9.7),
(39, 39, 9.8),
(40, 40, 9.9),
(41, 41, 10.0),
(42, 42, 6.0),
(43, 43, 6.1),
(44, 44, 6.2),
(45, 45, 6.3),
(46, 46, 6.4),
(47, 47, 6.5),
(48, 48, 6.6),
(49, 49, 6.7),
(50, 50, 6.8),
(51, 51, 6.9),
(52, 52, 7.0),
(53, 53, 7.1),
(54, 54, 7.2),
(55, 55, 7.3),
(56, 56, 7.4),
(57, 57, 7.5),
(58, 58, 7.6),
(59, 59, 7.7),
(60, 60, 7.8),
(61, 61, 7.9),
(62, 62, 8.0),
(63, 63, 8.1),
(64, 64, 8.2),
(65, 65, 8.3),
(66, 66, 8.4),
(67, 67, 8.5),
(68, 68, 8.6),
(69, 69, 8.7),
(70, 70, 8.8),
(71, 71, 8.9),
(72, 72, 9.0),
(73, 73, 9.1),
(74, 74, 9.2),
(75, 75, 9.3),
(76, 76, 9.4),
(77, 77, 9.5),
(78, 78, 9.6),
(79, 79, 9.7),
(80, 80, 9.8),
(81, 81, 9.9),
(82, 82, 10.0),
(83, 83, 6.0),
(84, 84, 6.1),
(85, 85, 6.2),
(86, 86, 6.3),
(87, 87, 6.4),
(88, 88, 6.5),
(89, 89, 6.6),
(90, 90, 6.7),
(91, 91, 6.8),
(92, 92, 6.9),
(93, 93, 7.0),
(94, 94, 7.1),
(95, 95, 7.2),
(96, 96, 7.3),
(97, 97, 7.4),
(98, 98, 7.5),
(99, 99, 7.6),
(100, 100, 7.7);

CREATE DATABASE INTEGRANTE;
USE INTEGRANTE;

CREATE TABLE Integrante (
	ID_Integrante INT AUTO_INCREMENT,
	Paterno VARCHAR (80),
	Materno VARCHAR (80),
	Nombre VARCHAR (80),
	PRIMARY KEY (ID_Integrante)
);

CREATE TABLE Cuerpo_academico (
	ID_Cuerpo INT AUTO_INCREMENT,
	ID_Integrante INT,
	Nombre VARCHAR (250),
	PRIMARY KEY (ID_Cuerpo),
	FOREIGN KEY (ID_Integrante) REFERENCES Integrante (ID_Integrante)
);

CREATE TABLE Linea (
	ID_Linea INT AUTO_INCREMENT,
    ID_Cuerpo INT,
	Nombre VARCHAR (120),
	Descripcion VARCHAR (500),
	PRIMARY KEY (ID_Linea),
	FOREIGN KEY (ID_Cuerpo) REFERENCES Cuerpo_academico (ID_Cuerpo)
);

CREATE TABLE Integrante_linea (
	ID_Integrantelinea INT AUTO_INCREMENT,
	ID_Integrante INT,
	ID_Linea INT,
	Inicio DATE,
	Termino DATE,
	Vigente BOOLEAN,
	PRIMARY KEY (ID_Integrantelinea),
	FOREIGN KEY (ID_Integrante) REFERENCES Integrante (ID_Integrante),
	FOREIGN KEY (ID_Linea) REFERENCES Linea (ID_Linea)
);

INSERT INTO Integrante (Paterno, Materno, Nombre) VALUES
('García', 'Sánchez', 'Carlos'),
('Martínez', 'Gómez', 'Maria'),
('Hernández', 'Díaz', 'Juan'),
('López', 'Ramírez', 'Luis'),
('González', 'Torres', 'Ana'),
('Pérez', 'Flores', 'Jose'),
('Sánchez', 'Castro', 'Guadalupe'),
('Ramírez', 'Romero', 'JoseLuis'),
('Torres', 'Mendoza', 'LuisMiguel'),
('Flores', 'Silva', 'Marisol'),
('Rivera', 'Ramos', 'Francisco'),
('Gómez', 'Morales', 'Alejandra'),
('Díaz', 'Ortiz', 'Pedro'),
('Reyes', 'Jiménez', 'Sofia'),
('Morales', 'Reyes', 'Miguel'),
('Ortiz', 'Cruz', 'Rosa'),
('Gutiérrez', 'Vargas', 'Jorge'),
('Jiménez', 'Medina', 'Fernanda'),
('Ramos', 'Navarro', 'Ricardo'),
('Vázquez', 'Salazar', 'Valeria'),
('Castro', 'Vega', 'Raul'),
('Ruiz', 'Mora', 'Ximena'),
('Mendoza', 'Carrillo', 'Hector'),
('Guerrero', 'Acosta', 'Patricia'),
('Silva', 'Montes', 'Enrique'),
('Romero', 'Espinoza', 'Claudia'),
('Suárez', 'Cárdenas', 'Vicente'),
('Navarro', 'Guerrero', 'Lucia'),
('Moreno', 'Valdez', 'Roberto'),
('Cruz', 'Robles', 'Carla'),
('Vargas', 'Paredes', 'Antonio'),
('Medina', 'Sandoval', 'Daniela'),
('León', 'León', 'Eduardo'),
('Ortega', 'Rojas', 'Laura'),
('Cortés', 'Márquez', 'Jesus'),
('Domínguez', 'Suárez', 'Alejandro'),
('Rojas', 'Aguirre', 'Camila'),
('Molina', 'Herrera', 'Manuel'),
('Marín', 'Castillo', 'Gabriela'),
('Soto', 'Ríos', 'Diego'),
('Castillo', 'Soto', 'Monica'),
('Ríos', 'Ruiz', 'Raquel'),
('Ibarra', 'Mena', 'Sergio'),
('Vera', 'Cabrera', 'Diana'),
('Pacheco', 'Bonilla', 'Marco'),
('Camacho', 'Bravo', 'Paola'),
('Figueroa', 'Alvarez', 'Oscar'),
('Herrera', 'Amaya', 'Veronica'),
('Salazar', 'Arteaga', 'Ivan'),
('Vega', 'Balderas', 'Mariana'),
('García', 'Sánchez', 'Hugo'),
('Martínez', 'Gómez', 'Dolores'),
('Hernández', 'Díaz', 'Cesar'),
('López', 'Ramírez', 'Sandra'),
('González', 'Torres', 'Alberto'),
('Pérez', 'Flores', 'Pamela'),
('Sánchez', 'Castro', 'Ramon'),
('Ramírez', 'Romero', 'Natalia'),
('Torres', 'Mendoza', 'Bruno'),
('Flores', 'Silva', 'Yolanda'),
('Rivera', 'Ramos', 'Salvador'),
('Gómez', 'Morales', 'Maribel'),
('Díaz', 'Ortiz', 'Ruben'),
('Reyes', 'Jiménez', 'Lucero'),
('Morales', 'Reyes', 'Emilio'),
('Ortiz', 'Cruz', 'Armando'),
('Gutiérrez', 'Vargas', 'Luz'),
('Jiménez', 'Medina', 'Guillermo'),
('Ramos', 'Navarro', 'Ruth'),
('Vázquez', 'Salazar', 'Ernesto'),
('Castro', 'Vega', 'Irma'),
('Ruiz', 'Mora', 'Bianca'),
('Mendoza', 'Carrillo', 'Javier'),
('Guerrero', 'Acosta', 'Ariana'),
('Silva', 'Montes', 'Ignacio'),
('Romero', 'Espinoza', 'Julian'),
('Suárez', 'Cárdenas', 'Martha'),
('Navarro', 'Guerrero', 'Federico'),
('Moreno', 'Valdez', 'Lorena'),
('Cruz', 'Robles', 'Fernando'),
('Vargas', 'Paredes', 'Adrian'),
('Medina', 'Sandoval', 'Silvia'),
('León', 'León', 'Arturo'),
('Ortega', 'Rojas', 'Beatriz'),
('Cortés', 'Márquez', 'Gustavo'),
('Domínguez', 'Suárez', 'Carolina'),
('Rojas', 'Aguirre', 'Noemi'),
('Molina', 'Herrera', 'Mario'),
('Marín', 'Castillo', 'Samuel'),
('Soto', 'Ríos', 'Magdalena'),
('Castillo', 'Soto', 'Mauricio'),
('Ríos', 'Ruiz', 'Esther'),
('Ibarra', 'Mena', 'Alfonso'),
('Vera', 'Cabrera', 'Victor'),
('Pacheco', 'Bonilla', 'Mireya'),
('Camacho', 'Bravo', 'Elena'),
('Figueroa', 'Alvarez', 'Victor'),
('Herrera', 'Amaya', 'Esteban'),
('Salazar', 'Arteaga', 'Marcel'),
('Vega', 'Balderas', 'Clara');

INSERT INTO Cuerpo_academico (ID_Integrante, Nombre) VALUES
(1, 'Cuerpo Académico de Computación Avanzada'),
(2, 'Cuerpo Académico de Biotecnología Aplicada'),
(3, 'Cuerpo Académico de Energías Renovables'),
(4, 'Cuerpo Académico de Ciencias de Materiales'),
(5, 'Cuerpo Académico de Robótica Colaborativa'),
(6, 'Cuerpo Académico de Inteligencia Artificial'),
(7, 'Cuerpo Académico de Seguridad Informática'),
(8, 'Cuerpo Académico de Sistemas Embebidos'),
(9, 'Cuerpo Académico de Nanotecnología'),
(10, 'Cuerpo Académico de Genómica Computacional'),
(11, 'Cuerpo Académico de Computación Avanzada'),
(12, 'Cuerpo Académico de Biotecnología Aplicada'),
(13, 'Cuerpo Académico de Energías Renovables'),
(14, 'Cuerpo Académico de Ciencias de Materiales'),
(15, 'Cuerpo Académico de Robótica Colaborativa'),
(16, 'Cuerpo Académico de Inteligencia Artificial'),
(17, 'Cuerpo Académico de Seguridad Informática'),
(18, 'Cuerpo Académico de Sistemas Embebidos'),
(19, 'Cuerpo Académico de Nanotecnología'),
(20, 'Cuerpo Académico de Genómica Computacional'),
(21, 'Cuerpo Académico de Computación Avanzada'),
(22, 'Cuerpo Académico de Biotecnología Aplicada'),
(23, 'Cuerpo Académico de Energías Renovables'),
(24, 'Cuerpo Académico de Ciencias de Materiales'),
(25, 'Cuerpo Académico de Robótica Colaborativa'),
(26, 'Cuerpo Académico de Inteligencia Artificial'),
(27, 'Cuerpo Académico de Seguridad Informática'),
(28, 'Cuerpo Académico de Sistemas Embebidos'),
(29, 'Cuerpo Académico de Nanotecnología'),
(30, 'Cuerpo Académico de Genómica Computacional'),
(31, 'Cuerpo Académico de Computación Avanzada'),
(32, 'Cuerpo Académico de Biotecnología Aplicada'),
(33, 'Cuerpo Académico de Energías Renovables'),
(34, 'Cuerpo Académico de Ciencias de Materiales'),
(35, 'Cuerpo Académico de Robótica Colaborativa'),
(36, 'Cuerpo Académico de Inteligencia Artificial'),
(37, 'Cuerpo Académico de Seguridad Informática'),
(38, 'Cuerpo Académico de Sistemas Embebidos'),
(39, 'Cuerpo Académico de Nanotecnología'),
(40, 'Cuerpo Académico de Genómica Computacional'),
(41, 'Cuerpo Académico de Computación Avanzada'),
(42, 'Cuerpo Académico de Biotecnología Aplicada'),
(43, 'Cuerpo Académico de Energías Renovables'),
(44, 'Cuerpo Académico de Ciencias de Materiales'),
(45, 'Cuerpo Académico de Robótica Colaborativa'),
(46, 'Cuerpo Académico de Inteligencia Artificial'),
(47, 'Cuerpo Académico de Seguridad Informática'),
(48, 'Cuerpo Académico de Sistemas Embebidos'),
(49, 'Cuerpo Académico de Nanotecnología'),
(50, 'Cuerpo Académico de Genómica Computacional'),
(51, 'Cuerpo Académico de Computación Avanzada'),
(52, 'Cuerpo Académico de Biotecnología Aplicada'),
(53, 'Cuerpo Académico de Energías Renovables'),
(54, 'Cuerpo Académico de Ciencias de Materiales'),
(55, 'Cuerpo Académico de Robótica Colaborativa'),
(56, 'Cuerpo Académico de Inteligencia Artificial'),
(57, 'Cuerpo Académico de Seguridad Informática'),
(58, 'Cuerpo Académico de Sistemas Embebidos'),
(59, 'Cuerpo Académico de Nanotecnología'),
(60, 'Cuerpo Académico de Genómica Computacional'),
(61, 'Cuerpo Académico de Computación Avanzada'),
(62, 'Cuerpo Académico de Biotecnología Aplicada'),
(63, 'Cuerpo Académico de Energías Renovables'),
(64, 'Cuerpo Académico de Ciencias de Materiales'),
(65, 'Cuerpo Académico de Robótica Colaborativa'),
(66, 'Cuerpo Académico de Inteligencia Artificial'),
(67, 'Cuerpo Académico de Seguridad Informática'),
(68, 'Cuerpo Académico de Sistemas Embebidos'),
(69, 'Cuerpo Académico de Nanotecnología'),
(70, 'Cuerpo Académico de Genómica Computacional'),
(71, 'Cuerpo Académico de Computación Avanzada'),
(72, 'Cuerpo Académico de Biotecnología Aplicada'),
(73, 'Cuerpo Académico de Energías Renovables'),
(74, 'Cuerpo Académico de Ciencias de Materiales'),
(75, 'Cuerpo Académico de Robótica Colaborativa'),
(76, 'Cuerpo Académico de Inteligencia Artificial'),
(77, 'Cuerpo Académico de Seguridad Informática'),
(78, 'Cuerpo Académico de Sistemas Embebidos'),
(79, 'Cuerpo Académico de Nanotecnología'),
(80, 'Cuerpo Académico de Genómica Computacional'),
(81, 'Cuerpo Académico de Computación Avanzada'),
(82, 'Cuerpo Académico de Biotecnología Aplicada'),
(83, 'Cuerpo Académico de Energías Renovables'),
(84, 'Cuerpo Académico de Ciencias de Materiales'),
(85, 'Cuerpo Académico de Robótica Colaborativa'),
(86, 'Cuerpo Académico de Inteligencia Artificial'),
(87, 'Cuerpo Académico de Seguridad Informática'),
(88, 'Cuerpo Académico de Sistemas Embebidos'),
(89, 'Cuerpo Académico de Nanotecnología'),
(90, 'Cuerpo Académico de Genómica Computacional'),
(91, 'Cuerpo Académico de Computación Avanzada'),
(92, 'Cuerpo Académico de Biotecnología Aplicada'),
(93, 'Cuerpo Académico de Energías Renovables'),
(94, 'Cuerpo Académico de Ciencias de Materiales'),
(95, 'Cuerpo Académico de Robótica Colaborativa'),
(96, 'Cuerpo Académico de Inteligencia Artificial'),
(97, 'Cuerpo Académico de Seguridad Informática'),
(98, 'Cuerpo Académico de Sistemas Embebidos'),
(99, 'Cuerpo Académico de Nanotecnología'),
(100, 'Cuerpo Académico de Genómica Computacional');

INSERT INTO Linea (ID_Cuerpo, Nombre, Descripcion) VALUES
(1, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(2, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(3, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(4, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(5, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(6, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(7, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(8, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(9, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(10, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(11, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(12, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(13, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(14, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(15, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(16, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(17, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(18, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(19, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(20, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(21, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(22, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(23, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(24, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(25, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(26, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(27, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(28, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(29, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(30, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(31, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(32, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(33, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(34, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(35, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(36, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(37, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(38, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(39, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(40, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(41, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(42, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(43, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(44, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(45, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(46, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(47, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(48, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(49, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(50, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(51, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(52, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(53, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(54, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(55, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(56, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(57, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(58, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(59, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(60, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(61, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(62, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(63, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(64, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(65, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(66, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(67, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(68, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(69, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(70, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(71, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(72, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(73, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(74, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(75, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(76, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(77, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(78, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(79, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(80, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(81, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(82, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(83, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(84, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(85, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(86, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(87, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(88, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(89, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(90, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas'),
(91, 'Línea de investigación de Computación Avanzada', 'Investigación en computación avanzada y sus aplicaciones avanzadas'),
(92, 'Línea de investigación de Biotecnología Aplicada', 'Investigación en biotecnología aplicada y sus aplicaciones avanzadas'),
(93, 'Línea de investigación de Energías Renovables', 'Investigación en energías renovables y sus aplicaciones avanzadas'),
(94, 'Línea de investigación de Ciencias de Materiales', 'Investigación en ciencias de materiales y sus aplicaciones avanzadas'),
(95, 'Línea de investigación de Robótica Colaborativa', 'Investigación en robótica colaborativa y sus aplicaciones avanzadas'),
(96, 'Línea de investigación de Inteligencia Artificial', 'Investigación en inteligencia artificial y sus aplicaciones avanzadas'),
(97, 'Línea de investigación de Seguridad Informática', 'Investigación en seguridad informática y sus aplicaciones avanzadas'),
(98, 'Línea de investigación de Sistemas Embebidos', 'Investigación en sistemas embebidos y sus aplicaciones avanzadas'),
(99, 'Línea de investigación de Nanotecnología', 'Investigación en nanotecnología y sus aplicaciones avanzadas'),
(100, 'Línea de investigación de Genómica Computacional', 'Investigación en genómica computacional y sus aplicaciones avanzadas');

INSERT INTO Integrante_linea (ID_Integrante, ID_Linea, Inicio, Termino, Vigente) VALUES
(1, 1, '2018-01-03', '2019-01-03', TRUE),
(2, 2, '2019-02-05', '2020-02-05', FALSE),
(3, 3, '2020-03-07', '2021-03-07', TRUE),
(4, 4, '2021-04-09', '2022-04-09', FALSE),
(5, 5, '2022-05-11', '2023-05-11', TRUE),
(6, 6, '2023-06-13', '2024-06-13', FALSE),
(7, 7, '2024-07-15', '2025-07-15', TRUE),
(8, 8, '2018-08-17', '2019-08-17', FALSE),
(9, 9, '2019-09-19', '2020-09-19', TRUE),
(10, 10, '2020-10-21', '2021-10-21', FALSE),
(11, 11, '2021-11-23', '2022-11-23', TRUE),
(12, 12, '2022-12-25', '2023-12-25', FALSE),
(13, 13, '2023-01-27', '2024-01-27', TRUE),
(14, 14, '2024-02-01', '2025-02-01', FALSE),
(15, 15, '2018-03-03', '2019-03-03', TRUE),
(16, 16, '2019-04-05', '2020-04-05', FALSE),
(17, 17, '2020-05-07', '2021-05-07', TRUE),
(18, 18, '2021-06-09', '2022-06-09', FALSE),
(19, 19, '2022-07-11', '2023-07-11', TRUE),
(20, 20, '2023-08-13', '2024-08-13', FALSE),
(21, 21, '2024-09-15', '2025-09-15', TRUE),
(22, 22, '2018-10-17', '2019-10-17', FALSE),
(23, 23, '2019-11-19', '2020-11-19', TRUE),
(24, 24, '2020-12-21', '2021-12-21', FALSE),
(25, 25, '2021-01-23', '2022-01-23', TRUE),
(26, 26, '2022-02-25', '2023-02-25', FALSE),
(27, 27, '2023-03-27', '2024-03-27', TRUE),
(28, 28, '2024-04-01', '2025-04-01', FALSE),
(29, 29, '2018-05-03', '2019-05-03', TRUE),
(30, 30, '2019-06-05', '2020-06-05', FALSE),
(31, 31, '2020-07-07', '2021-07-07', TRUE),
(32, 32, '2021-08-09', '2022-08-09', FALSE),
(33, 33, '2022-09-11', '2023-09-11', TRUE),
(34, 34, '2023-10-13', '2024-10-13', FALSE),
(35, 35, '2024-11-15', '2025-11-15', TRUE),
(36, 36, '2018-12-17', '2019-12-17', FALSE),
(37, 37, '2019-01-19', '2020-01-19', TRUE),
(38, 38, '2020-02-21', '2021-02-21', FALSE),
(39, 39, '2021-03-23', '2022-03-23', TRUE),
(40, 40, '2022-04-25', '2023-04-25', FALSE),
(41, 41, '2023-05-27', '2024-05-27', TRUE),
(42, 42, '2024-06-01', '2025-06-01', FALSE),
(43, 43, '2018-07-03', '2019-07-03', TRUE),
(44, 44, '2019-08-05', '2020-08-05', FALSE),
(45, 45, '2020-09-07', '2021-09-07', TRUE),
(46, 46, '2021-10-09', '2022-10-09', FALSE),
(47, 47, '2022-11-11', '2023-11-11', TRUE),
(48, 48, '2023-12-13', '2024-12-13', FALSE),
(49, 49, '2024-01-15', '2025-01-15', TRUE),
(50, 50, '2018-02-17', '2019-02-17', FALSE),
(51, 51, '2019-03-19', '2020-03-19', TRUE),
(52, 52, '2020-04-21', '2021-04-21', FALSE),
(53, 53, '2021-05-23', '2022-05-23', TRUE),
(54, 54, '2022-06-25', '2023-06-25', FALSE),
(55, 55, '2023-07-27', '2024-07-27', TRUE),
(56, 56, '2024-08-01', '2025-08-01', FALSE),
(57, 57, '2018-09-03', '2019-09-03', TRUE),
(58, 58, '2019-10-05', '2020-10-05', FALSE),
(59, 59, '2020-11-07', '2021-11-07', TRUE),
(60, 60, '2021-12-09', '2022-12-09', FALSE),
(61, 61, '2022-01-11', '2023-01-11', TRUE),
(62, 62, '2023-02-13', '2024-02-13', FALSE),
(63, 63, '2024-03-15', '2025-03-15', TRUE),
(64, 64, '2018-04-17', '2019-04-17', FALSE),
(65, 65, '2019-05-19', '2020-05-19', TRUE),
(66, 66, '2020-06-21', '2021-06-21', FALSE),
(67, 67, '2021-07-23', '2022-07-23', TRUE),
(68, 68, '2022-08-25', '2023-08-25', FALSE),
(69, 69, '2023-09-27', '2024-09-27', TRUE),
(70, 70, '2024-10-01', '2025-10-01', FALSE),
(71, 71, '2018-11-03', '2019-11-03', TRUE),
(72, 72, '2019-12-05', '2020-12-05', FALSE),
(73, 73, '2020-01-07', '2021-01-07', TRUE),
(74, 74, '2021-02-09', '2022-02-09', FALSE),
(75, 75, '2022-03-11', '2023-03-11', TRUE),
(76, 76, '2023-04-13', '2024-04-13', FALSE),
(77, 77, '2024-05-15', '2025-05-15', TRUE),
(78, 78, '2018-06-17', '2019-06-17', FALSE),
(79, 79, '2019-07-19', '2020-07-19', TRUE),
(80, 80, '2020-08-21', '2021-08-21', FALSE),
(81, 81, '2021-09-23', '2022-09-23', TRUE),
(82, 82, '2022-10-25', '2023-10-25', FALSE),
(83, 83, '2023-11-27', '2024-11-27', TRUE),
(84, 84, '2024-12-01', '2025-12-01', FALSE),
(85, 85, '2018-01-03', '2019-01-03', TRUE),
(86, 86, '2019-02-05', '2020-02-05', FALSE),
(87, 87, '2020-03-07', '2021-03-07', TRUE),
(88, 88, '2021-04-09', '2022-04-09', FALSE),
(89, 89, '2022-05-11', '2023-05-11', TRUE),
(90, 90, '2023-06-13', '2024-06-13', FALSE),
(91, 91, '2024-07-15', '2025-07-15', TRUE),
(92, 92, '2018-08-17', '2019-08-17', FALSE),
(93, 93, '2019-09-19', '2020-09-19', TRUE),
(94, 94, '2020-10-21', '2021-10-21', FALSE),
(95, 95, '2021-11-23', '2022-11-23', TRUE),
(96, 96, '2022-12-25', '2023-12-25', FALSE),
(97, 97, '2023-01-27', '2024-01-27', TRUE),
(98, 98, '2024-02-01', '2025-02-01', FALSE),
(99, 99, '2018-03-03', '2019-03-03', TRUE),
(100, 100, '2019-04-05', '2020-04-05', FALSE);

CREATE DATABASE DataWarehouse;
USE DataWarehouse;

CREATE TABLE Investigador (
	ID_Investigador INT AUTO_INCREMENT,
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (120),
    ORCID VARCHAR (30),
    Email VARCHAR (150),
    Movil VARCHAR (15),
    PRIMARY KEY (ID_Investigador)
);

CREATE TABLE Produccion (
	ID_Produccion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Tipo VARCHAR (20),
    Título VARCHAR (230),
    Anio INT,
    PRIMARY KEY (ID_Produccion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Formacion (
	ID_Formacion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Grado VARCHAR (18),
    Institucion VARCHAR (70),
    Nombre VARCHAR (120),
    Fecha_Termino DATE,
    PRIMARY KEY (ID_Formacion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Adscripcion (
	ID_Adscripcion INT AUTO_INCREMENT,
    ID_Investigador INT,
    Instituto VARCHAR (80),
    Area VARCHAR (150),
    Nombramiento VARCHAR(50),
    Fecha_ingreso DATE,
    PRIMARY KEY (ID_Adscripcion),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Proyecto (
	ID_Proyecto INT AUTO_INCREMENT,
    ID_Investigador INT,
    Nombre VARCHAR (250),
    Inicio DATE,
    Final DATE,
    PRIMARY KEY (ID_Proyecto),
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador (ID_Investigador)
);

CREATE TABLE Programa (
	ID_Programa INT AUTO_INCREMENT,
    Nivel VARCHAR (25),
    Nombre VARCHAR (150),
    Fecha DATE,
    PRIMARY KEY (ID_Programa)
);

CREATE TABLE Asignatura (
	ID_Asignatura INT AUTO_INCREMENT,
    ID_Programa INT,
    Semestre INT,
    Nombre VARCHAR (120),
    PRIMARY KEY (ID_Asignatura),
    FOREIGN KEY (ID_Programa) REFERENCES Programa (ID_Programa)
);

CREATE TABLE Profesor (
	ID_Profesor INT AUTO_INCREMENT,
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (80),
    Email VARCHAR (150),
    Fecha_inicio DATE,
    PRIMARY KEY (ID_Profesor)
);

CREATE TABLE Curso (
	ID_Curso INT AUTO_INCREMENT,
    ID_Asignatura INT,
    ID_Profesor INT,
    Periodo VARCHAR (25),
    Anio INT,
    Grupo INT,
    PRIMARY KEY (ID_Curso),
    FOREIGN KEY (ID_Asignatura) REFERENCES Asignatura (ID_Asignatura),
    FOREIGN KEY (ID_Profesor) REFERENCES Profesor (ID_Profesor)
);

CREATE TABLE Alumno (
	ID_Alumno INT AUTO_INCREMENT,
    Numero_cuenta VARCHAR (25),
    Paterno VARCHAR (80),
    Materno VARCHAR (80),
    Nombre VARCHAR (80),
    Email VARCHAR (150),
    PRIMARY KEY (ID_Alumno)
);

CREATE TABLE Alumno_curso (
	ID_Alumnocurso INT AUTO_INCREMENT,
    ID_Alumno INT,
    ID_Curso INT,
    Calificacion DECIMAL (10,2),
    PRIMARY KEY (ID_Alumnocurso),
    FOREIGN KEY (ID_Alumno) REFERENCES Alumno (ID_Alumno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso (ID_Curso)
);

CREATE TABLE Integrante (
	ID_Integrante INT AUTO_INCREMENT,
	Paterno VARCHAR (80),
	Materno VARCHAR (80),
	Nombre VARCHAR (80),
	PRIMARY KEY (ID_Integrante)
);

CREATE TABLE Cuerpo_academico (
	ID_Cuerpo INT AUTO_INCREMENT,
	ID_Integrante INT,
	Nombre VARCHAR (250),
	PRIMARY KEY (ID_Cuerpo),
	FOREIGN KEY (ID_Integrante) REFERENCES Integrante (ID_Integrante)
);

CREATE TABLE Linea (
	ID_Linea INT AUTO_INCREMENT,
    ID_Cuerpo INT,
	Nombre VARCHAR (120),
	Descripcion VARCHAR (500),
	PRIMARY KEY (ID_Linea),
	FOREIGN KEY (ID_Cuerpo) REFERENCES Cuerpo_academico (ID_Cuerpo)
);

CREATE TABLE Integrante_linea (
	ID_Integrantelinea INT AUTO_INCREMENT,
	ID_Integrante INT,
	ID_Linea INT,
	Inicio DATE,
	Termino DATE,
	Vigente BOOLEAN,
	PRIMARY KEY (ID_Integrantelinea),
	FOREIGN KEY (ID_Integrante) REFERENCES Integrante (ID_Integrante),
	FOREIGN KEY (ID_Linea) REFERENCES Linea (ID_Linea)
);

USE INVESTIGADOR;
-- 1. Tabla Investigador
SELECT *
FROM Investigador
INTO OUTFILE '/tmp/Investigador.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 2. Tabla Produccion
SELECT *
FROM Produccion
INTO OUTFILE '/tmp/Produccion.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 3. Tabla Formacion
SELECT *
FROM Formacion
INTO OUTFILE '/tmp/Formacion.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 4. Tabla Adscripcion
SELECT *
FROM Adscripcion
INTO OUTFILE '/tmp/Adscripcion.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 5. Tabla Proyecto
SELECT *
FROM Proyecto
INTO OUTFILE '/tmp/Proyecto.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

USE PROFESOR;
-- 6. Tabla Programa
SELECT *
FROM Programa
INTO OUTFILE '/tmp/Programa.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 7. Tabla Asignatura
SELECT *
FROM Asignatura
INTO OUTFILE '/tmp/Asignatura.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 8. Tabla Profesor
SELECT *
FROM Profesor
INTO OUTFILE '/tmp/Profesor.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 9. Tabla Curso
SELECT *
FROM Curso
INTO OUTFILE '/tmp/Curso.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 10. Tabla Alumno
SELECT *
FROM Alumno
INTO OUTFILE '/tmp/Alumno.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 11. Tabla Alumno_curso
SELECT *
FROM Alumno_curso
INTO OUTFILE '/tmp/Alumno_curso.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

USE INTEGRANTE;
-- 12. Tabla Integrante
SELECT *
FROM Integrante
INTO OUTFILE '/tmp/Integrante.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 13. Tabla Cuerpo_academico
SELECT *
FROM Cuerpo_academico
INTO OUTFILE '/tmp/Cuerpo_academico.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 14. Tabla Linea
SELECT *
FROM Linea
INTO OUTFILE '/tmp/Linea.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 15. Tabla Integrante_linea
SELECT *
FROM Integrante_linea
INTO OUTFILE '/tmp/Integrante_linea.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

USE DataWarehouse;

-- 1. Carga tabla Investigador
LOAD DATA INFILE '/tmp/Investigador.csv'
INTO TABLE Investigador
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 2. Carga tabla Produccion
LOAD DATA INFILE '/tmp/Produccion.csv'
INTO TABLE Produccion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 3. Carga tabla Formacion
LOAD DATA INFILE '/tmp/Formacion.csv'
INTO TABLE Formacion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 4. Carga tabla Adscripcion
LOAD DATA INFILE '/tmp/Adscripcion.csv'
INTO TABLE Adscripcion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 5. Carga tabla Proyecto
LOAD DATA INFILE '/tmp/Proyecto.csv'
INTO TABLE Proyecto
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 6. Carga tabla Programa
LOAD DATA INFILE '/tmp/Programa.csv'
INTO TABLE Programa
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 7. Carga tabla Asignatura
LOAD DATA INFILE '/tmp/Asignatura.csv'
INTO TABLE Asignatura
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 8. Carga tabla Profesor
LOAD DATA INFILE '/tmp/Profesor.csv'
INTO TABLE Profesor
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 9. Carga tabla Curso
LOAD DATA INFILE '/tmp/Curso.csv'
INTO TABLE Curso
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 10. Carga tabla Alumno
LOAD DATA INFILE '/tmp/Alumno.csv'
INTO TABLE Alumno
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 11. Carga tabla Alumno_curso
LOAD DATA INFILE '/tmp/Alumno_curso.csv'
INTO TABLE Alumno_curso
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 12. Carga tabla Integrante
LOAD DATA INFILE '/tmp/Integrante.csv'
INTO TABLE Integrante
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 13. Carga tabla Cuerpo_academico
LOAD DATA INFILE '/tmp/Cuerpo_academico.csv'
INTO TABLE Cuerpo_academico
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 14. Carga tabla Linea
LOAD DATA INFILE '/tmp/Linea.csv'
INTO TABLE Linea
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 15. Carga tabla Integrante_linea
LOAD DATA INFILE '/tmp/Integrante_linea.csv'
INTO TABLE Integrante_linea
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- 1) Obtener alumnos de un profesor (todos sus cursos)
DELIMITER //
CREATE PROCEDURE sp_ObtenerAlumnosPorProfesor (
  IN p_ID_Profesor INT
)
BEGIN
  SELECT 
    a.ID_Alumno,
    a.Numero_cuenta,
    CONCAT(a.Paterno,' ',a.Materno,', ',a.Nombre) AS Alumno,
    ac.Calificacion,
    c.ID_Curso,
    asig.Nombre        AS Asignatura,
    c.Periodo,
    c.Anio,
    c.Grupo
  FROM Alumno a
  JOIN Alumno_curso ac ON a.ID_Alumno = ac.ID_Alumno
  JOIN Curso c         ON ac.ID_Curso  = c.ID_Curso
  JOIN Asignatura asig ON c.ID_Asignatura = asig.ID_Asignatura
  WHERE c.ID_Profesor = p_ID_Profesor
  ORDER BY asig.Nombre, c.Anio, c.Grupo, a.Paterno;
END//
DELIMITER ;

-- 2) Obtener adscripciones de un investigador
DELIMITER //
CREATE PROCEDURE sp_ObtenerAdscripcionesDeInvestigador (
  IN p_ID_Investigador INT
)
BEGIN
  SELECT 
    ad.ID_Adscripcion,
    ad.Instituto,
    ad.Area,
    ad.Nombramiento,
    ad.Fecha_ingreso
  FROM Adscripcion ad
  WHERE ad.ID_Investigador = p_ID_Investigador
  ORDER BY ad.Fecha_ingreso DESC;
END//
DELIMITER ;

-- 3) Obtener líneas de investigación de un integrante
DELIMITER //
CREATE PROCEDURE sp_ObtenerLineasDeIntegrante (
  IN p_ID_Integrante INT
)
BEGIN
  SELECT
    il.ID_Integrantelinea,
    l.ID_Linea,
    l.Nombre          AS Linea,
    l.Descripcion,
    ca.Nombre         AS Cuerpo_Academico,
    il.Inicio,
    il.Termino,
    il.Vigente
  FROM Integrante_linea il
  JOIN Linea l       ON il.ID_Linea = l.ID_Linea
  JOIN Cuerpo_academico ca ON l.ID_Cuerpo = ca.ID_Cuerpo
  WHERE il.ID_Integrante = p_ID_Integrante
  ORDER BY il.Vigente DESC, il.Inicio DESC;
END//
DELIMITER ;

DELIMITER //
-- Insertar proyecto en dataWarehouse al ingresar un proyecto nuevo en nodo investigador
CREATE TRIGGER trg_investigador_proyecto_ins
AFTER INSERT ON Proyecto
FOR EACH ROW
BEGIN
  INSERT INTO DataWarehouse.Proyecto
    (ID_Proyecto, ID_Investigador, Nombre, Inicio, Final)
  VALUES
    (NEW.ID_Proyecto, NEW.ID_Investigador, NEW.Nombre, NEW.Inicio, NEW.Final);
END;
//

-- Actualizar dataWarehouse al actualizar un proyecto en nodo investigador
CREATE TRIGGER trg_investigador_proyecto_upd
AFTER UPDATE ON Proyecto
FOR EACH ROW
BEGIN
  UPDATE DataWarehouse.Proyecto
    SET ID_Investigador = NEW.ID_Investigador,
        Nombre         = NEW.Nombre,
        Inicio         = NEW.Inicio,
        Final          = NEW.Final
  WHERE ID_Proyecto = OLD.ID_Proyecto;
END;
//

-- Eliminar proyecto en dataWarehouse al eliminar un proyecto en nodo investigador
CREATE TRIGGER trg_investigador_proyecto_del
AFTER DELETE ON Proyecto
FOR EACH ROW
BEGIN
  DELETE FROM DataWarehouse.Proyecto
  WHERE ID_Proyecto = OLD.ID_Proyecto;
END;
//

DELIMITER ;

DELIMITER //
-- Insertar alumno en dataWarehouse al ingresar un alumno nuevo en nodo profesor
CREATE TRIGGER trg_profesor_alumno_ins
AFTER INSERT ON Alumno
FOR EACH ROW
BEGIN
  INSERT INTO DataWarehouse.Alumno
    (ID_Alumno, Numero_cuenta, Paterno, Materno, Nombre, Email)
  VALUES
    (NEW.ID_Alumno, NEW.Numero_cuenta, NEW.Paterno, NEW.Materno, NEW.Nombre, NEW.Email);
END;
//
-- Actualizar dataWarehouse al actualizar un alumno en nodo profesor
CREATE TRIGGER trg_profesor_alumno_upd
AFTER UPDATE ON Alumno
FOR EACH ROW
BEGIN
  UPDATE DataWarehouse.Alumno
    SET Numero_cuenta = NEW.Numero_cuenta,
        Paterno       = NEW.Paterno,
        Materno       = NEW.Materno,
        Nombre        = NEW.Nombre,
        Email         = NEW.Email
  WHERE ID_Alumno = OLD.ID_Alumno;
END;
//
-- Eliminar alumno en dataWarehouse al eliminar un alumno en nodo profesor
CREATE TRIGGER trg_profesor_alumno_del
AFTER DELETE ON Alumno
FOR EACH ROW
BEGIN
  DELETE FROM DataWarehouse.Alumno
  WHERE ID_Alumno = OLD.ID_Alumno;
END;
//

DELIMITER ;

DELIMITER //
-- Insertar linea en dataWarehouse al ingresar una linea nueva en nodo integrante
CREATE TRIGGER trg_integrante_linea_ins
AFTER INSERT ON Linea
FOR EACH ROW
BEGIN
  INSERT INTO DataWarehouse.Linea
    (ID_Linea, ID_Cuerpo, Nombre, Descripcion)
  VALUES
    (NEW.ID_Linea, NEW.ID_Cuerpo, NEW.Nombre, NEW.Descripcion);
END;
//
-- Actualizar dataWarehouse al actualizar una linea en nodo integrante
CREATE TRIGGER trg_integrante_linea_upd
AFTER UPDATE ON Linea
FOR EACH ROW
BEGIN
  UPDATE DataWarehouse.Linea
    SET ID_Cuerpo   = NEW.ID_Cuerpo,
        Nombre      = NEW.Nombre,
        Descripcion = NEW.Descripcion
  WHERE ID_Linea = OLD.ID_Linea;
END;
//
-- Eliminar linea en dataWarehouse al eliminar una linea en nodo integrante
CREATE TRIGGER trg_integrante_linea_del
AFTER DELETE ON Linea
FOR EACH ROW
BEGIN
  DELETE FROM DataWarehouse.Linea
  WHERE ID_Linea = OLD.ID_Linea;
END;
//

DELIMITER ;