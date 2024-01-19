-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 08:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `unitimages`
--

CREATE TABLE `unitimages` (
  `id` int(11) NOT NULL,
  `unitId` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unitimages`
--

INSERT INTO `unitimages` (`id`, `unitId`, `image`) VALUES
(1, 1, 'https://images.bayut.jo/thumbnails/181266-800x600.webp'),
(4, 1, 'https://images.bayut.jo/thumbnails/181269-800x600.webp'),
(5, 1, 'https://images.bayut.jo/thumbnails/181273-800x600.webp');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unitType` varchar(255) DEFAULT NULL,
  `unitNumber` int(11) DEFAULT NULL,
  `annualPrice` decimal(10,2) DEFAULT NULL,
  `numberOfRooms` int(11) DEFAULT NULL,
  `numberOfHalls` int(11) DEFAULT NULL,
  `numberOfBathrooms` int(11) DEFAULT NULL,
  `numberOfParkingSpaces` int(11) DEFAULT NULL,
  `locationDescription` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `leaseTerms` text DEFAULT NULL,
  `designingDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unitType`, `unitNumber`, `annualPrice`, `numberOfRooms`, `numberOfHalls`, `numberOfBathrooms`, `numberOfParkingSpaces`, `locationDescription`, `latitude`, `longitude`, `leaseTerms`, `designingDescription`) VALUES
(1, 'شقة', 63883, '20000.00', 3, 4, 2, 1, 'يقع هذا المنزل الفاخر في حي هادئ ومأهول بالأشجار، على مقربة من المدارس والمتنزهات ومراكز التسوق.\r\n', '13.781991', '40.919011', 'الإيجار والتأمين:\r\nالمبلغ السنوي للإيجار: 20000 ريال سعودي.\r\nتأمين مسترد قابل للتجديد بقيمة [10000] ريال سعودي.\r\nالمدة الزمنية:\r\nبداية العقد: 1/1/2024\r\nنهاية العقد: 1/1/2025\r\nالمسؤوليات المالية:\r\nالمستأجر مسؤول عن سداد جميع الفواتير المتعلقة بالمرافق (كهرباء، ماء، غاز).\r\nالاستخدام السكني:\r\nالشقة مخصصة للاستخدام السكني فقط ويجب استخدامها بطريقة قانونية وآمنة.\r\nالصيانة والإصلاحات:\r\nالشركة مسؤولة عن الصيانة الأساسية، والمستأجر مسؤول عن الصيانة اليومية وأية إصلاحات تكون ناتجة عن سوء استخدامه.\r\n\r\nشروط الإلغاء:\r\nيمكن لأي طرف إلغاء العقد بإشعار مسبق بـ شهر، ويتم تحديد غرامة5000 ر.س في حالة إلغاء المستأجر قبل انتهاء فترة العقد.\r\n\r\nالصفة السكنية:\r\nيسمح بالسكن لعدد [عدد الأشخاص المسموح بهم] أشخاص فقط.\r\nتأكيد بالكتاب:\r\nيجب على الطرفين تأكيد العقد بتوقيعهما بصفة رسمية.\r\n', 'تصميم الشقة:\r\n شقة بتصميم فريد يجمع بين الطابع الكلاسيكي واللمسات الحديثة. المساحات الكبيرة والنوافذ الكبيرة تخلق أجواءً مشرقة وودية. المطبخ مجهز بأحدث التقنيات والأجهزة، مع مساحة لتناول الطعام الصغير. تجهيزات فاخرة: الأرضيات الرخامية والتشطيبات الفاخرة تضفي لمسة من الفخامة. نظام تدفئة وتبريد مركزي.'),
(2, 'بيت', 8975, '30000.00', 8, 4, 3, 2, 'يقع هذا المنزل الفاخر في حي هادئ ومأهول بالأشجار، على مقربة من المدارس والمتنزهات ومراكز التسوق.\r\n', '20.097908', '40.919011', 'الإيجار والتأمين:\r\nالمبلغ السنوي للإيجار: 20000 ريال سعودي.\r\nتأمين مسترد قابل للتجديد بقيمة [10000] ريال سعودي.\r\nالمدة الزمنية:\r\nبداية العقد: 1/1/2024\r\nنهاية العقد: 1/1/2025\r\nالمسؤوليات المالية:\r\nالمستأجر مسؤول عن سداد جميع الفواتير المتعلقة بالمرافق (كهرباء، ماء، غاز).\r\nالاستخدام السكني:\r\nالشقة مخصصة للاستخدام السكني فقط ويجب استخدامها بطريقة قانونية وآمنة.\r\nالصيانة والإصلاحات:\r\nالشركة مسؤولة عن الصيانة الأساسية، والمستأجر مسؤول عن الصيانة اليومية وأية إصلاحات تكون ناتجة عن سوء استخدامه.\r\n\r\nشروط الإلغاء:\r\nيمكن لأي طرف إلغاء العقد بإشعار مسبق بـ شهر، ويتم تحديد غرامة5000 ر.س في حالة إلغاء المستأجر قبل انتهاء فترة العقد.\r\n\r\nالصفة السكنية:\r\nيسمح بالسكن لعدد [عدد الأشخاص المسموح بهم] أشخاص فقط.\r\nتأكيد بالكتاب:\r\nيجب على الطرفين تأكيد العقد بتوقيعهما بصفة رسمية.\r\n', 'تصميم الشقة:\r\nشقة بتصميم فريد يجمع بين الطابع الكلاسيكي واللمسات الحديثة.\r\nالمساحات الكبيرة والنوافذ الكبيرة تخلق أجواءً مشرقة وودية.\r\nالمطبخ مجهز بأحدث التقنيات والأجهزة، مع مساحة لتناول الطعام الصغير.\r\nتجهيزات فاخرة:\r\nالأرضيات الرخامية والتشطيبات الفاخرة تضفي لمسة من الفخامة.\r\nنظام تدفئة وتبريد مركزي.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `unitimages`
--
ALTER TABLE `unitimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unitId` (`unitId`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `unitimages`
--
ALTER TABLE `unitimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `unitimages`
--
ALTER TABLE `unitimages`
  ADD CONSTRAINT `unitimages_ibfk_1` FOREIGN KEY (`unitId`) REFERENCES `units` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
