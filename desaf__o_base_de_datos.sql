-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2023 a las 07:52:03
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
-- Base de datos: `desafío base de datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `DNI` int(8) NOT NULL,
  `num_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(50) NOT NULL,
  `Presupuesto` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`DNI`, `num_departamento`, `nombre_departamento`, `Presupuesto`) VALUES
(31096675, 77, 'Investigacion', 36000),
(31096678, 14, 'Informatica', 72000),
(31236985, 14, 'Informatica', 72000),
(32145698, 77, 'Investigacion', 36000),
(32369854, 37, 'Desarrollo', 58500),
(32698547, 15, 'Gestion', 85500),
(32698548, 16, 'Comunicacion', 67500),
(33698521, 14, 'Informatica', 72000),
(34269854, 77, 'Investigacion', 36000),
(36125896, 14, 'Informatica', 72000),
(36125965, 14, 'Informatica', 72000),
(36985471, 15, 'Gestion', 85500),
(41369852, 77, 'Investigacion', 36000),
(42369854, 37, 'Desarrollo', 58500),
(89267109, 11, 'Calidad', 36000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `DNI` int(8) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`DNI`, `Nombre`, `Apellido`) VALUES
(31096675, 'Martin', 'Zarabia'),
(31096678, 'Juan', 'Lopez'),
(31236985, 'Maria', 'Diamante'),
(32145698, 'Guadalupe', 'Perez'),
(32369854, 'Bernardo', 'Pantera'),
(32698547, 'Mariana', 'Lopez'),
(32698548, 'Carmen', 'Barbieri'),
(33698521, 'Pedro', 'Perez'),
(34269854, 'Jose', 'Velez'),
(36125896, 'Marti', 'Julia'),
(36125965, 'Lucía', 'Pesaro'),
(36985471, 'Omar', 'Diaz'),
(41369852, 'Paula', 'Madariaga'),
(42369854, 'Abril', 'Sanchez'),
(89267109, 'Esther', 'Vazquez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`DNI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `DNI` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89267110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `DNI` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
