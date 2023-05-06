-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2022 a las 02:54:10
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `email`, `password`, `nombre`, `direccion`) VALUES
(1, 'dani@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Daniel', 'maxtla #1170');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

CREATE TABLE `detalleventas` (
  `id` int(11) NOT NULL,
  `idProd` int(5) NOT NULL,
  `idVenta` int(5) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` double NOT NULL,
  `subTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `filesize` int(11) NOT NULL,
  `web_path` varchar(250) NOT NULL,
  `system_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `filename`, `filesize`, `web_path`, `system_path`) VALUES
(1, 'mochis.jpg', 91406, '/ecommerce/upload/1.jpg', 'C:/xampp/htdocs/ecommerce/upload/1.jpg'),
(2, 'pocky_1.jpg', 60716, '/ecommerce/upload/2.jpg', 'C:/xampp/htdocs/ecommerce/upload/2.jpg'),
(3, 'pocky_2.png', 60601, '/ecommerce/upload/3.png', 'C:/xampp/htdocs/ecommerce/upload/3.png'),
(4, 'pocky_3.jpg', 131072, '/ecommerce/upload/4.jpg', 'C:/xampp/htdocs/ecommerce/upload/4.jpg'),
(5, 'pocky_4.jpg', 89157, '/ecommerce/upload/5.jpg', 'C:/xampp/htdocs/ecommerce/upload/5.jpg'),
(6, 'lichis.webp', 54298, '/ecommerce/upload/6.webp', 'C:/xampp/htdocs/ecommerce/upload/6.webp'),
(7, 'chocomochis.webp', 45594, '/ecommerce/upload/7.webp', 'C:/xampp/htdocs/ecommerce/upload/7.webp'),
(8, 'ni_ramen.webp', 101716, '/ecommerce/upload/8.webp', 'C:/xampp/htdocs/ecommerce/upload/8.webp'),
(9, 'ramen_seimen.webp', 91540, '/ecommerce/upload/9.webp', 'C:/xampp/htdocs/ecommerce/upload/9.webp'),
(10, 'chapagetti.webp', 78382, '/ecommerce/upload/10.webp', 'C:/xampp/htdocs/ecommerce/upload/10.webp'),
(11, 'udon_neo.webp', 46758, '/ecommerce/upload/11.webp', 'C:/xampp/htdocs/ecommerce/upload/11.webp'),
(12, 'soda_miel.webp', 83050, '/ecommerce/upload/12.webp', 'C:/xampp/htdocs/ecommerce/upload/12.webp'),
(13, 'soda_yoghurt.webp', 72940, '/ecommerce/upload/13.webp', 'C:/xampp/htdocs/ecommerce/upload/13.webp'),
(14, 'soda_tropical.webp', 84880, '/ecommerce/upload/14.webp', 'C:/xampp/htdocs/ecommerce/upload/14.webp'),
(15, 'cerveza_devil.webp', 36792, '/ecommerce/upload/15.webp', 'C:/xampp/htdocs/ecommerce/upload/15.webp'),
(16, 'cerveza_kyra.webp', 44136, '/ecommerce/upload/16.webp', 'C:/xampp/htdocs/ecommerce/upload/16.webp'),
(17, 'te_negro.webp', 60952, '/ecommerce/upload/17.webp', 'C:/xampp/htdocs/ecommerce/upload/17.webp'),
(18, 'cervezaa_tiger.webp', 76830, '/ecommerce/upload/18.webp', 'C:/xampp/htdocs/ecommerce/upload/18.webp'),
(19, 'coctel_tutti.webp', 50072, '/ecommerce/upload/19.webp', 'C:/xampp/htdocs/ecommerce/upload/19.webp'),
(20, 'cerveza_kaoru.webp', 48720, '/ecommerce/upload/20.webp', 'C:/xampp/htdocs/ecommerce/upload/20.webp'),
(21, 'cookie_melon.webp', 35532, '/ecommerce/upload/21.webp', 'C:/xampp/htdocs/ecommerce/upload/21.webp'),
(22, 'ramen_scpicy.webp', 116676, '/ecommerce/upload/22.webp', 'C:/xampp/htdocs/ecommerce/upload/22.webp'),
(23, 'ramen_unami.webp', 91200, '/ecommerce/upload/23.webp', 'C:/xampp/htdocs/ecommerce/upload/23.webp'),
(24, 'ramen_pack.webp', 125956, '/ecommerce/upload/24.webp', 'C:/xampp/htdocs/ecommerce/upload/24.webp'),
(25, 'mochi_bonbon.webp', 54634, '/ecommerce/upload/25.webp', 'C:/xampp/htdocs/ecommerce/upload/25.webp'),
(26, 'choco_pie.webp', 66308, '/ecommerce/upload/26.webp', 'C:/xampp/htdocs/ecommerce/upload/26.webp'),
(27, 'crema_curry.webp', 75724, '/ecommerce/upload/27.webp', 'C:/xampp/htdocs/ecommerce/upload/27.webp'),
(28, 'te_negro_fresa.webp', 59994, '/ecommerce/upload/28.webp', 'C:/xampp/htdocs/ecommerce/upload/28.webp'),
(29, 'te_verde_granada.webp', 62538, '/ecommerce/upload/29.webp', 'C:/xampp/htdocs/ecommerce/upload/29.webp'),
(30, 'cerveza_pinia.webp', 62206, '/ecommerce/upload/30.webp', 'C:/xampp/htdocs/ecommerce/upload/30.webp'),
(31, 'cerveza_kirin.webp', 38774, '/ecommerce/upload/31.webp', 'C:/xampp/htdocs/ecommerce/upload/31.webp'),
(32, 'cerveza_yebisu.webp', 59312, '/ecommerce/upload/32.webp', 'C:/xampp/htdocs/ecommerce/upload/32.webp'),
(33, 'bombones_choco.webp', 85884, '/ecommerce/upload/33.webp', 'C:/xampp/htdocs/ecommerce/upload/33.webp'),
(34, 'udon_kitsune.webp', 62570, '/ecommerce/upload/34.webp', 'C:/xampp/htdocs/ecommerce/upload/34.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `existencia` int(5) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `existencia`, `descripcion`) VALUES
(2, 'Mochi', 50, 10, 'El mochi ( 餅, もち) es un pastel japonés hecho de mochigome, un pequeño grano de arroz glutinoso. El arroz se machaca hasta convertirlo en una pasta y se moldea con la forma deseada. En Japón se hace tradicionalmente en una ceremonia llamada mochitsuki.'),
(3, 'Pocky', 100, 50, 'Galleta en forma de palito, con cubierta de chocolate, caja con 247 gr, pocky japones'),
(4, 'Lichis en almibar ligero', 80, 50, 'Lichis en almíbar. Deliciosas, exquisitas y refrescantes.'),
(5, 'Chocomochis japones', 50, 100, 'Si te gusta el chocolate, ¡no puedes dejar de probar nuestros chocomochis! Disfruta de un delicioso chocolate japonés con la textura de mochi. ¡Te encantarán!'),
(6, 'Nihon Ramen', 65.5, 100, 'Ahora disfruta de un menú completo a un precio excepcional. Disfrutalo donde y cuando quieras.'),
(7, 'Ramen Japonés Seimen', 76.8, 23, 'Ahora disfruta de un menú completo a un precio excepcional. Disfrutalo donde y cuando quieras.'),
(8, 'Ramen Coreanos Salteados Chapagetti', 89.99, 10, 'Fideos ramen coreanos con carne y combinados con salsa chajang, elaborada con judía negra, huevo, patata, cebolla, puerro, zanahoria y sésamo. Sabor no picante'),
(9, 'Udon Coreano Neoguri Mariscos', 47.8, 12, 'Delicioso Udon Coreano de Marisco. Elaborado con calamar, bonito, surimi, alga kombu, salsa shoyu, puerro, cebolla, zanahoria y guindilla. Sabor Picante'),
(10, 'Soda sabor miel y limon edicion One Piece', 30.5, 32, 'Agua de soda con gas de One Piece con sabor a Limón con Miel y diseño de Zoro. Muy refrescante y realmente única. Edición Limitada.'),
(11, 'Soda sabor yoghurt edicion One Piece', 30.5, 9, 'Agua de soda con gas de One Piece con sabor a Yogur y diseño de Luffy. Muy refrescante y realmente única. Edición Limitada.'),
(12, 'Soda sabor tropical edicion One Piece', 30.5, 16, 'Agua de soda con gas de One Piece con sabor a Frutas Tropicales y diseño de Sanji. Muy refrescante y realmente única. Edición Limitada.'),
(13, 'Cerveza Negra Japonesa Devil\'s Beer', 137.5, 32, 'Cerveza negra japonesa, de color azabache y aroma refrescante a malta. Disfruta de su ligero paladar.'),
(14, 'Cerveza Artesana Coedo Kyara Lata', 167.5, 18, 'Cerveza japonesa Premium de la variedad India Pale Lager, de color marrón dorado intenso teñido de rojo. Los lúpulos aromáticos llevan notas de uvas blancas y cítricos especiados, mientras que un amargor fresco y limpio se despliega en el paladar. Seis maltas diferentes se combinan con un contenido de alcohol ligeramente superior al promedio, lo que aporta un sabor más expansivo a esta cerveza bien redondeada y de cuerpo medio. Las levaduras lager de baja temperatura hacen de esta una cerveza de pie con un final agradable y crujiente.  '),
(15, 'Cóctel Japonés con Té Negro al Limón', 120.56, 23, 'Exquisito y refrescante combinado de sake japonés con el delicioso sabor del té negro con un toque de limón. Ligeramente carbonatada.'),
(16, 'Cerveza Tiger', 110, 34, 'Una de las cervezas más populares y conocidas de Asia, producida desde 1932 en Singapur. Disfruta de una cerveza de baja fermentación, muy aromática y con un sabor bien equilibrado.'),
(17, 'Cóctel Japonés Tutti Frutti', 80, 34, 'Exquisito y refrescante combinado de sake japonés combinado con una deliciosa selección de frutas. Ligeramente carbonatada.'),
(18, 'Cerveza Kaoru Ale', 105, 17, 'Cerveza japonesa Premium de la variedad Ale, con un sabor rico y afrutado perfecto para disfrutar en cualquier momento.'),
(19, 'Cookie Pekochan de Helado de Melón de Hokkaido', 20, 24, 'Deliciosa galleta elaborada con melón japonés Yubari de Hokkaido, rellena con pepitas de helado de chocolate blanco.'),
(20, 'Fideos Ramen Coreanos Salteados Angry', 34.5, 13, 'La mezcla única que arrasa en Japón y Corea: Fideos salteados \"Chapagetti\" y \"Neoguri\" combinados, ¡también en versión ultra picante!. Disfruta de la rica salsa única y fragante de \"Chapagetti\" con el sabor del Ramen \"Neoguri\", y el picante de las guindillas coreanas. Sabor ultra picante.'),
(21, 'Ramen Coreano Piri-Kara Umami Yukhoejang', 63.5, 12, 'Fideos ramen coreanos Shin Ramyun, pero elaborados con la sopa tradicional coreana Yukgaejang, ternera, setas shitake, cebollino, zanahorias y guindilla coreana.'),
(22, 'JaponShop Ramen Coreano Premium', 456, 20, 'Disfruta de la selección de novedades extraordinarias y favoritas de JaponShop.com. Ideal para disfrutar, regalar o incluso coleccionar.'),
(23, 'Bombones Look de Mochis de Helado de Melocotón', 92, 38, 'Bombones Look de Pekochan, rellenos de delicada crema de helado de melocotón y cubiertos de delicioso chocolate con leche.'),
(24, 'Choco Pie Uji Matcha de Kyoto', 26.8, 28, 'Choco Pie nos presenta su receta más exquisita, elaborada con Té Verde Matcha de Kyoto. Disfruta de sus dos bizcochos especialmente tiernos y previamente amasados con matcha, rellenos de una delicada crema de Matcha y recubiertos de chocolate blanco con té verde Matcha. Se presenta con 4 diseños aleatorios, inspirados en Kyoto durante las 4 estaciones del año.'),
(25, 'Crema para Untar de Curry ', 107.5, 16, 'Disfruta de unas deliciosas tostadas horneadas con nuestra crema de untar de exquisito curry. '),
(26, 'Té Negro de Fresa Japonesa Kumamon', 64.5, 20, 'Exquisito té negro de la prefectura de Kumamoto, caracterizado por su sabor refrescante, combinado con dulces fresas Yuubeni. Edición Limitada.'),
(27, 'Bebida de Té Verde y Granada', 42.18, 54, 'Bebida de Té verde elaborada con agua de manantial y zumo de granada. Con una extraordinaria cantidad de antioxidantes naturales. Dos de las fuentes de antioxidantes más conocidas, se unen para obtener una bebida desintoxicante de excelente sabor.'),
(28, 'Cerveza con Sabor a Piña', 44.8, 67, 'Te encantará esta cerveza de baja graduación, con un refrescante toque de Piña. Con un delicioso color dorado, aromas frutales a piña y malta y una espuma blanca, dulce y refrescante, disfrutarás con esta cerveza elaborada desde 1970.'),
(29, 'Cerveza Kirin Ichiban', 30.8, 59, 'Asahi Super Dry desarrolla un sabor lager, elaborada con levadura especial dentro de un proceso de alta tecnología en la elaboración de cervezas. De color claro dorado, cuerpo medio y una ligera intensidad en su aroma a malta. Posee un notable y corto sabor con un toque a arroz, que le confiere una pincelada de paladar seco. Excelente para acompañar con comida japonesa.'),
(30, 'Cerveza Yebisu Premium', 144.6, 70, 'Disfruta de esta refrescante y deliciosa cerveza japonesa dorada, de estilo bávaro, con un aroma ligeramente floral. Sabor ligeramente ácido, muy agradable. Elaborada desde 1890.144'),
(31, 'Bombones Choco Fruit', 50.2, 36, 'Descubre las chocolatinas Tirol, una de las empresas japonesas de chocolate más apreciada en el país. Te traemos sus mini bombones de chocolate blanco de sabor a fruta y relleno de mermelada de melocotón, piña y melón. Toda una exquisitez.'),
(32, 'Fideos Udon Kitsune Mochi', 108.5, 43, 'Fideos Udon elaborados con de caldo dashi no moto y kombu, alga Agedama, salsa shoyu, cebolla, puerro, tofu frito, migas de tempura, naruto y Mochi.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_files`
--

CREATE TABLE `productos_files` (
  `producto_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos_files`
--

INSERT INTO `productos_files` (`producto_id`, `file_id`) VALUES
(2, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15),
(14, 16),
(15, 17),
(16, 18),
(17, 19),
(18, 20),
(19, 21),
(20, 22),
(21, 23),
(22, 24),
(23, 25),
(24, 26),
(25, 27),
(26, 28),
(27, 29),
(28, 30),
(29, 31),
(30, 32),
(31, 33),
(32, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibe`
--

CREATE TABLE `recibe` (
  `id` int(5) NOT NULL,
  `idCli` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` int(100) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibe`
--

INSERT INTO `recibe` (`id`, `idCli`, `nombre`, `email`, `direccion`) VALUES
(1, 1, 'Daniel', 0, 'maxtla #1170');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `nombre`) VALUES
(1, 'admin@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Daniel'),
(3, 'yoko@jmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Yoko');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `idCli` int(5) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fkEmail` (`email`);

--
-- Indices de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIdProd` (`idProd`),
  ADD KEY `fkIdVenta` (`idVenta`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fkIdCli` (`idCli`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIdCli` (`idCli`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `recibe`
--
ALTER TABLE `recibe`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD CONSTRAINT `idProd` FOREIGN KEY (`idProd`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idVenta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD CONSTRAINT `fkIdCli` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `idCli` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
