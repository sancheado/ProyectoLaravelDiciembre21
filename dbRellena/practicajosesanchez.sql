-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2022 a las 22:32:22
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicajosesanchez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `telefono`, `edad`, `password`, `email`, `sexo`) VALUES
(2, 'Buford', 679462431, 56, 'Z](4r*,aYCH', 'valerie.walter@gmail.com', 'Hombre'),
(3, 'Jarred', 649682140, 40, 'b`vQ(dT7*', 'tlockman@yahoo.com', 'Mujer'),
(4, 'Herbert', 679462431, 40, '\"^2xHv58p^Z', 'xhaag@west.com', 'Mujer'),
(6, 'Harley', 679462431, 56, 'n;kqsI#*-##aL', 'slowe@yahoo.com', 'Hombre'),
(8, 'Jasper', 679462431, 56, '7xPAMli\'=Ct', 'baron.casper@gmail.com', 'Hombre'),
(9, 'Tatum', 616557159, 34, 'GR>`,#', 'cremin.jacques@gmail.com', 'Mujer'),
(35, 'Michel', 649682140, 56, 'rb\\\',u\\;u_m-Hzw', 'lisa68@gmail.com', 'Mujer'),
(37, 'Jerrod', 679462431, 56, 'JvM]J8g\'uf', 'dejuan87@yahoo.com', 'Mujer'),
(46, 'Mose', 616557159, 56, 'EX3.LH:=;}-/w`H', 'keanu.corkery@vandervort.net', 'Mujer'),
(53, 'Elwin', 649682140, 60, 'FHc,,R,u<%x7', 'aufderhar.dashawn@hotmail.com', 'Mujer'),
(60, 'Kaley', 679462431, 40, 'dX\"lY~@&o$tp', 'rau.kaylie@gmail.com', 'Mujer'),
(84, 'Lavern', 649682140, 34, 'm_8d\\!H', 'qgutkowski@gmail.com', 'Mujer'),
(99, 'Gust', 679462431, 60, '[-.%RH', 'susan.runte@abernathy.com', 'Hombre'),
(157, 'Irving', 649682140, 56, ')By@zh<]:-})e`aC^2A', 'kathryn.green@hotmail.com', 'Mujer'),
(377, 'Conrad', 649682140, 60, 'd5(H1Occs', 'freeman58@yahoo.com', 'Mujer'),
(386, 'Rey', 649682140, 60, '),n,$JB:hnt@', 'caroline85@streich.com', 'Hombre'),
(1688, 'Angel', 616557159, 40, 'OKsW{YzpQOmW#', 'vkoepp@keeling.com', 'Hombre'),
(3907, 'Marvin', 679462431, 40, '9@~b<\\*-k4AFb)', 'will.celestine@yahoo.com', 'Mujer'),
(8216, 'Francis', 649682140, 56, ':^4ZBAhy73HAO~tz0hU+', 'kathlyn25@gmail.com', 'Hombre'),
(8238, 'Marlin', 649682140, 34, '{/HD,IUVqn', 'nolan.bria@gmail.com', 'Mujer'),
(29492, 'Oscar', 649682140, 40, 'J}81I.xO<VP,G)', 'schinner.ashlynn@gmail.com', 'Hombre'),
(89023, 'Branson', 649682140, 60, 'oB=WCImQd', 'kayleigh.haag@moen.com', 'Hombre'),
(128659, 'Buster', 679462431, 40, 'EZ`Xp3?uNS;f', 'orin02@gmail.com', 'Hombre'),
(181580, 'Misael', 966741427, 60, 'bGZ*tb:J%KfH|', 'nrunolfsson@gmail.com', 'Hombre'),
(236453, 'Johnathan', 649682140, 60, 'M0F|pY^^NIyYA`C\"', 'lindgren.dianna@haag.com', 'Hombre'),
(429188, 'Darrel', 966741427, 56, '$TKu[beV^v#a[fJ', 'jaiden.schimmel@rowe.com', 'Mujer'),
(560624, 'Nikko', 679462431, 56, 'U3J$kpLY\\{h%)3', 'dterry@moore.biz', 'Mujer'),
(575262, 'Kacey', 616557159, 60, 'W2V\\&n]QyJqj7TbK2.HE', 'lilla.osinski@gmail.com', 'Hombre'),
(749068, 'Davin', 679462431, 60, '%y*hR8,*U.w.p{B', 'lolita52@goyette.org', 'Hombre'),
(844950, 'Jeffrey', 966741427, 56, '3x.PZf#k,t', 'ofriesen@robel.com', 'Mujer'),
(847553, 'Andre', 616557159, 56, ';9T~-/LS!V#pppj9', 'andreane.funk@gmail.com', 'Mujer'),
(878349, 'Merle', 966741427, 56, 'b.MfF`+-9,O%{', 'lucious15@lubowitz.org', 'Hombre'),
(949672, 'Wilfrid', 616557159, 60, 'Ww$@K:qW,\"`4Xr', 'wisoky.lloyd@hotmail.com', 'Hombre'),
(972997, 'Jensen', 649682140, 40, '~6p}f&xK}gA~({|:d', 'charley96@gmail.com', 'Mujer'),
(1055624, 'Buck', 649682140, 60, 'M;Me)Emc2P', 'eduardo.muller@yahoo.com', 'Mujer'),
(3215042, 'Tanner', 966741427, 40, '\'}G#L7dF7rIVuisu+qTt', 'baumbach.clemmie@abbott.org', 'Mujer'),
(3248655, 'David', 679462431, 60, 'f56`Y\"d|', 'wendy.white@hotmail.com', 'Mujer'),
(3821370, 'Lonnie', 616557159, 34, '1}W#wI?tfL{Lmcs', 'evert.legros@yahoo.com', 'Hombre'),
(4098942, 'Kobe', 616557159, 34, 'AN`yflL%7Ld,!', 'margie63@kuhlman.net', 'Mujer'),
(4221346, 'Clint', 616557159, 56, 'H=*k&k2}])M*X<K+G', 'micheal.rosenbaum@ankunding.net', 'Mujer'),
(5254303, 'Chase', 649682140, 34, '*I~}eQ', 'jameson28@hotmail.com', 'Mujer'),
(27552539, 'Wilford', 679462431, 34, 'v-b/u__>E3SZ\\x', 'xgutmann@reinger.info', 'Mujer'),
(32778434, 'Eusebio', 966741427, 60, '00yM\'Ka3|', 'ladarius.gutkowski@hotmail.com', 'Mujer'),
(47039212, 'Louvenia', 616557159, 34, '1y!#55f:iYCN)@/%E.j\'', 'christiansen.tianna@schinner.com', 'Hombre'),
(60622571, 'Sylvan', 966741427, 40, '^-pq&C[', 'uschaden@hotmail.com', 'Mujer'),
(62964206, 'Louvenia', 649682140, 40, '+Z{a0p1)a(B)9GyU]Q', 'amie.kovacek@lebsack.info', 'Hombre'),
(75224828, 'Casimer', 966741427, 60, 'J6rL7J<?Ii@|', 'vcronin@yahoo.com', 'Mujer'),
(84671589, 'Brock', 679462431, 34, 'sg[#xt', 'trever.powlowski@mcclure.com', 'Mujer'),
(231882839, 'Jarod', 966741427, 60, 'L\\8~e\'2p\"C]V+?cj;E', 'bernadine.kihn@upton.com', 'Hombre'),
(328500292, 'Eladio', 966741427, 40, 'pOt;>w.QGH~Qe+i4N', 'vance83@hotmail.com', 'Hombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_101331_alumno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328500293;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
