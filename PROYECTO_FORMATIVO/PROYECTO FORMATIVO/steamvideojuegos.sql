-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-04-2024 a las 03:52:32
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
-- Base de datos: `steamvideojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `email`, `telefono`, `documento`) VALUES
(1, 'Juan', 'Perez', 'juan.perez@gmail.com', '123-456-7890', '9876543210'),
(2, 'María', 'González', 'maria.gonzalez@gmail.com', '987-654-3210', '8765432109'),
(3, 'Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', '555-555-5555', '7654321098'),
(4, 'Ana', 'Martínez', 'ana.martinez@gmail.com', '111-222-3333', '6543210987'),
(5, 'Carlos', 'López', 'carlos.lopez@gmail.com', '999-888-7777', '5432109876'),
(6, 'Laura', 'Rodríguez', 'laura.rodriguez@gmail.com', '444-333-2222', '4321098765'),
(7, 'David', 'Hernández', 'david.hernandez@gmail.com', '777-888-9999', '3210987654'),
(8, 'Sofía', 'Díaz', 'sofia.diaz@gmail.com', '666-555-4444', '2109876543'),
(9, 'Fernando', 'Moreno', 'fernando.moreno@gmail.com', '222-111-0000', '1098765432'),
(10, 'Elena', 'Alvarez', 'elena.alvarez@gmail.com', '888-999-7777', '0987654321'),
(11, 'Gabriel', 'Romero', 'gabriel.romero@gmail.com', '333-444-5555', '9870123456'),
(12, 'Isabel', 'Gómez', 'isabel.gomez@gmail.com', '666-777-8888', '8761234567'),
(13, 'Javier', 'Pérez', 'javier.perez@gmail.com', '555-666-7777', '7652345678'),
(14, 'Marta', 'Jiménez', 'marta.jimenez@gmail.com', '444-333-2222', '6543456789'),
(15, 'Roberto', 'Ruiz', 'roberto.ruiz@gmail.com', '999-888-7777', '5434567890'),
(16, 'Lucía', 'Fernández', 'lucia.fernandez@gmail.com', '111-222-3333', '4325678901'),
(17, 'Diego', 'García', 'diego.garcia@gmail.com', '777-888-9999', '3216789012'),
(18, 'Paula', 'López', 'paula.lopez@gmail.com', '666-555-4444', '2107890123'),
(19, 'Alejandro', 'Martín', 'alejandro.martin@gmail.com', '222-111-0000', '1098901234'),
(20, 'Raquel', 'Sánchez', 'raquel.sanchez@gmail.com', '888-999-7777', '0989012345'),
(21, 'Iván', 'Hernández', 'ivan.hernandez@gmail.com', '333-444-5555', '9878901234'),
(22, 'Carmen', 'Díaz', 'carmen.diaz@gmail.com', '666-777-8888', '8767890123'),
(23, 'Alberto', 'Moreno', 'alberto.moreno@gmail.com', '111-222-3333', '7656789012'),
(24, 'Rosa', 'Romero', 'rosa.romero@gmail.com', '777-888-9999', '6545678901'),
(25, 'Pablo', 'García', 'pablo.garcia@gmail.com', '666-555-4444', '5434567890'),
(26, 'Luisa', 'Martín', 'luisa.martin@gmail.com', '222-111-0000', '4323456789'),
(27, 'Antonio', 'Sánchez', 'antonio.sanchez@gmail.com', '888-999-7777', '3212345678'),
(28, 'Eva', 'Hernández', 'eva.hernandez@gmail.com', '333-444-5555', '2101234567'),
(29, 'Mario', 'Díaz', 'mario.diaz@gmail.com', '666-777-8888', '1090123456'),
(30, 'Sara', 'Moreno', 'sara.moreno@gmail.com', '111-222-3333', '0989012345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedido`
--

CREATE TABLE `detallespedido` (
  `id_detalle` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallespedido`
--

INSERT INTO `detallespedido` (`id_detalle`, `id_pedido`, `id_producto`, `cantidad`, `precio_unitario`) VALUES
(1, 1, '201', 2, 49.99),
(2, 2, '202', 1, 29.99),
(3, 3, '203', 3, 39.99),
(4, 4, '204', 2, 19.99),
(5, 5, '205', 1, 59.99),
(6, 6, '206', 4, 29.99),
(7, 7, '207', 2, 79.99),
(8, 8, '208', 1, 99.99),
(9, 9, '209', 3, 49.99),
(10, 10, '210', 1, 69.99),
(11, 11, '211', 2, 39.99),
(12, 12, '212', 1, 89.99),
(13, 13, '213', 3, 59.99),
(14, 14, '214', 2, 19.99),
(15, 15, '215', 1, 79.99),
(16, 16, '216', 4, 29.99),
(17, 17, '217', 2, 99.99),
(18, 18, '218', 1, 49.99),
(19, 19, '219', 3, 69.99),
(20, 20, '220', 1, 39.99),
(21, 21, '221', 2, 79.99),
(22, 22, '222', 1, 59.99),
(23, 23, '223', 3, 19.99),
(24, 24, '224', 2, 89.99),
(25, 25, '225', 1, 49.99),
(26, 26, '226', 4, 29.99),
(27, 27, '227', 2, 109.99),
(28, 28, '228', 1, 69.99),
(29, 29, '229', 3, 39.99),
(30, 30, '230', 1, 79.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `email`, `telefono`, `documento`, `cargo`) VALUES
(1, 'Juan', 'Perez', 'juan.perez@gmail.com', '123-456-7890', '4389056782', 'Gerente de Ventas'),
(2, 'María', 'González', 'maria.gonzalez@gmail.com', '987-654-3210', '8910237456', 'Analista de Marketing'),
(3, 'Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', '555-555-5555', '6578901243', 'Asistente Administrativo'),
(4, 'Ana', 'Martínez', 'ana.martinez@gmail.com', '111-222-3333', '2039845671', 'Coordinador de Logística'),
(5, 'Carlos', 'López', 'carlos.lopez@gmail.com', '999-888-7777', '7561982034', 'Especialista en Recursos Humanos'),
(6, 'Laura', 'Rodríguez', 'laura.rodriguez@gmail.com', '444-333-2222', '5123409876', 'Ingeniero de Software'),
(7, 'David', 'Hernández', 'david.hernandez@gmail.com', '777-888-9999', '8976543210', 'Jefe de Proyectos'),
(8, 'Sofía', 'Díaz', 'sofia.diaz@gmail.com', '666-555-4444', '1098765432', 'Consultor Financiero'),
(9, 'Fernando', 'Moreno', 'fernando.moreno@gmail.com', '222-111-0000', '7865490123', 'Diseñador Gráfico'),
(10, 'Elena', 'Alvarez', 'elena.alvarez@gmail.com', '888-999-7777', '2345678910', 'Asesor Legal'),
(11, 'Gabriel', 'Romero', 'gabriel.romero@gmail.com', '333-444-5555', '4509287316', 'Técnico de Soporte IT'),
(12, 'Isabel', 'Gómez', 'isabel.gomez@gmail.com', '666-777-8888', '8123456789', 'Ejecutivo de Cuentas'),
(13, 'Javier', 'Pérez', 'javier.perez@gmail.com', '555-666-7777', '3216549870', 'Supervisor de Producción'),
(14, 'Marta', 'Jiménez', 'marta.jimenez@gmail.com', '444-333-2222', '6789054321', 'Investigador de Mercado'),
(15, 'Roberto', 'Ruiz', 'roberto.ruiz@gmail.com', '999-888-7777', '9870231564', 'Contador'),
(16, 'Lucía', 'Fernández', 'lucia.fernandez@gmail.com', '111-222-3333', '1238907654', 'Desarrollador Web'),
(17, 'Diego', 'García', 'diego.garcia@gmail.com', '777-888-9999', '8765432190', 'Especialista en SEO\n'),
(18, 'Paula', 'López', 'paula.lopez@gmail.com', '666-555-4444', '4321098765', 'Coordinador de Eventos'),
(19, 'Alejandro', 'Martín', 'alejandro.martin@gmail.com', '222-111-0000', '8901234567', 'Analista de Datos'),
(20, 'Raquel', 'Sánchez', 'raquel.sanchez@gmail.com', '888-999-7777', '5678902134', 'Gestor de Calidad'),
(21, 'Iván', 'Hernández', 'ivan.hernandez@gmail.com', '333-444-5555', '9827653410', 'Asistente de Ventas\n'),
(22, 'Carmen', 'Díaz', 'carmen.diaz@gmail.com', '666-777-8888', '4567891023', 'Analista de Finanzas\n'),
(23, 'Alberto', 'Moreno', 'alberto.moreno@gmail.com', '111-222-3333', '7654321098', 'Especialista en Redes Sociales'),
(24, 'Rosa', 'Romero', 'rosa.romero@gmail.com', '777-888-9999', '2345678901', 'Encargado de Almacén'),
(25, 'Pablo', 'García', 'pablo.garcia@gmail.com', '666-555-4444', '6532109874', 'Administrador de Sistemas\n'),
(26, 'Luisa', 'Martín', 'luisa.martin@gmail.com', '222-111-0000', '9876540123', '\nRepresentante de Atención al Cliente'),
(27, 'Antonio', 'Sánchez', 'antonio.sanchez@gmail.com', '888-999-7777', '8901234657', 'Editor de Contenidos'),
(28, 'Eva', 'Hernández', 'eva.hernandez@gmail.com', '333-444-5555', '1032789654', 'Coordinador de Servicio al Cliente\n'),
(29, 'Mario', 'Díaz', 'mario.diaz@gmail.com', '666-777-8888', '5678910234', 'Analista de Seguridad de la Información\n'),
(30, 'Sara', 'Moreno', 'sara.moreno@gmail.com', '111-222-3333', '2190873456', 'Coordinador de Capacitación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `id_empleado` int(11) NOT NULL,
  `cod_nomina` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `salario_base` decimal(10,0) NOT NULL DEFAULT 0,
  `dias_trabajados` int(11) NOT NULL,
  `auxilio_transporte` decimal(10,0) NOT NULL DEFAULT 0,
  `nro_hrecargo` int(11) DEFAULT 0,
  `recargo_noche` decimal(10,0) NOT NULL,
  `comisiones_otros` decimal(10,0) NOT NULL DEFAULT 0,
  `total_devengado` decimal(10,0) NOT NULL,
  `salud` decimal(10,0) NOT NULL,
  `pension` decimal(10,0) NOT NULL,
  `prestamos_otros` decimal(10,0) NOT NULL DEFAULT 0,
  `total_deducido` decimal(10,0) NOT NULL,
  `neto_pagar` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`id_empleado`, `cod_nomina`, `fecha_pago`, `salario_base`, `dias_trabajados`, `auxilio_transporte`, `nro_hrecargo`, `recargo_noche`, `comisiones_otros`, `total_devengado`, `salud`, `pension`, `prestamos_otros`, `total_deducido`, `neto_pagar`) VALUES
(1, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(2, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(3, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(4, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(5, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454),
(6, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(7, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(8, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(9, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(10, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454),
(11, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(12, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(13, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(14, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(15, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454),
(16, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(17, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(18, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(19, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(20, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454),
(21, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(22, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(23, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(24, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(25, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454),
(26, 2024, '0000-00-00', 1000000, 30, 106454, 2, 15000, 0, 1019454, 90000, 70000, 0, 160000, 905454),
(27, 2024, '0000-00-00', 1200000, 30, 106454, 2, 15000, 0, 1219454, 95000, 75000, 0, 170000, 1049454),
(28, 2024, '0000-00-00', 950000, 30, 106454, 2, 15000, 0, 961454, 85000, 65000, 0, 150000, 811454),
(29, 2024, '0000-00-00', 1100000, 30, 106454, 2, 15000, 0, 1119454, 95000, 70000, 0, 165000, 954454),
(30, 2024, '0000-00-00', 1050000, 30, 106454, 2, 15000, 0, 1069454, 90000, 68000, 0, 160000, 909454);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `fecha_pedido`, `id_cliente`, `total`) VALUES
(1, '2024-03-01 12:00:00', 1, 150.00),
(2, '2024-03-02 10:30:00', 2, 200.50),
(3, '2024-03-03 15:45:00', 3, 75.25),
(4, '2024-03-04 11:20:00', 4, 300.00),
(5, '2024-03-05 14:10:00', 5, 120.75),
(6, '2024-03-06 09:00:00', 6, 90.50),
(7, '2024-03-07 16:30:00', 7, 180.25),
(8, '2024-03-08 12:45:00', 8, 250.00),
(9, '2024-03-09 08:20:00', 9, 100.50),
(10, '2024-03-10 17:00:00', 10, 75.25),
(11, '2024-03-11 13:15:00', 11, 150.00),
(12, '2024-03-12 11:30:00', 12, 200.50),
(13, '2024-03-13 18:45:00', 13, 90.25),
(14, '2024-03-14 10:10:00', 14, 120.00),
(15, '2024-03-15 14:20:00', 15, 180.75),
(16, '2024-03-16 09:50:00', 16, 300.50),
(17, '2024-03-17 17:30:00', 17, 150.25),
(18, '2024-03-18 12:55:00', 18, 250.00),
(19, '2024-03-19 08:40:00', 19, 100.50),
(20, '2024-03-20 16:15:00', 20, 75.25),
(21, '2024-03-21 13:25:00', 21, 150.00),
(22, '2024-03-22 11:35:00', 22, 200.50),
(23, '2024-03-23 18:50:00', 23, 90.25),
(24, '2024-03-24 10:15:00', 24, 120.00),
(25, '2024-03-25 14:25:00', 25, 180.75),
(26, '2024-03-26 09:55:00', 26, 300.50),
(27, '2024-03-27 17:35:00', 27, 150.25),
(28, '2024-03-28 13:00:00', 28, 250.00),
(29, '2024-03-29 08:30:00', 29, 100.50),
(30, '2024-03-30 16:10:00', 30, 75.25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(20) NOT NULL,
  `id_videojuegos` int(11) NOT NULL,
  `id_empleado` int(20) NOT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_videojuegos`, `id_empleado`, `fecha_venta`, `monto`) VALUES
(1, 1, 1, '2024-03-01 12:00:00', 150.00),
(2, 2, 2, '2024-03-02 10:30:00', 200.50),
(3, 3, 3, '2024-03-03 15:45:00', 75.25),
(4, 4, 4, '2024-03-04 11:20:00', 300.00),
(5, 5, 5, '2024-03-05 14:10:00', 120.75),
(6, 6, 6, '2024-03-06 09:00:00', 90.50),
(7, 7, 7, '2024-03-07 16:30:00', 180.25),
(8, 8, 8, '2024-03-08 12:45:00', 250.00),
(9, 9, 9, '2024-03-09 08:20:00', 100.50),
(10, 10, 10, '2024-03-10 17:00:00', 75.25),
(11, 11, 11, '2024-03-11 13:15:00', 150.00),
(12, 12, 12, '2024-03-12 11:30:00', 200.50),
(13, 13, 13, '2024-03-13 18:45:00', 90.25),
(14, 14, 14, '2024-03-14 10:10:00', 120.00),
(15, 15, 15, '2024-03-15 14:20:00', 180.75),
(16, 16, 16, '2024-03-16 09:50:00', 300.50),
(17, 17, 17, '2024-03-17 17:30:00', 150.25),
(18, 18, 18, '2024-03-18 12:55:00', 250.00),
(19, 19, 19, '2024-03-19 08:40:00', 100.50),
(20, 20, 20, '2024-03-20 16:15:00', 75.25),
(21, 21, 21, '2024-03-21 13:25:00', 150.00),
(22, 22, 22, '2024-03-22 11:35:00', 200.50),
(23, 23, 23, '2024-03-23 18:50:00', 90.25),
(24, 24, 24, '2024-03-24 10:15:00', 120.00),
(25, 25, 25, '2024-03-25 14:25:00', 180.75),
(26, 26, 26, '2024-03-26 09:55:00', 300.50),
(27, 27, 27, '2024-03-27 17:35:00', 150.25),
(28, 28, 28, '2024-03-28 13:00:00', 250.00),
(29, 29, 29, '2024-03-29 08:30:00', 100.50),
(30, 30, 30, '2024-03-30 16:10:00', 75.25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id_videojuegos` int(11) NOT NULL,
  `id_nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id_videojuegos`, `id_nombre`, `descripcion`, `plataforma`, `precio`, `stock`) VALUES
(1, 'The Witcher 3: Wild Hunt', 'RPG de mundo abierto', 'PC', 29.99, 50),
(2, 'Grand Theft Auto V', 'Acción y aventura', 'PS4', 39.99, 75),
(3, 'Red Dead Redemption 2', 'Aventura en el Salvaje Oeste', 'Xbox One', 49.99, 40),
(4, 'FIFA 22', 'Simulador de fútbol', 'PS5', 59.99, 100),
(5, 'Call of Duty: Warzone', 'Shooter en primera persona', 'PC', 0.00, 200),
(6, 'Animal Crossing: New Horizons', 'Simulador social', 'Nintendo Switch', 49.99, 60),
(7, 'Cyberpunk 2077', 'RPG de ciencia ficción', 'Xbox Series X', 29.99, 30),
(8, 'Fortnite', 'Battle Royale', 'PS4', 0.00, 300),
(9, 'The Legend of Zelda: Breath of the Wild', 'Aventura de acción y exploración', 'Nintendo Switch', 49.99, 80),
(10, 'Minecraft', 'Mundo abierto y construcción', 'PC', 19.99, 150),
(11, 'Among Us', 'Juego de traición y engaño', 'PC', 4.99, 200),
(12, 'Assassins Creed Valhalla', 'Aventura de acción en la era vikinga', 'PS5', 39.99, 70),
(13, 'Rocket League', 'Fútbol con coches', 'Xbox One', 0.00, 100),
(14, 'Overwatch', 'Hero shooter', 'PC', 19.99, 120),
(15, 'Super Mario Odyssey', 'Aventura de plataformas', 'Nintendo Switch', 39.99, 50),
(16, 'The Last of Us Part II', 'Aventura de acción y supervivencia', 'PS4', 29.99, 90),
(17, 'League of Legends', 'MOBA', 'PC', 0.00, 500),
(18, 'Halo Infinite', 'Shooter en primera persona', 'Xbox Series X', 49.99, 60),
(19, 'World of Warcraft: Shadowlands', 'MMORPG', 'PC', 39.99, 80),
(20, 'Super Smash Bros. Ultimate', 'Juego de lucha', 'Nintendo Switch', 59.99, 40),
(21, 'Genshin Impact', 'Juego de rol de acción', 'PS4', 0.00, 200),
(22, 'Valorant', 'Shooter táctico', 'PC', 0.00, 300),
(23, 'God of War', 'Aventura de acción mitológica', 'PS4', 19.99, 120),
(24, 'Fortnite: Capítulo 3', 'Battle Royale', 'Xbox Series X', 0.00, 400),
(25, 'Among Us 2', 'Secuela del juego de traición y engaño', 'PC', 9.99, 150),
(26, 'Pokémon Brilliant Diamond', 'RPG de aventuras con Pokémon', 'Nintendo Switch', 49.99, 80),
(27, 'Apex Legends', 'Battle Royale', 'PS5', 0.00, 200),
(28, 'Counter-Strike: Global Offensive', 'Shooter en primera persona', 'PC', 0.00, 500),
(29, 'FIFA 23', 'Simulador de fútbol', 'PS4', 69.99, 100),
(30, 'The Elder Scrolls V: Skyrim', 'RPG de mundo abierto', 'Xbox Series X', 19.99, 150);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id_videojuegos`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD CONSTRAINT `detallespedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`);

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
