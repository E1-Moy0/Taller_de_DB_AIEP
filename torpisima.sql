CREATE DATABASE torpisima


-- Tabla de proveedores
CREATE TABLE Proveedores (
    NumeroProveedor INT PRIMARY KEY,
    Saldo DECIMAL(10, 2),
    Descuento DECIMAL(5, 2)
);

-- Tabla de direcciones de proveedores
CREATE TABLE DireccionesProveedor (
    NumeroProveedor INT,
    NumeroDireccion INT,
    Calle VARCHAR(100),
    Comuna VARCHAR(100),
    Ciudad VARCHAR(100),
    PRIMARY KEY (NumeroProveedor, NumeroDireccion),
    FOREIGN KEY (NumeroProveedor) REFERENCES Proveedores(NumeroProveedor)
);

-- Tabla de prendas de ropa
CREATE TABLE PrendasRopa (
    CodigoPrenda INT PRIMARY KEY,
    Marca VARCHAR(100),
    Descripcion VARCHAR(200)
);

-- Tabla de distribución de prendas de ropa
CREATE TABLE Distribucion (
    CodigoPrenda INT,
    Fabrica VARCHAR(100),
    FOREIGN KEY (CodigoPrenda) REFERENCES PrendasRopa(CodigoPrenda)
);

-- Tabla de pedidos
CREATE TABLE Pedidos (
    NumeroProveedor INT,
    DireccionEnvio VARCHAR(200),
    FechaPedido DATETIME,
    PRIMARY KEY (NumeroProveedor, FechaPedido),
    FOREIGN KEY (NumeroProveedor) REFERENCES Proveedores(NumeroProveedor)
);

-- Tabla de detalle de pedidos
CREATE TABLE DetallePedidos (
    NumeroProveedor INT,
    FechaPedido DATETIME,
    CodigoPrenda INT,
    Pedido INT,
    Cantidad INT,
    PRIMARY KEY (NumeroProveedor, FechaPedido, CodigoPrenda),
    FOREIGN KEY (NumeroProveedor, FechaPedido) REFERENCES Pedidos(NumeroProveedor, FechaPedido),
    FOREIGN KEY (CodigoPrenda) REFERENCES PrendasRopa(CodigoPrenda)
);

--Ver cuántas prendas de ropa  hay (en total) en la tienda
SELECT COUNT(*) AS total_prendas
FROM PrendasRopa;

-- Insertar registros en Proveedores
INSERT INTO Proveedores (NumeroProveedor, Saldo, Descuento)
VALUES (1, 1000.00, 0.1),
       (2, 500.00, 0.05),
       (3, 2000.00, 0.2),
       (4, 1500.00, 0.15),
       (5, 3000.00, 0.25);

-- Insertar registros en DireccionesProveedor
INSERT INTO DireccionesProveedor (NumeroProveedor, NumeroDireccion, Calle, Comuna, Ciudad)
VALUES (1, 1, 'Calle 1', 'Comuna 1', 'Ciudad 1'),
(1, 2, 'Calle 2', 'Comuna 2', 'Ciudad 2'),
(2, 1, 'Calle 3', 'Comuna 3', 'Ciudad 3'),
(3, 1, 'Calle 4', 'Comuna 4', 'Ciudad 4'),
(3, 2, 'Calle 5', 'Comuna 5', 'Ciudad 5');

--- Insertar registros en PrendasRopa
INSERT INTO PrendasRopa (CodigoPrenda, Marca, Descripcion)
VALUES (1, 'Marca 1', 'Descripción 1'),
(2, 'Marca 2', 'Descripción 2'),
(3, 'Marca 3', 'Descripción 3'),
(4, 'Marca 4', 'Descripción 4'),
(5, 'Marca 5', 'Descripción 5');

-- Insertar registros en Distribucion
INSERT INTO Distribucion (CodigoPrenda, Fabrica)
VALUES (1, 'Fabrica 1'),
(2, 'Fabrica 2'),
(3, 'Fabrica 3'),
(4, 'Fabrica 4'),
(5, 'Fabrica 5');

-- Insertar registros en Pedidos
INSERT INTO Pedidos (NumeroProveedor, DireccionEnvio, FechaPedido)
VALUES (1, 'Calle 1, Comuna 1, Ciudad 1', '2023-05-01 10:00:00'),
(2, 'Calle 2, Comuna 2, Ciudad 2', '2023-05-02 12:30:00'),
(3, 'Calle 3, Comuna 3, Ciudad 3', '2023-05-03 15:45:00'),
(4, 'Calle 4, Comuna 4, Ciudad 4', '2023-05-04 09:15:00'),
(5, 'Calle 5, Comuna 5, Ciudad 5', '2023-05-05 11:20:00');

-- Insertar registros en DetallePedidos
INSERT INTO DetallePedidos (NumeroProveedor, FechaPedido, CodigoPrenda, Pedido, Cantidad)
VALUES (1, '2023-05-01 10:00:00', 1, 1, 10),
(1, '2023-05-01 10:00:00', 2, 2, 5),
(2, '2023-05-02 12:30:00', 3, 3, 8),
(2, '2023-05-02 12:30:00', 4, 4, 12),
(3, '2023-05-03 15:45:00', 5, 5, 15);


--Inner Join para visualizar todos los registros del modelo:
SELECT *
FROM Proveedores
JOIN DireccionesProveedor ON Proveedores.NumeroProveedor = DireccionesProveedor.NumeroProveedor
JOIN PrendasRopa ON PrendasRopa.CodigoPrenda = Distribucion.CodigoPrenda
JOIN Distribucion ON Distribucion.CodigoPrenda = PrendasRopa.CodigoPrenda
JOIN Pedidos ON Pedidos.NumeroProveedor = Proveedores.NumeroProveedor
JOIN DetallePedidos ON DetallePedidos.NumeroProveedor = Proveedores.NumeroProveedor
                       AND DetallePedidos.FechaPedido = Pedidos.FechaPedido;

--Inner Join para visualizar por cada pedido el detalle de las prendas de ropa que contiene:
SELECT Pedidos.NumeroProveedor, Pedidos.FechaPedido, DetallePedidos.CodigoPrenda, PrendasRopa.Marca, DetallePedidos.Cantidad
FROM Pedidos
JOIN DetallePedidos ON Pedidos.NumeroProveedor = DetallePedidos.NumeroProveedor
                     AND Pedidos.FechaPedido = DetallePedidos.FechaPedido
JOIN PrendasRopa ON DetallePedidos.CodigoPrenda = PrendasRopa.CodigoPrenda;

--Inner Join para visualizar el proveedor de cada pedido:
SELECT Pedidos.NumeroProveedor, Pedidos.FechaPedido, Proveedores.Saldo, Proveedores.Descuento
FROM Pedidos
JOIN Proveedores ON Pedidos.NumeroProveedor = Proveedores.NumeroProveedor;



