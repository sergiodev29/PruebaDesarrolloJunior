CREATE DATABASE Empresa 

USE Empresa

CREATE TABLE Codigo	
(
Id_Codigo INT PRIMARY KEY NOT NULL,
Nombre varchar(50),
Salario INT 
);
CREATE TABLE Tienda
(
Id_Tienda UNIQUEIDENTIFIER PRIMARY KEY NOT NULL,
Direccion nvarchar (100),
Telefono nvarchar (30)
);


CREATE TABLE Empleado
(
Id_Empleado  UNIQUEIDENTIFIER PRIMARY KEY NOT NULL,
Nombre varchar(50),
NumeroDocumento int,
FechaNacimiento Datetime,
Genero varchar(50),
Id_Codigo INT,
Id_Tienda UNIQUEIDENTIFIER,
foreign key (Id_codigo) references Codigo(Id_Codigo),
foreign key (Id_Tienda) references Tienda(Id_Tienda)
);


insert into Empleado
values (NEWID(),'sergio','111222333','12-01-1997','masculino',1,NEWID())