-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-11-2015 a las 23:44:53
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE IF NOT EXISTS `inmuebles` (
`id` int(11) NOT NULL,
  `venta_alquiler` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `tipo_propiedad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `habitaciones` int(11) NOT NULL,
  `banos` int(11) NOT NULL,
  `fotografia` int(11) NOT NULL,
  `gas` int(11) NOT NULL,
  `residencial` int(11) NOT NULL,
  `cocina_integral` int(11) NOT NULL,
  `piscina` int(11) NOT NULL,
  `parqueadero` int(11) NOT NULL,
  `transporte_cerca` int(11) NOT NULL,
  `supermercados_cerca` int(11) NOT NULL,
  `colegios_cerca` int(11) NOT NULL,
  `zona_comercial_cerca` int(11) NOT NULL,
  `zona_rosa_cerca` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `venta_alquiler`, `departamento`, `municipio`, `sector`, `tipo_propiedad`, `precio`, `area`, `habitaciones`, `banos`, `fotografia`, `gas`, `residencial`, `cocina_integral`, `piscina`, `parqueadero`, `transporte_cerca`, `supermercados_cerca`, `colegios_cerca`, `zona_comercial_cerca`, `zona_rosa_cerca`, `fecha`, `activo`) VALUES
(1, 0, 10, 418, 1, 1, 6345555, 65, 2, 3, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, '2015-11-23 22:15:11', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
