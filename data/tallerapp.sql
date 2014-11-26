-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2014 a las 08:31:55
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tallerapp`
--
CREATE DATABASE IF NOT EXISTS `tallerapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tallerapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academico`
--

CREATE TABLE IF NOT EXISTS `academico` (
  `idacademico` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `web` varchar(100) NOT NULL,
  `fono` int(11) NOT NULL,
  `urlfoto` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idacademico`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `academico`
--

INSERT INTO `academico` (`idacademico`, `nombre`, `tipo`, `correo`, `web`, `fono`, `urlfoto`, `estado`) VALUES
(0, 'Marta Barria', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_female.jpg', 1),
(1, 'Marco Aravena', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(2, 'Carla Taramasco', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_female.jpg', 1),
(3, 'Roberto Muñoz', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(4, 'Gabriel Astudillo', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(5, 'Carlos Becerra', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(6, 'Eliana Providel', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_female.jpg', 1),
(7, 'Pablo Lantero', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(8, 'Rene Noel', 'Academico Jornada Completa', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1),
(9, 'Cristian Carrion', 'Academico Jornada Parcial', 'marta.barria@.uv.cl', 'web', 1234, '/tallerapp/images/personas/no_foto_male.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE IF NOT EXISTS `administrativo` (
  `idadministrativo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `urlfoto` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idadministrativo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `administrativo`
--

INSERT INTO `administrativo` (`idadministrativo`, `nombre`, `cargo`, `correo`, `urlfoto`, `estado`) VALUES
(1, 'Carmen Gloria Navarrete', 'Secretaria Docencia', 'secretaria.decom@uv.cl', '/tallerapp/images/personas/no_foto_female.jpg', 1),
(2, 'Margot', 'Secretaria Escuela', 'secretaria.decom@uv.cl', '/tallerapp/images/personas/no_foto_female.jpg', 1),
(3, 'Sergio Diaz Tobar', 'Auxiliar Escuela', 'sin correo', '/tallerapp/images/personas/no_foto_male.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_trabajo_academico`
--

CREATE TABLE IF NOT EXISTS `area_trabajo_academico` (
  `idarea_trabajo_academico` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) NOT NULL,
  `academico_idacademico` int(11) NOT NULL,
  PRIMARY KEY (`idarea_trabajo_academico`),
  KEY `fk_area_trabajo_academico_academico1_idx` (`academico_idacademico`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `area_trabajo_academico`
--

INSERT INTO `area_trabajo_academico` (`idarea_trabajo_academico`, `area`, `academico_idacademico`) VALUES
(1, 'Redes de Computadores', 0),
(2, 'Evaluación de Rendimiento de Sistemas Computacionales', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `numero` int(11) NOT NULL,
  `descrip` text NOT NULL,
  `semestre_semestre` int(2) NOT NULL,
  `malla_idMalla` varchar(3) NOT NULL,
  `profesor` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `academico_idacademico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_asignatura_semestre1_idx` (`semestre_semestre`),
  KEY `fk_asignatura_malla1_idx` (`malla_idMalla`),
  KEY `fk_asignatura_academico1_idx` (`academico_idacademico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`, `numero`, `descrip`, `semestre_semestre`, `malla_idMalla`, `profesor`, `foto`, `academico_idacademico`) VALUES
(0, 'ALGEBRA ELEMENTAL', 100, 'ola ke ase', 1, 'INC', 'profesor algebra', '/tallerapp/images/asignaturas/alegebra_elemental.jpg', NULL),
(1, 'CALCULO DIFERENCIAL', 101, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Prof Calculo Diferencial', '/tallerapp/images/asignaturas/calculo_dif.jpg', NULL),
(2, 'FUNDAMENTOS DE PROGRAMACION', 102, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Roberto Muñoz, Eliana Providel', '/tallerapp/images/asignaturas/fundamentos.gif', NULL),
(3, 'HISTORIA GENERAL DE LAS CIENCIAS Y LAS TECNOLOGIAS ', 103, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Historia', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(4, 'FORMACION VALORICA PERSONAL', 104, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Formacion', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(5, 'FISICA', 110, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Fisica', '/tallerapp/images/asignaturas/fisica_1.gif', NULL),
(6, 'CALCULO\r\nINTEGRAL', 111, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Integral', '/tallerapp/images/asignaturas/calculo_int.png', NULL),
(7, 'PROGRAMACION I', 112, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Roberto Muñoz, Eliana Providel', '/tallerapp/images/asignaturas/progra1.jpg', NULL),
(8, 'INTRODUCCION AL HARDWARE', 113, 'El alumno que apruebe la asignatura tendrá los conocimientos y habilidades necesarias para el análisis y diseño de circuitos eléctricos y electrónicos básicos construidos con componentes análogos y digitales, orientados a los sistemas computacionales.', 2, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/intro.jpg', NULL),
(9, 'FILOSOFIA DE LAS CIENCIAS', 114, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Filosofia', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(10, 'FISICA EXPERIMENTAL', 200, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor Fis Exp', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(11, 'CALCULO MULTIVARIABLE', 201, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor multi', '/tallerapp/images/asignaturas/multivariable.png', NULL),
(12, 'PROGRAMACION II ', 202, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Roberto Muñoz, Eliana Providel', '/tallerapp/images/asignaturas/progra2.gif', NULL),
(13, 'SISTEMAS DIGITALES', 203, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/sis_digitales.png', NULL),
(14, 'ESTRUCTURAS DISCRETAS', 204, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Pablo Perez', '/tallerapp/images/asignaturas/discretas.png', NULL),
(15, 'ASIGNATURA DE FORMACION GENERAL I ', 205, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor AFG', '/tallerapp/images/asignaturas/afg.jpg', NULL),
(16, 'ALGEBRA LINEAL', 210, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Algebra Lineal', '/tallerapp/images/asignaturas/lineal.gif', NULL),
(17, 'ESTRUCTURAS DE DATOS ', 211, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Pablo Perez', '/tallerapp/images/asignaturas/estructuradatos.png', NULL),
(18, 'ARQUITECTURA DE COMPUTADORES ', 212, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/arquitecturapc.png', NULL),
(19, 'TEORIA DE SISTEMAS', 213, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Conta', '/tallerapp/images/asignaturas/teo_sistemas.png', NULL),
(20, 'CONTABILIDAD', 214, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Conta', '/tallerapp/images/asignaturas/contabilidad.jpg', NULL),
(21, 'ASIGNATURA DE FORMACION GENERAL II ', 215, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor AFG', '/tallerapp/images/asignaturas/afg.jpg', NULL),
(22, 'ECUACIONES DIFERENCIALES', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Ecuaciones', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(23, 'ELECTRO-\r\nMAGNETISMO', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Electro', '/tallerapp/images/asignaturas/electro.jpg', NULL),
(24, 'ANALISIS Y DISENO DE ALGORITMOS ', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Pablo Perez', '/tallerapp/images/asignaturas/ada.jpg', NULL),
(25, 'TEORIA DE SISTEMAS OPERATIVOS ', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(26, 'FUNDAMENTOS DE INGENIERIA DE SOFTWARE', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Rene Noel', '/tallerapp/images/asignaturas/fis.png', NULL),
(27, 'INGLES I ', 305, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Ingles', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(28, 'PROBABILIDAD Y ESTADISTICA ', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Lisandro Fermin', '/tallerapp/images/asignaturas/probabilidad.jpg', NULL),
(29, 'LENGUAJES Y AUTOMATAS', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Pablo Perez', '/tallerapp/images/asignaturas/automatas.png', NULL),
(30, 'REDES DE COMPUTADORES', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/redespc.jpg', NULL),
(31, 'METODOLOGIAS DE ANALISIS ', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Rene Noel', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(32, 'ADMINISTRACION EN INFORMATICA', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Andres bernal', '/tallerapp/images/asignaturas/adm_informatica.jpg', NULL),
(33, 'INGLES II ', 315, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Ingles dos', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(34, 'FISICA CONTEMPORANEA', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Contemporanes', '/tallerapp/images/asignaturas/fisicacom.jpg', NULL),
(35, 'INTERFAZ HOMBRE-MAQUINA', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Roberto Muñoz', '/tallerapp/images/asignaturas/interfaz.jpg', NULL),
(36, 'MODELOS DE DATOS ', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Eliana Providel', '/tallerapp/images/asignaturas/modelodatos.jpg', NULL),
(37, 'TALLER DE SISTEMAS OPERATIVOS ', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(38, 'METODOLOGIAS DE DISEÑO ', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Rene Noel', '/tallerapp/images/asignaturas/metododiseno.jpg', NULL),
(39, 'INGLES III ', 405, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Ingles', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(40, 'BIOLOGIA', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Biologia', '/tallerapp/images/asignaturas/biologia.jpg', NULL),
(41, 'DESARROLLO WEB', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Rene Noel', '/tallerapp/images/asignaturas/desarrolloweb.png', NULL),
(42, 'SISTEMAS DE BASES DE DATOS ', 412, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Eliana Providel', '/tallerapp/images/asignaturas/sisdatos.jpg', NULL),
(43, 'ARQUITECTURA DE SOFTWARE', 413, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Carlos Becerra', '/tallerapp/images/asignaturas/arqsoftware.png', NULL),
(44, 'EVALUACION DE PROYECTOS ', 414, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Ev Proy', '/tallerapp/images/asignaturas/evproyecto.jpg', NULL),
(45, 'LENGUAJES DE PROGRAMACION', 415, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Porfesor Leng Progra', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(46, 'PRUEBAS DE SOFTWARE', 500, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Rene Noel', '/tallerapp/images/asignaturas/pruebassw.jpg', NULL),
(47, 'SEMINARIO DE ESPECIALIDAD I ', 501, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(48, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD I ', 502, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(49, 'SISTEMA DE TELECOMUNICACIONES', 503, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Teleco', '/tallerapp/images/asignaturas/teleco.jpg', NULL),
(50, 'GESTION DE PROYECTOS INFORMATICOS ', 504, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Carlos Becerra', '/tallerapp/images/asignaturas/gpi.jpg', NULL),
(51, 'INVESTIGACION DE OPERACIONES', 505, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Investigacion OP', '/tallerapp/images/asignaturas/investigacion.gif', NULL),
(52, 'ECONOMIA', 510, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Andres Bernal', '/tallerapp/images/asignaturas/economia.jpg', NULL),
(53, 'SEMINARIO DE ESPECIALIDAD II ', 511, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(54, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD II', 512, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(55, 'FUNDAMENTOS DE INTELIGENCIA ARTIFICIAL ', 513, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor FIA', '/tallerapp/images/asignaturas/fia.jpg', NULL),
(56, 'TALLER DE APLICACIONES', 514, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Carlos Becerra', '/tallerapp/images/asignaturas/talleraplicaciones.jpg', NULL),
(57, 'SIMULACION', 515, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Lisandro Fermin', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(58, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD III', 600, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/no-foto.png', NULL);
INSERT INTO `asignatura` (`id`, `nombre`, `numero`, `descrip`, `semestre_semestre`, `malla_idMalla`, `profesor`, `foto`, `academico_idacademico`) VALUES
(59, 'SEMINARIO DE TITULO I ', 601, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/tesis1.jpg', NULL),
(60, 'ETICA Y LEGISLACION ', 602, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesor Etica', '/tallerapp/images/asignaturas/etica.png', NULL),
(61, 'SEMINARIO DE TECNOLOGIA DE INFORMACION Y COMUNICACION ', 610, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 12, 'INC', 'Cristian Carrion', '/tallerapp/images/asignaturas/semtic.gif', NULL),
(62, 'SEMINARIO DE TITULO II ', 611, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 12, 'INC', 'Profesores DECOM', '/tallerapp/images/asignaturas/tesis2.jpg', NULL),
(63, 'ECUACIONES DIFERENCIALES', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Ecuaciones', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(64, 'ELECTROMAGNETISMO', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Electro', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(65, 'ANALISIS Y DISENO DE ALGORITMOS', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Pablo Perez', '/tallerapp/images/asignaturas/ada.jpg', NULL),
(66, 'TEORIA DE SISTEMAS OPERATIVOS', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(67, 'FUNDAMENTOS DE INGENIERIA DE SOFTWARE', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Rene Noel', '/tallerapp/images/asignaturas/fis.png', NULL),
(68, 'INGLES I', 305, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Ingles', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(69, 'PROBABILIDAD Y ESTADISTICA', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Lisandro Fermin', '/tallerapp/images/asignaturas/probabilidad.jpg', NULL),
(70, 'REDES DE COMPUTADORES', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/redespc.jpg', NULL),
(71, 'METODOLOGIAS DE ANALISIS', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Rene Noel', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(72, 'ADMINISTRACION EN INFORMATICA', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Andres Bernal', '/tallerapp/images/asignaturas/adm_informatica.jpg', NULL),
(73, 'INGLES II', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(74, 'INTERFAZ HOMBRE-MAQUINA', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Roberto Muñoz', '/tallerapp/images/asignaturas/interfaz.jpg', NULL),
(75, 'MODELOS DE DATOS', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Eliana Providel', '/tallerapp/images/asignaturas/modelodatos.jpg', NULL),
(76, 'TALLER DE SISTEMAS OPERATIVOS', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(77, 'METODOLOGIAS DE DISEÑO', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Rene Noel', '/tallerapp/images/asignaturas/metododiseno.jpg', NULL),
(78, 'INGLES III', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(79, 'TALLER DE APLICACIONES', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Carlos Becerra', '/tallerapp/images/asignaturas/talleraplicaciones.jpg', NULL),
(80, 'DESARROLLO WEB', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Rene Noel', '/tallerapp/images/asignaturas/desarrolloweb.png', NULL),
(81, 'SISTEMAS DE BASES DE DATOS', 412, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Eliana Providel', '/tallerapp/images/asignaturas/sisdatos.jpg', NULL),
(82, 'ARQUITECTURA DE SOFTWARE', 413, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Carlos Becerra', '/tallerapp/images/asignaturas/arqsoftware.png', NULL),
(83, 'EVALUACION DE PROYECTOS', 414, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', '/tallerapp/images/asignaturas/evproyecto.jpg', NULL),
(84, 'TALLER DE REDES', 500, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/taller_redes.png', NULL),
(85, 'TALLER DE BASES DE DATOS', 501, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Eliana Providel', '/tallerapp/images/asignaturas/tallerbd.png', NULL),
(86, 'SEMINARIO DE TITULO I', 502, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesores DECOM', '/tallerapp/images/asignaturas/tesis1.jpg', NULL),
(87, 'ETICA Y LEGISLACION', 503, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesor', '/tallerapp/images/asignaturas/etica.png', NULL),
(88, 'SEMINARIO DE\nTECNOLOGIA DE\nINFORMACION Y\nCOMUNICACION', 510, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'IIN', 'Cristian Carrion', '/tallerapp/images/asignaturas/semtic.gif', NULL),
(89, 'SEMINARIO DE TITULO II', 511, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'IIN', 'Profesores DECOM', '/tallerapp/images/asignaturas/tesis2.jpg', NULL),
(90, 'PROBABILIDAD Y ESTADISTICA', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Lisandro Fermin', '/tallerapp/images/asignaturas/probabilidad.jpg', NULL),
(91, 'MODELOS DE DATOS', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Eliana Providel', '/tallerapp/images/asignaturas/modelodatos.jpg', NULL),
(92, 'TEORIA DE SISTEMAS OPERATIVOS', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(93, 'FUNDAMENTOS DE INGENIERIA DE SOFTWARE', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Rene Noel', '/tallerapp/images/asignaturas/fis.png', NULL),
(94, 'INGLES I', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profesor Ingles', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(95, 'SISTEMAS DE BASES DE DATOS', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Eliana Providel', '/tallerapp/images/asignaturas/sisdatos.jpg', NULL),
(96, 'REDES DE COMPUTADORES', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/redespc.jpg', NULL),
(97, 'DESARROLLO WEB', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Rene Noel', '/tallerapp/images/asignaturas/desarrolloweb.png', NULL),
(98, 'METODOLOGIAS DE ANALISIS', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Rene Noel', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(99, 'INGLES II', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor Ingles', '/tallerapp/images/asignaturas/no-foto.png', NULL),
(100, 'TALLER DE BASES DE DATOS', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Eliana Providel', '/tallerapp/images/asignaturas/tallerbd.png', NULL),
(101, 'TALLER DE SISTEMAS OPERATIVOS', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/teosisop.jpg', NULL),
(102, 'TALLER DE REDES', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Gabriel Astudillo', '/tallerapp/images/asignaturas/taller_redes.png', NULL),
(103, 'METODOLOGIAS DE DISEÑO', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Rene Noel', '/tallerapp/images/asignaturas/metododiseno.jpg', NULL),
(104, 'ETICA Y LEGISLACION', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor Etica', '/tallerapp/images/asignaturas/etica.png', NULL),
(105, 'ARQUITECTURA DE SOFTWARE', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IEJ', 'Carlos Becerra', '/tallerapp/images/asignaturas/arqsoftware.png', NULL),
(106, 'SEMINARIO DE TITULO', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IEJ', 'Profesores DECOM', '/tallerapp/images/asignaturas/tesis1.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_has_objetivos`
--

CREATE TABLE IF NOT EXISTS `asignatura_has_objetivos` (
  `asignatura_id` int(11) NOT NULL,
  `objetivos_idObjetivo` int(11) NOT NULL,
  PRIMARY KEY (`asignatura_id`,`objetivos_idObjetivo`),
  KEY `fk_asignatura_has_objetivos_objetivos1_idx` (`objetivos_idObjetivo`),
  KEY `fk_asignatura_has_objetivos_asignatura1_idx` (`asignatura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_has_requisito`
--

CREATE TABLE IF NOT EXISTS `asignatura_has_requisito` (
  `asignatura_id` int(11) NOT NULL,
  `requisito_cod_malla` varchar(200) NOT NULL,
  PRIMARY KEY (`asignatura_id`,`requisito_cod_malla`),
  KEY `fk_asignatura_has_requisito_requisito1_idx` (`asignatura_id`),
  KEY `fk_asignatura_has_requisito_asignatura1_idx` (`requisito_cod_malla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura_has_requisito`
--

INSERT INTO `asignatura_has_requisito` (`asignatura_id`, `requisito_cod_malla`) VALUES
(5, 'INC100'),
(5, 'INC101'),
(6, 'INC100'),
(6, 'INC101'),
(7, 'INC102'),
(8, 'INC100'),
(9, 'INC103'),
(10, 'INC110'),
(11, 'INC111'),
(12, 'INC112'),
(13, 'INC113'),
(14, 'INC100'),
(14, 'INC102'),
(16, 'INC100'),
(17, 'INC202'),
(17, 'INC204'),
(18, 'INC203'),
(19, 'INC110'),
(19, 'INC204'),
(20, 'INC100'),
(22, 'INC201'),
(23, 'INC200'),
(23, 'INC201'),
(24, 'INC211'),
(25, 'INC202'),
(25, 'INC212'),
(26, 'INC213'),
(28, 'INC201'),
(29, 'INC211'),
(30, 'INC303'),
(31, 'INC304'),
(32, 'INC214'),
(32, 'INC304'),
(33, 'INC305'),
(34, 'INC301'),
(35, 'INC304'),
(36, 'INC211'),
(36, 'INC304'),
(37, 'INC303'),
(38, 'INC313'),
(39, 'INC315'),
(40, 'INC213'),
(41, 'INC211'),
(41, 'INC401'),
(42, 'INC402'),
(43, 'INC404'),
(44, 'INC314'),
(45, 'INC302'),
(46, 'INC404'),
(47, 'INC104'),
(47, 'INC114'),
(47, 'INC205'),
(47, 'INC210'),
(47, 'INC215'),
(47, 'INC300'),
(47, 'INC310'),
(47, 'INC311'),
(47, 'INC312'),
(47, 'INC400'),
(47, 'INC403'),
(47, 'INC405'),
(47, 'INC410'),
(47, 'INC411'),
(47, 'INC412'),
(47, 'INC413'),
(47, 'INC414'),
(47, 'INC415'),
(48, 'INC104'),
(48, 'INC114'),
(48, 'INC205'),
(48, 'INC210'),
(48, 'INC215'),
(48, 'INC300'),
(48, 'INC310'),
(48, 'INC311'),
(48, 'INC312'),
(48, 'INC400'),
(48, 'INC403'),
(48, 'INC405'),
(48, 'INC410'),
(48, 'INC411'),
(48, 'INC412'),
(48, 'INC413'),
(48, 'INC414'),
(48, 'INC415'),
(49, 'INC312'),
(50, 'INC413'),
(50, 'INC414'),
(51, 'INC310'),
(52, 'INC314'),
(53, 'INC501'),
(54, 'INC500'),
(54, 'INC501'),
(54, 'INC502'),
(54, 'INC503'),
(54, 'INC504'),
(54, 'INC505'),
(55, 'INC302'),
(55, 'INC310'),
(55, 'INC311'),
(56, 'INC500'),
(56, 'INC504'),
(57, 'INC310'),
(58, 'INC510'),
(58, 'INC511'),
(58, 'INC512'),
(58, 'INC513'),
(58, 'INC514'),
(58, 'INC515'),
(59, 'INC510'),
(59, 'INC511'),
(59, 'INC512'),
(59, 'INC513'),
(59, 'INC514'),
(59, 'INC515'),
(62, 'INC601'),
(63, 'INC201'),
(64, 'INC200'),
(64, 'INC201'),
(65, 'INC211'),
(66, 'INC202'),
(66, 'INC212'),
(67, 'INC213'),
(69, 'INC201'),
(70, 'IIN303'),
(71, 'IIN304'),
(72, 'IIN304'),
(72, 'INC214'),
(73, 'IIN305'),
(74, 'IIN304'),
(75, 'IIN304'),
(75, 'INC211'),
(76, 'IIN303'),
(77, 'IIN312'),
(78, 'IIN314'),
(79, 'IIN403'),
(80, 'IIN400'),
(80, 'INC211'),
(81, 'IIN401'),
(82, 'IIN403'),
(83, 'IIN313'),
(84, 'IIN311'),
(85, 'IIN412'),
(86, 'IIN402'),
(86, 'IIN404'),
(86, 'IIN410'),
(86, 'IIN411'),
(86, 'IIN412'),
(86, 'IIN413'),
(86, 'IIN414'),
(89, 'IIN502'),
(90, 'INC201'),
(91, 'INC211'),
(92, 'INC202'),
(92, 'INC212'),
(93, 'INC213'),
(95, 'IEJ301'),
(96, 'IEJ302'),
(97, 'IEJ303'),
(97, 'INC211'),
(98, 'IEJ303'),
(99, 'IEJ304'),
(100, 'IEJ310'),
(101, 'IEJ302'),
(102, 'IEJ311'),
(103, 'IEJ313'),
(105, 'IEJ403'),
(106, 'IEJ400'),
(106, 'IEJ401'),
(106, 'IEJ402'),
(106, 'IEJ403'),
(106, 'IEJ404');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_mencion`
--

CREATE TABLE IF NOT EXISTS `asig_mencion` (
  `profesor` varchar(100) NOT NULL,
  `descripcion_corta` text NOT NULL,
  `descripcion_larga` longtext NOT NULL,
  `url_imagen` varchar(200) NOT NULL,
  `mencion_idMencion` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idCodigo` varchar(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `academico_idacademico` int(11) DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  KEY `fk_asig_mencion_mencion1_idx` (`mencion_idMencion`),
  KEY `fk_asig_mencion_academico1_idx` (`academico_idacademico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asig_mencion`
--

INSERT INTO `asig_mencion` (`profesor`, `descripcion_corta`, `descripcion_larga`, `url_imagen`, `mencion_idMencion`, `nombre`, `idCodigo`, `estado`, `academico_idacademico`) VALUES
('Marco Aravena', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/adm_sistema.png', 'RED', 'Administracion de Sistemas', 'INC502', 'Visible', 1),
('Carlos Becerra', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/no-foto.png', 'SOF', 'Bibliotecas Digitales', 'INC501', 'Visible', 5),
('Rene Noel', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/calidadsw.png', 'SOF', 'Calidad de Software', 'INC502', 'Visible', 8),
('Pablo Perez', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/estructura_avanzada.png', 'BD', 'Estructura de Datos Avanzada', 'INC512', 'Visible', 7),
('Eliana Providel', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/mineria_datos.png', 'BD', 'Mineria de Datos', 'INC511', 'Visible', 6),
('Marta Barria', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/qos.png', 'RED', 'QoS', 'INC512', 'Visible', 0),
('Eliana Providel', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/no-foto.png', 'BD', 'Recuperacion de Informacion', 'INC502', 'Visible', 6),
('Cristian Carrion', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/sistema_seguridad.png', 'RED', 'Sistemas de Seguridad', 'INC600', 'Visible', 9),
('Roberto Mu&ntilde;oz', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/accesibilidadweb.png', 'SOF', 'Taller de Accesibilidad Web', 'INC600', 'Visible', 3),
('Eliana Providel', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/tallerbd.png', 'BD', 'Taller de Base de Datos', 'INC501', 'Visible', 6),
('Rene Noel', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/emprendimiento.png', 'SOF', 'Taller de Emprendimiento', 'INC512', 'Visible', 8),
('Gabriel Astudillo', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/taller_redes.png', 'RED', 'Taller de Redes', 'INC501', 'Visible', 4),
('Marco Aravena', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/tcpip.png', 'RED', 'TCP/IP', 'INC511', 'Visible', 1),
('Carla Tamarasco', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/redes_complejas.png', 'BD', 'Teoria de Redes Complejas', 'INC600', 'Visible', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayudante`
--

CREATE TABLE IF NOT EXISTS `ayudante` (
  `idayudante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `urlFoto` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idayudante`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ayudante`
--

INSERT INTO `ayudante` (`idayudante`, `nombre`, `correo`, `urlFoto`, `estado`) VALUES
(1, 'Jorge Garin Roman', 'jorge.garinr@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(2, 'Victor Monsalve', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(3, 'Pablo Gonzalez', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(4, 'Jose Cuevas', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(5, 'Juan Carlos Tapia', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(6, 'Jonathan Araya', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(7, 'Alfonso Prado', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(8, 'Marcelo verdugo', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(9, 'Camilo Ravelo', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1),
(10, 'Alexis Reyes', 'correo@alumnos.uv.cl', '/tallerapp/images/personas/no_foto_male.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE IF NOT EXISTS `descargas` (
  `idDescargas` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL,
  `abstract` text,
  `anio` int(4) NOT NULL,
  `estado` int(11) NOT NULL,
  `idCodigo` varchar(6) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idDescargas`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`idDescargas`, `titulo`, `url`, `abstract`, `anio`, `estado`, `idCodigo`, `autor`, `nombre`) VALUES
(29, '59406824-RESUMEN-COMPLETO-MANKIW', '../static/documentos/2014/59406824-RESUMEN-COMPLETO-MANKIW.pdf', 'comentario 1', 2014, 1, 'inc100', 'autor 1', 'ALGEBRA ELEMENTAL'),
(30, '114427', '../static/documentos/2014/114427.pdf', 'caca 4', 2014, 1, 'inc100', 'caca 3', 'ALGEBRA ELEMENTAL'),
(33, 'hola', '../static/documentos/2013/hola.pdf', 'comentario oj', 2013, 1, 'inc100', 'autor 4', 'ALGEBRA ELEMENTAL'),
(34, 'hola', '../static/documentos/2013/hola.pdf', 'comentario oj', 2012, 1, 'inc100', 'autor 5', 'ALGEBRA ELEMENTAL'),
(35, 'Aliens Colonial Marines pulento', '../static/documentos/2014/Aliens Colonial Marines.txt', 'comentario comentario comentario', 2014, 1, 'inc100', 'ola ke ase', 'ALGEBRA ELEMENTAL'),
(37, 'entrega 3 - final', '../static/documentos/2014/entrega 3 - final.doc', 'ejale', 2014, 1, 'inc100', 'ejale Es terrible pulento', 'ALGEBRA ELEMENTAL'),
(38, 'Contactos Ayudantes', '../static/documentos/2014/Contactos Ayudantes.pdf', 'Sin Comentarios', 2014, 0, 'inc100', 'Sin Autor', 'ALGEBRA ELEMENTAL'),
(39, 'CV - Jorge Garin Roman', '../static/documentos/2014/CV - Jorge Garin Roman.pdf', 'autor 1', 2014, 0, 'inc100', 'comentario 1', 'ALGEBRA ELEMENTAL'),
(40, 'logoUV', '../static/documentos/2014/logoUV.png', 'Sin Comentarios', 2014, 1, 'inc100', 'Sin Autor', 'ALGEBRA ELEMENTAL'),
(41, 'kit-arduino-uno-v30-19946-MLC20181545367_102014-F', '../static/documentos/2014/kit-arduino-uno-v30-19946-MLC20181545367_102014-F.jpg', 'Sin Comentarios', 2014, 1, 'inc100', 'Sin Autor', 'ALGEBRA ELEMENTAL'),
(42, 'Transferencias de Fondos a Terceros', '../static/documentos/2014/Transferencias de Fondos a Terceros.pdf', 'Sin Comentarios', 2014, 1, 'inc412', 'Sin Autor', 'SISTEMAS DE BASES DE DATOS'),
(43, 'Economia', '../static/documentos/2014/Economia.xlsx', 'Sin Comentarios', 2014, 0, 'iin412', 'Sin Autor', 'SISTEMAS DE BASES DE DATOS'),
(44, 'HORARIOS LABORATORIOS', '../static/documentos/2014/HORARIOS LABORATORIOS.xlsx', 'Sin Comentarios', 2014, 0, 'iej310', 'Sin Autor', 'SISTEMAS DE BASES DE DATOS'),
(45, 'tumblr_nfk05pF6ty1r88u00o1_500', '../static/documentos/2014/tumblr_nfk05pF6ty1r88u00o1_500.jpg', 'Sin Comentarios', 2014, 0, 'inc102', 'Sin Autor', 'FUNDAMENTOS DE PROGRAMACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `malla`
--

CREATE TABLE IF NOT EXISTS `malla` (
  `idMalla` varchar(3) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`idMalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `malla`
--

INSERT INTO `malla` (`idMalla`, `nombre`) VALUES
('IEJ', 'PLAN INGENIERÍA DE EJECUCIÓN EN INFORMÁTICA'),
('IIN', 'PLAN INGENIERÍA EN INFORMÁTICA '),
('INC', 'PLAN INGENIERÍA CIVIL EN INFORMÁTICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `malla_has_semestre`
--

CREATE TABLE IF NOT EXISTS `malla_has_semestre` (
  `malla_idMalla` varchar(3) NOT NULL,
  `semestre_semestre` int(2) NOT NULL,
  PRIMARY KEY (`malla_idMalla`,`semestre_semestre`),
  KEY `fk_malla_has_semestre_semestre1_idx` (`semestre_semestre`),
  KEY `fk_malla_has_semestre_malla1_idx` (`malla_idMalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mencion`
--

CREATE TABLE IF NOT EXISTS `mencion` (
  `idMencion` varchar(3) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descrip` text NOT NULL,
  `malla_idMalla` varchar(3) NOT NULL,
  PRIMARY KEY (`idMencion`),
  KEY `fk_mencion_malla1_idx` (`malla_idMalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mencion`
--

INSERT INTO `mencion` (`idMencion`, `nombre`, `descrip`, `malla_idMalla`) VALUES
('BD', 'MENCION DE BASE DE DATOS', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 'INC'),
('RED', 'MENCION DE REDES', 'bus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 'INC'),
('SOF', 'MENCION DE SOFTWARE', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 'INC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE IF NOT EXISTS `objetivos` (
  `idObjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `idCodigo_asig` varchar(6) NOT NULL,
  `nombre_asig` varchar(100) NOT NULL,
  `descrip` text NOT NULL,
  `estado` varchar(12) NOT NULL,
  PRIMARY KEY (`idObjetivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `objetivos`
--

INSERT INTO `objetivos` (`idObjetivo`, `idCodigo_asig`, `nombre_asig`, `descrip`, `estado`) VALUES
(1, 'INC113', 'INTRODUCCION AL HARDWARE', 'Conocer, análizar y diseñar circuitos electrónicos básicos, construídos con elementos análogos lineales y no lineales.', 'visible'),
(2, 'INC113', 'INTRODUCCION AL HARDWARE', 'Conocer la normativa eléctrica Chilena y aplicarla en el diseño de soluciones computacionales.', 'visible'),
(3, 'INC113', 'INTRODUCCION AL HARDWARE', 'Conocer y analizar el funcionamiento a nivel sistémico de un sistema computacional', 'visible'),
(10, 'INC113', 'INTRODUCCION-AL-HARDWARE', 'nb ,mbjvbl,nkvbln', 'no_visible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisito`
--

CREATE TABLE IF NOT EXISTS `requisito` (
  `cod_malla` varchar(6) NOT NULL,
  `numero` int(3) NOT NULL,
  PRIMARY KEY (`cod_malla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `requisito`
--

INSERT INTO `requisito` (`cod_malla`, `numero`) VALUES
('IEJ301', 301),
('IEJ302', 302),
('IEJ303', 303),
('IEJ304', 304),
('IEJ310', 310),
('IEJ311', 311),
('IEJ313', 313),
('IEJ400', 400),
('IEJ401', 401),
('IEJ402', 402),
('IEJ403', 403),
('IEJ404', 404),
('IIN303', 303),
('IIN304', 304),
('IIN305', 305),
('IIN311', 311),
('IIN312', 312),
('IIN313', 313),
('IIN314', 314),
('IIN400', 400),
('IIN401', 401),
('IIN402', 402),
('IIN403', 403),
('IIN404', 404),
('IIN410', 410),
('IIN411', 411),
('IIN412', 412),
('IIN413', 413),
('IIN414', 414),
('IIN502', 502),
('INC100', 100),
('INC101', 101),
('INC102', 102),
('INC103', 103),
('INC104', 104),
('INC110', 110),
('INC111', 111),
('INC112', 112),
('INC113', 113),
('INC114', 114),
('INC200', 200),
('INC201', 201),
('INC202', 202),
('INC203', 203),
('INC204', 204),
('INC205', 205),
('INC210', 210),
('INC211', 211),
('INC212', 212),
('INC213', 213),
('INC214', 214),
('INC215', 215),
('INC300', 300),
('INC301', 301),
('INC302', 302),
('INC303', 303),
('INC304', 304),
('INC305', 305),
('INC310', 310),
('INC311', 311),
('INC312', 312),
('INC313', 313),
('INC314', 314),
('INC315', 315),
('INC400', 400),
('INC401', 401),
('INC402', 402),
('INC403', 403),
('INC404', 404),
('INC405', 405),
('INC410', 410),
('INC411', 411),
('INC412', 412),
('INC413', 413),
('INC414', 414),
('INC415', 415),
('INC500', 500),
('INC501', 501),
('INC502', 502),
('INC503', 503),
('INC504', 504),
('INC505', 505),
('INC510', 510),
('INC511', 511),
('INC512', 512),
('INC513', 513),
('INC514', 514),
('INC515', 515),
('INC601', 601);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE IF NOT EXISTS `semestre` (
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`semestre`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo`
--

CREATE TABLE IF NOT EXISTS `titulo` (
  `idtitulo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `academico_idacademico` int(11) NOT NULL,
  PRIMARY KEY (`idtitulo`),
  KEY `fk_titulo_academico1_idx` (`academico_idacademico`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `titulo`
--

INSERT INTO `titulo` (`idtitulo`, `titulo`, `academico_idacademico`) VALUES
(1, 'Doctora en Informática - PUC - Brasil', 0),
(2, 'Magister en Ciencias de la Computación', 0),
(3, 'Ingeniero Civil - UTFSM (1982) - Chile', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_administrador`
--

CREATE TABLE IF NOT EXISTS `usuario_administrador` (
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_administrador`
--

INSERT INTO `usuario_administrador` (`rut`, `nombre`, `apellido`, `mail`, `password`, `nickname`, `tipo`) VALUES
('11111111-1', 'Jorge', 'Garin', 'jorge.garinr@alumnos.uv.cl', 'admin', 'admin', 'superadmin'),
('16484897-3', 'Jorge', 'Garin', 'jorge.garinr@alumnos.uv.cl', 'garinroman', 'jgarinr', 'admin');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area_trabajo_academico`
--
ALTER TABLE `area_trabajo_academico`
  ADD CONSTRAINT `fk_area_trabajo_academico_academico1` FOREIGN KEY (`academico_idacademico`) REFERENCES `academico` (`idacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_asignatura_malla1` FOREIGN KEY (`malla_idMalla`) REFERENCES `malla` (`idMalla`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_semestre1` FOREIGN KEY (`semestre_semestre`) REFERENCES `semestre` (`semestre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_academico1` FOREIGN KEY (`academico_idacademico`) REFERENCES `academico` (`idacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignatura_has_objetivos`
--
ALTER TABLE `asignatura_has_objetivos`
  ADD CONSTRAINT `fk_asignatura_has_objetivos_asignatura1` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_has_objetivos_objetivos1` FOREIGN KEY (`objetivos_idObjetivo`) REFERENCES `objetivos` (`idObjetivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignatura_has_requisito`
--
ALTER TABLE `asignatura_has_requisito`
  ADD CONSTRAINT `fk_asignatura_has_requisito_asignatura1` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_has_requisito_requisito1` FOREIGN KEY (`requisito_cod_malla`) REFERENCES `requisito` (`cod_malla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asig_mencion`
--
ALTER TABLE `asig_mencion`
  ADD CONSTRAINT `fk_asig_mencion_mencion1` FOREIGN KEY (`mencion_idMencion`) REFERENCES `mencion` (`idMencion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asig_mencion_academico1` FOREIGN KEY (`academico_idacademico`) REFERENCES `academico` (`idacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `malla_has_semestre`
--
ALTER TABLE `malla_has_semestre`
  ADD CONSTRAINT `fk_malla_has_semestre_malla1` FOREIGN KEY (`malla_idMalla`) REFERENCES `malla` (`idMalla`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_malla_has_semestre_semestre1` FOREIGN KEY (`semestre_semestre`) REFERENCES `semestre` (`semestre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mencion`
--
ALTER TABLE `mencion`
  ADD CONSTRAINT `fk_mencion_malla1` FOREIGN KEY (`malla_idMalla`) REFERENCES `malla` (`idMalla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD CONSTRAINT `fk_titulo_academico1` FOREIGN KEY (`academico_idacademico`) REFERENCES `academico` (`idacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
