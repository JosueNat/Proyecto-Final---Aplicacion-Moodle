-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-10-2020 a las 00:56:49
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scool`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE IF NOT EXISTS `asistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_curso` (`id_estudiante`),
  KEY `id_nomina` (`id_grado`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `tipo`, `fecha`, `id_estudiante`, `id_grado`) VALUES
(1, '1', '2018-08-01', 34, 70),
(2, '1', '2018-08-01', 35, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a_academico`
--

DROP TABLE IF EXISTS `a_academico`;
CREATE TABLE IF NOT EXISTS `a_academico` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a_academico`
--

INSERT INTO `a_academico` (`id_a`, `nombre`, `anio`, `estado`) VALUES
(2, 'Mundial ', 2018, 'Cerrado'),
(3, 'Paro Nacional || QuerÃ­an sacar a LenÃ­n', 2019, 'Cerrado'),
(4, 'Pandemia', 2020, 'Abierto'),
(5, 'Elecciones Presidenciales', 2021, 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque_cal`
--

DROP TABLE IF EXISTS `bloque_cal`;
CREATE TABLE IF NOT EXISTS `bloque_cal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cal` varchar(80) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_grado` (`id_grado`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bloque_cal`
--

INSERT INTO `bloque_cal` (`id`, `nom_cal`, `id_grado`) VALUES
(1, 'ingles', 70),
(2, 'qyechua', 70),
(3, 'Ciencias', 70),
(4, 'Literatura', 70),
(5, 'Ed. Fisica', 70),
(6, 'ingles', 69),
(7, 'Literatura', 69),
(8, 'Ed. Fisica', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conducta`
--

DROP TABLE IF EXISTS `conducta`;
CREATE TABLE IF NOT EXISTS `conducta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) DEFAULT NULL,
  `date_at` date DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_grado` (`id_grado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `profesor` varchar(80) NOT NULL,
  PRIMARY KEY (`id_curso`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`, `profesor`) VALUES
(25, 'Desarrollo Web', ''),
(26, 'Calculo diferencial', ''),
(28, 'EconomÃ­a', ''),
(29, 'Seguridad InformÃ¡tica', ''),
(30, 'AdministraciÃ³n de Centros de CÃ³mputo', 'juan carlos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `genero` varchar(20) NOT NULL,
  `fecha_nac` varchar(10) NOT NULL,
  `apoderado` varchar(100) DEFAULT NULL,
  `num_cel` varchar(50) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `fecha_reg` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `dni`, `apellido_paterno`, `apellido_materno`, `nombre`, `genero`, `fecha_nac`, `apoderado`, `num_cel`, `direccion`, `estado`, `fecha_reg`, `user_id`) VALUES
(31, '72618793', 'lia', 'lia', 'bilma', 'Masculino', '02/02/1995', 'Braulia apellidos1 apelldios2', '147854214', 'Calle los arces 102', 'activo', '2018-08-07', 1),
(32, '11111111', 'Gomez', 'Luque', 'Pepito', 'Masculino', '25/06/2019', 'Braulia apellidos1 apelldios2', '54875402', 'Calle los arces 102', 'activo', '2018-08-07', 1),
(33, '11147852', 'Roque', 'Llayque', 'Maria', 'Masculino', '21/05/1999', 'Braulia apellidos1 apelldios2', '789541259', 'Calle los arces 102', 'activo', '2018-08-07', 1),
(34, '785', 'Marroquin', 'Tiara', 'Luchito', 'Masculino', '12/04/1999', 'Braulia apellidos1 apelldios2', '789541236', 'Calle los arces 102', 'activo', '2018-08-07', 1),
(35, '78541269', 'Layme', 'Huachaca', 'Luzmery', 'Masculino', '20/01/2015', 'Braulia apellidos1 apelldios2', '654852102', 'Calle los arces 102', 'activo', '2018-08-07', 1),
(36, '72615487', 'pedrito', 'pedrito', 'pedrito', 'Masculino', '25/06/1995', 'Juliana apellidos1 apellidos2', '789541236', 'Calle los arces 102', 'activo', '2018-08-07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `est_gra`
--

DROP TABLE IF EXISTS `est_gra`;
CREATE TABLE IF NOT EXISTS `est_gra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_grado` (`id_grado`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `est_gra`
--

INSERT INTO `est_gra` (`id`, `id_estudiante`, `id_grado`) VALUES
(8, 34, 70),
(9, 35, 70),
(10, 36, 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

DROP TABLE IF EXISTS `grados`;
CREATE TABLE IF NOT EXISTS `grados` (
  `id_grado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `nivel` varchar(20) NOT NULL,
  `fav` int(1) NOT NULL,
  `id_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_grado`),
  KEY `user_id` (`id_prof`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre`, `nivel`, `fav`, `id_prof`) VALUES
(69, '1Â° Grado', 'Inicial', 1, 9),
(70, '1Â° Grado', 'Primaria', 1, 12),
(71, '2Â° grado', 'Primaria', 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gra_cu`
--

DROP TABLE IF EXISTS `gra_cu`;
CREATE TABLE IF NOT EXISTS `gra_cu` (
  `id_gra_cu` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) DEFAULT NULL,
  `curso` int(11) NOT NULL,
  `cu` varchar(200) NOT NULL,
  PRIMARY KEY (`id_gra_cu`),
  KEY `id_grado` (`id_grado`),
  KEY `curso` (`curso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

DROP TABLE IF EXISTS `niveles`;
CREATE TABLE IF NOT EXISTS `niveles` (
  `id_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nombre`) VALUES
(1, 'Inicial'),
(2, 'Primaria'),
(4, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

DROP TABLE IF EXISTS `nomina`;
CREATE TABLE IF NOT EXISTS `nomina` (
  `id_nomina` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_a` int(11) NOT NULL,
  PRIMARY KEY (`id_nomina`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_a` (`id_a`),
  KEY `id_grado` (`id_grado`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_bloque` int(11) NOT NULL,
  `nota` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_bloque` (`id_bloque`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `id_estudiante`, `id_bloque`, `nota`) VALUES
(1, 34, 1, '18'),
(2, 35, 1, '14'),
(3, 36, 6, '12'),
(4, 36, 7, '13'),
(5, 36, 8, '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(80) NOT NULL,
  `num_cel` varchar(20) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_prof`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_prof`, `dni`, `nombres`, `apellidos`, `num_cel`, `especialidad`, `email`, `direccion`) VALUES
(9, 12345678, 'Daniel', 'danielito dadielito', '458796521', 'ComputaciÃ³n e InformÃ¡tica', 'profesor@gmail.com', 'Calle los arces 102'),
(10, 44582510, 'juan carlos', 'Quispe Mamani', '974584216', 'Ingles', 'profesor@gmail.com', 'Calle los arces 102'),
(11, 785428, 'Jhon', 'apellidos editados', '587412569', 'Matematicas', 'johon@hotmail.com', 'Calle los arces 102'),
(12, 854712547, 'Elvia', 'Marroquin Cardenas', '458741256', 'Literatura', 'elvia@hotmail.com', 'Calle los arces 102');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

DROP TABLE IF EXISTS `solicitudes`;
CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `telefono` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `nombres`, `apellidos`, `correo`, `empresa`, `telefono`) VALUES
(1, 'JOSUE NATANAEL', 'TOMALA SOLORZANO', 'natatomala2104@yahoo.com', 'TAMEIN', 924234432),
(2, 'JOSUE NATANAEL', 'TOMALÃ SOLÃ“RZANO', 'alli_madeline04@yahoo.com', 'TAMEIN', 924234233);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prof` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `kind` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_prof`, `name`, `lastname`, `username`, `password`, `email`, `image`, `status`, `kind`, `created_at`) VALUES
(1, 1, 'Administrador', 'admin', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', NULL, NULL, 1, 1, '2018-07-15 13:36:00'),
(27, 9, 'Daniel', 'danielito dadielito', '12345678', '4c80d78769a425ac383c23e2578b0ad56a0a6806', 'profesor@gmail.com', NULL, 1, 0, '2018-08-12 13:19:03'),
(28, 9, 'Daniel', 'danielito dadielito', '12345678', '1f3d995beb21213b23f096e8fd68582554f36a32', 'profesor@gmail.com', NULL, 1, 0, '2020-10-11 17:57:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
