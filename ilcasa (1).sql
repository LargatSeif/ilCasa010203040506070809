-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 08 Septembre 2016 à 09:10
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ilcasa`
--
CREATE DATABASE IF NOT EXISTS `ilcasa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ilcasa`;

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B4A95E13F85E0677` (`username`),
  UNIQUE KEY `UNIQ_B4A95E13E7927C74` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Super-Admin', 'largatseif@outlook.com', '0000');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3AF346686C6E55B5` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `date_ajout`, `status`) VALUES
(1, '1234567', '2016-09-06 06:00:00', 1),
(2, 'Peinture', '2016-09-05 16:20:23', 1),
(3, 'Menuiserie & tableaux', '2016-09-05 16:22:06', 1),
(4, 'sankou7', '2016-09-05 16:51:30', 1),
(5, 'Bechir largats', '2016-09-06 12:07:54', 0),
(6, 'abbb', '2016-09-06 12:18:41', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tn_delegation`
--

CREATE TABLE IF NOT EXISTS `tn_delegation` (
  `idDelegation` int(11) NOT NULL AUTO_INCREMENT,
  `nomDelegation` varchar(30) NOT NULL,
  `Long` text NOT NULL,
  `Lat` text NOT NULL,
  `idGouv` int(11) NOT NULL,
  PRIMARY KEY (`idDelegation`),
  KEY `idGi` (`idGouv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=269 ;

--
-- Contenu de la table `tn_delegation`
--

INSERT INTO `tn_delegation` (`idDelegation`, `nomDelegation`, `Long`, `Lat`, `idGouv`) VALUES
(1, 'Bir Mcherga ', '0', '0', 24),
(2, 'El Fahs ', '0', '0', 24),
(3, 'Ennadhour ', '0', '0', 24),
(4, 'Hammam Zriba ', '0', '0', 24),
(5, 'Saouef ', '0', '0', 24),
(6, 'Zaghouan', '0', '0', 24),
(7, 'Bir Mcherga ', '0', '0', 24),
(8, 'El Fahs ', '0', '0', 24),
(9, 'Ennadhour ', '0', '0', 24),
(10, 'Hammam Zriba ', '0', '0', 24),
(11, 'Saouef ', '0', '0', 24),
(12, 'Zaghouan', '0', '0', 24),
(13, 'Ain Zaghouan ', '0', '0', 23),
(14, 'Bab Bhar ', '0', '0', 23),
(15, 'Bab Souika ', '0', '0', 23),
(16, 'Carthage ', '0', '0', 23),
(17, 'Cite El Khadra ', '0', '0', 23),
(18, 'El Hrairia ', '0', '0', 23),
(19, 'El Kabbaria ', '0', '0', 23),
(20, 'El Kram ', '0', '0', 23),
(21, 'El Menzah ', '0', '0', 23),
(22, 'El Omrane ', '0', '0', 23),
(23, 'El Omrane Superieur ', '0', '0', 23),
(24, 'El Ouerdia ', '0', '0', 23),
(25, 'Essijoumi ', '0', '0', 23),
(26, 'Ettahrir ', '0', '0', 23),
(27, 'Ezzouhour (Tunis) ', '0', '0', 23),
(28, 'Jebel Jelloud ', '0', '0', 23),
(29, 'La Goulette ', '0', '0', 23),
(30, 'La Marsa ', '0', '0', 23),
(31, 'La Medina ', '0', '0', 23),
(32, 'Le Bardo ', '0', '0', 23),
(33, 'Sidi El Bechir ', '0', '0', 23),
(34, 'Sidi Hassine', '0', '0', 23),
(35, 'Degueche ', '0', '0', 22),
(36, 'Hezoua ', '0', '0', 22),
(37, 'Nefta ', '0', '0', 22),
(38, 'Tameghza ', '0', '0', 22),
(39, 'Tozeur', '0', '0', 22),
(40, 'Degueche ', '0', '0', 22),
(41, 'Hezoua ', '0', '0', 22),
(42, 'Nefta ', '0', '0', 22),
(43, 'Tameghza ', '0', '0', 22),
(44, 'Tozeur', '0', '0', 22),
(45, 'Ben Arous ', '0', '0', 3),
(46, 'Bou Mhel El Bassatine ', '0', '0', 3),
(47, 'El Mourouj ', '0', '0', 3),
(48, 'Ezzahra ', '0', '0', 3),
(49, 'Fouchana ', '0', '0', 3),
(50, 'Hammam Chatt ', '0', '0', 3),
(51, 'Hammam Lif ', '0', '0', 3),
(52, 'Megrine ', '0', '0', 3),
(53, 'Mohamadia', '0', '0', 3),
(54, 'Ariana Ville ', '0', '0', 1),
(55, 'Ettadhamen ', '0', '0', 1),
(56, 'Kalaat Landlous ', '0', '0', 1),
(57, 'La Soukra ', '0', '0', 1),
(58, 'Mnihla ', '0', '0', 1),
(59, 'Raoued ', '0', '0', 1),
(60, 'Sidi Thabet', '0', '0', 1),
(61, 'Amdoun ', '0', '0', 2),
(62, 'Beja Nord ', '0', '0', 2),
(63, 'Beja Sud ', '0', '0', 2),
(64, 'Goubellat ', '0', '0', 2),
(65, 'Mejez El Bab ', '0', '0', 2),
(66, 'Nefza ', '0', '0', 2),
(67, 'Teboursouk ', '0', '0', 2),
(68, 'Testour ', '0', '0', 2),
(69, 'Thibar', '0', '0', 2),
(70, 'Bizerte Nord ', '0', '0', 4),
(71, 'Bizerte Sud ', '0', '0', 4),
(72, 'El Alia ', '0', '0', 4),
(73, 'Ghar El Melh ', '0', '0', 4),
(74, 'Ghezala ', '0', '0', 4),
(75, 'Jarzouna ', '0', '0', 4),
(76, 'Joumine ', '0', '0', 4),
(77, 'Mateur ', '0', '0', 4),
(78, 'Menzel Bourguiba ', '0', '0', 4),
(79, 'Menzel Jemil ', '0', '0', 4),
(80, 'Ras Jebel ', '0', '0', 4),
(81, 'Sejnane ', '0', '0', 4),
(82, 'Tinja ', '0', '0', 4),
(83, 'Utique', '0', '0', 4),
(84, 'El Hamma ', '0', '0', 5),
(85, 'El Metouia ', '0', '0', 5),
(86, 'Gabes Medina ', '0', '0', 5),
(87, 'Gabes Ouest ', '0', '0', 5),
(88, 'Gabes Sud ', '0', '0', 5),
(89, 'Ghannouche ', '0', '0', 5),
(90, 'Mareth ', '0', '0', 5),
(91, 'Matmata ', '0', '0', 5),
(92, 'Menzel Habib ', '0', '0', 5),
(93, 'Nouvelle Matmata', '0', '0', 5),
(94, 'Belkhir ', '0', '0', 6),
(95, 'El Guettar ', '0', '0', 6),
(96, 'El Ksar ', '0', '0', 6),
(97, 'El Mdhilla ', '0', '0', 6),
(98, 'Gafsa Nord ', '0', '0', 6),
(99, 'Gafsa Sud ', '0', '0', 6),
(100, 'Metlaoui ', '0', '0', 6),
(101, 'Moulares ', '0', '0', 6),
(102, 'Redeyef ', '0', '0', 6),
(103, 'Sidi Aich ', '0', '0', 6),
(104, 'Sned', '0', '0', 6),
(105, 'Ain Draham ', '0', '0', 7),
(106, 'Balta Bou Aouene ', '0', '0', 7),
(107, 'Bou Salem ', '0', '0', 7),
(108, 'Fernana ', '0', '0', 7),
(109, 'Ghardimaou ', '0', '0', 7),
(110, 'Jendouba ', '0', '0', 7),
(111, 'Jendouba Nord ', '0', '0', 7),
(112, 'Oued Mliz ', '0', '0', 7),
(113, 'Tabarka', '0', '0', 7),
(114, 'Bou Hajla ', '0', '0', 8),
(115, 'Chebika ', '0', '0', 8),
(116, 'Cherarda ', '0', '0', 8),
(117, 'El Ala ', '0', '0', 8),
(118, 'Haffouz ', '0', '0', 8),
(119, 'Hajeb El Ayoun ', '0', '0', 8),
(120, 'Kairouan Nord ', '0', '0', 8),
(121, 'Kairouan Sud ', '0', '0', 8),
(122, 'Nasrallah', '0', '0', 8),
(123, 'El Ayoun ', '0', '0', 9),
(124, 'Ezzouhour (Kasserine) ', '0', '0', 9),
(125, 'Feriana ', '0', '0', 9),
(126, 'Foussana ', '0', '0', 9),
(127, 'Haidra ', '0', '0', 9),
(128, 'Hassi El Frid ', '0', '0', 9),
(129, 'Jediliane ', '0', '0', 9),
(130, 'Kasserine Nord ', '0', '0', 9),
(131, 'Kasserine Sud ', '0', '0', 9),
(132, 'Mejel Bel Abbes ', '0', '0', 9),
(133, 'Sbeitla ', '0', '0', 9),
(134, 'Sbiba ', '0', '0', 9),
(135, 'Thala', '0', '0', 9),
(136, 'Douz ', '0', '0', 10),
(137, 'El Faouar ', '0', '0', 10),
(138, 'Kebili Nord ', '0', '0', 10),
(139, 'Kebili Sud ', '0', '0', 10),
(140, 'Souk El Ahad', '0', '0', 10),
(141, 'Borj El Amri ', '0', '0', 11),
(142, 'Douar Hicher ', '0', '0', 11),
(143, 'El Battan ', '0', '0', 11),
(144, 'Jedaida ', '0', '0', 11),
(145, 'Mannouba ', '0', '0', 11),
(146, 'Mornaguia ', '0', '0', 11),
(147, 'Oued Ellil ', '0', '0', 11),
(148, 'Tebourba', '0', '0', 11),
(149, 'Dahmani ', '0', '0', 12),
(150, 'El Ksour ', '0', '0', 12),
(151, 'Jerissa ', '0', '0', 12),
(152, 'Kalaa El Khasba ', '0', '0', 12),
(153, 'Kalaat Sinane ', '0', '0', 12),
(154, 'Le Kef Est ', '0', '0', 12),
(155, 'Le Kef Ouest ', '0', '0', 12),
(156, 'Le Sers ', '0', '0', 12),
(157, 'Nebeur ', '0', '0', 12),
(158, 'Sakiet Sidi Youssef ', '0', '0', 12),
(159, 'Tajerouine ', '0', '0', 12),
(160, 'Touiref', '0', '0', 12),
(161, 'Bou Merdes ', '0', '0', 13),
(162, 'Chorbane ', '0', '0', 13),
(163, 'El Jem ', '0', '0', 13),
(164, 'Hbira ', '0', '0', 13),
(165, 'Ksour Essaf ', '0', '0', 13),
(166, 'La Chebba ', '0', '0', 13),
(167, 'Mahdia ', '0', '0', 13),
(168, 'Melloulech ', '0', '0', 13),
(169, 'Ouled Chamakh ', '0', '0', 13),
(170, 'Sidi Alouene ', '0', '0', 13),
(171, 'Souassi', '0', '0', 13),
(172, 'Ajim ', '0', '0', 14),
(173, 'Ben Guerdane ', '0', '0', 14),
(174, 'Beni Khedache ', '0', '0', 14),
(175, 'Djerba - Houmet Essouk ', '0', '0', 14),
(176, 'Djerba - Midoun ', '0', '0', 14),
(177, 'Medenine Nord ', '0', '0', 14),
(178, 'Medenine Sud ', '0', '0', 14),
(179, 'Sidi Makhlouf ', '0', '0', 14),
(180, 'Zarzis', '0', '0', 14),
(181, 'Bekalta ', '0', '0', 15),
(182, 'Bembla ', '0', '0', 15),
(183, 'Beni Hassen ', '0', '0', 15),
(184, 'Jemmal ', '0', '0', 15),
(185, 'Ksar Helal ', '0', '0', 15),
(186, 'Ksibet El Mediouni ', '0', '0', 15),
(187, 'Moknine ', '0', '0', 15),
(188, 'Monastir ', '0', '0', 15),
(189, 'Ouerdanine ', '0', '0', 15),
(190, 'Sahline ', '0', '0', 15),
(191, 'Sayada Lamta Bou Hajar ', '0', '0', 15),
(192, 'Teboulba ', '0', '0', 15),
(193, 'Zeramdine', '0', '0', 15),
(194, 'Beni Khalled ', '0', '0', 16),
(195, 'Beni Khiar ', '0', '0', 16),
(196, 'Bou Argoub ', '0', '0', 16),
(197, 'Dar Chaabane Elfehri ', '0', '0', 16),
(198, 'El Haouaria ', '0', '0', 16),
(199, 'El Mida ', '0', '0', 16),
(200, 'Grombalia ', '0', '0', 16),
(201, 'Hammam El Ghezaz ', '0', '0', 16),
(202, 'Hammamet ', '0', '0', 16),
(203, 'Kelibia ', '0', '0', 16),
(204, 'Korba ', '0', '0', 16),
(205, 'Menzel Bouzelfa ', '0', '0', 16),
(206, 'Menzel Temime ', '0', '0', 16),
(207, 'Nabeul ', '0', '0', 16),
(208, 'Soliman ', '0', '0', 16),
(209, 'Takelsa', '0', '0', 16),
(210, 'Agareb ', '0', '0', 17),
(211, 'Bir Ali Ben Khelifa ', '0', '0', 17),
(212, 'El Amra ', '0', '0', 17),
(213, 'El Hencha ', '0', '0', 17),
(214, 'Esskhira ', '0', '0', 17),
(215, 'Ghraiba ', '0', '0', 17),
(216, 'Jebeniana ', '0', '0', 17),
(217, 'Kerkenah ', '0', '0', 17),
(218, 'Mahras ', '0', '0', 17),
(219, 'Menzel Chaker ', '0', '0', 17),
(220, 'Sakiet Eddaier ', '0', '0', 17),
(221, 'Sakiet Ezzit ', '0', '0', 17),
(222, 'Sfax Est ', '0', '0', 17),
(223, 'Sfax Sud ', '0', '0', 17),
(224, 'Sfax Ville', '0', '0', 17),
(225, 'Ben Oun ', '0', '0', 18),
(226, 'Bir El Haffey ', '0', '0', 18),
(227, 'Cebbala ', '0', '0', 18),
(228, 'Jilma ', '0', '0', 18),
(229, 'Maknassy ', '0', '0', 18),
(230, 'Menzel Bouzaiene ', '0', '0', 18),
(231, 'Mezzouna ', '0', '0', 18),
(232, 'Ouled Haffouz ', '0', '0', 18),
(233, 'Regueb ', '0', '0', 18),
(234, 'Sidi Bouzid Est ', '0', '0', 18),
(235, 'Sidi Bouzid Ouest ', '0', '0', 18),
(236, 'Souk Jedid', '0', '0', 18),
(237, 'Bargou ', '0', '0', 19),
(238, 'Bou Arada ', '0', '0', 19),
(239, 'El Aroussa ', '0', '0', 19),
(240, 'Gaafour ', '0', '0', 19),
(241, 'Kesra ', '0', '0', 19),
(242, 'Le Krib ', '0', '0', 19),
(243, 'Makthar ', '0', '0', 19),
(244, 'Rohia ', '0', '0', 19),
(245, 'Sidi Bou Rouis ', '0', '0', 19),
(246, 'Siliana Nord ', '0', '0', 19),
(247, 'Siliana Sud', '0', '0', 19),
(248, 'Akouda ', '0', '0', 20),
(249, 'Bou Ficha ', '0', '0', 20),
(250, 'Enfidha ', '0', '0', 20),
(251, 'Hammam Sousse ', '0', '0', 20),
(252, 'Hergla ', '0', '0', 20),
(253, 'Kalaa El Kebira ', '0', '0', 20),
(254, 'Kalaa Essghira ', '0', '0', 20),
(255, 'Kondar ', '0', '0', 20),
(256, 'Msaken ', '0', '0', 20),
(257, 'Sidi Bou Ali ', '0', '0', 20),
(258, 'Sidi El Heni ', '0', '0', 20),
(259, 'Sousse Jaouhara ', '0', '0', 20),
(260, 'Sousse Riadh ', '0', '0', 20),
(261, 'Sousse Ville', '0', '0', 20),
(262, 'Bir Lahmar ', '0', '0', 21),
(263, 'Dhehiba ', '0', '0', 21),
(264, 'Ghomrassen ', '0', '0', 21),
(265, 'Remada ', '0', '0', 21),
(266, 'Smar ', '0', '0', 21),
(267, 'Tataouine Nord ', '0', '0', 21),
(268, 'Tataouine Sud', '0', '0', 21);

-- --------------------------------------------------------

--
-- Structure de la table `tn_gouvernorats`
--

CREATE TABLE IF NOT EXISTS `tn_gouvernorats` (
  `idGouvernorat` int(11) NOT NULL AUTO_INCREMENT,
  `nomGrouvernorat` text NOT NULL,
  `Long` text NOT NULL,
  `Lat` text NOT NULL,
  PRIMARY KEY (`idGouvernorat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `tn_gouvernorats`
--

INSERT INTO `tn_gouvernorats` (`idGouvernorat`, `nomGrouvernorat`, `Long`, `Lat`) VALUES
(1, 'Ariana', '0', '0'),
(2, 'Béja', '0', '0'),
(3, 'Ben Arous', '0', '0'),
(4, 'Bizerte', '0', '0'),
(5, 'Gabés', '0', '0'),
(6, 'Gafsa', '0', '0'),
(7, 'Jendouba', '0', '0'),
(8, 'Kairouan', '0', '0'),
(9, 'Kasserine', '0', '0'),
(10, 'Kébili', '0', '0'),
(11, 'La Manouba', '0', '0'),
(12, 'Le Kef', '0', '0'),
(13, 'Mahdia', '0', '0'),
(14, 'Médenine', '0', '0'),
(15, 'Monastir', '0', '0'),
(16, 'Nabeul', '0', '0'),
(17, 'Sfax', '0', '0'),
(18, 'Sidi Bouzid', '0', '0'),
(19, 'Siliana', '0', '0'),
(20, 'Sousse', '0', '0'),
(21, 'Tataouine', '0', '0'),
(22, 'Tozeur', '0', '0'),
(23, 'Tunis', '0', '0'),
(24, 'Zaghouan', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2DA1797792FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_2DA17977A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_2DA17977C05FB297` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'theAdmin', 'theadmin', 'largatseif@outlook.com', 'largatseif@outlook.com', 1, 'h5hdqh04ya88swcc44kg88gcsww4og0', '$2y$13$h5hdqh04ya88swcc44kg8uPvWMwVgdi7G8oYC0KwVOv4vz2E78CdW', '2016-09-07 08:36:09', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tn_delegation`
--
ALTER TABLE `tn_delegation`
  ADD CONSTRAINT `idGi` FOREIGN KEY (`idGouv`) REFERENCES `tn_gouvernorats` (`idGouvernorat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
