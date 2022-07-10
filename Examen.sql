----- Tablas-----

CREATE TABLE Regiones (

   Id_Region          NUMBER      NOT NULL,
   Nombre             CHAR(250)   NOT NULL
);

CREATE TABLE Provincias (

   Id_Provincia         NUMBER       NOT NULL,
   Nombre               CHAR (250)   NOT NULL,
   Regiones_Id_Region   NUMBER       NOT NULL
);

CREATE TABLE Comunas (

   Id_Comuna                  NUMBER       NOT NULL,
   Nombre                     CHAR (250)   NOT NULL,
   Provincias_Id_Provincia    NUMBER       NOT NULL
);

CREATE TABLE Sedes (

   Id_Sede                 NUMBER         NOT NULL,
   Nombre                  CHAR (250)     NOT NULL,
   Direccion               VARCHAR2 (250) NOT NULL,
   Comunas_Id_Comuna       NUMBER         NOT NULL,
   Sindicatos_Id_Sindicato NUMBER         NOT NULL

);

CREATE TABLE Sindicatos (

   Id_Sindicato               NUMBER      NOT NULL,
   Nombre                     CHAR (250)  NOT NULL,
   Rut                        NUMBER      NOT NULL,
   DV                         VARCHAR(1)  NOT NULL
);

CREATE TABLE Aseguradoras (

   Id_Aseguradora          NUMBER      NOT NULL,
   Nombre                  CHAR (250)  NOT NULL,
   Rut                     NUMBER      NOT NULL,
   DV                      VARCHAR(1)  NOT NULL
);

CREATE TABLE Afiliados (

   Id_Afiliado                    NUMBER         NOT NULL,
   Primer_Nombre                  CHAR (250)     NOT NULL,
   Segundo_Nombre                 CHAR (250)     NULL,
   Apellido_Paterno               CHAR (250)     NOT NULL,
   Apellido_Materno               CHAR (250)     NULL,
   Telefono                       VARCHAR2 (250) NOT NULL,
   Direccion                      VARCHAR2 (250) NOT NULL,
   Correo_Electronico             VARCHAR2 (250) NOT NULL,
   Sindicatos_Id_Sindicato        NUMBER         NOT NULL,
   Nacionalidades_Id_Nacionalidad NUMBER         NOT NULL
);

CREATE TABLE Colores (
   Id_Color    NUMBER       NOT NULL,
   Nombre      VARCHAR(250) NOT NULL
);

CREATE TABLE Vehiculos (
   Id_Vehiculo                     NUMBER         NOT NULL,
   Patente                         VARCHAR2 (250) NOT NULL,
   Numero_Chasis                   VARCHAR2 (250) NOT NULL,
   Numero_Motor                    VARCHAR2 (250) NOT NULL,
   Afiliados_Id_Afiliado           NUMBER         NOT NULL,
   Tipo_Vehiculos_Id_Tipo_Vehiculo NUMBER         NOT NULL,
   Colores_Id_Color                NUMBER         NOT NULL,
   Modelos_Id_Modelo               NUMBER         NOT NULL
);

CREATE TABLE Recepcionistas (
   Id_Recepcionista  NUMBER        NOT NULL,
   Primer_Nombre     CHAR (250)    NOT NULL,
   Segundo_Nombre    CHAR (250)    NULL,
   Apellido_Paterno  CHAR (250)    NOT NULL,
   Apellido_Materno  CHAR (250)    NULL,
   Run               NUMBER        NOT NULL,
   DV                VARCHAR2 (1)  NOT NULL,
   Sedes_Id_Sede     NUMBER        NOT NULL,
   Comunas_Id_Comuna NUMBER        NOT NULL
);

CREATE TABLE Solicitudes_Ingreso (
   Id_Solicitud                    NUMBER         NOT NULL,
   Entrega_Formulario              CHAR (1)       NOT NULL,
   Fecha_Creacion                  DATE           NOT NULL,
   Pretension_Sueldo               NUMBER         NOT NULL,
   Primer_Nombre                   CHAR(250)      NOT NULL,
   Segundo_Nombre                  CHAR(250)      NULL,
   Apellido_Paterno                CHAR(250)      NOT NULL,
   Apellido_Materno                CHAR(250)      NULL,
   Telefono                        VARCHAR2(250)  NOT NULL,
   Direccion                       VARCHAR2(250)  NOT NULL,
   Fecha_Nacimiento                DATE           NOT NULL,
   Curriculum_Vitae                CHAR(1)        NOT NULL,
   Correo_Electronico              VARCHAR2(250)  NOT NULL,
   Genero                          VARCHAR2(250)  NOT NULL,
   Discapacidad                    VARCHAR2(250)  NULL, 
   Recepcionistas_Id_recepcionista NUMBER         NOT NULL,
   Estados_Id_Estado               NUMBER         NOT NULL,
   Comunas_Id_Comuna               NUMBER         NOT NULL
);

CREATE TABLE Beneficios_Afiliados (
   Id_Beneficio_Afiliado      NUMBER        NOT NULL,
   Estado                     VARCHAR(250)  NOT NULL,
   Afiliados_Id_Afiliado      NUMBER        NOT NULL,
   Beneficios_Id_Beneficio    NUMBER        NOT NULL
);

CREATE TABLE Beneficios(
   Id_Beneficio                  NUMBER         NOT NULL,
   Seguro                        VARCHAR2 (250) NOT NULL,
   Aseguradoras_Id_Aseguradora   NUMBER         NOT NULL                       
);

CREATE TABLE Tipo_Pagos(
   Id_Tipo_Pago           NUMBER       NOT NULL,
   Pago_Inicial           NUMBER       NOT NULL,
   Pago_Mensual           NUMBER       NULL,
   Total_Pago             VARCHAR(250) NOT NULL
);

CREATE TABLE Formas_Pago(
   Id_Forma_Pago                     NUMBER    NOT NULL, 
   Nombre                            CHAR(250) NOT NULL
);

CREATE TABLE Cargas(
   Id_Carga                           NUMBER    NOT NULL,
   Primer_Nombre                      CHAR(250) NOT NULL,
   Segundo_Nombre                     CHAR(250) NULL,
   Apellido_Paterno                   CHAR(250) NOT NULL,
   Apellido_Materno                   CHAR(250) NUll,
   Fecha_Nacimiento                   DATE      NOT NULL,
   Nacionalidades_Id_Nacionalidad     NUMBER    NOT NULL
);

CREATE TABLE Nacionalidades(
   Id_Nacionalidad        NUMBER    NOT NULL,
   Nombre                 CHAR(250) NOT NULL,
   Run                    NUMBER    NULL,
   DV                     CHAR(1)   NULL,
   Pasaporte              CHAR(250) NULL
);

CREATE TABLE Bancos (
   Id_Banco    NUMBER         NOT NULL,
   Nombre      VARCHAR(250)   NOT NULL
);

CREATE TABLE Cheques (
   Id_Cheque    NUMBER         NOT NULL,
   Numero       NUMBER         NOT NULL
);

CREATE TABLE Pagos (
   Id_Pago                   NUMBER NOT NULL,
   Fecha                     DATE   NOT NULL,
   Afiliados_Id_Afiliado     NUMBER NOT NULL,
   Cheques_Id_Cheque         NUMBER NOT NULL,
   Bancos_Id_Banco           NUMBER NOT NULL,
   Tipo_Pagos_Id_Tipo_Pago   NUMBER NOT NULL,
   Formas_Pago_Id_Forma_Pago NUMBER NOT NULL
);

CREATE TABLE Tipo_Parentesco(
   Id_Parentesco     NUMBER       NOT NULL,
   Nombre            VARCHAR(250) NOT NULL
);

CREATE TABLE Afiliados_Cargas (
   Id_Afiliado_Carga             NUMBER         NOT NULL,
   Afiliados_Id_Afiliado         NUMBER         NOT NULL,
   Tipo_parentesco_Id_parentesco NUMBER         NOT NULL,
   Cargas_Id_Carga               NUMBER         NOT NULL
);

CREATE TABLE Marcas (
   Id_Marca    NUMBER         NOT NULL,
   Nombre      VARCHAR(250)   NOT NULL
);

CREATE TABLE Modelos (
   Id_Modelo       NUMBER         NOT NULL,
   Nombre          VARCHAR(250)   NOT NULL,
   Marcas_Id_Marca NUMBER         NOT NULL
);

CREATE TABLE Tipo_Vehiculos (
   Id_Tipo_Vehiculo    NUMBER         NOT NULL,
   Nombre              VARCHAR(250)   NOT NULL
);

CREATE TABLE Estados (
   Id_Estado               NUMBER         NOT NULL,
   Estado_Afiliado         VARCHAR(250)   NOT NULL,
   Estado_Solicitud        VARCHAR(250)   NOT NULL
);

CREATE TABLE Beneficios_Sindicato (
   Id_Beneficios            NUMBER           NOT NULL,
   Salud                    VARCHAR2 (250)   NOT NULL,
   Educacion                VARCHAR2 (250)   NOT NULL,
   Deporte                  VARCHAR2 (250)   NOT NULL,
   Descuento_Transporte     VARCHAR2 (250)   NOT NULL,
   Sindicatos_Id_Sindicato  NUMBER           NOT NULL,
   Beneficios_Id_Beneficio  NUMBER           NOT NULL

);

----Claves Primarias-----
ALTER TABLE Pagos ADD CONSTRAINT Pagos_PK PRIMARY KEY (Id_Pago);
ALTER TABLE Tipo_Parentesco ADD CONSTRAINT Tipo_parentesco_PK PRIMARY KEY (ID_Parentesco);
ALTER TABLE Colores ADD CONSTRAINT Colores_PK PRIMARY KEY (Id_Color);
ALTER TABLE Beneficios_Afiliados ADD CONSTRAINT Beneficios_Afiliados_PK PRIMARY KEY (Id_Beneficio_Afiliado);
ALTER TABLE Regiones ADD CONSTRAINT Regiones_PK PRIMARY KEY (Id_Region);
ALTER TABLE Provincias ADD CONSTRAINT Provincias_PK PRIMARY KEY (Id_Provincia);
ALTER TABLE Comunas ADD CONSTRAINT Comunas_PK PRIMARY KEY (Id_Comuna);
ALTER TABLE Sedes ADD CONSTRAINT Sedes_PK PRIMARY KEY (Id_Sede);
ALTER TABLE Sindicatos ADD CONSTRAINT Sindicatos_PK PRIMARY KEY (Id_Sindicato);
ALTER TABLE Aseguradoras ADD CONSTRAINT Aseguradoras_PK PRIMARY KEY (Id_Aseguradora);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_PK PRIMARY KEY (Id_Afiliado);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_PK PRIMARY KEY (Id_Vehiculo);
ALTER TABLE Nacionalidades ADD CONSTRAINT Nacionalidades_PK PRIMARY KEY (Id_Nacionalidad);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_PK PRIMARY KEY (Id_Solicitud);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_PK PRIMARY KEY (Id_Carga);
ALTER TABLE Tipo_Pagos ADD CONSTRAINT Tipo_Pagos_PK PRIMARY KEY (Id_Tipo_Pago);
ALTER TABLE Formas_Pago ADD CONSTRAINT Formas_Pago_PK PRIMARY KEY (Id_Forma_Pago);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_PK PRIMARY KEY (Id_Beneficio);
ALTER TABLE Recepcionistas ADD CONSTRAINT Recepcionistas_PK PRIMARY KEY (Id_Recepcionista);
ALTER TABLE Marcas ADD CONSTRAINT Marcas_PK PRIMARY KEY (Id_Marca);
ALTER TABLE Tipo_Vehiculos ADD CONSTRAINT Tipo_Vehiculos_PK PRIMARY KEY (Id_Tipo_Vehiculo);
ALTER TABLE Modelos ADD CONSTRAINT Modelos_PK PRIMARY KEY (Id_Modelo);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_PK PRIMARY KEY (Id_Afiliado_Carga);
ALTER TABLE Bancos ADD CONSTRAINT Bancos_PK PRIMARY KEY (Id_Banco);
ALTER TABLE Cheques ADD CONSTRAINT Cheques_PK PRIMARY KEY (Id_Cheque);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_PK PRIMARY KEY (Id_Beneficios);
ALTER TABLE Estados ADD CONSTRAINT Estados_PK PRIMARY KEY (Id_Estado);



----Claves foraneas----
ALTER TABLE Provincias ADD CONSTRAINT Provincias_Region_FK FOREIGN KEY (Regiones_Id_Region) REFERENCES Regiones (Id_Region);
ALTER TABLE Comunas ADD CONSTRAINT Comunas_Provincias_FK FOREIGN KEY (Provincias_Id_Provincia) REFERENCES Provincias (Id_Provincia);
ALTER TABLE Sedes ADD CONSTRAINT Sedes_Comunas_FK FOREIGN KEY (Comunas_Id_Comuna) REFERENCES Comunas (Id_Comuna);
ALTER TABLE Sedes ADD CONSTRAINT Sedes_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Recepcionistas ADD CONSTRAINT Recepcionistas_Sedes_FK FOREIGN KEY (Sedes_Id_Sede) REFERENCES Sedes (Id_Sede);
ALTER TABLE Recepcionistas ADD CONSTRAINT Recepcionistas_Comunas_FK FOREIGN KEY (Comunas_Id_Comuna) REFERENCES Comunas (Id_Comuna);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_Recepcionista_FK FOREIGN KEY (Recepcionistas_Id_recepcionista) REFERENCES Recepcionistas (Id_Recepcionista);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_Estados_FK FOREIGN KEY (Estados_Id_Estado) REFERENCES Estados (Id_Estado);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_Comunas_FK FOREIGN KEY (Comunas_Id_Comuna) REFERENCES Comunas (Id_Comuna);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Nacionalidades_FK FOREIGN KEY (Nacionalidades_Id_Nacionalidad) REFERENCES Nacionalidades (Id_Nacionalidad);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Nacionalidades_FK FOREIGN KEY (Nacionalidades_Id_Nacionalidad) REFERENCES Nacionalidades (Id_Nacionalidad);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Tipo_Vehiculos_FK FOREIGN KEY (Tipo_Vehiculos_Id_Tipo_Vehiculo) REFERENCES Tipo_Vehiculos (Id_Tipo_Vehiculo);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Colores_FK FOREIGN KEY (Colores_Id_Color) REFERENCES Colores (Id_Color);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Modelos_FK FOREIGN KEY (Modelos_Id_Modelo) REFERENCES Modelos (Id_Modelo);
ALTER TABLE Pagos ADD CONSTRAINT Pagos_Cheques_FK FOREIGN KEY (Cheques_Id_Cheque) REFERENCES Cheques (Id_Cheque);
ALTER TABLE Pagos ADD CONSTRAINT Pagos_Bancos_FK FOREIGN KEY (Bancos_Id_Banco) REFERENCES Bancos (Id_Banco);
ALTER TABLE Pagos ADD CONSTRAINT Pagos_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Pagos ADD CONSTRAINT Pagos_Tipo_Pagos_FK FOREIGN KEY (Tipo_Pagos_Id_Tipo_Pago) REFERENCES Tipo_Pagos (Id_Tipo_Pago);
ALTER TABLE Pagos ADD CONSTRAINT Pagos_Formas_Pago_FK FOREIGN KEY (Formas_Pago_Id_Forma_Pago) REFERENCES Formas_Pago (Id_Forma_Pago);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_Beneficios_FK FOREIGN KEY (Beneficios_Id_Beneficio) REFERENCES Beneficios (Id_Beneficio);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_Tipo_Parentesco_FK FOREIGN KEY (Tipo_parentesco_Id_parentesco) REFERENCES Tipo_Parentesco (Id_Parentesco);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_Cargas_FK FOREIGN KEY (Cargas_Id_Carga) REFERENCES Cargas (Id_Carga);
ALTER TABLE Modelos ADD CONSTRAINT Modelos_Marcas_FK FOREIGN KEY (Marcas_Id_Marca) REFERENCES Marcas (Id_Marca);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Aseguradoras_FK FOREIGN KEY (Aseguradoras_Id_Aseguradora) REFERENCES Aseguradoras (Id_Aseguradora);
ALTER TABLE Beneficios_Afiliados ADD CONSTRAINT Beneficios_Afiliados_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Beneficios_Afiliados ADD CONSTRAINT Beneficios_Afiliados_Beneficios_FK FOREIGN KEY (Beneficios_Id_Beneficio) REFERENCES Beneficios (Id_Beneficio);



---------Formato fecha-------

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY';

-------Insert----------



INSERT INTO Regiones VALUES (1,'Tarapacá');
INSERT INTO Regiones VALUES (2,'Antofagasta');
INSERT INTO Regiones VALUES (3,'Atacama');
INSERT INTO Regiones VALUES (4,'Coquimbo');
INSERT INTO Regiones VALUES (5,'Valparaíso');
INSERT INTO Regiones VALUES (6,'O Higgins');
INSERT INTO Regiones VALUES (7,'Maule');
INSERT INTO Regiones VALUES (8,'Bío Bío');
INSERT INTO Regiones VALUES (9,'Araucanía');
INSERT INTO Regiones VALUES (10,'Los Lagos');
INSERT INTO Regiones VALUES (11,'Aysén');
INSERT INTO Regiones VALUES (12,'Magallanes');
INSERT INTO Regiones VALUES (13,'Región Metropolitana de Santiago');
INSERT INTO Regiones VALUES (14,'Los Ríos');
INSERT INTO Regiones VALUES (15,'Arica y Parinacota');
INSERT INTO Regiones VALUES (16,'Ñuble');

INSERT INTO Provincias VALUES (1,'Provincia de Iquique',1);
INSERT INTO Provincias VALUES (2,'Provincia de Antofagasta',2);
INSERT INTO Provincias VALUES (3,'Provincia de Copiapo',3);
INSERT INTO Provincias VALUES (4,'Provincia de Elqui',4);
INSERT INTO Provincias VALUES (5,'Provincia de Valparaiso',5);
INSERT INTO Provincias VALUES (6,'Provincia de Cachapoal',6);
INSERT INTO Provincias VALUES (7,'Provincia de Talca',7);
INSERT INTO Provincias VALUES (8,'Provincia de Concepcion',8);
INSERT INTO Provincias VALUES (9,'Provincia de Cautin',9);
INSERT INTO Provincias VALUES (10,'Provincia de Llanquihue',10);
INSERT INTO Provincias VALUES (11,'Provincia de Coyhaique',11);
INSERT INTO Provincias VALUES (12,'Provincia de Ultima Esperanza',12);
INSERT INTO Provincias VALUES (13,'Provincia de Santiago',13);
INSERT INTO Provincias VALUES (14,'Provincia de Valdivia',14);
INSERT INTO Provincias VALUES (15,'Provincia de Arica',15);
INSERT INTO Provincias VALUES (16,'Provincia de Punilla',16);


INSERT INTO Comunas VALUES (1,'Comuna de Iquique',1);
INSERT INTO Comunas VALUES (2,'Comuna de Antofagasta',2);
INSERT INTO Comunas VALUES (3,'Comuna de Copiapo',3);
INSERT INTO Comunas VALUES (4,'Comuna de La Serena',4);
INSERT INTO Comunas VALUES (5,'Comuna de Viña del Mar',5);
INSERT INTO Comunas VALUES (6,'Comuna de Rancagua',6);
INSERT INTO Comunas VALUES (7,'Comuna de Talca',7);
INSERT INTO Comunas VALUES (8,'Comuna de Concepcion',8);
INSERT INTO Comunas VALUES (9,'Comuna de Temuco',9);
INSERT INTO Comunas VALUES (10,'Comuna de Puerto Montt',10);
INSERT INTO Comunas VALUES (11,'Comuna de Coyhaique',11);
INSERT INTO Comunas VALUES (12,'Comuna de Punta Arenas',12);
INSERT INTO Comunas VALUES (13,'Comuna de Santiago',13);
INSERT INTO Comunas VALUES (14,'Comuna de Valdivia',14);
INSERT INTO Comunas VALUES (15,'Comuna de Arica',15);
INSERT INTO Comunas VALUES (16,'Comuna de San Carlos',16);

INSERT INTO Sindicatos Values (1, 'SINTACT',12345678,'K');

INSERT INTO Sedes VALUES (1,'Casa Central','Avenida Siempre Viva 123',13,1);

INSERT INTO Aseguradoras VALUES (1,'MAPFRE',11111111,'1');
INSERT INTO Aseguradoras VALUES (2,'SURA',22222222,'2');

INSERT INTO Recepcionistas VALUES (1,'Miguel','','Bose','',11111111,'1',1,1);

INSERT INTO Nacionalidades VALUES (1,'Chilena','','','');

INSERT INTO Bancos VALUES (1,'Banco Estado');

INSERT INTO Cheques VALUES (1,0);

INSERT INTO Marcas VALUES (1,'Mazda');

INSERT INTO Modelos VAlUES (1,'Mazda 3',1);

INSERT INTO Tipo_Vehiculos VALUES (1,'Sedan');

INSERT INTO Afiliados VALUES(1,'Joel','','Gutierrez','',912345678,'Rio Misisipi','Joelgutierrez@gmail.com',1,1);

INSERT INTO Colores VALUES (1,'Rojo');

INSERT INTO Vehiculos VALUES (1,'GGWP69','4G8P56JJ5LY825946','27JSN82750',1,1,1,1);

INSERT INTO Tipo_Pagos Values(1,6000,0,'Pago Inicial: 6000 Pagado');

INSERT INTO Beneficios VALUES (1,'Seguro Accidente',1);

INSERT INTO Formas_Pago VALUES (1,'Efectivo');
INSERT INTO Formas_Pago VALUES (2,'Transferencia');
INSERT INTO Formas_Pago VALUES (3,'Cheque');

INSERT INTO Estados VALUES (1,'Al dia','Aceptada');

INSERT INTO Beneficios_Sindicato VALUES (1,'Usos: 0','Usos: 0','Usos: 0','Terrestre: Mes Junio',1,1);

INSERT INTO Cargas VALUES (1,'Perro','','Jesus','','29/06/20',1);

INSERT INTO Tipo_Parentesco VALUES (1,'Mascota');

INSERT INTO Solicitudes_Ingreso VALUES (1,'1','28/06/22',1500000,'Joel','','Gutierrez','',912345678,'Rio Misisipi','06/09/91','1','Joelgutierrez@gmail.com','Fluido','',1,1,1);

INSERT INTO Beneficios_Afiliados VALUES (1,'Al dia',1,1);

INSERT INTO Afiliados_Cargas VALUES (1,1,1,1);

INSERT INTO Pagos VALUES(1,'28/06/22',1,1,1,1,1);