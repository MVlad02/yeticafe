

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL,
  `goods_price` int(11) NOT NULL,
  `goods_date_start` date NOT NULL,
  `goods_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_inf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_date_end` date NOT NULL,
  `id_winner` int(100) NOT NULL,
  `id _autor` int(100) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `lot` (
  `lot_id` int(100) NOT NULL,
  `lot_date` date NOT NULL,
  `lot_sum` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_product` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_reg` date NOT NULL,
  `user_pas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ava` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_kon_inf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD KEY `id_winner` (`id_winner`,`id _autor`,`id_category`),
  ADD KEY `id _autor` (`id _autor`),
  ADD KEY `id_category` (`id_category`);

ALTER TABLE `lot`
  ADD PRIMARY KEY (`lot_id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`id_winner`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`id _autor`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `category` (`category_id`);

ALTER TABLE `lot`
  ADD CONSTRAINT `lot_ibfk_1` FOREIGN KEY (`lot_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `lot_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `lot_ibfk_3` FOREIGN KEY (`id_product`) REFERENCES `goods` (`goods_id`);
COMMIT;

