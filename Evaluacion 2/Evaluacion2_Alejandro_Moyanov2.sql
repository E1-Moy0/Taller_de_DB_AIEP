--Crear Base de datos
CREATE DATABASE evaluacion_2_basededatosv2

--------------------------------------------------------------------------------------------
--SCRIPT PRUEBA 2 BASE DE DATOS--
--Crear Tablas y definir llaves primarias.
CREATE TABLE clientecompra (
    compra_codigocompra VARCHAR(12) NOT NULL,
    clientes_rut        VARCHAR(12) NOT NULL
);

ALTER TABLE clientecompra ADD CONSTRAINT clientecompra_pk PRIMARY KEY ( compra_codigocompra,
                                                                        clientes_rut );

CREATE TABLE clientes (
    rut                 VARCHAR(12) NOT NULL,
    nombre              VARCHAR(30) NOT NULL,
    apellido            VARCHAR(30) NOT NULL,
    numerotelefono      VARCHAR(30) NOT NULL,
    "calle/pasaje"      VARCHAR(30) NOT NULL,
    "numerocasa/depto"  VARCHAR(6) NOT NULL,
    comuna_codigocomuna VARCHAR(12) NOT NULL
);

ALTER TABLE clientes ADD CONSTRAINT clientes_pk PRIMARY KEY ( rut );

CREATE TABLE compra (
    codigocompra      VARCHAR(12) NOT NULL,
    cantitdadproducto VARCHAR(12) NOT NULL,
    fechadecompra     VARCHAR(12) NOT NULL
);

ALTER TABLE compra ADD CONSTRAINT compra_pk PRIMARY KEY ( codigocompra );

CREATE TABLE comuna (
    codigocomuna VARCHAR(12) NOT NULL,
    nombrecomuna VARCHAR(30) NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( codigocomuna );

CREATE TABLE pagando (
    pago_codigotipodepago VARCHAR(12) NOT NULL,
    compra_codigocompra   VARCHAR(12) NOT NULL
);

ALTER TABLE pagando ADD CONSTRAINT pagando_pk PRIMARY KEY ( pago_codigotipodepago,
                                                            compra_codigocompra );

CREATE TABLE pago (
    codigotipodepago VARCHAR(12) NOT NULL,
    nombretipodepago VARCHAR(30) NOT NULL
);

ALTER TABLE pago ADD CONSTRAINT pago_pk PRIMARY KEY ( codigotipodepago );

CREATE TABLE producto (
    codigoproducto VARCHAR(12) NOT NULL,
    nombreproducto VARCHAR(30) NOT NULL,
    valorproducto  VARCHAR(12) NOT NULL
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( codigoproducto );

CREATE TABLE productoacomprar (
    producto_codigoproducto VARCHAR(12) NOT NULL,
    compra_codigocompra     VARCHAR(12) NOT NULL
);

ALTER TABLE productoacomprar ADD CONSTRAINT productoacomprar_pk PRIMARY KEY ( producto_codigoproducto,
                                                                              compra_codigocompra );

CREATE TABLE tipo (
    tipodeproducto_codtipoproducto VARCHAR(12) NOT NULL,
    producto_codigoproducto        VARCHAR(12) NOT NULL
);

ALTER TABLE tipo ADD CONSTRAINT tipo_pk PRIMARY KEY ( tipodeproducto_codtipoproducto,
                                                      producto_codigoproducto );

CREATE TABLE tipodeproducto (
    codtipoproducto VARCHAR(12) NOT NULL,
    tipoproducto    VARCHAR(30) NOT NULL
);

ALTER TABLE tipodeproducto ADD CONSTRAINT tipodeproducto_pk PRIMARY KEY ( codtipoproducto );


--Definir Llaves Foraneas--
ALTER TABLE clientecompra
    ADD CONSTRAINT clientecompra_clientes_fk FOREIGN KEY ( clientes_rut )
        REFERENCES clientes ( rut );

ALTER TABLE clientecompra
    ADD CONSTRAINT clientecompra_compra_fk FOREIGN KEY ( compra_codigocompra )
        REFERENCES compra ( codigocompra );

ALTER TABLE clientes
    ADD CONSTRAINT clientes_comuna_fk FOREIGN KEY ( comuna_codigocomuna )
        REFERENCES comuna ( codigocomuna );

ALTER TABLE pagando
    ADD CONSTRAINT pagando_compra_fk FOREIGN KEY ( compra_codigocompra )
        REFERENCES compra ( codigocompra );

ALTER TABLE pagando
    ADD CONSTRAINT pagando_pago_fk FOREIGN KEY ( pago_codigotipodepago )
        REFERENCES pago ( codigotipodepago );

ALTER TABLE productoacomprar
    ADD CONSTRAINT productoacomprar_compra_fk FOREIGN KEY ( compra_codigocompra )
        REFERENCES compra ( codigocompra );

ALTER TABLE productoacomprar
    ADD CONSTRAINT productoacomprar_producto_fk FOREIGN KEY ( producto_codigoproducto )
        REFERENCES producto ( codigoproducto );

ALTER TABLE tipo
    ADD CONSTRAINT tipo_producto_fk FOREIGN KEY ( producto_codigoproducto )
        REFERENCES producto ( codigoproducto );

ALTER TABLE tipo
    ADD CONSTRAINT tipo_tipodeproducto_fk FOREIGN KEY ( tipodeproducto_codtipoproducto )
        REFERENCES tipodeproducto ( codtipoproducto );

--FIN SCRIPT PRUEBA 2 BASE DE DATOS--
--------------------------------------------------------------------------------------------

----------------------------------------------------------
--Ejercicio 3: Poblar la base de datos con 10 registros--
--Registros tabla comuna--
INSERT INTO comuna (codigocomuna, nombrecomuna) VALUES
('COM001', 'Comuna 1'),
('COM002', 'Comuna 2'),
('COM003', 'Comuna 3'),
('COM004', 'Comuna 4'),
('COM005', 'Comuna 5'),
('COM006', 'Comuna 6'),
('COM007', 'Comuna 7'),
('COM008', 'Comuna 8'),
('COM009', 'Comuna 9'),
('COM010', 'Comuna 10');

--Registros tabla clientes--
INSERT INTO clientes (rut, nombre, apellido, numerotelefono, "calle/pasaje", "numerocasa/depto", comuna_codigocomuna) VALUES
('11111111-1', 'Juan', 'Pérez', '123456789', 'Calle 1', '123', 'COM001'),
('22222222-2', 'María', 'López', '987654321', 'Calle 2', '456', 'COM002'),
('33333333-3', 'Pedro', 'Gómez', '789123456', 'Calle 3', '789', 'COM003'),
('44444444-4', 'Laura', 'Martínez', '456789123', 'Calle 4', '012', 'COM004'),
('55555555-5', 'Carlos', 'Rodríguez', '654789321', 'Calle 5', '345', 'COM005'),
('66666666-6', 'Ana', 'Hernández', '321987654', 'Calle 6', '678', 'COM006'),
('77777777-7', 'Miguel', 'Torres', '987321654', 'Calle 7', '901', 'COM007'),
('88888888-8', 'Luisa', 'García', '159753852', 'Calle 8', '234', 'COM008'),
('99999999-9', 'Andrés', 'Fernández', '753951852', 'Calle 9', '567', 'COM009'),
('10101010-0', 'Sofía', 'Vargas', '258963147', 'Calle 10', '890', 'COM010');

--Registros tabla clientecompra--
INSERT INTO clientecompra (compra_codigocompra, clientes_rut) VALUES
('COMP001', '11111111-1'),
('COMP002', '22222222-2'),
('COMP003', '33333333-3'),
('COMP004', '44444444-4'),
('COMP005', '55555555-5'),
('COMP006', '66666666-6'),
('COMP007', '77777777-7'),
('COMP008', '88888888-8'),
('COMP009', '99999999-9'),
('COMP010', '10101010-0');

SELECT * FROM tipodeproducto

--Registros tabla compra--
INSERT INTO compra (codigocompra, cantitdadproducto, fechadecompra) VALUES
('COMP001', '2', '2023-05-01'),
('COMP002', '3', '2023-05-02'),
('COMP003', '1', '2023-05-03'),
('COMP004', '2', '2023-05-04'),
('COMP005', '1', '2023-05-05'),
('COMP006', '4', '2023-05-06'),
('COMP007', '2', '2023-05-07'),
('COMP008', '3', '2023-05-08'),
('COMP009', '1', '2023-05-09'),
('COMP010', '2', '2023-05-10');

--Registros tabla producto--
INSERT INTO producto (codigoproducto, nombreproducto, valorproducto) VALUES
('PROD001', 'Producto 1', '10990'),
('PROD002', 'Producto 2', '1990'),
('PROD003', 'Producto 3', '2990'),
('PROD004', 'Producto 4', '9990'),
('PROD005', 'Producto 5', '7990'),
('PROD006', 'Producto 6', '6325'),
('PROD007', 'Producto 7', '8990'),
('PROD008', 'Producto 8', '975'),
('PROD009', 'Producto 9', '1425'),
('PROD010', 'Producto 10', '2250');

--Registros tabla productoacomprar--
INSERT INTO productoacomprar (producto_codigoproducto, compra_codigocompra) VALUES
('PROD001', 'COMP001'),
('PROD002', 'COMP001'),
('PROD003', 'COMP002'),
('PROD004', 'COMP003'),
('PROD005', 'COMP004'),
('PROD006', 'COMP005'),
('PROD007', 'COMP006'),
('PROD008', 'COMP007'),
('PROD009', 'COMP008'),
('PROD010', 'COMP009');

--Registros tabla tipo--
INSERT INTO tipo (tipodeproducto_codtipoproducto, producto_codigoproducto) VALUES
('T001', 'PROD001'),
('T002', 'PROD002'),
('T003', 'PROD003'),
('T004', 'PROD004'),
('T005', 'PROD005'),
('T006', 'PROD006'),
('T007', 'PROD007'),
('T008', 'PROD008'),
('T009', 'PROD009'),
('T010', 'PROD010');

--Registros tabla tipodeproducto--
INSERT INTO tipodeproducto (codtipoproducto, tipoproducto) VALUES
('T001', 'Perecible'),
('T002', 'No Perecible'),
('T003', 'No Perecible'),
('T004', 'Perecible'),
('T005', 'Perecible'),
('T006', 'No Perecible'),
('T007', 'No Perecible'),
('T008', 'No Perecible'),
('T009', 'Perecible'),
('T010', 'Perecible');

--Registros tabla pagando--
INSERT INTO pagando (pago_codigotipodepago, compra_codigocompra) VALUES
('PAGO001', 'COMP001'),
('PAGO002', 'COMP002'),
('PAGO003', 'COMP003'),
('PAGO004', 'COMP004'),
('PAGO005', 'COMP005'),
('PAGO006', 'COMP006'),
('PAGO007', 'COMP007'),
('PAGO008', 'COMP008'),
('PAGO009', 'COMP009'),
('PAGO010', 'COMP010');

--Registros tabla pago--
INSERT INTO pago (codigotipodepago, nombretipodepago) VALUES
('PAGO001', 'Efectivo'),
('PAGO002', 'Tarjeta de Crédito BCI'),
('PAGO003', 'Tarjeta de Débito FAN'),
('PAGO004', 'Tarjeta digital MACH BCI'),
('PAGO005', 'Tarjeta Digital TENPO Krealo'),
('PAGO006', 'Tarjeta de Crédito BdeChile'),
('PAGO007', 'Tarjeta de Débito Cuenta RUT'),
('PAGO008', 'Cheque'),
('PAGO009', 'Transferencia'),
('PAGO010', 'Deposito');

-----------------------------------------------------------------------------------------------------------------------------------------
--Ejercicio 4: Crear 3 consultas cada una con 1 inner join utilizando minimo 3 tablas--
--1. Obtener el nombre del cliente, el producto comprado y la fecha de compra para todas las compras realizadas.
SELECT c.nombre, p.nombreproducto, co.fechadecompra
FROM clientes c
INNER JOIN clientecompra cc ON c.rut = cc.clientes_rut
INNER JOIN compra co ON cc.compra_codigocompra = co.codigocompra
INNER JOIN productoacomprar pa ON co.codigocompra = pa.compra_codigocompra
INNER JOIN producto p ON pa.producto_codigoproducto = p.codigoproducto;

--2. Obtener el nombre del cliente y de la comuna ademas del codigo de la compra.
SELECT c.nombre, co.nombrecomuna, cp.codigocompra
FROM clientes c
INNER JOIN clientecompra cc ON c.rut = cc.clientes_rut
INNER JOIN compra cp ON cc.compra_codigocompra = cp.codigocompra
INNER JOIN comuna co ON c.comuna_codigocomuna = co.codigocomuna;


--3. Obtener el nombre de la comuna, el nombre del cliente y la cantidad de productos comprados para todas las compras realizadas.
SELECT com.nombrecomuna, c.nombre, co.cantitdadproducto
FROM compra co
INNER JOIN clientecompra cc ON co.codigocompra = cc.compra_codigocompra
INNER JOIN clientes c ON cc.clientes_rut = c.rut
INNER JOIN comuna com ON c.comuna_codigocomuna = com.codigocomuna;

-----------------------------------------------------------------------------------------------------------------------------------------
--Ejercicio 5: Crear  2 consultas con 1 rigth join cada una, para la tabla que considere necesario--
--1. Obtener todas las compras realizadas y los clientes asociados utilizando RIGHT JOIN en la tabla "clientes".
SELECT co.*, c.nombre
FROM clientes c
RIGHT JOIN clientecompra cc ON c.rut = cc.clientes_rut
RIGHT JOIN compra co ON cc.compra_codigocompra = co.codigocompra;

--2. Obtener todas las compras realizadas y la información de los productos comprados utilizando RIGHT JOIN en la tabla "compra".
SELECT co.*, p.nombreproducto
FROM compra co
RIGHT JOIN productoacomprar pa ON co.codigocompra = pa.compra_codigocompra
RIGHT JOIN producto p ON pa.producto_codigoproducto = p.codigoproducto;
------------------------------------------------------------------------------------------------------------------------------------------