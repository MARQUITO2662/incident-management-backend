-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2024 a las 16:27:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `incidencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `id` int(11) NOT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `estado` enum('pendiente','en progreso','resuelto') DEFAULT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_de_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`id`, `asunto`, `tipo`, `descripcion`, `imagen`, `estado`, `fecha_de_creacion`, `fecha_de_actualizacion`, `id_usuario`) VALUES
(2, 'no prende luz', 'electrico', 'no prende luz del sotano 1 de las escaleras ', 'https://img.freepik.com/fotos-premium/foto-retroiluminada-pasillo-oscuro-dia-lluvioso_747552-9340.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-21 19:14:05', 2),
(3, 'Aire acondicionado no funciona', 'Eléctrico', 'El aire acondicionado de la sala no enciende', 'ac_no_funciona.jpg', 'resuelto', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 3),
(4, 'Ruido excesivo', 'Comportamiento', 'Ruido excesivo en el apartamento 305 durante la noche', 'ruido_excesivo.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 4),
(5, 'Humedad en paredes', 'Estructural', 'Humedad detectada en las paredes del apartamento 410', 'humedad_paredes.jpg', 'en progreso', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 5),
(6, 'Problemas con la puerta', 'Carpintería', 'La puerta principal no cierra correctamente', 'puerta_no_cierra.jpg', 'resuelto', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 6),
(8, 'Ventanas rotas', 'Cristalería', 'Ventanas rotas en el área común', 'ventanas_rotas.jpg', 'en progreso', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 8),
(9, 'Calefacción no funciona', 'Eléctrico', 'La calefacción del apartamento 502 no funciona', 'calefaccion_no_funciona.jpg', 'resuelto', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 9),
(10, 'Goteras en el techo', 'Plomería', 'Goteras en el techo del apartamento 301', 'goteras_techo.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 10),
(11, 'Problemas con el ascensor', 'Mecánico', 'El ascensor se queda atrapado entre pisos', 'ascensor_trapado.jpg', 'en progreso', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 1),
(12, 'Fallas en el intercomunicador', 'Eléctrico', 'El intercomunicador del apartamento 208 no funciona', 'intercomunicador.jpg', 'resuelto', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 2),
(13, 'Pintura descascarada', 'Estructural', 'La pintura de las paredes del pasillo se está descascarando', 'pintura_descascarada.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 3),
(14, 'Piso resbaladizo', 'Seguridad', 'El piso del lobby es muy resbaladizo cuando está mojado', 'piso_resbaladizo.jpg', 'en progreso', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 4),
(16, 'Humo en el pasillo', 'Seguridad', 'Se detectó humo en el pasillo del tercer piso', 'humo_pasillo.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 6),
(18, 'Problemas con el agua caliente', 'Plomería', 'El agua caliente no llega al apartamento 306', 'agua_caliente.jpg', 'resuelto', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 8),
(19, 'Fallas en el Wi-Fi', 'Tecnología', 'El Wi-Fi no funciona en el apartamento 207', 'wifi_fallas.jpg', 'pendiente', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 9),
(20, 'Árbol caído', 'Jardinería', 'Un árbol cayó en el jardín trasero', 'arbol_caido.jpg', 'en progreso', '2024-07-19 19:39:09', '2024-07-19 19:39:09', 10),
(22, 'Ya resolvimos el problema de middlewares', 'Programacion', 'No podriamos validar el token.', 'url_de_la_imagen', 'resuelto', '2024-07-20 19:18:02', '2024-07-20 19:18:02', 26),
(23, 'caño malogrado', 'gasfiteria', 'goteo de agua ', 'https://hidromedidores.com/wp-content/uploads/2018/04/water-leak-detection-1030x441-1030x441.jpg', 'pendiente', '2024-07-21 15:20:17', '2024-07-21 15:20:17', 26),
(24, 'no prende luz', 'electrico', 'no prende algunas luces en el pasadizo de entrada ala edificio', 'https://img.freepik.com/fotos-premium/foto-retroiluminada-pasillo-oscuro-dia-lluvioso_747552-9340.jpg', 'pendiente', '2024-07-21 15:27:23', '2024-07-21 15:27:23', 26),
(25, 'baño malogradp', 'gasfiteria', 'baño del tercer piso famila gonzales no funciona estara atorado', 'https://previews.123rf.com/images/thamkc/thamkc1812/thamkc181200007/115809847-inodoro-p%C3%BAblico-sucio-y-maloliente-con-manchas-y-cal.jpg', 'pendiente', '2024-07-21 15:41:12', '2024-07-21 15:41:12', 26),
(26, 'no prende luz', 'electrico', 'no prende luz de azotea principal ', 'https://img.freepik.com/fotos-premium/foto-retroiluminada-pasillo-oscuro-dia-lluvioso_747552-9340.jpg', 'pendiente', '2024-07-21 18:58:02', '2024-07-21 18:58:02', 26),
(27, 'escaleras sucias', 'limpieza y mantenimiento', 'escaleras sucias del primer al quinto piso', 'https://previews.123rf.com/images/santagig/santagig1606/santagig160600459/59180553-sucia-escalera-de-baldosas-de-cer%C3%A1mica.jpg', 'pendiente', '2024-07-21 20:06:29', '2024-07-21 20:10:48', 29),
(28, 'MOTOR DE BOMBA DE AGUA ', 'MECANICO', 'FUGA DE AGUA POR LAS TUBERIAS DEL MOTOR ', 'https://lh3.googleusercontent.com/proxy/4mZpoDzw83PsgI1oYEJYEErGYOTXnFwcnWXmjSu4GTwjnNVOo8_DdRu5PYCXpJbBmKXJRD8mnCoD32zZK7Jr2wJoUmndFYxDORoPk5n-hlQZzo14Mna9pV6yK80zwpwyyXOEsfh2WrBoQmrdDRbFY7CzXPGnz8stoP0', 'pendiente', '2024-07-21 21:03:08', '2024-07-21 21:04:31', 29),
(29, 'computadora de conytabilidad en mal estadp', 'informatico', 'la computadora se para reiniciando a cada rato', 'https://ciberseguridadtips.com/wp-content/uploads/2023/03/falla-de-software-2.jpg', 'pendiente', '2024-07-21 21:30:55', '2024-07-21 21:30:55', 31),
(30, 'TECHO DE VIGILANCIA EN MAL ESTADO', 'limpieza y mantenimiento', 'EL ETERNIT DEL TECHO DE LA GARTIA EN MAL ESTADO', 'https://media.istockphoto.com/id/936560098/es/foto/placas-de-eternit-en-el-centro-de-la-ciudad.jpg?s=612x612&w=0&k=20&c=V_Yr7BdVRxv2r9dF3UEYGTNFULi05_IySLVr57C7qLs=', 'pendiente', '2024-07-22 00:05:31', '2024-07-22 00:05:31', 32),
(31, 'MOTOR DE BOMBA DE AGUA ', 'MECANICO', 'fuga de agua solucionado', 'https://lh3.googleusercontent.com/proxy/4mZpoDzw83PsgI1oYEJYEErGYOTXnFwcnWXmjSu4GTwjnNVOo8_DdRu5PYCXpJbBmKXJRD8mnCoD32zZK7Jr2wJoUmndFYxDORoPk5n-hlQZzo14Mna9pV6yK80zwpwyyXOEsfh2WrBoQmrdDRbFY7CzXPGnz8stoP0', 'resuelto', '2024-07-22 14:24:16', '2024-07-22 14:24:57', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rol` enum('residente','administrador') DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `piso` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `apartamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `rol`, `telefono`, `piso`, `password`, `apartamento`) VALUES
(1, 'Ana Gómez', 'ana.gomez@example.com', 'residente', '555-1234', 'Piso 1', 'password123', 'Apartamento A'),
(2, 'Juan Pérez', 'juan.perez@example.com', 'residente', '555-2345', 'Piso 2', 'password456', 'Apartamento B'),
(3, 'María López', 'maria.lopez@example.com', 'residente', '555-3456', 'Piso 3', 'password789', 'Apartamento C'),
(4, 'Pedro Martínez', 'pedro.martinez@example.com', 'residente', '555-4567', 'Piso 4', 'password012', 'Apartamento D'),
(5, 'Laura Fernández', 'laura.fernandez@example.com', 'residente', '555-5678', 'Piso 5', 'password345', 'Apartamento E'),
(6, 'Carlos Sánchez', 'carlos.sanchez@example.com', 'residente', '555-6789', 'Piso 6', 'password678', 'Apartamento F'),
(7, 'Elena Ruiz', 'elena.ruiz@example.com', 'residente', '555-7890', 'Piso 7', 'password901', 'Apartamento G'),
(8, 'Ricardo Gómez', 'ricardo.gomez@example.com', 'residente', '555-8901', 'Piso 8', 'password234', 'Apartamento H'),
(9, 'Patricia García', 'patricia.garcia@example.com', 'residente', '555-9012', 'Piso 9', 'password567', 'Apartamento I'),
(10, 'José Martínez', 'jose.martinez@example.com', 'residente', '555-0123', 'Piso 10', 'password890', 'Apartamento J'),
(11, 'Isabel Rodríguez', 'isabel.rodriguez@example.com', 'residente', '555-1235', 'Piso 11', 'password123', 'Apartamento K'),
(12, 'Luis Fernández', 'luis.fernandez@example.com', 'residente', '555-2346', 'Piso 12', 'password456', 'Apartamento L'),
(13, 'Silvia Morales', 'silvia.morales@example.com', 'residente', '555-3457', 'Piso 13', 'password789', 'Apartamento M'),
(14, 'Andrés Pérez', 'andres.perez@example.com', 'residente', '555-4568', 'Piso 14', 'password012', 'Apartamento N'),
(15, 'Carmen Díaz', 'carmen.diaz@example.com', 'residente', '555-5679', 'Piso 15', 'password345', 'Apartamento O'),
(16, 'Antonio Jiménez', 'antonio.jimenez@example.com', 'residente', '555-6780', 'Piso 16', 'password678', 'Apartamento P'),
(17, 'Rosa García', 'rosa.garcia@example.com', 'residente', '555-7891', 'Piso 17', 'password901', 'Apartamento Q'),
(18, 'Mario Ortega', 'mario.ortega@example.com', 'residente', '555-8902', 'Piso 18', 'password234', 'Apartamento R'),
(19, 'Gabriela Martínez', 'gabriela.martinez@example.com', 'residente', '555-9013', 'Piso 19', 'password567', 'Apartamento S'),
(20, 'Víctor Morales', 'victor.morales@example.com', 'administrador', '555-0124', 'Piso 20', 'admin123', 'Apartamento T'),
(21, 'Lorena Hernández', 'lorena.hernandez@example.com', 'administrador', '555-1236', 'Piso 21', 'admin456', 'Apartamento U'),
(24, 'Ana Gómez', 'ana.rosalesssexample.com', 'residente', NULL, '5', '$2a$10$4sOUeybW8EaZJs5piDMW8e6TCsNl.BqrxxO8XNhT2YhALF/YIulvS', NULL),
(25, 'rozana vilchez', 'roxana.vilchesss@example.com', 'administrador', NULL, '6', '$2a$10$/GwdMfDKUuWa1I5sn7eU9uVIFTJXhs212DBr8sToVsEAuOhZ8kEAS', NULL),
(26, 'rozana vilchez julca', 'roxana.vilchesssj@example.com', 'administrador', '998771225', '7', '$2a$10$L2J.6RKrlSz0YBMZUNA3Zu4ZumHAAtpgyLG129EAZ65eJfR3ZHwbi', 'C'),
(27, 'rozana amauta julca', 'roxana.amauta@example.com', 'residente', '998771335', '8', '$2a$10$WlQuPgOu.QtOWIseUuK48O6xII0v6QkVz3nRpVVaEyRQFS8lcRQSa', 'E'),
(28, 'carmen loayza vilchez ', 'carmen.loayza@example.com', 'administrador', '998771256', '3', '$2a$10$2b8V1uP9W15jIig4xjwuDetlv290X8d8wX/cr2b0EZ607t6pVqana', 'd'),
(29, 'marco lopez', 'marquito2662@example.com', 'residente', '998771290', '9', '$2a$10$LCDpyMdWMmxtY7DnKrHlXePwgIC56MtWupxihVWt6bkCaptXUaGKu', 'D'),
(30, 'juan', 'bisbirudolfo9@gmail.com', 'residente', '9998855666', '2', '$2a$10$x.94NUt07uxqZvFpLjga2u4m0/HIbuC7nqHj.ppcsAlFC2I.f/TWq', 'w'),
(31, 'elizabeth amaro', 'bisbirudolfa9@gmail.com', 'residente', '9998855666', '2', '$2a$10$KZd3tONZXOTb9SlhS7SS3.8kHW.Blx33p0DcwuMIuZxRF2BA3oJBG', 'w'),
(32, 'silvia carbajal ', 'lagringa@gmail.com', 'administrador', '99933325', '5', '$2a$10$an/ytajDdsV4pxdEplIFxOw9Eqa7UEz.rTWrZ779be07tFv9cquJG', 'ER'),
(33, 'elias', 'elias1@gmail.com', 'administrador', '', '3', '$2a$10$UiMZ65rNL7iNAdX8X2zmO.tjxo5OzyF8A1BGggmT2E.xcCLwCebAi', 'd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `incidencias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
