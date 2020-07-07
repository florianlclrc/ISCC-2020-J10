-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 07 juil. 2020 à 09:09
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `BaseTest01`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` tinytext NOT NULL,
  `desc` longtext NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `desc`, `prix`, `quantite`) VALUES
(1, 'T-shirt rouge', 'T-shirt coton de couleur rouge', '16', 5),
(2, 'T-shirt vert', 'T-shirt coton de couleur verte', '16', 6),
(3, 'T-shirt argent', 'T-shirt coton de couleur argent', '16', 8),
(4, 'Short bleu', 'Short jean de couleur bleu', '17', 5),
(5, 'Short vert', 'Short jean de couleur verte', '20', 5),
(6, 'Gilet noir', 'gilet de couleur noir', '20', 10),
(7, 'Veste argent', 'veste de couleur argentée', '35', 3);