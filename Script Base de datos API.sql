CREATE DATABASE api2;

CREATE TABLE Empleados (
	IdEmpleado SERIAL PRIMARY KEY,
	IdOcupacion INT,
	Nombre VARCHAR(30),
	Apellido VARCHAR(30)
);

CREATE TABLE Ocupaciones (
	IdOcupacion INT PRIMARY KEY,
	Puesto VARCHAR(30)
);

ALTER TABLE Empleados ADD CONSTRAINT
FK_empleado_ocupacion FOREIGN KEY(IdOcupacion)
REFERENCES Ocupaciones(IdOcupacion)
on delete restrict on update restrict;

INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (1,'Jefe');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (2,'Gerente');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (3,'Asistente');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (4,'Cajero');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (5,'Vendedor');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (6,'Contador');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (7,'Guarda');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (8,'Miscelaneo');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (9,'Bodeguero');
INSERT INTO Ocupaciones (IdOcupacion, Puesto) values (10,'Diseñador');

INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (1, 'Brandon', 'Redondo');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (2, 'Carlos', 'Tinoco');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (3, 'Gabriela', 'Sanchez');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (4, 'Luis', 'Gutierrez');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (5, 'Maria', 'Salas');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (5, 'Bruno', 'Watson');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (6, 'Kendall', 'Diaz');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (7, 'Rachell', 'Perez');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (8, 'Julian', 'Rojas');
INSERT INTO Empleados (IdOcupacion, Nombre, Apellido) values (9, 'Ricardo', 'Brenes');


