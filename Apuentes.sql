Script 25-06



-- borrar tablas

DROP TABLE detalleboleta;

DROP TABLE producto;

DROP TABLE boleta;



-- Script configuración de fomato de fechas

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY';



-- crear tablas

CREATE TABLE detalleboleta (

   id_boleta      NUMBER NOT NULL,

   id_producto    NUMBER NOT NULL,

   cantidad       NUMBER NOT NULL

);



CREATE TABLE producto (

   id_producto    NUMBER NOT NULL,

   nom_producto   VARCHAR(25) NOT NULL,

   precio         NUMBER NOT NULL,

   stock_actual   NUMBER(4) NOT NULL,

   stock_minimo   NUMBER(4) NOT NULL,

   id_fabrica     NUMBER(4) NOT NULL

);





CREATE TABLE boleta (

   id_boleta      NUMBER NOT NULL,

   id_cliente     NUMBER NOT NULL,

   id_empleado    NUMBER NOT NULL,

   fecha_boleta   DATE NOT NULL

); 



-- 2- Claves Primarias

ALTER TABLE producto ADD CONSTRAINT producto_PK PRIMARY KEY (id_producto);

ALTER TABLE boleta ADD CONSTRAINT boleta_PK PRIMARY KEY (id_boleta);

ALTER TABLE detalleboleta ADD CONSTRAINT detalleboleta_PK

   PRIMARY KEY (id_boleta, id_producto);



-- 3- Claves Foraneas

--ALTER TABLE boleta ADD CONSTRAINT boleta_id_cliente_FK

   --FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);



ALTER TABLE detalleboleta ADD CONSTRAINT detalleboleta_id_boleta_FK

   FOREIGN KEY (id_boleta) REFERENCES boleta (id_boleta);



ALTER TABLE detalleboleta ADD CONSTRAINT detalleboleta_id_producto_FK

   FOREIGN KEY (id_producto) REFERENCES producto (id_producto);





-- INSERT de datos, tengo que tener un orden y va desde las tablas que no tienen

-- foraneas a las que si tienen



-- los NUMBER va el numero no más

-- los VARCHAR va entre comillas simples ''

-- los CHAR va entre comillas simples ''

-- los DATE va entre comillas simples pero con formato 'DD/MM/YY'

   -- para el DATE hay una condición especial donde yo defino el formato

   -- antes de la creación de las tablas

   -- ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY'



INSERT INTO producto VALUES (1,'Comida perro',500,1000,50,2);

INSERT INTO producto VALUES (2,'Comida gato',500,1000,50,2);



INSERT INTO boleta VALUES (1, 1, 1, '01/05/22');

INSERT INTO boleta VALUES (2, 1, 1, '02/05/22');



INSERT INTO detalleboleta VALUES (1,1,1000);

INSERT INTO detalleboleta VALUES (1,2,1000);

INSERT INTO detalleboleta VALUES (2,1,1000);

INSERT INTO detalleboleta VALUES (2,2,1000);