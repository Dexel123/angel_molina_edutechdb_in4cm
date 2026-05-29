-- inserts
SET FOREIGN_KEY_CHECKS = 0;
REPLACE INTO INSTRUCTORES (dni, nombre, especialidad) VALUES
(10293847, 'Carlos Mendoza', 'Desarrollo Web Full Stack'),
(29384756, 'Ana María Silva', 'Marketing Digital y SEO'),
(38475610, 'Luis Felipe Gómez', 'Ciencia de Datos y Python'),
(47561029, 'Elena Rostova', 'Idiomas y Traducción'),
(56102938, 'Ricardo Jorge Arce', 'Finanzas y Contabilidad'),
(61029384, 'Laura Sofía Torres', 'Diseño UI/UX y Multimedia'),
(72938415, 'Andrés Mauricio Rey', 'Metodologías Ágiles y Scrum'),
(83847526, 'Patricia Benítez', 'Ciberseguridad y Redes'),
(94756137, 'Gabriel José Flores', 'Inteligencia Artificial'),
(15263748, 'Diana Carolina Ríos', 'Habilidades Blandas y Liderazgo'),
(26374859, 'Fernando Alarcón', 'Administración de Servidores'),
(37485960, 'Mónica del Pilar Cruz', 'E-commerce y Ventas'),
(48596017, 'Santiago Baquero', 'Fotografía y Edición Digital'),
(59601728, 'Beatriz Helena Vega', 'Escritura Persuasiva y Copywriting'),
(60172839, 'Héctor Fabio Morales', 'Desarrollo Móvil Multiplataforma'),
(71283940, 'Clara Inés Restrepo', 'Negociación y Estrategia'),
(82394051, 'Jorge Eliecer Castro', 'Automatización de Pruebas (QA)'),
(93405162, 'Natalia María Ortiz', 'Gestión del Tiempo y Productividad'),
(14526374, 'Manual Alfonso Giraldo', 'Cloud Computing y DevOps'),
(25637485, 'Verónica Isabel Medina', 'Relaciones Públicas');


REPLACE INTO MODULOS (nombre, orden_secuencial) VALUES
( 'Introducción y Conceptos Básicos', 1),
( 'Configuración del Entorno de Trabajo', 2),
( 'Fundamentos y Primeros Pasos', 3),
( 'Estructuras de Control y Lógica', 4),
( 'Programación Orientada a Objetos', 5),
( 'Diseño de Interfaces y Wireframes', 1),
( 'Maquetación Estructurada con HTML', 2),
( 'Estilos y Diseño Visual con CSS', 3),
( 'Interactividad Básica con JavaScript', 4),
( 'Asincronismo y Conexión a APIs', 5),
( 'Estrategias de Contenido para Redes', 1),
( 'Publicidad Paga y Campañas Ads', 2),
( 'Analítica Web y Métricas Clave', 3),
( 'Optimización de Motores de Búsqueda', 4),
( 'Gramática y Estructuras Verbales', 1),
( 'Comprensión Auditiva y Conversación', 2),
( 'Vocabulario Técnico Profesional', 3),
( 'Preparación para Entrevistas', 4),
( 'Proyecto Final e Integración', 6),
( 'Certificación y Siguientes Pasos', 7);


REPLACE INTO CATEGORIAS ( negocios, tecnologia, idiomas) VALUES
( 'Administración', 'Desarrollo Web', 'Inglés Avanzado'),
( 'Marketing Digital', 'Ciencia de Datos', 'Español Nativo'),
('Finanzas Personales', 'Ciberseguridad', 'Francés Básico'),
( 'Gestión de Proyectos', 'Cloud Computing', 'Alemán Intermedio'),
('Recursos Humanos', 'Inteligencia Artificial', 'Italiano Conversacional'),
( 'Ventas B2B', 'Desarrollo Móvil', 'Portugués Comercial'),
( 'E-commerce', 'Bases de Datos', 'Chino Mandarín'),
( 'Contabilidad', 'Redes y Conectividad', 'Japonés Técnico'),
( 'Logística', 'Sistemas Operativos', 'Ruso Avanzado'),
( 'Liderazgo', 'Automatización QA', 'Árabe Básico'),
( 'Estrategia Empresarial', 'DevOps', 'Coreano Intermedio'),
( 'Negociación', 'Blockchain', 'Hindi Básico'),
( 'Economía', 'UI/UX Design', 'Holandés Conversacional'),
( 'Relaciones Públicas', 'Videojuegos (Unity)', 'Sueco Básico'),
( 'Auditoría', 'Internet de las Cosas', 'Polaco Técnico'),
( 'Modelos de Negocio', 'Machine Learning', 'Turco Intermedio'),
( 'Coach Empresarial', 'Arquitectura de Software', 'Danés Básico'),
( 'Franquicias', 'Desarrollo Frontend', 'Noruego Conversacional'),
( 'Inversiones', 'Desarrollo Backend', 'Finlandés Técnico'),
( 'Atención al Cliente', 'Soporte Técnico', 'Griego Básico');


REPLACE INTO DETALLE_ESTUDIANTES (id, id_detalle_cursos) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20);


REPLACE INTO ESTUDIANTES (nombre, correo) VALUES
('Alejandro Gómez', 'alejandro.gomez@email.com'),
('Sofía Rodríguez', 'sofia.rodriguez@email.com'),
('Mateo Fernández', 'mateo.fernandez@email.com'),
('Valentina López', 'valentina.lopez@email.com'),
('Santiago Martínez', 'santiago.martinez@email.com'),
('Camila García', 'camila.garcia@email.com'),
('Sebastián Pérez', 'sebastian.perez@email.com'),
('Isabella Torres', 'isabella.torres@email.com'),
('Nicolás Sánchez', 'nicolas.sanchez@email.com'),
('Mariana Ramírez', 'mariana.ramirez@email.com'),
('Diego Flores', 'diego.flores@email.com'),
('Lucía Benítez', 'lucia.benitez@email.com'),
('Samuel Acosta', 'samuel.acosta@email.com'),
('Daniela Medina', 'daniela.medina@email.com'),
('Lucas Herrera', 'lucas.herrera@email.com'),
('Gabriela Vargas', 'gabriela.vargas@email.com'),
('Benjamín Castro', 'benjamin.castro@email.com'),
('Martina Ríos', 'martina.rios@email.com'),
('Joaquín Silva', 'joaquin.silva@email.com'),
('Elena Mendoza', 'elena.mendoza@email.com');

REPLACE INTO SISTEMAS (fecha_inscripcion,progreso_actual) VALUES
( '2026-01-15', '85'),
( '2026-01-18', '40'),
( '2026-02-02', '100'),
( '2026-02-10', '15'),
( '2026-02-15', '60'),
( '2026-03-01', '0'),
( '2026-03-05', '90'),
( '2026-03-12', '35'),
( '2026-03-20', '75'),
( '2026-04-02', '50'),
( '2026-04-05', '20'),
( '2026-04-18', '95'),
( '2026-04-25', '10'),
( '2026-05-01', '65'),
( '2026-05-04', '45'),
( '2026-05-10', '80'),
( '2026-05-12', '30'),
( '2026-05-14', '55'),
( '2026-05-16', '5'),
( '2026-05-18', '0');

REPLACE INTO DETALLE_CURSOS (codigo, id_detalle_estudiantes) VALUES
(5001,1),
(5002,2),
(5003,3),
(5004,4),
(5005,5),
(5006,6),
(5007,7),
(5008,8),
(5009,9),
(5010,10),
(5011,11),
(5012,12),
(5013,13),
(5014,14),
(5015,15),
(5016,16),
(5017,17),
(5018,18),
(5019,19),
(5020,20);


REPLACE INTO CURSOS (codigo, duracion_total, titulo, descripcion) VALUES
(5001, 40, 'Introducción a Python', 'Aprende las bases de la programación con Python desde cero.'),
(5002, 25, 'Marketing Digital 360', 'Estrategias de SEO, SEM y redes sociales para negocios.'),
(5003, 60, 'Desarrollo Web Full Stack', 'Domina HTML, CSS, JavaScript, Node.js y bases de datos.'),
(5004, 15, 'Finanzas Personales', 'Aprende a administrar tu dinero, ahorrar e invertir.'),
(5005, 30, 'Inglés para Negocios', 'Vocabulario clave para el entorno laboral internacional.'),
(5006, 45, 'Excel Avanzado', 'Modelado de datos, tablas dinámicas y macros con VBA.'),
(5007, 50, 'Machine Learning con R', 'Introducción a los modelos predictivos y ciencia de datos.'),
(5008, 20, 'Gestión de Proyectos Scrum', 'Implementa metodologías ágiles en tus equipos de trabajo.'),
(5009, 35, 'Diseño de Interfaces UI/UX', 'Principios de diseño visual y experiencia de usuario.'),
(5010, 18, 'Oratoria y Comunicación', 'Pierde el miedo a hablar en público y mejora tu expresión.'),
(5011, 55, 'Ciberseguridad Esencial', 'Protección de datos y prevención de ataques informáticos.'),
(5012, 30, 'Fotografía Digital', 'Manejo de cámara en modo manual, composición e iluminación.'),
(5013, 42, 'Desarrollo con Flutter', 'Crea aplicaciones móviles nativas para Android e iOS.'),
(5014, 12, 'Gestión del Tiempo', 'Técnicas y herramientas para organizar tu día a día.'),
(5015, 28, 'Fotomontaje en Photoshop', 'Edición avanzada de imágenes y creación de piezas gráficas.'),
(5016, 65, 'Administración de Linux', 'Configuración, seguridad y mantenimiento de servidores.'),
(5017, 22, 'Copywriting Emocional', 'Escritura persuasiva para vender más a través de internet.'),
(5018, 50, 'IA Aplicada', 'Uso de herramientas de IA para optimizar tareas diarias.'),
(5019, 32, 'E-commerce desde Cero', 'Cómo crear y gestionar tu propia tienda en línea con éxito.'),
(5020, 16, 'Liderazgo de Equipos', 'Habilidades directivas para motivar y guiar grupos.');


CALL sp_insertar_detallestudiante(41, 41);
CALL sp_insertar_detallestudiante(42, 42);
CALL sp_insertar_detallestudiante(43, 43);
CALL sp_insertar_detallestudiante(44, 44);
CALL sp_insertar_detallestudiante(45, 45);
CALL sp_insertar_detallestudiante(46, 46);
CALL sp_insertar_detallestudiante(47, 47);
CALL sp_insertar_detallestudiante(48, 48);
CALL sp_insertar_detallestudiante(49, 49);
CALL sp_insertar_detallestudiante(50, 50);
CALL sp_insertar_detallestudiante(51, 51);
CALL sp_insertar_detallestudiante(52, 52);
CALL sp_insertar_detallestudiante(53, 53);
CALL sp_insertar_detallestudiante(54, 54);
CALL sp_insertar_detallestudiante(55, 55);
CALL sp_insertar_detallestudiante(56, 56);
CALL sp_insertar_detallestudiante(57, 57);
CALL sp_insertar_detallestudiante(58, 58);
CALL sp_insertar_detallestudiante(59, 59);
CALL sp_insertar_detallestudiante(60, 60);

-- registros con call para estudiantes


CALL sp_insertar_estudiantes(41, 'Carlos Mendoza', 'carlos.mendoza@email.com', 41);
CALL sp_insertar_estudiantes(42, 'Ana Lucía Torres', 'ana.torres@email.com', 42);
CALL sp_insertar_estudiantes(43, 'Juan Pablo Reyes', 'juan.reyes@email.com', 43);
CALL sp_insertar_estudiantes(44, 'Elena Rostrán', 'elena.rostran@email.com', 44);
CALL sp_insertar_estudiantes(45, 'Luis Fernando Ortiz', 'luis.ortiz@email.com', 45);
CALL sp_insertar_estudiantes(46, 'María José Aguilar', 'maria.aguilar@email.com', 46);
CALL sp_insertar_estudiantes(47, 'Kevin Alvarado', 'kevin.alvarado@email.com', 47);
CALL sp_insertar_estudiantes(48, 'Adriana Espina', 'adriana.espina@email.com', 48);
CALL sp_insertar_estudiantes(49, 'Diego Josué Palacios', 'diego.palacios@email.com', 49);
CALL sp_insertar_estudiantes(50, 'Rebeca Fuentes', 'rebeca.fuentes@email.com', 50);
CALL sp_insertar_estudiantes(51, 'Jonathan Estrada', 'jonathan.estrada@email.com', 51);
CALL sp_insertar_estudiantes(52, 'Carmen de León', 'carmen.deleon@email.com', 52);
CALL sp_insertar_estudiantes(53, 'José Alejandro Ramos', 'jose.ramos@email.com', 53);
CALL sp_insertar_estudiantes(54, 'Natalie Méndez', 'natalie.mendez@email.com', 54);
CALL sp_insertar_estudiantes(55, 'Bryan Vásquez', 'bryan.vasquez@email.com', 55);
CALL sp_insertar_estudiantes(56, 'Kimberly Castillo', 'kimberly.castillo@email.com', 56);
CALL sp_insertar_estudiantes(57, 'Brandon Juárez', 'brandon.juarez@email.com', 57);
CALL sp_insertar_estudiantes(58, 'Génesis Sandoval', 'genesis.sandoval@email.com', 58);
CALL sp_insertar_estudiantes(59, 'Christian Ovalle', 'christian.ovalle@email.com', 59);
CALL sp_insertar_estudiantes(60, 'Melany Ordóñez', 'melany.ordonez@email.com', 60);

-- registros con call para sistemas

CALL sp_insertar_sitemas(1, '2026-01-15', 15.50, 41);
CALL sp_insertar_sitemas(2, '2026-01-16', 42.75, 42);
CALL sp_insertar_sitemas(3, '2026-01-18', 0.00, 43);
CALL sp_insertar_sitemas(4, '2026-01-20', 73.25, 44);
CALL sp_insertar_sitemas(5, '2026-01-22', 11.10, 45);
CALL sp_insertar_sitemas(6, '2026-02-01', 84.50, 46);
CALL sp_insertar_sitemas(7, '2026-02-03', 8.50, 47);
CALL sp_insertar_sitemas(8, '2026-02-05', 22.00, 48);
CALL sp_insertar_sitemas(9, '2026-02-10', 50.00, 49);
CALL sp_insertar_sitemas(10, '2026-02-12', 19.50, 50);
CALL sp_insertar_sitemas(11, '2026-02-15', 30.00, 51);
CALL sp_insertar_sitemas(12, '2026-02-18', 5.00, 52);
CALL sp_insertar_sitemas(13, '2026-02-20', 62.45, 53);
CALL sp_insertar_sitemas(14, '2026-02-25', 94.15, 54);
CALL sp_insertar_sitemas(15, '2026-03-01', 12.50, 55);
CALL sp_insertar_sitemas(16, '2026-03-03', 38.00, 56);
CALL sp_insertar_sitemas(17, '2026-03-05', 1.00, 57);
CALL sp_insertar_sitemas(18, '2026-03-08', 29.00, 58);
CALL sp_insertar_sitemas(19, '2026-03-12', 99.99, 59);
CALL sp_insertar_sitemas(20, '2026-03-15', 71.75, 60);

-- registros con call para deatalle_cursos


CALL sp_insertar_detallecursos(1, 101, 41);
CALL sp_insertar_detallecursos(2, 102, 42);
CALL sp_insertar_detallecursos(3, 103, 43);
CALL sp_insertar_detallecursos(4, 104, 44);
CALL sp_insertar_detallecursos(5, 105, 45);
CALL sp_insertar_detallecursos(6, 106, 46);
CALL sp_insertar_detallecursos(7, 107, 47);
CALL sp_insertar_detallecursos(8, 108, 48);
CALL sp_insertar_detallecursos(9, 109, 49);
CALL sp_insertar_detallecursos(10, 110, 50);
CALL sp_insertar_detallecursos(11, 111, 51);
CALL sp_insertar_detallecursos(12, 112, 52);
CALL sp_insertar_detallecursos(13, 113, 53);
CALL sp_insertar_detallecursos(14, 114, 54);
CALL sp_insertar_detallecursos(15, 115, 55);
CALL sp_insertar_detallecursos(16, 116, 56);
CALL sp_insertar_detallecursos(17, 117, 57);
CALL sp_insertar_detallecursos(18, 118, 58);
CALL sp_insertar_detallecursos(19, 119, 59);
CALL sp_insertar_detallecursos(20, 120, 60);

SET FOREIGN_KEY_CHECKS = 1;

-- registros con call para modulos

CALL sp_insertar_modulos(1, 'Introducción al Desarrollo', 1);
CALL sp_insertar_modulos(2, 'Fundamentos de Programación', 2);
CALL sp_insertar_modulos(3, 'Estructuras de Control', 3);
CALL sp_insertar_modulos(4, 'Arreglos y Colecciones', 4);
CALL sp_insertar_modulos(5, 'Introducción a Bases de Datos', 1);
CALL sp_insertar_modulos(6, 'Modelado Entidad-Relación', 2);
CALL sp_insertar_modulos(7, 'Lenguaje SQL Básico', 3);
CALL sp_insertar_modulos(8, 'Consultas Avanzadas y Joins', 4);
CALL sp_insertar_modulos(9, 'Programación Orientada a Objetos', 1);
CALL sp_insertar_modulos(10, 'Clases y Objetos en Java', 2);
CALL sp_insertar_modulos(11, 'Herencia y Polimorfismo', 3);
CALL sp_insertar_modulos(12, 'Manejo de Excepciones', 4);
CALL sp_insertar_modulos(13, 'Conectividad JDBC y Controladores', 1);
CALL sp_insertar_modulos(14, 'Patrón de Diseño DAO', 2);
CALL sp_insertar_modulos(15, 'Desarrollo de Interfaces Gráficas', 3);
CALL sp_insertar_modulos(16, 'Gestión de Eventos', 4);
CALL sp_insertar_modulos(17, 'Procedimientos Almacenados en la Práctica', 1);
CALL sp_insertar_modulos(18, 'Triggers y Funciones', 2);
CALL sp_insertar_modulos(19, 'Seguridad y Permisos de Usuarios', 3);
CALL sp_insertar_modulos(20, 'Despliegue y Pruebas Finales', 4);


-- registros con call para categorias

CALL sp_insertar_categorias(1, 'Administración', 'Desarrollo Web', 'Inglés Técnico');
CALL sp_insertar_categorias(2, 'Marketing Digital', 'Bases de Datos', 'Alemán Inicial');
CALL sp_insertar_categorias(3, 'Finanzas Personales', 'Ciberseguridad', 'Francés Intermedio');
CALL sp_insertar_categorias(4, 'Emprendimiento', 'Machine Learning', 'Portugués de Negocios');
CALL sp_insertar_categorias(5, 'Recursos Humanos', 'Desarrollo Móvil', 'Inglés Comercial');
CALL sp_insertar_categorias(6, 'Gestión de Proyectos', 'Cloud Computing', 'Italiano Básico');
CALL sp_insertar_categorias(7, 'E-commerce', 'Redes y Conectividad', 'Japonés Técnico');
CALL sp_insertar_categorias(8, 'Contabilidad Automatizada', 'Sistemas Operativos', 'Mandarín Inicial');
CALL sp_insertar_categorias(9, 'Ventas de Alta Conversión', 'QA Testing', 'Inglés Avanzado');
CALL sp_insertar_categorias(10, 'Logística y Distribución', 'DevOps', 'Francés Avanzado');
CALL sp_insertar_categorias(11, 'Liderazgo de Equipos', 'Blockchain', 'Alemán Técnico');
CALL sp_insertar_categorias(12, 'Negocios Internacionales', 'Inteligencia Artificial', 'Portugués Inicial');
CALL sp_insertar_categorias(13, 'Estrategia Corporativa', 'Big Data', 'Inglés para Entrevistas');
CALL sp_insertar_categorias(14, 'Atención al Cliente', 'Arquitectura de Software', 'Coreano Básico');
CALL sp_insertar_categorias(15, 'Innovación Empresarial', 'Desarrollo Videojuegos', 'Ruso Comercial');
CALL sp_insertar_categorias(16, 'Neuromarketing', 'Automatización de Procesos', 'Inglés Académico');
CALL sp_insertar_categorias(17, 'Franquicias y Expansión', 'Análisis de Datos', 'Italiano Avanzado');
CALL sp_insertar_categorias(18, 'Gestión del Tiempo', 'Desarrollo Backend', 'Chino para Negocios');
CALL sp_insertar_categorias(19, 'Derecho Mercantil', 'Desarrollo Frontend', 'Japonés Intermedio');
CALL sp_insertar_categorias(20, 'Plan de Negocios Pro', 'UI/UX Design', 'Inglés Jurídico');

-- registros con call para instructores

CALL sp_insertar_instructores(10293847, 'Carlos Mendoza', 'Desarrollo Web Full Stack');
CALL sp_insertar_instructores(29384756, 'Ana María Silva', 'Marketing Digital y SEO');
CALL sp_insertar_instructores(38475610, 'Luis Felipe Gómez', 'Ciencia de Datos y Python');
CALL sp_insertar_instructores(47561029, 'Elena Rostova', 'Idiomas y Traducción');
CALL sp_insertar_instructores(56102938, 'Ricardo Jorge Arce', 'Finanzas y Contabilidad');
CALL sp_insertar_instructores(61029384, 'Laura Sofía Torres', 'Diseño UI/UX y Multimedia');
CALL sp_insertar_instructores(72938415, 'Andrés Mauricio Rey', 'Metodologías Ágiles y Scrum');
CALL sp_insertar_instructores(83847526, 'Patricia Benítez', 'Ciberseguridad y Redes');
CALL sp_insertar_instructores(94756137, 'Gabriel José Flores', 'Inteligencia Artificial');
CALL sp_insertar_instructores(15263748, 'Diana Carolina Ríos', 'Habilidades Blandas y Liderazgo');
CALL sp_insertar_instructores(26374859, 'Fernando Alarcón', 'Administración de Servidores');
CALL sp_insertar_instructores(37485960, 'Mónica del Pilar Cruz', 'E-commerce y Ventas');
CALL sp_insertar_instructores(48596017, 'Santiago Baquero', 'Fotografía y Edición Digital');
CALL sp_insertar_instructores(59601728, 'Beatriz Helena Vega', 'Escritura Persuasiva y Copywriting');
CALL sp_insertar_instructores(60172839, 'Héctor Fabio Morales', 'Desarrollo Móvil Multiplataforma');
CALL sp_insertar_instructores(71283940, 'Clara Inés Restrepo', 'Negociación y Estrategia');
CALL sp_insertar_instructores(82394051, 'Jorge Eliecer Castro', 'Automatización de Pruebas (QA)');
CALL sp_insertar_instructores(93405162, 'Natalia María Ortiz', 'Gestión del Tiempo y Productividad');
CALL sp_insertar_instructores(14526374, 'Manual Alfonso Giraldo', 'Cloud Computing y DevOps');
CALL sp_insertar_instructores(25637485, 'Verónica Isabel Medina', 'Relaciones Públicas');

-- registros con call para cursos

CALL sp_insertar_cursos(5001, 40, 'Introducción a Python', 'Aprende las bases de la programación con Python desde cero.', 10293847, 1, 1, 1, 1);
CALL sp_insertar_cursos(5002, 25, 'Marketing Digital 360', 'Estrategias de SEO, SEM y redes sociales para negocios.', 29384756, 2, 2, 2, 2);
CALL sp_insertar_cursos(5003, 60, 'Desarrollo Web Full Stack', 'Domina HTML, CSS, JavaScript, Node.js y bases de datos.', 38475610, 3, 3, 3, 3);
CALL sp_insertar_cursos(5004, 15, 'Finanzas Personales', 'Aprende a administrar tu dinero, ahorrar e invertir.', 47561029, 4, 4, 4, 4);
CALL sp_insertar_cursos(5005, 30, 'Inglés para Negocios', 'Vocabulario clave para el entorno laboral internacional.', 56102938, 5, 5, 5, 5);
CALL sp_insertar_cursos(5006, 45, 'Excel Avanzado', 'Modelado de datos, tablas dinámicas y macros con VBA.', 61029384, 6, 6, 6, 6);
CALL sp_insertar_cursos(5007, 50, 'Machine Learning con R', 'Introducción a los modelos predictivos y ciencia de datos.', 72938415, 7, 7, 7, 7);
CALL sp_insertar_cursos(5008, 20, 'Gestión de Proyectos Scrum', 'Implementa metodologías ágiles en tus equipos de trabajo.', 83847526, 8, 8, 8, 8);
CALL sp_insertar_cursos(5009, 35, 'Diseño de Interfaces UI/UX', 'Principios de diseño visual y experiencia de usuario.', 94756137, 9, 9, 9, 9);
CALL sp_insertar_cursos(5010, 18, 'Oratoria y Communication', 'Pierde el miedo a hablar en público y mejora tu expresión.', 15263748, 10, 10, 10, 10);
CALL sp_insertar_cursos(5011, 55, 'Ciberseguridad Esencial', 'Protección de datos y prevención de ataques informáticos.', 26374859, 11, 11, 11, 11);
CALL sp_insertar_cursos(5012, 30, 'Fotografía Digital', 'Manejo de cámara en modo manual, composición e iluminación.', 37485960, 12, 12, 12, 12);
CALL sp_insertar_cursos(5013, 42, 'Desarrollo con Flutter', 'Crea aplicaciones móviles nativas para Android e iOS.', 48596017, 13, 13, 13, 13);
CALL sp_insertar_cursos(5014, 12, 'Gestión del Tiempo', 'Técnicas y herramientas para organizar tu día a día.', 59601728, 14, 14, 14, 14);
CALL sp_insertar_cursos(5015, 28, 'Fotomontaje en Photoshop', 'Edición avanzada de imágenes y creación de piezas gráficas.', 60172839, 15, 15, 15, 15);
CALL sp_insertar_cursos(5016, 65, 'Administración de Linux', 'Configuración, seguridad y mantenimiento de servidores.', 71283940, 16, 16, 16, 16);
CALL sp_insertar_cursos(5017, 22, 'Copywriting Emocional', 'Escritura persuasiva para vender más a través de internet.', 82394051, 17, 17, 17, 17);
CALL sp_insertar_cursos(5018, 50, 'IA Aplicada', 'Uso de herramientas de IA para optimizar tareas diarias.', 93405162, 18, 18, 18, 18);
CALL sp_insertar_cursos(5019, 32, 'E-commerce desde Cero', 'Cómo crear y gestionar tu propia tienda en línea con éxito.', 14526374, 19, 19, 19, 19);
CALL sp_insertar_cursos(5020, 16, 'Liderazgo de Equipos', 'Habilidades directivas para motivar y guiar grupos.', 25637485, 20, 20, 20, 20);



DELIMITER ;
-- llamando view

select * from vw_lista_detalle_estudiantes;
select * from vw_lista_estudiantes;
select * from vw_lista_sistemas;
select * from vw_lista_detalle_cursos;
select * from vw_lista_modulos;
select * from vw_lista_categorias;
select * from vw_lista_instructores;
select * from vw_lista_cursos;




