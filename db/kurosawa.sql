-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2018 at 02:28 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kurosawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Crime'),
(4, 'Drama'),
(5, 'Fantasy'),
(6, 'Mystery'),
(7, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `movies_title` varchar(255) NOT NULL,
  `movies_runtime` varchar(255) NOT NULL,
  `movies_year` varchar(255) NOT NULL,
  `movies_cover` varchar(255) NOT NULL,
  `movies_clip` varchar(255) NOT NULL,
  `movies_story` text NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_runtime`, `movies_year`, `movies_cover`, `movies_clip`, `movies_story`) VALUES
(1, 'Sugata Sanshiro', '1h 19m', '1943', 'sanshiro.jpg', 'sanshiro.mp4', 'Sugata, a young man, struggles to learn the nuance and meaning of judo, and in doing so comes to learn something of the meaning of life.'),
(2, 'Ichiban Utsukushiku', '1h 25m', '1944', 'ichiban.jpg', 'ichiban.mp4', 'World War II propaganda film about female volunteer workers at an optics plant who do their best to meet production targets.'),
(3, 'Sanshiro Sugata Part II', '1h 23m', '1945', 'sanshiro2.jpg', 'sanshiro2.mp4', 'Sugata returns to prove his judo mastery in a match against Western opponents.'),
(4, 'Tora No O Wo Fumu Otokotachi', '59m', '1945', 'toranoowo.jpg', 'toranoowo.mp4', 'A Japanese general and his men disguise themselves as monks in order to pass an enemy border patrol.'),
(5, 'Those Who Make Tomorrow', '1h 22m', '1946', 'thosewhomaketomorrow.jpg', 'thosewhomaketomorrow.mp4', 'Two sisters, one a dancer and the other a script supervisor at a big movie studio, become embroiled in union activities when a strike is called in sympathy with striking railroad workers, one of whom boards with the sisters and their parents. The girls'' father argues with them about their strike, but finds his views changing when he himself loses his job.'),
(6, 'No Regrets for My Youth', '1h 50m', '1946', 'noregretsformyyouth.jpg', 'noregretsformyyouth.mp4', 'The daughter of a politically disgraced university professor struggles to find a place for herself in love and life, in the uncertain world of Japan leading into WWII.'),
(7, 'One Wonderful Sunday', '1h 48m', '1947', 'onewonderfulsunday.jpg', 'onewonderfulsunday.mp4', 'During a Sunday trip into war-ravaged Tokyo, despairing Yuzo and optimistic Masako look for work and lodging, as well as affordable entertainments to pass the time.'),
(8, 'Drunken Angel', '1h 38m', '1948', 'drunkenangel.jpg', 'drunkenangel.mp4', 'A drunken doctor with a hot temper and a violence-prone gangster with tuberculosis form a quicksilver bond.'),
(9, 'The Quiet Duel', '1h 35m', '1949', 'thequietduel.jpg', 'thequietduel.mp4', 'A surgeon gets syphilis from a patient when he cuts himself during an operation. The doctor''s life is destroyed, but unlike the patient, he doesn''t destroy others along with him.'),
(10, 'Stray Dog', '2h 2m', '1949', 'straydog.jpg', 'straydog.mp4', 'During a sweltering summer, a rookie homicide detective tries to track down his stolen Colt pistol.'),
(11, 'Scandal', '1h 44m', '1950', 'scandal.jpg', 'scandal.mp4', 'A celebrity photograph sparks a court case as a tabloid magazine spins a scandalous yarn over a painter and a famous singer.'),
(12, 'Rashomon', '1h 28m', '1950', 'rashomon.jpg', 'rashomon.mp4', 'A heinous crime and its aftermath are recalled from differing points of view.'),
(13, 'The Idiot', '2h 46m', '1951', 'theidiot.jpg', 'theidiot.mp4', 'A Japanese veteran, driven partially mad from the war, travels to the snowy island of Kameda where he soon enters a love triangle with his best friend and a disgraced woman.'),
(14, 'Ikiru', '2h 23m', '1952', 'ikiru.jpg', 'ikiru.mp4', 'A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.'),
(15, 'Seven Samurai', '3h 27m', '1954', 'sevensamurai.jpg', 'sevensamurai.png', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.'),
(16, 'I Live in Fear', '1h 43m', '1955', 'iliveinfear.jpg', 'iliveinfear.mp4', 'An aging Japanese industrialist becomes so fearful of nuclear war that it begins to take a toll on his life and family.'),
(17, 'Throne of Blood', '1h 50m', '1957', 'throneofblood.jpg', 'throneofblood.mp4', 'A war-hardened general, egged on by his ambitious wife, works to fulfill a prophecy that he would become lord of Spider''s Web Castle.'),
(18, 'The Lower Depths', '2h 17m', '1957', 'thelowerdepths.jpg', 'thelowerdepths.mp4', 'In a Japanese slum, various residents play out their lives, dreaming of better things or settling for their lot. Among them is a man who pines for a young woman but is stymied by her deceptive family.'),
(19, 'The Hidden Fortress', '2h 19m', '1958', 'thehiddenfortress.jpg', 'thehiddenfortress.mp4', 'Lured by gold, two greedy peasants escort a man and woman across enemy lines. However, they do not realize that their companions are actually a princess and her general.'),
(20, 'The Bad Sleep Well', '2h 31m', '1960', 'thebadsleepwell.jpg', 'thebadsleepwell.mp4', 'A vengeful young man marries the daughter of a corrupt industrialist in order to seek justice for his father''s suicide.'),
(21, 'Yojimbo', '1h 50m', '1961', 'yojimbo.jpg', 'yojimbo.mp4', 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.'),
(22, 'Sanjuro', '1h 36m', '1962', 'sanjuro.jpg', 'sanjuro.mp4', 'A crafty samurai helps a young man and his fellow clansmen save his uncle, who has been framed and imprisoned by a corrupt superintendent.'),
(23, 'High and Low', '2h 23m', '1963', 'highandlow.jpg', 'highandlow.mp4', 'An executive of a shoe company becomes a victim of extortion when his chauffeur''s son is kidnapped and held for ransom.'),
(24, 'Ran', '2h 42m', '1985', 'ran.jpg', 'ran.mp4', 'In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other... and him.'),
(25, 'Dreams', '1h 59m', '1990', 'dreams.jpg', 'dreams.mp4', 'A collection of tales based upon the actual dreams of director Akira Kurosawa.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` varchar(10) NOT NULL,
  `genre_id` varchar(10) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '1', '4'),
(4, '2', '4'),
(5, '3', '1'),
(6, '3', '2'),
(7, '4', '2'),
(8, '4', '4'),
(9, '4', '7'),
(10, '5', '4'),
(11, '6', '4'),
(12, '7', '4'),
(13, '8', '3'),
(14, '8', '4'),
(15, '9', '4'),
(16, '10', '3'),
(17, '10', '4'),
(18, '10', '6'),
(19, '11', '4'),
(20, '12', '3'),
(21, '12', '4'),
(22, '12', '6'),
(23, '13', '4'),
(24, '14', '4'),
(25, '15', '2'),
(26, '15', '4'),
(27, '16', '4'),
(28, '17', '4'),
(29, '18', '4'),
(30, '19', '2'),
(31, '19', '4'),
(32, '20', '3'),
(33, '20', '3'),
(34, '20', '7'),
(35, '21', '1'),
(36, '21', '4'),
(37, '21', '7'),
(38, '22', '1'),
(39, '22', '3'),
(40, '22', '4'),
(41, '23', '3'),
(42, '23', '4'),
(43, '23', '6'),
(44, '24', '1'),
(45, '24', '4'),
(46, '25', '4'),
(47, '25', '5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
