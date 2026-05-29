-- Angel Molina - 2026053 - IN4CM
drop database if exists EduTechdb_In4cm;
create database if not exists  EduTechdb_In4cm;
use EduTechdb_In4cm;

-- detalle_estudiante
create table detalle_estudiantes(
	id_detalle_estudiantes bigint primary key auto_increment ,
    -- llaves foraneas
    id bigint ,
    id_detalle_cursos bigint 
);


-- estudiante
create table estudiantes(
	id bigint primary key auto_increment,
	nombre varchar(100) not null,
    correo varchar(100) not null,
     -- llaves foraneas
	id_detalle_estudiantes bigint

);


-- sistema
create table sistemas(
	id_sistemas bigint primary key auto_increment,
	fecha_inscripcion date,
    progreso_actual decimal(4.2),
    -- llaves foraneas
    id bigint
);


-- detalle_curso
create table detalle_cursos(
	id_detalle_cursos bigint primary key auto_increment,
    -- llaves foraneas
	codigo bigint,
    id_detalle_estudiantes bigint
);


-- modulo
create table modulos(
	id_modulo bigint primary key auto_increment,
    nombre varchar(100),
    orden_secuencial int
);



-- categoria 
create table categorias(
	id_categorias bigint primary key auto_increment,
    negocios varchar(100),
    tecnologia varchar(100),
    idiomas varchar(100)
);

-- instructor
create table instructores(
	dni bigint primary key,
    nombre varchar(100),
    especialidad varchar(100)
);


-- curso
create table cursos(
	codigo bigint primary key,
    duracion_total int,
    titulo varchar(500),
    descripcion varchar(500),
    -- llave foranea
    dni bigint,
	id_modulo bigint,
    id_cursos_categorias bigint,
    id_detalle_cursos bigint,
    id_categorias bigint
);

-- RELACIONES 
alter table  estudiantes
add constraint fk_detalle_estudiante foreign key (id_detalle_estudiantes) references detalle_estudiantes(id_detalle_estudiantes) on delete cascade;

alter table sistemas
add constraint fk_estudiante foreign key (id) references estudiantes(id) on delete cascade;

alter table detalle_cursos
add constraint fk_detalle_estudiantes foreign key (id_detalle_estudiantes) references detalle_estudiantes(id_detalle_estudiantes) on delete cascade;

alter table cursos
add constraint fk_instructor foreign key (dni) references instructores(dni) on delete cascade,
add constraint fk_modulo foreign key (id_modulo) references modulos(id_modulo) on delete cascade,
add constraint fk_curso foreign key (id_detalle_cursos ) references  detalle_cursos(id_detalle_cursos) on delete cascade,
add constraint fk_categoria foreign key (id_categorias) references categorias(id_categorias) on delete cascade;


use EduTechdb_in4cm;

-- ------------------------------------
-- CRUD DETALLE_ESTUDIANTES
-- ------------------------------------

DROP PROCEDURE IF EXISTS sp_insertar_detallestudiante;

delimiter //
create procedure sp_insertar_detallestudiante(
    in _id int,
    in _id_detalle_cursos int
)
begin
    insert into detalle_estudiantes(id,id_detalle_cursos) 
    values (_id,_id_detalle_cursos)
    ON DUPLICATE KEY UPDATE 
    id = _id,
	id_detalle_cursos = _id_detalle_cursos;
end //


create procedure sp_listar_detallestudiante()
begin
    select id_detalle_estudiantes,id,id_detalle,cursos from detalle_estudiantes;
end //


create procedure sp_buscar_detallestudiante(
    in _id_detalle_estudiantes int
)
begin
    select  id_detalle_estudiantes,id,id_detalle_cursos
    from detalle_estudiantes
    where id_detalle_estudiantes = _id_detalle_estudiantes;
end //


create procedure sp_actualizar_detallestudiante(
	in _id_detalle_estudiantes int,
    in _id int,
    in _id_detalle_cursos int
)
begin
    update detalle_estudiantes
    set id = _id , id_detalle_cursos = _id_detalle_cursos
    where id_detalle_estudiantes = _id_detalle_estudiantes;
end //


create procedure sp_eliminar_detallestudiante(
    in _id_detalle_estudiantes int
)
begin
    delete from detalle_estudiantes where id_detalle_estudiantes = _id_detalle_estudiantes;
end //

delimiter ;

-- views

-- vista para listar detalle estudiantes

create or replace view vw_lista_detalle_estudiantes as
select 
	id_detalle_estudiantes as 'id detalle estudiantes',
    id_detalle_cursos as 'id detalle cursos',
    id as 'id estudiantes'
from detalle_estudiantes;




-- ------------------------------------
-- CRUD ESTUDIANTES
-- ------------------------------------
DROP PROCEDURE IF EXISTS sp_insertar_estudiantes;


delimiter //
create procedure sp_insertar_estudiantes(
    in _id int,
    in _nombre varchar(100) ,
    in _correo varchar(100) ,
	in _id_detalle_estudiantes bigint
)
begin
    insert into estudiantes(id,nombre,correo,id_detalle_estudiantes) 
    values (_id,nombre,_correo,_id_detalle_estudiantes)
    ON DUPLICATE KEY UPDATE
    id = _id,
    nombre = _nombre,
    correo = _correo,
    id_detalle_estudiantes = _id_detalle_estudiantes ;
end //

create procedure sp_listar_estudiantes()
begin
    select id,nombre,correo,id_detalle_estudiantes from estudiantes;
end //

create procedure sp_buscar_estudiantes(
    in _id int
)
begin
    select id,nombre,correo,id_detalle_estudiantes
    from estudiantes
    where id = _id;
end //

create procedure sp_actualizar_estudiantes(
   in _id int,
    in nombre varchar(100) ,
    in correo varchar(100) ,
	in id_detalle_estudiantes bigint
)
begin
    update estudiantes
    set nombre = _nombre ,correo = _correo, id_detalle_estudiantes = _id_detalle_estudiantes
    where id = _id;
end //


create procedure sp_eliminar_estudiantes(
    in _id int
)
begin
    delete from estudiantes where id = _id;
end //

delimiter ;

create or replace view vw_lista_estudiantes as
select 
    e.id as 'id estudiantes',
    de.id_detalle_estudiantes as 'id detalle estudiantes',
    e.nombre as 'nombre',
    e.correo as 'correo'
from estudiantes e
inner join detalle_estudiantes de on e.id_detalle_estudiantes = de.id_detalle_estudiantes;




-- ------------------------------------
-- CRUD SISTEMAS
-- ------------------------------------
delimiter //
create procedure sp_insertar_sitemas(
    in _id_sistemas bigint ,
	in _fecha_inscripcion date,
    in _progreso_actual decimal(4.2),
    in _id bigint
)
begin
    replace into sistemas(id_sistemas,fecha_inscripcion,progreso_actual,id) 
    values (_id_sistemas,_fecha_inscripcion,_progreso_actual,_id);
end //

create procedure sp_listar_sistemas()
begin
    select id_sistemas,fecha_inscripcion,progreso_actual,id from sistemas;
end //

create procedure sp_buscar_sistemas(
    in _id_sistemas int
)
begin
    select id_sistemas,fecha_inscripcion,progreso_actual,id
    from sistemas
    where id_sistemas = _id_sistemas;
end //

create procedure sp_actualizar_sistemas(
    in id_sistema bigint ,
	in fecha_inscripcion date,
    in progreso_actual decimal(3.2),
    in id bigint
)
begin
    update sistemas
    set fecha_inscripcion = _fecha_inscripcion ,progreso_actual = _progreso_actual, id = _id
    where id_sistemas = _id_sistemas;
end //


create procedure sp_eliminar_sistemas(
    in _id_sistemas int
)
begin
    delete from sistemas where id_sistemas = _id_sistemas;
end //
delimiter ;

-- view sistemas
create or replace view vw_lista_sistemas as
select 
    s.id_sistemas as 'id sistemas',
    e.id as 'id estudiantes',
	e.nombre as 'nombre',
    e.correo as 'correo',
    s.fecha_inscripcion as 'fecha de inscripcion',
    s.progreso_actual as 'progreso actual'
from sistemas s
inner join estudiantes e on s.id = e.id;



-- ------------------------------------
-- CRUD DETALLE_CURSOS
-- ------------------------------------

DROP PROCEDURE IF EXISTS sp_insertar_detallecursos;

delimiter //
create procedure sp_insertar_detallecursos(
    in _id_detalle_cursos bigint,
	in _codigo bigint,
    in _id_detalle_estudiantes bigint
)
begin
    replace into detalle_cursos(id_detalle_cursos,codigo,id_detalle_estudiantes) 
    values (_id_detalle_cursos,_codigo,_id_detalle_estudiantes);
end //

create procedure sp_listar_detallecursos()
begin
    select id_detalle_cursos,codigo,id_detelle_estudiantes from detalle_cursos;
end //

create procedure sp_buscar_detallecursos(
    in _id_detalle_cursos int
)
begin
    select id_detalle_cursos,codigo,id_datelle_estudiantes
    from detalle_cursos
    where id_detalle_cursos = _id_detalle_cursos;
end //

create procedure sp_actualizar_detallecursos(
     in id_detalle_cursos bigint,
	in codigo bigint,
    in id_detalle_estudiantes bigint
)
begin
    update detalle_cursos
    set codigo = _codigo ,id_detalle_estudiantes = _id_detalle_estudiantes
    where id_detalle_cursos = _id_detalle_cursos;
end //


create procedure sp_eliminar_detallecursos(
    in _id_detalle_cursos int
)
begin
    delete from detalle_cursos where id_detalle_cursos = _id_detalle_cursos;
end //

delimiter ;



-- view deatalle_cursos

create or replace view vw_lista_detalle_cursos as
select 
    dc.id_detalle_cursos as 'id detalle cursos',
    de.id as 'id',
    de.id_detalle_estudiantes as 'id detalle estudiantes',
    c.codigo as 'codigo cursos'
from detalle_cursos dc
inner join detalle_estudiantes de on dc.id_detalle_estudiantes = de.id_detalle_estudiantes
inner join cursos c on dc.codigo = c.codigo;



-- ----------------------------------------------------
-- CRUD MODULOS
-- ------------------------------------------------------

delimiter //
create procedure sp_insertar_modulos(
    in _id_modulo bigint ,
    in _nombre varchar(100),
    in _orden_secuencial int
)
begin
    replace into modulos(id_modulo,nombre,orden_secuencial) 
    values (_id_modulo,_nombre,_orden_secuencial);
end //

create procedure sp_listar_modulos()
begin
    select id_modulo,nombre,orden_secuencial from modulos;
end //

create procedure sp_buscar_modulos(
    in _id_modulo int
)
begin
    select id_modulo,nombre,orden_secuencial
    from modulos
    where id_modulo = _id_modulo;
end //

create procedure sp_actualizar_modulos(
    in id_modulo bigint ,
    in nombre varchar(100),
    in orden_secuencial int
)
begin
    update modulos
    set nombre = _nombre ,orden_secuencial = _orden_secuencial
    where id_modulo = _id_modulo;
end //


create procedure sp_eliminar_modulos(
    in _id_modulo int
)
begin
    delete from modulos where id_modulo = _id_modulo;
end //

delimiter ;

-- view modulos

create or replace view vw_lista_modulos as
select 
    id_modulo as 'id autor',
    nombre as 'nombre',
    orden_secuencial as 'orden secuencial'
from modulos;




-- ---------------------------------
-- Categorias
-- ----------------------------------

delimiter //
create procedure sp_insertar_categorias(
	in _id_categorias bigint,
    in _negocios varchar(100),
    in _tecnologia varchar(100),
    in _idiomas varchar(100)
)
begin
    replace into categorias(id_categorias,negocios,tecnologia,idiomas) 
    values (_id_categorias,_negocios,_tecnologia,_idiomas);
end //

create procedure sp_listar_categorias()
begin
    select id_categorias,negocios,tecnologia,idiomas from categorias;
end //

create procedure sp_buscar_categorias(
    in _id_categorias int
)
begin
    select id_categorias,negocios,tecnologia,idiomas
    from categorias
    where id_categorias = _id_categorias;
end //

create procedure sp_actualizar_categorias(
	in  id_categorias bigint,
    in negocios varchar(100),
    in tecnologia varchar(100),
    in idiomas varchar(100)
)
begin
    update categorias
    set negocios = _negocios ,tecnologia= _tecnologia, idiomas = idiomas
    where id_categorias = _id_categorias;
end //


create procedure sp_eliminar_categorias(
    in _id_categorias int
)
begin
    delete from categorias where id_catehorias = _id_categorias;
end //

delimiter ;

create or replace view vw_lista_categorias as
select 
    id_categorias as 'id categorias',
    negocios as 'negocios categorias',
    tecnologia as 'tecnologia categorias',
    idiomas as 'idiomas categorias'
from categorias;


-- CRUD INSTRUCTORES


delimiter //
create procedure sp_insertar_instructores(
	in _dni bigint ,
    in _nombre varchar(100),
    in _especialidad varchar(100)
)
begin
    replace into instructores(dni,nombre,especialidad) 
    values (_dni,_nombre,_especialidad);
end //

create procedure sp_listar_instructores()
begin
    select dni,nombre,especialidad from instructores;
end //

create procedure sp_buscar_isntructores(
    in _dni int
)
begin
    select dni,nombre,especialidad
    from instructores
    where dni  = _dni;
end //

create procedure sp_actualizar_instructores(
	in dni bigint ,
    in nombre varchar(100),
    in especialidad varchar(100)
)
begin
    update instructores
    set nombre = _nombre ,especialidad = _especialidad
    where dni = _dni;
end //


create procedure sp_eliminar_instructores(
    in _dni int
)
begin
    delete from instructores where dni = _dni;
end //

delimiter ;

create or replace view vw_lista_instructores as
select 
    dni as 'dni',
    nombre as 'nombre',
    especialidad as 'especialidad'
from instructores;


-- ------------------------------------
-- CRUD CURSOS
-- ------------------------------------
delimiter //
create procedure sp_insertar_cursos(
	in _codigo bigint ,
    in _duracion_total int,
    in _titulo varchar(500),
    in _descripcion varchar(500),
    in _dni bigint,
	in _id_modulo bigint,
    in _id_cursos_categorias bigint,
    in _id_detalle_cursos bigint,
    in _id_categorias bigint
)
begin
    insert into cursos(codigo,duracion_total,titulo,descripcion,dni,id_modulo,id_cursos_categorias,id_detalle_cursos,id_categorias) 
    values (_codigo,_duracion_total,_titulo,_descripcion,_dni,_id_modulo,_id_cursos_categorias,_id_detalle_cursos,_id_categorias)
    ON DUPLICATE KEY UPDATE
        duracion_total = _duracion_total,
        titulo = _titulo,
        descripcion = _descripcion,
        dni = _dni,
        id_modulo = _id_modulo,
        id_cursos_categorias = _id_cursos_categorias,
        id_detalle_cursos = _id_detalle_cursos,
        id_categorias = _id_categorias;
end //

create procedure sp_listar_cursos()
begin
    select codigo,duracion_total,titulo,descripcion,dni,id_modulo,id_cursos_categorias,id_detalle_cursos,id_categorias from cursos;
end //

create procedure sp_buscar_cursos(
    in _codigo int
)
begin
    select codigo,duracion_total,titulo,descripcion,dni,id_modulo,id_cursos_categorias,id_detalle_cursos,id_categorias
    from cursos
    where codigo  = _codigo;
end //

create procedure sp_actualizar_cursos(
	in codigo bigint ,
    in duracion_total int,
    in titulo varchar(500),
    in descripcion varchar(500),
    in dni bigint,
	in id_modulo bigint,
    in id_cursos_categorias bigint,
    in id_detalle_cursos bigint,
    in id_categorias bigint
)
begin
    update cursos
    set duracion_total = _duracion_total, titulo = _titulo, descripcion = _descripcion, dni = _dni, id_modulo = _id_modulo , id_cursos_categorias = _id_cursos_categorias , id_detalle_cursos = _id_detalle_cursos , id_categorias = _id_categorias
    where codigo = _codigo;
end //


create procedure sp_eliminar_cursos(
    in _codigo int
)
begin
    delete from cursos where codigo = _codigo;
end //

delimiter ;

-- view cursos

create or replace view vw_lista_cursos as
select 
	c.codigo as 'codigo cursos',
    c.duracion_total as 'duracion curso',
    c.titulo as 'titulo',
    c.descripcion as 'sobre el curso',
    i.dni as 'dni instructor',
	i.nombre as 'nombre instructor',
    i.especialidad as 'especialidad instructor',
	m.id_modulo as 'id modulo',
    m.nombre as 'nombre modulo',
    m.orden_secuencial as 'orden secuencial',
    dc.id_detalle_cursos as 'id detalle cursos',
    dc. id_detalle_estudiantes as 'is detalle estudiantes',
    ca.id_categorias as 'id categorias' ,
    ca.negocios as 'negocios',
    ca.tecnologia as 'tecnologia',
    ca.idiomas as 'idiomas' 
from cursos c
inner join instructores i on c.dni = i.dni
inner join modulos m on c.id_modulo = m.id_modulo
inner join detalle_cursos dc on c.id_detalle_cursos = dc.id_detalle_cursos
inner join categorias ca on c.id_categorias = ca.id_categorias ;
