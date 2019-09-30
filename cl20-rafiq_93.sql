-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2018 at 07:18 AM
-- Server version: 10.1.27-MariaDB
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cl20-rafiq_93`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointment_admin`
--

CREATE TABLE IF NOT EXISTS `doctor_appointment_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Conatct_number` varchar(255) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `admin_type` tinyint(1) DEFAULT '2' COMMENT '1 for superadmin and 2 for admin',
  `status` tinyint(1) DEFAULT '1',
  `login_ip` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doctor_appointment_admin`
--

INSERT INTO `doctor_appointment_admin` (`id`, `user_name`, `first_name`, `last_name`, `email`, `Address`, `password`, `Conatct_number`, `avatar`, `salt`, `admin_type`, `status`, `login_ip`, `last_login`) VALUES
(5, 'ri169', 'Rahim', 'Ali', 'ri169@angliamedicalpractice.co.uk', 'East Road, Cambridge CB1 1PT', '79804b72852f1e4d664fb7ffd3d98672', '08452713333', '', '', 1, 1, NULL, NULL),
(6, 'Raheam Ali', 'Raheam', 'Ali', 'Ri169_angliamedicalpractice@outlook.com', 'new delhi', '79804b72852f1e4d664fb7ffd3d98672', '123456789', '', '', 2, 1, NULL, NULL),
(7, ' Imran Khan', ' Imran', 'Khan', 'Ik153_angliamedicalpractice@outlook.com', 'new delhi', '79804b72852f1e4d664fb7ffd3d98672', '123456789', '', '', 2, 1, NULL, NULL),
(8, ' Abdul Karim', ' Abdul', 'Karim', 'Ak157_angliamedicalpractice@outlook.com', 'new delhi', '79804b72852f1e4d664fb7ffd3d98672', '1234567890', '', '', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availity_data`
--

CREATE TABLE IF NOT EXISTS `doctor_availity_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `avail_time` time NOT NULL,
  `from_minute` time NOT NULL,
  `end_time` time NOT NULL,
  `to_minute` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `doctor_availity_data`
--

INSERT INTO `doctor_availity_data` (`id`, `doctor_id`, `day`, `avail_time`, `from_minute`, `end_time`, `to_minute`, `status`, `created_date`) VALUES
(46, 10, '1', '14:30:00', '00:00:00', '13:30:00', '00:00:00', 1, '2018-04-01 13:00:57'),
(47, 10, '3', '10:00:00', '00:00:00', '11:00:00', '00:00:00', 1, '2018-04-01 13:00:57'),
(48, 10, '4', '16:00:00', '00:00:00', '18:00:00', '00:00:00', 1, '2018-04-01 13:00:57'),
(49, 11, '3', '08:00:00', '00:00:00', '08:00:00', '00:00:00', 1, '2018-04-04 06:10:17'),
(50, 9, '6', '08:30:00', '00:00:00', '09:30:00', '00:00:00', 1, '2018-04-05 12:02:45'),
(51, 12, '3', '16:00:00', '00:00:00', '17:00:00', '00:00:00', 1, '2018-04-05 14:12:18'),
(52, 12, '4', '09:00:00', '00:00:00', '11:00:00', '00:00:00', 1, '2018-04-05 14:12:18'),
(53, 13, '4', '09:00:00', '00:00:00', '10:00:00', '00:00:00', 1, '2018-04-05 14:43:36'),
(54, 13, '5', '12:00:00', '00:00:00', '13:00:00', '00:00:00', 1, '2018-04-05 14:43:36'),
(55, 13, '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 1, '2018-04-05 14:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_booking_data`
--

CREATE TABLE IF NOT EXISTS `doctor_booking_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Appnmt_no` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `uhid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_phone` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_new_user`
--

CREATE TABLE IF NOT EXISTS `doctor_new_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `doctor_new_user`
--

INSERT INTO `doctor_new_user` (`id`, `uid`, `first_name`, `last_name`, `email`, `contact_number`, `address`, `city`, `dob`, `Gender`, `user_image`, `status`, `created_date`) VALUES
(8, '5ad361ad6789c', 'carlos', 'fenando', 'carlosfisher91@gmail.com', '07480321953', '12 East Road', 'Cambridge ', '0000-00-00', '', '', 1, '2018-04-15 14:29:01'),
(9, '5ad5ff98881bd', 'ravi test', 'tripathi', 'ravitripathi240@gmail.com', '1233', 'rithala', 'new delhi', '2018-04-04', '', '2551374B-DA5C-470D-87BC-0E5D0F4F94B3.jpg', 1, '2018-04-17 14:12:09'),
(10, '5ad9d9967e205', 'JAMES ', 'ALI', 'ru129@outlook.com', '01603555666', '12 East Road', 'Cambridge', '0000-00-00', '', '', 1, '2018-04-20 12:14:14'),
(11, '5ada037ea425c', 'carl', 'smith', 'ru129@outlook.com', '01603666333', '3 East Road', 'Cambridge', '0000-00-00', '', '', 1, '2018-04-20 15:13:02'),
(12, '5ada03fca9fda', 'carl', 'smith', 'ru129@outlook.com', '01603666333', '3 East Road', 'Cambridge', '0000-00-00', '', '', 1, '2018-04-20 15:15:08'),
(13, '5aded9203b49d', 'Ravi', 'Tripathi', 'ravitripathi240@gmail.com', '1234567890', '', '', '1998-04-15', 'male', '', 1, '2018-04-24 07:13:36'),
(14, '5aded9c929ea0', 'Ravi', 'Tripathi', 'ravitripathi240@gmail.com', '1233', 'new ashok nagar', 'delhi', '1976-04-15', '', '169F0EFA-E260-437B-AAA8-D9E26BD5C928.jpg', 1, '2018-04-24 07:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient_perception`
--

CREATE TABLE IF NOT EXISTS `doctor_patient_perception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_phone` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `end_date` date NOT NULL,
  `Extend_Date` date NOT NULL,
  `Issue_Date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `patient_note` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `doctor_patient_perception`
--

INSERT INTO `doctor_patient_perception` (`id`, `patient_id`, `department_id`, `doctor_id`, `patient_name`, `patient_phone`, `patient_email`, `end_date`, `Extend_Date`, `Issue_Date`, `appointment_time`, `patient_note`, `created_date`) VALUES
(7, 5, 5, 10, 'ravi tripathi test', '1234567890', 'ravitripathi240@gmail.com', '1970-01-01', '2018-12-04', '1970-01-01', '05:04:00', 'your booking change.', '2018-04-10 07:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile_details`
--

CREATE TABLE IF NOT EXISTS `doctor_profile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speciality_id` int(11) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `doctor_email` varchar(255) NOT NULL,
  `doctor_phone` varchar(255) NOT NULL,
  `doctor_degree` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `doctor_image` varchar(255) NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `doctor_profile_details`
--

INSERT INTO `doctor_profile_details` (`id`, `speciality_id`, `doctor_name`, `doctor_email`, `doctor_phone`, `doctor_degree`, `address`, `description`, `doctor_image`, `is_home`, `status`, `created_date`) VALUES
(9, 6, 'Ahmad-Farhaan', 'Smith@gmail.com', '1234567890', 'M.B.B.S', 'new delhi,rithala', 'Lorem Ipsum is simply dummy text of the printing and typesetting..', 'AC716329-9424-49E2-9259-C1AD6A12EF0A.jpg', 1, 1, '2018-04-20 16:51:46'),
(10, 4, 'Dr.surendra patil', 'Zerin@gmail.com', '1234567890', 'M.B.B.S', 'new delhi rithala', 'Lorem Ipsum is simply dummy text of the printing and typesetting..', '180B23F5-D666-4468-ADBB-BC192E0D2FA8.jpg', 1, 1, '2018-04-06 08:56:42'),
(11, 3, 'Alex Morfiee', 'Alex@gmail.com', '1234567890', 'M.B.B.S', 'new delhi,rithala', 'Lorem Ipsum is simply dummy text of the printing and typesetting..', 'BE20989E-725E-45F1-B665-9C98B091B3D1.jpg', 0, 1, '2018-03-21 13:41:02'),
(12, 5, 'Dr. Surendra D Patil', 'Surendradpatil@gmail.com', '08452713333', 'M.B.B.S, M.S Orthopedics', 'East Rd, Cambridge CB1 1PT', 'Dr. Rahul Chaudhari has received 3 years of specialized training in Spine specialty. Trained in adult and pediatric spine surgery at Twin city spine center, Minneapolis and Hospital for Special surgery.\r\n\r\nHe is a fellow of Dr Dennis and Dr Boachie who are world renown spine surgeons. Further he received dedicated one year training in scoliosis surgery at Children’s Hospital, New Orleans USA', 'C03EA294-5040-44F9-9EEC-D469122CB4C2.jpg', 0, 1, '2018-04-05 14:11:30'),
(13, 6, 'Farhaan Ahmad M.D', 'mdfarhaanahmad@gmail.com', '08452713333', 'University of Missouri-Kansas City School of Medicine, Kansas City MO', 'East Rd, Cambridge CB1 1PT', ' Special Medical Interest:\r\n\r\n    Heart and Vascular\r\n    Hypertrophic Cardiomyopathy\r\n    Cardiovascular Disease\r\n    Cardiac Magnetic Resonance Imaging\r\n    Pulmonary Arterial Hypertension\r\n    Echocardiography\r\n    Structural Heart Disease\r\n    Advanced Cardiac Imaging\r\n    Valvular heart disease\r\n    Cardiology/Non-Invasive\r\n\r\n', 'C8D712A0-D05B-4E63-BA5F-0727CBC2403D.jpg', 0, 1, '2018-04-05 14:42:45'),
(14, 10, 'Dr. Pankaj E Chopade ', 'Surendradpatil@gmail.com', '08452713333', 'B.P.Th Physiotherapist', 'East Rd, Cambridge CB1 1PT', 'Orthopedics/ Musculoskeletal/ Rheumatology (at Physio OPD, Trauma wards, Cold Orthopedic wards, Arthroplasty wards, Spine ward, Pediatric wards, shoulder ward, Knee and Spine rehabilitation groups, musculoskeletal and General ICU/ HDU).', 'C54A43A3-DEA9-4E66-9B38-FE5330CE397B.jpg', 1, 1, '2018-04-10 09:55:23'),
(15, 9, 'Dr. Piyush Chaudhar', 'Surendradpatil@gmail.com', '08452713333', 'M.B.B.S., DNB (Internal Medicine), Fellow in HIV Medicine (HIVMAI) & Infectious Diseases, ', 'East Rd, Cambridge CB1 1PT', 'Dr. Piyush is a consultant physician & Infectious Diseases Specialist and brings along an experience of 7 years. He has been an Infectious Diseases Specialist at some of Pune’s biggest hospitals like Jehangir, KEM, Inlaks and Budhrani.', '130ACBD5-517C-4254-A1FC-C6D0DB6A5E8F.jpg', 1, 1, '2018-04-10 09:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_request_appointment`
--

CREATE TABLE IF NOT EXISTS `doctor_request_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialty_data`
--

CREATE TABLE IF NOT EXISTS `doctor_specialty_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_specialty` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctor_specialty_data`
--

INSERT INTO `doctor_specialty_data` (`id`, `doctor_specialty`, `title`, `description`, `image`, `status`, `created_date`) VALUES
(4, 'Orphopaedics', 'Nephrology ', 'An orthopaedic surgeon is a physician devoted to the diagnosis, treatment, prevention and rehabilitation of injuries, disorders and diseases of the body''s musculoskeletal system. This system includes bones, joints, ligaments, muscles, nerves and tendons.', '5B8F3C9F-4A3F-4913-BB6E-F28014E671F1.jpg', 1, '2018-04-10 08:41:36'),
(6, 'Cardiologiest ', 'Cardiologiest  doctor', 'Each Pediatric Cardiology exam is built to the same specifications, also known as the blueprint. This blueprint is used to ensure that, for the initial certification and in-training exams, each exam measures the same depth and breadth of content knowledge.', 'E96F11F9-C6B3-4B75-92C6-24A8DAD659DD.jpg', 1, '2018-04-10 08:38:05'),
(9, 'Physician ', 'Physician Docter', 'Each Pediatric Cardiology exam is built to the same specifications, also known as the blueprint. This blueprint is used to ensure that, for the initial certification and in-training exams, each exam measures the same depth and breadth of content knowledge.', 'BF3F04BE-671F-4D79-86A6-65312F4F7557.jpg', 1, '2018-04-10 08:35:32'),
(10, 'Physiotherapist', 'Physiotherapist Docter', '    Stroke patient rehabilitation\r\n    Pre and post-operative Physiotherapy after joint replacement\r\n    Musculo skeletal and sports injuries & rehabilitation\r\n    Home care physiotherapy\r\n    Bronchial hygiene\r\n    Chest physiotherapy\r\n    Mobilization techniques\r\n    Neurology and neuro-surgical rehabilitation\r\n    Cardio thoracic & critical intensive care unit (CTS & CICU)\r\n    Orthopedic and Geriatrics\r\n    Neurosurgery and neurology\r\n    Burns\r\n    Obstreatic and Gynecology\r\n', '45F028D4-E879-49D5-AC67-D713186DB52C.png', 1, '2018-04-24 07:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `description`, `permissions`, `date_created`) VALUES
(1, 'Super Admin', 'have all the access of backend', 'have all the access of backend', '2017-07-10 08:20:13'),
(2, 'Admin', 'have all doctor related access', 'have all doctor related access', '2017-07-10 08:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `description`, `image`, `status`) VALUES
(4, 'Serving', 'collecting of sputum, urine and feces samples; monitoring of vital life signs; operating of specialized equipment related to this function; preparing equipment and assisting physicians during patient ', '221DC648-544E-41E0-8EB0-976F233715A4.jpg', 1),
(5, 'PEDIATRIC INTENSIVE', 'A Pediatric Intensive Care Unit provides care to children less than 14 years of age of a more intensive nature than the usual Pediatric Acute level. ', '58C3BF51-E813-4804-B642-3D7C03DAC35B.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
