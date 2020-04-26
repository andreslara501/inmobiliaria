-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2015 a las 10:10:26
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dconta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nitrut` int(11) NOT NULL COMMENT '1 nit, 2 rut',
  `numero_nitrut` varchar(20) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `imagen` int(1) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `nitrut`, `numero_nitrut`, `direccion`, `correo`, `celular`, `imagen`, `activo`) VALUES
(2, 'nendrés Lara', 1, '4233452', 'Calle 59 #10 - 33 zzzxxx', 'aa@aa.com', '3148567791', 1, 0),
(3, 'nuamira', 0, '4534532', 'Carrera 120a', 'aaa@aa.comeeeeeeeeeeezzzzzzzzz', '333', 1, 0),
(4, 'zfrmando Casas', 1, '245367465', 'Carrera 389 #333-44', 'aaa@aa-com', '12345555', 0, 0),
(5, 'sudrigo Castro', 1, '4326767787', 'Carrera 59 #5-6', '11@11.com', '3113556030', 0, 0),
(6, 'zz&E Corporation', 1, '35247645433', 'Calle 30 con Carrera 50', 'zzz@aa.com', '999888777', 0, 0),
(7, 'qulitza', 0, '12948122', '', 'ee.aaa@a.com', '33333333333', 0, 0),
(8, 'qndrés Y cia', 0, '222222', '333', '444', '555', 0, 0),
(9, 'co voy', 1, '2222', '333', '444', '555', 0, 0),
(10, 'Colanta', 0, '', '', '', '', 1, 0),
(11, 'Sarros y carros', 0, '', '', '', '', 0, 0),
(12, 'zelltower', 0, '', '', '', '', 0, 0),
(13, 'uhinkin', 0, '', '', '', '', 0, 0),
(14, 'qo way', 0, '', '', '', '', 0, 0),
(15, 'zbout', 0, '', '', '', '', 0, 0),
(16, 'No way', 0, '', '', '', '', 0, 0),
(17, 'HAbout', 0, '', '', '', '', 0, 0),
(18, 'No way', 0, '', '', '', '', 0, 0),
(19, 'hAbout', 0, '', '', '', '', 0, 0),
(20, 'No way', 0, '', '', '', '', 0, 0),
(21, 'hAbout', 0, '', '', '', '', 1, 0),
(22, 'No way', 0, '', '', '', '', 0, 0),
(23, 'hAbout', 0, '', '', '', '', 0, 0),
(24, 'Nzo way', 0, '', '', '', '', 0, 0),
(25, 'hbout', 0, '', '', '', '', 0, 0),
(26, 'Nzzo way', 0, '3534534', '', '', '', 1, 0),
(27, 'hAbout', 0, '', '', '', '', 0, 0),
(28, 'NAAaaao way', 0, '', '', '', '', 0, 0),
(29, 'Aaaaaabouteeeeeeee', 0, '', '', '', '', 1, 0),
(30, 'No way', 0, '', '', '', '', 0, 0),
(32, 'Nueo way', 0, '', '', '', '', 0, 0),
(34, 'No way', 0, '', '', '', '', 0, 0),
(36, 'No way', 0, '', '', '', '', 0, 0),
(38, 'No way', 0, '', '', '', '', 0, 0),
(40, 'No way', 0, '', '', '', '', 0, 0),
(42, 'No way', 0, '', '', '', '', 0, 0),
(44, 'No way', 0, '', '', '', '', 0, 0),
(46, 'No way', 0, '', '', '', '', 0, 0),
(48, 'Nooooo way xxxxvvvvvvvvvvvvvvvv', 0, '', '', '', '', 1, 0),
(50, 'No way', 0, '', '', '', '', 0, 0),
(52, 'No way', 0, '', '', '', '', 0, 0),
(54, 'No way', 0, '', '', '', '', 0, 0),
(56, 'No way', 0, '', '', '', '', 0, 0),
(58, 'No way', 0, '', '', '', '', 0, 0),
(60, 'Nzo way', 0, '', '', '', '', 1, 0),
(62, 'No way', 0, '', '', '', '', 0, 0),
(64, 'Nzzo way', 0, '', '', '', '5555', 1, 0),
(66, 'No way', 0, '', '', '', '', 0, 0),
(68, 'No way', 0, '', '', '', '', 1, 0),
(70, 'Neexxxco way', 0, '', '', '', '', 0, 0),
(72, 'No way', 0, '', '', '', '', 1, 0),
(74, 'No way', 0, '', '', '', '', 0, 0),
(76, 'No way', 0, '', '', '', '', 0, 0),
(78, 'No way', 0, '', '', '', '', 0, 0),
(80, 'Nxxxo way', 0, '', '', '', '', 0, 0),
(82, 'Nzzzzo way', 0, '', '', '', '', 0, 0),
(84, 'No way', 0, '', '', '', '', 0, 0),
(86, 'No way', 0, '', '', '', '', 0, 0),
(88, 'No way', 0, '', '', '', '', 0, 0),
(90, 'Nzzzxxxo way', 0, '', '', '', '', 0, 0),
(92, 'Nzo way', 0, '', '', '', '', 1, 0),
(94, 'No way', 0, '', '', '', '', 0, 0),
(96, 'No way', 0, '', '', '', '', 0, 0),
(98, 'No way', 0, '', '', '', '', 0, 0),
(100, 'No way', 0, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `referencia` varchar(20) NOT NULL,
  `descripcion` varchar(4000) NOT NULL,
  `precio_venta` int(15) NOT NULL,
  `iva` varchar(7) NOT NULL,
  `precio_real` int(15) NOT NULL,
  `cantidad` int(15) NOT NULL,
  `unidad_medida` int(11) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT '1' COMMENT 'Activo para visible, 0 para eliminado',
  `foto` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `nombre`, `referencia`, `descripcion`, `precio_venta`, `iva`, `precio_real`, `cantidad`, `unidad_medida`, `activo`, `foto`) VALUES
(1, 'Chontacones', 'cho1', 'Patacones de chontaduro', 400, '1', 200, 356, 1, 1, 0),
(2, 'Papas margarita', 'pamar', 'Papas margarita con sabor a tomate', 1200, '1', 1000, 12458, 2, 1, 0),
(3, 'Sopa Maggui', 'soma', 'Sopas magui para toda la familia, en polvo con pollo y champiñones', 1400, '2', 1200, 200000, 1, 1, 0),
(4, 'Buñuelos deshidratados La redonda', 'budesla', 'Buñuelos deshidratados de importación para el uso en casa', 38000, '2', 30000, 57823, 2, 1, 0),
(5, 'Fideos "La Muñeca"', 'fimu', 'Fideos listos para preparar, con los mayores estándares de calidad en el mundo y de distribución en Colombia', 180000000, '2', 38848, 1100, 1, 1, 0),
(6, 'M&M''s de importación', 'IM35', 'Dulces importados M&M, por MARS', 1500, '1', 1200, 300, 1, 1, 0),
(7, 'Mayonesa la sabrosa', 'RE222', 'Mayonesa la sabrosa por 2 libras', 20000, '1', 15000, 535776, 1, 1, 0),
(8, 'Suntea x 250 miligramos', 'RE5233', 'Suntea de mango', 200, '1', 150, 56343740, 1, 1, 0),
(9, 'Suntea x 500 miligramos', 'RE336', 'Suntea de lulo x 500', 4500, '2', 400, 20, 2, 1, 0),
(10, 'Cafe la Palma', 'RE2421', 'Café la palma, con el aroma que enamora el alma', 23546, '1', 20000, 235645, 2, 1, 0),
(11, 'Bananos', 'RE3534', 'Son Bananos 4 x 1', 1000, '1', 2000, 14323, 2, 1, 0),
(12, 'Manzana Chilena', 'RE396', 'Manzana chilena importada por Almaza', 400, '2', 300, 4983248, 2, 1, 0),
(13, 'Chocolates dietéticos', 'RE9687', 'Chocolates bajos en azúcar', 4000, '1', 3900, 254906, 2, 1, 0),
(14, 'Moras enlatadas', 'RE36583', 'Moras enlatadas dulces', 5200, '2', 5000, 700, 1, 1, 0),
(15, '1Agua negra', '2RE87945', 'Agua negra saludable5', 349003, '3', 400044, 47488966, 4, 1, 0),
(16, 'Chocolatina JET x 250 miligramos', 'RE29490', 'Chocolatina Jet 250 en barra', 200, '1', 190, 68889, 3, 1, 0),
(17, 'Pastel Ramo Naranja', 'RE3234', 'Pastel Ramo de naranja', 3000, '1', 2900, 364567677, 4, 1, 0),
(18, 'Gaseosa La Reina', 'RE88865', 'Gaseosa La Reina de Manzana', 800, '2', 750, 48784333, 2, 1, 0),
(19, 'Mentas x 100 unidades', 'RE98548', 'Mentas en paquetes de 100 unidades', 5000, '2', 4800, 500, 3, 1, 0),
(20, 'Huevos pulverizados', 'RE08929', 'Huevos pulverizados', 2000, '1', 1800, 2455, 1, 1, 0),
(21, 'Zapallo por unidad', 'RE5667', 'Zapallos por unidad', 1400, '1', 1000, 59000, 2, 1, 0),
(139, 'Agua negra', 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(140, 'Agua negra', 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(141, 'Agua negra', 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(142, 'Agua negra', 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(143, 'Agua negra', 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(144, 'Agua negra1', 'RE879452', 'Agua negra saludable5', 49003, '2', 40004, 4748896, 4, 1, 0),
(145, 'Hola', 'prueba', 'dad', 2222222, '1', 888888, 33, 1, 1, 0),
(146, 'aaa', 'eee', 'fgg', 333, '1', 444, 44, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE IF NOT EXISTS `iva` (
  `id` int(11) NOT NULL,
  `valor` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `iva`
--

INSERT INTO `iva` (`id`, `valor`) VALUES
(1, '0'),
(2, '5'),
(3, '16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `descripcion`) VALUES
(1, 'Metros'),
(2, 'Galones'),
(3, 'Tarros'),
(4, 'Paquetes'),
(5, 'Bolsas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
