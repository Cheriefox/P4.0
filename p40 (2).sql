-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 22:56:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `p40`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concursos`
--

CREATE TABLE `concursos` (
  `ID_concurso` int(10) NOT NULL,
  `ID_tecnologia` int(10) NOT NULL,
  `nombre_concurso` varchar(100) NOT NULL,
  `Contenido` text NOT NULL,
  `link_referencia` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1,
  `ordenamiento` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `ID_cursos` int(10) NOT NULL,
  `ID_tecnologia` int(10) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `Contenido` text NOT NULL,
  `link_referencia` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1,
  `ordenamiento` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuentas`
--

CREATE TABLE `encuentas` (
  `ID_encuestas` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `ID_tecnologia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro`
--

CREATE TABLE `foro` (
  `ID_foro` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `ID_tecnologia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `ID_historia` int(15) NOT NULL,
  `ID_tecnologia` int(4) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `Contenido` text NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `link_referencia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `ID_links` int(15) NOT NULL,
  `Contenido` text NOT NULL,
  `ID_tecnologia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misc`
--

CREATE TABLE `misc` (
  `ID_misc` int(10) NOT NULL,
  `ID_tecnologia` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `Contenido` text NOT NULL,
  `link_referencia` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1,
  `ordenamiento` int(4) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `pos_FC` varchar(6) DEFAULT 'F1C1',
  `link_local` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `misc`
--

INSERT INTO `misc` (`ID_misc`, `ID_tecnologia`, `nombre`, `Contenido`, `link_referencia`, `activo`, `ordenamiento`, `imagen`, `pos_FC`, `link_local`) VALUES
(1, 0, 'IA-Python', 'La convergencia de Python y la inteligencia artificial (IA) ha marcado un hito significativo en el mundo tecnológico.\r\n\r\nPython, conocido por su simplicidad y versatilidad, se ha convertido en el lenguaje de elección para muchos desarrolladores y científicos de datos que trabajan en el campo de la IA.', 'https://openwebinars.net/blog/python-en-ia-aplicaciones-practicas-y-bibliotecas-clave/', 1, 1, NULL, 'F2C2', 'miscs.php'),
(2, 0, 'CPS - Implementacion', 'Un sistema ciberfísico es una integración de sistemas de diversa naturaleza cuyo objetivo principal es controlar e interactuar con un proceso físico y, a través de la retroalimentación, adaptarse a las nuevas condiciones en tiempo real.\r\n\r\nLos sistemas ciber-físicos están, normalmente, conectados entre sí y a su vez conectados con el mundo virtual de las redes digitales globales. Se crean en la intersección de redes, computación cibernética y procesos físicos.', 'https://nexusintegra.io/es/implementar-sistemas-ciberfisicos/', 1, 0, 'cps.jpg', 'F3C1', 'miscs.php'),
(3, 0, 'IA - Comics', 'Son plataformas generadora de libros de cómics AI en línea que te permite generar tu propio libro de cómics con la ayuda de la IA.', '', 1, 2, NULL, 'F3C1', 'miscs.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `que es`
--

CREATE TABLE `que es` (
  `ID_que` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `ID_tecnología` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raiz`
--

CREATE TABLE `raiz` (
  `ID_raiz` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(4) DEFAULT NULL,
  `resumen` varchar(250) DEFAULT NULL,
  `definicion` text NOT NULL,
  `logo` varchar(30) DEFAULT NULL,
  `orden` int(2) NOT NULL,
  `activo` int(2) NOT NULL DEFAULT 1,
  `color` varchar(24) NOT NULL DEFAULT 'BLACK',
  `bkg_color` varchar(24) NOT NULL DEFAULT 'WHITE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `raiz`
--

INSERT INTO `raiz` (`ID_raiz`, `nombre`, `abreviatura`, `resumen`, `definicion`, `logo`, `orden`, `activo`, `color`, `bkg_color`) VALUES
(0, 'Plataforma 4.0', 'P4.0', 'Viejas y nuevas tecnologías que se integran y se potencian y producen la 4° Revolución Industrial ó Industria 4.0', 'Este sitio fué pensado no solo como un lugar de difusión de los aspectos mas relevantes de las tecnologías involucradas, si no además como un centro de discusión y analisis en general.', NULL, 1, 1, 'WHITE', 'BLUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `ID_recurso` int(10) NOT NULL,
  `ID_tecnologia` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `Contenido` text NOT NULL,
  `link_referencia` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1,
  `ordenamiento` int(4) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`ID_recurso`, `ID_tecnologia`, `nombre`, `Contenido`, `link_referencia`, `activo`, `ordenamiento`, `imagen`) VALUES
(1, 2, 'Redes Neuronales', 'Las redes neuronales pueden ayudar a las computadoras a tomar decisiones inteligentes con asistencia humana limitada. Esto se debe a que pueden aprender y modelar las relaciones entre los datos de entrada y salida que no son lineales y que son complejos. Por ejemplo, pueden realizar las siguientes tareas.', 'https://aws.amazon.com/es/what-is/neural-network/', 1, 0, 'redneuronal.png'),
(2, 1, 'Mantenimiento Predictivo', 'Una solución para el cuidado eficiente de las máquinas de la industria\r\nLa empresa Hitec desarrolló la herramienta Terative, una plataforma que permite detectar anomalías y reducir fallas en las maquinarias de sus clientes.', 'https://youtu.be/e7sj2PGPco8', 1, 2, NULL),
(3, 0, 'Industria 4.0', 'Las redes neuronales pueden ayudar a las computadoras a tomar decisiones inteligentes con asistencia humana limitada. Esto se debe a que pueden aprender y modelar las relaciones entre los datos de entrada y salida que no son lineales y que son complejos. Por ejemplo, pueden realizar las siguientes tareas.', 'https://aws.amazon.com/es/what-is/neural-network/', 1, 0, 'redneuronal.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `orden` int(2) NOT NULL,
  `id_tecnologia` int(11) NOT NULL,
  `enlace` varchar(40) DEFAULT NULL,
  `Activo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `nombre`, `orden`, `id_tecnologia`, `enlace`, `Activo`) VALUES
(1, 'Que Es ', 2, 1, 'quees.php', 1),
(2, 'HISTORIA ', 1, 1, 'historia.php', 1),
(3, 'CURSOS ', 5, 1, 'cursos.php', 1),
(4, 'ENLACES ', 4, 1, 'enlaces.php', 1),
(5, 'RECURSOS ', 3, 1, 'recursos.php', 1),
(6, 'EFEMERIDES ', 6, 2, 'efemeridess.php', 1),
(7, 'ENCUESTAS ', 8, 2, 'encuestas.php', 1),
(8, 'FORO ', 7, 2, 'foros.php', 1),
(9, 'NOVEDADES ', 11, 3, 'novedades.php', 1),
(10, 'EVENTOS ', 9, 3, 'eventos.php', 1),
(11, 'CURIOSIDADES ', 10, 1, 'curiosidades.php', 0),
(12, 'RECURSOS', 3, 2, 'recursos.php', 1),
(13, 'RECURSOS', 3, 3, 'recursos.php', 1),
(14, 'RECURSOS', 3, 4, 'recursos.php', 1),
(15, 'RECURSOS', 3, 5, 'recursos.php', 1),
(16, 'RECURSOS', 3, 6, 'recursos.php', 1),
(17, 'RECURSOS', 3, 7, 'recursos.php', 1),
(18, 'RECURSOS', 3, 8, 'recursos.php', 1),
(19, 'RECURSOS', 3, 9, 'recursos.php', 1),
(20, 'RECURSOS', 3, 10, 'recursos.php', 1),
(21, 'HISTORIA', 1, 2, 'historia.php', 1),
(22, 'HISTORIA', 1, 3, 'historia.php', 1),
(23, 'HISTORIA', 1, 4, 'historia.php', 1),
(24, 'HISTORIA', 1, 5, 'historia.php', 1),
(25, 'HISTORIA', 1, 6, 'historia.php', 1),
(26, 'HISTORIA', 1, 7, 'historia.php', 1),
(27, 'HISTORIA', 1, 8, 'historia.php', 1),
(28, 'HISTORIA', 1, 9, 'historia.php', 1),
(29, 'HISTORIA', 1, 10, 'historia.php', 1),
(30, 'QUE ES', 2, 2, 'quees.php', 1),
(31, 'QUE ES', 2, 3, 'quees.php', 1),
(32, 'QUE ES', 2, 4, 'quees.php', 1),
(33, 'QUE ES', 2, 5, 'quees.php', 1),
(34, 'QUE ES', 2, 6, 'quees.php', 1),
(35, 'QUE ES', 2, 7, 'quees.php', 1),
(36, 'QUE ES', 2, 8, 'quees.php', 1),
(37, 'QUE ES', 2, 9, 'quees.php', 1),
(38, 'QUE ES', 2, 10, 'quees.php', 1),
(39, 'QUE ES', 2, 11, 'quees.php', 1),
(40, 'RECURSOS', 3, 0, 'recursos.php', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologias`
--

CREATE TABLE `tecnologias` (
  `ID_tecnologia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(4) DEFAULT NULL,
  `resumen` varchar(250) DEFAULT NULL,
  `definicion` text NOT NULL,
  `logo` varchar(30) DEFAULT NULL,
  `orden` int(2) NOT NULL,
  `activo` int(2) NOT NULL DEFAULT 1,
  `color` varchar(24) NOT NULL DEFAULT 'BLACK',
  `bkg_color` varchar(24) NOT NULL DEFAULT 'WHITE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tecnologias`
--

INSERT INTO `tecnologias` (`ID_tecnologia`, `nombre`, `abreviatura`, `resumen`, `definicion`, `logo`, `orden`, `activo`, `color`, `bkg_color`) VALUES
(1, 'INTERNET DE LAS COSAS', 'IoT', 'Es la conexión dentro de la red de los objetos físicos, entornos, máquinas a través de dispositivos electrónicos.', 'El Internet de las cosas es la conexión entre la red de los objetos físicos, entornos, vehículos y máquinas a través de dispositivos electrónicos que permite la recogida y el intercambio de informaciones. En la industria de bienes y servicios, la IoT representa diferentes tecnologías que antes estaban desconectadas y ahora están interconectados a través de una red basada en IP. Esta es una de las bases del crecimiento digital. Aplicado a la industria 4.0, este concepto pretende que un mayor número de dispositivos se añaden y se conectan por medio de estándares de tecnología, permitiendo que los dispositivos de campo para comunicarse e interactuar unos con otros como controladores más centralizados.', '', 2, 1, 'WHITE', 'GREEN'),
(2, 'INTELIGENCIA ARTIFICIAL', 'IA', 'un campo que implica máquinas capaces de imitar determinadas funcionalidades de la inteligencia humana.', 'La inteligencia artificial (IA) es una tecnología que permite a las máquinas demostrar razonamientos de tipo humano y capacidades como la toma de decisiones autónoma. Asimilando grandes cantidades de datos de entrenamiento, la IA aprende a reconocer el habla, detectar patrones y tendencias, resolver problemas proactivamente, y prever condiciones y acontecimientos futuros.\r\n\r\nExplore las soluciones de IA', '', 1, 1, 'WHITE', 'BLACK'),
(3, 'COMPUTACION DE BORDE', 'EC', 'La edge computing se define como toda computación fuera de la nube que ocurra en el perímetro de la ', '', '', 5, 1, 'WHITE', 'GRAY'),
(4, 'MACHINE LEARNING', 'ML', 'Es el subcampo de las ciencias de la computación y una rama de la inteligencia artificial, cuyo objetivo es que las maquinas aprendan.', 'El \'machine learning\' -aprendizaje automático- es una parte la de inteligencia artificial y consiste en que las máquinas aprendan a partir de datos reales sin ser directamente programadas para ello.', 'ML.jpg', 4, 1, 'WHITE', 'BurlyWood'),
(5, 'BIG DATA', 'BD', 'Recopila Datos de una amplia gama de fuentes.Tambien llamados macrodatos-datos masivos-inteligencia ', '', '', 6, 1, 'WHITE', 'SIENNA'),
(6, 'COMPUTACION EN LA NUBE', 'CL', 'Los datos y componentes distribuidos que alimentan las tecnologías de la Industria 4.0 residen en la', '', '', 7, 1, 'WHITE', 'SKYBLUE'),
(7, '  ROBOTICA  ', 'RUR', 'Rama que estudia Maquinas que se pueden programar y automatizar , para adaptarse a distintas situaciones .', 'La robótica industrial es un campo de la ingeniería que se ocupa de la definición, diseño industrial, desarrollo y fabricación de robots industriales que automatizan el trabajo. Estos robots ejecutan sus movimientos en una cadena de fabricación o producción industrial para realizar las tareas de manera más rápida y precisa.', NULL, 3, 1, 'BLACK', 'SALMON'),
(8, 'REALIDAD AUMENTADA', NULL, 'Es un recurso tecnológico que ofrece experiencias interactivas al usuario a partir de la combinación entre la dimensión virtual y la física, con la utilización de dispositivos digitales.', '', NULL, 8, 1, 'BLACK', 'Gold');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `roles` varchar(200) NOT NULL DEFAULT 'Invitado',
  `gmail` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Permisos` varchar(10) NOT NULL,
  `Institucion` varchar(100) NOT NULL,
  `Rol_institucion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `concursos`
--
ALTER TABLE `concursos`
  ADD PRIMARY KEY (`ID_concurso`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_cursos`);

--
-- Indices de la tabla `encuentas`
--
ALTER TABLE `encuentas`
  ADD PRIMARY KEY (`ID_encuestas`);

--
-- Indices de la tabla `foro`
--
ALTER TABLE `foro`
  ADD PRIMARY KEY (`ID_foro`);

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`ID_historia`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`ID_links`);

--
-- Indices de la tabla `misc`
--
ALTER TABLE `misc`
  ADD PRIMARY KEY (`ID_misc`);

--
-- Indices de la tabla `que es`
--
ALTER TABLE `que es`
  ADD PRIMARY KEY (`ID_que`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`ID_recurso`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  ADD PRIMARY KEY (`ID_tecnologia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `concursos`
--
ALTER TABLE `concursos`
  MODIFY `ID_concurso` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_cursos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuentas`
--
ALTER TABLE `encuentas`
  MODIFY `ID_encuestas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foro`
--
ALTER TABLE `foro`
  MODIFY `ID_foro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `ID_historia` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `ID_links` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `misc`
--
ALTER TABLE `misc`
  MODIFY `ID_misc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `que es`
--
ALTER TABLE `que es`
  MODIFY `ID_que` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `ID_recurso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  MODIFY `ID_tecnologia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
