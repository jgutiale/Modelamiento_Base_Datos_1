CREATE TABLE Cliente(
    rut_cliente      NUMBER(11) NOT NULL,
    dv CHAR(1)       NOT NULL,
    primer_nombre    VARCHAR2(250) NOT NULL,
    segungo_nombre   VARCHAR2(250),
    apellido_paterno VARCHAR2(250) NOT NULL,
    apellido_materno VARCHAR2(250),
);