--Creacion de tablas
CREATE TABLE Pais (
   Id_Pais     NUMBER      NOT NULL,
   Nombre_Pais CHAR (250)  NOT NULL
);

CREATE TABLE Region (
   Id_Region     NUMBER      NOT NULL,
   Nombre_Region CHAR        NOT NULL,
   Pais_Id_Pais  NUMBER      NOT NULL
);

CREATE TABLE Ciudad (
   Id_Ciudad     NUMBER       NOT NULL,
   Nombre_Ciudad CHAR (250)   NOT NULL,
   Region_Id_Region NUMBER NOT NULL
);

CREATE TABLE Comuna (
   Id_comuna     NUMBER       NOT NULL,
   Nombre_Comuna CHAR (250)   NOT NULL,
   Ciudad_Id_Ciudad NUMBER NOT NULL,
   Sede_Id_Sede NUMBER NOT NULL
);

CREATE TABLE Sede (
   Id_Sede     NUMBER      NOT NULL,
   Nombre_Sede CHAR (250)  NOT NULL,
   Comuna_Id_Comuna NUMBER NOT NULL,
   Sindicato_Id_Sindicato NUMBER NOT NULL
);

CREATE TABLE Sindicato (
   Id_Sindicato     NUMBER      NOT NULL,
   Nombre_Sindicato CHAR (250)  NOT NULL,
   Rut              NUMBER      NOT NULL,
   DV               VARCHAR(1)  NOT NULL,
   Aseguradora_Id_Aseguradora NUMBER NOT NULL
);

CREATE TABLE Aseguradora (
   Id_Aseguradora     NUMBER      NOT NULL,
   Nombre_Aseguradora CHAR (250)  NOT NULL,
   Rut                NUMBER      NOT NULL,
   DV                 VARCHAR(1)  NOT NULL,
   Sindicato_Id_Sindicato NUMBER NOT NULL
);

CREATE TABLE Afiliados (
   Id_Afiliados         NUMBER         NOT NULL,
   Prime_Nombre         CHAR (250)     NOT NULL,
   Segundo_Nombre       CHAR,
   Apellido_Paterno     CHAR (250)     NOT NULL,
   Apellido_Materno     CHAR,
   Telefono             VARCHAR2 (250) NOT NULL,
   Direccion            VARCHAR2 (250) NOT NULL,
   Correo_Electronico   VARCHAR2 (250) NOT NULL,
   Sindicato_Id_Sindicato NUMBER NOT NULL,
   Nacionalidad_Id_Nacionalidad NUMBER NOT NULL,
   Tipo_Pago_Id_Tipo_Pago NUMBER NOT NULL
);

CREATE TABLE Vehiculo (
   Id_Vehiculo    NUMBER,
   Marca          VARCHAR2 (250) NOT NULL,
   Modelo         VARCHAR2 (250) NOT NULL,
   Patente        VARCHAR2 (250) NOT NULL,
   Color          VARCHAR2 (250) NOT NULL,
   Tipo           VARCHAR2 (250) NOT NULL,
   Numero_Chasis  VARCHAR2 (250) NOT NULL,
   Numero_Motor   VARCHAR2 (250) NOT NULL,
   Afiliados_Id_Afiliados NUMBER NOT NULL
);

CREATE TABLE Recepcionista (
   Id_recepcionista  NUMBER        NOT NULL,
   Primer_Nombre     CHAR (250)    NOT NULL,
   Segundo_Nombre    CHAR (250),
   Apellido_Paterno  CHAR (250)    NOT NULL,
   Apellido_Materno  CHAR (250),
   Run               NUMBER        NOT NULL,
   DV                VARCHAR2 (1)  NOT NULL,
   Sede_Id_Sede     NUMBER NOT NULL
);

CREATE TABLE Descuento_Transporte (
    Id_Descuento        NUMBER NOT NULL,
    Terreste            CHAR(1) NOT NULL,
    Aereo               CHAR(1) NOT NULL,
    Maritimo            CHAR(1) NOT NULL,
    Beneficios_Id_Beneficios NUMBER NOT NULL
);

CREATE TABLE Beneficios (
    Id_Beneficios       NUMBER NOT NULL,
    Salud               CHAR(1) NOT NULL,
    Educacion           CHAR(1) NOT NULL,
    Deporte             CHAR(1) NOT NULL,
    Historial_Pago_Id_Historial_Pago    NUMBER NOT NULL,
    Descuento_Transporte_Id_Descuento_Transporte NUMBER NOT  NULL
);

CREATE TABLE Historial_Pago (
    Id_Historial_Pago   NUMBER NOT NULL,   
    Pago_Inicial        NUMBER NOT NULL,
    Pago_Mensual        NUMBER,
    Fecha_Pago          DATE NOT NULL,
    Tipo_Pago_Id_Tipo_Pago NUMBER NOT NULL
);

CREATE TABLE Tipo_Pago (
    Id_Tipo_Pago        NUMBER NOT NULL, 
    Nombre_Banco        CHAR(250),
    Efectivo            CHAR(1) NOT NULL,
    Transferencia       CHAR(1) NOT NULL,
    Historial_Pago_Id_Historial_Pago    NUMBER NOT NULL,
    Afiliados_Id_Afiliados NUMBER NOT NULL
);

CREATE TABLE Cargas (
    Id_Cargas           NUMBER NOT NULL,
    Primer_Nombre       CHAR(250) NOT NULL,
    Segundo_Nombre      CHAR(250),
    Apellido_Paterno    CHAR(250) NOT NULL,
    Apellido_Materno    CHAR(250),
    Fecha_Nacimiento    DATE NOT NULL,
    Parentesco          CHAR(250) NOT NULL,
    Personas_Id_Personas NUMBER NOT NULL,
    Nacionalidad_Id_Nacionalidad NUMBER NOT NULL,
    Afiliados_Id_Afiliados NUMBER NOT NULL
);

CREATE TABLE Nacionalidad (
    Id_Nacionalidad     NUMBER NOT NULL,
    Nombre              CHAR(250) NOT NULL,
    Run                 NUMBER,
    DV                  CHAR(1),
    Pasaporte           CHAR(250) NOT NULL,
    Personas_Id_Personas NUMBER NOT NULL, 
    Cargas_Id_Cargas NUMBER NOT NULL,
    Afiliados_Id_Afiliados NUMBER NOT NULL
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
    Discapacidad        VARCHAR2(250),
    Solicitud_Ingreso_Id_Solicitud_Ingreso NUMBER NOT NULL,
    Nacionalidad_Id_Nacionalidad NUMBER NOT NULL
);
CREATE TABLE Solicitud_Ingreso (
    Id_Solicitud        NUMBER NOT NULL,
    Entrega_Formulario  CHAR(1) NOT NULL,
    Fecha_Creacion      DATE NOT NULL,
    Pretension_Sueldo   NUMBER NOT NULL,
    Recepcionista_Id_Recepcionista NUMBER NOT NULL,
    Persona_Id_Persona NUMBER NOT NULL
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

--Creación de claves foraneas
ALTER TABLE Region ADD CONSTRAINT Region_Id_Pais_FK FOREIGN KEY (Id_Pais) REFERENCES Pais (Id_Pais);
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_Id_Region_FK FOREIGN KEY (Id_Region) REFERENCES Region (Id_Region);
ALTER TABLE Comuna ADD CONSTRAINT Comuna_Id_Ciudad_FK FOREIGN KEY (Id_Ciudad) REFERENCES Ciudad (Id_Ciudad);
ALTER TABLE Sede ADD CONSTRAINT Sede_Id_Comuna_FK FOREIGN KEY (Id_Comuna) REFERENCES Comnuna (Id_Comuna);
ALTER TABLE Sede ADD CONSTRAINT Sede_Id_Sindicato_FK FOREIGN KEY (Id_Sindicato) REFERENCES Sindicato (Id_Sindicato);
ALTER TABLE Sindicato ADD CONSTRAINT Sindicato_Id_Aseguradora_FK FOREIGN KEY (Id_Aseguradora) REFERENCES Aseguradora (Id_Aseguradora);
ALTER TABLE Aseguradora ADD CONSTRAINT Aseguradora_Id_Sindicato_FK FOREIGN KEY (Id_Sindicato) REFERENCES Sindicato (Id_Sindicato);
ALTER TABLE Recepcionista ADD CONSTRAINT Recepcionista_Id_Sede_FK FOREIGN KEY (Id_Sede) REFERENCES Sede (Id_Sede);
ALTER TABLE Sede ADD CONSTRAINT Sede_Id_Comuna_FK FOREIGN KEY (Id_Comuna) REFERENCES Comnuna (Id_Comuna);
ALTER TABLE Solicitud_Ingreso ADD CONSTRAINT Solicitud_Ingreso_Id_Recepcionista_FK FOREIGN KEY (Id_Recepcionista) REFERENCES Recepcionista (Id_Recepcionista);
ALTER TABLE Solicitud_Ingreso ADD CONSTRAINT Solicitud_Ingreso_Id_Persona_FK FOREIGN KEY (Id_Persona) REFERENCES Persona (Id_Persona);
ALTER TABLE Persona ADD CONSTRAINT Persona_Id_Solicitud_Ingreso_FK FOREIGN KEY (Id_Solicitud_Ingreso) REFERENCES Solicitud_Ingreso (Id_Solicitud_Ingreso);
ALTER TABLE Persona ADD CONSTRAINT Persona_Id_Nacionalidad_FK FOREIGN KEY (Id_Nacionalidad) REFERENCES Nacionalidad (Id_Nacionalidad);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Id_Nacionalidad_FK FOREIGN KEY (Id_Nacionalidad) REFERENCES Nacionalidad (Id_Nacionalidad);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Id_Afiliados_FK FOREIGN KEY (Id_Afiliados) REFERENCES Afiliados (Id_Afiliados);
ALTER TABLE Cargas ADD CONSTRAINT Cargas_Id_Persona_FK FOREIGN KEY (Id_Persona) REFERENCES Persona (Id_Persona);
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_Id_Afiliados_FK FOREIGN KEY (Id_Afilados) REFERENCES Afiliados (Id_Afiliados);
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_Id_Cargas_FK FOREIGN KEY (Id_Cargas) REFERENCES Cargas (Id_Cargas);
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_Id_Personas_FK FOREIGN KEY (Id_Personas) REFERENCES Personas (Id_Personas);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Id_Sindicato_FK FOREIGN KEY (Id_Sindicato) REFERENCES Sindicato (Id_Sindicato);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Id_Nacionalidad_FK FOREIGN KEY (Id_Nacionalidad) REFERENCES Nacionalidad (Id_Nacionalidad);
ALTER TABLE Afiliados ADD CONSTRAINT Afiliados_Id_Tipo_Pago_FK FOREIGN KEY (Id_Tipo_Pago) REFERENCES Tipo_Pago (Id_Tipo_Pago);
ALTER TABLE Vehiculo ADD CONSTRAINT Vehiculo_Id_Afiliados_FK FOREIGN KEY (Id_Afiliados) REFERENCES Afiliados (Id_Afilados);
ALTER TABLE Tipo_Pago ADD CONSTRAINT Tipo_Pago_Id_Afiliados_FK FOREIGN KEY (Id_Afiliados) REFERENCES Afiliados (Id_Afilados);
ALTER TABLE Tipo_Pago ADD CONSTRAINT Tipo_Pago_Id_Historial_Pago_FK FOREIGN KEY (Id_Historial_Pago) REFERENCES Historial_Pago (Id_Historial_Pago);
ALTER TABLE Historial_Pago ADD CONSTRAINT Historial_Pago_Id_Tipo_Pago_FK FOREIGN KEY (Id_Tipo_Pago) REFERENCES Tipo_Pago (Id_Tipo_Pago);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Id_Historial_Pago_FK FOREIGN KEY (Id_Historial_Pago) REFERENCES Historial_Pago (Id_Historial_Pago);
ALTER TABLE Beneficios ADD CONSTRAINT Beneficios_Id_Descuento_Transporte_FK FOREIGN KEY (Id_Descuento) REFERENCES Descuento_Transporte (Id_Descuento);
ALTER TABLE Descuento_Transporte ADD CONSTRAINT Descuento_Transporte_Id_Beneficios_FK FOREIGN KEY (Id_Beneficios) REFERENCES Beneficios (Id_Beneficios);