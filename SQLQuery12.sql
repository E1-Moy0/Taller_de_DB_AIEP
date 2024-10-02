CREATE DATABASE prueba1

CREATE TABLE comuna (
    cod_comuna int primary key NOT NULL identity (1,1),
    nom_comuna VARCHAR(30) NOT NULL
);
CREATE TABLE destinos (
    cod_destinos  int primary key NOT NULL identity (1,1),
    nomb_destinos VARCHAR(30) NOT NULL
);
CREATE TABLE pasajeros (
    rut_pasajeros     int primary key NOT NULL,
    nomb_pasajeros    VARCHAR(30) NOT NULL,
    apellid_pasajeros VARCHAR(30) NOT NULL,
    calle_pasajeros   VARCHAR(30) NOT NULL,
    cod_comuna        int NOT NULL identity (1,1),
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
    pasajeros_rut_pasajeros int NOT NULL,
    pasajeros_cod_comuna2   int NOT NULL,
    PRIMARY KEY (destinos_cod_destinos, pasajeros_rut_pasajeros),
    FOREIGN KEY (pasajeros_rut_pasajeros) REFERENCES pasajeros (rut_pasajeros),
    FOREIGN KEY (destinos_cod_destinos) REFERENCES destinos (cod_destinos)
);
select * from comuna
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
select * from pasajeros
insert into pasajeros(rut_pasajeros,nomb_pasajeros,apellid_pasajeros,calle_pasajeros,cod_comuna2)
values
	(156789012,'María','García','Avenida Vicuña Mackenna',3),
	(123456789,'Luis','Rodríguez','Avenida Providencia',4),
	(187654321,'Ana','Martínez','Avenida Apoquindo',5),
	(198765430,'Juan','Pérez','Avenida Irarrázaval',6),
	(165432108,'Carmen','López','Avenida Vitacura',1),
	(143210987,'Manuel','Hernández','Avenida Francisco Bilbao',8),
	(176543214,'Patricia','González','Avenida Pajaritos',2),
	(112345678,'Jorge','Sánchez','Avenida Vicuña Mackenna',9),
	(134567897,'Laura','Flores','Avenida Recoleta',10),
	(109876543,'Ricardo','Gómez','Avenida Grecia',7)
	;
select * from destinos
insert into destinos(nomb_destinos)
values
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''
);