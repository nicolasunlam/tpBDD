/* Insert tabla Persona*/
/*Argentina*/
USE tp_bdd1_2018;
insert into persona(cod_persona,nombre,tipo)
values
(001,'Willy Caballero','Participante'),
(002,'Sergio Romero','Participante'),
(003,'Nahuel Guzmán','Participante'),
(004,'Gabriel Mercado','Participante'),
(005,'Eduardo Salvio','Participante'),
(006,'Federico Fazio','Participante'),
(007,'Nicolás Otamendi','Participante'),
(008,'Marcos Acuña','Participante'),
(009,'Nicolás Tagliafico','Participante'),
(010,'Marcos Rojo','Participante'),
(011,'Javier Mascherano','Participante'),
(012,'Cristian Ansaldi','Participante'),
(013,'Enzo Pérez','Participante'),
(014,'Lucas Biglia','Participante'),
(015,'Giovani Lo Celso','Participante'),
(016,'Ángel Di María','Participante'),
(017,'Éver Banega','Participante'),
(018,'Maximiliano Meza','Participante'),
(019,'Cristian Pavón','Participante'),
(020,'Leo Messi','Participante'),
(021,'Paulo Dybala','Participante'),
(022,'Sergio Agüero','Participante'),
(023,'Gonzalo Higuaín','Participante');

/* */
insert into persona(cod_persona,nombre,tipo)
values
(default,'Subasic','Participante'),
(default,'Kalinic','Participante'),
(default,'Livakovic','Participante'),
(default,'Vedran Corluka','Participante'),
(default,'Domagoj Vida','Participante'),
(default,'Ivan Strinic','Participante'),
(default,'Dejan Lovren','Participante'),
(default,'Sime Vrsaljko','Participante'),
(default,'Josip Pivaric','Participante'),
(default,'Tin Jedvaj','Participante'),
(default,'Matej Mitrovic','Participante'),
(default,'Caleta-Car','Participante'),
(default,'Luka Modric','Participante'),
(default,'Mateo Kovacic','Participante'),
(default,'Ivan Rakitic','Participante'),
(default,'Milan Badelj','Participante'),
(default,'Marcelo Brozovic','Participante'),
(default,'Filip Bradaric','Participante'),
(default,'Mario Mandzukic','Participante'),
(default,'Ivan Perisic','Participante'),
(default,'Nikola Kalinic','Participante'),
(default,'Andrej Kramaric','Participante'),
(default,'Marko Pjaca','Participante'),
(default,'Ante Rebic','Participante');

select * from persona;
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


select * from partido;
/**/

