CREATE DATABASE Tocomocho_Racer

CREATE TABLE cliente(
rut_cliente VARCHAR(12) NOT NULL,
id_venta INT, --FK detalle venta
nom_cliente VARCHAR(50) NULL,
dir_cliente VARCHAR(50) NULL,
mail_cliente VARCHAR(50) NULL,
tel_cliente VARCHAR(50) NULL,
PRIMARY KEY (rut_cliente),
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE cliente ALTER COLUMN id_venta INT
ALTER TABLE cliente ALTER COLUMN nom_cliente VARCHAR(50) NULL
ALTER TABLE cliente ALTER COLUMN dir_cliente VARCHAR(50) NULL
ALTER TABLE cliente ALTER COLUMN mail_cliente VARCHAR(50) NULL
ALTER TABLE cliente ALTER COLUMN tel_cliente VARCHAR(50) NULL*/

--Insertar registros a la tabla cliente.
INSERT INTO cliente(rut_cliente, nom_cliente, dir_cliente, mail_cliente, tel_cliente)
VALUES ('19123456-7', 'Sofía Flores', 'Calle Los Jazmines 123', 'sflores@mail.com', '+56923456789'),
       ('15456789-0', 'Martín Valdés', 'Avenida Las Acacias 456', 'mvaldes@mail.com', '+56934567890'),
	   ('17890123-4', 'Juan Pérez', 'Avenida Los Leones 234', 'jperez@mail.com', '+56956789012'),
	   ('19020343-6','Camila Torres','Avenida Cristobal Colon', 'ctorres@mail.com', '+56923456789'),
	   ('12345678-9', 'Valentina Silva', 'Calle Los Olivos 567', 'vsilva@mail.com', '+56967890123'),
	   ('13456789-0', 'Constanza Álvarez', 'Calle Los Cerezos 123', 'calvarez@mail.com', '+56989012345'),
	   ('11234567-8', 'José González', 'Avenida Los Laureles 890', 'jgonzalez@mail.com', '+56978901234'),
	   ('14567890-1', 'Diego Muñoz','Avenida Los Abedules 456', 'dmunoz@mail.com', '+56990123456'),
	   ('16789012-3', 'Catalina Herrera', 'Calle Los Almendros 789', 'cherrera@mail.com', '+56901234567'),
	   ('10123456-7', 'Pablo Castro', 'Avenida Los Arces 234', 'pcastro@mail.com', '+56912345678');

	
--comando extra
/*SELECT * FROM cliente*/    
    
--clientes
    /*('19123456-7', 'Sofía Flores', 'Calle Los Jazmines 123', 'sflores@mail.com', '+56923456789'),
      ('15456789-0', 'Martín Valdés', 'Avenida Las Acacias 456', 'mvaldes@mail.com', '+56934567890'),
	  ('17890123-4', 'Juan Pérez', 'Avenida Los Leones 234', 'jperez@mail.com', '+56956789012'),
	  ('19020343-6','Camila Torres','Avenida Cristobal Colon', 'ctorres@mail.com', '+56923456789'),
	  ('12345678-9', 'Valentina Silva', 'Calle Los Olivos 567', 'vsilva@mail.com', '+56967890123'),
	  ('13456789-0', 'Constanza Álvarez', 'Calle Los Cerezos 123', 'calvarez@mail.com', '+56989012345'),
	  ('11234567-8', 'José González', 'Avenida Los Laureles 890', 'jgonzalez@mail.com', '+56978901234'),
	  ('14567890-1', 'Diego Muñoz','Avenida Los Abedules 456', 'dmunoz@mail.com', '+56990123456'),
	  ('16789012-3', 'Catalina Herrera', 'Calle Los Almendros 789', 'cherrera@mail.com', '+56901234567'),
	  ('10123456-7', 'Pablo Castro', 'Avenida Los Arces 234', 'pcastro@mail.com', '+56912345678');*/

CREATE TABLE vendedor (
rut_vendedor VARCHAR(12) NOT NULL,
id_venta INT, --FK detalle venta
nom_vendedor VARCHAR(50) NULL,
suel_vendedor VARCHAR(50)  NULL,
comi_vendedor VARCHAR(50) NULL,
entra_vendedor VARCHAR(50) NULL,
sali_vendedor VARCHAR(50)  NULL,
PRIMARY KEY (rut_vendedor)
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE vendedor ALTER COLUMN id_venta INT NULL
ALTER TABLE vendedor ALTER COLUMN nom_vendedor VARCHAR(50) NULL
ALTER TABLE vendedor ALTER COLUMN suel_vendedor VARCHAR(50) NULL
ALTER TABLE vendedor ALTER COLUMN comi_vendedor VARCHAR(50) NULL
ALTER TABLE vendedor ALTER COLUMN entra_vendedor VARCHAR(50) NULL
ALTER TABLE vendedor ALTER COLUMN sali_vendedor VARCHAR(50) NULL*/

--Insertar registros a tabla vendedor
INSERT INTO vendedor(rut_vendedor, nom_vendedor, suel_vendedor, comi_vendedor, entra_vendedor, sali_vendedor)
VALUES ('19685432-1', 'Sofía Pérez', '600.000', '20%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
	   ('12345678-9', 'Juan García', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('16789012-3', 'Ana Fernández', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('21654987-7', 'José Hernández',  '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('11223344-5', 'Catalina Soto', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('14568923-2', 'Mario Silva', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('23478965-4', 'Gabriela Torres', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('18290486-6', 'Carolina Reyes', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('10365478-8', 'Felipe Contreras', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
       ('20154789-2', 'Valentina Castro', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00');

--SELECT * FROM vendedor

--vendedores
	/*('19685432-1', 'Sofía Pérez', '600.000', '20%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
	  ('12345678-9', 'Juan García', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('16789012-3', 'Ana Fernández', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('21654987-7', 'José Hernández',  '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('11223344-5', 'Catalina Soto', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('14568923-2', 'Mario Silva', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('23478965-4', 'Gabriela Torres', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('18290486-6', 'Carolina Reyes', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('10365478-8', 'Felipe Contreras', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00'),
      ('20154789-2', 'Valentina Castro', '600.000', '15%', '2023-03-23 08:30:00', '2023-03-23 18:30:00');*/

CREATE TABLE manual_virtual (
id_producto_manual INT IDENTITY(1,1) NOT NULL,
desc_producto VARCHAR(300) NULL,
id_producto INT, --FK producto,
PRIMARY KEY (id_producto_manual)
);

INSERT INTO manual_virtual(desc_producto)
VALUES ('La mejor elección para el segmento superdeportivo, el neumático Michelin Pilot Sport 4 S proporciona máxima reactividad y adherencia en piso seco y mojado, además de una durabilidad insuperable.'),
	   ('DESC002'),
	   ('DESC003'),
	   ('DESC004'),
	   ('DESC005'),
	   ('DESC006'),
	   ('DESC007'),
	   ('DESC008'),
	   ('DESC009'),
	   ('DESC010');

--SELECT * FROM manual_virtual

--Comandos utilizados para modificar los errores que tenia la tabla
/*DROP TABLE manual_virtual
ALTER TABLE manual_virtual ALTER COLUMN id_producto INT NULL
ALTER TABLE manual_virtual ALTER COLUMN desc_producto VARCHAR(300) NOT NULL
ALTER TABLE manual_virtual
ADD FOREIGN KEY (id_producto) REFERENCES producto(id_producto)*/

CREATE TABLE producto (
id_producto INT IDENTITY (1, 1) NOT NULL,
sto_producto INT, --FK bodega
nom_producto VARCHAR(50) NULL,
prec_producto VARCHAR(50) NULL,
marc_producto VARCHAR(50) NULL,
mod_producto VARCHAR(50) NULL,
sali_vendedor VARCHAR(50) NULL,
id_categoria INT NULL,
nom_categoria VARCHAR(50) NULL,
PRIMARY KEY (id_producto)
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE producto ALTER COLUMN nom_producto VARCHAR(50) NULL
ALTER TABLE producto ALTER COLUMN prec_producto VARCHAR(50) NULL
ALTER TABLE producto ALTER COLUMN marc_producto VARCHAR(50) NULL
ALTER TABLE producto ALTER COLUMN mod_producto VARCHAR(50) NULL
ALTER TABLE producto ALTER COLUMN sali_vendedor VARCHAR(50) NULL
ALTER TABLE producto ALTER COLUMN nom_categoria VARCHAR(50) NULL
ALTER TABLE producto DROP COLUMN id_categoria
ALTER TABLE producto ADD id_categoria INT NULL*/

INSERT INTO producto(nom_producto, prec_producto, marc_producto, mod_producto, sali_vendedor, nom_categoria, id_categoria)
VALUES ('Neumático Michelin', '75.000', 'Michelin', 'Pilot Sport 4S', '2023-05-13 10:00:00', 'Neumático', 1),
	   ('Filtro de Aceite Mann-Filter', '15.000', 'Mann-Filter', 'HU 719/7 x', '2023-05-13 10:05:00', 'Filtro', 2),
       ('Llanta Enkei', '120.000', 'Enkei', 'RPF1', '2023-05-13 10:10:00', 'Llanta', 3),
       ('Batería Bosch', '80.000', 'Bosch', 'S4', '2023-05-13 10:15:00', 'Batería', 4),
       ('Amortiguador Bilstein', '125.000', 'Bilstein', 'B6 4600', '2023-05-13 10:20:00', 'Amortiguador', 5),
       ('Aceite Mobil 1', '30.000', 'Mobil', '1 0W-40', '2023-05-13 10:25:00', 'Aceite', 6),
       ('Filtro de Aire K&N', '45.000', 'K&N', '33-2231', '2023-05-13 10:30:00', 'Filtro', 7),
       ('Líquido de Frenos ATE', '15.000', 'ATE', 'DOT 4', '2023-05-13 10:35:00', 'Líquido de frenos', 8),
       ('Kit de Embrague Valeo', '220.000', 'Valeo', '786023', '2023-05-13 10:40:00', 'Kit de embrague', 9),
       ('Juego de Pastillas de Freno EBC', '60.000', 'EBC', 'Greenstuff', '2023-05-13 10:45:00', 'Pastilla de freno', 10);

SELECT * FROM producto

CREATE TABLE detalle_venta (
id_venta INT IDENTITY (1, 1) NOT NULL,
rut_vendedor  VARCHAR(12) NULL, --FK vendedor
id_producto INT NULL, --FK producto
fecha_venta DATETIME NULL, --FK registro contable
precio_unitario VARCHAR(300) NULL,
tipo_venta VARCHAR(50) NULL,
mont_venta VARCHAR(50) NULL,
formpa_venta VARCHAR(50) NULL,
forment_venta VARCHAR(50) NULL,
PRIMARY KEY (id_venta)
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE detalle_venta ALTER COLUMN rut_vendedor VARCHAR(12) NULL
ALTER TABLE detalle_venta ALTER COLUMN id_producto INT NULL
ALTER TABLE detalle_venta ALTER COLUMN fecha_venta DATETIME NULL
ALTER TABLE detalle_venta ALTER COLUMN precio_unitario VARCHAR(300) NULL
ALTER TABLE detalle_venta ALTER COLUMN tipo_venta VARCHAR(50) NULL
ALTER TABLE detalle_venta ALTER COLUMN mont_venta VARCHAR(50) NULL
ALTER TABLE detalle_venta ALTER COLUMN formpa_venta VARCHAR(50) NULL
ALTER TABLE detalle_venta ALTER COLUMN forment_venta VARCHAR(50) NULL*/

INSERT INTO detalle_venta(precio_unitario, tipo_venta, mont_venta, formpa_venta, forment_venta)
VALUES ('180000', 'en local', '360000', 'tarjeta debito', 'a domicilio'),
	   ('180000', 'online', '360000', 'tarjeta debito', 'a domicilio'),
	   ('180000', 'en local', '360000', 'tarjeta credito', 'entrega local'),
	   ('200000', 'online', '200000', 'tarjeta debito', 'entrega correos'),
	   ('1800000', 'en local', '3600000', 'tarjeta debito', 'entrega local'),
	   ('180000', 'online', '360000', 'efectivo', 'a domicilio'),
	   ('360000', 'online', '360000', 'efectivo', 'entrega local'),
	   ('200000', 'en local', '200000', 'tarjeta debito', 'entrega correos'),
	   ('1800000', 'en local', '3600000', 'tarjeta debito', 'entrega local'),
	   ('180000', 'en local', '360000', 'tarjeta debito', 'a domicilio');


CREATE TABLE registro_contable (
fecha_venta DATETIME NOT NULL,
id_venta INT NULL, --FK detalle venta
concepto_regcont VARCHAR(50) NULL,
tipotransaccion_regcont VARCHAR(50) NULL,
PRIMARY KEY (fecha_venta)
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE registro_contable ALTER COLUMN id_venta INT NULL
ALTER TABLE registro_contable ALTER COLUMN concepto_regcont VARCHAR(50) NULL
ALTER TABLE registro_contable ALTER COLUMN tipotransaccion_regcont VARCHAR(50) NULL*/

INSERT INTO registro_contable(fecha_venta, concepto_regcont, tipotransaccion_regcont)
VALUES ('2023-05-13 16:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 17:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 13:45:30', 'salida (venta)', 'Tarjeta de credito'),
	   ('2023-05-13 11:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 18:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 18:45:30', 'salida (venta)', 'Efectivo'),
	   ('2023-05-13 14:45:30', 'salida (venta)', 'Efectivo'),
	   ('2023-05-13 17:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 13:45:30', 'salida (venta)', 'Tarjeta de debito'),
	   ('2023-05-13 12:45:30', 'salida (venta)', 'Tarjeta de debito');

--SELECT * FROM registro_contable


CREATE TABLE bodega (
sto_producto INT NOT NULL,
id_producto INT, --FK producto
entrada_producto VARCHAR(50) NULL,
salida_producto VARCHAR(50) NULL,
ubicacion_producto VARCHAR(100) NULL,
PRIMARY KEY (sto_producto)
);

--Comandos utilizados para modificar los errores que tenia la tabla
/*ALTER TABLE bodega ALTER COLUMN entrada_producto VARCHAR(50) NULL
ALTER TABLE bodega ALTER COLUMN salida_producto VARCHAR(50) NULL
ALTER TABLE bodega ALTER COLUMN ubicacion_producto VARCHAR(100) NULL*/

INSERT INTO bodega(sto_producto, entrada_producto, salida_producto, ubicacion_producto)
VALUES (20, '13-03-2023 10:00:00', '13-05-2023 16:45:30', 'P15DD5 (Pasillo 15 Estantería Derecha Casillero D5)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 17:45:30', 'P15DC6 (Pasillo 15 Estantería Derecha Casillero C6)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 13:45:30', 'P15DA5 (Pasillo 15 Estantería Derecha Casillero A5)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 11:45:30', 'P15DE5 (Pasillo 15 Estantería Derecha Casillero E5)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 18:45:30', 'P15DE4 (Pasillo 15 Estantería Derecha Casillero E4)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 18:45:30', 'P10DD6 (Pasillo 10 Estantería Derecha Casillero D6)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 14:45:30', 'P12DD2 (Pasillo 12 Estantería Derecha Casillero D2)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 17:45:30', 'P11DA5 (Pasillo 11 Estantería Derecha Casillero A5)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 13:45:30', 'P10DB5 (Pasillo 10 Estantería Derecha Casillero B5)'),
	   (20, '13-03-2023 10:00:00', '13-05-2023 12:45:30', 'P14DC5 (Pasillo 14 Estantería Derecha Casillero C5)');

--SELECT * FROM bodega

--Comandos ALTER TABLE para designar las FK
ALTER TABLE cliente
ADD FOREIGN KEY (id_venta) REFERENCES detalle_venta(id_venta)

ALTER TABLE vendedor
ADD FOREIGN KEY (id_venta) REFERENCES detalle_venta(id_venta)

ALTER TABLE manual_virtual
ADD FOREIGN KEY (id_producto) REFERENCES producto(id_producto)

ALTER TABLE producto
ADD FOREIGN KEY (sto_producto) REFERENCES bodega(sto_producto)

ALTER TABLE detalle_venta
ADD FOREIGN KEY (rut_vendedor) REFERENCES vendedor(rut_vendedor)

ALTER TABLE detalle_venta
ADD FOREIGN KEY (id_producto) REFERENCES producto(id_producto)

ALTER TABLE registro_contable
ADD FOREIGN KEY (id_venta) REFERENCES detalle_venta(id_venta)

ALTER TABLE detalle_venta
ADD FOREIGN KEY (fecha_venta) REFERENCES registro_contable(fecha_venta)

ALTER TABLE bodega
ADD FOREIGN KEY (id_producto) REFERENCES producto(id_producto)