-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 nov. 2023 à 16:18
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_ressources`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Nom_category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`CategoryID`, `Nom_category`) VALUES
(1, 'DEVLOPMENT');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `ProjectID` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`ProjectID`, `nom`, `description`, `date_debut`, `date_fin`) VALUES
(1, 'brief1', 'my ressource', '2023-11-13', '2023-11-20'),
(2, 'brief2', 'my sql', '2023-11-20', '2023-11-28');

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `nom_ressource` varchar(50) DEFAULT NULL,
  `ResourceID` int(11) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `SubcategoryID` int(11) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`nom_ressource`, `ResourceID`, `CategoryID`, `SubcategoryID`, `SquadID`, `ProjectID`) VALUES
('Programing', 1, 1, 1, 100, 1),
('Programing', 2, 1, 2, 101, 2),
('Programing', 3, 1, 1, 102, 1),
('Programing', 4, 1, 2, 103, 2),
('Programing', 5, 1, 1, 104, 1);

-- --------------------------------------------------------

--
-- Structure de la table `squad`
--

CREATE TABLE `squad` (
  `SquadID` int(11) NOT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `squad`
--

INSERT INTO `squad` (`SquadID`, `ProjectID`, `Name`) VALUES
(100, 2, 'CODZILLA'),
(101, 1, 'CELL 13'),
(102, 2, 'ALPHA'),
(103, 1, 'PRODEVS'),
(104, 2, 'BROGRAMMERS');

-- --------------------------------------------------------

--
-- Structure de la table `subcategory`
--

CREATE TABLE `subcategory` (
  `SubcategoryID` int(11) NOT NULL,
  `Nom_subcategory` varchar(50) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subcategory`
--

INSERT INTO `subcategory` (`SubcategoryID`, `Nom_subcategory`, `CategoryID`) VALUES
(1, 'Fullstack', 1),
(2, 'Front end', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `UserID` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) DEFAULT NULL,
  `Email_utilisateur` varchar(50) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`UserID`, `Nom_utilisateur`, `Email_utilisateur`, `SquadID`) VALUES
(1, 'ANASS', 'anass@gmail.com', 100),
(2, 'aicha', 'aicha@gmail,com', 100),
(3, 'znnohi', 'znnohi@gmail.com', 100),
(4, 'rabie', 'rabie@gmail.com', 100),
(5, 'khalid', 'khalid@gmail.com', 100),
(6, 'youness', 'youness@gmail.com', 101),
(7, 'Mbarek', 'mbarek@gmail.com', 101),
(8, 'latifa', 'latifa@gmail.com', 101),
(9, 'nabil', 'nabil@gmail.com', 101),
(10, 'Mohammed amine', 'mohammedamine@gmail.com', 102),
(11, 'Abdellah', 'abdellah@gmail.com', 102),
(12, 'Soumaya', 'soumaya@gmail.com', 102),
(13, 'Otman', 'otman@gmail.com', 102),
(14, 'Amine baih', 'aminebaih@gmail.com', 103),
(15, 'Zohair', 'Zohair@gmail.com', 103),
(16, 'Oumaima', 'oumaima@gmail.com', 103),
(17, 'Abdeljabar', 'abdeljabar@gmail.con', 103),
(18, 'Hamza', 'hamza@gmail.com', 103),
(19, 'A.drissi', 'drissi@gmail.com', 104),
(20, 'Naima', 'naima@gmail.com', 104),
(21, 'khalid haiddou', 'haidou@gmail.com', 104),
(22, 'Abdeljalil', 'abdeljalil@gmail.com', 104);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`ResourceID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `SubcategoryID` (`SubcategoryID`),
  ADD KEY `SquadID` (`SquadID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Index pour la table `squad`
--
ALTER TABLE `squad`
  ADD PRIMARY KEY (`SquadID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Index pour la table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubcategoryID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `SquadID` (`SquadID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `ResourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubcategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD CONSTRAINT `ressource_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  ADD CONSTRAINT `ressource_ibfk_2` FOREIGN KEY (`SubcategoryID`) REFERENCES `subcategory` (`SubcategoryID`),
  ADD CONSTRAINT `ressource_ibfk_3` FOREIGN KEY (`SquadID`) REFERENCES `squad` (`SquadID`),
  ADD CONSTRAINT `ressource_ibfk_4` FOREIGN KEY (`ProjectID`) REFERENCES `projet` (`ProjectID`);

--
-- Contraintes pour la table `squad`
--
ALTER TABLE `squad`
  ADD CONSTRAINT `squad_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `projet` (`ProjectID`);

--
-- Contraintes pour la table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `SquadID` FOREIGN KEY (`SquadID`) REFERENCES `squad` (`SquadID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
