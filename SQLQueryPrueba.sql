CREATE DATABASE mauro;

CREATE TABLE comuna (
    cod_comuna int primary key NOT NULL identity (1,1),
    nom_comuna VARCHAR(30) NOT NULL
);
CREATE TABLE destinos (
    cod_destinos  int primary key NOT NULL identity (1,1),
    nomb_destinos VARCHAR(30) NOT NULL
);
CREATE TABLE pasajeros (
    rut_pasajeros     Varchar (12) primary key NOT NULL,
    nomb_pasajeros    VARCHAR(30) NOT NULL,
    apellid_pasajeros VARCHAR(30) NOT NULL,
    calle_pasajeros   VARCHAR(30) NOT NULL,
    cod_comuna        int NOT NULL,
    cod_comuna2       int NOT NULL,
	foreign key (cod_comuna) references comuna (cod_comuna)
);
CREATE TABLE temporadas (
    cod_temporadas int Primary key NOT NULL identity (1,5),
    nom_temporadas VARCHAR(30) NOT NULL
);
CREATE TABLE tiene (
    temporadas_cod_temporadas int NOT NULL,
    destinos_cod_destinos     int NOT NULL
	foreign key (temporadas_cod_temporadas) references temporadas (cod_temporadas),
	foreign key (destinos_cod_destinos) references destinos (cod_destinos)
);
CREATE TABLE viajan (
    destinos_cod_destinos   int NOT NULL,
    pasajeros_rut_pasajeros Varchar (12) NOT NULL,
    pasajeros_cod_comuna2   int NOT NULL,
    PRIMARY KEY (destinos_cod_destinos, pasajeros_rut_pasajeros),
    FOREIGN KEY (pasajeros_rut_pasajeros) REFERENCES pasajeros (rut_pasajeros),
    FOREIGN KEY (destinos_cod_destinos) REFERENCES destinos (cod_destinos)
);
insert into comuna(nom_comuna)
values 
	('La Florida'),
	('Providencia'),
	('Las Condes'),
	('Ñuñoa'),
	('Vitacura'),
	('La Reina'),
	('Maipú'),
	('San Joaquín'),
	('Recoleta'),
	('Peñalolén')
;
INSERT INTO pasajeros(rut_pasajeros, nomb_pasajeros, apellid_pasajeros, calle_pasajeros, cod_comuna, cod_comuna2)
VALUES
	('15678901-1','María','García','Avenida Vicuña Mackenna',1,1),
	('12345678-5','Luis','Rodríguez','Avenida Providencia',2,2),
	('18765432-7','Ana','Martínez','Avenida Apoquindo',3,3),
	('19876543-0','Juan','Pérez','Avenida Irarrázaval',4,4),
	('16543210-K','Carmen','López','Avenida Vitacura',5,5),
	('14321098-7','Manuel','Hernández','Avenida Francisco Bilbao',6,6),
	('17654321-3','Patricia','González','Avenida Pajaritos',7,7),
	('11234567-1','Jorge','Sánchez','Avenida Vicuña Mackenna',8,8),
	('13456789-9','Laura','Flores','Avenida Recoleta',9,9),
	('109876543-2','Ricardo','Gómez','Avenida Grecia',10,10);
	;
insert into destinos(nomb_destinos)
values
	('Isla de Pascua'),
	('Desierto de Atacama'),
	('Torres del Paine'),
	('Valparaíso'),
	('Viña del Mar'),
	('Chiloé'),
	('Valle del Elqui'),
	('Parque Nacional Lauca'),
	('Isla Magdalena'),
	('Puerto Varas'
);
insert into temporadas(nom_temporadas)
values
	('Fiestas Patrias'),
	('Carnaval Rapa Nui'),
	('Semana Santa'),
	('Vendimia'),
	('Festival Viña del Mar'),
	('La Tirana'),
	('Fiesta Candelaria'),
	('Navidad'),
	('Año Nuevo'),
	('Semana Santa')
;
INSERT INTO tiene (temporadas_cod_temporadas, destinos_cod_destinos)
SELECT cod_temporadas, cod_destinos
FROM temporadas, destinos;
INSERT INTO viajan (destinos_cod_destinos, pasajeros_rut_pasajeros, pasajeros_cod_comuna2)
SELECT cod_destinos, rut_pasajeros, cod_comuna2
FROM pasajeros, destinos
;

SELECT * FROM viajan