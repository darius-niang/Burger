-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 05 mai 2021 à 18:16
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `burger_code`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Burgers'),
(3, 'Snacks'),
(4, 'Salades'),
(5, 'Boissons'),
(6, 'Desserts');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'Menu Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon + Frites + Boisson', '3600', 'm1.png', 1),
(2, 'Menu Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', '2500', 'm2.png', 1),
(3, 'Menu Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade + Frites + Boisson', '5000', 'm3.png', 1),
(4, 'Menu Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise + Frites + Boisson', '3000', 'm4.png', 1),
(5, 'Menu Fish', 'Sandwich: Poisson, Salade, Mayonnaise, Cornichon + Frites + Boisson', '2000', 'm5.png', 1),
(6, 'Menu Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', '3500', 'm6.png', 1),
(7, 'Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon', '1000', 'b1.png', 2),
(8, 'Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate', '3000', 'b2.png', 2),
(9, 'Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade', '1500', 'b3.png', 2),
(10, 'Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise', '2000', 'b4.png', 2),
(11, 'Fish', 'Sandwich: Poisson PanÃ©, Salade, Mayonnaise, Cornichon', '1500', 'b5.png', 2),
(12, 'Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate', '3000', 'b6.png', 2),
(13, 'Frites', 'Pommes de terre frites', '2500', 's1.png', 3),
(14, 'Onion Rings', 'Rondelles d\'oignon frits', '3500', 's2.png', 3),
(15, 'Nuggets', 'Nuggets de poulet frits', '4600', 's4.png', 3),
(16, 'Nuggets Fromage', 'Nuggets de fromage frits', '3500', 's4.png', 3),
(17, 'Ailes de Poulet', 'Ailes de poulet Barbecue', '3500', 's5.png', 3),
(18, 'CÃ©sar Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', '2500', 'sa1.png', 4),
(19, 'CÃ©sar Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', '3500', 'sa2.png', 4),
(20, 'Salade Light', 'Salade, Tomate, Concombre, MaÃ¯s et Vinaigre balsamique', '4500', 'sa3.png', 4),
(21, 'Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la sauce de votre choix', '3500', 'sa4.png', 4),
(22, 'Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la sauce de votre choix', '3500', 'sa5.png', 4),
(23, 'Coca-Cola', 'Au choix: Petit, Moyen ou Grand', '2500', 'bo1.png', 5),
(24, 'Coca-Cola Light', 'Au choix: Petit, Moyen ou Grand', '3500', 'bo2.png', 5),
(25, 'Coca-Cola ZÃ©ro', 'Au choix: Petit, Moyen ou Grand', '4500', 'bo3.png', 5),
(26, 'Fanta', 'Au choix: Petit, Moyen ou Grand', '3500', 'bo4.png', 5),
(27, 'Sprite', 'Au choix: Petit, Moyen ou Grand', '3000', 'bo5.png', 5),
(28, 'Nestea', 'Au choix: Petit, Moyen ou Grand', '2000', 'bo6.png', 5),
(29, 'Fondant au chocolat', 'Au choix: Chocolat Blanc ou au lait', '2500', 'd1.png', 6),
(30, 'Muffin', 'Au choix: Au fruits ou au chocolat', '2500', 'd2.png', 6),
(31, 'Beignet', 'Au choix: Au chocolat ou Ã  la vanille', '1500', 'd3.png', 6),
(32, 'Milkshake', 'Au choix: Fraise, Vanille ou Chocolat', '3500', 'd5.png', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
