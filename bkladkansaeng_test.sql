-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 05:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkladkansaeng_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BOOK_ID` int(8) NOT NULL,
  `BOOK_CATEGORY` varchar(4) DEFAULT NULL,
  `BOOK_ISBN` varchar(13) DEFAULT NULL,
  `BOOK_NAME` varchar(30) DEFAULT NULL,
  `BOOK_AUTHOR` varchar(30) DEFAULT NULL,
  `BOOK_PRICE` int(4) DEFAULT NULL,
  `BOOK_AMOUNT` int(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BOOK_ID`, `BOOK_CATEGORY`, `BOOK_ISBN`, `BOOK_NAME`, `BOOK_AUTHOR`, `BOOK_PRICE`, `BOOK_AMOUNT`) VALUES
(1, '600', '6746459624', 'Fundamentals of Wavelets', 'Goswami, Jaideva', 1003, 1),
(2, '500', '5094226541', 'Data Smart', 'Foreman, John', 955, 1),
(3, '100', '4820826425', 'God Created the Integers', 'Hawking, Stephen', 593, 1),
(4, '400', '2796318524', 'Superfreakonomics', 'Dubner, Stephen', 1311, 1),
(5, '700', '9492368064', 'Orientalism', 'Said, Edward', 720, 1),
(8, '200', '3594503135', 'Drunkard\'s Walk, The', 'Mlodinow, Leonard', 1483, 1),
(11, '800', '1756024270', 'Data Scientists at Work', 'Sebastian Gutierrez', 819, 1),
(12, '800', '3904209167', 'Slaughterhouse Five', 'Vonnegut, Kurt', 1049, 1),
(13, '000', '3693839484', 'Birth of a Theorem', 'Villani, Cedric', 1255, 1),
(15, '200', '4931601890', 'Age of Wrath, The', 'Eraly, Abraham', 1161, 1),
(16, '300', '1863110186', 'Trial, The', 'Kafka, Frank', 1302, 1),
(17, '600', '1035722585', 'Statistical Decision Theory\'', 'Pratt, John', 1164, 1),
(18, '000', '6854796930', 'Data Mining Handbook', 'Nisbet, Robert', 1244, 1),
(19, '900', '8209999214', 'New Machiavelli, The', 'Wells, H. G.', 867, 1),
(20, '500', '4839777195', 'Physics & Philosophy', 'Heisenberg, Werner', 1078, 2),
(21, '000', '1799560441', 'Making Software', 'Oram, Andy', 113, 1),
(22, '900', '4017920705', 'Analysis, Vol I', 'Tao, Terence', 929, 1),
(23, '200', '7234431430', 'Machine Learning for Hackers', 'Conway, Drew', 1212, 1),
(24, '900', '6131989575', 'Signal and the Noise, The', 'Silver, Nate', 1168, 1),
(25, '100', '2894634145', 'Python for Data Analysis', 'McKinney, Wes', 666, 1),
(26, '200', '3083458347', 'Introduction to Algorithms', 'Cormen, Thomas', 1437, 1),
(27, '200', '6335876728', 'Beautiful and the Damned, The', 'Deb, Siddhartha', 142, 1),
(28, '300', '1373827710', 'Outsider, The', 'Camus, Albert', 998, 1),
(31, '600', '8766610532', 'Wealth of Nations, The', 'Smith, Adam', 992, 1),
(32, '400', '2862071528', 'Pillars of the Earth, The', 'Follett, Ken', 1282, 1),
(33, '700', '4213869474', 'Mein Kampf', 'Hitler, Adolf', 610, 1),
(34, '400', '8238110335', 'Tao of Physics, The', 'Capra, Fritjof', 1443, 1),
(36, '200', '9343607032', 'Farewell to Arms, A', 'Hemingway, Ernest', 660, 1),
(37, '000', '2742695362', 'Veteran, The', 'Forsyth, Frederick', 1110, 1),
(38, '300', '8792196667', 'False Impressions', 'Archer, Jeffery', 1115, 1),
(39, '400', '9470541952', 'Last Lecture, The', 'Pausch, Randy', 675, 1),
(40, '700', '6516207607', 'Return of the Primitive', 'Rand, Ayn', 698, 1),
(41, '900', '4395596641', 'Jurassic Park', 'Crichton, Michael', 325, 1),
(42, '600', '3523437024', 'Russian Journal, A', 'Steinbeck, John', 519, 1),
(44, '000', '6540943008', 'Freakonomics', 'Dubner, Stephen', 129, 1),
(45, '000', '3230916123', 'Hidden Connections, The', 'Capra, Fritjof', 1303, 1),
(46, '500', '7253271165', 'Story of Philosophy, The', 'Durant, Will', 1001, 1),
(47, '000', '1534988858', 'Asami Asami', 'Deshpande, P L', 293, 1),
(48, '800', '1069596396', 'Journal of a Novel', 'Steinbeck, John', 1226, 1),
(49, '400', '9361782301', 'Once There Was a War', 'Steinbeck, John', 1456, 1),
(50, '200', '1770912037', 'Moon is Down, The', 'Steinbeck, John', 149, 1),
(51, '000', '1523914200', 'Brethren, The', 'Grisham, John', 1327, 1),
(52, '400', '3927519154', 'In a Free State', 'Naipaul, V. S.', 663, 1),
(53, '400', '7087166158', 'Catch 22', 'Heller, Joseph', 1112, 1),
(54, '800', '7156381288', 'Complete Mastermind, The', 'BBC', 1248, 1),
(55, '200', '5236615879', 'Dylan on Dylan', 'Dylan, Bob', 497, 1),
(57, '900', '7288984300', 'Textbook of Economic Theory', 'Stonier, Alfred', 1066, 1),
(58, '000', '9134440917', 'Econometric Analysis', 'Greene, W. H.', 1482, 1),
(59, '000', '3381530561', 'Learning OpenCV', 'Bradsky, Gary', 1233, 1),
(60, '700', '4130684418', 'Data Structures Using C & C++', 'Tanenbaum, Andrew', 1111, 1),
(63, '600', '4524514015', 'Let Us C', 'Kanetkar, Yashwant', 800, 1),
(64, '800', '9932851132', 'Amulet of Samarkand, The', 'Stroud, Jonathan', 879, 1),
(65, '200', '6620992706', 'Crime and Punishment', 'Dostoevsky, Fyodor', 1242, 1),
(66, '800', '9669628841', 'Angels & Demons', 'Brown, Dan', 1121, 1),
(67, '300', '5958144440', 'Argumentative Indian, The', 'Sen, Amartya', 918, 1),
(68, '700', '1958976938', 'Sea of Poppies', 'Ghosh, Amitav', 1368, 1),
(69, '900', '3474182447', 'Idea of Justice, The', 'Sen, Amartya', 335, 1),
(70, '500', '6492931281', 'Raisin in the Sun, A', 'Hansberry, Lorraine', 861, 1),
(71, '300', '8607037293', 'All the President\'s Men', 'Woodward, Bob', 216, 1),
(72, '000', '8557246218', 'Prisoner of Birth, A', 'Archer, Jeffery', 1225, 1),
(73, '100', '1176619942', 'Scoop!', 'Nayar, Kuldip', 1490, 1),
(74, '200', '3572935140', 'Ahe Manohar Tari', 'Deshpande, Sunita', 821, 1),
(75, '800', '5717370245', 'Last Mughal, The', 'Dalrymple, William', 400, 1),
(77, '500', '8431337640', 'Radiowaril Bhashane & Shrutika', 'Deshpande, P L', 1406, 1),
(78, '000', '2948097110', 'Gun Gayin Awadi', 'Deshpande, P L', 407, 1),
(79, '300', '5331275478', 'Aghal Paghal', 'Deshpande, P L', 1053, 1),
(80, '700', '7633938641', 'Maqta-e-Ghalib', 'Garg, Sanjay', 1184, 1),
(81, '900', '3800679094', 'Beyond Degrees', 'Kale, V P', 935, 1),
(82, '800', '6707623265', 'Manasa', 'Kale, V P', 1041, 1),
(84, '800', '3312472318', 'World\'s Greatest Trials, The', 'Tharoor, Shashi', 1009, 1),
(85, '600', '6217359588', 'Great Indian Novel, The', 'Tharoor, Shashi', 1116, 1),
(86, '700', '3353899855', 'O Jerusalem!', 'Lapierre, Dominique', 183, 1),
(87, '300', '9542208440', 'City of Joy, The', 'Lapierre, Dominique', 835, 1),
(88, '800', '5746014095', 'Freedom at Midnight', 'Lapierre, Dominique', 148, 1),
(89, '100', '8689768009', 'Winter of Our Discontent, The', 'Steinbeck, John', 326, 1),
(90, '700', '8891036970', 'On Education', 'Russell, Bertrand', 1078, 1),
(91, '400', '9748683532', 'Free Will', 'Harris, Sam', 189, 1),
(92, '500', '1116617210', 'Bookless in Baghdad', 'Tharoor, Shashi', 715, 1),
(93, '900', '5751023242', 'Case of the Lame Canary, The', 'Gardner, Earle Stanley', 242, 1),
(94, '100', '7387606587', 'Theory of Everything, The', 'Hawking, Stephen', 304, 1),
(95, '300', '3617088309', 'New Markets & Other Essays', 'Drucker, Peter', 837, 1),
(96, '200', '8913821877', 'Electric Universe', 'Bodanis, David', 509, 1),
(97, '500', '2418805867', 'Hunchback of Notre Dame, The', 'Hugo, Victor', 251, 1),
(98, '400', '3871142735', 'Burning Bright', 'Steinbeck, John', 1459, 1),
(99, '900', '5873484112', 'Age of Discontuinity, The', 'Drucker, Peter', 340, 1),
(100, '800', '2739353831', 'Doctor in the Nude', 'Gordon, Richard', 1195, 1),
(101, '900', '7558120354', 'Down and Out in Paris & London', 'Orwell, George', 1280, 1),
(102, '100', '2591378771', 'Identity & Violence', 'Sen, Amartya', 744, 1),
(103, '200', '1036837564', 'Beyond the Three Seas', 'Dalrymple, William', 163, 1),
(105, '300', '7020086926', 'Talking Straight', 'Iacoca, Lee', 694, 1),
(107, '600', '4148942699', 'Phantom of Manhattan, The', 'Forsyth, Frederick', 137, 1),
(108, '600', '5340888611', 'Ashenden of The British Agent', 'Maugham, William S', 1009, 1),
(111, '400', '4579247346', 'We the Living', 'Rand, Ayn', 119, 1),
(113, '200', '6468807675', 'History of Western Philosophy', 'Russell, Bertrand', 182, 1),
(114, '000', '3990270921', 'Selected Short Stories', 'Russell, Bertrand', 1152, 1),
(115, '300', '2106581232', 'Rationality & Freedom', 'Sen, Amartya', 796, 1),
(117, '700', '5864071419', 'Uncommon Wisdom', 'Capra, Fritjof', 718, 1),
(118, '900', '9443114088', 'One', 'Bach, Richard', 834, 1),
(119, '600', '5544239415', 'Karl Marx Biography', 'Bach, Richard', 852, 1),
(120, '500', '5081222741', 'To Sir With Love', 'Braithwaite', 1400, 1),
(121, '000', '6641554051', 'Half A Life', 'Naipaul, V S', 1488, 1),
(122, '000', '2936875643', 'Discovery of India, The', 'Nehru, Jawaharlal', 763, 1),
(123, '500', '5950155717', 'Apulki', 'Deshpande, P L', 694, 1),
(124, '000', '9652889151', 'Unpopular Essays', 'Russell, Bertrand', 606, 1),
(125, '800', '9621528152', 'Deceiver, The', 'Forsyth, Frederick', 338, 1),
(126, '400', '4831455486', 'Veil: Secret Wars of the CIA', 'Woodward, Bob', 1204, 1),
(127, '200', '7998197701', 'Char Shabda', 'Deshpande, P L', 509, 1),
(128, '000', '3120578341', 'Rosy is My Relative', 'Durrell, Gerald', 993, 1),
(129, '400', '3276055405', 'Moon and Sixpence, The', 'Maugham, William S', 433, 1),
(130, '400', '9644161252', 'Political Philosophers', 'Wells, H G', 310, 1),
(131, '800', '5353863644', 'Short History of the World, A', 'Wells, H G', 729, 1),
(132, '200', '2122946450', 'Trembling of a Leaf, The', 'Maugham, William S', 869, 1),
(133, '800', '4845038444', 'Doctor on the Brain', 'Gordon, Richard', 422, 1),
(135, '000', '4986021315', 'Pattern Classification', 'Duda, Hart', 1376, 1),
(136, '000', '1614072088', 'From Beirut to Jerusalem', 'Friedman, Thomas', 807, 1),
(137, '700', '7100372021', 'Code Book, The', 'Singh, Simon', 1229, 1),
(138, '800', '7972685951', 'Age of the Warrior, The', 'Fisk, Robert', 1227, 1),
(139, '600', '7632759452', 'Final Crisis', 'Tao, Terence', 1271, 1),
(140, '600', '6532468061', 'Killing Joke, The', 'Eddins, Steve', 1477, 1),
(141, '800', '7463055969', 'Flashpoint', 'Orwell, George', 1336, 1),
(142, '200', '5037230814', 'Batman Earth One', 'Dostoevsky, Fyodor', 282, 1),
(143, '800', '2436020521', 'Crisis on Infinite Earths', 'Dickens, Charles', 847, 1),
(144, '300', '1601586792', 'Numbers Behind Numb3rs, The', 'Devlin, Keith', 293, 1),
(145, '700', '7014087148', 'Superman Earth One - 1', 'Larsson, Steig', 1215, 1),
(146, '800', '9502120491', 'Superman Earth One - 2', 'Larsson, Steig', 770, 1),
(149, '300', '1652510111', 'Death of Superman, The', 'Steinbeck, John', 1316, 1),
(150, '800', '1214022333', 'History of the DC Universe', 'Steinbeck, John', 1090, 1),
(151, '800', '4559597751', 'Batman: The Long Halloween', 'Steinbeck, John', 352, 1),
(152, '000', '2919988009', 'Life in Letters, A', 'Steinbeck, John', 515, 1),
(153, '700', '7274302778', 'Information, The', 'Gleick, James', 829, 1),
(155, '300', '5973589008', 'Elements of Information Theory', 'Thomas, Joy', 304, 1),
(156, '600', '9712033698', 'Power Electronics - Rashid', 'Rashid, Muhammad', 1267, 1),
(157, '000', '6253877479', 'Power Electronics - Mohan', 'Mohan, Ned', 916, 1),
(158, '900', '2370311316', 'Neural Networks', 'Haykin, Simon', 1389, 1),
(159, '500', '1144667319', 'Grapes of Wrath, The', 'Steinbeck, John', 1189, 1),
(160, '000', '5419311117', 'Vyakti ani Valli', 'Deshpande, P L', 942, 1),
(161, '900', '3131566062', 'Statistical Learning Theory', 'Vapnik, Vladimir', 1040, 1),
(167, '800', '3366918723', 'Mossad', 'Baz-Zohar, Michael', 383, 1),
(168, '900', '4976263033', 'Jim Corbett Omnibus', 'Corbett, Jim', 572, 1),
(169, '500', '1130228321', '20000 Leagues Under the Sea', 'Verne, Jules', 1191, 1),
(170, '000', '7730691534', 'Batatyachi Chal', 'Deshpande P L', 1476, 1),
(171, '300', '2469069371', 'Hafasavnuk', 'Deshpande P L', 697, 1),
(172, '700', '5055396770', 'Urlasurla', 'Deshpande P L', 663, 1),
(173, '900', '6449190461', 'Pointers in C', 'Kanetkar, Yashwant', 1115, 1),
(174, '800', '1168081682', 'Cathedral and the Bazaar, The', 'Raymond, Eric', 471, 1),
(175, '200', '5471335265', 'Design with OpAmps', 'Franco, Sergio', 927, 1),
(176, '800', '6914552340', 'Think Complexity', 'Downey, Allen', 277, 1),
(177, '600', '6589448530', 'Devil\'s Advocate, The', 'West, Morris', 1336, 1),
(178, '700', '3991377540', 'Ayn Rand Answers', 'Rand, Ayn', 613, 1),
(179, '300', '2285296904', 'Philosophy: Who Needs It', 'Rand, Ayn', 205, 1),
(180, '800', '9041000733', 'World\'s Great Thinkers, The', 'Janert, Phillip', 1418, 1),
(182, '700', '1832053279', 'Broca\'s Brain', 'Sagan, Carl', 680, 1),
(183, '400', '4171929571', 'Men of Mathematics', 'Bell, E T', 607, 1),
(186, '100', '4298099651', 'Arthashastra, The', 'Kautiyla', 1449, 1),
(187, '300', '7880738491', 'We the People', 'Palkhivala', 219, 1),
(188, '200', '8629802723', 'We the Nation', 'Palkhivala', 372, 1),
(189, '500', '6079747271', 'Courtroom Genius, The', 'Sorabjee', 265, 1),
(190, '400', '6586267891', 'Dongri to Dubai', 'Zaidi, Hussain', 403, 1),
(191, '900', '3710095638', 'History of England, Foundation', 'Ackroyd, Peter', 140, 1),
(192, '800', '3188710513', 'City of Djinns', 'Dalrymple, William', 1139, 1),
(193, '900', '9005989761', 'India\'s Legal System', 'Nariman', 585, 1),
(194, '100', '8033053564', 'More Tears to Cry', 'Sassoon, Jean', 1078, 1),
(195, '200', '8817551351', 'Ropemaker, The', 'Dickinson, Peter', 642, 1),
(196, '200', '4394264281', 'Angels & Demons', 'Brown, Dan', 1308, 1),
(197, '300', '9235576590', 'Judge, The', 'Brown, Dan', 822, 1),
(198, '700', '4188671962', 'Attorney, The', 'Machiavelli', 1004, 1),
(199, '600', '4940551711', 'Prince, The', 'Machiavelli', 540, 1),
(200, '600', '8970143600', 'Eyeless in Gaza', 'Huxley, Aldous', 808, 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `BOOK_ID` int(8) NOT NULL,
  `MEMBER_ID` int(8) NOT NULL,
  `LIBRARIAN_ID` varchar(8) NOT NULL,
  `BORROW_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`BOOK_ID`, `MEMBER_ID`, `LIBRARIAN_ID`, `BORROW_DATE`) VALUES
(4, 58011210, '61003', '2019-05-25 23:20:17'),
(23, 58011262, '61003', '2019-05-25 23:21:07'),
(31, 58011300, '61003', '2019-05-25 23:21:22'),
(34, 58020455, '61003', '2019-05-25 23:21:41'),
(37, 58020612, '61003', '2019-05-25 23:21:57'),
(40, 58020612, '61003', '2019-05-25 23:22:04'),
(44, 58020734, '61003', '2019-05-25 23:22:15'),
(45, 58031258, '61003', '2019-05-25 23:22:30'),
(48, 58041350, '61003', '2019-05-25 23:23:24'),
(49, 58031346, '61003', '2019-05-25 23:22:45'),
(50, 58041500, '61003', '2019-05-25 23:23:47'),
(51, 58041265, '61003', '2019-05-25 23:23:00'),
(52, 58041671, '61003', '2019-05-25 23:24:10'),
(54, 58050453, '61003', '2019-05-25 23:24:22'),
(55, 58050453, '61003', '2019-05-25 23:24:34'),
(57, 58050543, '61003', '2019-05-25 23:25:02'),
(58, 58051022, '61003', '2019-05-25 23:25:18'),
(59, 58051022, '61003', '2019-05-25 23:25:26'),
(60, 58051022, '61003', '2019-05-25 23:25:32'),
(64, 59011365, '61003', '2019-05-25 23:25:56'),
(67, 58051457, '61003', '2019-05-25 23:26:14'),
(70, 58051457, '61003', '2019-05-25 23:26:23'),
(72, 58051457, '61003', '2019-05-25 23:26:36'),
(74, 59011365, '61003', '2019-05-25 23:26:49'),
(80, 59011365, '61003', '2019-05-25 23:27:03'),
(84, 59011884, '61003', '2019-05-25 23:28:24'),
(87, 59011884, '61003', '2019-05-25 23:28:30'),
(91, 59020334, '61003', '2019-05-25 23:34:17'),
(93, 59020450, '61003', '2019-05-25 23:34:32'),
(96, 59020450, '61003', '2019-05-25 23:35:10'),
(100, 59030455, '61003', '2019-05-25 23:35:28'),
(105, 59030455, '61003', '2019-05-25 23:35:37'),
(111, 59030785, '61003', '2019-05-25 23:36:05'),
(114, 59040987, '61003', '2019-05-25 23:36:43'),
(119, 59040987, '61003', '2019-05-25 23:36:52'),
(121, 60010317, '61003', '2019-05-25 23:37:08'),
(125, 60020216, '61003', '2019-05-25 23:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `HISTORY_ID` int(8) NOT NULL,
  `BOOK_ID` int(8) NOT NULL,
  `MEMBER_ID` varchar(8) NOT NULL,
  `LIBRARIAN_ID` varchar(8) NOT NULL,
  `HISTORY_DATE` datetime NOT NULL,
  `RETURN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow_history`
--

INSERT INTO `borrow_history` (`HISTORY_ID`, `BOOK_ID`, `MEMBER_ID`, `LIBRARIAN_ID`, `HISTORY_DATE`, `RETURN_DATE`) VALUES
(7, 5, '60020483', '47001', '2019-05-25 22:31:19', '2019-05-25 19:05:03'),
(8, 20, '59020560', '47001', '2019-05-25 22:49:45', '2019-05-25 19:24:18'),
(10, 20, '58011233', '47001', '2019-05-25 22:58:31', '2019-05-25 19:25:40'),
(11, 5, '58011300', '47001', '2019-05-25 22:27:10', '2019-05-25 19:28:32'),
(12, 21, '59020560', '47001', '2019-05-25 22:42:59', '2019-05-25 19:32:56'),
(13, 5, '58011262', '47001', '2019-05-25 22:26:59', '2019-05-25 19:34:52'),
(14, 5, '58011262', '47001', '2019-05-26 02:37:26', '2019-05-25 19:37:42'),
(16, 20, '58011236', '47001', '2019-05-26 18:45:23', '2019-05-26 11:55:44'),
(17, 20, '58011236', '47001', '2019-05-26 18:57:33', '2019-05-26 11:58:21'),
(20, 28, '58011234', '47001', '2019-05-26 06:20:49', '2019-05-26 12:13:20'),
(21, 28, '58011235', '47001', '2019-05-26 19:14:38', '2019-05-26 12:15:08'),
(22, 28, '58011235', '47001', '2019-05-26 19:17:11', '2019-05-26 12:18:10'),
(23, 28, '58011235', '47001', '2019-05-26 20:14:53', '2019-05-26 13:27:29'),
(24, 28, '58011235', '47001', '2019-05-26 20:14:53', '2019-05-26 13:29:05'),
(25, 28, '58011235', '47001', '2019-05-26 20:29:37', '2019-05-26 13:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `LIBRARIAN_ID` varchar(8) NOT NULL,
  `LIBRARIAN_NAME` varchar(30) DEFAULT NULL,
  `LIBRARIAN_SURNAME` varchar(30) DEFAULT NULL,
  `LIBRARIAN_GENDER` varchar(1) DEFAULT NULL,
  `LIBRARIAN_ BIRTHDAY` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`LIBRARIAN_ID`, `LIBRARIAN_NAME`, `LIBRARIAN_SURNAME`, `LIBRARIAN_GENDER`, `LIBRARIAN_ BIRTHDAY`) VALUES
('47001', 'Aria ', 'Ryan', 'F', '1980-10-02'),
('48001', 'Lane ', 'Olson', 'F', '1982-05-03'),
('50001', 'Sasha ', 'Crosby', 'F', '1981-03-30'),
('54001', 'Talon ', 'Stuart', 'M', '1985-08-22'),
('55001', 'Monica ', 'Hester', 'F', '1990-07-10'),
('56001', 'Riley ', 'Lester', 'F', '1989-07-15'),
('60001', 'Matthew ', 'Aydin ', 'M', '1989-01-01'),
('61001', 'Axel ', 'Jennings', 'F', '1992-04-06'),
('61002', 'Jan ', 'Kirby', 'F', '1990-12-25'),
('61003', 'Kennedy ', 'Duncan', 'M', '1887-11-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`HISTORY_ID`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`LIBRARIAN_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BOOK_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `HISTORY_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
