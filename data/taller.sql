-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2014 a las 18:55:04
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

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
  `nombre` varchar(200) NOT NULL,
  `codigo_malla` varchar(3) NOT NULL,
  `numero` int(11) NOT NULL,
  `descrip` text NOT NULL,
  `semestre_semestre` int(2) NOT NULL,
  `malla_idMalla` varchar(3) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `fk_asignatura_semestre1_idx` (`semestre_semestre`),
  KEY `fk_asignatura_malla1_idx` (`malla_idMalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE IF NOT EXISTS `asignaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descrip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_has_objetivos`
--

CREATE TABLE IF NOT EXISTS `asignatura_has_objetivos` (
  `asignatura_nombre` varchar(200) NOT NULL,
  `objetivos_idObjetivo` int(11) NOT NULL,
  PRIMARY KEY (`asignatura_nombre`,`objetivos_idObjetivo`),
  KEY `fk_asignatura_has_objetivos_objetivos1_idx` (`objetivos_idObjetivo`),
  KEY `fk_asignatura_has_objetivos_asignatura1_idx` (`asignatura_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_has_requisito`
--

CREATE TABLE IF NOT EXISTS `asignatura_has_requisito` (
  `asignatura_nombre` varchar(200) NOT NULL,
  `Requisito_Nombre_req` varchar(200) NOT NULL,
  PRIMARY KEY (`asignatura_nombre`,`Requisito_Nombre_req`),
  KEY `fk_asignatura_has_Requisito_Requisito1_idx` (`Requisito_Nombre_req`),
  KEY `fk_asignatura_has_Requisito_asignatura1_idx` (`asignatura_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_codigo`
--

CREATE TABLE IF NOT EXISTS `asig_codigo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_asig` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_malla`
--

CREATE TABLE IF NOT EXISTS `asig_malla` (
  `id_malla` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `asignaturas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(0, 0, 'Marco Aravena', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Administracion de Sistemas', 'INC502'),
(2, 0, 'Carlos Becerra', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Bibliotecas Digitales', 'INC501'),
(2, 1, 'Rene Noel', 'Asignatura Electiva de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Calidad de Software', 'INC502'),
(1, 2, 'Pablo Perez', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Estructura de Datos Avanzada', 'INC512'),
(1, 0, 'Eliana Providel', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Mineria de Datos', 'INC511'),
(0, 0, 'Marta Barria', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'QoS', 'INC512'),
(0, 0, 'Cristian Carrion', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Sistemas de Seguridad', 'INC600'),
(1, 0, 'Eliana Providel', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Taller de Base de Datos', 'INC501'),
(2, 1, 'Rene Noel', 'Asignatura Electiva de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'SOF', 'Taller de Emprendimiento', 'INC512'),
(0, 1, 'Gabriel Astudillo', 'Seminario de Especialidad I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'Taller de Redes', 'INC501'),
(0, 1, 'Marco Aravena', 'Seminario de Especialidad II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'RED', 'TCP/IP', 'INC511'),
(1, 1, 'Carla Tamarasco', 'Asignatura Electiva de Especialidad III', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/tallerapp/images/asignaturas/c_becerra.png', 'BD', 'Teoria de Redes Complejas', 'INC600');

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
  `abstract` text NOT NULL,
  `anio` date NOT NULL,
  `estado` int(11) NOT NULL,
  `usuario_administrador_rut` varchar(45) NOT NULL,
  `usuario_administrador_rut1` int(11) NOT NULL,
  PRIMARY KEY (`idDescargas`),
  KEY `fk_descargas_usuario_administrador1_idx` (`usuario_administrador_rut1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
-- Estructura de tabla para la tabla `prerequisitos`
--

CREATE TABLE IF NOT EXISTS `prerequisitos` (
  `idCodigo` int(11) NOT NULL,
  `idPrereq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisito`
--

CREATE TABLE IF NOT EXISTS `requisito` (
  `Nombre_req` varchar(200) NOT NULL,
  `cod_malla` varchar(3) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`Nombre_req`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE IF NOT EXISTS `semestre` (
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre_asig`
--

CREATE TABLE IF NOT EXISTS `semestre_asig` (
  `idMatch` int(11) NOT NULL AUTO_INCREMENT,
  `idMalla` int(3) NOT NULL,
  `idCodigo` varchar(6) NOT NULL,
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`idMatch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(12) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `asig_cursadas_json` text NOT NULL,
  `malla` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_administrador`
--

CREATE TABLE IF NOT EXISTS `usuario_administrador` (
  `rut` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD CONSTRAINT `fk_asignatura_has_objetivos_asignatura1` FOREIGN KEY (`asignatura_nombre`) REFERENCES `asignatura` (`nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_has_objetivos_objetivos1` FOREIGN KEY (`objetivos_idObjetivo`) REFERENCES `objetivos` (`idObjetivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignatura_has_requisito`
--
ALTER TABLE `asignatura_has_requisito`
  ADD CONSTRAINT `fk_asignatura_has_Requisito_asignatura1` FOREIGN KEY (`asignatura_nombre`) REFERENCES `asignatura` (`nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asignatura_has_Requisito_Requisito1` FOREIGN KEY (`Requisito_Nombre_req`) REFERENCES `requisito` (`Nombre_req`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Filtros para la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD CONSTRAINT `fk_descargas_usuario_administrador1` FOREIGN KEY (`usuario_administrador_rut1`) REFERENCES `usuario_administrador` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
