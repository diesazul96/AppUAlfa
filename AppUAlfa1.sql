DROP DATABASE IF EXISTS AppUAlfa;

CREATE DATABASE AppUAlfa;

USE AppUAlfa;


CREATE TABLE Usuarios (
	
	Celular int(4) NOT NULL,

	Nombre varchar(20) NOT NULL,

	Correo varchar(50) NOT NULL,
    
	Contrasena varchar(20) NOT NULL,

	Puntuacion double NOT NULL,
    
	PRIMARY KEY (Celular)

);


create table Vendedores(
correo varchar (50),
celular varchar(10),
nombre varchar(50),
contrasena varchar(50),
puntuacion int(2),
primary key(correo)
);

create table Tiendas(
id int (10),
nombre varchar (50),
vendedor varchar(50),
puntuacion double,
idfondo varchar (50)
);
create table Productos(
    nombre varchar(25),
    categoria varchar(20),
    precio int,
    imagen varchar(25),
    cantidad int,
    tienda int(10)
);


insert into Tiendas(id,nombre,vendedor,puntuacion,idfondo) values (1,'mcdonalds','312 2231312',4.0,'fondo1.png');
insert into Tiendas(id,nombre,vendedor,puntuacion,idfondo) values (2,'el corral','317 6533433',3.5,'fondo2.png');
insert into Tiendas(id,nombre,vendedor,puntuacion,idfondo) values (3,'forever 21','321 5449807',3.3,'fondo3.png');



insert into Productos values ('Perritos Calientes :D','Comidas Rapidas', 5500,'margarita.jpg',12, 1);
insert into Productos values ('Hamburguesa :D','Comidas Rapidas', 6000,'margarita2.jpg',12, 1);
INSERT INTO Usuarios values(1234, 'Diego', 'diego@correo.usa.edu.co','diego',5.0);
INSERT INTO vendedores values('diego@correo.usa.edu.co',1234, 'Diego','diego',5.0);
SELECT * FROM Usuarios;

select * from productos where nombre='Perritos Calientes :D' and tienda=1;