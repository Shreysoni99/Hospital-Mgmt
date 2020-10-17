-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2020 at 09:15 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

--
-- ssip
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ssip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient`
--

CREATE TABLE IF NOT EXISTS `admitpatient` (
  `patientid` int(10) NOT NULL,
  `hospitalid` int(11) NOT NULL,
  `doctorid` int(11) NOT NULL,
  `dateofadmit` date NOT NULL,
  `roomno` varchar(20) NOT NULL,
  `wardno` int(10) NOT NULL,
  `hdurequire` text NOT NULL,
  `casualty` text NOT NULL,
  `Fees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admitpatient`
--

INSERT INTO `admitpatient` (`patientid`, `hospitalid`, `doctorid`, `dateofadmit`, `roomno`, `wardno`, `hdurequire`, `casualty`, `Fees`) VALUES
(123, 456, 789, '2020-02-01', '15', 243, 'Male', 'jhgf ', 500);

-- --------------------------------------------------------

--
-- Table structure for table `allergy`
--

CREATE TABLE IF NOT EXISTS `allergy` (
  `pno` int(10) NOT NULL,
  `AllergyName` text NOT NULL,
  `Symptoms` text NOT NULL,
  `Medication` varchar(20) NOT NULL,
  `Frequency` float NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allergy`
--

INSERT INTO `allergy` (`pno`, `AllergyName`, `Symptoms`, `Medication`, `Frequency`, `message`) VALUES
(23, 'df', 'sdf', 'dsfs', 0, 'wdefr');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Samsung'),
(2, 'Sony'),
(3, 'Motorola'),
(4, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

CREATE TABLE IF NOT EXISTS `chart` (
  `student` varchar(20) NOT NULL,
  `marks` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart`
--

INSERT INTO `chart` (`student`, `marks`) VALUES
('krunal', 40),
('sp', 30),
('parth', 50),
('shrey', 45);

-- --------------------------------------------------------

--
-- Table structure for table `chartdata`
--

CREATE TABLE IF NOT EXISTS `chartdata` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `disease` varchar(11) NOT NULL,
  `year1` int(11) NOT NULL,
  `city` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `chartdata`
--

INSERT INTO `chartdata` (`id`, `disease`, `year1`, `city`) VALUES
(1, 'cancer', 2020, 'anand'),
(2, 'liver', 2019, 'bhavnagar'),
(3, 'cancer', 2019, 'anand'),
(4, 'cancer', 2018, 'anand'),
(5, 'cancer', 2019, 'anand'),
(6, 'liver', 2018, 'anand'),
(7, 'cancer', 2020, 'anand'),
(8, 'cancer', 2020, 'bhavnagar'),
(9, 'cancer', 2020, 'anand'),
(10, 'liver', 2020, 'anand'),
(11, 'cancer', 2020, 'anand'),
(12, 'cancer', 2020, 'anand');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `FullName` text NOT NULL,
  `Email` varchar(15) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`FullName`, `Email`, `Phone`, `Message`) VALUES
('', 'parthsabhadiya5', 2147483647, 'wedrfg'),
('', 'parthsabhadiya5', 2147483647, 'wedrfg'),
('', 'parthsabhadiya5', 2147483647, 'wedrfg'),
('', 'parthsabhadiya5', 2147483647, 'wedrfg'),
('12', 'hs@gmail.com', 23, 'we');

-- --------------------------------------------------------

--
-- Table structure for table `doctorreg`
--

CREATE TABLE IF NOT EXISTS `doctorreg` (
  `doctorid` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` text NOT NULL,
  `birthdate` date NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `expertise` text NOT NULL,
  `email` varchar(11) NOT NULL,
  `licenseno` int(20) NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `certificate` longblob NOT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorreg`
--

INSERT INTO `doctorreg` (`doctorid`, `firstname`, `lastname`, `password`, `address`, `gender`, `birthdate`, `phoneno`, `expertise`, `email`, `licenseno`, `city`, `country`, `certificate`) VALUES
(45, 'CHIRAG', 'DIYORA', '9873', 'ADIT BOYS HOSTEL', 'FEMALE', '2020-02-29', 9662613635, 'allergy ', 'chiragsabha', 2589, 'anand', 'india', 0x7374796c652e637373);

-- --------------------------------------------------------

--
-- Table structure for table `hospitalreg`
--

CREATE TABLE IF NOT EXISTS `hospitalreg` (
  `HospitalId` bigint(12) NOT NULL,
  `HospitalName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `CityName` varchar(10) NOT NULL,
  `StateName` varchar(10) NOT NULL,
  `CountryName` varchar(10) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `HospitalCategory` varchar(12) NOT NULL,
  `Website` varchar(20) NOT NULL,
  `LicenseNo` varchar(20) NOT NULL,
  `LicensePdf` longblob NOT NULL,
  PRIMARY KEY (`HospitalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalreg`
--


-- --------------------------------------------------------

--
-- Table structure for table `medicalhistory`
--

CREATE TABLE IF NOT EXISTS `medicalhistory` (
  `BloodPressure` int(10) NOT NULL,
  `BloodSuger` int(10) NOT NULL,
  `BodyTemprature` int(10) NOT NULL,
  `Weight` int(10) NOT NULL,
  `Prescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalhistory`
--

INSERT INTO `medicalhistory` (`BloodPressure`, `BloodSuger`, `BodyTemprature`, `Weight`, `Prescription`) VALUES
(0, 0, 0, 0, ''),
(0, 0, 0, 10, ''),
(0, 0, 0, 0, ''),
(0, 0, 0, 8, ''),
(2, 6, 7, 7, 'vhj'),
(0, 0, 0, 43, ''),
(0, 0, 0, 43, ''),
(56, 89, 123, 98, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `patientreg`
--

CREATE TABLE IF NOT EXISTS `patientreg` (
  `patientid` bigint(12) NOT NULL,
  `pfname` varchar(12) NOT NULL,
  `plname` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `email` text NOT NULL,
  `bloodgroup` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `emergency_name` varchar(15) NOT NULL,
  `emergency_no` bigint(15) NOT NULL,
  `allergy` varchar(15) NOT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreg`
--

INSERT INTO `patientreg` (`patientid`, `pfname`, `plname`, `password`, `address`, `country`, `city`, `phone`, `email`, `bloodgroup`, `gender`, `birthdate`, `emergency_name`, `emergency_no`, `allergy`) VALUES
(12345678, 'alsd', 'lksdlad', 'krunal', 'lkxkclasdsknla sdalsd lasdm als ', 'anand', 'Anand', 1235647899, 'kmali6617@gmail.com', 'b_1', 'on', '2020-02-08', 'kbdkajbds', 79879879, 'no'),
(78979789, 'krunal', 'barad', 'l;ajdla', ' babids ajsd aisd aisd ai', 'anand', 'Anand', 1235647899, 'kmal22@gmail.com', 'b_1', 'on', '2020-02-06', '8200108262', 0, 'no'),
(9377730661, 'krunql', 'babab', 'krunal', 'skdnfsdfk sdfk sddfiis dfkksd f ', 'india', 'anand', 937773662, 'abc111@gmail.com', 'b_1', 'on', '2020-03-05', 'kbdkajbds', 79879879, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyreg`
--

CREATE TABLE IF NOT EXISTS `pharmacyreg` (
  `ShopOwner` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `ShopName` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `ContactNo` int(10) NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `City` text NOT NULL,
  `CertificateLicense` varchar(20) NOT NULL,
  `ShopRegistrationNumber` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacyreg`
--

INSERT INTO `pharmacyreg` (`ShopOwner`, `Password`, `ShopName`, `Address`, `ContactNo`, `State`, `Country`, `City`, `CertificateLicense`, `ShopRegistrationNumber`) VALUES
('dsg', '55', 'swd', 'efrg', 234, 'fd', 'dfx', 'sdf ', 'aes', 123);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) NOT NULL,
  `brand_id` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `brand_id`) VALUES
(1, 'samsung glax A9', 1),
(2, 'samsung glax s7', 1),
(3, 'samsung glax sg edgo', 1),
(4, 'xperia M5 dual', 2),
(5, 'mi note 7', 1),
(6, 'poco f1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `Cs` text NOT NULL,
  `Cn` text NOT NULL,
  `degree` text NOT NULL,
  `Seat` int(20) NOT NULL,
  `Contact` int(20) NOT NULL,
  `Passeddate` date NOT NULL,
  `Fullname` text NOT NULL,
  `Bithdate` date NOT NULL,
  `address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Adhar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`Cs`, `Cn`, `degree`, `Seat`, `Contact`, `Passeddate`, `Fullname`, `Bithdate`, `address`, `Email`, `Adhar`) VALUES
('sd', 'sadf', 'on', 123, 2020, '2020-02-07', 'sdvf', '2020-02-07', 'dfv', 'dsfs@gmail.com', 0);
