-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 26 2021 г., 11:13
-- Версия сервера: 5.6.51
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `happynewyear`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `image`) VALUES
(79, 'Новогодний венок', '800 руб', 'static/img/product-1.jpg'),
(80, 'Шоколадный дед мороз', '100 руб.', 'static/img/product-2.png'),
(81, 'Новогодняя Ёлка', '9900 руб.', 'static/img/product-3.jpg'),
(82, 'Сладкая коробка', '600 руб.', 'static/img/product-4.jpg'),
(83, 'Фигурка деда мороза', '2000 руб.', 'static/img/product-5.jpg'),
(84, 'Новогодний шар', '3000 руб.', 'static/img/product-6.jpg'),
(85, 'Шар на елку', '300 руб.', 'static/img/product-7.jpg'),
(86, 'Мишура', '120 руб.', 'static/img/product-8.jpg'),
(87, 'Гирлянда \"Лампочки\"', '1200 руб.', 'static/img/product-9.jpg'),
(88, 'Новогоднее шампанское', '240 руб.', 'static/img/product-10.jpg'),
(89, 'Коробка конфет', '250 руб.', 'static/img/product-11.jpg'),
(90, 'Подарок \"Сюрприз\"', '900 руб.', 'static/img/product-12.jpg'),
(91, 'Звезда на Елку', '400 руб.', 'static/img/product-13.jpg'),
(92, 'Шапка новогодняя', '600 руб.', 'static/img/product-14.jpg'),
(93, 'Бенгальские огни', '100 руб.', 'static/img/product-15.jpg'),
(94, 'Хлопушка', '80 руб.', 'static/img/product-16.png');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
