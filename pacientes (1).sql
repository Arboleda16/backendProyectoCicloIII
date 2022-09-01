-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2022 a las 05:46:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `CEDULA` bigint(10) NOT NULL,
  `NOMBRE COMPLETO` varchar(50) NOT NULL,
  `EDAD` int(10) NOT NULL,
  `NOMBRE DE FAMILIAR` varchar(50) NOT NULL,
  `OXIMETRIA` varchar(10) NOT NULL,
  `FREC. RESPIRATORIA` varchar(10) NOT NULL,
  `FRC. CARDIACA` varchar(10) NOT NULL,
  `TEMPERATURA` varchar(10) NOT NULL,
  `PRES. ARTERIAL` varchar(10) NOT NULL,
  `GLICEMIA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`CEDULA`, `NOMBRE COMPLETO`, `EDAD`, `NOMBRE DE FAMILIAR`, `OXIMETRIA`, `FREC. RESPIRATORIA`, `FRC. CARDIACA`, `TEMPERATURA`, `PRES. ARTERIAL`, `GLICEMIA`) VALUES
(1234568, 'PEPITO PEREZ', 44, 'SULTANITO PEREZ', '90%', '8/MIN', '60/100', '35°C', '120/80', '100 mg/dL'),
(11805951, 'ARMANDO BRONCAS', 44, 'ORLANDO BRONCAS', '80%', '10/MIN', '65/100', '36°C', '120/80', '80 mg/dL'),
(45879632, 'FULANITO DETAL', 30, 'MENGANITO DETAL', '85%', '9/MIN', '55/100', '36°C', '110/80', '85 mg/dL'),
(58745213, 'SALTANDO MATONES', 30, 'BRINCANDO MATONES', '95%', '8/MIN', '65/100', '38°C', '115/80', '85 mg/dL'),
(178565423, 'MENGANITO MARTINEZ', 30, 'PEDRO MARTINEZ', '85%', '9/MIN', '75/100', '36°C', '115/80', '90 mg/dL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`CEDULA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `CEDULA` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178565424;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
