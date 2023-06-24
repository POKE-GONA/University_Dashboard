-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 11:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewsddb`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_anonymousideas`
-- (See below for the actual view)
--
CREATE TABLE `qry_anonymousideas` (
`ideaid` varchar(20)
,`idea_detail` varchar(255)
,`CategoryName` varchar(50)
,`staffid` varchar(20)
,`Staff_Name` varchar(50)
,`Department` varchar(50)
,`idea_date` varchar(40)
,`file` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_idea`
-- (See below for the actual view)
--
CREATE TABLE `qry_idea` (
`ideaid` varchar(20)
,`idea_detail` varchar(255)
,`staffid` varchar(20)
,`categoryid` varchar(20)
,`idea_date` varchar(40)
,`file` varchar(100)
,`filetype` varchar(50)
,`visibility` text
,`year` varchar(50)
,`name` varchar(50)
,`finalenddate` varchar(50)
,`departmentname` varchar(50)
,`staffname` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_ideacomment`
-- (See below for the actual view)
--
CREATE TABLE `qry_ideacomment` (
`ideaid` varchar(20)
,`idea_detail` varchar(255)
,`staffid` varchar(20)
,`categoryid` varchar(20)
,`idea_date` varchar(40)
,`file` varchar(100)
,`filetype` varchar(50)
,`visibility` text
,`year` varchar(50)
,`name` varchar(50)
,`finalenddate` varchar(50)
,`departmentname` varchar(50)
,`staffname` varchar(50)
,`commentdate` varchar(50)
,`comment` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_ideawithoutcomment`
-- (See below for the actual view)
--
CREATE TABLE `qry_ideawithoutcomment` (
`ideaid` varchar(20)
,`idea_detail` varchar(255)
,`staffid` varchar(20)
,`categoryid` varchar(20)
,`idea_date` varchar(40)
,`file` varchar(100)
,`filetype` varchar(50)
,`visibility` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_numberofcontributor`
-- (See below for the actual view)
--
CREATE TABLE `qry_numberofcontributor` (
`name` varchar(50)
,`contributorid` varchar(20)
,`contributorname` varchar(50)
,`noofcontribution` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_numberofideas`
-- (See below for the actual view)
--
CREATE TABLE `qry_numberofideas` (
`name` varchar(50)
,`noofidea` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_percentageofideas`
-- (See below for the actual view)
--
CREATE TABLE `qry_percentageofideas` (
`name` varchar(50)
,`percent` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `tblacademicyear`
--

CREATE TABLE `tblacademicyear` (
  `academicyearid` varchar(20) NOT NULL,
  `year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblacademicyear`
--

INSERT INTO `tblacademicyear` (`academicyearid`, `year`) VALUES
('Acdyr-00001', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminid`, `name`, `email`, `username`, `password`) VALUES
('Adm-00001', 'admin', 'admin@email.com', 'admin1', 'admin1'),
('Adm-00002', 'admin2', 'admin2@email.com', 'adm2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `categoryid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `academicyearid` varchar(20) DEFAULT NULL,
  `startdate` varchar(50) DEFAULT NULL,
  `enddate` varchar(50) DEFAULT NULL,
  `finalenddate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`categoryid`, `name`, `academicyearid`, `startdate`, `enddate`, `finalenddate`) VALUES
('Ctg-00001', 'Online-Class', 'Acdyr-00001', '2022-02-11', '2022-02-15', '2022-02-20'),
('Ctg-00002', 'Canteen', 'Acdyr-00001', '2022-02-19', '2022-02-26', '2022-02-28'),
('Ctg-00003', 'UAG-Coursework', 'Acdyr-00001', '2022-03-05', '2022-03-18', '2022-03-20'),
('Ctg-00004', 'TEXT', 'Acdyr-00001', '2022-03-20', '2022-03-25', '2022-03-26'),
('Ctg-00005', 'Project', 'Acdyr-00001', '2022-03-26', '2022-03-26', '2022-03-26'),
('Ctg-00006', 'Agile', 'Acdyr-00001', '2022-03-26', '2022-03-27', '2022-03-27'),
('Ctg-00007', 'RM', 'Acdyr-00001', '2022-03-26', '2022-03-24', '2022-03-25'),
('Ctg-00008', 'EWSD', 'Acdyr-00001', '2022-03-26', '2022-03-26', '2022-03-26'),
('Ctg-00009', 'Test', 'Acdyr-00001', '2022-03-26', '2022-03-26', '2022-03-26'),
('Ctg-00010', 'KMD Institutue', 'Acdyr-00001', '2022-03-29', '2022-03-30', '2022-03-30'),
('Ctg-00011', 'Math', 'Acdyr-00001', '2022-04-02', '2022-04-03', '2022-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `commentid` varchar(20) NOT NULL,
  `ideaid` varchar(20) NOT NULL,
  `commenterid` varchar(20) NOT NULL,
  `commentdate` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`commentid`, `ideaid`, `commenterid`, `commentdate`, `comment`) VALUES
('CId-00001', 'Idea-00001', 'St-00002', '2022-02-23 17:31:25', 'yes, really good food with fast service'),
('CId-00002', 'Idea-00001', 'St-00001', '2022-02-23 14:11:45', 'Definitely, so delicious!'),
('CId-00003', 'Idea-00002', 'St-00002', '2022-02-23 16:31:55', 'Good teacher'),
('CId-00004', 'Idea-00002', 'St-00002', '2022-02-23 18:51:24', 'Teacher is very kind'),
('CId-00005', 'Idea-00003', 'St-00001', '2022-02-23 21:41:05', 'I think it is a very interesting lecture.'),
('CId-00006', 'Idea-00002', 'St-00003', '2022-03-04 14:41:05', 'love the idea!'),
('CId-00007', 'Idea-00005', 'St-00003', '2022-03-07 12:15:38', 'yes delicious'),
('CId-00008', 'Idea-00004', 'St-00002', '2022-03-08 12:37:31', 'yes it is also clean'),
('CId-00009', 'Idea-00010', 'St-00001', '2022-03-15 11:19:36', 'We don\'t understand. Please explain.'),
('CId-00010', 'Idea-00008', 'St-00002', '2022-03-14 17:19:36', 'Yes. All teachers are kind-hearted.'),
('CId-00011', 'Idea-00009', 'St-00003', '2022-03-14 17:20:36', 'You are right.'),
('CId-00012', 'Idea-00006', 'St-00003', '2022-03-14 10:34:14', 'Yes. They are soft-hearted.'),
('CId-00013', 'Idea-00011', 'St-00003', '2022-03-15 12:37:22', 'Not for me.'),
('CId-00014', 'Idea-00010', 'St-00003', '2022-03-15 12:44:35', 'testing'),
('CId-00015', 'Idea-00011', 'St-00004', '2022-03-16 10:21:26', 'it is confusing as well'),
('CId-00016', 'Idea-00013', 'St-00001', '2022-03-20 06:18:10', 'good'),
('CId-00017', 'Idea-00013', 'St-00001', '2022-03-22 15:00:14', 'testing 123'),
('CId-00018', 'Idea-00014', 'St-00001', '2022-03-22 15:01:18', 'bad'),
('CId-00019', 'Idea-00014', 'St-00010', '2022-03-22 15:10:26', 'good'),
('CId-00020', 'Idea-00015', 'St-00001', '2022-03-23 12:51:51', 'testing '),
('CId-00021', 'Idea-00017', 'St-00008', '2022-03-25 11:00:26', 'testing'),
('CId-00022', 'Idea-00043', 'St-00008', '2022-03-27 11:56:23', 'Yes, it is.'),
('CId-00023', 'Idea-00045', 'St-00008', '2022-03-27 16:55:50', 'Test!'),
('CId-00024', 'Idea-00046', 'St-00001', '2022-03-28 20:06:29', 'Test :3'),
('CId-00025', 'Idea-00049', 'St-00009', '2022-03-29 12:19:30', 'Hello!'),
('CId-00026', 'Idea-00050', 'St-00009', '2022-03-29 16:52:14', 'yes, it is a good test.'),
('CId-00027', 'Idea-00051', 'St-00010', '2022-03-29 17:15:01', 'Yes!!!'),
('CId-00028', 'Idea-00054', 'St-00001', '2022-04-02 10:58:08', 'indeed.');

-- --------------------------------------------------------

--
-- Table structure for table `tblcoordinator`
--

CREATE TABLE `tblcoordinator` (
  `coordinatorid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcoordinator`
--

INSERT INTO `tblcoordinator` (`coordinatorid`, `name`, `departmentid`, `email`, `username`, `password`) VALUES
('QAC-00001', 'moemoe', 'Dpm-00004', 'moe@email.com', 'moewin', 'moe'),
('QAC-00002', 'winwin', 'Dpm-00001', 'win@email.com', 'winhtet', 'win'),
('QAC-00003', 'Pyae Sone123', 'Dpm-00003', 'pyae@email.com', 'pyae12', 'pyae'),
('QAC-00004', 'A Moon', 'Dpm-00002', 'moon@gmail.com', 'moon', 'moon');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `departmentid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`departmentid`, `name`) VALUES
('Dpm-00001', 'HR'),
('Dpm-00002', 'Reception'),
('Dpm-00003', 'Student Services'),
('Dpm-00004', 'Lecturing');

-- --------------------------------------------------------

--
-- Table structure for table `tblidea`
--

CREATE TABLE `tblidea` (
  `ideaid` varchar(20) NOT NULL,
  `idea_detail` varchar(255) DEFAULT NULL,
  `staffid` varchar(20) DEFAULT NULL,
  `categoryid` varchar(20) DEFAULT NULL,
  `idea_date` varchar(40) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `visibility` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblidea`
--

INSERT INTO `tblidea` (`ideaid`, `idea_detail`, `staffid`, `categoryid`, `idea_date`, `file`, `filetype`, `visibility`) VALUES
('Idea-00001', 'food is great', 'St-00001', 'Ctg-00002', '2022-02-20 07:21:55', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00002', 'online education is more suitable', 'St-00001', 'Ctg-00001', '2022-02-21 00:39:12', 'ideas/_compact.jpg', 'jpg', 'yes'),
('Idea-00003', 'good lecture', 'St-00002', 'Ctg-00001', '2022-02-22 00:40:46', 'ideas/_fulls.jpg', 'jpg', 'no'),
('Idea-00004', 'canteen is great', 'St-00002', 'Ctg-00002', '2022-02-23 14:21:55', 'ideas/_1stidea.txt', 'txt', 'no'),
('Idea-00005', 'clean food', 'St-00001', 'Ctg-00002', '2022-02-24 11:29:01', 'ideas/fs.jpg', 'jpg', 'no'),
('Idea-00006', 'good teacher', 'St-00001', 'Ctg-00001', '2022-02-24 12:22:55', 'ideas/ppl4.jpg', 'jpg', 'no'),
('Idea-00007', 'canteen is clean', 'St-00001', 'Ctg-00002', '2022-02-26 14:19:41', 'ideas/compact.jpg', 'jpg', 'no'),
('Idea-00008', 'kind teachers', 'St-00001', 'Ctg-00001', '2022-02-28 11:16:37', 'ideas/Capture.PNG', 'png', 'no'),
('Idea-00009', 'Online-class is interesting.', 'St-00006', 'Ctg-00001', '2022-02-28 11:20:33', 'ideas/inya1.jpg', 'jpg', 'yes'),
('Idea-00010', 'Coursework needs to be explained and supervised.', 'St-00009', 'Ctg-00003', '2022-03-02 12:57:06', 'ideas/Get_Started_With_Smallpdf.pdf', 'pdf', 'yes'),
('Idea-00011', 'coursework is difficult', 'St-00001', 'Ctg-00003', '2022-03-15 11:51:32', 'ideas/download (1).jfif', 'jiff', 'yes'),
('Idea-00012', 'This needs a piece of well-explained advice.', 'St-00004', 'Ctg-00003', '2022-03-16 10:23:36', 'ideas/download.jfif', 'jiff', 'yes'),
('Idea-00013', 'UOG-Course work', 'St-00009', 'Ctg-00004', '2022-03-20 06:04:38', 'ideas/EW_COMP-1640-CW_Term1_2122.doc', 'doc', 'yes'),
('Idea-00014', 'idea 22/3', 'St-00001', 'Ctg-00004', '2022-03-22 15:01:05', 'ideas/download (1).jfif', 'jiff', 'no'),
('Idea-00015', 'idea test', 'St-00010', 'Ctg-00004', '2022-03-23 08:42:11', 'ideas/download.jfif', 'jfif', 'yes'),
('Idea-00016', 'aung min writing', 'St-00008', 'Ctg-00004', '2022-03-24 15:45:23', 'ideas/maz.jpg', 'jpg', 'no'),
('Idea-00017', 'Nice to meet you', 'St-00004', 'Ctg-00004', '2022-03-24 19:14:07', 'ideas/paris.jpg', 'jpg', 'yes'),
('Idea-00018', 'It is very difficult.', 'St-00008', 'Ctg-00004', '2022-03-27 09:27:42', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00019', 'I like this subject', 'St-00006', 'Ctg-00005', '2022-03-27 10:02:16', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00020', 'It is a good subject', 'St-00006', 'Ctg-00005', '2022-03-27 10:02:28', 'ideas/_download (2).jfif', 'jfif', 'yes'),
('Idea-00021', 'It is a hard subject.', 'St-00006', 'Ctg-00005', '2022-03-27 10:03:24', 'ideas/_ppl4.jpg', 'jpg', 'yes'),
('Idea-00022', 'It is very difficult', 'St-00009', 'Ctg-00005', '2022-03-27 10:03:52', 'ideas/_download (1).jpg', 'jpg', 'yes'),
('Idea-00023', 'It is an interesting subj.', 'St-00009', 'Ctg-00005', '2022-03-27 10:04:18', 'ideas/_icon-2.jpg', 'jpg', 'yes'),
('Idea-00024', 'I like this course.', 'St-00009', 'Ctg-00005', '2022-03-27 10:04:32', 'ideas/a.jpg', 'jpg', 'yes'),
('Idea-00025', 'I love this and it is an interesting subject.', 'St-00009', 'Ctg-00006', '2022-03-27 10:16:53', 'ideas/_download (2).jfif', 'jfif', 'yes'),
('Idea-00026', 'It is not very difficult', 'St-00009', 'Ctg-00006', '2022-03-27 10:17:06', 'ideas/compact.jpg', 'jpg', 'yes'),
('Idea-00027', 'it is not that hard.', 'St-00009', 'Ctg-00006', '2022-03-27 10:17:29', 'ideas/ff.jpg', 'jpg', 'yes'),
('Idea-00028', 'Good', 'St-00009', 'Ctg-00006', '2022-03-27 10:17:41', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00029', 'I want to learn this subj very much', 'St-00009', 'Ctg-00006', '2022-03-27 10:18:02', 'ideas/paris.jpg', 'jpg', 'yes'),
('Idea-00030', 'It is very difficult.', 'St-00006', 'Ctg-00006', '2022-03-27 10:19:14', 'ideas/_download (1).jpg', 'jpg', 'yes'),
('Idea-00031', 'Hard to understand.', 'St-00006', 'Ctg-00006', '2022-03-27 10:19:24', 'ideas/_download (1).jpg', 'jpg', 'yes'),
('Idea-00032', 'Complex and Easy!', 'St-00006', 'Ctg-00006', '2022-03-27 10:19:40', 'ideas/_ppl4.jpg', 'jpg', 'yes'),
('Idea-00033', 'It is difficult but understandable.', 'St-00006', 'Ctg-00006', '2022-03-27 10:20:17', 'ideas/_download (1).jpg', 'jpg', 'yes'),
('Idea-00034', 'It is a good subject.', 'St-00008', 'Ctg-00007', '2022-03-27 10:22:53', 'ideas/compact.jpg', 'jpg', 'yes'),
('Idea-00035', 'I like this subject very much.', 'St-00008', 'Ctg-00007', '2022-03-27 10:23:10', 'ideas/_compact.jpg', 'jpg', 'yes'),
('Idea-00036', 'It is easy and simple.', 'St-00008', 'Ctg-00007', '2022-03-27 10:23:29', 'ideas/_icon-3.jpg', 'jpg', 'yes'),
('Idea-00037', 'I love this subject very much.', 'St-00008', 'Ctg-00007', '2022-03-27 10:23:50', 'ideas/_ppl4.jpg', 'jpg', 'yes'),
('Idea-00038', 'It is not difficult.', 'St-00008', 'Ctg-00007', '2022-03-27 10:24:02', 'ideas/icon-1.jpg', 'jpg', 'yes'),
('Idea-00039', 'Good', 'St-00005', 'Ctg-00007', '2022-03-27 10:37:43', 'ideas/_icon-3.jpg', 'jpg', 'yes'),
('Idea-00040', 'Like it', 'St-00005', 'Ctg-00007', '2022-03-27 10:37:54', 'ideas/Capture.PNG', 'PNG', 'yes'),
('Idea-00041', 'It is not hard or easy.', 'St-00005', 'Ctg-00007', '2022-03-27 10:38:09', 'ideas/a.jpg', 'jpg', 'yes'),
('Idea-00042', 'a', 'St-00009', 'Ctg-00007', '2022-03-27 10:47:31', 'ideas/a.jpg', 'jpg', 'yes'),
('Idea-00043', 'It is an interesting subject.', 'St-00009', 'Ctg-00008', '2022-03-27 11:42:47', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00044', 'I like this subject.', 'St-00009', 'Ctg-00008', '2022-03-27 11:49:58', 'ideas/_1stidea.txt', 'txt', 'no'),
('Idea-00045', 'Test', 'St-00009', 'Ctg-00009', '2022-03-27 16:55:11', 'ideas/_download (1).jfif', 'jfif', 'yes'),
('Idea-00046', 'Just Testing!', 'St-00001', 'Ctg-00009', '2022-03-28 19:57:21', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00047', 'Good Test!', 'St-00001', 'Ctg-00009', '2022-03-29 05:52:08', 'ideas/1.png', 'png', 'yes'),
('Idea-00048', 'I think it is a good test!', 'St-00001', 'Ctg-00009', '2022-03-29 09:32:38', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00049', 'Hi', 'St-00009', 'Ctg-00009', '2022-03-29 12:19:23', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00050', 'A good test!', 'St-00010', 'Ctg-00009', '2022-03-29 16:50:04', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00051', 'It is a good school!', 'St-00009', 'Ctg-00010', '2022-03-29 17:13:06', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00052', 'It is good!', 'St-00009', 'Ctg-00009', '2022-03-29 17:13:19', 'ideas/_1stidea.txt', 'txt', 'no'),
('Idea-00053', 'It is a school!', 'St-00001', 'Ctg-00010', '2022-03-29 17:24:15', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00054', 'It is very hard for me!', 'St-00001', 'Ctg-00011', '2022-04-02 10:57:19', 'ideas/_1stidea.txt', 'txt', 'yes'),
('Idea-00055', 'It is easy!', 'St-00001', 'Ctg-00011', '2022-04-02 10:58:31', 'ideas/_1stidea.txt', 'txt', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tblmanager`
--

CREATE TABLE `tblmanager` (
  `managerid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmanager`
--

INSERT INTO `tblmanager` (`managerid`, `name`, `email`, `username`, `password`) VALUES
('Mgr-00002', 'pai', 'pai@email.com', 'paing9', 'paing'),
('Mgr-00003', 'a', 'aung@email.com', 'mayyyyyyy', 'mayyyyyy');

-- --------------------------------------------------------

--
-- Table structure for table `tblrating`
--

CREATE TABLE `tblrating` (
  `ideaid` varchar(11) NOT NULL,
  `responderid` varchar(11) NOT NULL,
  `rating` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrating`
--

INSERT INTO `tblrating` (`ideaid`, `responderid`, `rating`) VALUES
('Idea-00011', 'St-00001', 'like'),
('Idea-00012', 'St-00001', 'like'),
('Idea-00014', 'St-00001', 'dislike'),
('Idea-00015', 'St-00001', 'dislike'),
('Idea-00008', 'St-00002', 'dislike'),
('Idea-00011', 'St-00002', 'like'),
('Idea-00012', 'St-00002', 'like'),
('Idea-00006', 'St-00003', 'dislike'),
('Idea-00008', 'St-00003', 'like'),
('Idea-00009', 'St-00003', 'dislike'),
('Idea-00010', 'St-00003', 'dislike'),
('Idea-00011', 'St-00003', 'like'),
('Idea-00010', 'St-00004', 'like'),
('Idea-00011', 'St-00004', 'like'),
('Idea-00008', 'St-00008', 'like'),
('Idea-00009', 'St-00008', 'like'),
('Idea-00010', 'St-00008', 'dislike'),
('Idea-00011', 'St-00008', 'dislike'),
('Idea-00012', 'St-00008', 'like'),
('Idea-00014', 'St-00008', 'like'),
('Idea-00013', 'St-00009', 'like'),
('Idea-00043', 'St-00009', 'like'),
('Idea-00044', 'St-00009', 'like'),
('Idea-00045', 'St-00009', 'like'),
('Idea-00049', 'St-00009', 'like'),
('Idea-00053', 'St-00009', 'like'),
('Idea-00014', 'St-00010', 'like'),
('Idea-00050', 'St-00010', 'dislike');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `name`, `departmentid`, `email`, `username`, `password`) VALUES
('St-00001', 'zwel', 'Dpm-00001', 'zwe@gmail.com', 'zwe77', 'zwe77'),
('St-00002', 'alex', 'Dpm-00001', 'alex@gmail.com', 'alex22', 'alex22'),
('St-00003', 'susan', 'Dpm-00002', 'susan@gmail.com', 'susan02', 'susan'),
('St-00004', 'kyaw', 'Dpm-00002', 'kyaw@gmail.com', 'kyaw', 'kyaw'),
('St-00005', 'thiha', 'Dpm-00002', 'thiha@gmail.com', 'thiha007', 'thiha'),
('St-00006', 'hein', 'Dpm-00003', 'hein@email.com', 'hein123', 'hein'),
('St-00007', 'eaint', 'Dpm-00003', 'eaint@email.com', 'eaint77', 'eaint'),
('St-00008', 'Aung MIn', 'Dpm-00004', 'aung@email.com', 'aung09', 'aung'),
('St-00009', 'may', 'Dpm-00004', 'may@email.com', 'maycatherine', 'may'),
('St-00010', 'mg mg', 'Dpm-00003', 'mgmg@email.com', 'mgkgmg', 'mgmg');

-- --------------------------------------------------------

--
-- Structure for view `qry_anonymousideas`
--
DROP TABLE IF EXISTS `qry_anonymousideas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_anonymousideas`  AS SELECT `i`.`ideaid` AS `ideaid`, `i`.`idea_detail` AS `idea_detail`, `c`.`name` AS `CategoryName`, `i`.`staffid` AS `staffid`, `s`.`name` AS `Staff_Name`, `d`.`name` AS `Department`, `i`.`idea_date` AS `idea_date`, `i`.`file` AS `file` FROM (((`tblidea` `i` join `tblstaff` `s` on(`i`.`staffid` = `s`.`staffid`)) join `tblcategory` `c` on(`c`.`categoryid` = `i`.`categoryid`)) join `tbldepartment` `d` on(`d`.`departmentid` = `s`.`departmentid`)) WHERE `i`.`visibility` = 'no' ;

-- --------------------------------------------------------

--
-- Structure for view `qry_idea`
--
DROP TABLE IF EXISTS `qry_idea`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_idea`  AS SELECT `i`.`ideaid` AS `ideaid`, `i`.`idea_detail` AS `idea_detail`, `i`.`staffid` AS `staffid`, `i`.`categoryid` AS `categoryid`, `i`.`idea_date` AS `idea_date`, `i`.`file` AS `file`, `i`.`filetype` AS `filetype`, `i`.`visibility` AS `visibility`, `ac`.`year` AS `year`, `c`.`name` AS `name`, `c`.`finalenddate` AS `finalenddate`, `d`.`name` AS `departmentname`, `s`.`name` AS `staffname` FROM ((((`tblidea` `i` join `tblstaff` `s`) join `tbldepartment` `d`) join `tblcategory` `c`) join `tblacademicyear` `ac`) WHERE `i`.`staffid` = `s`.`staffid` AND `s`.`departmentid` = `d`.`departmentid` AND `ac`.`academicyearid` = `c`.`academicyearid` AND `c`.`categoryid` = `i`.`categoryid` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_ideacomment`
--
DROP TABLE IF EXISTS `qry_ideacomment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_ideacomment`  AS SELECT `i`.`ideaid` AS `ideaid`, `i`.`idea_detail` AS `idea_detail`, `i`.`staffid` AS `staffid`, `i`.`categoryid` AS `categoryid`, `i`.`idea_date` AS `idea_date`, `i`.`file` AS `file`, `i`.`filetype` AS `filetype`, `i`.`visibility` AS `visibility`, `ac`.`year` AS `year`, `c`.`name` AS `name`, `c`.`finalenddate` AS `finalenddate`, `d`.`name` AS `departmentname`, `s`.`name` AS `staffname`, `cmt`.`commentdate` AS `commentdate`, `cmt`.`comment` AS `comment` FROM (((((`tblidea` `i` join `tblstaff` `s`) join `tbldepartment` `d`) join `tblcategory` `c`) join `tblacademicyear` `ac`) join `tblcomment` `cmt`) WHERE `i`.`staffid` = `s`.`staffid` AND `s`.`departmentid` = `d`.`departmentid` AND `ac`.`academicyearid` = `c`.`academicyearid` AND `c`.`categoryid` = `i`.`categoryid` AND `cmt`.`ideaid` = `i`.`ideaid` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_ideawithoutcomment`
--
DROP TABLE IF EXISTS `qry_ideawithoutcomment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_ideawithoutcomment`  AS SELECT `i`.`ideaid` AS `ideaid`, `i`.`idea_detail` AS `idea_detail`, `i`.`staffid` AS `staffid`, `i`.`categoryid` AS `categoryid`, `i`.`idea_date` AS `idea_date`, `i`.`file` AS `file`, `i`.`filetype` AS `filetype`, `i`.`visibility` AS `visibility` FROM `tblidea` AS `i` WHERE !(`i`.`ideaid` in (select distinct `i`.`ideaid` from (`tblidea` `i` join `tblcomment` `cm` on(`cm`.`ideaid` = `i`.`ideaid`)))) ORDER BY `i`.`ideaid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `qry_numberofcontributor`
--
DROP TABLE IF EXISTS `qry_numberofcontributor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_numberofcontributor`  AS SELECT `d`.`name` AS `name`, `i`.`staffid` AS `contributorid`, `s`.`name` AS `contributorname`, count(`i`.`staffid`) AS `noofcontribution` FROM ((`tblidea` `i` join `tblstaff` `s`) join `tbldepartment` `d`) WHERE `i`.`staffid` = `s`.`staffid` AND `s`.`departmentid` = `d`.`departmentid` GROUP BY `d`.`name`, `i`.`staffid`, `s`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_numberofideas`
--
DROP TABLE IF EXISTS `qry_numberofideas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_numberofideas`  AS SELECT `d`.`name` AS `name`, count(`i`.`staffid`) AS `noofidea` FROM ((`tblidea` `i` join `tblstaff` `s`) join `tbldepartment` `d`) WHERE `i`.`staffid` = `s`.`staffid` AND `s`.`departmentid` = `d`.`departmentid` GROUP BY `d`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_percentageofideas`
--
DROP TABLE IF EXISTS `qry_percentageofideas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_percentageofideas`  AS SELECT `d`.`name` AS `name`, count(`i`.`staffid`) / (select count(`tbldepartment`.`departmentid`) from `tbldepartment`) AS `percent` FROM ((`tblidea` `i` join `tblstaff` `s`) join `tbldepartment` `d`) WHERE `i`.`staffid` = `s`.`staffid` AND `s`.`departmentid` = `d`.`departmentid` GROUP BY `d`.`name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblacademicyear`
--
ALTER TABLE `tblacademicyear`
  ADD PRIMARY KEY (`academicyearid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`categoryid`),
  ADD KEY `academicyearid` (`academicyearid`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `ideaid` (`ideaid`),
  ADD KEY `staffid` (`commenterid`);

--
-- Indexes for table `tblcoordinator`
--
ALTER TABLE `tblcoordinator`
  ADD PRIMARY KEY (`coordinatorid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `tblidea`
--
ALTER TABLE `tblidea`
  ADD PRIMARY KEY (`ideaid`),
  ADD KEY `staffid` (`staffid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `tblmanager`
--
ALTER TABLE `tblmanager`
  ADD PRIMARY KEY (`managerid`);

--
-- Indexes for table `tblrating`
--
ALTER TABLE `tblrating`
  ADD UNIQUE KEY `UC_rating_info` (`responderid`,`ideaid`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD CONSTRAINT `tblcategory_ibfk_1` FOREIGN KEY (`academicyearid`) REFERENCES `tblacademicyear` (`academicyearid`);

--
-- Constraints for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD CONSTRAINT `tblcomment_ibfk_1` FOREIGN KEY (`ideaid`) REFERENCES `tblidea` (`ideaid`),
  ADD CONSTRAINT `tblcomment_ibfk_2` FOREIGN KEY (`commenterid`) REFERENCES `tblstaff` (`staffid`);

--
-- Constraints for table `tblcoordinator`
--
ALTER TABLE `tblcoordinator`
  ADD CONSTRAINT `tblcoordinator_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`);

--
-- Constraints for table `tblidea`
--
ALTER TABLE `tblidea`
  ADD CONSTRAINT `tblidea_ibfk_1` FOREIGN KEY (`staffid`) REFERENCES `tblstaff` (`staffid`),
  ADD CONSTRAINT `tblidea_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `tblcategory` (`categoryid`);

--
-- Constraints for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD CONSTRAINT `tblstaff_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
