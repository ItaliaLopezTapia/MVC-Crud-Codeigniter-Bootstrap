-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2017 a las 20:04:16
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `funcionarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(150) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idcargo`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Ing. en Informática', 'Descripción 1 ', 1),
(2, 'Analista Programador', 'Descripción 2', 1),
(3, 'Enfermero', 'Descripción 3', 1),
(4, 'Secretaria', 'Descripción 4', 1),
(5, NULL, 'ddd', 0),
(6, 'Cargo 5', 'Descripción 5', 1),
(7, 'Cargo 6', 'Descripción 6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_respaldo`
--

CREATE TABLE `cargo_respaldo` (
  `idcargo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo_respaldo`
--

INSERT INTO `cargo_respaldo` (`idcargo`, `nombre`, `descripcion`) VALUES
(1, 'Ing. en Informática', 'Descripción 1'),
(2, 'Analista Programador', 'Descripción 2'),
(3, 'Enfermero', 'Descripción 3'),
(4, 'Secretaria', 'Descripción 4'),
(5, NULL, 'ddd'),
(6, NULL, 'Descripción 5'),
(7, NULL, 'Descripción 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `subdirecciones_idsubdirecciones` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`, `descripcion`, `subdirecciones_idsubdirecciones`, `estado`) VALUES
(1, 'Departamento 1', 'Descripción 1', 1, 1),
(2, 'Departamento 2', 'Descripción 2', 2, 1),
(3, 'Departamento 3', 'Descripción 3', 3, 1),
(4, 'Departamento 4', 'Descripción 4', 2, 1),
(13, 'Departamento 5', 'Descripción 3', 3, 1),
(14, 'iiii', 'iiiii', 1, 0),
(15, 'Departamento 6', 'Descripción 6', 2, 1),
(16, 'Departamento 7', 'Descripción 7', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento_respaldo`
--

CREATE TABLE `departamento_respaldo` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `subdirecciones` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento_respaldo`
--

INSERT INTO `departamento_respaldo` (`iddepartamento`, `nombre`, `descripcion`, `subdirecciones`) VALUES
(1, 'Departamento 1', 'Descripción 1', 'Subsecretaria 1'),
(2, 'Departamento 2', 'Descripción 2', 'Subsecretaria 2'),
(3, 'Departamento 3', 'Descripción 3', 'Subsecretaria 3'),
(4, 'Departamento 4', 'Descripción 4', 'Subsecretaria 3'),
(7, 'Departamento 4', 'Descripción 4', '1'),
(8, 'iiii', 'iiiii', '1'),
(9, 'Departamento 6', 'Descripción 6', '2'),
(10, 'Departamento 7', 'Descripción 7', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidoP` varchar(45) DEFAULT NULL,
  `apellidoM` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `jefe` varchar(5) DEFAULT NULL,
  `unidad_idunidad` int(11) NOT NULL,
  `cargo_idcargo` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nombre`, `apellidoP`, `apellidoM`, `rut`, `email`, `anexo`, `imagen`, `jefe`, `unidad_idunidad`, `cargo_idcargo`, `estado`) VALUES
(23, 'Isabella', 'López', 'Salvatierra', '25.132.256-9', 'isa@correo.cl', '+56988847851', 'ISAA.jpg', '24', 1, 1, 1),
(24, 'Lucas', 'Silva', 'López', '24.137.056-9', 'lucas@correo.com', '+56956948532', 'empleado.jpg', '27', 2, 2, 1),
(27, 'Nicolas', 'López', 'Tapia', '16.798.516-5', 'nico@correo.com', '+225469874', 'default.jpg', '23', 4, 3, 1),
(28, 'Catherine', 'Muñoz', 'Millane', '17.652.348-K', 'Cat@correo.com', '+56963263256', 'ISAA1.jpg', '23', 4, 4, 1),
(29, 'Sirone ', 'Marambio', 'Perez', '19.963.254-8', 'racine@correo.cl', '+56936932236', '', '23', 3, 1, 1),
(30, 'ttttt', 'ffff', 'ffff', '12.456.789-5', 'sdfsd@gffgf.com', '+56956956569', '', '23', 2, 1, 1),
(32, 'Catherine', 'wwwwwwwwww', 'Millalen', '22.222.222-K', 'Cat@correo.com', '+56966644447', '', '24', 1, 1, 1),
(33, 'Sirone ', 'Muñoz', 'Millane', '77.777.777-7', 'Cat@correo.com', '+56966644447', '', '23', 1, 1, 1),
(34, 'Nicolas', 'López', '1456456', '99.999.999-9', 'lucas@correo.com', '+225469874', 'default.jpg', '23', 1, 1, 1),
(36, 'jkjjj', 'jjjj', 'jjjj', '44.444.444-4', 'Cat@correo.com', '+56966644447', 'LOGO.png', '23', 1, 1, 1),
(37, 'qqq', 'sss', 'ssss', '55.555.555-5', 'SDFS@SDASDAS.COM', '12365478', '', '23', 1, 1, 1),
(38, 'AAAA', 'unu', 'unu', '55.577.766-6', 'ghgh@correo.com', '+56999985745', '', '23', 1, 1, 1),
(39, 'yyyy', 'yyy', 'yyyy', '88.888.888-8', 'sdf@correo.com', '+56956996326', 'icon_users9.png', '24', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario_respaldo`
--

CREATE TABLE `funcionario_respaldo` (
  `idfuncionario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidoP` varchar(45) DEFAULT NULL,
  `apellidoM` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `jefe` varchar(45) NOT NULL,
  `unidad` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funcionario_respaldo`
--

INSERT INTO `funcionario_respaldo` (`idfuncionario`, `nombre`, `apellidoP`, `apellidoM`, `rut`, `email`, `anexo`, `imagen`, `jefe`, `unidad`, `cargo`) VALUES
(17, 'Catherine', 'Muñoz', 'Millane', '17.652.348-5', 'Cat@correo.com', '+56963263256', 'default.jpg', '23', '4', '4'),
(18, 'Sirone ', 'Marambio', 'Perez', '19.963.254-8', 'racine@correo.cl', '+56936932236', '', '23', '3', '1'),
(19, 'fffffff', 'ffff', 'ffff', '12.456.789-5', 'sdfsd@gffgf.com', '+56956956569', '', '23', '2', '1'),
(20, 'Catherine', 'wwwwwwwwww', 'Millalen', '22.222.222-K', 'Cat@correo.com', '+56966644447', '', '24', '1', '1'),
(21, 'Sirone ', 'Muñoz', 'Millane', '77.777.777-7', 'Cat@correo.com', '+56966644447', '', '23', '1', '1'),
(22, 'Nicolas', 'López', '1456456', '99.999.999-9', 'lucas@correo.com', '+225469874', 'default.jpg', '23', '1', '1'),
(23, 'jkjjj', 'jjjj', 'jjjj', '44.444.444-4', 'Cat@correo.com', '+56966644447', 'LOGO.png', '23', '1', '1'),
(24, 'qqq', 'sss', 'ssss', '55.555.555-5', 'SDFS@SDASDAS.COM', '12365478', 'cabecera.png', '23', '1', '1'),
(25, 'unu', 'unu', 'unu', '55.577.766-6', 'ghgh@correo.com', '+56999985745', '12670947-businesswoman-Stock-Vector-cartoon-e', '23', '1', '1'),
(26, 'yyyy', 'yyy', 'yyyy', '88.888.888-8', 'sdf@correo.com', '+56956996326', 'icon_users8.png', '24', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subdirecciones`
--

CREATE TABLE `subdirecciones` (
  `idsubdirecciones` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subdirecciones`
--

INSERT INTO `subdirecciones` (`idsubdirecciones`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Subsecretaria 1', 'Descripción', 1),
(2, 'Subsecretaria 2', 'Descripción', 1),
(3, 'Subsecretaría 3', 'Descripción', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subdirecciones_respaldo`
--

CREATE TABLE `subdirecciones_respaldo` (
  `idsubdirecciones` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `idunidad` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `departamento_iddepartamento` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idunidad`, `nombre`, `descripcion`, `departamento_iddepartamento`, `estado`) VALUES
(1, 'Unidad 1', 'Descripción 1', 1, 1),
(2, 'Unidad 2', 'Descripción 3', 2, 1),
(3, 'Unidad 3', 'Descripción 3', 3, 1),
(4, 'Unidad 4', 'Descripción 4', 4, 1),
(5, 'Unidad 5', 'Descripción 5', 13, 1),
(6, 'Unidad 6', 'Descripción 6', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_respaldo`
--

CREATE TABLE `unidad_respaldo` (
  `idunidad` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad_respaldo`
--

INSERT INTO `unidad_respaldo` (`idunidad`, `nombre`, `descripcion`, `departamento`) VALUES
(1, 'dsfsf', 'wefef', ''),
(2, 'kmkm', 'kmkmk', ''),
(3, 'fsdf', 'sdf', ''),
(4, 'dddd', 'dddd', ''),
(5, 'bbbb', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '10'),
(6, 'ñññ', 'ñññ', '6'),
(7, 'uuuu', 'uuuuuuu', '7'),
(8, 'erfer', 'erfe', '3'),
(9, 'sssssssssssssssss', 'ssssssssssssss', '3'),
(10, '111111111', '11111111111', '3'),
(11, 'unidad 10', 'Descripcion 20', '6'),
(12, 'kkk', 'kkk', '7'),
(13, 'j', 'jjj', '1'),
(14, 'Unidad 6', 'Descripción 6', '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `rut`, `correo`, `password`, `estado`) VALUES
(2, 'Lucas', 'Silva', '24137056-9', 'lucas@correo.com', '123456', 0),
(3, 'wwww', 'www', 'www', 'ww', '123456', 0),
(4, 'uno', 'uno', '', '', '123456', 0),
(5, 'Daniel', 'Muñoz', '12.365.478-9', 'daniel@correo.com', '', 1),
(6, 'uuu', 'uuu', '17730652-5', 'uuu', '123456', 0),
(7, 'Laura', 'Vilches', '85.478.549-8', 'laura@correo.cl', '', 1),
(8, 'Lucas', 'Silva', '21.542.365-9', 'lucas@correo.com', '123456', 1),
(9, 'italia', 'lopez', '12.444.444-1', 'ww@@', '123456', 0),
(10, 'Nicolas', 'López', '16.798.516-5', 'nico@correo.com', '123456', 1),
(11, 'ppp', 'kkkk', '77.766.655-5', 'dfff@dfsd.cl', '', 0),
(12, 'Danilo', 'Hormazabal', '44.444.457-7', 'danilo@correo.com', '', 1),
(13, 'ñ', 'ññ', '', '', '', 0),
(14, 'dfdd', 'dd', 'D-D', 'dd', 'dd', 0),
(15, 'Danilo', 'Rivadeneira', '96.336.996-9', 'danilo@correo.com', '', 1),
(16, 'uuu', 'uuu', '12.345.698-7', 'ddd@correo.com', '123456789', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_respaldo`
--

CREATE TABLE `usuario_respaldo` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `rut` varchar(45) NOT NULL,
  `password` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_respaldo`
--

INSERT INTO `usuario_respaldo` (`idusuario`, `nombre`, `apellido`, `rut`, `password`) VALUES
(1, '', '', '17730652-5', 0),
(2, 'yy', 'yy', '24.137.056-9', 0),
(3, '', '', '21.254.698-5', 0),
(4, 'italia', 'lopez', '12.444.444-1', 123),
(5, 'Nicolas', 'López', '16.798.516-5', 123456),
(6, '6u67u467u', 'opop', '77.766.655-5', 0),
(7, 'ññññ', 'ññññ', '44.444.457-5', 123456),
(8, 'ñ', 'ññ', '', 0),
(9, 'dfdd', 'dd', 'D-D', 0),
(10, 'Danilo', 'Hormazabal', '96.336.996-3', 123456789),
(11, 'uuu', 'uuu', '12.345.698-7', 123456789);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indices de la tabla `cargo_respaldo`
--
ALTER TABLE `cargo_respaldo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`),
  ADD KEY `fk_departamento_subdirecciones1_idx` (`subdirecciones_idsubdirecciones`);

--
-- Indices de la tabla `departamento_respaldo`
--
ALTER TABLE `departamento_respaldo`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `fk_funcionario_Cargo1_idx` (`cargo_idcargo`),
  ADD KEY `fk_funcionario_unidad1_idx` (`unidad_idunidad`);

--
-- Indices de la tabla `funcionario_respaldo`
--
ALTER TABLE `funcionario_respaldo`
  ADD PRIMARY KEY (`idfuncionario`);

--
-- Indices de la tabla `subdirecciones`
--
ALTER TABLE `subdirecciones`
  ADD PRIMARY KEY (`idsubdirecciones`);

--
-- Indices de la tabla `subdirecciones_respaldo`
--
ALTER TABLE `subdirecciones_respaldo`
  ADD PRIMARY KEY (`idsubdirecciones`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idunidad`),
  ADD KEY `fk_unidad_departamento1_idx` (`departamento_iddepartamento`);

--
-- Indices de la tabla `unidad_respaldo`
--
ALTER TABLE `unidad_respaldo`
  ADD PRIMARY KEY (`idunidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `usuario_respaldo`
--
ALTER TABLE `usuario_respaldo`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `cargo_respaldo`
--
ALTER TABLE `cargo_respaldo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `departamento_respaldo`
--
ALTER TABLE `departamento_respaldo`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `funcionario_respaldo`
--
ALTER TABLE `funcionario_respaldo`
  MODIFY `idfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `subdirecciones`
--
ALTER TABLE `subdirecciones`
  MODIFY `idsubdirecciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `subdirecciones_respaldo`
--
ALTER TABLE `subdirecciones_respaldo`
  MODIFY `idsubdirecciones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `idunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `unidad_respaldo`
--
ALTER TABLE `unidad_respaldo`
  MODIFY `idunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `usuario_respaldo`
--
ALTER TABLE `usuario_respaldo`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_departamento_subdirecciones1` FOREIGN KEY (`subdirecciones_idsubdirecciones`) REFERENCES `subdirecciones` (`idsubdirecciones`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_Cargo1` FOREIGN KEY (`cargo_idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_unidad1` FOREIGN KEY (`unidad_idunidad`) REFERENCES `unidad` (`idunidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `fk_unidad_departamento1` FOREIGN KEY (`departamento_iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
