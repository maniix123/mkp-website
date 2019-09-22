-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 10:49 AM
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
(46, 46, 'University of Korca \"Fan Noli\"', 'Barclay College', 'university-of-korca-fan-noli', 'Gulbarga University', 'http://dummyimage.com/132x172.bmp/cc0000/ffffff'),
(47, 47, 'College of Technology at Jazan', 'Universidade Metropolitana de Santos', 'college-of-technology-at-jazan', 'Evangelische Fachhochschule für Sozialpädagogik der \"Diakonenanstalt des Rauhen Hauses\" Hamburg', 'http://dummyimage.com/247x178.png/cc0000/ffffff'),
(48, 48, 'Northern University Bangladesh', 'Institute of Teachers Education, Islamic Education', 'northern-university-bangladesh', 'Helsinki University of Technology', 'http://dummyimage.com/168x101.jpg/ff4444/ffffff'),
(49, 49, 'Shahrekord University', 'Tennessee Wesleyan College', 'shahrekord-university', 'Nagaland University', 'http://dummyimage.com/110x132.jpg/cc0000/ffffff'),
(51, 51, 'Standford Online University', 'Universidad Carlos III de Madrid', 'standford-online-university', 'Zagazig University', 'http://dummyimage.com/110x211.bmp/ff4444/ffffff'),
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
(14, 1, 'Cairoden ', 'Radiamoda', '09166457370', 'Iligan City', 'Iligan City', '', 'Abdul Wahid Bidin II', 'Cairoden', 'Radiamoda', '$2y$10$f8VotyP16eOM0UfrVCu8o.mB4Bz6we0/omFb1RsqXD9HkwLjJ50Qq', 'radiamoda', 'activated', 'user', '', ''),
(15, 1, 'Freshan Noveth ', 'Alcaba', '09557118943', 'Nilo Obina Sr. Residence, Gate 3, Tulip St, Purok Mabuhay, Tubod, Iligan City, 9200,', 'Nilo Obina Sr. Residence, Gate 3, Tulip St, Purok Mabuhay, Tubod, Iligan City, 9200,', '', 'Elena Kagan', 'Freshan', 'Alcaba', '$2y$10$DVDJL2zCSRLDpWnbDtA7u.PoXcPUxJDcTG6J9ai6/G0..RMI4Si.a', 'alcaba', 'activated', 'user', '', ''),
(20, 1, 'Karen Kristy', 'Ubanan', '09362349436', 'Iligan City', 'Iligan City', '', 'Irene Cortes', 'Karen', 'Ubanan', '$2y$10$r5pPPSveVIdEFHhIOqsMJul7ZroJRmBLcrwhHGv..mFarOQqsbw6q', 'ubanan', 'activated', 'user', '', ''),
(21, 1, 'Irish Louise', 'Dimitiman', '09952926426', 'Blk. 15 Lot 18 Steeltown, Sta. Elena, Iligan City', 'Blk. 15 Lot 18 Steeltown, Sta. Elena, Iligan City', '', 'Teresita De Castro', 'Irish', 'Dimitiman', '$2y$10$T322rOaIH2KKIzotUwT2V.HeCNLTKfE4JHDvSZgA1XI9vsZVKA/ie', 'dimitiman', 'activated', 'user', '', ''),
(22, 1, 'Althea', 'Quijano', '09363963100', 'Purok 5, Poblacion, Manticao Misamis Oriental', 'Purok 5, Poblacion, Manticao Misamis Oriental', '', 'Conchita Morales-Carpio', 'Althea', 'Quijano', '$2y$10$stoaXThv3/MamSw.wgQDuuzHEek2N3ISkOJcCxUVNtISfBiFAekpS', 'quijano', 'activated', 'user', '', ''),
(23, 2, 'Alleson Karl', 'Daroi', '', 'Iligan City', 'Iligan City', '', 'Atilla The Hun', 'Alleson', 'Daroi', '$2y$10$lxV2QjsVVQbWkKq4FWbSL.l4wK6IAOhlv9hPHT7cYhF8itZSKSVvG', 'daroi', 'activated', 'user', '', ''),
(24, 1, 'Bea Fatima', 'Bangcola', '09157509233', 'Iligan City', 'Iligan City', '', 'Nimfa Vilches', 'Bea', 'Bangcola', '$2y$10$lGWIPsyj27/7gXrpyjo3XOy0m.L.H9JPV2HTAKMYQH0Kf6o6x3kxm', 'bangcola', 'activated', 'user', '', ''),
(25, 1, 'Aleah Hidaya A. Hadji', 'Rakhim', '09055748285', 'Iligan City', 'Marawi City', '', 'Miriam Defensor-Santiago II', 'Aleah', 'Rakhim', '$2y$10$LZjXcSY6cAPWCG.loEaJWuxRjiPt62eqvnKyGt3fKXNyt8V8eUu0u', 'rakhim', 'activated', 'user', '', ''),
(26, 2, 'Sittie Hadjara', 'Polangi', '', 'Iligan City', 'Iligan City', '', 'Mary Tudor', 'Sittie', 'Polangi', '$2y$10$hoqHkGmJdQ6TKPi.R5.uIeqGcZ.jimk4LUdc99E7ZlcMGpT2x8nnC', 'polangi', 'activated', 'user', '', ''),
(27, 2, 'Esnaira', 'Macabago', '', 'Iligan City', 'Iligan City', '', 'Diana Spencer', 'Esnaira', 'Macabago', '$2y$10$lhKhYSmF4ZPvyVE2VZtLi.aS.3LtwmVpz9kr/1U99Y2YFasahUILW', 'macabago', 'activated', 'user', '', ''),
(28, 2, 'Natasha Nicole', 'Maki', '09276734730', 'Iligan City', 'Iligan City', '', 'Marie Antoinette', 'Natasha', 'Maki', '$2y$10$M1a6rQPjecukjsgLo/eX2ujCwiL0H3D7ysqwbOU7oJ4boBZHvvKei', 'maki', 'activated', 'user', '', ''),
(30, 2, 'Norhaina', 'Dipatuan', '09177719975', 'Iligan City', 'Bacolod, Kalawi, Lanao Del Sur', '', 'Catherine The Great', 'Norhaina', 'Dipatuan', '$2y$10$65/IARjrjHdGxXRxIbxFNusrZuTKCzJUsVdeYQCGaMF2fpSF4UiUa', 'dipatuan', 'activated', 'user', '', ''),
(31, 2, 'Jaminah', 'Pangandag', '09064105620', 'Iligan City', 'Tubod, Lanao Del Norte', '', 'Estella Bernabe', 'Jaminah', 'Pangandag', '$2y$10$4ajK9ndHqMGw5rS/q2kL2uEXYvt1DMWTG9poRhKDSHNlPljj.Kgzy', 'pangandag', 'activated', 'user', '', ''),
(32, 2, 'Kharleen Dela', 'Cruz', '', 'Iligan City', 'Iligan City', '', 'Maria Lourdes Sereno', 'Kharleen', 'Dela Cruz', '$2y$10$wplwsmIW3Bj74wX8U8PXp.Ibu.q5fFF3d0xGqlMNH3zAWPFk2sWM2', 'dela cruz', 'activated', 'user', '', ''),
(33, 2, 'Sittie Najmah', 'Sambitory', '', 'Iligan City', 'Iligan City', '', 'Margareth Thatcher II', 'Sittie', 'Sambitory', '$2y$10$Ud9E5.DRWEZh7InaY7y4OuT8QCSZ5NEsYWVye/b0u8coQsMqhof.C', 'sambitory', 'activated', 'user', '', ''),
(34, 13, 'Mohammad Naim', 'Macapodi', '', 'Iligan City', 'Iligan City', '', '', 'Mohammad', 'Macapodi', '$2y$10$2UudBqtL6HIsVkdphjp7e.4VC/jXevqCmSkxAp8FDGSZM.BWL7z9G', 'macapodi', 'activated', 'user', '', ''),
(35, 13, 'Johaima', 'Ditucalan', '', 'Iligan City', 'Iligan City', '', '', 'Johaima', 'Ditucalan', '$2y$10$buVUgrfQ8/Hoq31K1Wv4QuIOKOAOJHNvi7Fw6NxZgWStqIdZReC7W', 'ditucalan', 'activated', 'user', '', ''),
(36, 13, 'Mara Beatrice', 'Mamauag', '', 'Iligan City', 'Iligan City', '', '', 'Mara', 'Mamauag', '$2y$10$IEHShbrRT/K.nhyuQEyxueaSfG6gIDOrjyh/kpg/HD.6jnV4EtaH2', 'mamauag', 'activated', 'user', '', ''),
(37, 13, 'Amer Al-Nashief', 'Manaros', '', 'Iligan City', 'Iligan City', '', '', 'Amer Al-Nashief', 'Manaros', '$2y$10$7D7febVMX32/kAJe4oG91eJFTjdXOCng7DXFKpO42aazjFPaEJ.pm', 'manaros', 'activated', 'user', '', ''),
(38, 13, 'Van Ceasar', 'Openiano', '', 'Iligan City', 'Iligan City', '', '', 'Van', 'Openiano', '$2y$10$Hustfz/CpvxGLHtE8u3wMu5le1g.KnHAm2PxPOiJBr7Ckpb.LU5Fi', 'openiano', 'activated', 'user', '', ''),
(39, 13, 'Solaiman', 'Tataro ', '', 'Iligan City', 'Iligan City', '', '', 'Solaiman', 'Tataro ', '$2y$10$PGJKB5CYil.VltCjNyEQBeQBvGudxTMAS.qCTVDTmx95907FBzHmu', 'tataro ', 'activated', 'user', '', ''),
(40, 12, 'Porma Yusoph Hadji', 'Datu', '', 'Iligan City', 'Iligan City', '', '', 'Porma', 'Datu', '$2y$10$i/Hv6KTXr0pWYlCzZLIemureTGpao1uLJ2WVNjC9QeOQOtyA5uO2S', 'datu', 'activated', 'user', '', ''),
(41, 12, 'Jhalal', 'Casan', '', 'Iligan City', 'Iligan City', '', '', 'Jhalal', 'Casan', '$2y$10$UV2TGLl.oGn7dwqOBOvgR.60sqR5MnE6Jq2u1kHv78Job9UrgYONO', 'casan', 'activated', 'user', '', ''),
(42, 12, 'Faez', 'Camama', '', 'Iligan City', 'Iligan City', '', '', 'Faez', 'Camama', '$2y$10$elJoFteS4XqbCX.eXtoqe.hon1RjDDzmwnj0heO3P5dWeyn0WUDdK', 'camama', 'activated', 'user', '', ''),
(43, 12, 'Amer Hussien', 'Manaros', '', 'Iligan City', 'Iligan City', '', '', 'Hussien', 'Manaros', '$2y$10$vQujQiWJOLbvazD.cXkbL.pVR8qJUn7.TsfB7TAoBHKilfsXlZuUq', 'manaros', 'activated', 'user', '', ''),
(44, 11, 'Shinelyn', 'Mendoza', '', 'Iligan City', 'Iligan City', '', '', 'Shinelyn', 'Mendoza', '$2y$10$WZmkK7aUX6ym1aVW9h38cu2TSdkGh9Kd5tLV2.fmnAnE92lf7b1ba', 'mendoza', 'activated', 'user', '', ''),
(46, 11, 'Nasher', 'Dumagay', '', 'Iligan City', 'Iligan City', '', '', 'Nasher', 'Dumagay', '$2y$10$n1ZfM/lORS/Y3AFkhEq2iuwBVBcZODKDaRDlJxUDf9E/S5diiv54a', 'dumagay', 'activated', 'user', '', ''),
(47, 11, 'Haroun Al-Rashid', 'Usop', '', 'Iligan City', 'Iligan City', '', '', 'Haroun', 'Usop', '$2y$10$rQzB2AMdLi4z2c0mzw.odeIPd2yBlAwRRq0qlZy81g7/gSScRoiDq', 'usop', 'activated', 'user', '', ''),
(48, 11, 'Ambor', 'Ambor', '', 'Iligan City', 'Iligan City', '', '', 'Ambor', 'Ambor', '$2y$10$nCvxKdpxtgpiPoFfXYF6COpE/ssXrx5DykWOZip3IcYD476XDo5U2', 'ambor', 'activated', 'user', '', ''),
(49, 11, 'Abdul Jabbar', 'Pangandaman', '', 'Iligan City', 'Iligan City', '', 'Abdul Wahid Bidin I', 'Abdul Jabbar', 'Pangandaman', '$2y$10$/XSHTtmyTsHR7je2tAtofuozw1gTuXeBxvE5IsrZDgVyMUj.pkd5q', 'pangandaman', 'activated', 'user', '', ''),
(51, 11, 'Mohammad Nacif', 'Ampaso', '', 'Iligan City', 'Iligan City', '', '', 'Mohammad Nacif', 'Ampaso', '$2y$10$ck0dPJ4E7SaJQIWAHfbTQ.lwqrMt36bT/GWS6D8UU1JQpetk2gHUe', 'ampaso', 'activated', 'user', '', ''),
(53, 10, 'Charmaigne', 'Inicio', '', 'Iligan City', 'Iligan City', '', '', 'Charmaigne', 'Inicio', '$2y$10$I.lhbSOfjRGlTL4RIs88XeeUN7AVWXvm/f1ZmrjUKnm6GbhTHWMya', 'inicio', 'activated', 'user', '', ''),
(54, 10, 'Farajibah', 'Tabuacar', '', 'Iligan City', 'Iligan City', '', '', 'Farajibah', 'Tabuacar', '$2y$10$nk1O21vGFqG5RavYuvjSduywFxwrGY6OqwcZasHwFbwVbWsnDI3s2', 'tabuacar', 'activated', 'user', '', ''),
(55, 10, 'Shelley', 'Lasmarias', '', 'Iligan City', 'Iligan City', '', 'Sandra Day O\'Connor I', 'Shelley', 'Lasmarias', '$2y$10$ljuGAqISGWNsfgKfOKeFiel/dtZWJUkAADPUG1OuEo7ZtHe/1mGqy', 'lasmarias', 'activated', 'user', '', ''),
(56, 10, 'Janine', 'Capangpangan', '', 'Iligan City', 'Suarez, Iligan City', '', '', 'Janine', 'Capangpangan', '$2y$10$3ftXNqPBPp9MY6YQXai7XuXep4ynitnHKq4Q8orBgZ9DO9uoLFrxK', 'capangpangan', 'activated', 'user', '', ''),
(57, 10, 'Shiela B.', 'Al-ag', '', 'Iligan City', 'Prospeidad, Agusan Del Sur', '', '', 'Shiela', 'Al-ag', '$2y$10$00aS3sNr8olRDFXHz1nbP.p9241V9XvTcA695KjGB1GCJfkhdSCIe', 'al-ag', 'activated', 'user', '', ''),
(58, 10, 'Karyl Mae B.', 'Otaza', '', 'Iligan City', 'Prospeidad, Agusan Del Sur', '', '', 'Karyl', 'Otaza', '$2y$10$bBb45Ol1Ws7tCVcq8gJC7ewEnkwS742G/R7f.x2/TCo3FfJAjcxba', 'otaza', 'activated', 'user', '', ''),
(59, 10, 'Cpriano', 'Baron', '', 'Linamon, Iligan City', 'Iligan City', '', '', 'Cpriano', 'Baron', '$2y$10$WAtojwK3eYl6FYYVpYg8Me67oU9HWyq5LEkbPYFtv1NNvqTAzf8ay', 'baron', 'activated', 'user', '', ''),
(60, 9, 'Lainera M. ', 'Nassief - Manan', '09276737083', 'Iligan City', 'Madalum, Lanao Del Sur', '', 'Josefa Llanes Escoda', 'Lainera', 'Nassief-Manan', '$2y$10$kEW8mVzBP0W2IJ5rojADteT.zX8UZcycMNtU4M2HXB72.Mzearr3u', 'nassief-manan', 'activated', 'user', '', ''),
(61, 9, 'Sorhaine M.', 'Azis', '09568354695', 'Cebu City', 'Pantao Ragat, Lanao Del Norte', '', 'Tandang Sora', 'Sorhaine', 'Azis', '$2y$10$2vfoaYzQh7PJaCHDuF0LlOZRgE5j/3AhFHy7pGMaXu0sPMmdqWQKO', 'azis', 'activated', 'user', '', ''),
(62, 9, 'Jamilla N.', 'Laguindab', '09263326391', 'Iligan City', 'Bacolod, Kalawi, Lanao Del Sur', '', 'Grace Poe I', 'Jamilla', 'Laguindab', '$2y$10$LicqLSKabhT3tk9EItVpyuOpesk9v3mnjGb.HH88S2qLh76Dm5p3O', 'laguindab', 'activated', 'user', '', ''),
(63, 9, 'Loren Grace N.', 'Cordova', '', 'Cebu City', 'Cebu City', '', 'Gabriela Silang', 'Loren', 'Cordova', '$2y$10$B7U0VyA/3n4mme3BuZ/w7.V63giB2T3RRaulqW/hm5S8JVSxmsCkO', 'cordova', 'activated', 'user', '', ''),
(64, 9, 'Carisse A.', 'Orbe', '09161270410', 'Iligan City', 'Iligan City', '', 'Leila De Lima', 'Carisse', 'Orbe', '$2y$10$bQwuD36lURqBVqF.cwMjI.ry/eHuDQ6wCyR.YqO959aKYmWbjDgKW', 'orbe', 'activated', 'user', '', ''),
(66, 9, 'Mohaimen M.', 'Macaumbang', '09157825929', 'Cagayan De Oro City', 'Balo-I, Lanao Del Norte', '', 'Jose Rizal', 'Mohaimen', 'Macaumbang', '$2y$10$CzU2EgcFy/eHdRZdLq3RAO0/NnvjB13ZFrG4Smv53ddUKCxeSEUSO', 'macaumbang', 'activated', 'user', '', ''),
(67, 9, 'Amer Hassan B.', 'Usop', '09152181406', 'Iligan City', 'Tubod, Lanao Del Norte', '', 'Fidel V. Ramos', 'Amer', 'Usop', '$2y$10$fHJeQsbfke7s8J9xAOqPc.KO1PcajuX7zfebtwvv54nu.OJYTnc0K', 'usop', 'activated', 'user', '', ''),
(68, 9, 'Mark Jason T.', 'Cesar', '09164934712', 'Iligan City', 'Iligan City', '', 'Emillio Aguinaldo', 'Mark', 'Cesar', '$2y$10$1BrwxCWagzo0ykk69MftgOxirwFAmwaUxBT8YD1zkjyNXCgC8KLji', 'cesar', 'activated', 'user', '', ''),
(69, 9, 'Prince Hazzanhul Saddam D.', 'Jamil', '09052154898', 'Iligan City', 'Pagayawan, Lanao Del Sur', '', 'Andres Bonifacio', 'Prince', 'Jamil', '$2y$10$XwzsXA95IW.NdewOXbrVYevkImnxh3gNISjNXnHO0iFl/KtBUX5B6', 'jamil', 'activated', 'user', '', ''),
(70, 9, 'Al Husayn L. ', 'Sanguila ', '09273704752', 'Kauswagan, Lanao Del Norte', 'Kauswagan, Lanao Del Norte', '', 'Lapu-lapu', 'Al', 'Sanguila ', '$2y$10$YC4SyiWLxKeDNqEnrxGucu1OVUm0Sm7Pl6uo3C1p.7MLOkR/BPJ8a', 'sanguila ', 'activated', 'user', '', ''),
(71, 8, 'Guilling', 'Macauyag', '', 'Iligan City', 'Iligan City', '', '', 'Guilling', 'Macauyag', '$2y$10$dN1NcnkcdfF0hCOhZAGIC.2k5B918JH2mXvTcyZhLPjaIiHQKLUMa', 'macauyag', 'activated', 'user', '', ''),
(72, 8, 'Reymond', 'Bago', '', 'Bukidnon', 'Bukidnon', '', 'Florentino Feliciano', 'Reymond', 'Bago', '$2y$10$nqi/IFRFrgqmq0B2TMRRue2Ng5sEPnXD/bcqqbl.rvfeue3iZmFAG', 'bago', 'activated', 'user', '', ''),
(73, 8, 'Sammy', 'Naik', '', 'Baloi, Lanao Del Norte', 'Baloi, Lanao Del Norte', '', '', 'Sammy', 'Naik', '$2y$10$.ZaGhDC7q1268zv885.XZesBUB6e/OxAQEiTzAozdzgIBRNYfz0X2', 'naik', 'activated', 'user', '', ''),
(74, 8, 'Joel', 'Taporco', '', 'Iligan City', 'Iligan City', '', '', 'Joel', 'Taporco', '$2y$10$FU68LtZlx86klUnmQnrvyOB7MWyugtJTVr.OfORxYnBi0ywRjYCju', 'taporco', 'activated', 'user', '', ''),
(75, 8, 'Albert', 'Teano', '', 'Iligan City', 'Iligan City', '', '', 'Albert', 'Teano', '$2y$10$QpQzcPeeczrzTaz0HqWawuAnuVT6LbsqNxZlEvaWLYVnjO30YCqge', 'teano', 'activated', 'user', '', ''),
(76, 8, 'Alan', 'Baylon', '', 'Iligan City', 'Iligan City', '', '', 'Alan', 'Baylon', '$2y$10$DrOqjE0O8Wc8oQU7SAxY7O2HQ3QXbBdI7K5jehAoYes4pXE5xQ.mm', 'baylon', 'activated', 'user', '', ''),
(77, 8, 'Jamel', 'Sultan', '', 'Iligan City', 'Iligan City', '', 'Jose Benedicto Luna Reyes ', 'Jamel', 'Sultan', '$2y$10$Gs5Y3eHFXqpvtDZdAeCsoOEN87FSq14r.fKHj1xXsJNrWrwz9CG9C', 'sultan', 'activated', 'user', '', ''),
(78, 8, 'Nestor', 'Ortiz', '', 'Iligan City', 'Iligan City', '', 'Hilario Davide', 'Nestor', 'Ortiz', '$2y$10$6usYCUvFuZDnQX0jjbsiJ.p/SEoVfZ9djNDF3yfAM95eL0gjvLlf2', 'ortiz', 'activated', 'user', '', ''),
(79, 8, 'Ohara', 'Aliman-Guiang', '', 'Iligan City', 'Iligan City', '', '', 'Ohara', 'Aliman-Guiang', '$2y$10$pmOptAKQ.tlZYH2vjFu/Hed7nCCNy2qPxK0bMN919mFXp1N7h0MCG', 'aliman-guiang', 'activated', 'user', 'yes', ''),
(80, 8, 'Daisy Jane', 'Labao-Asencion', '', 'Iligan City', 'Iligan City', '', '', 'Daisy', 'Labao-Asencion', '$2y$10$5to52a19IQnn3SoN73342.lny0fymCgWrB6Ne6jJNeQ7NmDfodjuq', 'labao-asencion', 'activated', 'user', 'yes', ''),
(81, 8, 'Diana Rose', 'Diaz', '', 'Bukidnon', 'Bukidnon', '', 'Cecilia Muñoz-Palma', 'Diana', 'Diaz', '$2y$10$EjF.gyewkLvaK67GKo7rk.uaz4KpqsZIRR0EJDByhyWv.i3Y3Qc.y', 'diaz', 'activated', 'user', '', ''),
(82, 8, 'Diomiel A.', 'Basnig', '', 'Magallanes, Agusan Del Norte', 'Magallanes, Agusan Del Norte', '', '', 'Diomiel', 'Basnig', '$2y$10$h8emQoctbP/Fk1ccGytrmeWx9wcYGuC3SFPHtTxq/ZGPSywSNdEGi', 'basnig', 'activated', 'user', '', ''),
(83, 8, 'Ronald C.', 'Lara', '09265428836', 'Iligan City', 'Sibagat, Agusan Del Sur', '', 'Hernani Perez', 'Ronald', 'Lara', '$2y$10$XwPgWM8cxav/DplfatLymOXlLjxoksu0RdbN4yImDPtCIlQ5N7BVy', 'lara', 'activated', 'user', '', ''),
(84, 7, 'Danilo', 'Dumanduan', '', 'Iligan City', 'Iligan City', '', '', 'Danilo', 'Dumanduan', '$2y$10$P7jmudxTSHHdABaoXnNgRuO5rRryW0Z/50iuerRN8nRjU0fgQ4Az.', 'dumanduan', 'activated', 'user', '', ''),
(85, 7, 'Wilhelmo', 'Digamo', '', 'Iligan City', 'Iligan City', '', '', 'Wilhelmo', 'Digamo', '$2y$10$jyMz3.tWVGj.E0ATEY58qOYmDaOqdS2gMBu.H2OCPN11ND338/Y1O', 'digamo', 'activated', 'user', 'yes', ''),
(86, 7, 'Engelbert', 'Maneja Jr.', '', 'Iligan City', 'Iligan City', '', '', 'Engelbert', 'Maneja Jr.', '$2y$10$SJnuRW8r0HwLhgbKioxAeuXwIsxZoTU8qD3dQ7LrQ6fcE6vStUC1u', 'maneja jr.', 'activated', 'user', '', ''),
(87, 7, 'Isidro', 'Carumba', '', 'Iligan City', 'Iligan City', '', '', 'Isidro', 'Carumba', '$2y$10$atRlnj15ahcxNBes67AalOZUpJPim3XsMnlQ/fvHqW618jGBAU2j.', 'carumba', 'activated', 'user', '', ''),
(88, 7, 'Ronalyn', 'Tamayo-Pantaleon', '', 'Iligan City', 'Iligan City', '', '', 'Ronalyn', 'Tamayo-Pantaleon', '$2y$10$46u4bTxSmfiK4.dTIh6MjeO9p4yCUcSBtAPMCEU/xFjSblDpN3iEe', 'tamayo-pantaleon', 'activated', 'user', '', ''),
(89, 7, 'Kim Mari', 'Uy', '', 'Iligan City', 'Iligan City', '', '', 'Kim', 'Uy', '$2y$10$lPyb1XCukbpMuq03c29vQOMt.Pxph0b2OkGVXjD/wazhvv1UoUfEe', 'uy', 'activated', 'user', '', ''),
(90, 7, 'Nerieza', 'Lumahang-Caponong', '', 'Iligan City', 'Iligan City', '', '', 'Nerieza', 'Lumahang-Caponong', '$2y$10$bu1Qfol9eCjGURu2l1ZZYuPVkux/.siTqgRGt6EYeL/9w6DhdOO5C', 'lumahang-caponong', 'activated', 'user', '', ''),
(91, 7, 'Samuel', 'Caponong Jr.', '', 'Iligan City', 'Iligan City', '', '', 'Samuel', 'Caponong Jr.', '$2y$10$3IgNhXkjIibFAg/hNHJsme6R/ioHKExyUWoKLCoH2iw3fQNjDpu7S', 'caponong jr.', 'activated', 'user', 'yes', ''),
(92, 7, 'Mabel', 'Enlabo-Abarca', '', 'Iligan City', 'Iligan City', '', '', 'Mabel', 'Enlabo-Abarca', '$2y$10$6H/giI5NIV0.PEbPLEMxCeBpx0hAqK7M1/gUihPrSbuZzLj4PV.Qu', 'enlabo-abarca', 'activated', 'user', '', ''),
(93, 7, 'Bertrum', 'Abarca', '', 'Iligan City', 'Iligan City', '', '', 'Bertrum', 'Abarca', '$2y$10$s1KtfMVk9RBl.fDTg6JYn.GoyJ0tNUTMMmt0mMjCmpEFXGT/37GcS', 'abarca', 'activated', 'user', '', ''),
(94, 7, 'Mary Faith', 'Balmatero', '', 'Iligan City', 'Iligan City', '', '', 'Mary', 'Balmatero', '$2y$10$sEFbTWaRQWmPBpK2nmqYGu9UbXA8KuIV3RcTZJDn/nQT/C1cPP4f.', 'balmatero', 'activated', 'user', '', ''),
(95, 7, 'Moamar', 'Desimban', '', 'Iligan City', 'Iligan City', '', '', 'Moamar', 'Desimban', '$2y$10$4BMbGcLhqRGNBVG7pWXdBuSTzFJ8zyguT47.wyg8V/L8fIEA5t4M6', 'desimban', 'activated', 'user', '', ''),
(97, 7, 'Rommel Jason', 'Zalsos', '', 'Iligan City', 'Iligan City', '', '', 'Rommel', 'Zalsos', '$2y$10$liwwJO38xIZw2wcWXj0ghejuUP/zaArvHGyfFGgFP0W/SUXkYb8RO', 'zalsos', 'activated', 'user', '', ''),
(98, 7, 'Abdanieh', 'Sabdullah', '', 'Iligan City', 'Iligan City', '', '', 'Abdanieh', 'Sabdullah', '$2y$10$uO0KtWiZdYFZpvsBFrtoCOnqTGpfXKpOZXiS3z4JWWgL.jdEODr6u', 'sabdullah', 'activated', 'user', '', ''),
(101, 14, 'Jaafar Al Siddiq', 'Nicart', '', '', '', '', '', 'Jaafar', 'Nicart', '$2y$10$vxv/mnzBNfEEhs85WLDJt.UAtLeru8CJwY7K6XkWr5d2Owk0ukur6', 'nicart', 'activated', 'user', '', ''),
(102, 14, 'Esmael U.', 'Andang', '', '', '', '', '', 'Esmael', 'Andang', '$2y$10$EoKHd26XGC7pNzefPLW9BO9YwZ1Kemk6Rsqiy6UcPXPs8Fw/HmZyO', 'andang', 'activated', 'user', '', ''),
(104, 14, 'Nestor P.', 'Blace', '09164766461', 'Prk. 4 ?? Extension, Lanton Apopong, Gensan', 'Prk. 4 ?? Extension, Lanton Apopong, Gensan', '', '', 'Nestor', 'Blace', '$2y$10$TuT7Sg95XVtqLg2sodG/pOziHbDFbZaoaP0VqaM.ReTf.dFZnFfsq', 'blace', 'activated', 'user', '', ''),
(105, 14, 'Ryan L.', 'Ca-as, ', '', '', '', '', '', 'Ryan', 'Ca-as, ', '$2y$10$LOWuubx.whScTNnEhDBFuufqZ1iDHvkCJi/HHdJorjMP4ENm5htL.', 'ca-as, ', 'activated', 'user', '', ''),
(106, 14, 'Henry B.', 'Dazo', '', '', '', '', '', 'Henry', 'Dazo', '$2y$10$IcaMmDzWFzD.1lkLcoQyf.8ufSRI5hh9g7q4fKhy6CVHG3I1XX.CC', 'dazo', 'activated', 'user', '', ''),
(107, 14, 'Esteban G.', 'Diño', '', '', '', '', '', 'Esteban', 'Diño', '$2y$10$NZ.Kaph6x7dVQSJstJDD4u1DiNouGfNxKM8iX1Pr/6.UBPW4e7bVa', 'di??o', 'activated', 'user', '', ''),
(109, 14, 'Inocencio Jr.', 'Escalada', '', '', '', '', '', 'Inocencio', 'Escalada', '$2y$10$9jI8hee83ONKz8kr3gE5OeScJniexmEe6u0prCjw.rjWw5YbLYxi2', 'escalada', 'activated', 'user', '', ''),
(110, 14, 'Leonardo O.', 'Eugenio', '', '', '', '', '', 'Leonardo', 'Eugenio', '$2y$10$QvSyaw97xwi886Wt9.dANOPzbW11NHh7k0Xr406a38pHUseygCMDu', 'eugenio', 'activated', 'user', '', ''),
(111, 14, 'Manolito O.', 'Olegario', '', '', '', '', '', 'Manolito', 'Olegario', '$2y$10$sovVoGst/5jXSHmjL32vPuehSr0mDKTANB4yueeGZngdAm1jtKZ3a', 'olegario', 'activated', 'user', '', ''),
(113, 14, 'Steve Xandrix J.', 'Peralta', '', '', '', '', '', 'Steve ', 'Peralta', '$2y$10$Jt62g9IXdBy5YHWW/adS9.3GrIpJXP1Ol1DuUb43.rym/8P/mcQWy', 'peralta', 'activated', 'user', 'yes', ''),
(114, 14, 'Marlon P.', 'Villanueva', '', '', '', '', '', 'Marlon', 'Villanueva', '$2y$10$2BhhK69Fa3qzp.8Kb8AK7emOWzSaIv8k76OKhoWofZsZFhFYYtp5S', 'villanueva', 'activated', 'user', 'yes', ''),
(115, 14, 'Hilton', 'Aguja', '', '', '', '', '', 'Hilton', 'Aguja', '$2y$10$JIkhvP/ELLyzJVv3gljsP.hqw2CCkaXkdjvU8mDSXzX1BM5gyKxBG', 'aguja', 'activated', 'user', '', ''),
(116, 14, 'Ronnie', 'Allawan', '', '', '', '', '', 'Ronnie', 'Allawan', '$2y$10$Ng9BtFhsVhjvPQDmNnleXOIbvRO1n8RWzbQ0NnZOBHSM3efKmoSt6', 'allawan', 'activated', 'user', '', ''),
(117, 14, 'Francisco', 'Behira', '', '', '', '', '', 'Francisco', 'Behira', '$2y$10$8hcuXxZRQIWxQhYVH6A7nOgmrn8xZgCLNyhdHeJTo3vFqYpmHeiFW', 'behira', 'activated', 'user', '', ''),
(118, 14, 'David Allan', 'Chua', '', '', '', '', '', 'David', 'Chua', '$2y$10$nnyomvAQ47qXvmBlBF/0UuJ9R.nuQwMGZUPGZ3Fdu9WX1PZsU0IqK', 'chua', 'activated', 'user', '', ''),
(119, 14, 'Virgilio', 'Concepcion', '', '', '', '', '', 'Virgilio', 'Concepcion', '$2y$10$ZFn45wylNJByACUZk6ZUtuXMCgRZA287gzv9QSQDhQ10xT9TTR0lm', 'concepcion', 'activated', 'user', '', ''),
(120, 14, 'Allan', 'Farnazo', '', '', '', '', '', 'Allan', 'Farnazo', '$2y$10$vQpZSxyytze1btM/fM99JezsWwhSRSGMlv8xmMhSQgJY28.L8JqbO', 'farnazo', 'activated', 'user', '', ''),
(121, 14, 'Richard', 'Halili', '', '', '', '', '', 'Richard', 'Halili', '$2y$10$9xZx2Rk5LxVTCzrX6a6IpemMLYth81wlKcIdZDhAsj7Ao7Cb.eUg6', 'halili', 'activated', 'user', '', ''),
(122, 14, 'Edward', 'Lapong', '', '', '', '', '', 'Edward2', 'Lapong', '$2y$10$YIsDbQUXWbdXUYVlse7S3.gaPPDRsEosf9hEXcHvPF.f30tJNjs3K', 'lapong', 'activated', 'user', '', ''),
(123, 14, 'Edward', 'Medida', '', '', '', '', '', 'Edward', 'Medida', '$2y$10$WJbMOs/HMM4wR7YlFU9nbejieIiijMrnHyW8XAdxpwoQZ.HfYR98W', 'medida', 'activated', 'user', '', ''),
(124, 14, 'Antonio', 'Ortiz', '', '', '', '', '', 'Antonio', 'Ortiz', '$2y$10$Z3ibYO/eiXcrScSpJhzg3.8Kt6cR9dWMD5Of/5RIEqan0dSlz3CFy', 'ortiz', 'activated', 'user', '', ''),
(125, 14, 'Calvin', 'Polistico', '', '', '', '', '', 'Calvin', 'Polistico', '$2y$10$rAiC3jH2mu8NNiu8J9bi/e5xiN.jgT.clpsnWkz1dJ2s3u9QOBnBy', 'polistico', 'activated', 'user', '', ''),
(126, 14, 'Jonathan', 'Reyes', '', '', '', '', '', 'Jonathan', 'Reyes', '$2y$10$XMmEFp6/.IPUAywuFNUrpectcUVHvM1tXaaF31jFq6NoMBtvghDWy', 'reyes', 'activated', 'user', '', ''),
(127, 14, 'Enrique II', 'Romero', '', '', '', '', '', 'Enrique', 'Romero', '$2y$10$x0e0F2kPBZJhCQbZ/7XSU.YU6qwdU3Ji.y3j1R5sJvRehOC9cxDs6', 'romero', 'activated', 'user', '', ''),
(128, 14, 'Candido', 'Sagabay', '', '', '', '', '', 'Candido', 'Sagabay', '$2y$10$RLSLVEIZ000pLehJKpegb.5EYM/W1ciAyp.Ohy6sdXhp73TosbIbu', 'sagabay', 'activated', 'user', '', ''),
(129, 14, 'Peelbar', 'Salarda', '', '', '', '', '', 'Peelbar', 'Salarda', '$2y$10$4D4hBHd7DKxCgEPzbY3TP.6K1te/BXv.5lpjOdiec2BO7Bm/0wpRy', 'salarda', 'activated', 'user', '', ''),
(131, 14, 'Maximo, Jr', 'Sebastian', '', '', '', '', '', 'Maximo,', 'Sebastian', '$2y$10$kRcYdf9WI8VA/UYJfm53V.RqeQcmcQqY45DXNY5eAbFWH72V8QsZi', 'sebastian', 'activated', 'user', '', ''),
(132, 14, 'Gener', 'Gayam', '', '', '', '', '', 'Gener', 'Gayam', '$2y$10$HgAgE8g1QMK86WpbaUOcR.o4u5sUTcmkHrB4i0s0nHllHFjYkLqV2', 'gayam', 'activated', 'user', 'yes', ''),
(134, 14, 'Danny B.', 'Nograles', '', '', '', '', '', 'Danny', 'Nograles', '$2y$10$8uKqmv4pfpTp5i1l6jrtVuoZqWdyUG/V3MwFN/xqdK6eP.ZSLJaBS', 'nograles', 'activated', 'user', '', ''),
(135, 14, 'Clemente', 'Otanes', '', '', '', '', '', 'Clemente', 'Otanes', '$2y$10$lntEJOpDoDssUJx.pUl4X.NtE9eKxrChBALIxhndrp4KT7Z2IYtz.', 'otanes', 'activated', 'user', '', ''),
(136, 14, 'Christopher James', 'Pacetes', '', '', '', '', '', 'Christopher', 'Pacetes', '$2y$10$QTJCtnsIfdVxvXTO1qkWc.ZFb0ENJWE8yjLLn1aWEgf0xLNHSoalu', 'pacetes', 'activated', 'user', '', ''),
(138, 14, 'Ramon', 'Robleza', '', '', '', '', '', 'Ramon', 'Robleza', '$2y$10$zoPYf7rpJPJY4U8k5sOvteCfivAxiWODUuEwhq/.kCNRMnwusDSbu', 'robleza', 'activated', 'user', '', ''),
(139, 14, 'Levy', 'Saligumba', '', '', '', '', '', 'Levy', 'Saligumba', '$2y$10$X/cTXCCgAvjfwThMUm1jHuxfm45PSzxSimRKkjh9eOaNqDtPYeKI.', 'saligumba', 'activated', 'user', 'yes', ''),
(140, 14, 'Danilo', 'Solamo', '', '', '', '', '', 'Danilo2', 'Solamo', '$2y$10$JREiHsYvpXltCbjZi/V7NetdaHdxOTP1vZPwE2950KBErMSM.cMtC', 'solamo', 'activated', 'user', '', ''),
(141, 14, 'Tupino S.', 'Vergonia', '', '', '', '', '', 'Tupino', 'Vergonia', '$2y$10$lr30XEK7NroVbiBCvwKmh.MsG6mEP9tBISYUlp1SfcuBJqsV/e7VG', 'vergonia', 'activated', 'user', '', ''),
(142, 14, 'Jose Edmar', 'Yumang', '', '', '', '', '', 'Jose', 'Yumang', '$2y$10$Cdv7/JzGw4lVhxZNjOUfguLVSBGH4Zxtxi9wyktZS/JRY5OiyZKZa', 'yumang', 'activated', 'user', 'yes', ''),
(143, 15, 'Glenn Mar P.', 'Acas', '', '', '', '', '', 'Glenn', 'Acas', '$2y$10$Xvpib49Q7UIHjw0bP66HdOj3/JtjeANqW929AxxoI0KVFNRLIPTGi', 'acas', 'activated', 'user', 'yes', ''),
(144, 15, 'Prang II E.', 'Andig', '', '', '', '', '', 'Prang', 'Andig', '$2y$10$7r3p0yb0Nc6cvNpzRPJZ0etB9vQ8Ryhvb41EqJxveD/xe8fm7bhUm', 'andig', 'activated', 'user', '', ''),
(145, 15, 'Romulo D.', 'Braza', '', '', '', '', '', 'Romulo', 'Braza', '$2y$10$.uttQzH0KZkNHnADQW6NSuouqhdtw7IE54ahztsv6XeOkfQ0cDNVq', 'braza', 'activated', 'user', '', ''),
(146, 15, 'Dioscoro G.', 'Maestrado', '', '', '', '', '', 'Dioscoro', 'Maestrado', '$2y$10$/Z2XWIOp5i3k7dWHMx3jd./9gVxOEwFg0XG233f50tH2I/SDknQ3i', 'maestrado', 'activated', 'user', '', ''),
(147, 15, 'Rodeline G.', 'Pantua', '', '', '', '', '', 'Rodeline', 'Pantua', '$2y$10$OpUKj22xebcdWJo/qGYbPO9ZIOxQOkO/Ffw/sbvyIq0LW8cKNQJSK', 'pantua', 'activated', 'user', '', ''),
(148, 15, 'Ronald P.', 'Sombero', '09478971523', '', '', '', '', 'Ronald', 'Sombero', '$2y$10$Z2xUg6f2IZ.VbtF8xCB3GOho0jL42uk/8J7p9iy1JwsYM4ms2Yi5G', 'sombero', 'activated', 'user', '', ''),
(149, 15, 'Reynaldo T.', 'Villagantol', '', '', '', '', '', 'Reynaldo', 'Villagantol', '$2y$10$RtrjVT8H74vLx7wwxG31duo42WiElydtGp6FG6bBR3iOwcwF3CHfW', 'villagantol', 'activated', 'user', '', ''),
(150, 16, 'Saripoden', 'Batog', '', '', '', '', '', 'Saripoden', 'Batog', '$2y$10$lAtf7GeTI00l2bOBHUPm4Ofjqtn5THcDEhN7rj1c.1RovAEXaOU8m', 'batog', 'activated', 'user', '', ''),
(151, 16, 'Erosito N.', 'Miranda', '', '', '', '', '', 'Erosito', 'Miranda', '$2y$10$aG.Wk.58YyGMmG3kNjqL4.36ekNxM8FIL95.Waklvx0eVWst9qi9G', 'miranda', 'activated', 'user', '', ''),
(152, 16, 'Jeffrey', 'Panagdato', '', '', '', '', '', 'Jeffrey', 'Panagdato', '$2y$10$KeaNs0umiJcdRbN8qgLK9eUeCTC..AZPe2fAgtGokdrtki8pZHPJu', 'panagdato', 'activated', 'user', '', ''),
(153, 17, 'Ben G.', 'Bareja', '', '', '', '', '', 'Ben', 'Bareja', '$2y$10$SU/Rw/j.76tiepqq.Fmg.uEs2ET8RATcjbapQdukRI.7xb/fRalHW', 'bareja', 'activated', 'user', '', ''),
(154, 17, 'Alain Vincent Q.', 'Lawa', '', '', '', '', '', 'Alain', 'Lawa', '$2y$10$VusUgGZZahfJU3Brs05Xl.0ZmpGXnJpuPAa1/uLYDsVxGYwRD08vu', 'lawa', 'activated', 'user', '', ''),
(155, 17, 'Gladden S.', 'Lim', '', '', '', '', '', 'Gladden', 'Lim', '$2y$10$oE8EF6Z4sjkhBF5vOqSx/eydbutMb9yuIsNBt3ueON8Z2u82qPSo6', 'lim', 'activated', 'user', '', ''),
(156, 17, 'Arthur C.', 'Saguiguit', '', '', '', '', '', 'Arthur', 'Saguiguit', '$2y$10$ycOrpl9FHL8bF6cT2xpPee5YuHjpEqPQC.J7DqnJkMToitrLzGyWW', 'saguiguit', 'activated', 'user', '', ''),
(157, 17, 'Napoleon', 'Tinoco', '', '', '', '', '', 'Napoleon', 'Tinoco', '$2y$10$oRsiwJ0a9I1AZcfAodheyOLvTsp6l6UUcg1/UWH858hDbulnrDxyy', 'tinoco', 'activated', 'user', '', ''),
(158, 17, 'Monet', 'Brotarlo', '', '', '', '', '', 'Monet', 'Brotarlo', '$2y$10$DlKjMS4NYFTU79FKTq8Vo.v9hL9Yk6CBdtkiU5pXcXVP407O99gtO', 'brotarlo', 'activated', 'user', '', ''),
(159, 17, 'Leo Ralph A.', 'Alojado', '', '', '', '', '', 'Leo', 'Alojado', '$2y$10$MAMmd/NYkdchECjTERqM9uPkAcO4.lnLbK9C3okCz7IdOohRu4Rdi', 'alojado', 'activated', 'user', '', ''),
(162, 18, 'Demostenes', 'Escobar', '', '', '', '', '', 'Demostenes', 'Escobar', '$2y$10$rEjP.q6MUky/SPkg68TAfuLgyZmRE77vRAKsxjd1g6B6TObM4cg0a', 'escobar', 'activated', 'user', '', ''),
(165, 18, 'Faustino Jr.', 'Montero', '', '', '', '', '', 'Faustino', 'Montero', '$2y$10$dp6.RMrHroNieCvGv0ZileZyN4E1PBlPZplForHp.BTMbKPMBIhOi', 'montero', 'activated', 'user', '', ''),
(166, 18, 'Paolo R.', 'Aquino', '', '', '', '', '', 'Paolo', 'Aquino', '$2y$10$t6iI9OvhjvXR81mGnxoA2eWZXyHQvWPxXW2tEGnEbwP7ViVqeW9Oa', 'aquino', 'activated', 'user', 'yes', ''),
(167, 18, 'Ahmad Tambas Jr.', 'Yahya', '', '', '', '', '', 'Ahmad', 'Yahya', '$2y$10$CxP.6Gj5zCLeRHOI9ESmqODc6JPkBhgqx3niwE.9L132E/ZKOHMfa', 'yahya', 'activated', 'user', '', ''),
(168, 19, 'Victorino B.', 'Belangdal', '', '', '', '', '', 'Victorino', 'Belangdal', '$2y$10$TIvjjJy7J08GBCc0geX8zOGMdOyP7GQbf0z0Z1mHIGLCzFtGAO6L.', 'belangdal', 'activated', 'user', '', ''),
(169, 19, 'Danny D.', 'Bustamante', '', '', '', '', '', 'Danny', 'Bustamante', '$2y$10$kLU8GdQvYxz/u5rttQSbAeWJkEMOV2C9t2LqzpQ7g2xDZofu3Vm/G', 'bustamante', 'activated', 'user', '', ''),
(171, 19, 'Cornelio Erwin III', 'Griño', '', '', '', '', '', 'Cornelio', 'Griño', '$2y$10$9NkniQ17YPLqJMcDbT8i7.GEwnyzWNYyFxgKJ5lt0v/9WR12isDJe', 'gri??o', 'activated', 'user', 'yes', ''),
(172, 19, 'Marlon M.', 'Ramirez', '', '', '', '', '', 'Marlon', 'Ramirez', '$2y$10$LvrlnWV0b798CFvK/xj3b.v/8uw6Pv//93MyeX66nPbQ6CP40nyQS', 'ramirez', 'activated', 'user', '', ''),
(173, 19, 'Justino Jr. G.', 'Tamala', '', '', '', '', '', 'Justino', 'Tamala', '$2y$10$Ep2jGg3sFFEmtQgv3JJNiOvsDCKBr7lp.c6vWEdWNV3VrAUZcebr2', 'tamala', 'activated', 'user', '', ''),
(174, 19, 'Macacuna E.', 'Tomambiling', '', '', '', '', '', 'Macacuna', 'Tomambiling', '$2y$10$qVFlDdi.nBXd7aHP96ZXoee5fmAlLc9eCcm2OjXK/UbEzlwPTwe.u', 'tomambiling', 'activated', 'user', '', ''),
(175, 19, 'Allan G.', 'Villanuava', '', '', '', '', '', 'Allan', 'Villanuava', '$2y$10$lx5oU/a9rxMjnQ0CPPCskOIzrnn7qyX2RyHMobIm8FLeTlS3a1uvW', 'villanuava', 'activated', 'user', '', ''),
(178, 20, 'Jesse Joseph Jasper', 'Mendoza', '', '', '', '', '', 'Jesse', 'Mendoza', '$2y$10$0YbFCuOR6EPxBDFTXpuefOHLlgZ5q2tST6/6AXUCC.a7Uec7i2wtq', 'mendoza', 'activated', 'user', '', ''),
(180, 20, 'Asna', 'Macabanding', '', '', '', '', '', 'Asna', 'Macabanding', '$2y$10$LqcCQF3vTgWXvK3o/OYJFefQJeYPCfu812mPEtqZeRYlQKKBMH9pS', 'macabanding', 'activated', 'user', '', ''),
(181, 20, 'Misuari', 'Abdulmanap', '', '', '', '', '', 'Misuari', 'Abdulmanap', '$2y$10$y8nBhAFPsnGDUFOyqUrQDOxiYyjYiZJuhvwfD5wH7QKeNllwKP9mW', 'abdulmanap', 'activated', 'user', '', ''),
(182, 20, 'Ronnel S.', 'Español', '', '', '', '', '', 'Ronnel', 'Español', '$2y$10$AgSGQ1BRNTgD6QNK6Y7wlukFkqM0K1zLsV.LS8eAGjnxQxmlfokqG', 'espa??ol', 'activated', 'user', '', ''),
(183, 20, 'Romeo', 'Corpuz', '', '', '', '', '', 'Romeo', 'Corpuz', '$2y$10$CMCjZBcE/XDKcS6CRhZSA.o.E5.3CrpIWloMFEGfLvw8E9nz5bana', 'corpuz', 'activated', 'user', '', ''),
(184, 20, 'Edmund', 'Delos Reyes', '', '', '', '', '', 'Edmund', 'Delos Reyes', '$2y$10$BqK.f2zIcypjsbOurgnoFe4iEJWzJzQwuhEoG6QEbAD9POpRr7zmu', 'delos reyes', 'activated', 'user', '', ''),
(185, 20, 'Junaid', 'Mamailao', '', '', '', '', '', 'Junaid', 'Mamailao', '$2y$10$caSFpy8c68KnHyAdT6Yhx.UnW6HPFBV1jDITfnImenKpn2ACyayoa', 'mamailao', 'activated', 'user', '', ''),
(186, 21, 'Anthony Dinnes', 'Pantua', '', '', '', '', '', 'Anthony', 'Pantua', '$2y$10$EV6oJP.BhIiI7ZHiUCmevOAcm95.oKb7JRIb9onPaawjiUUwBGuZW', 'pantua', 'activated', 'user', 'yes', ''),
(187, 21, 'Conrado', 'Limjap', '', '', '', '', '', 'Conrado', 'Limjap', '$2y$10$qyfLRAK3mzMpKvrV4r6KFe8SK79kPEdIjVm1JkWd.prS0D/M/N1Pi', 'limjap', 'activated', 'user', '', ''),
(188, 21, 'John Paul', 'Macababad', '', '', '', '', '', 'John2', 'Macababad', '$2y$10$mne06Q2lkfDlOX8/hoKdPuVxHll8RDfKj38D/Qsp9QzVE2ytticFq', 'macababad', 'activated', 'user', '', ''),
(189, 21, 'Javier', 'Gadingan', '', '', '', '', '', 'Javier', 'Gadingan', '$2y$10$xdpdGvQRAhGSUTn0OWC5gekqL9y2Gq7C6Hv2uZlmjjKf.MHJqVYme', 'gadingan', 'activated', 'user', '', ''),
(190, 21, 'Cielito', 'Nequinto', '', '', '', '', '', 'Cielito', 'Nequinto', '$2y$10$8705Llz4usxYn304wqEAMO7YFX7GaQ9Lfe4mcERs86d0WxNx8C9Ae', 'nequinto', 'activated', 'user', '', ''),
(191, 22, 'Alexis Armand', 'Bendero', '', '', '', '', '', 'Alexis', 'Bendero', '$2y$10$JZPT93unllgqpTU91yEz4ubi./A7TOkfFqhdh15L1GQXCUBCRly9C', 'bendero', 'activated', 'user', '', ''),
(192, 22, 'Jerry', 'Cabonegro', '', '', '', '', '', 'Jerry', 'Cabonegro', '$2y$10$3VPvX8KhjYsAVyhTtf3VLOJ2WHWBnZFi0dFUmgjC96jtbuZOhZ/8q', 'cabonegro', 'activated', 'user', '', ''),
(193, 22, 'Bernard Erik', 'Torres', '', '', '', '', '', 'Bernard', 'Torres', '$2y$10$tafSGWADdepV9nZ1SStRveo8NfB4GoO9tjAzUv8zR5uDdUIglV.dW', 'torres', 'activated', 'user', '', ''),
(195, 22, 'Eduardo Jr.', 'Quiachon', '', '', '', '', '', 'Eduardo', 'Quiachon', '$2y$10$wNyD8vYQLTSaxAVdIyQPiu1QAGmU4DCsqpdNR5CkpUA150Krvo0vq', 'quiachon', 'activated', 'user', '', ''),
(196, 22, 'Al', 'Oclarit', '', '', '', '', '', 'Al', 'Oclarit', '$2y$10$wWTwGREgEQNCvOUB0XJiw.bYBgBW0z.93f6IYXisy/SNzsrtaRkC6', 'oclarit', 'activated', 'user', '', ''),
(198, 22, 'Stephen', 'Delamota', '', '', '', '', '', 'Stephen', 'Delamota', '$2y$10$vEuEBje5P8Y3eU/tgv4AAOzuLrju2eGjMqdQbxkbHqzGvPqeKcKTK', 'delamota', 'activated', 'user', '', ''),
(199, 23, 'Ralph', 'Yumang', '', '', '', '', '', 'Ralph', 'Yumang', '$2y$10$.Ni1KhM.Ngh9ypPyoB0qx.KHlXn6aVVmtZdV1WnVHN/7hiydX.ykm', 'yumang', 'activated', 'user', '', ''),
(200, 23, 'Alvin', 'Tan', '', '', '', '', '', 'Alvin', 'Tan', '$2y$10$AZvrKW6l6RiWPLz7iN7XE.ce501ojWlca03aeDy1JNZ52X0TGVGWO', 'tan', 'activated', 'user', '', ''),
(201, 23, 'Benjie', 'Rojas', '', '', '', '', '', 'Benjie', 'Rojas', '$2y$10$GuUJVZ1jncvpdtZCf/6rXuqysJrEtf5iNl4crrnn9ChY1m9Nk64wa', 'rojas', 'activated', 'user', '', ''),
(203, 23, 'Rio', 'Duron', '', '', '', '', '', 'Rio', 'Duron', '$2y$10$icpwoiYDAtwZwrkXBgjaOeomj0.l5C6wh46WCyR/7A1NrSrOZI13a', 'duron', 'activated', 'user', '', ''),
(207, 23, 'JK', 'Barabat', '', '', '', '', '', 'JK', 'Barabat', '$2y$10$/0HtZBNjqK5kn0FsXDEb9.EKVQjLTYp8inFLxJH4HOHbaiAH4ynIW', 'barabat', 'activated', 'user', '', ''),
(208, 23, 'Norzaide', 'Bayamban', '', '', '', '', '', 'Norzaide', 'Bayamban', '$2y$10$4XyC1tQ2keD2x8MicVYgBuSiDkgiXcUbgWez5bgJypoATA5/k5IyS', 'bayamban', 'activated', 'user', '', ''),
(209, 23, 'Norberto', 'Andres', '', '', '', '', '', 'Norberto', 'Andres', '$2y$10$Pk.i61RyfkppErw1Mv8JVuuusTfVykPBSF6x0l0CS3RiDXo4q.0Ka', 'andres', 'activated', 'user', '', ''),
(210, 23, 'Jiellzon', 'Villarama', '', '', '', '', '', 'Jiellzon', 'Villarama', '$2y$10$nKZQgEsuOO1duh/zTjdsyOHasFQd.5p75TFYBsr5cBbX.Wj4FBLSu', 'villarama', 'activated', 'user', '', ''),
(211, 23, 'Emvic', 'Malinao', '', '', '', '', '', 'Emvic', 'Malinao', '$2y$10$0pyNN4ucAaJonsymCcXruO8Dr9Wag0819VR.Lmo6o83AntvV7Ifx.', 'malinao', 'activated', 'user', '', ''),
(215, 25, 'Dennis', 'Morales', '', '', '', '', '', 'Dennis', 'Morales', '$2y$10$QeabeTDNeXdejauKtcAlWOF.IWVAVcbRFwgTnJb7h9cJnQstKG2gO', 'morales', 'activated', 'user', '', ''),
(216, 25, 'Sinuden', 'Yasin', '', '', '', '', '', 'Sinuden', 'Yasin', '$2y$10$8eE5iQ8NSschOGj1Ynbhk.o5r4fRUOVdik9pTd1bWdKpaNfYmmFey', 'yasin', 'activated', 'user', '', ''),
(219, 24, 'Julius', 'Escobar', '', '', '', '', '', 'Julius', 'Escobar', '$2y$10$nect8mJSiOE7Tj.OY7Rat.0QcN7XCXxF9rUACI//98czxSwAYHInq', 'escobar', 'activated', 'user', '', ''),
(220, 24, 'Ronald', 'Jamillaren', '', '', '', '', '', 'Ronald', 'Jamillaren', '$2y$10$Y47fYa.gVw5Z03dbgXC8OusYaJEKZBNHuthZOORgRa1I2M.k5kis6', 'jamillaren', 'activated', 'user', '', ''),
(221, 24, 'Achilles Windilen G.', 'Tato', '', '', '', '', '', 'Achilles', 'Tato', '$2y$10$Bm/jDo0eWGDkgVRFj7eG1uMXiskAZqawyN4qkwyAEMM1okpoAuItK', 'tato', 'activated', 'user', '', ''),
(222, 26, 'Ryandel', 'Alejandro', '', '', '', '', '', 'Ryandel', 'Alejandro', '$2y$10$xi5e7GztLNo.UOLDA66ICu49pXnibkNQywiMGfxfQC7DiCj5V9dRC', 'alejandro', 'activated', 'user', '', ''),
(223, 26, 'Charles', 'Pesodas', '', '', '', '', '', 'Charles', 'Pesodas', '$2y$10$6FLQvHTEhrHFpfZohGmBxOxH6k8PnmZwUzQgJwPpqIM9H7Och9Ydq', 'pesodas', 'activated', 'user', '', ''),
(225, 27, 'Leonard', 'Balabat', '', '', '', '', '', 'Leonard', 'Balabat', '$2y$10$JU/Zgoh3OqyVPnNZx5wQ/.wDd4XmUUNUSOZq8U/ZxoUcR0uaGH9rK', 'balabat', 'activated', 'user', '', ''),
(228, 27, 'Robert Shean', 'Alfane', '', '', '', '', '', 'Robert', 'Alfane', '$2y$10$QeM6VSEiusNjYbX4qBVI0OvS7rdridv/fG1VcVDKTGVYYXTE/uCP2', 'alfane', 'activated', 'user', '', ''),
(230, 27, 'Aldrin ', 'Salgado', '', '', '', '', '', 'Aldrin', 'Salgado', '$2y$10$RUryO0vhijnpFk7Pfp2Cf.xJ2UJNxeUJ9cJ5w.PDzj2xwk3gebEuy', 'salgado', 'activated', 'user', '', ''),
(231, 27, 'Ronnie', 'Montoya', '', '', '', '', '', 'Ronnie2', 'Montoya', '$2y$10$J4dCvja17b15cYoaWjX/YOgvgVkPTqzZKZHKLQEe6esq/2jdty/TS', 'montoya', 'activated', 'user', '', ''),
(232, 27, 'John Paul', 'Lugares', '', '', '', '', '', 'John', 'Lugares', '$2y$10$.4CPv2JaeX3skLeNJ6TJLOw4lM03NFwRkXyytw9WJF5i2U8JYcvg.', 'lugares', 'activated', 'user', '', ''),
(233, 28, 'Robert', 'Robleza', '', '', '', '', '', 'Robert', 'Robleza', '$2y$10$ZZNXSjNxaW4ZBSnIjWKBoOcTCSed7lWoGr9OwiC5KB0q8wcNCC6Oy', 'robleza', 'activated', 'user', '', ''),
(236, 29, 'Clemente', 'Panganduyon', '', '', '', '', '', 'Clemente2', 'Panganduyon', '$2y$10$UBwJRk34wjp.UT8mmtsTPuzExGdnYBsE1Khp.o2rj86xyEXv3DUAy', 'panganduyon', 'activated', 'user', '', ''),
(237, 29, 'Roman Nicolo', 'Mondejar', '', '', '', '', '', 'Roman', 'Mondejar', '$2y$10$IGS6/qgTXlpPqOObY8KBiOle.X.n3SA6EzLY0vS52f1TwX2PvFUoy', 'mondejar', 'activated', 'user', '', ''),
(242, 30, 'Iphraim B.', 'Abbas', '09753333271', 'Agan Ligaya, GSC ', 'Agan Ligaya, GSC ', '', '', 'Iphraim', 'Abbas', '$2y$10$4Q4fHdV.2krV18WcIKtP7.Y9ilz8Niw2/fD/JTRFdMUhK862jcUfW', 'abbas', 'activated', 'user', '', ''),
(243, 30, 'Rhodum', 'Sagario', '', '', '', '', '', 'Rhodum', 'Sagario', '$2y$10$fiYn4RCUpwI/qf2Iynsk1esWkrF/qt1Ck.Nssy4cq/jdOgbXra856', 'sagario', 'activated', 'user', '', ''),
(244, 30, 'Marvin', 'Lim', '', '', '', '', '', 'Marvin', 'Lim', '$2y$10$iFaRoUhfNKjdm2ONahVCN.dnN4QTkBtxHSrGdDRp6epMcd8np9FO.', 'lim', 'activated', 'user', '', ''),
(246, 15, 'Sixyl V.', 'Balquin - Gelotin', '', '', '', '', '', 'Sixyl', 'Balquin-Gelotin', '$2y$10$Yt7OC.nDAX6Od7o/K2MzZe9AzhmQmiHB5qiTVyQWPaRYH1TsNroES', 'balquin-gelotin', 'activated', 'user', 'yes', ''),
(247, 15, 'Jocelyn L. ', 'Cariño', '', '', '', '', '', 'Jocelyn', 'Cariño', '$2y$10$1pSqQCSVAv7kR9ozOpR3vegfnvR0/ddLyUDHWEplRU.ZaFTuH3FkS', 'cari??o', 'activated', 'user', '', ''),
(248, 15, 'Precious Pearl Portia', 'Mendoza - Valdez', '', '', '', '', '', 'Precious', 'Mendoza-Valdez', '$2y$10$ai6YFjODC.NJhjP0Fr8BBeMY8SEBpaRN.2k39ZvdQxM6cY4uH7VmC', 'mendoza-valdez', 'activated', 'user', '', ''),
(249, 16, 'Isnira A.', 'Baginda', '', '', '', '', '', 'Isnira', 'Baginda', '$2y$10$rA2xW.vjLYNomlyndBgKheTZnO1BGAgYJgt0Iv53do2Wmkl3BDuQ.', 'baginda', 'activated', 'user', '', ''),
(250, 16, 'Juby A.', 'Eborde', '', '', '', '', '', 'Juby', 'Eborde', '$2y$10$ntDKejEaAeIf6RuJBHOx7.PeKcGkhm3KHZqaTeAFVC45LPxcg8LBe', 'eborde', 'activated', 'user', '', ''),
(251, 16, 'Ma. Theresa A.', 'Peñera', '', '', '', '', '', 'Ma.', 'Peñera', '$2y$10$UwFaBoHK7fbnWQ72hN5gPO3CRVtWp1SMpWiCbGGZZkRV7YwAXZfDG', 'pe??era', 'activated', 'user', 'yes', ''),
(252, 17, 'Althene Marie A.', 'Alconera', '', '', '', '', '', 'Althene', 'Alconera', '$2y$10$AwHpHgJxRRIFBqy3MJQtJeXcU4umNEbl7PBG3GMaq7Vnkz8rBkH1S', 'alconera', 'activated', 'user', '', ''),
(253, 17, 'Jeanette C.', 'Bernal', '', '', '', '', '', 'Jeanette', 'Bernal', '$2y$10$f/4D4uTR4U/xfjXvKa0kneHHsF2d5pl9ATfMsGq4/P66p.2h5BB3e', 'bernal', 'activated', 'user', '', ''),
(254, 17, 'Norhata S.', 'Magandia', '', '', '', '', '', 'Norhata', 'Magandia', '$2y$10$GmvD4hLoDjrsGGcDNxGojuivUJJZjvpSmB4YoM.c4tLSPDwbtCwU6', 'magandia', 'activated', 'user', '', ''),
(256, 17, 'Apple Rose D.', 'Matavia', '', '', '', '', '', 'Apple', 'Matavia', '$2y$10$0uLKny3PtAgrNXV9Zi5PreUUrazlTppd4pEBOgVmbqAEdDgOO9QvK', 'matavia', 'activated', 'user', '', ''),
(257, 17, 'Donna Grace I.', 'Navalta', '', '', '', '', '', 'Donna', 'Navalta', '$2y$10$9gbvyCJOt.t.V0WqC1/PKOwryYG.SI9ewCnv2.vlUZ/H/x1JnCPd2', 'navalta', 'activated', 'user', '', ''),
(259, 17, 'Christine', 'Flores', '', '', '', '', '', 'Christine', 'Flores', '$2y$10$KzZI0kQITwivyt8tF1vhP.xXSzd.tLS8ESySXbXB1sljQbpygpweC', 'flores', 'activated', 'user', '', ''),
(263, 19, 'Jacqueline Mae', 'Estorninos - Saquilabon', '', '', '', '', '', 'Jacqueline', 'Estorninos-Saquilabon', '$2y$10$3KgrGAbQ4.6h8Zyxjs3EeODUrf13sEHJ2f3mH7jCLqBvcbu6el45S', 'estorninos-saquilabon', 'activated', 'user', '', ''),
(264, 19, 'Josie Fe Amor', 'Felipe', '', '', '', '', '', 'Josie', 'Felipe', '$2y$10$cm1FB4IDu2114h/vGU8YROiZF0Ns0e0CBZslJUJfFs7TAb4mEficS', 'felipe', 'activated', 'user', '', ''),
(265, 19, 'Emily', 'Gariando', '', '', '', '', '', 'Emily', 'Gariando', '$2y$10$H/zGvIS./ALjFdv71TMhHu/Rv/cpxsB/9UMw5M8J0LpabjNHR1afO', 'gariando', 'activated', 'user', '', ''),
(266, 19, 'Eden Rachel', 'Gencianos', '', '', '', '', '', 'Eden', 'Gencianos', '$2y$10$TaenOAZOar41MLmMcZbS..q4yHOjZq0vKaKcTJKqAF57ist9Ps546', 'gencianos', 'activated', 'user', 'yes', ''),
(267, 19, 'Myra Joy', 'Lawi-an', '', '', '', '', '', 'Myra', 'Lawi-an', '$2y$10$coEPJ.iSAInVg.q4iKvzxujkxD5cFRxHHgw65YIZe4RmSDXQDiNRi', 'lawi-an', 'activated', 'user', '', ''),
(268, 19, 'Angelita', 'Malan', '', '', '', '', '', 'Angelita', 'Malan', '$2y$10$63FmoLMuRZAg7tgq3it0eOaMmYCxFWH93.KZ0QI.dh3ccL75718F6', 'malan', 'activated', 'user', '', ''),
(269, 19, 'Cherry Mea', 'Pascua', '', '', '', '', '', 'Cherry', 'Pascua', '$2y$10$eYm0x4UiMAPB5nNXWoFZvuIX3abjt/0VHdurStZch2R28bOGnSb6e', 'pascua', 'activated', 'user', '', ''),
(270, 19, 'Jhanine', 'Villegas', '', '', '', '', '', 'Jhanine', 'Villegas', '$2y$10$CUNG1d0rmgGdNAlGrxZKfOEYOzZu79qX.BW0Poy34npM6Bcfrj3qK', 'villegas', 'activated', 'user', '', ''),
(273, 20, 'Marivic', 'Turlao', '', '', '', '', '', 'Marivic', 'Turlao', '$2y$10$hX7zCl4i1JP6MiImGDf71.WTCE4Ti4kWbVdb.6hS6Rf/nUVEKAseG', 'turlao', 'activated', 'user', '', ''),
(274, 20, 'Cheryl', 'Cedana', '', '', '', '', '', 'Cheryl', 'Cedana', '$2y$10$NcF2qdfKKiN8HkEuQwhGduWtU0vJidBJUiogJL/xzTYeS8x4P1TSa', 'cedana', 'activated', 'user', '', ''),
(275, 20, 'Rosanna', 'Bantulo', '', '', '', '', '', 'Rosanna', 'Bantulo', '$2y$10$MEVtgx7tZtBmWb.GOB2ueOrcAQ.wOCmG7cWr.qjaeuUHTPb4mdxoO', 'bantulo', 'activated', 'user', '', ''),
(276, 21, 'Myrie Ellenel', 'Rosete', '09296973641', '#20 East Sapphire T., Diamond Village, Lanang., Davao City', '#20 East Sapphire T., Diamond Village, Lanang., Davao City', '', '', 'Myrie', 'Rosete', '$2y$10$uEiiZ8pieTzn6nFYbQwavumZWUPhFUtjdyBM6E.AVlrvYQWUbZc1C', 'rosete', 'activated', 'user', 'yes', ''),
(278, 21, 'Zenaida', 'Lomboy', '', '', '', '', '', 'Zenaida', 'Lomboy', '$2y$10$mRIi9ba51CBh5JXCKee6TuagwNBunAA.hO9AztvLLqj3HXj.qxoIG', 'lomboy', 'activated', 'user', '', ''),
(279, 22, 'Reyma', 'Rufo', '', '', '', '', '', 'Reyma', 'Rufo', '$2y$10$oe.OtIiaCnME53q.ELgyP.kt72EVZCct7aVqKS4wiPPnkLjBL.x7u', 'rufo', 'activated', 'user', '', ''),
(280, 22, 'Myla', 'Eiman', '', '', '', '', '', 'Myla', 'Eiman', '$2y$10$ojIg/TetVMjbqskEsubWNuVA7PxDJZQhsrrocYEYLveWXWPajXo5.', 'eiman', 'activated', 'user', '', ''),
(281, 22, 'Marlowe Jane', 'Nazi', '', '', '', '', '', 'Marlowe', 'Nazi', '$2y$10$ORZmfyLAASK9bWgyJuYqX.yOwoCuSCtZHOLd7JELVUcnOTurPEsra', 'nazi', 'activated', 'user', '', ''),
(282, 22, 'Cheryl', 'Santiago', '', '', '', '', '', 'Cheryl2', 'Santiago', '$2y$10$PYyJB4t.KmO6jqp3iARio.xpkgWBkcqu13T.K7rDTq5FVLHmFChdi', 'santiago', 'activated', 'user', 'yes', ''),
(284, 22, 'Kristine Jane', 'Palma', '', '', '', '', '', 'Kristine', 'Palma', '$2y$10$0t4qzgyfrFSQ9kD4/Weqq.jzTWwcPHVSJkt0M7WDS1cMHcEG4Clp2', 'palma', 'activated', 'user', '', ''),
(289, 23, 'Fe', 'Vergara', '', '', '', '', '', 'Fe', 'Vergara', '$2y$10$S.8XBH3.Z6sEQcZOIJCLAOWeAZ.ds8dowBAUBwkxbK8AwIiz2iCTO', 'vergara', 'activated', 'user', '', ''),
(290, 23, 'Jane', 'Monisit', '', '', '', '', '', 'Jane', 'Monisit', '$2y$10$t4yDDcifZ1f.wmK32e3MRecQniH9bh6vJ/fyS0OOqNVv0hC/gpJKq', 'monisit', 'activated', 'user', '', ''),
(293, 25, 'Iris Pearl', 'Conlu', '', '', '', '', '', 'Iris', 'Conlu', '$2y$10$cwvWAhu1WJLJsum6lDeEiOWnlVuDz9o48ook2700R2rGG5iKnz0si', 'conlu', 'activated', 'user', '', ''),
(294, 25, 'Jennelyn', 'Diantan', '', '', '', '', '', 'Jennelyn', 'Diantan', '$2y$10$cZHOUJzeB4B4wCFmvndOoOerG1sd85S2E3LMQMRQrASIszajo7kSq', 'diantan', 'activated', 'user', '', ''),
(296, 25, 'Faye', 'Laurente', '', '', '', '', '', 'Faye', 'Laurente', '$2y$10$6fvALM87VqSj8ERi1fWKnOrRfoodxmHl5uRQDpExm7Tk.db.LajO2', 'laurente', 'activated', 'user', '', ''),
(297, 25, 'Gretchiane', 'Manoy', '', '', '', '', '', 'Gretchiane', 'Manoy', '$2y$10$i/Tet.uh9PbamstOy8tAyurgwJIcQmPQRF7rDaMulMcC8joTNDPdm', 'manoy', 'activated', 'user', '', ''),
(304, 24, 'Reah Joy L.', 'Sevillano', '', '', '', '', '', 'Reah', 'Sevillano', '$2y$10$uyBL/x/21il6zZdaEhGJ1eLWm7rbELZ9h89UxSaNbUQBUeJUQE/yS', 'sevillano', 'activated', 'user', '', ''),
(305, 26, 'Dionisia', 'Albao', '', '', '', '', '', 'Dionisia', 'Albao', '$2y$10$FWl77N6G0K4uCUV1Y/m2f.LCjoe9I9adF5/JR/2fm6RStIZRG7RDa', 'albao', 'activated', 'user', '', ''),
(306, 26, 'Lelanie', 'Apitong', '', '', '', '', '', 'Lelanie', 'Apitong', '$2y$10$3D4jKh/Elu4mFUEOD.9uDuPh4AWxtBzCaY6wTx7p/kpAN9uF9htmS', 'apitong', 'activated', 'user', '', ''),
(308, 26, 'Michelle E.', 'De Leon', '09465952193', 'Prk Malakas., Gensan', 'Prk Malakas., Gensan', '', '', 'Michelle', 'De Leon', '$2y$10$Mb9tf3jd6chLUyFygisVQO31s1TWoh0JkmV2V5XpUr9ilacmkrY5a', 'de leon', 'activated', 'user', '', ''),
(309, 26, 'Anna Marie', 'Guillermo', '', '', '', '', '', 'Anna', 'Guillermo', '$2y$10$jmvkiQECfNOUNKQOl1FuxOFUMH4P.m14pMKXucrXH0xgVfqULZwGa', 'guillermo', 'activated', 'user', '', ''),
(310, 27, 'Hearty Mae', 'Loretizo', '', '', '', '', '', 'Hearty', 'Loretizo', '$2y$10$6jduUD2BynjazY9XokF4u.qt0zDJLhcXIRRCwtPmFP0P2XCJQH0K2', 'loretizo', 'activated', 'user', '', ''),
(311, 27, 'Maricar Jean', 'Tabaosares', '', '', '', '', '', 'Maricar', 'Tabaosares', '$2y$10$I07yT7TAqs7yWC7/EWhvfO1WI8HfTF/ivpbNAnTq7.sNNOYv7kjzC', 'tabaosares', 'activated', 'user', '', ''),
(312, 28, 'Almin', 'Abejaron', '', '', '', '', '', 'Almin', 'Abejaron', '$2y$10$qgDlOZu4ykro3Oe.9X8tlONwmq4jz58n5sr.2j/FNghwwpcn6EaMa', 'abejaron', 'activated', 'user', '', ''),
(314, 28, 'Kay', 'Aviles', '', '', '', '', '', 'Kay', 'Aviles', '$2y$10$/0La15ShiAhWA2.oh0DztuB8zN5mys0Hoj3YWzk6vPJSOx0q6xAI.', 'aviles', 'activated', 'user', '', ''),
(315, 28, 'Sandra', 'Espartero', '', '', '', '', '', 'Sandra', 'Espartero', '$2y$10$pDSuelM8OaRb02UE8XInhe9PJuHzY7qVBRojBNJ4hZaxEFf2vGz36', 'espartero', 'activated', 'user', '', ''),
(319, 29, 'Riza Angelie', 'Duray', '', '', '', '', '', 'Riza', 'Duray', '$2y$10$8XWMsEMBkYuj48AsEE8FpezJoG.08CNHkGp7iA0a.Ql86fGYcVkgu', 'duray', 'activated', 'user', '', ''),
(320, 30, 'Jenny', 'Ocaba', '', '', '', '', '', 'Jenny', 'Ocaba', '$2y$10$rRFN1OrKKU74BcX0NFThX.5.SGij54IZILRROoN7MG8EMBD4S5qRq', 'ocaba', 'activated', 'user', '', ''),
(321, 30, 'Verlyn', 'Factor', '', '', '', '', '', 'Verlyn', 'Factor', '$2y$10$v6fC8QFY/In/23hYvgLlW./IDuhjKKlXEa3ZnuBz4c.AeTg/MYTS6', 'factor', 'activated', 'user', '', ''),
(323, 30, 'Chariz Layne', 'Carbon', '', '', '', '', '', 'Chariz', 'Carbon', '$2y$10$tWSLukeBcGD1D5pPO6Sf6uqQC06fT7pHW3ak92/AQf1F3TZVN61Vm', 'carbon', 'activated', 'user', '', ''),
(324, 31, 'Fedel Ruman', 'Soldevilla', '', '', '', '', '', 'Fedel', 'Soldevilla', '$2y$10$7bTBO4GXE5YXaqWoJGWYxuUiRp4kRQfo.r7NrKqr0fW/CtfnualOm', 'soldevilla', 'activated', 'user', '', ''),
(325, 31, 'Bai Ridah', 'Macasayon', '', '', '', '', '', 'Bai', 'Macasayon', '$2y$10$cpCr7xXaGC7Vw6uzusrfRuTxLGFZJUhtQy3HVpl5YAH5dRUkwgAfy', 'macasayon', 'activated', 'user', '', ''),
(326, 31, 'Aleana Grace', 'Corpuz', '', '', '', '', '', 'Aleana', 'Corpuz', '$2y$10$0FVC2gXxwCqfpfV5vOwrKup./QQTfv4txEqyn7vb79A9h2mhA6o4m', 'corpuz', 'activated', 'user', '', ''),
(327, 31, 'Yvonne ', 'Villanueva', '', '', '', '', '', 'Yvonne', 'Villanueva', '$2y$10$Mofpkd54ySe7vXmbpj/w1OvLDhiCvexuxW2mEZmnrA2yfz0NgO.Su', 'villanueva', 'activated', 'user', '', ''),
(330, 1, 'Grace', 'Manco', '09772576701', 'Purok 1, Mapulong, Naawan Misamis Oriental', 'Purok 1, Mapulong, Naawan Misamis Oriental', '', 'Fathima Beevi ', 'Grace', 'Manco', '$2y$10$QMDvpTi83ODCk.g9DYT0.ettTDSuNRmb/PMYBE5wvEkvJGa/83o6G', 'manco', 'activated', 'user', '', ''),
(331, 1, 'Saddam', 'Bagul', '09977261368', 'Iligan City', 'Iligan City', '', 'Beinvenido Reyes II', 'Saddam', 'Bagul', '$2y$10$wC9Y3JlER78tYCgp03aNfu6.tDiGDpiO9mqL.0wlRYaGbb9/XmPny', 'bagul', 'activated', 'user', '', ''),
(332, 1, 'Mary Anjalica', 'Talaroc', '09971656450', 'P-10, Pagawan, Manticao Misamis Oriental', 'P-10, Pagawan, Manticao Misamis Oriental', '', 'Sandra Day O\'Connor II', 'Mary', 'Talaroc', '$2y$10$rX0StVpUbcwmbMwX.hO21.g8HKs2CeVmPokxKv6sSA2uqZ5yZJCqm', 'talaroc', 'activated', 'user', '', ''),
(333, 1, 'Mohammad', 'Manarondong', '09277986249', 'Bara-as, Iligan City', 'Wato, Balindong, Lanao Del Sur', '', 'Enrique Fernando II', 'admin', '316874900', '$2y$10$MsbbN7LNkMgyWLPh.ED1YOFADA07B0wJo68QzIRYWvJqzQeE8wsAm', '316874900', 'activated', 'super-admin', '', '60b44241164a2d26795b46701de2d807.jpg'),
(334, 1, 'Alizza Lyn', 'Celeste', '09269185821', 'Tibanga, Iligan City', 'Isulan,Sultan Kudarat', '', 'Susan Kiefel', 'Alizza', 'Celeste', '$2y$10$6Q1n5YyqPUO92dX4MufxAO1VvRZj3fCcnCCMNfAAQzbIkurlEshzi', 'celeste', 'activated', 'user', '', ''),
(335, 1, 'Jamailah', 'Guimba', '09173226664', 'Phase 1, Doña Maria Subd. Tipanoy Iligan City.', 'Phase 1, Doña Maria Subd. Tipanoy Iligan City.', '', 'Grace Poe III', 'Jamailah', 'Guimba', '$2y$10$iuvdD24PwVyRffEzaR2QU.FEuVI4Q4z8yj8RuKNP5CMsfAXjyBNyK', 'guimba', 'activated', 'user', '', ''),
(336, 2, 'Audrey Michelle', 'Kwan', '09169340053', 'Iligan CIty', 'Kauswagan, Lanao Del Norte', '', 'Queen Elizabeth II', 'Audrey', 'Kwan', '$2y$10$zFYl0Hk5wTL8U3fxTzYCAObSo1L55sd0V/E7Bbe5tMuINjdjm5HJS', 'kwan', 'activated', 'user', '', ''),
(337, 9, 'Ginalyn Omundang', 'Valdez-Baron ', '09175520664', 'Prk. 5, Brgy. Poblacion, Linamon, Lanao Del Norte', 'Prk. 5, Brgy. Poblacion, Linamon, Lanao Del Norte', '', 'Imelda Marcos II', 'Ginalyn', 'Valdez-Baron', '$2y$10$8u5BOXpEEU92LsDmLJca.eZpn.uDSpVmQWebQbMhYvu1MHIJdFbXm', 'valdez-baron', 'activated', 'user', '', ''),
(338, 7, 'Van Erik', 'Lucasan', '09238175595', 'Sto. Rosario, Iligan City', 'Sto. Rosario, Iligan City', '', 'Jose Mendoza', 'Van', 'Lucasan', '$2y$10$PfJR9qlBP0on9qA./3DOfugbAQWIFcBuElDekFBl4LSCJx9FqEwAm', 'lucasan', 'activated', 'user', '', ''),
(339, 14, 'Jerome C.', 'Beatisola', '09394863415', 'General Santos City', 'General Santos City', '', '', 'Jerome', 'Beatisola', '$2y$10$jmQ.rzEIMZt8hCjifCqv/uzU5McGCea7Kg6tEx9eemWmn7GMQkl7W', 'beatisola', 'activated', 'user', 'yes', ''),
(340, 14, 'Ariel  J.', 'Duray', '5530656', 'Dona Soledad Subd. Gensan', 'Dona Soledad Subd. Gensan', '', '', 'Ariel', 'Duray', '$2y$10$h1hdhE04zUbaP5kbTrYFaOpOcfzvVece3Y4WerKtB4Suc4r71ZxaO', 'duray', 'activated', 'user', 'yes', ''),
(341, 14, 'Jacinto, R. Jr.', 'Omila', '09177147007', '', '', '', '', 'Jacinto,', 'Omila', '$2y$10$VUOb6gyeX4LU3Jumb90HheIdJsi1a03aMqquxZ3o.WomyzZyUoenG', 'omila', 'activated', 'user', '', ''),
(342, 14, 'Bernardo Jr.', 'Salvadico', '09325755949', 'Block 19, Lot 9 VS Homes Gensan', 'Block 19, Lot 9 VS Homes Gensan', '', '', 'Bernardo', 'Salvadico', '$2y$10$75oL9NEgCpo4ihvuXNy47uRDh0Bjkml8qS3LAmUPeOC9yLQqxTsqu', 'salvadico', 'activated', 'user', '', ''),
(343, 14, 'Felix F.', 'Mesa', '09398039063', 'Yumang St. Lacap Subd., San Isidro., GenSan', 'Yumang St. Lacap Subd., San Isidro., GenSan', '', '', 'Felix', 'Mesa', '$2y$10$XoZVRzyu72LnZHQMu.uyb.Gp0E4ro7Vdr0cgbQVekKU/pDdm/lcFG', 'mesa', 'activated', 'user', 'yes', ''),
(344, 14, 'Edgar R.', 'Putiz', '09162689864', 'Cotabato City', 'Cotabato City', '', '', 'Edgar', 'Putiz', '$2y$10$wprN0ezRnVQe9BaMuvZaRO0OVXh4fhHNTjNUrlR/YxtDPKGVjvLsu', 'putiz', 'activated', 'user', '', '');
INSERT INTO `members` (`id`, `batch_id`, `FirstName`, `LastName`, `ContactNumber`, `CurrentAddress`, `PermanentAddress`, `WorkHistory`, `SlaveName`, `username`, `password`, `hashed_password`, `visible`, `status`, `role`, `AttyOrNot`, `image`) VALUES
(345, 17, 'Emerlito C.', 'Nimes', '09993924717', 'Lot 7 Phase 2 Superville Lagao., Gensan', 'Lot 7 Phase 2 Superville Lagao., Gensan', '', '', 'Emerlito', 'Nimes', '$2y$10$mWhka99dFVJIgCnpjbbzX.eq1G08qFZ9tZvUGZNhcHrm/mIIQcaXO', 'nimes', 'activated', 'user', '', ''),
(346, 18, 'Marlon R.', 'Daquigan', '09173059305', 'Small Margus, Glan, Sarangani Province', 'Small Margus, Glan, Sarangani Province', '', '', 'Marlon', 'Daquigan', '$2y$10$ErKPSVtca5Hc1Zb4WI8fP.XPvBVmjS/.jE01m1VDbSh/uu01i.tN2', 'daquigan', 'activated', 'user', '', ''),
(347, 18, 'Ulysses', 'Caspillo', '09997683099', 'Blk 9 Lot 4 Agan Ligaya., Gen San', 'Blk 9 Lot 4 Agan Ligaya., Gen San', '', '', 'Ulysses', 'Caspillo', '$2y$10$xoBPTvicQWwos/sWjhla2OhAGZ8TsHzOMc0DxyM6aRx2W.pBEtf4a', 'caspillo', 'activated', 'user', '', ''),
(348, 18, 'Abdulsalam', 'Masahod', '13068505336', '103 Warwick Crescent, Warman, Canada', '103 Warwick Crescent, Warman, Canada', '', '', 'Abdulsalam', 'Masahod', '$2y$10$eCC864bfwAhCsMeMSJSNx.FfsAtsfd9LMfARhcluzNQc7eQXZpGpW', 'masahod', 'activated', 'user', '', ''),
(349, 19, 'Phillip E.', 'De Ocampo', '09420452138', 'No. 70 Lanzones St. Gensan', 'No. 70 Lanzones St. Gensan', '', '', 'Phillip', 'De Ocampo', '$2y$10$3stsVQ8G5pmtjvUdzZckpe9nKIBdu8YJ1N1AX7Cd3nYasYnpD24c6', 'de ocampo', 'activated', 'user', '', ''),
(350, 20, 'Dominic', 'Salazar', '09177142144', '3rd St. Lacap Subdivision., Gensan', '3rd St. Lacap Subdivision., Gensan', '', '', 'Dominic', 'Salazar', '$2y$10$3DZx3GLpe9nrd/JdxWdwxeS2Xy2jtdSkkUdXpaW2b/srE.v4vjQI.', 'salazar', 'activated', 'user', '', ''),
(351, 20, 'Jose  Jr.', 'Amagan', '09328700672', 'Prk. Malakas, Nunez St., Cambridge Farm, Gensan', 'Prk. Malakas, Nunez St., Cambridge Farm, Gensan', '', '', 'Jose', 'Amagan', '$2y$10$JXGIdHDSE4nQhftb8z/DE.3u1PUGCeW0/7ndscLIZ.28ioQDylP56', 'amagan', 'activated', 'user', '', ''),
(352, 20, 'Junerie T.', 'Achas', '09997077177', 'Mlang Cotabato City', 'Mlang Cotabato City', '', '', 'Junerie', 'Achas', '$2y$10$amSGv56lHshktFyg3Sn5Iu8SuxCPeTZ5y/qEpHxBeWEiEk7Rn2UC6', 'achas', 'activated', 'user', '', ''),
(353, 22, 'Mark Louie', 'Zabala', '09177155619', '', '', '', '', 'Mark', 'Zabala', '$2y$10$xLo0AXRbgUm24RzdZsli7ew1yyuDu/AZZceCjXuzY3eyAHFhby0a2', 'zabala', 'activated', 'user', 'yes', ''),
(354, 22, 'Rigor Nemrod Jr.', 'Balabat', '09430630425', 'Springville Apopong, Gensan', 'Springville Apopong, Gensan', '', '', 'Rigor', 'Balabat', '$2y$10$EliEVbl0hVC/mEXK47IdRupzxHGf1M7BqQCerU5jjmXCmIAr9YEGe', 'balabat', 'activated', 'user', '', ''),
(355, 23, 'Jayson V.', 'Dona–al', '09186946552', 'Glan Sarangani Province', 'Glan Sarangani Province', '', '', 'Jayson', 'Dona–al', '$2y$10$mQ6RGJ1/Kquqs2dyNJi91.tik1AarH8cl79jfWIJlxqfR/hd57dFS', 'dona–al', 'activated', 'user', '', ''),
(356, 23, 'Faizal', 'Macasayon', '09985756907', 'Lot 6 Blk 6 Agan South Villas Lagao., Gensan', 'Lot 6 Blk 6 Agan South Villas Lagao., Gensan', '', '', 'Faizal', 'Macasayon', '$2y$10$DQQiNbU622/VZI4/WJHrKePBkD7HP6u84ZsuiJvGuyeNP2VUiIxai', 'macasayon', 'activated', 'user', '', ''),
(357, 23, 'Redentor W.', 'Batulan', '09755472084', '', '', '', '', 'Redentor', 'Batulan', '$2y$10$4cW3UmMbW9NVnjrvmPbY2uvUMNas9fE52rczf2eHb1jzJewB/8jNq', 'batulan', 'activated', 'user', '', ''),
(358, 23, 'Joseph A.', 'Braga', '09158567440', 'Poblacion, Polomolok South Cotabato', 'Poblacion, Polomolok South Cotabato', '', '', 'Joseph', 'Braga', '$2y$10$e86g/BzYD1i9js7NGfaj3uaNZAZ1hsEfOTw8gnMOGlzFpZKzHsL5a', 'braga', 'activated', 'user', '', ''),
(359, 25, 'Kristian Josef', 'Acedo', '', 'No. 5 Acacia St. MSU Campus Brgy Fatima, GenSan', 'No. 5 Acacia St. MSU Campus Brgy Fatima, GenSan', '', '', 'Kristian', 'Acedo', '$2y$10$WpjRL6qXVpGoN8n84NCb.eVcZQhuLW5g3mLiuvaoyNQmXnYKQ0Rsu', 'acedo', 'activated', 'user', 'yes', ''),
(360, 25, 'Mark Vincent P.', 'Dionero', '', '5th Road Villegas Subd. Prk Malakas, Brgy San Isidro, Gensan', '5th Road Villegas Subd. Prk Malakas, Brgy San Isidro, Gensan', '', '', 'Mark', 'Dionero', '$2y$10$ViK6vX9ZfdYf2FTs6KDfZeq9v4q4.RKkag4y2FEH22vAh2tfSTAcG', 'dionero', 'activated', 'user', '', ''),
(361, 25, 'Zosimo Jr.', 'Lira', '09487172889', 'Adelfa St. Poblacion Polomolok, South Cotabato', 'Adelfa St. Poblacion Polomolok, South Cotabato', '', '', 'Zosimo', 'Lira', '$2y$10$MMxG/4XmqWdijyIa3SnMi.QBpNSc3pV6rdOBPda1hXpF/6QSZCH2a', 'lira', 'activated', 'user', 'yes', ''),
(362, 24, 'Virgilio Paolo A.', 'Alconera', '09321346990', 'Brgy San Isidro, Gensan', 'Brgy San Isidro, Gensan', '', '', 'Virgilio', 'Alconera', '$2y$10$Jp6VzrMdh3lSWmyzYV6VK.4t.gBXrcpRfcckjI0Qd33zcXPtccgGO', 'alconera', 'activated', 'user', 'yes', ''),
(363, 24, 'Jaspen John R.', 'Bacongco', '09295535596', 'Malayang Nayon Subdivision Mabuhay, GenSan', 'Malayang Nayon Subdivision Mabuhay, GenSan', '', '', 'Jaspen', 'Bacongco', '$2y$10$4B6NUdxv.tS9r1Qs.y37meQ5Mc6RivqH0B488gCxriLjbD1tjtK9S', 'bacongco', 'activated', 'user', 'yes', ''),
(364, 26, 'Ryan Omar V.', 'Reyes', '09079888488', 'Baluan, Gensan', 'Baluan, Gensan', '', '', 'Ryan', 'Reyes', '$2y$10$DaGtyGz.A7g4DahPj.x6feCUsuJ8V0r9Jls0giBuA63BoTiQT/3Qm', 'reyes', 'activated', 'user', '', ''),
(365, 27, 'Eric Joseph', 'Duray', '09127377569', 'Dona Soledad Subd. Gensan', 'Dona Soledad Subd. Gensan', '', '', 'Eric', 'Duray', '$2y$10$Cnc3H9dTZPoyDvFbBCMVlOCj9FJCgUoU7aqmFNgD0qQORKNpDSiC2', 'duray', 'activated', 'user', '', ''),
(366, 27, 'Karl', 'Sabido', '09265363315', 'Calumpang Gensan', 'Calumpang Gensan', '', '', 'Karl', 'Sabido', '$2y$10$LHzwaLY20bnxqa5mhvKk3u.IarRI/tAtWIj13WlwfYAsO8v3Z4N2a', 'sabido', 'activated', 'user', '', ''),
(367, 27, 'Anecito F. III', 'Lopez', '09157099355', 'Lumasal Maasim, Sarangani Province', 'Lumasal Maasim, Sarangani Province', '', '', 'Anecito', 'Lopez', '$2y$10$vyzGIGIhRGKBZGgDaO2RDuTKe8dPDQF5CeiJfZxq1USoMvzP0Lr42', 'lopez', 'activated', 'user', '', ''),
(368, 28, 'Glen Percy G.', 'Tulio', '09097164088', 'Brgy. West., GenSan', 'Brgy. West., GenSan', '', '', 'Glen', 'Tulio', '$2y$10$OEeY9kwNMsazm0.0ApBkKewSDJxtd2HC5go5PNk44eBn6kO2Ios6a', 'tulio', 'activated', 'user', '', ''),
(369, 29, 'Ice C.', 'Ilejay', '09258433774', 'Corner Ventilacion And St. Joseph Sts., Lagao, Gensan', 'Corner Ventilacion And St. Joseph Sts., Lagao, Gensan', '', '', 'Ice', 'Ilejay', '$2y$10$iDilXvx/CS9q6LQblkOOSOpJ0CK4xCNH0wnOoY47YPjIL1MOVbi76', 'ilejay', 'activated', 'user', '', ''),
(370, 29, 'Genest Jan', 'Ramirez', '09054705915', 'Lotus Village, GSC', 'Lotus Village, GSC', '', '', 'Genest', 'Ramirez', '$2y$10$swuiNFKObb0C3sw.kjieVOkHRAS1tonh3xTjdVJa8VAEy2nYyIRBG', 'ramirez', 'activated', 'user', '', ''),
(371, 29, 'Keen Steve', 'Bitoon', '09123341022', 'Kipalbig, Tampakan, South Cotabato', 'Kipalbig, Tampakan, South Cotabato', '', '', 'Keen', 'Bitoon', '$2y$10$47.z0EMIf8al0shTnQTZFOtG61hH4UWkye3p/OjPRpCCeSWU9Fnz.', 'bitoon', 'activated', 'user', '', ''),
(372, 30, 'Oeruel', 'Bautista', '09988541302', 'Maitum, Sarangani', 'Maitum, Sarangani', '', '', 'Oeruel', 'Bautista', '$2y$10$sErTnMDpD6NbWBxCc0CKHudzR9.Ts9qJJn6NJ0uaYvVDtdKkGLsgC', 'bautista', 'activated', 'user', '', ''),
(373, 30, 'Jeffrey S. ', 'Dela Cruz', '09199994746', 'Koronadal City ', 'Koronadal City ', '', '', 'Jeffrey', 'Dela Cruz', '$2y$10$DbyEjjly6egrhmYUHuncbehBzZigTfKkwW2U3oXkpRZJsvZqnJjZO', 'dela cruz', 'activated', 'user', '', ''),
(374, 30, 'Mark S.', 'Alagbay', '09294236780', 'Banga, South Cotabato', 'Banga, South Cotabato', '', '', 'Mark', 'Alagbay', '$2y$10$TKjlncCciriEUCNZ0r0ZcekxGCy.1gus.QUPGKd.GeI8VaY4FTVNC', 'alagbay', 'activated', 'user', '', ''),
(375, 17, 'Katherine G.', 'Silabay-Villa', '09322502595', 'Capitol Centro, Kalawag 2, Isulan, Sultan Kudarat', 'Capitol Centro, Kalawag 2, Isulan, Sultan Kudarat', '', '', 'Katherine', 'Silabay-Villa', '$2y$10$anZarF0Uu1mZOWIH/kbxge53F4pdrRHfBpvd/aLA2pN6WQubqpeLe', 'silabay-villa', 'activated', 'user', '', ''),
(376, 17, 'Shiela Mae', 'Arella-Harrid', '09084518350', 'Blk 1 Lot 17, Dona Lourdes Subdivision, Koronadal City', 'Blk 1 Lot 17, Dona Lourdes Subdivision, Koronadal City', '', '', 'Shiela', 'Arella-Harrid', '$2y$10$Pc.L8RuhFHENN8njXY/AG.OSTKfdh8Vc3OzCSbLfPp5EvwxfY3kWC', 'arella-harrid', 'activated', 'user', '', ''),
(377, 17, 'Ivy Grace', 'Tutor - Lorenzo', '09236599434', '#126 6th St. Soriano Subd., Brgy City Heights, Gensan', '#126 6th St. Soriano Subd., Brgy City Heights, Gensan', '', '', 'Ivy', 'Tutor - Lorenzo', '$2y$10$YjOe.gKxfj2Jxs22Aj/VVO/MdCg0rmDN0gIOduqOezqbcWLQ.Z5pW', 'tutor - lorenzo', 'activated', 'user', '', ''),
(378, 18, 'Mary Ann J.', 'Barela', '09235355247', 'Victoria Heights Subd., Mamay Road, Brgy. Angliongto, Davao City', 'Victoria Heights Subd., Mamay Road, Brgy. Angliongto, Davao City', '', '', 'Mary', 'Barela', '$2y$10$4T2u5O.IYqEZ0wlObir6o.aIn6BnqfBrve5hjjxDVxN0RwhwERro6', 'barela', 'activated', 'user', '', ''),
(379, 18, 'Mary Grace L.', 'Ventura', '09227740806', 'Surallah, South Cotabato', 'Surallah, South Cotabato', '', '', 'Mary', 'Ventura', '$2y$10$1UBHxP4J90u4rtkSDUmzC.GsznaV1/ocdL.ZZaTP9mZ0MzuJn1nhq', 'ventura', 'activated', 'user', '', ''),
(380, 20, 'Shirley O.', 'Panes-Ruiz', '09182751332', 'General Santos City', 'General Santos City', '', '', 'Shirley', 'Panes-Ruiz', '$2y$10$n5yAcnuWzuYIEqR/zHI/qeB9zdP2c4a71IpqpSzbYg/rKWXKc93rK', 'panes-ruiz', 'activated', 'user', 'yes', ''),
(381, 20, 'Anna Kristine A.', 'Alconera', '', '4d 2a Lacap Subdivision, San Isidro., Gensan', '4d 2a Lacap Subdivision, San Isidro., Gensan', '', '', 'Anna', 'Alconera', '$2y$10$NFjSaZ3lSTwHBpLCS.nHfOF68aVV/nuAKoTeymzubEh6xpZ3WHxnC', 'alconera', 'activated', 'user', '', ''),
(382, 21, 'Glenda', 'Narcilla-Yuson', '09173032138', '4th Road Calumpang, Gensan', '4th Road Calumpang, Gensan', '', '', 'Glenda', 'Narcilla-Yuson', '$2y$10$8dyZqn5dLLk7mL7z.n79qu2oE528vplGC71FlTnwETvVhrwNZCDW6', 'narcilla-yuson', 'activated', 'user', 'yes', ''),
(383, 22, 'Rona Rea', 'Karunungan-Macasayon', '', 'Lot 6 Blk 6 Agan South Villas., GenSan', 'Lot 6 Blk 6 Agan South Villas., GenSan', '', '', 'Rona', 'Karunungan-Macasayon', '$2y$10$//.s3QOeZNY.s0D/DmeTM.8ZzyWNYJ6pXpqzhF1Alvu.rIrOWJYE6', 'karunungan-macasayon', 'activated', 'user', '', ''),
(384, 23, 'Kathrina Vanessa Y.', 'Hagoriles', '09183487380', 'Polomolok South Cotabato', 'Polomolok South Cotabato', '', '', 'Kathrina', 'Hagoriles', '$2y$10$WhJv4RWXwzIn2ppQu.wCEe.Yu5JE3BsnyQbIbFG8TI5Xvg.SSOqui', 'hagoriles', 'activated', 'user', 'yes', ''),
(385, 23, 'Annabelle', 'Cañazares-Mindalano', '', '', '', '', '', 'Annabelle', 'Cañazares-Mindalano', '$2y$10$u4CCiirf8QYi0tItDKNlT.M3yvQHRZ/IB61U0bLDtT18w3Bt.EPsi', 'ca??azares-mindalano', 'activated', 'user', '', ''),
(386, 23, 'Joi', 'Nandu', '09399390921', 'Blk3 Lot 24 Agan Centro Subdivision Lagao., Gensan', 'Blk3 Lot 24 Agan Centro Subdivision Lagao., Gensan', '', '', 'Joi', 'Nandu', '$2y$10$r8wbmNyI.ED47vxonHA0K.7sHmpOuMSByN5zD473H4fA5skqfVXpK', 'nandu', 'activated', 'user', '', ''),
(387, 23, 'Riza', 'Lipata', '09177943861', 'Dona Soledad, GenSan', 'Dona Soledad, GenSan', '', '', 'Riza', 'Lipata', '$2y$10$aJ2TCRFZPcc7JgGPLVF6TO29tQEPBTo/DICHv9gD/V8THOsDLz.jC', 'lipata', 'activated', 'user', '', ''),
(388, 25, 'Joni Mae', 'Cambarijan-Debuque', '09262049601', 'Klinan 6, Polomolok South Cotabato', 'Klinan 6, Polomolok South Cotabato', '', '', 'Joni', 'Cambarijan-Debuque', '$2y$10$MPlaurmhXWOglb/4UK1Qo.kIPvohVV0YqLuuwuQfnlgVP/lRU5mLC', 'cambarijan-debuque', 'activated', 'user', '', ''),
(389, 25, 'Kristin San T.', 'Derije', '09569318716', 'Blk 9 Lot 17 Las Villas De Dadiangas Subdivision., Brgy City Heights, GenSan', 'Blk 9 Lot 17 Las Villas De Dadiangas Subdivision., Brgy City Heights, GenSan', '', '', 'Kristin', 'Derije', '$2y$10$JisO05ZZNoWqzxAI60svY.x2I.oBl2trLd4MfmAI.k6qzyTrYoH6q', 'derije', 'activated', 'user', '', ''),
(390, 25, 'Veromic', 'Navida', '', 'Blk 34 Lots 9&10 Phase 1-A Gensanville Subd, Bula, GenSan', 'Blk 34 Lots 9&10 Phase 1-A Gensanville Subd, Bula, GenSan', '', '', 'Veromic', 'Navida', '$2y$10$90mi.snBbObLklAwP2DlMuMBwhVBeyM5e4D9qz5Seul/XBz4I6LL2', 'navida', 'activated', 'user', 'yes', ''),
(391, 25, 'Sharmagne', 'Villacastin', '09179569892', 'Poblacion Malapatan Sarangani', 'Poblacion Malapatan Sarangani', '', '', 'Sharmagne', 'Villacastin', '$2y$10$aHzIkg7jqcGUILysLgLNX.UwbT5mplo0MoE.LMdyRD.RltLeZyWSK', 'villacastin', 'activated', 'user', '', ''),
(392, 24, 'Beulah P.', 'Apostol', '09469626000', 'Polomolok South Cotabato', 'Polomolok South Cotabato', '', '', 'Beulah', 'Apostol', '$2y$10$hCVOAV73OilzAfDmtADO7eAmyJJr49P7hLNsHFXfJMfUcZiPJtWpi', 'apostol', 'activated', 'user', 'yes', ''),
(393, 24, 'Maria Cheryl B.', 'Armenion', '09081594149', 'Prk. San Roque, Labangal', 'Prk. San Roque, Labangal', '', '', 'Maria', 'Armenion', '$2y$10$q0GJLEzTpnaLtRrbAIP4leU8LLv5X.ICOjQC6RLJvV8Ei8NjBYLgC', 'armenion', 'activated', 'user', '', ''),
(394, 24, 'Yvette Gay E.', 'Hembra', '09309602773', 'Rambutan St., Gensan', 'Rambutan St., Gensan', '', '', 'Yvette', 'Hembra', '$2y$10$11OqUqQawjzdVsttspx1POvhELCvkyYvRV75FNxzDchExg4eZHSRO', 'hembra', 'activated', 'user', '', ''),
(395, 24, 'Maria Kristine P.', 'Lamoste-Pantua', '09216362697', '2nd Floor Valencia Bldg., Pendatun Ave., Cor. Santol St. Gensan', '2nd Floor Valencia Bldg., Pendatun Ave., Cor. Santol St. Gensan', '', '', 'Maria', 'Lamoste-Pantua', '$2y$10$hVofFvcsrZ/T7ctnevN6GeT3zd7pieUxL3HAxSMMkDCTNUvgcHyGq', 'lamoste-pantua', 'activated', 'user', '', ''),
(396, 24, 'Anna Socorro Rivas', 'Monreal', '', 'Blk 9 Lot 2 Saturn St. Villa Consuelo Subd. GenSan', 'Blk 9 Lot 2 Saturn St. Villa Consuelo Subd. GenSan', '', '', 'Anna', 'Monreal', '$2y$10$0CGVWimhtPbz6fN0ivcZN.fhMmvhZAVQZ1t2uE0U2Op7Z763kTTj.', 'monreal', 'activated', 'user', '', ''),
(397, 26, 'Mary Jhoanne', 'Achas', '09099925085', 'Prk. 3 Lanton Apopong, Gensan', 'Prk. 3 Lanton Apopong, Gensan', '', '', 'Mary', 'Achas', '$2y$10$WbzNJVUEJXinaFfmTH4F6.WdrKtXoMq0V9kXHRjZ.Ir/V.2PdI786', 'achas', 'activated', 'user', '', ''),
(398, 28, 'Shiena Lou B.', 'Amodia', '09183492147', 'Prk. Tomasa, Upper Calumpang, GenSan', 'Prk. Tomasa, Upper Calumpang, GenSan', '', '', 'Shiena', 'Amodia', '$2y$10$Ty4z88yiTPZ5uZqVEkm/suNF7BIZvkvnLTrC36ywJoraOu5B6rAi2', 'amodia', 'activated', 'user', '', ''),
(399, 29, 'Jill Odessa S.', 'Castardo', '09177020942', 'B15 L24 Sarangani Homes Phase 1, Brgy. San Isidro, General Santos City', 'B15 L24 Sarangani Homes Phase 1, Brgy. San Isidro, General Santos City', '', '', 'Jill', 'Castardo', '$2y$10$vNM1WU5qtev9LkaCWobxsO8XKNkI17mFlehuXqNx.QVvFSOfu7rw.', 'castardo', 'activated', 'user', '', ''),
(400, 29, 'Princess Rosshien L. ', 'Hortal', '09234871663', '', '', '', '', 'Princess', 'Hortal', '$2y$10$nzV2uqBeI.zM4kwYBi0wi.Wf/eOCBPqfsnSBO2FjQbCaNgffcLt32', 'hortal', 'activated', 'user', '', ''),
(401, 29, 'Mohajirah', 'Abdurajik-Gasque', '09467007812', 'Zone 9A, Blk. 3, Fatima, GSC', 'Zone 9A, Blk. 3, Fatima, GSC', '', '', 'Mohajirah', 'Abdurajik-Gasque', '$2y$10$KbQAmRp024k.OQdO.9xOQO7fX1poXRZ0EMYda3uyYleRLqah9c/tG', 'abdurajik-gasque', 'activated', 'user', '', ''),
(402, 30, 'Badelle Jaraya', 'Ampan', '09151259492', 'Blk. 19, Lot 15, Malesido Homes II, San Isidro, GSC', 'Blk. 19, Lot 15, Malesido Homes II, San Isidro, GSC', '', '', 'Badelle', 'Ampan', '$2y$10$wjYfrSTbffDRmz2RKhbVyOLFx7aW8R.s4FwgN1SmMbuRDuK82CATG', 'ampan', 'activated', 'user', '', ''),
(403, 14, 'Mariano ', 'Lugares ', '', '', '', '', '', 'Mariano', 'Lugares ', '$2y$10$ATwtdNwxnmXvUQwGx7vJ3O4giCW5PFkct/dMo6mdnyWBheFvQFGbu', 'lugares ', 'activated', 'user', 'yes', ''),
(404, 14, 'Lolita ', 'Teope ', '', '', '', '', '', 'Lolita', 'Teope ', '$2y$10$ZCh6tfMNv4nX3so01f7TpuqgGyWWs3iw12QSSm0vjdy7dzWOz.ZLm', 'teope ', 'activated', 'user', '', ''),
(405, 14, 'Naomi ', 'Baytus- Braga', '', '', '', '', '', 'Naomi', 'Baytus- Braga', '$2y$10$G3f2GqNDc17OFYaEZEPc2eKY6p/RFNuxWB51RG09zmTet6JaplVuu', 'baytus- braga', 'activated', 'user', '', ''),
(407, 32, 'John Michael D.', 'Badelles', '09066695947', 'Badelles St. Ext, Pala-o, Iligan City', 'Badelles St. Ext, Pala-o, Iligan City', '', 'Adel Tamano The First', 'John', 'Badelles', '$2y$10$2itvOq9tc5xIcLC/oizZLudd6Vu1VqO3OO3fG8nvTiO7pOUBF9bAi', 'badelles', 'activated', 'user', 'yes', '');

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
