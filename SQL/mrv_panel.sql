-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2020 at 02:48 AM
-- Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrv_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Name` text NOT NULL,
  `Lastname` text NOT NULL,
  `Image` text,
  `Token` text,
  `Rank` text,
  `Status` text,
  `AdminPerm` text NOT NULL,
  `AdminSupp` text NOT NULL,
  `createdBy` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `Username`, `Password`, `Email`, `Name`, `Lastname`, `Image`, `Token`, `Rank`, `Status`, `AdminPerm`, `AdminSupp`, `createdBy`, `lastactivity`) VALUES
(8, 'breaK.', 'fe01ce2a7fbac8fafaed7c982a04e229', 'break@mrv-hosting.com', 'breaK.', '', 'assets/img/i/logo/logo.png', '1312', '5', '1', 'a:4:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";}', 'a:5:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";}', '8', '1591067036'),

-- --------------------------------------------------------

--
-- Table structure for table `box_list`
--

CREATE TABLE `box_list` (
  `id` int(11) NOT NULL,
  `Name` text,
  `Host` text,
  `Username` text,
  `Password` text,
  `sshPort` text,
  `ftpPort` text,
  `Status` text,
  `Online` text,
  `isStart` text,
  `Note` text,
  `boxLocation` text,
  `gameID` text,
  `autoRestart` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `box_list`
--

INSERT INTO `box_list` (`id`, `Name`, `Host`, `Username`, `Password`, `sshPort`, `ftpPort`, `Status`, `Online`, `isStart`, `Note`, `boxLocation`, `gameID`, `autoRestart`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(1, 'mrv-game01', '123.123.123.123', 'root', '', '1112', '21', '1', '1', '1', 'mrv-node02', 'Germany', '1', '', '8', '19/06/2020, 22:57pm', '1592600222'),
(2, 'MRV#vGame#2', '123.123.123.123', 'root', '', '1112', '21', '1', '1', '1', 'MRV-Hosting.com \r\n- VPS for Game - debian', 'Germany', '1', '', '8', '27/06/2020, 12:14pm', '1593252861'),
(3, 'MRV FDL #1', '123.123.123.123', 'root', '', '1112', '21', '1', '1', '1', 'MRV-Hosting.com \r\n- VPS for Game - debian', 'Germany', '5', '', '8', '27/06/2020, 12:14pm', '1593252861');

-- --------------------------------------------------------

--
-- Table structure for table `fdl_servers`
--

CREATE TABLE `fdl_servers` (
  `id` int(11) NOT NULL,
  `boxID` text,
  `Username` text,
  `Password` text,
  `userID` text,
  `Install` text,
  `isFree` text,
  `expiresFor` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fdl_servers`
--

INSERT INTO `fdl_servers` (`id`, `boxID`, `Username`, `Password`, `userID`, `Install`, `isFree`, `expiresFor`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(3, '3', 'srv_1_1_ufqae', 'FRFO3DbF', '1', 'default', '0', NULL, '8', '28/08/2020, 15:50pm', '1598622654');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `Name` text,
  `smName` text,
  `Icon` text,
  `bg_img` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `Name`, `smName`, `Icon`, `bg_img`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(1, 'Counter-Strike 1.6', 'cs16', 'https://i.imgur.com/e7O9Uul.png', 'https://i.imgur.com/FCqn3Lq.png', '1', '1592038851', '1592038851'),
(2, 'San Andreas Multiplayer', 'samp', 'https://i.imgur.com/0Zf8JBo.png', 'https://i.imgur.com/LZh0xSQ.png', '1', '1592038851', '1592038851'),
(3, 'FiveM', 'fivem', 'https://i.imgur.com/DGZS11m.png', 'https://i.imgur.com/En2jzFu.png', '1', '1592038851', '1592038851'),
(4, 'Counter-Strike:Global Offensive', 'csgo', 'https://i.imgur.com/TGCUrI8.png', 'https://i.imgur.com/T1fAkh1.png', '1', '1592038851', '1592038851'),
(5, 'Fast Download', 'fdl', 'https://i.imgur.com/x6ndhmr.png', 'https://i.imgur.com/RKg4dlJ.png', '1', '1592038851', '1592038851');

-- --------------------------------------------------------

--
-- Table structure for table `mods`
--

CREATE TABLE `mods` (
  `id` int(11) NOT NULL,
  `Name` text,
  `modDir` text,
  `Map` text,
  `commandLine` text,
  `Note` text,
  `gameID` text,
  `Status` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mods`
--

INSERT INTO `mods` (`id`, `Name`, `modDir`, `Map`, `commandLine`, `Note`, `gameID`, `Status`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(1, 'Public', '/home/games/cs/PublicMRV', 'de_dust2', 'test', '	Normalna igra CS1.6, tim Terorista(T) protiv tima Counter-Terorista(CT). Misija CT tima je da sacuva ciljeve T tima, te da ih sve eliminira ili do kraja runde zadrzi plant-ove sigurnima. T tim mora da se probije do plantova koje cuva CT tim, da ih eliminira ili da postavi C4 te ga cuva do njegovog unistenja.', '1', '1', '1', '1', '1'),
(3, 'SA-MP 0.3.7-R2', '/home/games/samp/samp03', '', './samp03svr', 'Testiram.', '2', '1', '1', '1', '1'),
(4, 'FiveM', '/home/games/fivem', '', 'cd server-data;../run.sh +exec server.cfg', 'FiveM', '3', '1', '1', '1', '1'),
(6, 'CS GO', '/home/games/csgo', 'de_dust2', 'test', 'Testiram.', '4', '1', '1', '1', '1'),
(7, 'Deathmatch', '/home/games/cs/dmMRV', 'de_dust2', 'test', 'Ovo je mod koji obozava vecina igraca, na njemu ucite da se snalazite u prostoru, dobijate na brzini i preciznosti, jer svaki metak Vam znaci. Igra se tako sto se stvarate randomirano po mapi, brzo odabirete zeljeno oruzije i ubijate koga stignete, od svojih, pa do tudjih takmicara, tu se ne igra timski, vec pojedinacno, onaj koji ima najvise ubistava na kraju runde, on je pobednik.', '1', '1', '1', '1', '1'),
(8, 'COD:MW4', '/home/games/cs/cod4MRV', 'de_dust2', 'test', 'COD Mod je standardan CS ali sa zvukovima i oruzjem iz igre Call of Duty', '1', '1', '1', '1', '1'),
(9, 'GunGame', '/home/games/cs/ggMRV', 'de_dust2', 'test', 'Svakim ubistvom sakupljate poene, kada nakupite dovoljan broj za sledeci level, automatski dobijate jace oruzije.\nCim umrete ozivljavate se kao na deathmatch modu.', '1', '1', '1', '1', '1'),
(10, 'AWP Mod', '/home/games/cs/awpMRV', 'de_dust2', 'test', 'AWP Maps Mod ima specijalne male mape i u ovom modu se koristi samo AWP sniper', '1', '1', '1', '1', '1'),
(11, 'ClanWar (CW)', '/home/games/cs/cwMRV', 'de_dust2', 'test', 'ClanWar mod', '1', '1', '1', '1', '1'),
(12, 'PaintBall', '/home/games/cs/pbMRV', 'de_dust2', 'test', 'Paintball Mod ima specijalne mape i specijalna oruzja koja umesto metaka ispaljuje obojene loptice.', '1', '1', '1', '1', '1'),
(13, 'AutoMix', '/home/games/cs/amixMRV', 'de_dust2', 'test', 'AutoMix mod', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `Title` text,
  `Text` text,
  `Location` text,
  `Tags` text,
  `Image` text,
  `userID` text,
  `Date` text,
  `Status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Title`, `Text`, `Location`, `Tags`, `Image`, `userID`, `Date`, `Status`) VALUES
(2, 'EBL #\r\nSupport Ticket', 'Support ticket je pusten u rad! \nUbuduce kad vam treba pomoc oko servera/gamepanela da iskljucivo otvorite tiket u sekciji support!\n\nPozdrav,\nMRV-Hosting.com\n#SupportTeam', 'World', 'No-share', 'n/i/d2iztojgc2rp2bxst6nwqy7hgrbepe.jpg', '8', '18/05/2020, 05:43am', '1'),
(3, 'EBL # Facebook Page', 'Obavjestavamo vas da smo napravili i nasu oficijalu Facebook stranicu "MRV Hosting" te da ako mozete da odvojite malo vaseg vremena i lajkujete istu jer spremamo dosta toga za VAS!. -Uskoro!\n\nhttps://www.facebook.com/mrvhosting\n\nPozdrav,\nMRV Hosting Team <3', 'World', 'facebook, mrv, mrvhosting, mrv-hosting', 'n/i/d2iztojgc2rp2bxst6nwqy7hgrbepe.jpg', '8', '02/07/2020, 08:00am', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `gameID` text NOT NULL,
  `userID` text NOT NULL,
  `Location` text NOT NULL,
  `Slots` text NOT NULL,
  `Months` text NOT NULL,
  `modID` text NOT NULL,
  `serverName` text NOT NULL,
  `Price` text,
  `orderDate` text NOT NULL,
  `lastactivity` text NOT NULL,
  `orderStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `gameID`, `userID`, `Location`, `Slots`, `Months`, `modID`, `serverName`, `Price`, `orderDate`, `lastactivity`, `orderStatus`) VALUES
(11, '4', '35', 'Germany', '12', '1', '6', 'CSGO', NULL, '29/06/2020, 23:43pm', '1593467030', '1'),


-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `Name` text,
  `pluginDir` text,
  `Note` text,
  `gameID` text,
  `Status` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `Name`, `pluginDir`, `Note`, `gameID`, `Status`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(1, 'Night Vision', '/home/plugins/cs16/nightvision/', 'Testiram.', '1', '1', '1', '1592038851', '1592038851');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `userID` text,
  `boxID` text,
  `gameID` text,
  `modID` text,
  `Name` text,
  `Port` text,
  `Map` text,
  `Slot` text,
  `fps` text,
  `expiresFor` text,
  `Username` text,
  `Password` text,
  `Status` text,
  `Online` text,
  `isStart` text,
  `commandLine` text,
  `Note` text,
  `isFree` text,
  `autoRestart` text,
  `serverOption` text,
  `ftpBlock` text,
  `createdBy` text,
  `createdDate` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `userID`, `boxID`, `gameID`, `modID`, `Name`, `Port`, `Map`, `Slot`, `fps`, `expiresFor`, `Username`, `Password`, `Status`, `Online`, `isStart`, `commandLine`, `Note`, `isFree`, `autoRestart`, `serverOption`, `ftpBlock`, `createdBy`, `createdDate`, `lastactivity`) VALUES
(3, '12', '1', '1', '1', 'MRV#Support#Free#1 [JailBreak]', '27018', 'de_dust2', '32', '1000', '2021-02-07', 'srv_12_1', 'Tbp2ad0I', '1', '0', '1', '', '', '0', '', '1', '0', '8', '22/06/2020, 14:52pm', '1592830350'),
(4, '3', '1', '1', '1', 'MRV:Demo#CS 1.6', '27020', 'de_dust2', '5', '1000', '2020-06-23', 'srv_3_1', 'y71D4vkx', '1', '0', '1', '', '', '0', '', '0', '1', '8', '23/06/2020, 11:39am', '1592905181'),

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `site_name` text NOT NULL,
  `site_link` text NOT NULL,
  `site_online` text NOT NULL,
  `site_update` text NOT NULL,
  `site_version` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `site_link`, `site_online`, `site_update`, `site_version`) VALUES
(1, 'MRV Hosting', 'https://www.mrv-Hosting.com', '1', '1', '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `serverID` text,
  `Title` text,
  `Message` text,
  `Priority` text,
  `Status` text,
  `Date` text,
  `userID` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--



-- --------------------------------------------------------

--
-- Table structure for table `ticket_answ`
--

CREATE TABLE `ticket_answ` (
  `id` int(11) NOT NULL,
  `tID` text,
  `userID` text,
  `supportID` text,
  `Message` text,
  `Date` text,
  `lastactivity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_answ`
--



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Name` text NOT NULL,
  `Lastname` text NOT NULL,
  `Image` text,
  `pC` text,
  `Token` text,
  `Status` text,
  `mrvCash` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `Password`, `Email`, `Name`, `Lastname`, `Image`, `pC`, `Token`, `Status`, `mrvCash`) VALUES
(1, 'mrv-demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@mrv-hosting.com', 'MRV Demo', 'Account', 'assets/img/i/logo/logo.png', '54819', 'sad1safg1sac123v1', '1', '0'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box_list`
--
ALTER TABLE `box_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fdl_servers`
--
ALTER TABLE `fdl_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mods`
--
ALTER TABLE `mods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_answ`
--
ALTER TABLE `ticket_answ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `box_list`
--
ALTER TABLE `box_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fdl_servers`
--
ALTER TABLE `fdl_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mods`
--
ALTER TABLE `mods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ticket_answ`
--
ALTER TABLE `ticket_answ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
