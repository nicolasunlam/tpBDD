use tp_bdd1_2018;

/* EJERCICIO A */

select E.nombre Participante1, E2.nombre Participante1, ES.descripcion Estadio
from partido P join
	 equipo E on P.cod_equipo1 = E.cod_equipo join
     equipo E2 on P.cod_equipo2 = E2.cod_equipo join
     estadio ES on P.cod_estadio = ES.cod_estadio
where p.fecha_hora >= '2018-06-22 00:00:00' and p.fecha_hora < '2018-06-23 00:00:00';

/* EJERCICIO B */

select PE.nombre, PA.fecha_debut, P.descripcion
from equipo E join 
	 jugador J on E.cod_equipo = J.cod_jugador join
     posicion P on J.cod_pos = P.cod_pos join
     participante on PA.cod_participante = J.cod_jugador join
     persona PE on PE.cod.persona = PA.cod_participante
where E.nombre = 'Argentina';

/* EJERCICIO C */

select
p.fecha_hora, es.descripcion estadio, lo.descripcion localidad,
pr.descripcion provincia, f.descripcion ronda	  
from partido p join
equipo eq1 on eq1.cod_equipo=p.cod_equipo1 join
equipo eq2 on eq2.cod_equipo=p.cod_equipo2 join
estadio es on p.cod_estadio = es.cod_estadio join
localidad lo on lo.cod_loc = es.cod_loc join
provincia pr on pr.cod_prov = lo.cod_prov join
fase f on f.cod_fase=p.cod_fase

where p.gol_equipo1 > p.gol_equipo2
and eq1.nombre= 'Brasil'

OR p.gol_equipo2 > p.gol_equipo1
and eq2.nombre = 'Brasil';
	
/* EJERCICIO D CON DATOS NO INGRESADOS*/

/*NO PROBAR*/
insert into persona
values
(default, 'Lionel Messi', Participante);
/*NO PROBAR*/
insert into participante
values
(default,'date', 'date', Jugador);
/*NO PROBAR*/
insert into jugador
values
(default,61, 'cod_pos');

/*EJERCICIO E*/
		
select distinct e.nombre 
from equipo e 
where (select avg(p.gol_equipo1)>3
		from partido p join
        equipo e1 on p.cod_equipo1=e1.cod_equipo
        where (e1.cod_equipo=e.cod_equipo)
		)
or (select avg(p1.gol_equipo2)>3
		from partido p1 join
        equipo e2 on p1.cod_equipo2=e2.cod_equipo
        where (e2.cod_equipo=e.cod_equipo)
		);

 /*EJERCICIO F*/

UPDATE partido
SET cod_estadio = 7
WHERE cod_estadio = 6;
/*PRUEBA*/
select estadio.descripcion estadio, partido.cod_estadio, PARTIDO.FECHA_HORA
from partido join estadio on estadio.cod_estadio=partido.cod_estadio
where estadio.cod_estadio=7;

/*LISTADO DE PRUEBA DE PARTIDO*/

select p.fecha_hora Fecha_Hora_Partido , e.descripcion Estadio,
eq1.nombre Equipo, p.gol_equipo1, eq2.nombre Equipo, p.gol_equipo2, f.descripcion Ronda 
from partido p join
estadio e on e.cod_estadio=p.cod_estadio join
equipo eq1 on eq1.cod_equipo=p.cod_equipo1 join
equipo eq2 on eq2.cod_equipo=p.cod_equipo2 join
fase f on f.cod_fase=p.cod_fase
