USE proyectoder;

ALTER TABLE clientes
CHANGE COLUMN id id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE equipo
CHANGE COLUMN id id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE clientes
ADD COLUMN equipos_id INT;

ALTER TABLE equipo
ADD FOREIGN KEY (equipos_id) REFERENCES clientes (id)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION;


CREATE TABLE clientes(
	id INT, 
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    DNI VARCHAR(45),
    Ods VARCHAR(45)
)

CREATE TABLE equipo(
	id INT, 
    IMEI VARCHAR(60),
    CARACTERÍSTICA_FALLO VARCHAR(60),
    Ods VARCHAR(60)
)

CREATE TABLE DEFECTOS(
	id INT, 
    FUERA_DE_GTIA VARCHAR(50),
    EN_GARANTÍA  VARCHAR(50),
    Ods VARCHAR(50),
    IMEI VARCHAR(50)
);

CREATE TABLE SOLUCIÓN(
	id INT, 
    POSIBLE VARCHAR(45),
    IMPOSIBLE VARCHAR(45),
    Ods VARCHAR(45)
);

CREATE TABLE presupuesto_factura(
	id INT, 
    nombre VARCHAR(45),
    Ods VARCHAR(45),
    MANO_DE_OBRA VARCHAR(45),
    REPUESTOS VARCHAR(45),
    TOTAL VARCHAR(45)
);


CREATE TABLE EMPLEADOS(
	id INT, 
   usuario VARCHAR(45)
);

INSERT INTO clientes (Ods, equipos_id)
VALUES (001, 001);
SELECT * from clientes

INSERT INTO defectos (FUERA_DE_GTIA, Ods, EN_GARANTÍA)
VALUES ('SI', 001, 'NEGATIVO');
SELECT * from defectos

INSERT INTO empleados (id, usuario)
VALUES (100, 'bob_marley');
SELECT * from empleados

INSERT INTO equipo (id, IMEI, CARACTERÍSTICA_FALLO, Ods)
VALUES (001, 1543256723, 'EQUIPO MOJADO', 001);
SELECT * from equipo

INSERT INTO presupuesto_factura (id, nombre, Ods, MANO_DE_OBRA, REPUESTOS, TOTAL)
VALUES (001, 'armando_mesas', 001, '$7500', '$9000', '$16.500');

SELECT * FROM presupuesto_factura WHERE id = 1;
UPDATE presupuesto_factura SET nombre = 'armando_mezaz' WHERE id = 1;


