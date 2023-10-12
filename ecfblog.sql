-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 04 mai 2023 à 14:49
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecfblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(95) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_category`, `category_name`) VALUES
(1, '1stCategory'),
(2, '2ndCategory'),
(3, '3rdCategory'),
(4, '4thCategory'),
(5, '5thCategory');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(95) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `id_post` int NOT NULL,
  PRIMARY KEY (`id_comment`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `comment_author`, `comment_content`, `comment_date`, `id_post`) VALUES
(49, 'Nina comment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.', '2023-05-04 16:18:15', 45),
(50, 'Auteur du commentaire', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. ', '2023-05-04 16:18:45', 45);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `post_title` varchar(95) NOT NULL,
  `post_content` text NOT NULL,
  `post_author` varchar(95) NOT NULL,
  `post_date` datetime NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id_post`, `post_title`, `post_content`, `post_author`, `post_date`, `id_category`) VALUES
(38, 'Titre de l\' article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nina', '2023-05-04 16:11:27', 1),
(39, 'Titre article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nom de l\'auteur', '2023-05-04 16:13:03', 5),
(40, 'Titre de article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nina', '2023-05-04 16:13:20', 3),
(41, 'Titre article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nom de l\'auteur', '2023-05-04 16:13:44', 3),
(42, 'Le titre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'L\'auteur', '2023-05-04 16:14:04', 1),
(44, 'Titre de article (modifié)', '(Modifié) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nina (modifié)', '2023-05-04 16:14:55', 2),
(45, 'Titre de l\' article (modifié)', '(MODIFIE) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sollicitudin turpis, a blandit augue varius sit amet. Praesent volutpat ut lacus sit amet viverra. Aliquam laoreet sagittis eros, ac fringilla nunc commodo quis. Sed non est felis. Proin dapibus felis ullamcorper leo aliquam, id sollicitudin neque ullamcorper. Quisque dictum aliquam ante, in consectetur dolor sodales eu. Aenean nisi nulla, tempus ut sapien eget, aliquam molestie libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi a diam orci. Maecenas nulla nisl, mollis ut convallis vel, mattis ac ante. Donec vitae dui ut risus eleifend auctor a sodales tortor. Nulla lectus ante, eleifend id luctus nec, dictum vitae urna. Suspendisse placerat nisl vitae massa blandit viverra. Maecenas scelerisque sem non dolor maximus bibendum. Aenean magna lectus, vehicula at tincidunt eu, dictum et mauris. Fusce porttitor neque vel mauris ultricies dictum.\r\n\r\nFusce varius viverra ex. In condimentum, ipsum imperdiet fringilla aliquet, leo nibh vulputate urna, id semper metus nisl varius tellus. In aliquam convallis libero nec rutrum. Aenean ultrices felis nulla, vitae malesuada sem vulputate eu. Nam nunc ex, semper at ex eget, semper maximus sem. Aenean id velit facilisis, suscipit orci eget, malesuada arcu. Donec nec eleifend ipsum. In pharetra est posuere libero condimentum, eget tempus massa suscipit. Etiam in commodo arcu, non hendrerit velit. Morbi non tellus nulla. Curabitur ut scelerisque urna. Fusce sollicitudin vel purus eget volutpat. Donec aliquam tincidunt ipsum.\r\n\r\nSuspendisse potenti. Donec ex justo, ultrices ac velit blandit, euismod iaculis nibh. Vivamus ornare mollis congue. Mauris erat tellus, pellentesque ac felis nec, sagittis imperdiet eros. Cras sagittis diam eget lacus auctor, id rutrum ex pretium. Integer at mi sagittis, malesuada nunc auctor, fermentum elit. Vestibulum eros orci, euismod id dapibus euismod, ultrices quis tellus. In commodo est et lorem feugiat, eu consequat metus malesuada. Nullam eu viverra eros, ac bibendum purus. Aliquam in tincidunt diam. Sed non tempus lacus. Integer nulla ante, fringilla in nibh sit amet, hendrerit aliquam turpis. Integer auctor, quam vitae faucibus tincidunt, turpis justo malesuada tortor, sit amet rutrum massa tellus a nisl. Nullam vel ex nisi.\r\n\r\nPellentesque tincidunt sem cursus tellus dapibus varius. Praesent gravida quam leo. Pellentesque sed risus in nunc eleifend tincidunt in non diam. Ut quis tortor vel urna pellentesque sollicitudin ut non dolor. Vivamus tortor velit, venenatis sit amet justo ut, vulputate venenatis sapien. Mauris lobortis magna arcu, vitae finibus odio pulvinar ut. Duis vitae commodo leo. Aliquam efficitur erat id mauris ultrices lacinia. Aenean sodales, mauris ut ornare semper, purus augue efficitur ante, ac fringilla orci erat at ante. Morbi pulvinar, urna ut venenatis mollis, lacus nulla pretium massa, id vestibulum mi elit in augue. Etiam sollicitudin suscipit ornare.\r\n\r\nDonec egestas urna augue, at ultrices magna elementum sed. In sed condimentum dolor. Proin non libero turpis. Cras at pharetra quam. Suspendisse elementum lacinia elementum. Aliquam tincidunt odio id suscipit pulvinar. Nullam facilisis ligula sed augue molestie auctor. Sed scelerisque facilisis convallis. Duis eu enim a mi posuere luctus ut ut diam. Maecenas id metus pellentesque nibh bibendum feugiat. Proin urna ligula, hendrerit vitae urna vitae, interdum pretium nulla. Aenean aliquet libero ante, imperdiet vulputate leo auctor vitae. Maecenas id arcu quis mi accumsan interdum. Fusce eu ante dignissim, molestie lacus eu, sodales nisl. Fusce leo orci, vestibulum eu diam suscipit, pretium aliquam sem.', 'Nom de l\'auteur (modifié)', '2023-05-04 16:15:13', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(95) NOT NULL,
  `user_first_name` varchar(95) NOT NULL,
  `user_alias` varchar(95) NOT NULL,
  `user_email` varchar(95) NOT NULL,
  `user_password` varchar(95) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_first_name`, `user_alias`, `user_email`, `user_password`) VALUES
(6, 'Verhasselt', 'Nina', 'Nina-v', 'nina-v@live.fr', 'MDP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
