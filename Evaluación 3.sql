--Creacion de tablas
CREATE TABLE Descuento_Transporte(
    Id_Descuento        NUMBER NOT NULL,
    Terreste            CHAR(1) NOT NULL,
    Aereo               CHAR(1) NOT NULL,
    Maritimo            CHAR(1) NOT NULL
);

CREATE TABLE Beneficioos(
    Id_Beneficios       NUMBER NOT NULL,
    Salud               CHAR(1) NOT NULL,
    Educacion           CHAR(1) NOT NULL,
    Deporte             CHAR(1) NOT NULL
);

CREATE TABLE Historial_Pago(
    Id_Historial_Pago   NUMBER NOT NULL,   
    Pago_Inicial        NUMBER NOT NULL,
    Pago_Mensual        NUMBER,
    Fecha_Pago          DATE NOT NULL
);

CREATE TABLE Tipo_Pago(
    Id_Tipo_Pago        NUMBER NOT NULL, 
    Nombre_Banco        CHAR(250),
    Efectivo            CHAR(1) NOT NULL,
    Transferencia       CHAR(1) NOT NULL,
    Cheque              CHAR(1) NOT NULL
);

CREATE TABLE Cargas(
    Id_Cargas           NUMBER NOT NULL,
    Primer_Nombre       CHAR(250) NOT NULL,
    Segundo_Nombre      CHAR(250),
    Apellido_Paterno    CHAR(250) NOT NULL,
    Apellido_Materno    CHAR(250),
    Fecha_Nacimiento    DATE NOT NULL,
    Parentesco          CHAR(250) NOT NULL,   

);

CREATE TABLE Nacionalidad(
    Id_Nacionalidad     NUMBER NOT NULL,
    Nombre              CHAR(250) NOT NULL,
    Run                 NUMBER,
    DV                  CHAR(1),
    Pasaporte           CHAR(250) NOT NULL,
);

CREATE TABLE Persona(
    Id_Persona
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

