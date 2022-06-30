--Creacion de tablas
CREATE TABLE Paises (
   Id_Pais     NUMBER      NOT NULL,
   Nombre      CHAR (250)  NOT NULL
);

CREATE TABLE Regiones (
   Id_Region          NUMBER      NOT NULL,
   Nombre             CHAR(250)   NOT NULL,
   Paises_Id_Pais     NUMBER      NOT NULL
);

CREATE TABLE Provincias (
   Id_Provincia         NUMBER       NOT NULL,
   Nombre               CHAR (250)   NOT NULL,
   Regiones_Id_Region   NUMBER       NOT NULL
);

CREATE TABLE Comunas (
   Id_Comuna            NUMBER       NOT NULL,
   Nombre               CHAR (250)   NOT NULL,
   Provincias_Id_Provincia   NUMBER       NOT NULL
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

CREATE TABLE Vehiculos (
   Id_Vehiculo                     NUMBER         NOT NULL,
   Patente                         VARCHAR2 (250) NOT NULL,
   Color                           VARCHAR2 (250) NOT NULL,
   Numero_Chasis                   VARCHAR2 (250) NOT NULL,
   Numero_Motor                    VARCHAR2 (250) NOT NULL,
   Afiliados_Id_Afiliado           NUMBER         NOT NULL,
   Marcas_Id_Marca                 NUMBER         NOT NULL,
   Tipo_Vehiculos_Id_Tipo_Vehiculo NUMBER         NOT NULL
);

CREATE TABLE Recepcionistas (
   Id_Recepcionista  NUMBER        NOT NULL,
   Primer_Nombre     CHAR (250)    NOT NULL,
   Segundo_Nombre    CHAR (250)    NULL,
   Apellido_Paterno  CHAR (250)    NOT NULL,
   Apellido_Materno  CHAR (250)    NULL,
   Run               NUMBER        NOT NULL,
   DV                VARCHAR2 (1)  NOT NULL,
   Sedes_Id_Sede     NUMBER        NOT NULL
);

CREATE TABLE Solicitudes_Ingreso (
   Id_Solicitud                    NUMBER        NOT NULL,
   Entrega_Formulario              CHAR (1)      NOT NULL,
   Fecha_Creacion                  DATE          NOT NULL,
   Pretension_Sueldo               NUMBER        NOT NULL,
   Primer_Nombre                   CHAR(250)     NOT NULL,
   Segundo_Nombre                  CHAR(250)     NULL,
   Apellido_Paterno                CHAR(250)     NOT NULL,
   Apellido_Materno                CHAR(250)     NULL,
   Telefono                        VARCHAR2(250) NOT NULL,
   Direccion                       VARCHAR2(250) NOT NULL,
   Fecha_Nacimiento                DATE          NOT NULL,
   Curriculum_Vitae                CHAR(1)       NOT NULL,
   Correo_Electronico              VARCHAR2(250) NOT NULL,
   Genero                          VARCHAR2(250) NOT NULL,
   Discapacidad                    VARCHAR2(250) NULL, 
   Recepcionistas_Id_recepcionista NUMBER        NOT NULL,
   Estados_Id_Estado               NUMBER        NOT NULL
);

CREATE TABLE Beneficios(
   Id_Beneficios                 NUMBER         NOT NULL,
   Seguro                        VARCHAR2 (250) NOT NULL,
   Tipo_Pagos_Id_Tipo_Pago       NUMBER         NOT NULL,
   Aseguradoras_Id_Aseguradora   NUMBER         NOT NULL                       
);

CREATE TABLE Tipo_Pagos(
   Id_Tipo_Pago           NUMBER       NOT NULL,
   Pago_Inicial           NUMBER       NOT NULL,
   Pago_Mensual           NUMBER       NULL,
   Fecha_Pago             DATE         NOT NULL,
   Total_Pago             VARCHAR(250) NOT NULL,
   Cheques_Id_Cheque      NUMBER       NOT NULL,
   Bancos_Id_Banco        NUMBER       NOT NULL
);

CREATE TABLE Formas_Pago(
   Id_Forma_Pago                     NUMBER    NOT NULL, 
   Nombre                            CHAR(250) NOT NULL,
   Afiliados_Id_Afiliado            NUMBER    NOT NULL,
   Tipo_Pagos_Id_Tipo_Pago           NUMBER    NOT NULL
);

CREATE TABLE Cargas(
   Id_Carga                           NUMBER    NOT NULL,
   Primer_Nombre                      CHAR(250) NOT NULL,
   Segundo_Nombre                     CHAR(250) NULL,
   Apellido_Paterno                   CHAR(250) NOT NULL,
   Apellido_Materno                   CHAR(250) NUll,
   Fecha_Nacimiento                   DATE      NOT NULL,
   Parentesco                         CHAR(250) NOT NULL,
   Nacionalidades_Id_Nacionalidad     NUMBER    NOT NULL,
   Afiliados_Cargas_Id_Afiliado_Carga NUMBER    NOT NULL
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

CREATE TABLE Afiliados_Cargas (
   Id_Afiliado_Carga           NUMBER         NOT NULL,
   Afiliados_Id_Afiliado      NUMBER         NOT NULL
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
   Estado_Solicitud        VARCHAR(250)   NOT NULL,
   Afiliados_Id_Afiliado  NUMBER         NOT NULL
);

CREATE TABLE Beneficios_Sindicato (
   Id_Beneficios            NUMBER           NOT NULL,
   Salud                    VARCHAR2 (250)   NOT NULL,
   Educacion                VARCHAR2 (250)   NOT NULL,
   Deporte                  VARCHAR2 (250)   NOT NULL,
   Descuento_Transporte     VARCHAR2 (250)   NOT NULL,
   Sindicatos_Id_Sindicato  NUMBER           NOT NULL,
   Beneficios_Id_Beneficios NUMBER           NOT NULL
);

--Creación de claves primarias
ALTER TABLE Paises ADD CONSTRAINT Paises_PK PRIMARY KEY (Id_Pais);
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
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_PK PRIMARY KEY (Id_Beneficios);
ALTER TABLE Recepcionistas ADD CONSTRAINT Recepcionistas_PK PRIMARY KEY (Id_Recepcionista);
ALTER TABLE Marcas ADD CONSTRAINT Marcas_PK PRIMARY KEY (Id_Marca);
ALTER TABLE Tipo_Vehiculos ADD CONSTRAINT Tipo_Vehiculos_PK PRIMARY KEY (Id_Tipo_Vehiculo);
ALTER TABLE Modelos ADD CONSTRAINT Modelos_PK PRIMARY KEY (Id_Modelo);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_PK PRIMARY KEY (Id_Afiliado_Carga);
ALTER TABLE Bancos ADD CONSTRAINT Bancos_PK PRIMARY KEY (Id_Banco);
ALTER TABLE Cheques ADD CONSTRAINT Cheques_PK PRIMARY KEY (Id_Cheque);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_PK PRIMARY KEY (Id_Beneficios);
ALTER TABLE Estados ADD CONSTRAINT Estados_PK PRIMARY KEY (Id_Estado);

--Creación de claves foraneas
ALTER TABLE Regiones ADD CONSTRAINT Regiones_Paises_FK FOREIGN KEY (Paises_Id_Pais) REFERENCES Paises (Id_Pais);
ALTER TABLE Provincias ADD CONSTRAINT Provincias_Region_FK FOREIGN KEY (Regiones_Id_Region) REFERENCES Regiones (Id_Region);
ALTER TABLE Comunas ADD CONSTRAINT Comunas_Provincias_FK FOREIGN KEY (Provincias_Id_Provincia) REFERENCES Provincias (Id_Provincia);
ALTER TABLE Sedes ADD CONSTRAINT Sedes_Comunas_FK FOREIGN KEY (Comunas_Id_Comuna) REFERENCES Comunas (Id_Comuna);
ALTER TABLE Sedes ADD CONSTRAINT Sedes_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Recepcionistas ADD CONSTRAINT Recepcionistas_Sedes_FK FOREIGN KEY (Sedes_Id_Sede) REFERENCES Sedes (Id_Sede);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_Recepcionista_FK FOREIGN KEY (Recepcionistas_Id_recepcionista) REFERENCES Recepcionistas (Id_Recepcionista);
ALTER TABLE Solicitudes_Ingreso ADD CONSTRAINT Solicitudes_Ingreso_Estados_FK FOREIGN KEY (Estados_Id_Estado) REFERENCES Estados (Id_Estado);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Afiliados_Cargas_FK FOREIGN KEY (Afiliados_Cargas_Id_Afiliado_Carga) REFERENCES Afiliados_Cargas (Id_Afiliado_Carga);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Nacionalidades_FK FOREIGN KEY (Nacionalidades_Id_Nacionalidad) REFERENCES Nacionalidades (Id_Nacionalidad);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Nacionalidades_FK FOREIGN KEY (Nacionalidades_Id_Nacionalidad) REFERENCES Nacionalidades (Id_Nacionalidad);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Marcas_FK FOREIGN KEY (Marcas_Id_Marca) REFERENCES Marcas (Id_Marca);
ALTER TABLE Vehiculos ADD CONSTRAINT Vehiculos_Tipo_Vehiculos_FK FOREIGN KEY (Tipo_Vehiculos_Id_Tipo_Vehiculo) REFERENCES Tipo_Vehiculos (Id_Tipo_Vehiculo);
ALTER TABLE Tipo_Pagos ADD CONSTRAINT Tipo_Pagos_Cheques_FK FOREIGN KEY (Cheques_Id_Cheque) REFERENCES Cheques (Id_Cheque);
ALTER TABLE Tipo_Pagos ADD CONSTRAINT Tipo_Pagos_Bancos_FK FOREIGN KEY (Bancos_Id_Banco) REFERENCES Bancos (Id_Banco);
ALTER TABLE Formas_Pago ADD CONSTRAINT Formas_Pago_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Formas_Pago ADD CONSTRAINT Formas_Pago_Tipo_Pagos_FK FOREIGN KEY (Tipo_Pagos_Id_Tipo_Pago) REFERENCES Tipo_Pagos (Id_Tipo_Pago);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Aseguradoras_FK FOREIGN KEY (Aseguradoras_Id_Aseguradora) REFERENCES Aseguradoras (Id_Aseguradora);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Tipo_Pagos_FK FOREIGN KEY (Tipo_Pagos_Id_Tipo_Pago) REFERENCES Tipo_Pagos (Id_Tipo_Pago);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_Beneficios_FK FOREIGN KEY (Beneficios_Id_Beneficios) REFERENCES Beneficios (Id_Beneficios);
ALTER TABLE Beneficios_Sindicato ADD CONSTRAINT Beneficios_Sindicato_Sindicatos_FK FOREIGN KEY (Sindicatos_Id_Sindicato) REFERENCES Sindicatos (Id_Sindicato);
ALTER TABLE Afiliados_Cargas ADD CONSTRAINT Afiliados_Cargas_Afiliados_FK FOREIGN KEY (Afiliados_Id_Afiliado) REFERENCES Afiliados (Id_Afiliado);
ALTER TABLE Modelos ADD CONSTRAINT Modelos_Marcas_FK FOREIGN KEY (Marcas_Id_Marca) REFERENCES Marcas (Id_Marca);

--Formato fecha
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY';

--Insert
INSERT INTO Paises VALUES (1, 'Chile');

INSERT INTO Regiones VALUES (1,'Tarapacá',1);
INSERT INTO Regiones VALUES (2,'Antofagasta',1);
INSERT INTO Regiones VALUES (3,'Atacama',1);
INSERT INTO Regiones VALUES (4,'Coquimbo',1);
INSERT INTO Regiones VALUES (5,'Valparaíso',1);
INSERT INTO Regiones VALUES (6,'O Higgins',1);
INSERT INTO Regiones VALUES (7,'Maule',1);
INSERT INTO Regiones VALUES (8,'Bío Bío',1);
INSERT INTO Regiones VALUES (9,'Araucanía',1);
INSERT INTO Regiones VALUES (10,'Los Lagos',1);
INSERT INTO Regiones VALUES (11,'Aysén',1);
INSERT INTO Regiones VALUES (12,'Magallanes',1);
INSERT INTO Regiones VALUES (13,'Región Metropolitana de Santiago',1);
INSERT INTO Regiones VALUES (14,'Los Ríos',1);
INSERT INTO Regiones VALUES (15,'Arica y Parinacota',1);
INSERT INTO Regiones VALUES (16,'Ñuble',1);

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

INSERT INTO Recepcionistas VALUES (1,'Miguel','','Bose','',11111111,'1',1);

INSERT INTO Nacionalidades VALUES (1,'Chilena',0,'','');

INSERT INTO Bancos VALUES (1,'Banco Estado');

INSERT INTO Cheques VALUES (1,0);

INSERT INTO Marcas VALUES (1,'Mazda');

INSERT INTO Modelos VAlUES (1,'Mazda 3',1);

INSERT INTO Tipo_Vehiculos VALUES (1,'Sedan');

INSERT INTO Afiliados VALUES(1,'Joel','','Gutierrez','',912345678,'Rio Misisipi','Joelgutierrez@gmail.com',1,1);

INSERT INTO Vehiculos VALUES (1,'GGWP69','Rojo','4G8P56JJ5LY825946','27JSN82750',1,1,1);

INSERT INTO Tipo_Pagos Values(1,6000,0,'29/06/22','Pago Inicial: 6000 Pagado',1,1);

INSERT INTO Beneficios VALUES (1,'Seguro Accidente',1,1);

INSERT INTO Formas_Pago VALUES (1,'Efectivo',1,1);
INSERT INTO Formas_Pago VALUES (2,'Transferencia',1,1);
INSERT INTO Formas_Pago VALUES (3,'Cheque',1,1);

INSERT INTO Estados VALUES (1,'Al dia','Aceptada',1);

INSERT INTO Beneficios_Sindicato VALUES (1,'Usos: 0','Usos: 0','Usos: 0','Terrestre: Mes Junio',1,1);

INSERT INTO Afiliados_Cargas VALUES (1,1);

INSERT INTO Cargas VALUES (1,'Perro','','Jesus','','29/06/20','Mascota',1,1);

INSERT INTO Solicitudes_Ingreso VALUES (1,'1','28/06/22',1500000,'Joel','','Gutierrez','',912345678,'Rio Misisipi','06/09/91','1','Joelgutierrez@gmail.com','Fluido','',1,1);