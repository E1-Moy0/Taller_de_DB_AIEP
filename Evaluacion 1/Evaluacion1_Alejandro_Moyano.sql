--crear bd para la prueba
CREATE DATABASE evaluacion1;

--crear tabla para las comunas donde cod_comuna es la PK y un Identity autoincrementable.
CREATE TABLE comuna (
    cod_comuna INT IDENTITY (1,1) NOT NULL,
    nom_comuna VARCHAR(30) NOT NULL,
	PRIMARY KEY (cod_comuna)
);

--Insertar los valores para nom_comuna de la tabla comuna.
INSERT INTO comuna(nom_comuna)
VALUES ('Cerrillos'),
       ('Cerro Navia'),
	   ('Conchali'),
	   ('Las Condes'),
	   ('Vitacura'),
	   ('Estacion Central'),
	   ('La Cisterna'),
	   ('Pedro Aguirre Cerda'),
	   ('Maipú'),
	   ('La Granja');

--Comandos extra para comprobar avance	   
--SELECT * FROM comuna
--TRUNCATE TABLE comuna

--crear tabla para las comunas donde cod_comuna es la PK y un Identity autoincrementable.
CREATE TABLE destinos (
    cod_destinos INT IDENTITY (1,1) NOT NULL,
    nomb_destinos VARCHAR(30) NOT NULL,
	PRIMARY KEY (cod_destinos)
);

--Insertar datos para nomb_destinos de la tabla destinos.
INSERT INTO destinos(nomb_destinos)
VALUES ('Destino 1'),
       ('Destino 2'),
	   ('Destino 3'),
	   ('Destino 4'),
	   ('Destino 5'),
	   ('Destino 6'),
	   ('Destino 7'),
	   ('Destino 8'),
	   ('Destino 9'),
	   ('Destino 10');

--Comandos extra para comprobar avance	   
--SELECT * FROM destinos
--TRUNCATE TABLE destinos

--crear tabla pasajeros donde rut_pasajeros es la PK y cod_comuna es la FK ademas de un Identity autoincrementable.
CREATE TABLE pasajeros (
    rut_pasajeros VARCHAR(12) NOT NULL,
    nomb_pasajeros VARCHAR(30) NOT NULL,
    apellid_pasajeros VARCHAR(30) NOT NULL,
    calle_pasajeros VARCHAR(30) NOT NULL,
    cod_comuna INT IDENTITY (1,1) NOT NULL,
    cod_comuna2 INT NOT NULL,
	PRIMARY KEY (rut_pasajeros),
	FOREIGN KEY (cod_comuna) REFERENCES comuna(cod_comuna)
);

--Insertar datos para la tabla pasajeros.
INSERT INTO pasajeros(rut_pasajeros, nomb_pasajeros, apellid_pasajeros, calle_pasajeros, cod_comuna2)
VALUES ('12650828-7','Matias','Fuentes','Felix Margoz', 1),
       ('20227767-4','Pablo','Jara','Avenida La Estrella', 2),
	   ('14587253-8','Ricardo', 'Sanchez', 'Bida Soa', 3),
	   ('19020343-6','Camila','Torres','Avenida Cristobal Colon', 4),
	   ('22876411-2','Gabriel','Castro','Los Aromos', 5),
	   ('17064582-1','Fernanda','Gonzalez','Avenida 5 de Abril', 6),
	   ('16987435-0','Ricardo','Gómez','Avenida Fernandez Albano', 7),
	   ('21234543-5','Lucia','Flores','Avenida Departamental', 8),
	   ('18277909-3','Carlos','Salinas','General Jose San Martin', 9),
	   ('14670532-9','Daniela','Muñoz','Linares', 10);

--Comandos extra para comprobar avance	   
--SELECT * FROM pasajeros
--TRUNCATE TABLE pasajeros

--Crear Tabla temporadas donde la PK es cod_temporadas.
CREATE TABLE temporadas (
    cod_temporadas INT IDENTITY (1,5) NOT NULL,
    nom_temporadas VARCHAR(30) NOT NULL,
	PRIMARY KEY (cod_temporadas)
);

--Insertar para nom_temporadas de la tabla temporadas.
INSERT INTO temporadas(nom_temporadas)
VALUES ('Temporada Sin datos'),
	   ('Temporada Muy baja'),
	   ('Temporada Baja'),
	   ('Temporada Baja/Media'),
	   ('Temporada Media/Baja'),
	   ('Temporada Media'),
	   ('Temporada Media/Alta'),
	   ('Temporada Alta/Media'),
       ('Temporada Alta'),
	   ('Temporada Muy Alta');

--Comandos extra para comprobar avance	   
--SELECT * FROM temporadas
--TRUNCATE TABLE pasajeros

--Crear Tabla temporadas donde tiene 2 FK temporadas_cod_temporadas y destinos_cod_destinos 
CREATE TABLE tiene (
    temporadas_cod_temporadas INT NOT NULL,
    destinos_cod_destinos INT NOT NULL,
	FOREIGN KEY (temporadas_cod_temporadas) REFERENCES temporadas(cod_temporadas),
	FOREIGN KEY (destinos_cod_destinos) REFERENCES destinos (cod_destinos),
);

--Insertar datos a temporadas_cod_temporadas y destinos_cod_destinos desde las tablas cod_temporadas y cod_destinos
INSERT INTO tiene(temporadas_cod_temporadas, destinos_cod_destinos)
SELECT DISTINCT cod_temporadas, cod_destinos
FROM temporadas, destinos

--Comandos extra para comprobar avance
--DROP TABLE tiene
--SELECT * FROM tiene
--TRUNCATE TABLE tiene

--Crear Tabla temporadas donde tiene 3 FK.
CREATE TABLE viajan (
    pasajeros_rut_pasajeros VARCHAR(12) NOT NULL,
    destinos_cod_destinos   INT NOT NULL,
    temporadas_cod_temporadas INT NOT NULL,
    FOREIGN KEY (pasajeros_rut_pasajeros) REFERENCES pasajeros(rut_pasajeros),
    FOREIGN KEY (destinos_cod_destinos) REFERENCES destinos(cod_destinos),
    FOREIGN KEY (temporadas_cod_temporadas) REFERENCES temporadas(cod_temporadas)
);


INSERT INTO viajan(pasajeros_rut_pasajeros, destinos_cod_destinos, temporadas_cod_temporadas)
SELECT DISTINCT rut_pasajeros, cod_destinos, cod_temporadas
FROM temporadas, destinos, pasajeros

--Comandos extra para comprobar avance	   
--DROP TABLE viajan
--SELECT * FROM viajan
--TRUNCATE TABLE viajan
