-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2023 at 10:23 AM
-- Server version: 8.0.33-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fish`
--

-- --------------------------------------------------------

--
-- Table structure for table `ss_employees`
--

CREATE TABLE `ss_employees` (
  `id_employee` int NOT NULL COMMENT 'Номер сотрудника',
  `fio` varchar(100) NOT NULL COMMENT 'ФИО',
  `txt` varchar(1000) NOT NULL COMMENT 'Описание'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ss_employees`
--

INSERT INTO `ss_employees` (`id_employee`, `fio`, `txt`) VALUES
(1, 'Ван Даркхолм', ''),
(2, 'Мао Дзе Дун', 'Врач дерматолог-косметолог-трихолог салона красоты'),
(3, 'Танжиро Камадо', 'Косметолог, парикмахер-стилист салона красоты'),
(4, 'Эран Егер', 'Парикмахер-универсал, мастер маникюра и педикюра салона красоты'),
(5, 'Леви Акерман', 'Парикмахер-модельер салона красоты, косметолог'),
(6, 'Прави Акерман', 'Парикмахер-стилист салона красоты, косметолог'),
(7, 'Билли Харрингтон', 'Парикмахер-универсал, мастер маникюра и педикюра салона красоты'),
(8, 'Кокушибо Гёмей', 'Парикмахер-универсал, мастер маникюра и педикюра салона красоты');

-- --------------------------------------------------------

--
-- Table structure for table `ss_news`
--

CREATE TABLE `ss_news` (
  `id_new` int NOT NULL COMMENT 'Номер новости',
  `head` varchar(100) NOT NULL COMMENT 'Заголовок',
  `text` varchar(10000) NOT NULL COMMENT 'Текст',
  `public` int NOT NULL COMMENT 'Разрешение на публикацию'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ss_news`
--

INSERT INTO `ss_news` (`id_new`, `head`, `text`, `public`) VALUES
(1, 'Изменения в лицензионном соглашении', '<p>Начиная с 02.01.2021 в текст лицензионного соглашения внесены изменения. Пункт 2.1 изменен на \"пользователь обязуется указывать только настоящие данные\"</p>', 1),
(2, 'Поздравляем с Днем Победы !', '<p>\r\nНа протяжении многих десятилетий День Победы является самым святым праздником для всех граждан нашей страны. В этот день народ нашей страны окончательно победил фашистскую Германию в Великой Отечественной войне. В предместье Берлина 9 мая 1945 года был подписан акт о полной капитуляции вермахта. Первый День Победы праздновался так, как ни один из праздников в современной истории. Дорого далась эта победа нашему народу, погибли более 20 миллионов человек на этой страшной войне, в каждой семье есть о ком вспомнить… \r\n</p>\r\n\r\n<p>Как дань памяти героизму советского народа 9 мая в День Победы ежегодно в центре страны на Красной площади и во всех крупных городах проходят парады и праздничные шествия, в этот день встречаются фронтовики, ветераны трудового фронта, возлагаются венки к памятникам, сверкает праздничный салют. Память об этой великой победе будет вечно передаваться из поколения в поколение.\r\n</p>', 1),
(3, 'Новая линейка косметики бренда GERMAINE DE CAPUCCINI', '<p>\nУважаемые друзья! Наше сотрудничество с ГК «Спортмедимпорт» Санкт-Петербург дало возможность представить для Вас новую элитную, профессиональную косметику испанского бренда GERMAINE de CAPUCCINI. Компания GERMAINE de CAPUCCINI всегда стремилась использовать новейшие технологии, чтобы предложить салонам красоты великолепное качество своих профессиональных продуктов и средств домашнего ухода. \nИмея за плечами более 50 лет опыта, компания GERMAINE de CAPUCCINI не прекращает развиваться в направлениях: инновации, усовершенствовании технологии производства, обучении и развитии персонала.\n</p>', 1),
(4, 'Массаж в четыре руки - это перезагрузка', '<p>\nМассаж в четыре руки-это перезагрузка.\nВы получаете не просто оздоровление и релакс, вы получаете возможность перезагрузить сознание. Ресинхронизация действий мастеров откроет для Вас новый уровень сознания (расслабления).\n</p>\n<p>\nМассаж начинается с глубокой проработки стоп, плавно переходящий на ноги, далее идет полная проработка и расслабление спины, шейно-воротниковой зоны.\n</p>\n<p>\nПри работе с передней поверхностью подключается профессиональный косметолог по лицу и Вы обнаружите совершенно новый уровень расслабления, поскольку два специалиста сотрудничают в синхронизированном выполнении массирования лица и тела.\n</p>\n<p>\nВо время данного массаж Ваш ум может сосредоточиться только на расслаблении. Ваш организм извлекает пользу из двух массажей на одной незабываемой процедуре, и Вы уйдете отдохнувшим и обновлённым.\n</p>\n<p>\nБудем рады видеть Вас у себя в гостях.\n</p>', 1),
(5, 'RAPHITOX – Активный омолаживающий отшелушивающий крем', '<p>\nRaphitox – активный омолаживающий отшелушивающий крем-пилинг растительного происхождения, направленный на регенерацию кожи.\n</p>\n<p>\nИнновационный препарат предназначен для ухода за кожей c растворимыми микро иглами растительного происхождения.Raphitox представляет собой альтернативу кислотным или механический пилингам, а так же мезороллерам. Препарат не оставляет шрамы на коже и нет опасности возникновения пигментации. Не повреждает кожные покровы.\n</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_online`
--

CREATE TABLE `ss_online` (
  `id_online` int NOT NULL COMMENT 'Номер записи',
  `id_employee` int NOT NULL COMMENT 'Номер сотрудника',
  `dt` int NOT NULL COMMENT 'Дата и время',
  `id_user` int NOT NULL COMMENT 'Номер пользователя',
  `status` int NOT NULL COMMENT 'Статус',
  `archive` int NOT NULL COMMENT 'Флаг архивности'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ss_online`
--

INSERT INTO `ss_online` (`id_online`, `id_employee`, `dt`, `id_user`, `status`, `archive`) VALUES
(1, 5, 1526940900, 0, 1, 0),
(3, 6, 1527764460, 1, 2, 0),
(4, 4, 1527682320, 2, 1, 1),
(5, 1, 1527376860, 0, 0, 0),
(6, 1, 1527242400, 0, 2, 0),
(7, 1, 1527246000, 0, 1, 0),
(8, 2, 1527983940, 2, 0, 0),
(9, 6, 1528473780, 0, 0, 0),
(10, 1, 1527750900, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_users`
--

CREATE TABLE `ss_users` (
  `id_user` int NOT NULL COMMENT 'Номер пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `password` varchar(100) NOT NULL COMMENT 'Пароль',
  `username` varchar(100) NOT NULL COMMENT 'Имя',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `token` varchar(128) DEFAULT NULL COMMENT 'Токен',
  `type` int NOT NULL COMMENT 'Тип'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ss_users`
--

INSERT INTO `ss_users` (`id_user`, `email`, `password`, `username`, `phone`, `token`, `type`) VALUES
(0, '', '', '...', '', 'sizdQ3HhAreNKikAQdYAAknGd6Efa6F2K67kDZYSaK3s4k9dz2rA86BNDBSiZEzA9BbAzGeyTn3Y7QaT6fzaGbTtZY8YHG46yNnbNk8ZDhrrR9rBBZ92AYZyt9aGD566', 0),
(1, 'admin@mail.ru', '12345', 'Администратор', '45-18-18', 'GYQEdkNksks8N8R622fNG3DYhbZA4QHfbrndRQeQYE45FnhBeYais8aNidZKtNT2rYtsn7RRRta2FSHEHkhKSbrS2NENy53y5KTeGB5KkYfyz9yFaQ98aDn49HdiNni7', 1),
(2, 'user1@mail.ru', '123', 'Ирина Николаевна', '42-32-30', 'kifRatZH3t6dsiH9B37S4bbNKFbtdEah99dkTd4YzZ4e4HSAfS65HD7QdzzSYEbQn7F5szDSb34H7TNaAHeFhhyFTasG2DisdnEsRQGfABHK2ZiNe5TksHHEYiRSTAA7', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ss_employees`
--
ALTER TABLE `ss_employees`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indexes for table `ss_news`
--
ALTER TABLE `ss_news`
  ADD PRIMARY KEY (`id_new`);

--
-- Indexes for table `ss_online`
--
ALTER TABLE `ss_online`
  ADD PRIMARY KEY (`id_online`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `ss_users`
--
ALTER TABLE `ss_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ss_employees`
--
ALTER TABLE `ss_employees`
  MODIFY `id_employee` int NOT NULL AUTO_INCREMENT COMMENT 'Номер сотрудника', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ss_news`
--
ALTER TABLE `ss_news`
  MODIFY `id_new` int NOT NULL AUTO_INCREMENT COMMENT 'Номер новости', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ss_online`
--
ALTER TABLE `ss_online`
  MODIFY `id_online` int NOT NULL AUTO_INCREMENT COMMENT 'Номер записи', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ss_users`
--
ALTER TABLE `ss_users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT COMMENT 'Номер пользователя', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
