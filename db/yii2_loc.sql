-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 14 2020 г., 08:36
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', '', ''),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 20, 'Fendi', '', ''),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(20) NOT NULL,
  `isMain` int(1) NOT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product1/8b8e60.png', 1, 0, 'Product', '53cbf9c3ad-3', ''),
(2, 'Products/Product1/9c68ea.png', 1, 0, 'Product', 'bf5f45c519-4', ''),
(3, 'Products/Product1/a0aeac.png', 1, 0, 'Product', 'd8793b8498-5', ''),
(4, 'Products/Product1/9e0464.png', 1, 0, 'Product', 'b93b308cef-6', ''),
(5, 'Products/Product1/3a1db7.png', 1, 0, 'Product', '8e472ac67f-7', ''),
(6, 'Products/Product1/afdd3e.png', 1, 0, 'Product', '4a0afcf194-8', ''),
(7, 'Products/Product1/7da05b.png', 1, 0, 'Product', 'c53ffd80ab-9', ''),
(8, 'Products/Product1/b8db87.jpg', 1, 0, 'Product', 'f24f5f0cda-10', ''),
(9, 'Products/Product1/c6817f.png', 1, 0, 'Product', 'd61ad1383f-11', ''),
(10, 'Products/Product1/52c056.png', 1, 0, 'Product', '71bef00894-12', ''),
(11, 'Products/Product1/a2317c.png', 1, 0, 'Product', '4f6bb96851-13', ''),
(12, 'Products/Product1/532513.jpg', 1, 0, 'Product', '737800cfb0-2', ''),
(13, 'Products/Product2/f0fdc3.jpg', 2, 0, 'Product', '64fdb97a9d-3', ''),
(14, 'Products/Product2/76b1e2.jpg', 2, 0, 'Product', '050bc9d2e8-4', ''),
(15, 'Products/Product2/798b5c.jpg', 2, 0, 'Product', '2fec904dfb-5', ''),
(16, 'Products/Product2/326eea.png', 2, 0, 'Product', '451df148e6-6', ''),
(17, 'Products/Product2/cb6f27.jpg', 2, 0, 'Product', '21c9ef325f-7', ''),
(18, 'Products/Product2/9ee66a.jpg', 2, 0, 'Product', '825771ecdf-2', ''),
(19, 'Products/Product2/0ad5b6.jpg', 2, 0, 'Product', '7453a3a83e-8', ''),
(20, 'Products/Product2/8baeb8.jpg', 2, 1, 'Product', '1c6075adb3-1', ''),
(21, 'Products/Product2/83f931.png', 2, 0, 'Product', 'e5b920967d-9', ''),
(22, 'Products/Product2/fcc72f.jpg', 2, 0, 'Product', '5f0c69dced-10', ''),
(23, 'Products/Product2/fcd8b4.jpg', 2, 0, 'Product', '3aef9685ae-11', ''),
(24, 'Products/Product1/dec1ed.jpg', 1, 1, 'Product', 'b8a4cfe74b-1', ''),
(25, 'Products/Product1/e54940.png', 1, 0, 'Product', 'a27324934f-14', ''),
(26, 'Products/Product1/0279b5.jpg', 1, 0, 'Product', 'a6b7f3dd81-15', ''),
(27, 'Products/Product1/e68a18.jpg', 1, 0, 'Product', '42e93d7051-16', ''),
(28, 'Products/Product3/a1cf74.jpg', 3, 1, 'Product', '5f8cc256e1-1', ''),
(29, 'Products/Product4/c927da.jpg', 4, 1, 'Product', '1bf347227a-1', ''),
(30, 'Products/Product5/2d75a5.jpg', 5, 1, 'Product', 'bc8054dae7-1', ''),
(31, 'Products/Product6/17985d.jpg', 6, 1, 'Product', '81c3c757ba-1', ''),
(32, 'Products/Product7/ad3c9e.png', 7, 1, 'Product', '2d23ef35d2-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1602089746);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '1', 'Тест', 'Test@mail.ru', '123', '321'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '1', 'Тест', 'Test@mail.ru', '123', '321'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(8, '2020-10-01 11:24:42', '2020-10-01 11:24:42', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(9, '2020-10-01 11:47:53', '2020-10-01 11:47:53', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(10, '2020-10-01 11:48:00', '2020-10-01 11:48:00', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(11, '2020-10-01 11:49:42', '2020-10-01 11:49:42', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(12, '2020-10-01 11:51:12', '2020-10-01 11:51:12', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(13, '2020-10-01 11:51:21', '2020-10-01 11:51:21', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(14, '2020-10-01 11:51:28', '2020-10-01 11:51:28', 3, 146, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(15, '2020-10-01 13:50:58', '2020-10-01 13:50:58', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(16, '2020-10-01 13:56:55', '2020-10-01 13:56:55', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(17, '2020-10-01 14:00:39', '2020-10-01 14:00:39', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(18, '2020-10-01 14:14:06', '2020-10-01 14:14:06', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(19, '2020-10-01 14:50:13', '2020-10-01 14:50:13', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(20, '2020-10-01 14:50:51', '2020-10-01 14:50:51', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(21, '2020-10-01 14:51:13', '2020-10-01 14:51:13', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(22, '2020-10-01 14:52:59', '2020-10-01 14:52:59', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(23, '2020-10-01 14:53:33', '2020-10-01 14:53:33', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(24, '2020-10-01 14:54:10', '2020-10-01 14:54:10', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(25, '2020-10-01 14:56:38', '2020-10-01 14:56:38', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(26, '2020-10-01 14:58:54', '2020-10-01 14:58:54', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(27, '2020-10-01 14:59:35', '2020-10-01 14:59:35', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(28, '2020-10-02 07:46:34', '2020-10-02 07:46:34', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(29, '2020-10-02 09:45:29', '2020-10-02 09:45:29', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(30, '2020-10-02 10:13:47', '2020-10-02 10:13:47', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', 'Улица Тестова.'),
(31, '2020-10-05 18:57:03', '2020-10-05 18:57:03', 3, 146, '0', 'Тестов Тест Тестович', 'Test@mail.ruTest', '123', 'Улица Тестова.'),
(32, '2020-10-13 03:02:48', '2020-10-13 03:02:48', 1, 56, '0', 'Тест', 'Test@mail.ru', '123', '321'),
(33, '2020-10-14 08:35:01', '2020-10-14 08:35:01', 3, 153, '0', 'Тест', 'Test@mail.ru', '123', '321');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 25, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(2, 26, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(3, 27, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(4, 28, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(5, 29, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(6, 30, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(7, 31, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(8, 31, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(9, 31, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(10, 32, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 5, 280),
(11, 33, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 36, 2016),
(12, 33, 1, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', 97, 1, 97),
(13, 33, 7, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL,
  `new` enum('0','1') NOT NULL,
  `sale` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', '<p><img alt=\"\" src=\"/web/upload/global/test/%D0%9A%D0%BD%D1%83%D0%BA%D0%BB%D0%B5%D1%81_%D0%93%D1%80%D0%B5%D0%B3%D0%B7%D0%B8%D0%BB%D0%BB%D0%B0.png\" style=\"float:right; height:86px; width:100px\" />Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><span style=\"color:#00FF00\"><strong>Великолепные</strong></span></h1>\r\n\r\n<p><strong>Великолепные</strong> джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n', 97, 'Джинсы', '<p>Описание</p>', '', '0', '1', '1'),
(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, '', '', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', '<p>Испанский бренд модной одежды &quot;Mango&quot; родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин &mdash; на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac &amp; Nahman Andic), очень быстро набрала популярность &mdash; всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда &quot;Mango&quot; отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.</p>\r\n', 20, '', '', 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '<p>Tom Tailor Group &mdash; один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет. Tom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей. Одежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.</p>\r\n', 70, '', '', 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', '', 0, '', '', 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', '', 100, '', '', 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '<p>Casual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира. ONLY &mdash; бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.</p>\r\n', 0, '', '', 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', 99, NULL, NULL, 'no-image.png', '0', '0', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', NULL, 0, NULL, NULL, 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', 15, NULL, NULL, 'product3.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 200, NULL, NULL, 'no-image.png', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 205, NULL, NULL, 'product5.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford Красная', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0'),
(14, 29, 'Сумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$1.NnE.dlvTa9wOOdxqGgI.Gk6G2pKHccAJAAwx9yiZLWsY2nmv2ra', 'rftuprV6Ndp1pkwAw1wK_O_3fYBBtlZf');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
