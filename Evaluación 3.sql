--Creacion de tablas
CREATE TABLE Pais (
   Id_Pais     NUMBER      NOT NULL,
   Nombre_Pais CHAR (250)  NOT NULL
);

CREATE TABLE Region (
   Id_Region     NUMBER      NOT NULL,
   Nombre_Region CHAR        NOT NULL
);

CREATE TABLE Ciudad (
   Id_Ciudad     NUMBER       NOT NULL,
   Nombre_Ciudad CHAR (250)   NOT NULL
);

CREATE TABLE Comuna (
   Id_comuna     NUMBER       NOT NULL,
   Nombre_Comuna CHAR (250)   NOT NULL
);

CREATE TABLE Sede (
   Id_Sede     NUMBER      NOT NULL,
   Nombre_Sede CHAR (250)  NOT NULL
);

CREATE TABLE Sindicato (
   Id_Sindicato     NUMBER      NOT NULL,
   Nombre_Sindicato CHAR (250)  NOT NULL,
   Rut              NUMBER      NOT NULL,
   DV               VARCHAR(1)  NOT NULL
);

CREATE TABLE Aseguradora (
   Id_Aseguradora     NUMBER      NOT NULL,
   Nombre_Aseguradora CHAR (250)  NOT NULL,
   Rut                NUMBER      NOT NULL,
   DV                 VARCHAR(1)  NOT NULL
);

CREATE TABLE Afiliados (
   Id_Afiliados         NUMBER         NOT NULL,
   Prime_Nombre         CHAR (250)     NOT NULL,
   Segundo_Nombre       CHAR,
   Apellido_Paterno     CHAR (250)     NOT NULL,
   Apellido_Materno     CHAR,
   Telefono             VARCHAR2 (250) NOT NULL,
   Direccion            VARCHAR2 (250) NOT NULL,
   Correo_Electronico   VARCHAR2 (250) NOT NULL
);

CREATE TABLE Vehiculo (
   Id_Vehiculo    NUMBER,
   Marca          VARCHAR2 (250) NOT NULL,
   Modelo         VARCHAR2 (250) NOT NULL,
   Patente        VARCHAR2 (250) NOT NULL,
   Color          VARCHAR2 (250) NOT NULL,
   Tipo           VARCHAR2 (250) NOT NULL,
   Numero_Chasis  VARCHAR2 (250) NOT NULL,
   Numero_Motor   VARCHAR2 (250) NOT NULL
);

CREATE TABLE Recepcionista (
   Id_recepcionista  NUMBER        NOT NULL,
   Primer_Nombre     CHAR (250)    NOT NULL,
   Segundo_Nombre    CHAR (250),
   Apellido_Paterno  CHAR (250)    NOT NULL,
   Apellido_Materno  CHAR (250),
   Run               NUMBER        NOT NULL,
   DV                VARCHAR2 (1)  NOT NULL
);

CREATE TABLE Descuento_Transporte (
    Id_Descuento        NUMBER NOT NULL,
    Terreste            CHAR(1) NOT NULL,
    Aereo               CHAR(1) NOT NULL,
    Maritimo            CHAR(1) NOT NULL
);

CREATE TABLE Beneficioos (
    Id_Beneficios       NUMBER NOT NULL,
    Salud               CHAR(1) NOT NULL,
    Educacion           CHAR(1) NOT NULL,
    Deporte             CHAR(1) NOT NULL
);

CREATE TABLE Historial_Pago (
    Id_Historial_Pago   NUMBER NOT NULL,   
    Pago_Inicial        NUMBER NOT NULL,
    Pago_Mensual        NUMBER,
    Fecha_Pago          DATE NOT NULL
);

CREATE TABLE Tipo_Pago (
    Id_Tipo_Pago        NUMBER NOT NULL, 
    Nombre_Banco        CHAR(250),
    Efectivo            CHAR(1) NOT NULL,
    Transferencia       CHAR(1) NOT NULL,
    Cheque              CHAR(1) NOT NULL
);

CREATE TABLE Cargas (
    Id_Cargas           NUMBER NOT NULL,
    Primer_Nombre       CHAR(250) NOT NULL,
    Segundo_Nombre      CHAR(250),
    Apellido_Paterno    CHAR(250) NOT NULL,
    Apellido_Materno    CHAR(250),
    Fecha_Nacimiento    DATE NOT NULL,
    Parentesco          CHAR(250) NOT NULL
);

CREATE TABLE Nacionalidad (
    Id_Nacionalidad     NUMBER NOT NULL,
    Nombre              CHAR(250) NOT NULL,
    Run                 NUMBER,
    DV                  CHAR(1),
    Pasaporte           CHAR(250) NOT NULL
);

CREATE TABLE Persona (
    Id_Persona          NUMBER NOT NULL,
    Primer_Nombre       CHAR(250) NOT NULL,
    Segundo_Nombre      CHAR(250),
    Apellido_Paterno    CHAR(250) NOT NULL,
    Apellido_Materno    CHAR(250),
    Telefono            VARCHAR2(250) NOT NULL,
    Direccion           VARCHAR2(250) NOT NULL,
    Fecha_Nacimiento    DATE NOT NULL,
    Curriculum_Vitae    CHAR(1) NOT NULL,
    Correo_Electronico  VARCHAR2(250) NOT NULL,
    Genero              VARCHAR2(250) NOT NULL,
    Discapacidad        VARCHAR2(250)
);

--Creación de claves primarias
ALTER TABLE Pais ADD CONSTRAINT Pais_PK PRIMARY KEY (Id_Pais);
ALTER TABLE Region ADD CONSTRAINT Region_PK PRIMARY KEY (Id_Region);
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_PK PRIMARY KEY (Id_Ciudad);
ALTER TABLE Comuna ADD CONSTRAINT Comuna_PK PRIMARY KEY (Id_Comuna);
ALTER TABLE Sede ADD CONSTRAINT Sede_PK PRIMARY KEY (Id_Sede);
ALTER TABLE Sindicato ADD CONSTRAINT Sindicato_PK PRIMARY KEY (Id_Sindicato);
ALTER TABLE Aseguradora ADD CONSTRAINT Aseguradora_PK PRIMARY KEY (Id_Aseguradora);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_PK PRIMARY KEY (Id_Afiliados);
ALTER TABLE Vehiculo ADD CONSTRAINT Vehiculo_PK PRIMARY KEY (Id_Vehiculo);
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_PK PRIMARY KEY (Id_Nacionalidad);
ALTER TABLE Persona ADD CONSTRAINT Persona_PK PRIMARY KEY (Id_Persona);
ALTER TABLE Solicitud_ingreso ADD CONSTRAINT Solicitud_ingreso_PK PRIMARY KEY (Id_Solicitud);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_PK PRIMARY KEY (Id_Cargas);
ALTER TABLE Tipo_Pago ADD CONSTRAINT Tipo_Pago_PK PRIMARY KEY (Id_Tipo_Pago);
ALTER TABLE Historial_Pago ADD CONSTRAINT Historial_Pago_PK PRIMARY KEY (Id_Historial_Pago);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_PK PRIMARY KEY (Id_Beneficios);
ALTER TABLE Descuento_Transporte ADD CONSTRAINT Descuento_Transporte_PK PRIMARY KEY (Id_Descuento);
ALTER TABLE Recepcionista ADD CONSTRAINT Recepcionista_PK PRIMARY KEY (Id_Recepcionista);
