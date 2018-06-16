USE tp_bdd1_2018;

/* Carga de Tablas*/
/*posicion*/
insert into posicion (cod_pos,descripcion) values
(001, 'Arquero'),(002,'Defensor'),(003,'Mediocampista'),(004, 'Delantero');

select*from posicion;

/*nacionalidad*/
insert into nacionalidad(cod_nac,descripcion) 
values
(default,'Alemán'),
(default,'Argentino'),
(default,'Brasileño'),
(default,'Colombiano'),
(default,'Coreano'),
(default,'Costarricense'),
(default,'Croata'),
(default,'Español'),
(default,'Francés'),
(default,'Holandés'),
(default,'Inglés'),
(default,'Islandés'),
(default,'Japonés'),
(default,'Noruega'),
(default,'Polaco'),
(default,'Portugués'),
(default,'Ruso'),
(default,'Senegalés'),
(default,'Serbio'),
(default,'Sueco'),
(default,'Suiza'),
(default,'Tunecino'),
(default,'Uruguayo');

select*from nacionalidad;


/* */
insert into fase(cod_fase, descripcion)
values
(default,'PRIMERA RONDA'),
(default,'OCTAVOS DE FINAL'),
(default,'CUARTOS DE FINAL'),
(default,'SEMIFINAL'),
(default,'FINAL');

select * from fase;

/* */
insert into grupo(cod_grupo, descripcion)
values
(default,'A'),
(default,'B'),
(default,'C'),
(default,'D'),
(default,'E'),
(default,'F'),
(default,'G'),
(default,'H');

select * from grupo;
/* */
insert into equipo(cod_equipo, nombre, cod_grupo)
values
(default,'Rusia', 1),
(default,'Arabia Saudita', 1),
(default,'Egiptp', 1),
(default,'Uruguay', 1),

(default,'Portugal', 2),
(default,'España', 2),
(default,'Marruecos', 2),
(default,'Iran', 2),

(default,'Francia', 3),
(default,'Australia', 3),
(default,'Peru', 3),
(default,'Dinamarca', 3),

(default,'Argentina', 4),
(default,'Islandia', 4),
(default,'Croacia', 4),
(default,'Nigeria', 4),

(default,'Brasil', 5),
(default,'Suiza', 5),
(default,'Costa Rica', 5),
(default,'Serbia', 5),

(default,'Alemania', 6),
(default,'Mexico', 6),
(default,'Corea del Sur', 6),
(default,'Suecia', 6),

(default,'Belgica', 7),
(default,'Panama', 7),
(default,'Tunez', 7),
(default,'Inglaterra', 7),

(default,'Polonia', 8),
(default,'Senegal', 8),
(default,'Colombia', 8),
(default,'Japon', 8);

select * from equipo;

/*ESTADIOS*/
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default, 1,45000 ,'Rostov Arena'),
(default, 4,48000 ,'Fisht Olympic Stadium'),
(default, 3,45379 ,'Kazan Arena'),
(default, 2,44442 ,'Mordovia Arena');
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default,5,50000 ,'Estadio Spartak');
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default, 6,70000 ,'Estadio Krestovski');
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default, 7,45015 ,'Estadio Kaliningrado');
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default, 8,55300 ,'Estadio de Nizhni Nóvgorod');
insert into estadio(cod_estadio, cod_loc, capacidad, descripcion)
values
(default, 9,45500 ,'Volgogrado Arena');

select * from estadio;

/*LOCALIDADES*/
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'Rostov del Don',1),
(default, 'Saransk', 2),
(default, 'Kazan', 3),
(default, 'Sochi', 4);
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'Ciudad de Mosku',5);
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'San Petesburgo', 6);
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'Kaliningrado',7);
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'Nizhni Nóvgorod',8);
insert into localidad (cod_loc, descripcion, cod_prov)
values
(default, 'Volgogrado',9);

select * from localidad;

/*PROVINCIAS*/
insert into provincia(cod_prov, descripcion)
values
(default, 'Rostov'),
(default, 'Mordovia'),
(default, 'Tartaristan'),
(default, 'Krasnodar');
insert into provincia(cod_prov, descripcion)
values
(default, 'Mosku');
insert into provincia(cod_prov, descripcion)
values
(default, 'Leningrado');
insert into provincia(cod_prov, descripcion)
values
(default, 'Oblast de Kaliningrado');
insert into provincia(cod_prov, descripcion)
values
(default, 'Oblast de Nizhni Nóvgorod');
insert into provincia(cod_prov, descripcion)
values
(default, 'Oblast de Volgogrado');

select * from provincia;

/*PARTIDOS*/
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
/*PARTIDOS PRIMERA FASE BRASIL*/
(1,'2018-06-17 15:00:00',24 ,5, 17, 18, 5, 0),
(2,'2018-06-22 09:00:00',24 ,10, 17, 19, 6, 0),
(3,'2018-06-27 15:00:00',24 ,9, 17, 20, 1, 1);
/*PARTIDOS PRIMERA FASE DE SUIZA*/
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(4,'2018-06-22 15:00:00',24 ,11, 20, 18, 0, 2);
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(5,'2018-06-27 15:00:00',24 ,12, 18, 19, 2, 1);

/*PARTIDOS EN FISCH STADIUM*/
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(6,'2018-06-15 15:00:00',24 ,6, 5, 6, 3, 3);
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(7,'2018-06-18 12:00:00',24 ,6, 25, 26, 2, 0),
(8,'2018-06-23 15:00:00',24 ,6, 21, 24, 3, 1),
(9,'2018-06-26 11:00:00',24 ,6, 10, 11, 1, 2);
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(10,'2018-06-30 21:00:00',25 ,6, 1, 5, 0, 4);

/*PARTIDOS DE 22/06/2018*/
insert into partido(cod_partido, fecha_hora, cod_fase, cod_estadio, cod_equipo1, cod_equipo2, gol_equipo1, gol_equipo2)
values
(11,'2018-06-22 18:00:00',24 ,13, 16, 14, 1, 0),
(12,'2018-06-22 18:00:00',24 ,11, 20, 18, 2, 1);

update partido
set fecha_hora = '2018-06-22 12:00:00'
where cod_partido=11;


select * from partido;

