-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2018 at 03:24 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batch_name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `batch_president` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_name`, `year`, `chapter`, `batch_president`) VALUES
(1, 'Valyrian', 2017, 'Iligan', 'Mohammad Manarondong'),
(2, 'Regalais', 2017, 'Iligan', 'Alleson Karl Daroi'),
(5, 'Unlisted', 0, 'unknown', ''),
(7, '14+1 Warriors', 2002, 'Iligan', 'Rommel Jason Zalsos'),
(8, 'Red Ants', 2004, 'Iligan', 'Ronald C. Lara'),
(9, 'Red Horse', 2013, 'Iligan', 'Al Husayn L.  Sanguila '),
(10, 'Kapit Bisig', 2013, 'Iligan', 'Cpriano Baron'),
(11, 'Kampilan', 2014, 'Iligan', ''),
(12, 'Vanguardia', 2015, 'Iligan', 'Amer Hussien Manaros'),
(13, 'Ad Victoriam', 2016, 'Iligan', 'Solaiman Tataro '),
(14, 'Unlisted', 0, 'GenSan', ''),
(15, 'Unlisted', 2000, 'GenSan', ''),
(16, 'Unlisted', 2001, 'GenSan', ''),
(17, 'Unlisted', 2002, 'GenSan', ''),
(18, 'Unlisted', 2003, 'GenSan', ''),
(19, 'Unlisted', 2004, 'GenSan', ''),
(20, 'Unlisted', 2005, 'GenSan', ''),
(21, 'Unlisted', 2006, 'GenSan', ''),
(22, 'Unlisted', 2007, 'GenSan', ''),
(23, 'Unlisted', 2008, 'GenSan', ''),
(24, 'Unlisted', 2010, 'GenSan', ''),
(25, 'Unlisted', 2009, 'GenSan', ''),
(26, 'Unlisted', 2011, 'GenSan', ''),
(27, 'Unlisted', 2012, 'GenSan', ''),
(28, 'Unlisted', 2013, 'GenSan', ''),
(29, 'Unlisted', 2015, 'GenSan', ''),
(30, 'Unlisted', 2016, 'GenSan', ''),
(31, 'Unlisted', 2017, 'GenSan', ''),
(32, 'Gryffindors', 2009, 'Iligan', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `featured_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `title`, `message`, `slug`, `status`, `featured_image`) VALUES
(1, 333, 'This is a first post', 'This is a first blog post', 'this-is-a-first-post', 'okay', ''),
(2, 59, 'title', 'message', 'title', 'status', 'featured_image'),
(3, 68, 'Chodang University', 'Universidade de Passo Fundo', 'chodang-university', 'Academy of Sports and Physical Training', 'http://dummyimage.com/220x222.jpg/cc0000/ffffff'),
(4, 69, 'Hannan University', 'Tamil Nadu Dr. M.G.R. Medical University', 'hannan-university', 'Kaunas University of Technology', 'http://dummyimage.com/223x236.jpg/cc0000/ffffff'),
(5, 25, 'Institute of Management and Business Technology', 'Sylhet International University', 'institute-of-management-and-business-technology', 'Waseda University', 'http://dummyimage.com/137x241.jpg/cc0000/ffffff'),
(6, 26, 'Abfi Institute Perbanas Jakarta', 'COMSATS Institute of Information Technology, Attock', 'abfi-institute-perbanas-jakarta', 'Thomas A. Edison State College', 'http://dummyimage.com/204x172.jpg/dddddd/000000'),
(7, 27, 'Chinese People\'s Public Security University', 'Universidad EAFIT', 'chinese-peoples-public-security-university', 'Gokhale Institute of Politics and Economics', 'http://dummyimage.com/135x233.bmp/dddddd/000000'),
(8, 58, 'Vancouver Community College', 'Sichuan University', 'vancouver-community-college', 'Aikoku Gakuen University', 'http://dummyimage.com/136x106.jpg/dddddd/000000'),
(9, 30, 'California Polytechnic State University - San Luis Obispo', 'Eastern Kentucky University', 'california-polytechnic-state-university-san-luis-obispo', 'Sultan Salahuddin Abdul Aziz Shah Polytechnic', 'http://dummyimage.com/104x167.png/ff4444/ffffff'),
(11, 36, 'University of Mississippi Medical Center', 'El Shorouk Academy', 'university-of-mississippi-medical-center', 'Universiti Malaysia Perlis', 'http://dummyimage.com/104x168.jpg/ff4444/ffffff'),
(26, 26, 'Baker College of Owosso', 'University of Mississippi Medical Center', 'baker-college-of-owosso', 'Mongolian State University of Agriculture', 'http://dummyimage.com/156x231.png/5fa2dd/ffffff'),
(28, 28, 'William Mitchell College of Law', 'Lebanese American University', 'william-mitchell-college-of-law', 'Mimar Sinan University', 'http://dummyimage.com/138x129.jpg/cc0000/ffffff'),
(29, 30, 'Universidad Champagnat', 'Instituto Superior Minero Metalúrgico \"Dr. Antonio Núñez Jiménez\"', 'universidad-champagnat', 'Technical University of Liberec', 'http://dummyimage.com/209x201.bmp/ff4444/ffffff'),
(30, 30, 'Christchurch Polytechnic Institute of Technology', 'Tokuyama University', 'christchurch-polytechnic-institute-of-technology', 'Universidade Federal de Sergipe', 'http://dummyimage.com/175x235.png/dddddd/000000'),
(31, 31, 'Universiti Malaysia Kelantan', 'Hanoi University of Mining and Geology', 'universiti-malaysia-kelantan', 'Europa Fachhochschule Fresenius', 'http://dummyimage.com/138x190.png/dddddd/000000'),
(32, 32, 'Grodno State Agrarian University', 'Southern Polytechnic State Univerisity', 'grodno-state-agrarian-university', 'Guangzhou Academy of Fine Art', 'http://dummyimage.com/236x206.bmp/ff4444/ffffff'),
(33, 33, 'Hacettepe University', 'Kolej Universiti Insaniah', 'hacettepe-university', 'St. Petersburg State University', 'http://dummyimage.com/135x157.bmp/5fa2dd/ffffff'),
(34, 34, 'Fiji National University ', 'Yunnan Agriculture University', 'fiji-national-university', 'Buddhasravaka Bhikshu University', 'http://dummyimage.com/201x194.jpg/ff4444/ffffff'),
(35, 35, 'Hogeschool Antwerpen', 'Brickfields Asia College', 'hogeschool-antwerpen', 'Nara Women\'s University', 'http://dummyimage.com/189x107.bmp/dddddd/000000'),
(37, 37, 'University of Tasmania', 'The Kingdom University', 'university-of-tasmania', 'Yangtze Normal University', 'http://dummyimage.com/246x201.jpg/dddddd/000000'),
(38, 38, 'Hyogo University', 'Northwestern College Iowa', 'hyogo-university', 'Aktau State University', 'http://dummyimage.com/132x238.png/dddddd/000000'),
(39, 39, 'Kisii University', 'University of Newcastle-upon-Tyne', 'kisii-university', 'Technical University of Timisoara', 'http://dummyimage.com/109x157.jpg/ff4444/ffffff'),
(40, 40, 'Texas A&M University - Corpus Christi', 'Oklahoma State University - Institute of Technology', 'texas-am-university-corpus-christi', 'University of Madras', 'http://dummyimage.com/171x136.png/dddddd/000000'),
(41, 41, 'Roger Williams University', 'Adeyemi College of Education', 'roger-williams-university', 'Institución Universitaria Iberoamericana', 'http://dummyimage.com/187x142.bmp/5fa2dd/ffffff'),
(42, 42, 'National Institute of Technology, Calicut', 'Kyongju University', 'national-institute-of-technology-calicut', 'Shanghai Ouhua Vocational Technical College', 'http://dummyimage.com/175x110.bmp/5fa2dd/ffffff'),
(43, 43, 'Technical University in Kosice', 'Technische Universität München', 'technical-university-in-kosice', 'Virginia Union University', 'http://dummyimage.com/103x140.png/dddddd/000000'),
(44, 44, 'Wells College', 'Ecole Nationale Supérieure de Chimie de Paris', 'wells-college', 'Hebei University of Economics and Trade', 'http://dummyimage.com/169x234.bmp/ff4444/ffffff'),
(45, 45, 'Health sciences University of Mongolia', 'Fachhochschule Aschaffenburg', 'health-sciences-university-of-mongolia', 'Luzhou Medical College', 'http://dummyimage.com/233x155.bmp/5fa2dd/ffffff'),
(46, 46, 'University of Korca \"Fan Noli\"', 'Barclay College', 'university-of-korca-fan-noli', 'Gulbarga University', 'http://dummyimage.com/132x172.bmp/cc0000/ffffff'),
(47, 47, 'College of Technology at Jazan', 'Universidade Metropolitana de Santos', 'college-of-technology-at-jazan', 'Evangelische Fachhochschule für Sozialpädagogik der \"Diakonenanstalt des Rauhen Hauses\" Hamburg', 'http://dummyimage.com/247x178.png/cc0000/ffffff'),
(48, 48, 'Northern University Bangladesh', 'Institute of Teachers Education, Islamic Education', 'northern-university-bangladesh', 'Helsinki University of Technology', 'http://dummyimage.com/168x101.jpg/ff4444/ffffff'),
(49, 49, 'Shahrekord University', 'Tennessee Wesleyan College', 'shahrekord-university', 'Nagaland University', 'http://dummyimage.com/110x132.jpg/cc0000/ffffff'),
(50, 50, 'Griffith College', 'Armstrong Atlantic State University', 'griffith-college', 'Bangkok University', 'http://dummyimage.com/177x219.png/ff4444/ffffff'),
(51, 51, 'Standford Online University', 'Universidad Carlos III de Madrid', 'standford-online-university', 'Zagazig University', 'http://dummyimage.com/110x211.bmp/ff4444/ffffff'),
(52, 52, 'Jagannath University', 'University of Rajasthan', 'jagannath-university', 'Universidad Isaac Newton', 'http://dummyimage.com/136x207.jpg/ff4444/ffffff'),
(53, 53, 'Lane College', 'Punjab Engineering College Deemed University', 'lane-college', 'Metropolitan University', 'http://dummyimage.com/213x229.png/5fa2dd/ffffff'),
(54, 54, 'University of Cyprus', 'Babasaheb Bhimrao Ambedkar University', 'university-of-cyprus', 'Universidade do Estado de Santa Catarina', 'http://dummyimage.com/139x138.bmp/ff4444/ffffff'),
(55, 55, 'State University of New York at Stony Brook', 'Universidade Federal de Minas Gerais', 'state-university-of-new-york-at-stony-brook', 'The Robert Gordon University', 'http://dummyimage.com/236x124.jpg/ff4444/ffffff'),
(57, 57, 'Southwest University of Nationalities', 'Kathmandu University', 'southwest-university-of-nationalities', 'Universidad Adolfo Ibáñez', 'http://dummyimage.com/185x181.jpg/dddddd/000000'),
(58, 58, 'Sankei University', 'Science University of Tokyo in Yamaguchi', 'sankei-university', 'Kitasato University', 'http://dummyimage.com/184x126.jpg/dddddd/000000'),
(59, 59, 'Fine Arts Academy in Gdansk', 'Universitas 17 Agustus 1945 Cirebon', 'fine-arts-academy-in-gdansk', 'Universidade Metodista de Angola', 'http://dummyimage.com/195x221.png/cc0000/ffffff'),
(60, 60, 'Al-Nasser University', 'Colby-Sawyer College', 'al-nasser-university', 'Universidad Pedagógica Veracruzana', 'http://dummyimage.com/167x125.jpg/5fa2dd/ffffff'),
(61, 61, 'Kurashiki Sakuyo University', 'Iwate Prefectural University', 'kurashiki-sakuyo-university', 'University of Tulsa', 'http://dummyimage.com/103x196.bmp/ff4444/ffffff'),
(62, 62, 'Aarhus Technical College', 'Trinity College of Florida', 'aarhus-technical-college', 'Instituto Mauá de Tecnologia', 'http://dummyimage.com/178x229.bmp/cc0000/ffffff'),
(63, 63, 'Staffordshire University', 'Brock University', 'staffordshire-university', 'Notre Dame University', 'http://dummyimage.com/144x220.bmp/cc0000/ffffff'),
(64, 64, 'Uganda Martyr\'s University', 'Escuela Superiore de Administración Pública', 'uganda-martyrs-university', 'Ecole Nationale des Travaux Publics de l\'Etat', 'http://dummyimage.com/220x222.jpg/ff4444/ffffff'),
(65, 66, 'University of Akron', 'Universidade Federal do Rio Grande do Norte', 'university-of-akron', 'Wright Institute', 'http://dummyimage.com/175x121.png/cc0000/ffffff'),
(67, 67, 'Universidad Nacional de Piura', 'Rivier College', 'universidad-nacional-de-piura', 'Marij State Technical University', 'http://dummyimage.com/183x162.jpg/dddddd/000000'),
(68, 68, 'Union College Nebraska', 'Ecole Nationale Supérieure de Chimie de Lille', 'union-college-nebraska', 'Bergische Universität Gesamthochschule Wuppertal', 'http://dummyimage.com/167x164.png/dddddd/000000'),
(69, 69, 'Universidad de Talca', 'Technological University (Pyay)', 'universidad-de-talca', 'Chung Yuan Christian University', 'http://dummyimage.com/131x190.bmp/ff4444/ffffff'),
(70, 70, 'California College of Podiatric Medicine', 'Otaru University of Commerce', 'california-college-of-podiatric-medicine', 'John Cabot University', 'http://dummyimage.com/114x206.bmp/ff4444/ffffff'),
(71, 71, 'FAST - National University of Computer and Emerging Sciences (NUCES)', 'Hope Africa University', 'fast-national-university-of-computer-and-emerging-sciences-nuces', 'Anhui Technical College of Water Resources and Hydroelectric Power', 'http://dummyimage.com/155x192.jpg/cc0000/ffffff'),
(72, 72, 'Khalifa University', 'Indiana University - Southeast', 'khalifa-university', 'Brookdale Community College', 'http://dummyimage.com/206x130.jpg/ff4444/ffffff'),
(73, 73, 'City University', 'Uppsala University', 'city-university', 'Technical Institute of Dubnica in Dubnica nad Váhom', 'http://dummyimage.com/197x101.png/ff4444/ffffff'),
(74, 74, 'Hogeschool voor de Kunsten Utrecht (HKU)', 'Massachusetts College of Liberal Arts', 'hogeschool-voor-de-kunsten-utrecht-hku', 'Eugene Bible College', 'http://dummyimage.com/245x106.png/5fa2dd/ffffff'),
(75, 75, 'Universidad Nacional Experimental \"Francisco de Miranda\"', 'Université de Technologie de Compiègne', 'universidad-nacional-experimental-francisco-de-miranda', 'Chodang University', 'http://dummyimage.com/172x149.jpg/dddddd/000000'),
(77, 77, 'Cardinal Stritch University', 'Northwest Polytechnical University Xi\'an', 'cardinal-stritch-university', 'Universidad Pedagogica Nacional', 'http://dummyimage.com/230x133.bmp/dddddd/000000'),
(78, 78, 'Cyprus College', 'University of Ibadan', 'cyprus-college', 'Teacher Training College of Revalidation, Rehabilitation and Physical Education', 'http://dummyimage.com/232x225.png/dddddd/000000'),
(79, 79, 'Mississippi College', 'Polytechnic University, Westchester Graduate Center', 'mississippi-college', 'Alfred Adler Graduate School', 'http://dummyimage.com/249x116.jpg/dddddd/000000'),
(80, 80, 'Clark University', 'University of Kent at Canterbury', 'clark-university', 'Hawassa University', 'http://dummyimage.com/120x143.jpg/5fa2dd/ffffff'),
(81, 81, 'Benedictine University, Springfield College in Illinois', 'Henan Univeristy', 'benedictine-university-springfield-college-in-illinois', 'University of Molise', 'http://dummyimage.com/189x134.jpg/dddddd/000000'),
(83, 83, 'Washington University in St. Louis', 'Wesleyan College', 'washington-university-in-st-louis', 'Postgraduate Institute of Agriculture (PGIA)', 'http://dummyimage.com/204x177.bmp/dddddd/000000'),
(84, 84, 'Gurukul University', 'Kharkiv State Transport Technical University', 'gurukul-university', 'CollegeAmerica, Phoenix', 'http://dummyimage.com/223x174.jpg/cc0000/ffffff'),
(85, 85, 'Oberlin College', 'Nicholls State University', 'oberlin-college', 'Texas College', 'http://dummyimage.com/178x109.bmp/5fa2dd/ffffff'),
(86, 86, 'Botswana International University of Science & Technology', 'Universidad Católica Boliviana, Santa Cruz', 'botswana-international-university-of-science-technology', 'Seigakuin University', 'http://dummyimage.com/204x149.bmp/ff4444/ffffff'),
(87, 87, 'Technological Education Institute of Athens', 'Elmira College', 'technological-education-institute-of-athens', 'Xavier University of Louisiana', 'http://dummyimage.com/234x211.png/ff4444/ffffff'),
(88, 88, 'New Mexico Institute of Mining and Technology', 'Chestnut Hill College', 'new-mexico-institute-of-mining-and-technology', 'Kitakyushu University', 'http://dummyimage.com/165x204.png/dddddd/000000'),
(89, 89, 'Vermont Law School', 'Technological University (Lashio)', 'vermont-law-school', 'Kyoto Institute of Technology', 'http://dummyimage.com/187x184.bmp/5fa2dd/ffffff'),
(90, 90, 'Zhengzhou Grain University', 'Keller Graduate School of Management', 'zhengzhou-grain-university', 'Shaheed Rajaei Teacher Training University', 'http://dummyimage.com/151x214.png/5fa2dd/ffffff'),
(91, 91, 'Abasyn University Peshawar', 'Unity  University', 'abasyn-university-peshawar', 'Universidad de Puerto Rico, Cayey', 'http://dummyimage.com/183x229.bmp/cc0000/ffffff'),
(92, 92, 'College of Aeronautics', 'State University of New York Health Sience Centre Syracuse', 'college-of-aeronautics', 'Universidade Católica de Pernambuco', 'http://dummyimage.com/225x207.png/5fa2dd/ffffff'),
(93, 93, 'East China Jiao Tong University', 'Universidade Regional Integrada do Alto Uruguai e das Missões', 'east-china-jiao-tong-university', 'St. John Fisher College', 'http://dummyimage.com/159x164.jpg/dddddd/000000'),
(95, 95, 'Samar State University', 'Bergische Universität Gesamthochschule Wuppertal', 'samar-state-university', 'Universitas Pancasila', 'http://dummyimage.com/151x142.png/ff4444/ffffff'),
(96, 97, 'University of Sint Eustatius School of Medicine', 'Massachusetts Maritime Academy', 'university-of-sint-eustatius-school-of-medicine', 'Kirikkale University', 'http://dummyimage.com/203x184.png/ff4444/ffffff'),
(97, 97, 'United States Military Academy', 'Universidade Estadual do Piauí', 'united-states-military-academy', 'Universidad Nacional del Altiplano', 'http://dummyimage.com/182x110.png/dddddd/000000'),
(98, 98, 'Denison University', 'University of Nottingham', 'denison-university', 'Eberhard-Karls-Universität Tübingen', 'http://dummyimage.com/227x188.jpg/cc0000/ffffff'),
(99, 102, 'Hong Kong Baptist University', 'American Film Institute Center for Advanced Film and Television Studies', 'hong-kong-baptist-university', 'International University', 'http://dummyimage.com/136x139.bmp/cc0000/ffffff'),
(100, 101, 'Texas College', 'Northwood University, Texas Campus', 'texas-college', 'St. Petersburg State University of Telecommunication', 'http://dummyimage.com/181x249.png/ff4444/ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `ContactNumber` varchar(255) NOT NULL,
  `CurrentAddress` varchar(255) NOT NULL,
  `PermanentAddress` varchar(255) NOT NULL,
  `WorkHistory` varchar(255) NOT NULL,
  `SlaveName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `visible` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `AttyOrNot` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `batch_id`, `FirstName`, `LastName`, `ContactNumber`, `CurrentAddress`, `PermanentAddress`, `WorkHistory`, `SlaveName`, `username`, `password`, `hashed_password`, `visible`, `status`, `role`, `AttyOrNot`, `image`) VALUES
(14, 1, 'Cairoden ', 'Radiamoda', '09166457370', 'Iligan City', 'Iligan City', '', 'Abdul Wahid Bidin II', 'Cairoden', 'Radiamoda', '', '', 'activated', 'user', '', ''),
(15, 1, 'Freshan Noveth ', 'Alcaba', '09557118943', 'Nilo Obina Sr. Residence, Gate 3, Tulip St, Purok Mabuhay, Tubod, Iligan City, 9200,', 'Nilo Obina Sr. Residence, Gate 3, Tulip St, Purok Mabuhay, Tubod, Iligan City, 9200,', '', 'Elena Kagan', 'Freshan', 'Alcaba', '', '', 'activated', 'user', '', ''),
(20, 1, 'Karen Kristy', 'Ubanan', '09362349436', 'Iligan City', 'Iligan City', '', 'Irene Cortes', 'Karen', 'Ubanan', '', '', 'activated', 'user', '', ''),
(21, 1, 'Irish Louise', 'Dimitiman', '09952926426', 'Blk. 15 Lot 18 Steeltown, Sta. Elena, Iligan City', 'Blk. 15 Lot 18 Steeltown, Sta. Elena, Iligan City', '', 'Teresita De Castro', 'Irish', 'Dimitiman', '', '', 'activated', 'user', '', ''),
(22, 1, 'Althea', 'Quijano', '09363963100', 'Purok 5, Poblacion, Manticao Misamis Oriental', 'Purok 5, Poblacion, Manticao Misamis Oriental', '', 'Conchita Morales-Carpio', 'Althea', 'Quijano', '', '', 'activated', 'user', '', ''),
(23, 2, 'Alleson Karl', 'Daroi', '', 'Iligan City', 'Iligan City', '', 'Atilla The Hun', 'Alleson', 'Daroi', '', '', 'activated', 'user', '', ''),
(24, 1, 'Bea Fatima', 'Bangcola', '09157509233', 'Iligan City', 'Iligan City', '', 'Nimfa Vilches', 'Bea', 'Bangcola', '', '', 'activated', 'user', '', ''),
(25, 1, 'Aleah Hidaya A. Hadji', 'Rakhim', '09055748285', 'Iligan City', 'Marawi City', '', 'Miriam Defensor-Santiago II', 'Aleah', 'Rakhim', '', '', 'activated', 'user', '', ''),
(26, 2, 'Sittie Hadjara', 'Polangi', '', 'Iligan City', 'Iligan City', '', 'Mary Tudor', 'Sittie', 'Polangi', '', '', 'activated', 'user', '', ''),
(27, 2, 'Esnaira', 'Macabago', '', 'Iligan City', 'Iligan City', '', 'Diana Spencer', 'Esnaira', 'Macabago', '', '', 'activated', 'user', '', ''),
(28, 2, 'Natasha Nicole', 'Maki', '09276734730', 'Iligan City', 'Iligan City', '', 'Marie Antoinette', 'Natasha', 'Maki', '', '', 'activated', 'user', '', ''),
(30, 2, 'Norhaina', 'Dipatuan', '09177719975', 'Iligan City', 'Bacolod, Kalawi, Lanao Del Sur', '', 'Catherine The Great', 'Norhaina', 'Dipatuan', '', '', 'activated', 'user', '', ''),
(31, 2, 'Jaminah', 'Pangandag', '09064105620', 'Iligan City', 'Tubod, Lanao Del Norte', '', 'Estella Bernabe', 'Jaminah', 'Pangandag', '', '', 'activated', 'user', '', ''),
(32, 2, 'Kharleen Dela', 'Cruz', '', 'Iligan City', 'Iligan City', '', 'Maria Lourdes Sereno', 'Kharleen', 'Dela Cruz', '', '', 'activated', 'user', '', ''),
(33, 2, 'Sittie Najmah', 'Sambitory', '', 'Iligan City', 'Iligan City', '', 'Margareth Thatcher II', 'Sittie', 'Sambitory', '', '', 'activated', 'user', '', ''),
(34, 13, 'Mohammad Naim', 'Macapodi', '', 'Iligan City', 'Iligan City', '', '', 'Mohammad', 'Macapodi', '', '', 'activated', 'user', '', ''),
(35, 13, 'Johaima', 'Ditucalan', '', 'Iligan City', 'Iligan City', '', '', 'Johaima', 'Ditucalan', '', '', 'activated', 'user', '', ''),
(36, 13, 'Mara Beatrice', 'Mamauag', '', 'Iligan City', 'Iligan City', '', '', 'Mara', 'Mamauag', '', '', 'activated', 'user', '', ''),
(37, 13, 'Amer Al-Nashief', 'Manaros', '', 'Iligan City', 'Iligan City', '', '', 'Amer Al-Nashief', 'Manaros', '', '', 'activated', 'user', '', ''),
(38, 13, 'Van Ceasar', 'Openiano', '', 'Iligan City', 'Iligan City', '', '', 'Van', 'Openiano', '', '', 'activated', 'user', '', ''),
(39, 13, 'Solaiman', 'Tataro ', '', 'Iligan City', 'Iligan City', '', '', 'Solaiman', 'Tataro ', '', '', 'activated', 'user', '', ''),
(40, 12, 'Porma Yusoph Hadji', 'Datu', '', 'Iligan City', 'Iligan City', '', '', 'Porma', 'Datu', '', '', 'activated', 'user', '', ''),
(41, 12, 'Jhalal', 'Casan', '', 'Iligan City', 'Iligan City', '', '', 'Jhalal', 'Casan', '', '', 'activated', 'user', '', ''),
(42, 12, 'Faez', 'Camama', '', 'Iligan City', 'Iligan City', '', '', 'Faez', 'Camama', '', '', 'activated', 'user', '', ''),
(43, 12, 'Amer Hussien', 'Manaros', '', 'Iligan City', 'Iligan City', '', '', 'Hussien', 'Manaros', '', '', 'activated', 'user', '', ''),
(44, 11, 'Shinelyn', 'Mendoza', '', 'Iligan City', 'Iligan City', '', '', 'Shinelyn', 'Mendoza', '', '', 'activated', 'user', '', ''),
(45, 11, 'Sittie Nayda', 'Bantuas', '', 'Iligan City', 'Iligan City', '', '', 'Sittie', 'Bantuas', '', '', 'activated', 'user', '', ''),
(46, 11, 'Nasher', 'Dumagay', '', 'Iligan City', 'Iligan City', '', '', 'Nasher', 'Dumagay', '', '', 'activated', 'user', '', ''),
(47, 11, 'Haroun Al-Rashid', 'Usop', '', 'Iligan City', 'Iligan City', '', '', 'Haroun', 'Usop', '', '', 'activated', 'user', '', ''),
(48, 11, 'Ambor', 'Ambor', '', 'Iligan City', 'Iligan City', '', '', 'Ambor', 'Ambor', '', '', 'activated', 'user', '', ''),
(49, 11, 'Abdul Jabbar', 'Pangandaman', '', 'Iligan City', 'Iligan City', '', 'Abdul Wahid Bidin I', 'Abdul Jabbar', 'Pangandaman', '', '', 'activated', 'user', '', ''),
(50, 11, 'Bairoden', 'Renabor', '', 'Iligan City', 'Iligan City', '', 'Enrique Fernando I', 'Bairoden', 'Renabor', '', '', 'activated', 'user', '', ''),
(51, 11, 'Mohammad Nacif', 'Ampaso', '', 'Iligan City', 'Iligan City', '', '', 'Mohammad Nacif', 'Ampaso', '', '', 'activated', 'user', '', ''),
(52, 11, 'Asnar', 'Aniego', '', 'Iligan City', 'Iligan City', '', '', 'Asnar', 'Aniego', '', '', 'activated', 'user', '', ''),
(53, 10, 'Charmaigne', 'Inicio', '', 'Iligan City', 'Iligan City', '', '', 'Charmaigne', 'Inicio', '', '', 'activated', 'user', '', ''),
(54, 10, 'Farajibah', 'Tabuacar', '', 'Iligan City', 'Iligan City', '', '', 'Farajibah', 'Tabuacar', '', '', 'activated', 'user', '', ''),
(55, 10, 'Shelley', 'Lasmarias', '', 'Iligan City', 'Iligan City', '', 'Sandra Day O\'Connor I', 'Shelley', 'Lasmarias', '', '', 'activated', 'user', '', ''),
(56, 10, 'Janine', 'Capangpangan', '', 'Iligan City', 'Suarez, Iligan City', '', '', 'Janine', 'Capangpangan', '', '', 'activated', 'user', '', ''),
(57, 10, 'Shiela B.', 'Al-ag', '', 'Iligan City', 'Prospeidad, Agusan Del Sur', '', '', 'Shiela', 'Al-ag', '', '', 'activated', 'user', '', ''),
(58, 10, 'Karyl Mae B.', 'Otaza', '', 'Iligan City', 'Prospeidad, Agusan Del Sur', '', '', 'Karyl', 'Otaza', '', '', 'activated', 'user', '', ''),
(59, 10, 'Cpriano', 'Baron', '', 'Linamon, Iligan City', 'Iligan City', '', '', 'Cpriano', 'Baron', '', '', 'activated', 'user', '', ''),
(60, 9, 'Lainera M. ', 'Nassief - Manan', '09276737083', 'Iligan City', 'Madalum, Lanao Del Sur', '', 'Josefa Llanes Escoda', 'Lainera', 'Nassief-Manan', '', '', 'activated', 'user', '', ''),
(61, 9, 'Sorhaine M.', 'Azis', '09568354695', 'Cebu City', 'Pantao Ragat, Lanao Del Norte', '', 'Tandang Sora', 'Sorhaine', 'Azis', '', '', 'activated', 'user', '', ''),
(62, 9, 'Jamilla N.', 'Laguindab', '09263326391', 'Iligan City', 'Bacolod, Kalawi, Lanao Del Sur', '', 'Grace Poe I', 'Jamilla', 'Laguindab', '', '', 'activated', 'user', '', ''),
(63, 9, 'Loren Grace N.', 'Cordova', '', 'Cebu City', 'Cebu City', '', 'Gabriela Silang', 'Loren', 'Cordova', '', '', 'activated', 'user', '', ''),
(64, 9, 'Carisse A.', 'Orbe', '09161270410', 'Iligan City', 'Iligan City', '', 'Leila De Lima', 'Carisse', 'Orbe', '', '', 'activated', 'user', '', ''),
(66, 9, 'Mohaimen M.', 'Macaumbang', '09157825929', 'Cagayan De Oro City', 'Balo-I, Lanao Del Norte', '', 'Jose Rizal', 'Mohaimen', 'Macaumbang', '', '', 'activated', 'user', '', ''),
(67, 9, 'Amer Hassan B.', 'Usop', '09152181406', 'Iligan City', 'Tubod, Lanao Del Norte', '', 'Fidel V. Ramos', 'Amer', 'Usop', '', '', 'activated', 'user', '', ''),
(68, 9, 'Mark Jason T.', 'Cesar', '09164934712', 'Iligan City', 'Iligan City', '', 'Emillio Aguinaldo', 'Mark', 'Cesar', '', '', 'activated', 'user', '', ''),
(69, 9, 'Prince Hazzanhul Saddam D.', 'Jamil', '09052154898', 'Iligan City', 'Pagayawan, Lanao Del Sur', '', 'Andres Bonifacio', 'Prince', 'Jamil', '', '', 'activated', 'user', '', ''),
(70, 9, 'Al Husayn L. ', 'Sanguila ', '09273704752', 'Kauswagan, Lanao Del Norte', 'Kauswagan, Lanao Del Norte', '', 'Lapu-lapu', 'Al', 'Sanguila ', '', '', 'activated', 'user', '', ''),
(71, 8, 'Guilling', 'Macauyag', '', 'Iligan City', 'Iligan City', '', '', 'Guilling', 'Macauyag', '', '', 'activated', 'user', '', ''),
(72, 8, 'Reymond', 'Bago', '', 'Bukidnon', 'Bukidnon', '', 'Florentino Feliciano', 'Reymond', 'Bago', '', '', 'activated', 'user', '', ''),
(73, 8, 'Sammy', 'Naik', '', 'Baloi, Lanao Del Norte', 'Baloi, Lanao Del Norte', '', '', 'Sammy', 'Naik', '', '', 'activated', 'user', '', ''),
(74, 8, 'Joel', 'Taporco', '', 'Iligan City', 'Iligan City', '', '', 'Joel', 'Taporco', '', '', 'activated', 'user', '', ''),
(75, 8, 'Albert', 'Teano', '', 'Iligan City', 'Iligan City', '', '', 'Albert', 'Teano', '', '', 'activated', 'user', '', ''),
(76, 8, 'Alan', 'Baylon', '', 'Iligan City', 'Iligan City', '', '', 'Alan', 'Baylon', '', '', 'activated', 'user', '', ''),
(77, 8, 'Jamel', 'Sultan', '', 'Iligan City', 'Iligan City', '', 'Jose Benedicto Luna Reyes ', 'Jamel', 'Sultan', '', '', 'activated', 'user', '', ''),
(78, 8, 'Nestor', 'Ortiz', '', 'Iligan City', 'Iligan City', '', 'Hilario Davide', 'Nestor', 'Ortiz', '', '', 'activated', 'user', '', ''),
(79, 8, 'Ohara', 'Aliman-Guiang', '', 'Iligan City', 'Iligan City', '', '', 'Ohara', 'Aliman-Guiang', '', '', 'activated', 'user', 'yes', ''),
(80, 8, 'Daisy Jane', 'Labao-Asencion', '', 'Iligan City', 'Iligan City', '', '', 'Daisy', 'Labao-Asencion', '', '', 'activated', 'user', 'yes', ''),
(81, 8, 'Diana Rose', 'Diaz', '', 'Bukidnon', 'Bukidnon', '', 'Cecilia Muñoz-Palma', 'Diana', 'Diaz', '', '', 'activated', 'user', '', ''),
(82, 8, 'Diomiel A.', 'Basnig', '', 'Magallanes, Agusan Del Norte', 'Magallanes, Agusan Del Norte', '', '', 'Diomiel', 'Basnig', '', '', 'activated', 'user', '', ''),
(83, 8, 'Ronald C.', 'Lara', '09265428836', 'Iligan City', 'Sibagat, Agusan Del Sur', '', 'Hernani Perez', 'Ronald', 'Lara', '', '', 'activated', 'user', '', ''),
(84, 7, 'Danilo', 'Dumanduan', '', 'Iligan City', 'Iligan City', '', '', 'Danilo', 'Dumanduan', '', '', 'activated', 'user', '', ''),
(85, 7, 'Wilhelmo', 'Digamo', '', 'Iligan City', 'Iligan City', '', '', 'Wilhelmo', 'Digamo', '', '', 'activated', 'user', 'yes', ''),
(86, 7, 'Engelbert', 'Maneja Jr.', '', 'Iligan City', 'Iligan City', '', '', 'Engelbert', 'Maneja Jr.', '', '', 'activated', 'user', '', ''),
(87, 7, 'Isidro', 'Carumba', '', 'Iligan City', 'Iligan City', '', '', 'Isidro', 'Carumba', '', '', 'activated', 'user', '', ''),
(88, 7, 'Ronalyn', 'Tamayo-Pantaleon', '', 'Iligan City', 'Iligan City', '', '', 'Ronalyn', 'Tamayo-Pantaleon', '', '', 'activated', 'user', '', ''),
(89, 7, 'Kim Mari', 'Uy', '', 'Iligan City', 'Iligan City', '', '', 'Kim', 'Uy', '', '', 'activated', 'user', '', ''),
(90, 7, 'Nerieza', 'Lumahang-Caponong', '', 'Iligan City', 'Iligan City', '', '', 'Nerieza', 'Lumahang-Caponong', '', '', 'activated', 'user', '', ''),
(91, 7, 'Samuel', 'Caponong Jr.', '', 'Iligan City', 'Iligan City', '', '', 'Samuel', 'Caponong Jr.', '', '', 'activated', 'user', 'yes', ''),
(92, 7, 'Mabel', 'Enlabo-Abarca', '', 'Iligan City', 'Iligan City', '', '', 'Mabel', 'Enlabo-Abarca', '', '', 'activated', 'user', '', ''),
(93, 7, 'Bertrum', 'Abarca', '', 'Iligan City', 'Iligan City', '', '', 'Bertrum', 'Abarca', '', '', 'activated', 'user', '', ''),
(94, 7, 'Mary Faith', 'Balmatero', '', 'Iligan City', 'Iligan City', '', '', 'Mary', 'Balmatero', '', '', 'activated', 'user', '', ''),
(95, 7, 'Moamar', 'Desimban', '', 'Iligan City', 'Iligan City', '', '', 'Moamar', 'Desimban', '', '', 'activated', 'user', '', ''),
(97, 7, 'Rommel Jason', 'Zalsos', '', 'Iligan City', 'Iligan City', '', '', 'Rommel', 'Zalsos', '', '', 'activated', 'user', '', ''),
(98, 7, 'Abdanieh', 'Sabdullah', '', 'Iligan City', 'Iligan City', '', '', 'Abdanieh', 'Sabdullah', '', '', 'activated', 'user', '', ''),
(101, 14, 'Jaafar Al Siddiq', 'Nicart', '', '', '', '', '', 'Jaafar', 'Nicart', '', '', 'activated', 'user', '', ''),
(102, 14, 'Esmael U.', 'Andang', '', '', '', '', '', 'Esmael', 'Andang', '', '', 'activated', 'user', '', ''),
(104, 14, 'Nestor P.', 'Blace', '09164766461', 'Prk. 4 ?? Extension, Lanton Apopong, Gensan', 'Prk. 4 ?? Extension, Lanton Apopong, Gensan', '', '', 'Nestor', 'Blace', '', '', 'activated', 'user', '', ''),
(105, 14, 'Ryan L.', 'Ca-as, ', '', '', '', '', '', 'Ryan', 'Ca-as, ', '', '', 'activated', 'user', '', ''),
(106, 14, 'Henry B.', 'Dazo', '', '', '', '', '', 'Henry', 'Dazo', '', '', 'activated', 'user', '', ''),
(107, 14, 'Esteban G.', 'Di?o', '', '', '', '', '', 'Esteban', 'Di?o', '', '', 'activated', 'user', '', ''),
(109, 14, 'Inocencio Jr.', 'Escalada', '', '', '', '', '', 'Inocencio', 'Escalada', '', '', 'activated', 'user', '', ''),
(110, 14, 'Leonardo O.', 'Eugenio', '', '', '', '', '', 'Leonardo', 'Eugenio', '', '', 'activated', 'user', '', ''),
(111, 14, 'Manolito O.', 'Olegario', '', '', '', '', '', 'Manolito', 'Olegario', '', '', 'activated', 'user', '', ''),
(113, 14, 'Steve Xandrix J.', 'Peralta', '', '', '', '', '', 'Steve ', 'Peralta', '', '', 'activated', 'user', 'yes', ''),
(114, 14, 'Marlon P.', 'Villanueva', '', '', '', '', '', 'Marlon', 'Villanueva', '', '', 'activated', 'user', 'yes', ''),
(115, 14, 'Hilton', 'Aguja', '', '', '', '', '', 'Hilton', 'Aguja', '', '', 'activated', 'user', '', ''),
(116, 14, 'Ronnie', 'Allawan', '', '', '', '', '', 'Ronnie', 'Allawan', '', '', 'activated', 'user', '', ''),
(117, 14, 'Francisco', 'Behira', '', '', '', '', '', 'Francisco', 'Behira', '', '', 'activated', 'user', '', ''),
(118, 14, 'David Allan', 'Chua', '', '', '', '', '', 'David', 'Chua', '', '', 'activated', 'user', '', ''),
(119, 14, 'Virgilio', 'Concepcion', '', '', '', '', '', 'Virgilio', 'Concepcion', '', '', 'activated', 'user', '', ''),
(120, 14, 'Allan', 'Farnazo', '', '', '', '', '', 'Allan', 'Farnazo', '', '', 'activated', 'user', '', ''),
(121, 14, 'Richard', 'Halili', '', '', '', '', '', 'Richard', 'Halili', '', '', 'activated', 'user', '', ''),
(122, 14, 'Edward', 'Lapong', '', '', '', '', '', 'Edward', 'Lapong', '', '', 'activated', 'user', '', ''),
(123, 14, 'Edward', 'Medida', '', '', '', '', '', 'Edward', 'Medida', '', '', 'activated', 'user', '', ''),
(124, 14, 'Antonio', 'Ortiz', '', '', '', '', '', 'Antonio', 'Ortiz', '', '', 'activated', 'user', '', ''),
(125, 14, 'Calvin', 'Polistico', '', '', '', '', '', 'Calvin', 'Polistico', '', '', 'activated', 'user', '', ''),
(126, 14, 'Jonathan', 'Reyes', '', '', '', '', '', 'Jonathan', 'Reyes', '', '', 'activated', 'user', '', ''),
(127, 14, 'Enrique II', 'Romero', '', '', '', '', '', 'Enrique', 'Romero', '', '', 'activated', 'user', '', ''),
(128, 14, 'Candido', 'Sagabay', '', '', '', '', '', 'Candido', 'Sagabay', '', '', 'activated', 'user', '', ''),
(129, 14, 'Peelbar', 'Salarda', '', '', '', '', '', 'Peelbar', 'Salarda', '', '', 'activated', 'user', '', ''),
(131, 14, 'Maximo, Jr', 'Sebastian', '', '', '', '', '', 'Maximo,', 'Sebastian', '', '', 'activated', 'user', '', ''),
(132, 14, 'Gener', 'Gayam', '', '', '', '', '', 'Gener', 'Gayam', '', '', 'activated', 'user', 'yes', ''),
(134, 14, 'Danny B.', 'Nograles', '', '', '', '', '', 'Danny', 'Nograles', '', '', 'activated', 'user', '', ''),
(135, 14, 'Clemente', 'Otanes', '', '', '', '', '', 'Clemente', 'Otanes', '', '', 'activated', 'user', '', ''),
(136, 14, 'Christopher James', 'Pacetes', '', '', '', '', '', 'Christopher', 'Pacetes', '', '', 'activated', 'user', '', ''),
(138, 14, 'Ramon', 'Robleza', '', '', '', '', '', 'Ramon', 'Robleza', '', '', 'activated', 'user', '', ''),
(139, 14, 'Levy', 'Saligumba', '', '', '', '', '', 'Levy', 'Saligumba', '', '', 'activated', 'user', 'yes', ''),
(140, 14, 'Danilo', 'Solamo', '', '', '', '', '', 'Danilo', 'Solamo', '', '', 'activated', 'user', '', ''),
(141, 14, 'Tupino S.', 'Vergonia', '', '', '', '', '', 'Tupino', 'Vergonia', '', '', 'activated', 'user', '', ''),
(142, 14, 'Jose Edmar', 'Yumang', '', '', '', '', '', 'Jose', 'Yumang', '', '', 'activated', 'user', 'yes', ''),
(143, 15, 'Glenn Mar P.', 'Acas', '', '', '', '', '', 'Glenn', 'Acas', '', '', 'activated', 'user', 'yes', ''),
(144, 15, 'Prang II E.', 'Andig', '', '', '', '', '', 'Prang', 'Andig', '', '', 'activated', 'user', '', ''),
(145, 15, 'Romulo D.', 'Braza', '', '', '', '', '', 'Romulo', 'Braza', '', '', 'activated', 'user', '', ''),
(146, 15, 'Dioscoro G.', 'Maestrado', '', '', '', '', '', 'Dioscoro', 'Maestrado', '', '', 'activated', 'user', '', ''),
(147, 15, 'Rodeline G.', 'Pantua', '', '', '', '', '', 'Rodeline', 'Pantua', '', '', 'activated', 'user', '', ''),
(148, 15, 'Ronald P.', 'Sombero', '09478971523', '', '', '', '', 'Ronald', 'Sombero', '', '', 'activated', 'user', '', ''),
(149, 15, 'Reynaldo T.', 'Villagantol', '', '', '', '', '', 'Reynaldo', 'Villagantol', '', '', 'activated', 'user', '', ''),
(150, 16, 'Saripoden', 'Batog', '', '', '', '', '', 'Saripoden', 'Batog', '', '', 'activated', 'user', '', ''),
(151, 16, 'Erosito N.', 'Miranda', '', '', '', '', '', 'Erosito', 'Miranda', '', '', 'activated', 'user', '', ''),
(152, 16, 'Jeffrey', 'Panagdato', '', '', '', '', '', 'Jeffrey', 'Panagdato', '', '', 'activated', 'user', '', ''),
(153, 17, 'Ben G.', 'Bareja', '', '', '', '', '', 'Ben', 'Bareja', '', '', 'activated', 'user', '', ''),
(154, 17, 'Alain Vincent Q.', 'Lawa', '', '', '', '', '', 'Alain', 'Lawa', '', '', 'activated', 'user', '', ''),
(155, 17, 'Gladden S.', 'Lim', '', '', '', '', '', 'Gladden', 'Lim', '', '', 'activated', 'user', '', ''),
(156, 17, 'Arthur C.', 'Saguiguit', '', '', '', '', '', 'Arthur', 'Saguiguit', '', '', 'activated', 'user', '', ''),
(157, 17, 'Napoleon', 'Tinoco', '', '', '', '', '', 'Napoleon', 'Tinoco', '', '', 'activated', 'user', '', ''),
(158, 17, 'Monet', 'Brotarlo', '', '', '', '', '', 'Monet', 'Brotarlo', '', '', 'activated', 'user', '', ''),
(159, 17, 'Leo Ralph A.', 'Alojado', '', '', '', '', '', 'Leo', 'Alojado', '', '', 'activated', 'user', '', ''),
(162, 18, 'Demostenes', 'Escobar', '', '', '', '', '', 'Demostenes', 'Escobar', '', '', 'activated', 'user', '', ''),
(165, 18, 'Faustino Jr.', 'Montero', '', '', '', '', '', 'Faustino', 'Montero', '', '', 'activated', 'user', '', ''),
(166, 18, 'Paolo R.', 'Aquino', '', '', '', '', '', 'Paolo', 'Aquino', '', '', 'activated', 'user', 'yes', ''),
(167, 18, 'Ahmad Tambas Jr.', 'Yahya', '', '', '', '', '', 'Ahmad', 'Yahya', '', '', 'activated', 'user', '', ''),
(168, 19, 'Victorino B.', 'Belangdal', '', '', '', '', '', 'Victorino', 'Belangdal', '', '', 'activated', 'user', '', ''),
(169, 19, 'Danny D.', 'Bustamante', '', '', '', '', '', 'Danny', 'Bustamante', '', '', 'activated', 'user', '', ''),
(171, 19, 'Cornelio Erwin III', 'Griño', '', '', '', '', '', 'Cornelio', 'Griño', '', '', 'activated', 'user', 'yes', ''),
(172, 19, 'Marlon M.', 'Ramirez', '', '', '', '', '', 'Marlon', 'Ramirez', '', '', 'activated', 'user', '', ''),
(173, 19, 'Justino Jr. G.', 'Tamala', '', '', '', '', '', 'Justino', 'Tamala', '', '', 'activated', 'user', '', ''),
(174, 19, 'Macacuna E.', 'Tomambiling', '', '', '', '', '', 'Macacuna', 'Tomambiling', '', '', 'activated', 'user', '', ''),
(175, 19, 'Allan G.', 'Villanuava', '', '', '', '', '', 'Allan', 'Villanuava', '', '', 'activated', 'user', '', ''),
(178, 20, 'Jesse Joseph Jasper', 'Mendoza', '', '', '', '', '', 'Jesse', 'Mendoza', '', '', 'activated', 'user', '', ''),
(180, 20, 'Asna', 'Macabanding', '', '', '', '', '', 'Asna', 'Macabanding', '', '', 'activated', 'user', '', ''),
(181, 20, 'Misuari', 'Abdulmanap', '', '', '', '', '', 'Misuari', 'Abdulmanap', '', '', 'activated', 'user', '', ''),
(182, 20, 'Ronnel S.', 'Español', '', '', '', '', '', 'Ronnel', 'Español', '', '', 'activated', 'user', '', ''),
(183, 20, 'Romeo', 'Corpuz', '', '', '', '', '', 'Romeo', 'Corpuz', '', '', 'activated', 'user', '', ''),
(184, 20, 'Edmund', 'Delos Reyes', '', '', '', '', '', 'Edmund', 'Delos Reyes', '', '', 'activated', 'user', '', ''),
(185, 20, 'Junaid', 'Mamailao', '', '', '', '', '', 'Junaid', 'Mamailao', '', '', 'activated', 'user', '', ''),
(186, 21, 'Anthony Dinnes', 'Pantua', '', '', '', '', '', 'Anthony', 'Pantua', '', '', 'activated', 'user', 'yes', ''),
(187, 21, 'Conrado', 'Limjap', '', '', '', '', '', 'Conrado', 'Limjap', '', '', 'activated', 'user', '', ''),
(188, 21, 'John Paul', 'Macababad', '', '', '', '', '', 'John', 'Macababad', '', '', 'activated', 'user', '', ''),
(189, 21, 'Javier', 'Gadingan', '', '', '', '', '', 'Javier', 'Gadingan', '', '', 'activated', 'user', '', ''),
(190, 21, 'Cielito', 'Nequinto', '', '', '', '', '', 'Cielito', 'Nequinto', '', '', 'activated', 'user', '', ''),
(191, 22, 'Alexis Armand', 'Bendero', '', '', '', '', '', 'Alexis', 'Bendero', '', '', 'activated', 'user', '', ''),
(192, 22, 'Jerry', 'Cabonegro', '', '', '', '', '', 'Jerry', 'Cabonegro', '', '', 'activated', 'user', '', ''),
(193, 22, 'Bernard Erik', 'Torres', '', '', '', '', '', 'Bernard', 'Torres', '', '', 'activated', 'user', '', ''),
(195, 22, 'Eduardo Jr.', 'Quiachon', '', '', '', '', '', 'Eduardo', 'Quiachon', '', '', 'activated', 'user', '', ''),
(196, 22, 'Al', 'Oclarit', '', '', '', '', '', 'Al', 'Oclarit', '', '', 'activated', 'user', '', ''),
(198, 22, 'Stephen', 'Delamota', '', '', '', '', '', 'Stephen', 'Delamota', '', '', 'activated', 'user', '', ''),
(199, 23, 'Ralph', 'Yumang', '', '', '', '', '', 'Ralph', 'Yumang', '', '', 'activated', 'user', '', ''),
(200, 23, 'Alvin', 'Tan', '', '', '', '', '', 'Alvin', 'Tan', '', '', 'activated', 'user', '', ''),
(201, 23, 'Benjie', 'Rojas', '', '', '', '', '', 'Benjie', 'Rojas', '', '', 'activated', 'user', '', ''),
(203, 23, 'Rio', 'Duron', '', '', '', '', '', 'Rio', 'Duron', '', '', 'activated', 'user', '', ''),
(207, 23, 'JK', 'Barabat', '', '', '', '', '', 'JK', 'Barabat', '', '', 'activated', 'user', '', ''),
(208, 23, 'Norzaide', 'Bayamban', '', '', '', '', '', 'Norzaide', 'Bayamban', '', '', 'activated', 'user', '', ''),
(209, 23, 'Norberto', 'Andres', '', '', '', '', '', 'Norberto', 'Andres', '', '', 'activated', 'user', '', ''),
(210, 23, 'Jiellzon', 'Villarama', '', '', '', '', '', 'Jiellzon', 'Villarama', '', '', 'activated', 'user', '', ''),
(211, 23, 'Emvic', 'Malinao', '', '', '', '', '', 'Emvic', 'Malinao', '', '', 'activated', 'user', '', ''),
(215, 25, 'Dennis', 'Morales', '', '', '', '', '', 'Dennis', 'Morales', '', '', 'activated', 'user', '', ''),
(216, 25, 'Sinuden', 'Yasin', '', '', '', '', '', 'Sinuden', 'Yasin', '', '', 'activated', 'user', '', ''),
(219, 24, 'Julius', 'Escobar', '', '', '', '', '', 'Julius', 'Escobar', '', '', 'activated', 'user', '', ''),
(220, 24, 'Ronald', 'Jamillaren', '', '', '', '', '', 'Ronald', 'Jamillaren', '', '', 'activated', 'user', '', ''),
(221, 24, 'Achilles Windilen G.', 'Tato', '', '', '', '', '', 'Achilles', 'Tato', '', '', 'activated', 'user', '', ''),
(222, 26, 'Ryandel', 'Alejandro', '', '', '', '', '', 'Ryandel', 'Alejandro', '', '', 'activated', 'user', '', ''),
(223, 26, 'Charles', 'Pesodas', '', '', '', '', '', 'Charles', 'Pesodas', '', '', 'activated', 'user', '', ''),
(225, 27, 'Leonard', 'Balabat', '', '', '', '', '', 'Leonard', 'Balabat', '', '', 'activated', 'user', '', ''),
(228, 27, 'Robert Shean', 'Alfane', '', '', '', '', '', 'Robert', 'Alfane', '', '', 'activated', 'user', '', ''),
(230, 27, 'Aldrin ', 'Salgado', '', '', '', '', '', 'Aldrin', 'Salgado', '', '', 'activated', 'user', '', ''),
(231, 27, 'Ronnie', 'Montoya', '', '', '', '', '', 'Ronnie', 'Montoya', '', '', 'activated', 'user', '', ''),
(232, 27, 'John Paul', 'Lugares', '', '', '', '', '', 'John', 'Lugares', '', '', 'activated', 'user', '', ''),
(233, 28, 'Robert', 'Robleza', '', '', '', '', '', 'Robert', 'Robleza', '', '', 'activated', 'user', '', ''),
(236, 29, 'Clemente', 'Panganduyon', '', '', '', '', '', 'Clemente', 'Panganduyon', '', '', 'activated', 'user', '', ''),
(237, 29, 'Roman Nicolo', 'Mondejar', '', '', '', '', '', 'Roman', 'Mondejar', '', '', 'activated', 'user', '', ''),
(242, 30, 'Iphraim B.', 'Abbas', '09753333271', 'Agan Ligaya, GSC ', 'Agan Ligaya, GSC ', '', '', 'Iphraim', 'Abbas', '', '', 'activated', 'user', '', ''),
(243, 30, 'Rhodum', 'Sagario', '', '', '', '', '', 'Rhodum', 'Sagario', '', '', 'activated', 'user', '', ''),
(244, 30, 'Marvin', 'Lim', '', '', '', '', '', 'Marvin', 'Lim', '', '', 'activated', 'user', '', ''),
(246, 15, 'Sixyl V.', 'Balquin - Gelotin', '', '', '', '', '', 'Sixyl', 'Balquin-Gelotin', '', '', 'activated', 'user', 'yes', ''),
(247, 15, 'Jocelyn L. ', 'Cariño', '', '', '', '', '', 'Jocelyn', 'Cariño', '', '', 'activated', 'user', '', ''),
(248, 15, 'Precious Pearl Portia', 'Mendoza - Valdez', '', '', '', '', '', 'Precious', 'Mendoza-Valdez', '', '', 'activated', 'user', '', ''),
(249, 16, 'Isnira A.', 'Baginda', '', '', '', '', '', 'Isnira', 'Baginda', '', '', 'activated', 'user', '', ''),
(250, 16, 'Juby A.', 'Eborde', '', '', '', '', '', 'Juby', 'Eborde', '', '', 'activated', 'user', '', ''),
(251, 16, 'Ma. Theresa A.', 'Peñera', '', '', '', '', '', 'Ma.', 'Peñera', '', '', 'activated', 'user', 'yes', ''),
(252, 17, 'Althene Marie A.', 'Alconera', '', '', '', '', '', 'Althene', 'Alconera', '', '', 'activated', 'user', '', ''),
(253, 17, 'Jeanette C.', 'Bernal', '', '', '', '', '', 'Jeanette', 'Bernal', '', '', 'activated', 'user', '', ''),
(254, 17, 'Norhata S.', 'Magandia', '', '', '', '', '', 'Norhata', 'Magandia', '', '', 'activated', 'user', '', ''),
(256, 17, 'Apple Rose D.', 'Matavia', '', '', '', '', '', 'Apple', 'Matavia', '', '', 'activated', 'user', '', ''),
(257, 17, 'Donna Grace I.', 'Navalta', '', '', '', '', '', 'Donna', 'Navalta', '', '', 'activated', 'user', '', ''),
(259, 17, 'Christine', 'Flores', '', '', '', '', '', 'Christine', 'Flores', '', '', 'activated', 'user', '', ''),
(263, 19, 'Jacqueline Mae', 'Estorninos - Saquilabon', '', '', '', '', '', 'Jacqueline', 'Estorninos-Saquilabon', '', '', 'activated', 'user', '', ''),
(264, 19, 'Josie Fe Amor', 'Felipe', '', '', '', '', '', 'Josie', 'Felipe', '', '', 'activated', 'user', '', ''),
(265, 19, 'Emily', 'Gariando', '', '', '', '', '', 'Emily', 'Gariando', '', '', 'activated', 'user', '', ''),
(266, 19, 'Eden Rachel', 'Gencianos', '', '', '', '', '', 'Eden', 'Gencianos', '', '', 'activated', 'user', 'yes', ''),
(267, 19, 'Myra Joy', 'Lawi-an', '', '', '', '', '', 'Myra', 'Lawi-an', '', '', 'activated', 'user', '', ''),
(268, 19, 'Angelita', 'Malan', '', '', '', '', '', 'Angelita', 'Malan', '', '', 'activated', 'user', '', ''),
(269, 19, 'Cherry Mea', 'Pascua', '', '', '', '', '', 'Cherry', 'Pascua', '', '', 'activated', 'user', '', ''),
(270, 19, 'Jhanine', 'Villegas', '', '', '', '', '', 'Jhanine', 'Villegas', '', '', 'activated', 'user', '', ''),
(273, 20, 'Marivic', 'Turlao', '', '', '', '', '', 'Marivic', 'Turlao', '', '', 'activated', 'user', '', ''),
(274, 20, 'Cheryl', 'Cedana', '', '', '', '', '', 'Cheryl', 'Cedana', '', '', 'activated', 'user', '', ''),
(275, 20, 'Rosanna', 'Bantulo', '', '', '', '', '', 'Rosanna', 'Bantulo', '', '', 'activated', 'user', '', ''),
(276, 21, 'Myrie Ellenel', 'Rosete', '09296973641', '#20 East Sapphire T., Diamond Village, Lanang., Davao City', '#20 East Sapphire T., Diamond Village, Lanang., Davao City', '', '', 'Myrie', 'Rosete', '', '', 'activated', 'user', 'yes', ''),
(278, 21, 'Zenaida', 'Lomboy', '', '', '', '', '', 'Zenaida', 'Lomboy', '', '', 'activated', 'user', '', ''),
(279, 22, 'Reyma', 'Rufo', '', '', '', '', '', 'Reyma', 'Rufo', '', '', 'activated', 'user', '', ''),
(280, 22, 'Myla', 'Eiman', '', '', '', '', '', 'Myla', 'Eiman', '', '', 'activated', 'user', '', ''),
(281, 22, 'Marlowe Jane', 'Nazi', '', '', '', '', '', 'Marlowe', 'Nazi', '', '', 'activated', 'user', '', ''),
(282, 22, 'Cheryl', 'Santiago', '', '', '', '', '', 'Cheryl', 'Santiago', '', '', 'activated', 'user', 'yes', ''),
(284, 22, 'Kristine Jane', 'Palma', '', '', '', '', '', 'Kristine', 'Palma', '', '', 'activated', 'user', '', ''),
(289, 23, 'Fe', 'Vergara', '', '', '', '', '', 'Fe', 'Vergara', '', '', 'activated', 'user', '', ''),
(290, 23, 'Jane', 'Monisit', '', '', '', '', '', 'Jane', 'Monisit', '', '', 'activated', 'user', '', ''),
(293, 25, 'Iris Pearl', 'Conlu', '', '', '', '', '', 'Iris', 'Conlu', '', '', 'activated', 'user', '', ''),
(294, 25, 'Jennelyn', 'Diantan', '', '', '', '', '', 'Jennelyn', 'Diantan', '', '', 'activated', 'user', '', ''),
(296, 25, 'Faye', 'Laurente', '', '', '', '', '', 'Faye', 'Laurente', '', '', 'activated', 'user', '', ''),
(297, 25, 'Gretchiane', 'Manoy', '', '', '', '', '', 'Gretchiane', 'Manoy', '', '', 'activated', 'user', '', ''),
(304, 24, 'Reah Joy L.', 'Sevillano', '', '', '', '', '', 'Reah', 'Sevillano', '', '', 'activated', 'user', '', ''),
(305, 26, 'Dionisia', 'Albao', '', '', '', '', '', 'Dionisia', 'Albao', '', '', 'activated', 'user', '', ''),
(306, 26, 'Lelanie', 'Apitong', '', '', '', '', '', 'Lelanie', 'Apitong', '', '', 'activated', 'user', '', ''),
(308, 26, 'Michelle E.', 'De Leon', '09465952193', 'Prk Malakas., Gensan', 'Prk Malakas., Gensan', '', '', 'Michelle', 'De Leon', '', '', 'activated', 'user', '', ''),
(309, 26, 'Anna Marie', 'Guillermo', '', '', '', '', '', 'Anna', 'Guillermo', '', '', 'activated', 'user', '', ''),
(310, 27, 'Hearty Mae', 'Loretizo', '', '', '', '', '', 'Hearty', 'Loretizo', '', '', 'activated', 'user', '', ''),
(311, 27, 'Maricar Jean', 'Tabaosares', '', '', '', '', '', 'Maricar', 'Tabaosares', '', '', 'activated', 'user', '', ''),
(312, 28, 'Almin', 'Abejaron', '', '', '', '', '', 'Almin', 'Abejaron', '', '', 'activated', 'user', '', ''),
(314, 28, 'Kay', 'Aviles', '', '', '', '', '', 'Kay', 'Aviles', '', '', 'activated', 'user', '', ''),
(315, 28, 'Sandra', 'Espartero', '', '', '', '', '', 'Sandra', 'Espartero', '', '', 'activated', 'user', '', ''),
(319, 29, 'Riza Angelie', 'Duray', '', '', '', '', '', 'Riza', 'Duray', '', '', 'activated', 'user', '', ''),
(320, 30, 'Jenny', 'Ocaba', '', '', '', '', '', 'Jenny', 'Ocaba', '', '', 'activated', 'user', '', ''),
(321, 30, 'Verlyn', 'Factor', '', '', '', '', '', 'Verlyn', 'Factor', '', '', 'activated', 'user', '', ''),
(323, 30, 'Chariz Layne', 'Carbon', '', '', '', '', '', 'Chariz', 'Carbon', '', '', 'activated', 'user', '', ''),
(324, 31, 'Fedel Ruman', 'Soldevilla', '', '', '', '', '', 'Fedel', 'Soldevilla', '', '', 'activated', 'user', '', ''),
(325, 31, 'Bai Ridah', 'Macasayon', '', '', '', '', '', 'Bai', 'Macasayon', '', '', 'activated', 'user', '', ''),
(326, 31, 'Aleana Grace', 'Corpuz', '', '', '', '', '', 'Aleana', 'Corpuz', '', '', 'activated', 'user', '', ''),
(327, 31, 'Yvonne ', 'Villanueva', '', '', '', '', '', 'Yvonne', 'Villanueva', '', '', 'activated', 'user', '', ''),
(330, 1, 'Grace', 'Manco', '09772576701', 'Purok 1, Mapulong, Naawan Misamis Oriental', 'Purok 1, Mapulong, Naawan Misamis Oriental', '', 'Fathima Beevi ', 'Grace', 'Manco', '', '', 'activated', 'user', '', ''),
(331, 1, 'Saddam', 'Bagul', '09977261368', 'Iligan City', 'Iligan City', '', 'Beinvenido Reyes II', 'Saddam', 'Bagul', '', '', 'activated', 'user', '', ''),
(332, 1, 'Mary Anjalica', 'Talaroc', '09971656450', 'P-10, Pagawan, Manticao Misamis Oriental', 'P-10, Pagawan, Manticao Misamis Oriental', '', 'Sandra Day O\'Connor II', 'Mary', 'Talaroc', '', '', 'activated', 'user', '', ''),
(333, 1, 'Mohammad', 'Manarondong', '09277986249', 'Bara-as, Iligan City', 'Wato, Balindong, Lanao Del Sur', '', 'Enrique Fernando II', 'admin', '316874900', '', '', 'activated', 'super-admin', '', '60b44241164a2d26795b46701de2d807.jpg'),
(334, 1, 'Alizza Lyn', 'Celeste', '09269185821', 'Tibanga, Iligan City', 'Isulan,Sultan Kudarat', '', 'Susan Kiefel', 'Alizza', 'Celeste', '', '', 'activated', 'user', '', ''),
(335, 1, 'Jamailah', 'Guimba', '09173226664', 'Phase 1, Doña Maria Subd. Tipanoy Iligan City.', 'Phase 1, Doña Maria Subd. Tipanoy Iligan City.', '', 'Grace Poe III', 'Jamailah', 'Guimba', '', '', 'activated', 'user', '', ''),
(336, 2, 'Audrey Michelle', 'Kwan', '09169340053', 'Iligan CIty', 'Kauswagan, Lanao Del Norte', '', 'Queen Elizabeth II', 'Audrey', 'Kwan', '', '', 'activated', 'user', '', ''),
(337, 9, 'Ginalyn Omundang', 'Valdez-Baron ', '09175520664', 'Prk. 5, Brgy. Poblacion, Linamon, Lanao Del Norte', 'Prk. 5, Brgy. Poblacion, Linamon, Lanao Del Norte', '', 'Imelda Marcos II', 'Ginalyn', 'Valdez-Baron ', '', '', 'activated', 'user', '', ''),
(338, 7, 'Van Erik', 'Lucasan', '09238175595', 'Sto. Rosario, Iligan City', 'Sto. Rosario, Iligan City', '', 'Jose Mendoza', 'Van', 'Lucasan', '', '', 'activated', 'user', '', ''),
(339, 14, 'Jerome C.', 'Beatisola', '09394863415', 'General Santos City', 'General Santos City', '', '', 'Jerome', 'Beatisola', '', '', 'activated', 'user', 'yes', ''),
(340, 14, 'Ariel  J.', 'Duray', '5530656', 'Dona Soledad Subd. Gensan', 'Dona Soledad Subd. Gensan', '', '', 'Ariel', 'Duray', '', '', 'activated', 'user', 'yes', ''),
(341, 14, 'Jacinto, R. Jr.', 'Omila', '09177147007', '', '', '', '', 'Jacinto,', 'Omila', '', '', 'activated', 'user', '', ''),
(342, 14, 'Bernardo Jr.', 'Salvadico', '09325755949', 'Block 19, Lot 9 VS Homes Gensan', 'Block 19, Lot 9 VS Homes Gensan', '', '', 'Bernardo', 'Salvadico', '', '', 'activated', 'user', '', ''),
(343, 14, 'Felix F.', 'Mesa', '09398039063', 'Yumang St. Lacap Subd., San Isidro., GenSan', 'Yumang St. Lacap Subd., San Isidro., GenSan', '', '', 'Felix', 'Mesa', '', '', 'activated', 'user', 'yes', ''),
(344, 14, 'Edgar R.', 'Putiz', '09162689864', 'Cotabato City', 'Cotabato City', '', '', 'Edgar', 'Putiz', '', '', 'activated', 'user', '', ''),
(345, 17, 'Emerlito C.', 'Nimes', '09993924717', 'Lot 7 Phase 2 Superville Lagao., Gensan', 'Lot 7 Phase 2 Superville Lagao., Gensan', '', '', 'Emerlito', 'Nimes', '', '', 'activated', 'user', '', ''),
(346, 18, 'Marlon R.', 'Daquigan', '09173059305', 'Small Margus, Glan, Sarangani Province', 'Small Margus, Glan, Sarangani Province', '', '', 'Marlon', 'Daquigan', '', '', 'activated', 'user', '', ''),
(347, 18, 'Ulysses', 'Caspillo', '09997683099', 'Blk 9 Lot 4 Agan Ligaya., Gen San', 'Blk 9 Lot 4 Agan Ligaya., Gen San', '', '', 'Ulysses', 'Caspillo', '', '', 'activated', 'user', '', ''),
(348, 18, 'Abdulsalam', 'Masahod', '13068505336', '103 Warwick Crescent, Warman, Canada', '103 Warwick Crescent, Warman, Canada', '', '', 'Abdulsalam', 'Masahod', '', '', 'activated', 'user', '', ''),
(349, 19, 'Phillip E.', 'De Ocampo', '09420452138', 'No. 70 Lanzones St. Gensan', 'No. 70 Lanzones St. Gensan', '', '', 'Phillip', 'De Ocampo', '', '', 'activated', 'user', '', ''),
(350, 20, 'Dominic', 'Salazar', '09177142144', '3rd St. Lacap Subdivision., Gensan', '3rd St. Lacap Subdivision., Gensan', '', '', 'Dominic', 'Salazar', '', '', 'activated', 'user', '', ''),
(351, 20, 'Jose  Jr.', 'Amagan', '09328700672', 'Prk. Malakas, Nunez St., Cambridge Farm, Gensan', 'Prk. Malakas, Nunez St., Cambridge Farm, Gensan', '', '', 'Jose', 'Amagan', '', '', 'activated', 'user', '', ''),
(352, 20, 'Junerie T.', 'Achas', '09997077177', 'Mlang Cotabato City', 'Mlang Cotabato City', '', '', 'Junerie', 'Achas', '', '', 'activated', 'user', '', ''),
(353, 22, 'Mark Louie', 'Zabala', '09177155619', '', '', '', '', 'Mark', 'Zabala', '', '', 'activated', 'user', 'yes', ''),
(354, 22, 'Rigor Nemrod Jr.', 'Balabat', '09430630425', 'Springville Apopong, Gensan', 'Springville Apopong, Gensan', '', '', 'Rigor', 'Balabat', '', '', 'activated', 'user', '', ''),
(355, 23, 'Jayson V.', 'Dona–al', '09186946552', 'Glan Sarangani Province', 'Glan Sarangani Province', '', '', 'Jayson', 'Dona–al', '', '', 'activated', 'user', '', ''),
(356, 23, 'Faizal', 'Macasayon', '09985756907', 'Lot 6 Blk 6 Agan South Villas Lagao., Gensan', 'Lot 6 Blk 6 Agan South Villas Lagao., Gensan', '', '', 'Faizal', 'Macasayon', '', '', 'activated', 'user', '', ''),
(357, 23, 'Redentor W.', 'Batulan', '09755472084', '', '', '', '', 'Redentor', 'Batulan', '', '', 'activated', 'user', '', ''),
(358, 23, 'Joseph A.', 'Braga', '09158567440', 'Poblacion, Polomolok South Cotabato', 'Poblacion, Polomolok South Cotabato', '', '', 'Joseph', 'Braga', '', '', 'activated', 'user', '', ''),
(359, 25, 'Kristian Josef', 'Acedo', '', 'No. 5 Acacia St. MSU Campus Brgy Fatima, GenSan', 'No. 5 Acacia St. MSU Campus Brgy Fatima, GenSan', '', '', 'Kristian', 'Acedo', '', '', 'activated', 'user', 'yes', ''),
(360, 25, 'Mark Vincent P.', 'Dionero', '', '5th Road Villegas Subd. Prk Malakas, Brgy San Isidro, Gensan', '5th Road Villegas Subd. Prk Malakas, Brgy San Isidro, Gensan', '', '', 'Mark', 'Dionero', '', '', 'activated', 'user', '', ''),
(361, 25, 'Zosimo Jr.', 'Lira', '09487172889', 'Adelfa St. Poblacion Polomolok, South Cotabato', 'Adelfa St. Poblacion Polomolok, South Cotabato', '', '', 'Zosimo', 'Lira', '', '', 'activated', 'user', 'yes', ''),
(362, 24, 'Virgilio Paolo A.', 'Alconera', '09321346990', 'Brgy San Isidro, Gensan', 'Brgy San Isidro, Gensan', '', '', 'Virgilio', 'Alconera', '', '', 'activated', 'user', 'yes', ''),
(363, 24, 'Jaspen John R.', 'Bacongco', '09295535596', 'Malayang Nayon Subdivision Mabuhay, GenSan', 'Malayang Nayon Subdivision Mabuhay, GenSan', '', '', 'Jaspen', 'Bacongco', '', '', 'activated', 'user', 'yes', ''),
(364, 26, 'Ryan Omar V.', 'Reyes', '09079888488', 'Baluan, Gensan', 'Baluan, Gensan', '', '', 'Ryan', 'Reyes', '', '', 'activated', 'user', '', ''),
(365, 27, 'Eric Joseph', 'Duray', '09127377569', 'Dona Soledad Subd. Gensan', 'Dona Soledad Subd. Gensan', '', '', 'Eric', 'Duray', '', '', 'activated', 'user', '', ''),
(366, 27, 'Karl', 'Sabido', '09265363315', 'Calumpang Gensan', 'Calumpang Gensan', '', '', 'Karl', 'Sabido', '', '', 'activated', 'user', '', ''),
(367, 27, 'Anecito F. III', 'Lopez', '09157099355', 'Lumasal Maasim, Sarangani Province', 'Lumasal Maasim, Sarangani Province', '', '', 'Anecito', 'Lopez', '', '', 'activated', 'user', '', ''),
(368, 28, 'Glen Percy G.', 'Tulio', '09097164088', 'Brgy. West., GenSan', 'Brgy. West., GenSan', '', '', 'Glen', 'Tulio', '', '', 'activated', 'user', '', ''),
(369, 29, 'Ice C.', 'Ilejay', '09258433774', 'Corner Ventilacion And St. Joseph Sts., Lagao, Gensan', 'Corner Ventilacion And St. Joseph Sts., Lagao, Gensan', '', '', 'Ice', 'Ilejay', '', '', 'activated', 'user', '', ''),
(370, 29, 'Genest Jan', 'Ramirez', '09054705915', 'Lotus Village, GSC', 'Lotus Village, GSC', '', '', 'Genest', 'Ramirez', '', '', 'activated', 'user', '', ''),
(371, 29, 'Keen Steve', 'Bitoon', '09123341022', 'Kipalbig, Tampakan, South Cotabato', 'Kipalbig, Tampakan, South Cotabato', '', '', 'Keen', 'Bitoon', '', '', 'activated', 'user', '', ''),
(372, 30, 'Oeruel', 'Bautista', '09988541302', 'Maitum, Sarangani', 'Maitum, Sarangani', '', '', 'Oeruel', 'Bautista', '', '', 'activated', 'user', '', ''),
(373, 30, 'Jeffrey S. ', 'Dela Cruz', '09199994746', 'Koronadal City ', 'Koronadal City ', '', '', 'Jeffrey', 'Dela Cruz', '', '', 'activated', 'user', '', ''),
(374, 30, 'Mark S.', 'Alagbay', '09294236780', 'Banga, South Cotabato', 'Banga, South Cotabato', '', '', 'Mark', 'Alagbay', '', '', 'activated', 'user', '', ''),
(375, 17, 'Katherine G.', 'Silabay-Villa', '09322502595', 'Capitol Centro, Kalawag 2, Isulan, Sultan Kudarat', 'Capitol Centro, Kalawag 2, Isulan, Sultan Kudarat', '', '', 'Katherine', 'Silabay-Villa', '', '', 'activated', 'user', '', ''),
(376, 17, 'Shiela Mae', 'Arella-Harrid', '09084518350', 'Blk 1 Lot 17, Dona Lourdes Subdivision, Koronadal City', 'Blk 1 Lot 17, Dona Lourdes Subdivision, Koronadal City', '', '', 'Shiela', 'Arella-Harrid', '', '', 'activated', 'user', '', ''),
(377, 17, 'Ivy Grace', 'Tutor - Lorenzo', '09236599434', '#126 6th St. Soriano Subd., Brgy City Heights, Gensan', '#126 6th St. Soriano Subd., Brgy City Heights, Gensan', '', '', 'Ivy', 'Tutor - Lorenzo', '', '', 'activated', 'user', '', ''),
(378, 18, 'Mary Ann J.', 'Barela', '09235355247', 'Victoria Heights Subd., Mamay Road, Brgy. Angliongto, Davao City', 'Victoria Heights Subd., Mamay Road, Brgy. Angliongto, Davao City', '', '', 'Mary', 'Barela', '', '', 'activated', 'user', '', ''),
(379, 18, 'Mary Grace L.', 'Ventura', '09227740806', 'Surallah, South Cotabato', 'Surallah, South Cotabato', '', '', 'Mary', 'Ventura', '', '', 'activated', 'user', '', ''),
(380, 20, 'Shirley O.', 'Panes-Ruiz', '09182751332', 'General Santos City', 'General Santos City', '', '', 'Shirley', 'Panes-Ruiz', '', '', 'activated', 'user', 'yes', ''),
(381, 20, 'Anna Kristine A.', 'Alconera', '', '4d 2a Lacap Subdivision, San Isidro., Gensan', '4d 2a Lacap Subdivision, San Isidro., Gensan', '', '', 'Anna', 'Alconera', '', '', 'activated', 'user', '', ''),
(382, 21, 'Glenda', 'Narcilla-Yuson', '09173032138', '4th Road Calumpang, Gensan', '4th Road Calumpang, Gensan', '', '', 'Glenda', 'Narcilla-Yuson', '', '', 'activated', 'user', 'yes', ''),
(383, 22, 'Rona Rea', 'Karunungan-Macasayon', '', 'Lot 6 Blk 6 Agan South Villas., GenSan', 'Lot 6 Blk 6 Agan South Villas., GenSan', '', '', 'Rona', 'Karunungan-Macasayon', '', '', 'activated', 'user', '', ''),
(384, 23, 'Kathrina Vanessa Y.', 'Hagoriles', '09183487380', 'Polomolok South Cotabato', 'Polomolok South Cotabato', '', '', 'Kathrina', 'Hagoriles', '', '', 'activated', 'user', 'yes', ''),
(385, 23, 'Annabelle', 'Cañazares-Mindalano', '', '', '', '', '', 'Annabelle', 'Cañazares-Mindalano', '', '', 'activated', 'user', '', ''),
(386, 23, 'Joi', 'Nandu', '09399390921', 'Blk3 Lot 24 Agan Centro Subdivision Lagao., Gensan', 'Blk3 Lot 24 Agan Centro Subdivision Lagao., Gensan', '', '', 'Joi', 'Nandu', '', '', 'activated', 'user', '', ''),
(387, 23, 'Riza', 'Lipata', '09177943861', 'Dona Soledad, GenSan', 'Dona Soledad, GenSan', '', '', 'Riza', 'Lipata', '', '', 'activated', 'user', '', ''),
(388, 25, 'Joni Mae', 'Cambarijan-Debuque', '09262049601', 'Klinan 6, Polomolok South Cotabato', 'Klinan 6, Polomolok South Cotabato', '', '', 'Joni', 'Cambarijan-Debuque', '', '', 'activated', 'user', '', ''),
(389, 25, 'Kristin San T.', 'Derije', '09569318716', 'Blk 9 Lot 17 Las Villas De Dadiangas Subdivision., Brgy City Heights, GenSan', 'Blk 9 Lot 17 Las Villas De Dadiangas Subdivision., Brgy City Heights, GenSan', '', '', 'Kristin', 'Derije', '', '', 'activated', 'user', '', ''),
(390, 25, 'Veromic', 'Navida', '', 'Blk 34 Lots 9&10 Phase 1-A Gensanville Subd, Bula, GenSan', 'Blk 34 Lots 9&10 Phase 1-A Gensanville Subd, Bula, GenSan', '', '', 'Veromic', 'Navida', '', '', 'activated', 'user', 'yes', ''),
(391, 25, 'Sharmagne', 'Villacastin', '09179569892', 'Poblacion Malapatan Sarangani', 'Poblacion Malapatan Sarangani', '', '', 'Sharmagne', 'Villacastin', '', '', 'activated', 'user', '', ''),
(392, 24, 'Beulah P.', 'Apostol', '09469626000', 'Polomolok South Cotabato', 'Polomolok South Cotabato', '', '', 'Beulah', 'Apostol', '', '', 'activated', 'user', 'yes', ''),
(393, 24, 'Maria Cheryl B.', 'Armenion', '09081594149', 'Prk. San Roque, Labangal', 'Prk. San Roque, Labangal', '', '', 'Maria', 'Armenion', '', '', 'activated', 'user', '', ''),
(394, 24, 'Yvette Gay E.', 'Hembra', '09309602773', 'Rambutan St., Gensan', 'Rambutan St., Gensan', '', '', 'Yvette', 'Hembra', '', '', 'activated', 'user', '', ''),
(395, 24, 'Maria Kristine P.', 'Lamoste-Pantua', '09216362697', '2nd Floor Valencia Bldg., Pendatun Ave., Cor. Santol St. Gensan', '2nd Floor Valencia Bldg., Pendatun Ave., Cor. Santol St. Gensan', '', '', 'Maria', 'Lamoste-Pantua', '', '', 'activated', 'user', '', ''),
(396, 24, 'Anna Socorro Rivas', 'Monreal', '', 'Blk 9 Lot 2 Saturn St. Villa Consuelo Subd. GenSan', 'Blk 9 Lot 2 Saturn St. Villa Consuelo Subd. GenSan', '', '', 'Anna', 'Monreal', '', '', 'activated', 'user', '', ''),
(397, 26, 'Mary Jhoanne', 'Achas', '09099925085', 'Prk. 3 Lanton Apopong, Gensan', 'Prk. 3 Lanton Apopong, Gensan', '', '', 'Mary', 'Achas', '', '', 'activated', 'user', '', ''),
(398, 28, 'Shiena Lou B.', 'Amodia', '09183492147', 'Prk. Tomasa, Upper Calumpang, GenSan', 'Prk. Tomasa, Upper Calumpang, GenSan', '', '', 'Shiena', 'Amodia', '', '', 'activated', 'user', '', ''),
(399, 29, 'Jill Odessa S.', 'Castardo', '09177020942', 'B15 L24 Sarangani Homes Phase 1, Brgy. San Isidro, General Santos City', 'B15 L24 Sarangani Homes Phase 1, Brgy. San Isidro, General Santos City', '', '', 'Jill', 'Castardo', '', '', 'activated', 'user', '', ''),
(400, 29, 'Princess Rosshien L. ', 'Hortal', '09234871663', '', '', '', '', 'Princess', 'Hortal', '', '', 'activated', 'user', '', ''),
(401, 29, 'Mohajirah', 'Abdurajik-Gasque', '09467007812', 'Zone 9A, Blk. 3, Fatima, GSC', 'Zone 9A, Blk. 3, Fatima, GSC', '', '', 'Mohajirah', 'Abdurajik-Gasque', '', '', 'activated', 'user', '', ''),
(402, 30, 'Badelle Jaraya', 'Ampan', '09151259492', 'Blk. 19, Lot 15, Malesido Homes II, San Isidro, GSC', 'Blk. 19, Lot 15, Malesido Homes II, San Isidro, GSC', '', '', 'Badelle', 'Ampan', '', '', 'activated', 'user', '', ''),
(403, 14, 'Mariano ', 'Lugares ', '', '', '', '', '', 'Mariano', 'Lugares ', '', '', 'activated', 'user', 'yes', ''),
(404, 14, 'Lolita ', 'Teope ', '', '', '', '', '', 'Lolita', 'Teope ', '', '', 'activated', 'user', '', ''),
(405, 14, 'Naomi ', 'Baytus- Braga', '', '', '', '', '', 'Naomi', 'Baytus- Braga', '', '', 'activated', 'user', '', ''),
(407, 32, 'John Michael D.', 'Badelles', '09066695947', 'Badelles St. Ext, Pala-o, Iligan City', 'Badelles St. Ext, Pala-o, Iligan City', '', 'Adel Tamano The First', 'John', 'Badelles', '', '', 'activated', 'user', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `WorkPlace` varchar(255) DEFAULT NULL,
  `WorkPosition` varchar(255) DEFAULT NULL,
  `years` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `member_id`, `WorkPlace`, `WorkPosition`, `years`) VALUES
(1, 330, 'Wmsu Dumingag Campus', 'Visiting Lecturer', '2008 - 2010'),
(2, 330, 'Peacetech Field Officer Iligan Chapter', '', '2011 - 2013'),
(3, 330, 'NUP Lugait', '', '2015 - present'),
(4, 331, 'PHILIPPINE NATIONAL POLICE, ILIGAN CITY ', 'PO1', 'Present'),
(5, 332, 'Jacinto Gerona Construction', '', 'April 21, 2018-present'),
(8, 334, 'International organization for Migration- UN agency', '', 'July,2017- December-2017'),
(9, 335, 'Philippine Business bank', '', 'Nov. 2013 to Oct 2017'),
(10, 336, 'LGU Kauswagan,', '', '2016 - present'),
(11, 336, 'MTIM', '', '2017 - Present'),
(12, 337, 'Linamon Municipal Police Station', 'PNP Non-Uniformed Personnel  ', ''),
(13, 338, 'Iligan City National High School', 'Contractual Employee', ' 2008 - 2009'),
(14, 339, 'City Prosecutor’s Office (DOJ) – Gensan', 'Prosecutor', ''),
(15, 340, 'Duray Law Office', 'Attorney ', ''),
(16, 340, 'MSU Gensan', 'Faculty', ''),
(17, 341, 'Jhanom’s Steel ', 'Managing Owner', ''),
(18, 341, 'Primary Prints ', 'Managing Owner', ''),
(19, 341, 'Green Lining Taxi', 'Managing Owner', ''),
(20, 342, 'PSGTC', 'Sales Executive', ''),
(21, 343, 'Department of Justice', 'City Prosecutor, OCP – Bayugan City', ''),
(22, 344, 'PNP PRO ARMM', 'Police Superintendent', ''),
(23, 345, 'BJMP Polomolok', 'Jaill Officer', ''),
(24, 346, 'LGU Glan, Sarangani Province', 'Secretary to the Sanggunian', ''),
(25, 347, 'BJMP GenSan City Jail', 'Jail Officer', ''),
(26, 348, 'Canada Post', 'Rural Sub – Urban Mail Carrier', ''),
(27, 349, 'Sarangani Development Cooperative (Alabel, Tupi, Koronadal Services Offices', 'General Manager', ''),
(28, 350, 'Seagull Fishing Venture', '', ''),
(29, 351, 'LGU Gensan HR Department', 'Human Resource Management Officer II / Acting Section Chief - Discipline', ''),
(30, 352, 'Department of Agrarian Reform', '', ''),
(31, 353, 'Public Attorneys Office', 'Attorney', ''),
(32, 354, '', 'Freelance Chef', ''),
(33, 355, 'DepEd ', 'Visual Artist', ''),
(34, 355, 'Teacher 1 ', 'VP Kandapada South Central Mindanao Artist', ''),
(35, 356, 'DepEd Koronadal City', 'HRMO', ''),
(36, 357, 'Bureau of Fire Protection', 'Chief Intelligence and investigation / Chief Internal Affair Service', ''),
(37, 358, 'PT Mayora (Vouno Trade and Marketing Services Corp) Makers of Kopiko Products', 'Merchandising and Promotions Supervisor', ''),
(38, 359, 'Public Attorney’s Office (Maasim, Sarangani District)', 'OIC District Public Attorney', ''),
(39, 360, 'SAFI Group of Companies', 'Human Resource / Legal Officer', ''),
(40, 361, 'Dole Philippines Inc.', 'HR Jobcon Management', ''),
(41, 362, 'Alconera Law Office', 'Junior Partner', ''),
(42, 363, 'Gensan Shipyard and Machine Works, Inc', 'Legal Department Head', ''),
(43, 364, 'DepEd Gensan', 'Teacher II', ''),
(44, 365, 'Duray Law Office', 'Secretary', ''),
(45, 366, 'DILG', 'Staff', ''),
(46, 367, 'LGU Maasim', '', ''),
(47, 368, 'Bureau of Fire Protection', 'Fire Officer 1', ''),
(48, 369, 'Drippers Lounge', 'Owner ', ''),
(49, 369, 'Meattyibol Meat Shop', 'Operations Manager', ''),
(50, 370, 'DepEd', 'Admin Assistant II', ''),
(51, 371, 'Dole Philippine School', 'Teacher', ''),
(52, 372, 'Lemon Gen. Mdsg.', 'Self – Employed', ''),
(53, 373, 'Dole Stanfilco ', 'Labor Relations Officer', ''),
(54, 374, 'LGU Gensan', 'Communications Officer – City Mayor’s Office', ''),
(55, 375, 'Blue Store Grocery', 'Owner', ''),
(56, 376, 'Camels back water refilling station', 'Owner', ''),
(57, 377, 'LGU GSC', 'Admin Assistant III - CIAS', ''),
(58, 378, 'St. Patrick Math – Sci School', 'Finance Officer', ''),
(59, 379, 'Gov Employee ', 'Clerk of Court ', ''),
(60, 379, 'Glow Beauty Salon and Barber Shop', 'Pedicurist', ''),
(61, 380, 'Bureau of Internal Revenue – Gensan', 'OIC – Assistant Chief, Legal Division', ''),
(62, 381, 'LGU San Isidro', 'Barangay Secretary ', ''),
(63, 381, 'Holy Trinity College', 'Part Time Teacher', ''),
(64, 382, 'RD Fishing', 'Legal Head', ''),
(65, 383, 'KPS – SEED Inc.', 'HR and Admin Manager', ''),
(66, 384, 'FK House of Cashews Restaurant', '', ''),
(67, 384, 'Viajar, Degino, Hagoriles Law Office', '', ''),
(68, 385, 'SD Law Office', '', ''),
(69, 386, 'PLGU Sarangani', 'SO II', ''),
(70, 387, 'RTC B35 Lagao Hall of Justice', 'Court Decongestion Officer', ''),
(71, 388, 'Cambarijan Trucking Services', 'Manager', ''),
(72, 389, 'RareJob Phil., Inc', 'Home - Based Online English Tutor', ''),
(73, 390, 'A&K Legal and Associates Law Office', 'Managing Partner', ''),
(74, 391, 'LGU Malapatan', 'Admin Officer III', ''),
(75, 392, 'Pantua Law Office', 'Associate Lawyer', ''),
(76, 393, 'Pantua Law Office', 'Secretary / Paralegal', ''),
(77, 394, 'PLGU Sarangani Alabel', 'Legislative Staff Assistant - PVGO', ''),
(78, 395, 'Pantua Law', '', ''),
(79, 396, 'NSW, Australia', '', ''),
(80, 397, 'AXA Philippines', 'Financial Advisor', ''),
(81, 398, 'Amsua Multi – purpose Cooperative', '', ''),
(82, 399, 'DPWH-Sarangani DEO', 'Accountant II', ''),
(83, 400, 'City Legal Office-GSC', 'Legal Assistant I', ''),
(84, 401, 'Narcilla Law Office', 'Secretary', ''),
(85, 402, 'Office of the Provincial Prosecutor', 'Technical Aide', ''),
(94, 403, '', '', ''),
(158, 333, 'Queply', 'Back end developer', '2016 - 2017'),
(159, 403, '', '', ''),
(160, 404, '', '', ''),
(161, 405, '', '', ''),
(162, 407, 'City Mayor\'s Office', '', ''),
(163, 408, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;
--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
