--Creacion tabla clientes
CREATE TABLE Clientes(
    rut_cliente      NUMBER(11) NOT NULL,
    dv               CHAR(1) NOT NULL,
    primer_nombre    VARCHAR2(250) NOT NULL,
    segungo_nombre   VARCHAR2(250),
    apellido_paterno VARCHAR2(250) NOT NULL,
    apellido_materno VARCHAR2(250),
);

--Creacion PK clientes
ALTER TABLE Clientes ADD CONSTRAINT cliente_PK PRIMARY KEY (rut_cliente);

--Creacion tabla comunas
CREATE TABLE Comunas(
    id_comuna NUMBER NOT NULL,
    nombre VARCHAR2(250) NOT NULL,
    provincia_id NUMBER NOT NULL,
);

--Creacion PK comunas
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY (id_comuna);

--Creacion FK comunas
ALTER TABLE Clientes ADD CONSTRAINT comuna_FK FOREIGN KEY (comuna_id);
    REFERENCES Comunas (id_comuna);

--Ingresar datos a la tabla comunas
INSERT INTO Comunas VALUES (1, 'Arica', 1);
INSERT INTO Comunas VALUES (2, 'Curico', 1);

--Ingresar datos a la table clientes
INSERT INTO Clientes VALUES (321,'K','Alan','','Brito','');
INSERT INTO Clientes VALUES (123,);

-- Select basico
SELECT * FROM Clientes;
SELECT * FROM Comunas;

--Select ordenado
SELECT * FROM Clientes ORDER BY rut_cliente; 
