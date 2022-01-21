-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2022 a las 14:22:49
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desayunos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `nombre` varchar(80) NOT NULL,
  `precio` int(16) NOT NULL,
  `id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`nombre`, `precio`, `id`) VALUES
('Tostadas', 2, 1),
('Tostadas', 2, 2),
('Pitufos', 1, 3),
('Tostadas con mantequilla', 2, 4),
('Tostadas con mantequilla', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidios`
--

CREATE TABLE `pedidios` (
  `id` int(9) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `carta_id` int(11) NOT NULL,
  `curso` varchar(80) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidios`
--

INSERT INTO `pedidios` (`id`, `cliente`, `carta_id`, `curso`, `fecha`, `estado`) VALUES
(1, 'alex', 1, '2DAM', '2021-11-10', 'ENTREGADO'),
(2, 'Francisco', 2, '2DAM', '2021-11-10', 'PENDIENTE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidios`
--
ALTER TABLE `pedidios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carta_id` (`carta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedidios`
--
ALTER TABLE `pedidios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidios`
--
ALTER TABLE `pedidios`
  ADD CONSTRAINT `pedidios_ibfk_1` FOREIGN KEY (`carta_id`) REFERENCES `carta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
