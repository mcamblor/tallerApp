-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2014 a las 05:43:46
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
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `permiso` int(2) NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `ayudante1` varchar(30) NOT NULL,
  `ayudante2` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_asignatura_semestre1_idx` (`semestre_semestre`),
  KEY `fk_asignatura_malla1_idx` (`malla_idMalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`, `numero`, `descrip`, `semestre_semestre`, `malla_idMalla`, `profesor`, `ayudante1`, `ayudante2`, `foto`) VALUES
(0, 'Algebra Elemental', 100, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'profesor algebra', 'ayudante 1 algebra', 'ayudante 2 algebra', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(1, 'CALCULO DIFERENCIAL', 101, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Cal Difere', 'ayudante 1 Cal Difere', 'ayudante 2 Cal Difere', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(2, 'FUNDAMENTOS DE PROGRAMACION', 102, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Fundamentos de progra', 'ayudante 1 Fundamentos', 'ayudante 1 Fundamentos', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(3, 'HISTORIA GENERAL DE LAS CIENCIAS Y LAS TECNOLOGIAS ', 103, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Historia', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(4, 'FORMACION VALORICA PERSONAL', 104, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 1, 'INC', 'Profesor Formacion', 'ayudante 1 ', 'ayudante2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(5, 'FISICA', 110, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Fisica', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(6, 'CALCULO\r\nINTEGRAL', 111, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Integral', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(7, 'PROGRAMACION I', 112, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor progra', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(8, 'INTRODUCCION AL HARDWARE', 113, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Intro', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(9, 'FILOSOFIA DE LAS CIENCIAS', 114, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 2, 'INC', 'Profesor Filosofia', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(10, 'FISICA EXPERIMENTAL', 200, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor Fis Exp', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(11, 'CALCULO MULTIVARIABLE', 201, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor multi', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(12, 'PROGRAMACION II ', 202, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor Progra 2', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(13, 'SISTEMAS DIGITALES', 203, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor Sistemas', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(14, 'ESTRUCTURAS DISCRETAS', 204, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor Estructura', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(15, 'ASIGNATURA DE FORMACION GENERAL I ', 205, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 3, 'INC', 'Profesor AFG', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(16, 'ALGEBRA LINEAL', 210, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Algebra Lineal', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(17, 'ESTRUCTURA DE DATOS ', 211, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Estructura', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(18, 'ARQUITECTURA DE COMPUTADORES ', 212, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Arquitec', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(19, 'TEORIA DE SISTEMAS', 213, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Conta', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(20, 'CONTABILIDAD', 214, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor Conta', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(21, 'ASIGNATURA DE FORMACION GENERAL II ', 215, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 4, 'INC', 'Profesor AFG', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(22, 'ECUACIONES DIFERENCIALES', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Ecuaciones', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(23, 'ELECTRO-\r\nMAGNETISMO', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Electro', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(24, 'ANALISIS Y DISENO DE ALGORITMOS ', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Analisis', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(25, 'TEORIA DE SISTEMAS OPERATIVOS ', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor TSO', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(26, 'FUNDAMENTOS DE INGENIERIA DE SOFTWARE', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor FIS', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(27, 'INGLES I ', 305, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'INC', 'Profesor Ingles', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(28, 'PROBABILIDAD Y ESTADISTICA ', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Proba', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(29, 'LENGUAJES Y AUTOMATAS', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Automatas', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(30, 'REDES DE COMPUTADORES', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Redes', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(31, 'METODOLOGIAS DE ANALISIS ', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor FIS 2', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(32, 'ADMINISTRACION EN INFORMATICA', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Administracion', 'ayudante1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(33, 'INGLES II ', 315, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'INC', 'Profesor Ingles dos', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(34, 'FISICA CONTEMPORANEA', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Contemporanes', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(35, 'INTERFAZ HOMBRE-MAQUINA', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor IHM', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(36, 'MODELOS DE DATOS ', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Modelos', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(37, 'TALLER DE SISTEMAS OPERATIVOS ', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor TSO', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(38, 'METODOLOGIAS DE DISENO ', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Met Disenio', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(39, 'INGLES III ', 405, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'INC', 'Profesor Ingles', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(40, 'BIOLOGIA', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Biologia', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(41, 'DESARROLLO WEB', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Desarrollo', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(42, 'SISTEMAS DE BASES DE DATOS ', 412, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor SBD', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(43, 'ARQUITECTURA DE SOFTWARE', 413, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Arq SW', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(44, 'EVALUACION DE PROYECTOS ', 414, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Profesor Ev Proy', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(45, 'LENGUAJES DE PROGRAMACION', 415, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'INC', 'Porfesor Leng Progra', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(46, 'PRUEBAS DE SOFTWARE', 500, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Prueba SW', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(47, 'SEMINARIO DE ESPECIALIDAD I ', 501, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Seminario', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(48, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD I ', 502, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor AEE', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(49, 'SISTEMA DE TELECOMUNICACIONES', 503, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Teleco', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(50, 'GESTION DE PROYECTOS INFORMATICOS ', 504, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Gpi', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(51, 'INVESTIGACION DE OPERACIONES', 505, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'INC', 'Profesor Investigacion OP', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(52, 'ECONOMIA', 510, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor Economia', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(53, 'SEMINARIO DE ESPECIALIDAD II ', 511, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor Seminario', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(54, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD II', 512, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor AEE', 'ayudate 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(55, 'FUNDAMENTOS DE INTELIGENCIA ARTIFICIAL ', 513, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor FIA', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg');
INSERT INTO `asignatura` (`id`, `nombre`, `numero`, `descrip`, `semestre_semestre`, `malla_idMalla`, `profesor`, `ayudante1`, `ayudante2`, `foto`) VALUES
(56, 'TALLER DE APLICACIONES', 514, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor Tall App', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(57, 'SIMULACION', 515, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'INC', 'Profesor Simulacion', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(58, 'ASIGNATURA ELECTIVA DE ESPECIALIDAD III', 600, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesor AEE', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(59, 'SEMINARIO DE TITULO I ', 601, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesor Seminario', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(60, 'ETICA Y LEGISLACION ', 602, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 11, 'INC', 'Profesor Etica', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(61, 'SEMINARIO DE TECNOLOGIA DE INFORMACION Y COMUNICACION ', 610, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 12, 'INC', 'Profesor TIC', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(62, 'SEMINARIO DE TITULO II ', 611, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 12, 'INC', 'Profesor Seminario', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(63, 'ECUACIONES DIFERENCIALEs', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Ecuaciones', 'ayudante 1', 'ayudante 2 ', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(64, 'ELECTROMAGNETISMo', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Electro', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(65, 'ANALISIS Y DISENO DE ALGORITMOs', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor ADA', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(66, 'TEORIA DE SISTEMAS OPERATIVOs', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor TSO', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(67, 'FUNDAMENTOS DE INGENIERIA DE SOFTWARe', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor FIS', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(68, 'INGLEs I', 305, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IIN', 'Profesor Ingles', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(69, 'PROBABILIDAD Y ESTADISTICa', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor Proba', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(70, 'REDES DE COMPUTADOREs', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor Redes', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(71, 'METODOLOGIAS DE ANALISIs', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(72, 'ADMINISTRACION EN INFORMATICa', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(73, 'INGLEs II', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(74, 'INTERFAZ HOMBRE-MAQUINa', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(75, 'MODELOs\r\nDE\r\nDATOS', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(76, 'TALLER DE\r\nSISTEMAs\r\nOPERATIVOS', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(77, 'METODOLOGIAs\r\nDE\r\nDISENO', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(78, 'INGLEs\r\nIII', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(79, '\r\nTALLER\r\nDE\r\nAPLICACIONEs', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(80, 'DESARROLLo\r\nWEB', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(81, 'SISTEMAS\r\nDE BASEs\r\nDE DATOS', 412, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', 'ayudante 1 ', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(82, 'ARQUITECTURA\r\nDE\r\nSOFTWARe', 413, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(83, 'EVALUACIOn\r\nDE\r\nPROYECTOS', 414, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(84, 'TALLEr\r\nDE\r\nREDES', 500, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(85, 'TALLER\r\nDE BASEs\r\nDE DATOS', 501, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(86, 'SEMINARIO\r\nDE TITULo\r\nI', 502, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesor', ' ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(87, 'ETICa\r\nY\r\nLEGISLACION', 503, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 9, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(88, 'SEMINARIO DE\r\nTECNOLOGIA De\r\nINFORMACION Y\r\nCOMUNICACION', 510, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(89, 'SEMINARIO\r\nDE TITULo\r\nII', 511, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 10, 'IIN', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(90, 'PROBABILIDAD\r\ny\r\nESTADISTICA', 300, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profesor Proba', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(91, 'Modelo\r\nDE\r\nDATOS', 301, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profesor Modelo', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(92, 'TEORIA DE\r\nSISTEMAS\r\nOPERATIVoS', 302, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profeso TSO', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(93, 'FUNDAMENTOS\r\nDe INGENIERIA\r\nDe SOFTWARE', 303, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profesor FIS', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(94, 'InGLES\r\nI', 304, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 5, 'IEJ', 'Profesor Ingles', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(95, 'SIsTEMAS DE\r\nBASE DE\r\nDATOS', 310, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor SBD', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(96, 'ReDES\r\nDeCOMPUTADORES', 311, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor Redes', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(97, 'DeSARROLLO\r\nWeb', 312, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor Desarrollo', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(98, 'MeTODOLOGIA\r\nDe\r\nANALISIS', 313, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor Met Ana', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(99, 'INGLeS\r\nII', 314, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 6, 'IEJ', 'Profesor Ingles', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(100, 'TALLER\r\nDe BASES\r\nDe DATOS', 400, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor TBD', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(101, 'TALLER\r\nDe SISTEMAS\r\nOPERATIVOS', 401, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor TSO', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(102, 'TALLER\r\nDe REDES', 402, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor TR', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(103, 'METODoLOGIA\r\nDe DISENO', 403, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor Met Diseño', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(104, 'ETICA y\r\nLEGISLACION', 404, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 7, 'IEJ', 'Profesor Etica', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(105, 'ARQUITECTURA\r\nDe SOFTWARE', 410, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IEJ', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg'),
(106, 'SEMINARIO\r\nDe TITULO', 411, 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', 8, 'IEJ', 'Profesor', 'ayudante 1', 'ayudante 2', '../../images/asignaturas/sem1/inc100/inc100.jpg');

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
  `especialidad` int(1) DEFAULT NULL,
  `electivo` int(1) NOT NULL,
  `profesor` varchar(100) NOT NULL,
  `descripcion_corta` text NOT NULL,
  `descripcion_larga` longtext NOT NULL,
  `url_imagen` varchar(200) NOT NULL,
  `mencion_idMencion` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idCodigo` varchar(6) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `fk_asig_mencion_mencion1_idx` (`mencion_idMencion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asig_mencion`
--

INSERT INTO `asig_mencion` (`especialidad`, `electivo`, `profesor`, `descripcion_corta`, `descripcion_larga`, `url_imagen`, `mencion_idMencion`, `nombre`, `idCodigo`) VALUES
(0, 0, 'Marco Aravena', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Administraci&oacute;n de Sistemas', 'INC502'),
(2, 0, 'Carlos Becerra', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Bibliotecas Digitales', 'INC501'),
(2, 1, 'Rene Noel', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Calidad de Software', 'INC502'),
(1, 2, 'Pablo Perez', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Estructura de Datos Avanzada', 'INC512'),
(1, 0, 'Eliana Providel', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Miner&iacute;a de Datos', 'INC511'),
(0, 0, 'Marta Barria', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'QoS', 'INC512'),
(1, 1, 'Eliana Providel', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Recuperaci&oacute;n de Informaci&oacute;n', 'INC502'),
(0, 0, 'Cristian Carrion', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Sistemas de Seguridad', 'INC600'),
(2, 1, 'Roberto Mu&ntilde;oz', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Taller de Accesibilidad Web', 'INC600'),
(1, 0, 'Eliana Providel', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Taller de Base de Datos', 'INC501'),
(2, 1, 'Rene Noel', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Taller de Emprendimiento', 'INC512'),
(0, 1, 'Gabriel Astudillo', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Taller de Redes', 'INC501'),
(0, 1, 'Marco Aravena', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'TCP/IP', 'INC511'),
(1, 1, 'Carla Tamarasco', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Teor&iacute;a de Redes Complejas', 'INC600');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avance`
--

CREATE TABLE IF NOT EXISTS `avance` (
  `nombre` varchar(200) NOT NULL,
  `codigo_malla` varchar(3) NOT NULL,
  `numero` int(11) NOT NULL,
  `usuario_alumno_rut` varchar(45) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `fk_avance_usuario_alumno1_idx` (`usuario_alumno_rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`idDescargas`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`idDescargas`, `titulo`, `url`, `abstract`, `anio`, `estado`, `idCodigo`, `autor`) VALUES
(29, '59406824-RESUMEN-COMPLETO-MANKIW', '../static/documentos/2014/59406824-RESUMEN-COMPLETO-MANKIW.pdf', 'comentario 1', 2014, 1, 'inc100', 'autor 1'),
(30, '114427', '../static/documentos/2014/114427.pdf', 'comentario 2', 2014, 1, 'inc100', 'autor 2'),
(33, 'hola', '../static/documentos/2013/hola.pdf', 'comentario oj', 2013, 1, 'inc100', 'autor 4'),
(34, 'hola', '../static/documentos/2013/hola.pdf', 'comentario oj', 2012, 1, 'inc100', 'autor 5'),
(35, 'Aliens Colonial Marines pulento', '../static/documentos/2014/Aliens Colonial Marines.txt', 'comentario comentario comentario', 2014, 0, 'inc100', 'ola ke ase'),
(37, 'entrega 3 - final', '../static/documentos/2014/entrega 3 - final.doc', 'pulento', 2014, 1, 'inc100', 'Es terrible pulento'),
(38, 'Contactos Ayudantes', '../static/documentos/2014/Contactos Ayudantes.pdf', 'Sin Comentarios', 2014, 0, 'inc100', 'Sin Autor'),
(39, 'CV - Jorge Garin Roman', '../static/documentos/2014/CV - Jorge Garin Roman.pdf', 'autor 1', 2014, 0, 'inc100', 'comentario 1'),
(40, 'logoUV', '../static/documentos/2014/logoUV.png', 'Sin Comentarios', 2014, 1, 'inc100', 'Sin Autor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas_has_usuario_alumno`
--

CREATE TABLE IF NOT EXISTS `descargas_has_usuario_alumno` (
  `descargas_idDescargas` int(11) NOT NULL,
  `usuario_alumno_rut` varchar(45) NOT NULL,
  PRIMARY KEY (`descargas_idDescargas`,`usuario_alumno_rut`),
  KEY `fk_descargas_has_usuario_alumno_usuario_alumno1_idx` (`usuario_alumno_rut`),
  KEY `fk_descargas_has_usuario_alumno_descargas1_idx` (`descargas_idDescargas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('BD', 'MENCION DE BASE DE DATOS', 'LKSDJFSD', 'INC'),
('RED', 'MENCION DE REDES', 'kljdshfodshsd', 'INC'),
('SOF', 'MENCION DE SOFTWARE', 'LSKJGFDSLFS', 'INC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE IF NOT EXISTS `objetivos` (
  `idObjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `idCodigo` varchar(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descrip` text NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`idObjetivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
-- Estructura de tabla para la tabla `usuario_administrador`
--

CREATE TABLE IF NOT EXISTS `usuario_administrador` (
  `rut` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `asignatura` varchar(6) DEFAULT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_administrador`
--

INSERT INTO `usuario_administrador` (`rut`, `nombre`, `apellido`, `mail`, `password`, `tipo`, `asignatura`, `nickname`) VALUES
(16484897, 'Jorge', 'Garin', 'garan2sisisi@gmail.com', 'garinroman', 'admin', NULL, 'jgarinr1'),
(16484898, 'Jorge', 'Garin', 'jorge.garinr@alumnos.uv.cl', 'garinroman', 'ramo', '100', 'jgarinr2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_alumno`
--

CREATE TABLE IF NOT EXISTS `usuario_alumno` (
  `rut` varchar(45) NOT NULL,
  `nombre` int(11) NOT NULL,
  `nombre_malla` varchar(45) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_asignatura_malla1` FOREIGN KEY (`malla_idMalla`) REFERENCES `malla` (`idMalla`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_semestre1` FOREIGN KEY (`semestre_semestre`) REFERENCES `semestre` (`semestre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_asig_mencion_mencion1` FOREIGN KEY (`mencion_idMencion`) REFERENCES `mencion` (`idMencion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `avance`
--
ALTER TABLE `avance`
  ADD CONSTRAINT `fk_avance_usuario_alumno1` FOREIGN KEY (`usuario_alumno_rut`) REFERENCES `usuario_alumno` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `descargas_has_usuario_alumno`
--
ALTER TABLE `descargas_has_usuario_alumno`
  ADD CONSTRAINT `fk_descargas_has_usuario_alumno_descargas1` FOREIGN KEY (`descargas_idDescargas`) REFERENCES `descargas` (`idDescargas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_descargas_has_usuario_alumno_usuario_alumno1` FOREIGN KEY (`usuario_alumno_rut`) REFERENCES `usuario_alumno` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
