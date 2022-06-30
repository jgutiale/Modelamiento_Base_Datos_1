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
   Id_Provincia            NUMBER       NOT NULL,
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