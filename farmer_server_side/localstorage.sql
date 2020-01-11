-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 06:18 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localstorage`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `dbId` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `part1` text COLLATE utf8_unicode_ci NOT NULL,
  `part2` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `categories` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`dbId`, `title`, `part1`, `part2`, `image`, `categories`) VALUES
(1, 'လေချူသီးပင် စိုက်ပျိုးနည်း', 'အပင်ပြုစုပုံ ရေလောင်း ပေါင်းရှင်း မြေဩဇာ\r\nကျွေးချင်း သဘာဝမြေဩဇာ မြေဆွေးကို မိုးဦးနှင့်\r\nမိုးနှောင်းတွင် ၂ ကြိမ် ကြွေးပေးရမည်။\r\nဓာတ်မြေဩဇာကို ၁ နှစ်လျှင် ၃ ကြိမ် တစ်ကြိမ်\r\nတစ်ပင်လျှင် နို့ဆီဗူး ၁-၅ အထိ ကြွေးပေးရန်\r\nလိုအပ်သည်။', '၄ နှစ်သားအရွယ်မှာ အသီးကောင်းကောင်းစတင်သီးပြီဖြစ်သည်။\r\nတပင်ကို ၃၀-၅၀ ပိသာအထိ အသီးရရှိနိူင်မည်\r\nဖြစ်ပါသည် ။\r\nအသီးသီးချိန်တွင် ဓာတ်မြေဩဇာကို ၁ နှစ် လေးကြိမ်\r\nခွဲကျွေးရန် လိုသည်။ တစ်ပင် ၅-၆ ဗူးအထိ ကျွေးရမည်\r\nသဘာဝမြေဩဇာကို တစ်နှစ် ၂ ကြိမ်ကျွေးရမည်။\r\nလုံလောက်စွာ ကျွေးပေးနိုင်ပါက ပို၍\r\nကောင်းမွန်ပါသည်။\r\nပန်းစပွင့်ချိန်မှ အသီး ဆွတ်ခူးချိန်အထိ ၄-၅လ ကြာပါသည်။ အသီးခူးပြီးပါက ကိုင်းပြင် \r\nကိုင်းဖြတ်ပြုလုပ်ပေးရမည်။\r\nအပင်မြင့် ၁၀-၁၂ ပေ အထိသာ ထားရမည်\r\nလေချူပင်မှာ ရာသီလွဲှ သီးနှံအဖြစ် ပြုလုပ်ရန်လွယ်ကူပါသည်။', '1.JPG', 'knowledge'),
(2, 'test', 'adsa', 'jojlll', '1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `dbId` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `part1` text COLLATE utf8_unicode_ci NOT NULL,
  `part2` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flower`
--

INSERT INTO `flower` (`dbId`, `title`, `part1`, `part2`, `image`) VALUES
(1, 'flower', 'flower', 'flower', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `insects`
--

CREATE TABLE `insects` (
  `dbId` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `part1` text COLLATE utf8_unicode_ci NOT NULL,
  `part2` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `insects`
--

INSERT INTO `insects` (`dbId`, `title`, `part1`, `part2`, `image`) VALUES
(1, 'insects', 'insects', 'insects', '1.jpg'),
(2, 'test1', 'test1', 'test1', '1578761169tzsh.png');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `dbId` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `part1` text COLLATE utf8_unicode_ci NOT NULL,
  `part2` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`dbId`, `title`, `part1`, `part2`, `image`) VALUES
(1, 'test55', 'plant', 'plant5', '1.jpg'),
(2, 'test1', 'test1', 'test1', '1578761140tzsh.png');

-- --------------------------------------------------------

--
-- Table structure for table `serverdata`
--

CREATE TABLE `serverdata` (
  `dbId` int(11) NOT NULL,
  `data_title` text COLLATE utf8_unicode_ci NOT NULL,
  `data_main` text COLLATE utf8_unicode_ci NOT NULL,
  `data_image` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `serverdata`
--

INSERT INTO `serverdata` (`dbId`, `data_title`, `data_main`, `data_image`) VALUES
(1, 'test1', 'my name is arkarmyo.', NULL),
(2, 'test2', 'i live in myitkyina.', NULL),
(3, 'test3', 'hello, every body...', NULL),
(4, 'test4', 'ok,,,finally it work.ha ha', NULL),
(5, 'test5', 'error found in localstorage.', NULL),
(6, 'test6', 'how are you?', NULL),
(7, 'test7', 'အာကာမျိုး', NULL),
(8, 'test8', 'happy New Year!', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`dbId`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`dbId`);

--
-- Indexes for table `insects`
--
ALTER TABLE `insects`
  ADD PRIMARY KEY (`dbId`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`dbId`);

--
-- Indexes for table `serverdata`
--
ALTER TABLE `serverdata`
  ADD PRIMARY KEY (`dbId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `dbId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `dbId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `insects`
--
ALTER TABLE `insects`
  MODIFY `dbId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `dbId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `serverdata`
--
ALTER TABLE `serverdata`
  MODIFY `dbId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
