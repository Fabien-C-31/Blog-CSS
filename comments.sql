-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 29 juil. 2019 à 16:41
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`ID`, `post_id`, `author`, `comment`, `comment_date`) VALUES
(1, 1, 'Chandler', 'Félicitation Bravo Merveilleux', '2019-07-09 22:00:55'),
(2, 1, 'Fab', 'Félicitation', '2019-07-09 21:59:37'),
(3, 1, 'Kelly', 'je marche', '2019-07-09 21:59:37'),
(4, 1, 'fab', 'coucou', '2019-07-10 21:46:09'),
(5, 1, 'Fabien', 'Bravo je vais trop pleurÃ© lÃ  gen pouvais plus !!', '2019-07-10 21:47:09'),
(6, 3, 'Fab', 'Marche ? ou marche pas ?', '2019-07-10 21:47:46'),
(7, 3, 'marche', 'je marche bien !!', '2019-07-24 13:34:00'),
(8, 2, 'Fab', 'coucou', '2019-07-26 21:18:18'),
(9, 1, 'chandler', 'je passe par là', '2019-07-26 21:38:59'),
(10, 2, 'moi', 'salut', '2019-07-27 15:57:46'),
(11, 3, 'txldsq', 'change', '2019-07-27 16:19:45'),
(12, 2, 'Alaphilippe', 'Dommage', '2019-07-28 20:26:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
