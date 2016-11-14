-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 10 Novembre 2016 à 20:11
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bac`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`) VALUES
(1, 'rap'),
(2, 'rock'),
(3, 'electro'),
(4, 'reggea');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `nom_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id_role`, `nom_role`) VALUES
(1, 'admin'),
(2, 'membre');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `roles_id_role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `prenom`, `email`, `motDePasse`, `roles_id_role`) VALUES
(1, 'fetet', 'kevin', 'fetetkevin@gmail.com', 'insectile22', 1),
(32, 'a', 'a', 'a@a.com', 'a', 2),
(29, 'z', 'z', 'z@z.com', 'z', 2),
(30, 'ayy', 'renÃ©', 'coeze@gfth', 'oui', 2);

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `id_video` int(11) NOT NULL,
  `videos_id_role` int(11) DEFAULT NULL,
  `categories_id_categorie` int(11) DEFAULT NULL,
  `url_video` varchar(255) NOT NULL,
  `titre_video` varchar(255) NOT NULL,
  `desc_video` varchar(2000) NOT NULL,
  `categorie_video` varchar(255) NOT NULL,
  `date_video` date DEFAULT NULL,
  `etat_video` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `videos`
--

INSERT INTO `videos` (`id_video`, `videos_id_role`, `categories_id_categorie`, `url_video`, `titre_video`, `desc_video`, `categorie_video`, `date_video`, `etat_video`) VALUES
(1, NULL, NULL, '-Ihd_wB634s', 'BIFFTY - SOUYON (produit par DJ Weedim)', 'jytjtdyjt', '1', '2016-11-07', 'non publie'),
(2, NULL, NULL, 'azEwEoweqbA', 'lKpote | Mon Histoire (Clip officiel) | Album : L', 'nonononono', '3', '2016-11-07', 'publie'),
(3, NULL, NULL, '6SolqUNbyKw', 'Random chiptune mix 15', 'qsfsqf', '2', '2016-11-07', 'non publie'),
(6, NULL, NULL, 'CfB9qIgSMsg', 'Vald - Urbanisme - 11.43 AM', 'hgkhgkghkhgk', '4', '2016-11-08', 'publie'),
(7, NULL, NULL, 'RlVTb3g-COY', 'fgnsgsfgn', 'sfgnfsgnfgsnf', '3', '2016-11-09', 'publie');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD KEY `id_role` (`id_role`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id_user_3` (`id_user`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `nom` (`nom`),
  ADD KEY `prenom` (`prenom`),
  ADD KEY `email` (`email`),
  ADD KEY `motDePasse` (`motDePasse`),
  ADD KEY `roles_id_role` (`roles_id_role`),
  ADD KEY `id_user_2` (`id_user`),
  ADD KEY `roles_id_role_2` (`roles_id_role`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD UNIQUE KEY `id_video_2` (`id_video`),
  ADD KEY `id_video` (`id_video`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
