-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Чрв 12 2023 р., 19:50
-- Версія сервера: 8.0.30
-- Версія PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `Store_LB1`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `ID_Category` int NOT NULL,
  `c_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`ID_Category`, `c_name`) VALUES
(1, 'Mechanical'),
(2, 'Membrane'),
(3, 'Low-profile'),
(4, 'Optical');

-- --------------------------------------------------------

--
-- Структура таблиці `items`
--

CREATE TABLE `items` (
  `ID_Items` int NOT NULL,
  `name` varchar(16) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `quality` int NOT NULL,
  `FID_Vendor` int NOT NULL,
  `FID_Category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `items`
--

INSERT INTO `items` (`ID_Items`, `name`, `price`, `quantity`, `quality`, `FID_Vendor`, `FID_Category`) VALUES
(1, 'K2 RGB', 3700, 5, 5, 1, 1),
(2, 'K7 RGB', 3500, 7, 5, 1, 3),
(3, 'DeathStalker V2', 9999, 4, 3, 2, 4),
(4, 'VCS87 Awake', 5999, 4, 5, 3, 1),
(5, 'Ornata V2', 3799, 10, 2, 2, 2),
(6, 'G PRO', 5599, 3, 5, 4, 1),
(7, 'Rockfall EVO', 3399, 11, 4, 5, 4),
(8, 'Starfall', 1459, 8, 2, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `vendors`
--

CREATE TABLE `vendors` (
  `ID_Vendors` int NOT NULL,
  `v_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `vendors`
--

INSERT INTO `vendors` (`ID_Vendors`, `v_name`) VALUES
(1, 'Keychron'),
(2, 'Razer'),
(3, 'Varmilo'),
(4, 'Logitech'),
(5, 'Hator');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_Category`);

--
-- Індекси таблиці `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID_Items`);

--
-- Індекси таблиці `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`ID_Vendors`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
