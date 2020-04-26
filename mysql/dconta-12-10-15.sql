-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-10-2015 a las 01:25:55
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

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
(9, 'co voy', 1, '2222', '333', '444', '555', 1, 0),
(10, 'Colanta', 0, '', '', '', '', 1, 0),
(11, 'Sarros y carros', 0, '', '', '', '', 0, 0),
(12, 'zelltower', 0, '', '', '', '', 0, 0),
(13, 'Uçber', 0, '', '', '', '', 0, 1),
(14, 'qo way', 0, '', '', '', '', 0, 0),
(15, 'zbout', 0, '', '', '', '', 0, 0),
(16, 'No way', 0, '', '', '', '', 0, 0),
(17, 'HAbout', 0, '', '', '', '', 0, 0),
(18, 'No way', 0, '', '', '', '', 0, 0),
(19, 'hAbout', 0, '', '', '', '', 0, 0),
(20, 'No way', 0, '', '', '', '', 0, 0),
(21, 'hAbout', 0, '', '', '', '', 1, 0),
(22, 'No way', 0, '', '', '', '', 0, 0),
(23, '1', 0, '', '', '', '', 0, 0),
(24, 'Nzo way', 0, '', '', '', '', 0, 0),
(25, 'hbout', 0, '', '', '', '', 0, 0),
(26, 'Nzzo way', 0, '3534534', '', '', '', 1, 0),
(27, 'hAbout', 0, '', '', '', '', 0, 0),
(28, 'NAAaaao way', 0, '', '', '', '', 0, 0),
(29, 'Aeeeezzzz', 0, '', '', '', '', 1, 0),
(30, 'No way', 0, '', '', '', '', 0, 0),
(32, 'Nueo way', 0, '', '', '', '', 0, 0),
(34, 'No wayxxxx', 0, '', '', '', '', 0, 0),
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
(64, 'Nzzo way', 0, '2345', '', 'andres@a.com', '5555', 1, 1),
(66, 'No way', 0, '', '', '', '', 0, 0),
(68, 'No way', 0, '', '', '', '', 1, 1),
(70, 'Neexxxco way', 0, '', '', '', '', 0, 0),
(72, 'Nó way', 0, '', '', '', '', 1, 1),
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
(100, 'No way', 0, '', '', '', '', 0, 0),
(101, 'aaaaa', 0, '', '', '', '', 0, 0),
(102, 'aeeeeaaaa', 0, '', '', '', '', 1, 0),
(103, 'aeeeeaaaaiii', 0, '', '', '', '', 1, 0),
(104, 'aeeeeaaaaiiixxx', 0, '', '', '', '', 1, 0),
(105, 'aaauuuu', 0, '', '', '', '', 0, 0),
(106, 'Aritmi', 0, '', '', '', '', 0, 0),
(107, 'Abaila', 0, '', '', '', '', 1, 0),
(108, 'Zunga', 0, '', '', '', '', 1, 0),
(109, 'Basco', 0, '', '', '', '', 1, 0),
(110, 'Baxco', 0, '222222222444', 'rsfs', '55@qaaa.com', '3333', 1, 0),
(111, 'Baxco', 0, '222222222444', '', '', '', 1, 0),
(112, 'No eres mi media costilla', 0, '3333333333', '666666666', '55@qaaa.com', '444444444', 1, 0),
(113, 'zzzzz', 0, '555', '8888', '777', '666', 1, 1),
(114, 'Alberto', 0, '555', '8888', '777', '666', 1, 1),
(115, 'zzzzzzzz', 0, '555', '8888', '777', '66677777', 1, 1),
(116, 'Bino', 0, '555', '8888', '777', '666', 1, 0),
(117, 'Aino', 0, '555', '8888', '777', '666', 1, 0),
(118, 'Ajaxer', 0, '', '', '', '', 0, 0),
(119, 'alaxer', 0, '', '', '', '', 0, 0),
(120, 'alaxer', 0, '', '', '', '', 0, 0),
(121, 'Alaxer', 0, '', '', '', '', 0, 0),
(122, 'Alaxer', 0, '', '', '', '', 0, 0),
(123, 'Alaxer', 0, '', '', '', '', 0, 0),
(124, 'Alaxer', 0, '', '', '', '', 0, 0),
(125, 'Alaxer', 0, '', '', '', '', 0, 0),
(126, 'Alexo', 0, '', '', '', '', 0, 0),
(127, 'Alexo2', 0, '', '', '', '', 0, 0),
(128, 'Alexo2', 0, '', '', '', '', 0, 0),
(129, 'Ano', 0, '555', '8888', '777', '666', 0, 0),
(130, 'Beno', 0, '', '', '', '', 0, 0),
(131, 'Ceno', 0, '', '', '', '', 0, 0),
(132, 'Cenoxx', 0, '', '', '', '', 0, 0),
(133, 'Beno', 0, '', '', '', '', 0, 0),
(134, 'Ceno', 0, '', '', '', '', 0, 0),
(135, 'Cenoxxdd', 0, '', '', '', '', 0, 0),
(136, 'Cenoxxdd22222222', 0, '', '', '', '', 0, 0),
(137, 'Axio', 0, '', '', '', '', 0, 0),
(138, 'Aloip', 0, '', '', '', '', 0, 0),
(139, 'Alop', 0, '', '', '', '', 0, 0),
(140, 'Bio', 0, '', '', '', '', 0, 0),
(141, 'Baio', 0, '', '', '', '', 0, 0),
(142, 'Axaui', 0, '', '', '', '', 0, 0),
(143, 'Biox', 0, '', '', '', '', 0, 0),
(144, 'Zino', 0, '', '', '', '', 0, 1),
(145, 'zarlos pardo', 0, '244567', 'afdas asss addd', 'aaa@aa.comee', '33445', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE IF NOT EXISTS `configuracion` (
  `id` int(11) NOT NULL,
  `campo` varchar(20) NOT NULL,
  `valor` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `campo`, `valor`) VALUES
(1, 'inventario_campo', 'nombre'),
(2, 'inventario_id_tipo', 'normal'),
(3, 'inventario_ascdesc', '0'),
(4, 'inventario_categoria', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` int(11) NOT NULL DEFAULT '1',
  `referencia` varchar(20) NOT NULL,
  `descripcion` varchar(4000) NOT NULL,
  `precio_venta` int(15) NOT NULL,
  `iva` varchar(7) NOT NULL,
  `precio_real` int(15) NOT NULL,
  `cantidad` int(15) NOT NULL,
  `unidad_medida` int(11) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT '1' COMMENT 'Activo para visible, 0 para eliminado',
  `imagen` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `nombre`, `categoria`, `referencia`, `descripcion`, `precio_venta`, `iva`, `precio_real`, `cantidad`, `unidad_medida`, `activo`, `imagen`) VALUES
(1, 'Chontacones', 2, 'cho1', 'Patacones de chontaduro', 4000, '2', 2000, 356, 1, 1, 0),
(2, 'Papas margarita', 1, 'pamar', 'Papas margarita con sabor a tomate', 120000, '3', 1000, 124580, 1, 1, 0),
(3, 'Sopa Maggui1', 2, 'soma1', 'Sopas magui para toda la familia, en polvo con pollo y champiñones1', 5400, '2', 2200, 200000, 1, 1, 0),
(4, 'Buñuelos deshidratados La redondazzz', 1, 'budesla', 'Buñuelos deshidratados de importación para el uso en casa', 38000, '2', 30000, 57823, 2, 1, 0),
(5, 'Fideos "La Muñeca"', 1, 'fimu', 'Fideos listos para preparar, con los mayores estándares de calidad en el mundo y de distribución en Colombia', 180000000, '2', 38848, 1100, 1, 1, 0),
(6, 'M&M''s de importación', 1, 'IM35', 'Dulces importados M&M, por MARS', 1500, '1', 1200, 300, 1, 1, 0),
(7, 'Mayonesa la sabrosa', 1, 'RE222', 'Mayonesa la sabrosa por 2 libras', 20000, '1', 15000, 535776, 1, 1, 0),
(8, 'Suntea x 250 miligramos', 4, 'RE5233', 'Suntea de mango', 200, '1', 150, 56343740, 1, 1, 0),
(9, 'Suntea x 500 miligramos', 2, 'RE336', 'Suntea de lulo x 500', 4500, '2', 400, 20, 2, 1, 0),
(10, 'Cafe la Palma', 1, 'RE2421', 'Café la palma, con el aroma que enamora el alma', 23546, '1', 20000, 235645, 2, 1, 0),
(11, 'Bananos', 1, 'RE3534', 'Son Bananos 4 x 1', 1000, '1', 2000, 14323, 2, 1, 0),
(12, 'Manzana Chilena', 1, 'RE396', 'Manzana chilena importada por Almaza', 400, '2', 300, 4983248, 2, 1, 0),
(13, 'Chocolates dietéticos', 1, 'RE9687', 'Chocolates bajos en azúcar', 4000, '1', 3900, 254906, 2, 1, 0),
(14, 'Moras enlatadas', 1, 'RE36583', 'Moras enlatadas dulces', 5200, '2', 5000, 700, 1, 1, 0),
(15, 'Agua negra<', 1, '12RE87945', '1Agua negra saludable5', 13490031, '3', 1400044, 1474889668, 3, 1, 0),
(16, 'Chocolatina JET x 250 miligramos', 1, 'RE29490', 'Chocolatina Jet 250 en barra', 200, '1', 190, 68889, 3, 1, 0),
(17, 'Pastel Ramo Naranja', 1, 'RE3234', 'Pastel Ramo de naranja', 3000, '1', 2900, 364567677, 4, 1, 0),
(18, 'Gaseosa La Reina', 1, 'RE88865', 'Gaseosa La Reina de Manzana', 800, '2', 750, 48784333, 2, 1, 0),
(19, 'Mentas x 100 unidades', 1, 'RE98548', 'Mentas en paquetes de 100 unidades', 5000, '2', 4800, 500, 3, 1, 0),
(20, 'Huevos pulverizados', 1, 'RE08929', 'Huevos pulverizados', 2000, '1', 1800, 2455, 1, 1, 0),
(21, 'Zapallo por unidad', 2, 'RE5667', 'Zapallos por unidad', 1400, '3', 1000, 59000, 2, 1, 0),
(139, 'Agua negra', 1, 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(140, 'Agua negra', 1, 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(141, 'Agua negra', 3, 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(142, 'Agua negra', 1, 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(143, 'Agua negra', 1, 'RE87945', 'Agua negra saludable', 4900, '2', 4000, 474889, 2, 1, 0),
(144, 'Agua negra1', 1, 'RE879452', 'Agua negra saludable5', 49003, '2', 40004, 4748896, 4, 1, 0),
(145, 'Hola', 1, 'prueba', 'dad', 2222222, '1', 888888, 33, 1, 1, 0),
(146, 'rrrrrrrrrr', 2, 'eee', 'fgg', 333, '1', 444, 44, 1, 1, 0),
(147, 'llueve sobre mojado', 1, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(148, '1aaajax', 1, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(149, 'aaajax', 3, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(150, 'aaajaxxxxxxxx', 2, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(151, 'aaaz de oros', 1, '333', 'fgvsd', 444, '1', 555, 333333, 3, 1, 0),
(152, 'aaaz de oros', 1, '333', 'fgvsd', 444, '1', 555, 333333, 1, 1, 0),
(153, 'aaaz de oros2222', 1, '333', 'fgvsd', 444, '1', 555, 333333, 1, 1, 0),
(154, 'pzaaas de oros2222', 3, '333', 'fgvsd', 444, '1', 555, 333333, 1, 1, 0),
(155, 'Lazzaaas de oros2222', 1, '333', 'fgvsd', 444, '1', 555, 333333, 1, 1, 0),
(156, 'caaaz de oros2222', 1, '333', 'fgvsd', 444, '1', 555, 333333, 1, 1, 0),
(157, 'aaaaaaaa', 1, '33333333', '', 444444, '1', 555555, 777777777, 1, 1, 0),
(158, 'aaajaxxxxxxxx', 5, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(159, 'aaaaaaaa', 2, '33333333', '', 444444, '1', 555555, 777777777, 1, 1, 0),
(160, '12aaajax', 1, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(161, '122aaajax', 1, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(162, '1222aaajax', 2, 'ssssssssssssssss', '5555555555555555555', 2147483647, '3', 2147483647, 2147483647, 3, 1, 0),
(163, '122x2aaajax', 1, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(164, '122xx2aaajax', 4, 'ssssssssssssssss', '5555555555555555555', 2147483647, '3', 2147483647, 2147483647, 1, 1, 0),
(165, '122xx2aaaja2x', 2, 'ssssssssssssssss', '5555555555555555555', 2147483647, '1', 2147483647, 2147483647, 1, 1, 0),
(166, 'aaaaaaaaaaaaaaaaaaajax', 5, '123', '888', 456, '3', 678, 8888, 1, 1, 0),
(167, '1111111111ajaaaaxe', 4, '2222', '55555', 45633333, '1', 678444444, 88886666, 1, 1, 0),
(168, '11111111111111111111111aaaa', 4, '3333', 'fsdsd', 2147483647, '1', 2147483647, 88886666, 4, 1, 0),
(169, '1111111111111111111111111111111111111111222222333eddddd', 2, '333', 'fsds', 4556434, '3', 534444, 44444, 5, 1, 0),
(170, '2222222222222222222222222222222222222222222222ghsdd', 4, 'dfss', 'gdfd', 4444, '1', 55645, 433343, 3, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_categorias`
--

CREATE TABLE IF NOT EXISTS `inventario_categorias` (
  `id` int(11) NOT NULL,
  `valor` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario_categorias`
--

INSERT INTO `inventario_categorias` (`id`, `valor`) VALUES
(1, 'Sin categoria'),
(2, 'Alimentos'),
(3, 'Licores'),
(4, 'Abarrotes'),
(5, 'Gaseosas');

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
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_categorias`
--
ALTER TABLE `inventario_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT de la tabla `inventario_categorias`
--
ALTER TABLE `inventario_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
