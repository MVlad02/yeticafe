
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL,
  `goods_price` int(11) NOT NULL,
  `goods_date_start` datetime NOT NULL,
  `goods_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_inf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_date_end` datetime NOT NULL,
  `id_winner` int(100) DEFAULT NULL,
  `id _autor` int(100) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `goods` (`goods_id`, `goods_price`, `goods_date_start`, `goods_name`, `goods_inf`, `goods_img`, `goods_date_end`, `id_winner`, `id _autor`, `id_category`) VALUES
(1, 10999, '2022-05-17 00:00:00', '2014 Rossignol District Snowboard', 'Легкий моневринный сноуборт ', 'img/lot-1.jpg', '2022-05-15 00:00:00', NULL, 1, 1),
(2, 15999, '2022-05-01 00:00:00', 'DC Ply Mens 2016/2017 Snowboard', 'Более моневринный с глянцевыс покрытием', 'img/lot-2.jpg', '2022-05-08 00:00:00', NULL, 1, 1),
(3, 8000, '2022-05-09 00:00:00', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Удобство и качество за такую цену!!!', 'img/lot-3.jpg', '2022-05-16 00:00:00', NULL, 1, 2),
(4, 10999, '2022-05-09 00:00:00', 'Ботинки для сноуборда DC Mutiny Charocal', 'Удобное универсальное крепления для сноуборда', 'img/lot-4.jpg', '2022-05-01 00:00:00', NULL, 1, 3),
(5, 7500, '2022-05-16 00:00:00', 'Куртка для сноуборда DC Mutiny Charocal', 'легкая не продуваемая', 'img/lot-5.jpg', '2022-05-10 00:00:00', NULL, 1, 4),
(6, 5400, '2022-05-16 00:00:00', 'Маска Oakley Canopy', 'Отличные линзы не потеют!!!', 'img/lot-6.jpg', '2022-05-03 00:00:00', NULL, 2, 6);

ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD KEY `id_winner` (`id_winner`,`id _autor`,`id_category`),
  ADD KEY `id _autor` (`id _autor`),
  ADD KEY `id_category` (`id_category`);

ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`id_winner`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`id _autor`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `category` (`category_id`);
COMMIT;
