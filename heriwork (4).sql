-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 02:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heriwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `apk` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_auto_id` int(11) NOT NULL,
  `college_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college_admin`
--

CREATE TABLE `college_admin` (
  `apk1` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `school_email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `college_auto_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internship_app`
--

CREATE TABLE `internship_app` (
  `internship_app_auto_id` int(11) NOT NULL,
  `internship_app_job_id` int(11) NOT NULL,
  `internship_app_student_id` int(11) NOT NULL,
  `internship_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internship_job`
--

CREATE TABLE `internship_job` (
  `internship_job_auto_id` int(11) NOT NULL,
  `org_admin_auto_id_fk` int(11) NOT NULL,
  `ijob_title` varchar(11) NOT NULL,
  `ijob_job_desc` varchar(255) NOT NULL,
  `ijob_stipend` int(11) NOT NULL,
  `ijob_expected_start_date` datetime NOT NULL,
  `ijob_expected_end_date` datetime NOT NULL,
  `ijob_expected_daily_hours` datetime NOT NULL,
  `ijob_pay_status` int(11) NOT NULL,
  `ijob_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `organization_auto_id` int(11) NOT NULL,
  `organization_name` varchar(50) NOT NULL,
  `org_email_format` varchar(100) NOT NULL,
  `organization_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization_admin`
--

CREATE TABLE `organization_admin` (
  `org_admin_auto_id` int(11) NOT NULL,
  `admin_first_name` varchar(30) NOT NULL,
  `admin_last_name` varchar(30) NOT NULL,
  `admin_official_email` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `organization_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_auto_id` int(11) NOT NULL,
  `student_inst_id` int(11) NOT NULL,
  `student_assigned_id` int(11) NOT NULL,
  `student_first_name` varchar(30) NOT NULL,
  `student_last_name` varchar(30) NOT NULL,
  `student_other_name` varchar(30) NOT NULL,
  `student_phone` int(11) NOT NULL,
  `student_email` varchar(30) NOT NULL,
  `student_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workstudy_employer`
--

CREATE TABLE `workstudy_employer` (
  `emp_auto_id` int(11) NOT NULL,
  `emp_type_auto_id_fk` int(11) NOT NULL,
  `emp_first_name` varchar(30) NOT NULL,
  `emp_last_name` varchar(30) NOT NULL,
  `emp_other_name` varchar(30) NOT NULL,
  `emp_phone_number` int(11) NOT NULL,
  `emp_org_email_address` varchar(30) DEFAULT NULL,
  `emp_personal_email_address` varchar(30) DEFAULT NULL,
  `emp_status` tinyint(1) NOT NULL,
  `emp_date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `emp_date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workstudy_employer_type`
--

CREATE TABLE `workstudy_employer_type` (
  `ws_emp_type_auto_id` int(11) NOT NULL,
  `Corporate_staff` int(11) NOT NULL,
  `personal_contributor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_study_app`
--

CREATE TABLE `work_study_app` (
  `ws_app_auto_id` int(11) NOT NULL,
  `ws_app_job_id` int(11) NOT NULL,
  `ws_student_aid` int(11) NOT NULL,
  `ws_app_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_study_job`
--

CREATE TABLE `work_study_job` (
  `ws_job_auto_id` int(11) NOT NULL,
  `ws_job_title` varchar(30) NOT NULL,
  `ws_job_desc` varchar(255) NOT NULL,
  `ws_job_pay_per_hour` int(11) NOT NULL,
  `ws_job-expected_daily_hour` int(11) NOT NULL,
  `ws_job-expected_start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ws_job-expected_end_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ws_job_active_status` tinyint(1) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`apk`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_auto_id`);

--
-- Indexes for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD PRIMARY KEY (`apk1`);

--
-- Indexes for table `internship_app`
--
ALTER TABLE `internship_app`
  ADD PRIMARY KEY (`internship_app_auto_id`),
  ADD KEY `fk_internship_app_internship_job_id` (`internship_app_job_id`),
  ADD KEY `fk_internship_app_student_id` (`internship_app_student_id`);

--
-- Indexes for table `internship_job`
--
ALTER TABLE `internship_job`
  ADD PRIMARY KEY (`internship_job_auto_id`),
  ADD KEY `fk_internship_job_organization_admin_auto_id_fk` (`org_admin_auto_id_fk`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organization_auto_id`),
  ADD UNIQUE KEY `org_email_format` (`org_email_format`);

--
-- Indexes for table `organization_admin`
--
ALTER TABLE `organization_admin`
  ADD PRIMARY KEY (`org_admin_auto_id`),
  ADD KEY `fk_organization_admin_organization_id` (`organization_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_auto_id`),
  ADD KEY `fk_student_college_id` (`student_inst_id`);

--
-- Indexes for table `workstudy_employer`
--
ALTER TABLE `workstudy_employer`
  ADD PRIMARY KEY (`emp_auto_id`);

--
-- Indexes for table `workstudy_employer_type`
--
ALTER TABLE `workstudy_employer_type`
  ADD PRIMARY KEY (`ws_emp_type_auto_id`);

--
-- Indexes for table `work_study_app`
--
ALTER TABLE `work_study_app`
  ADD PRIMARY KEY (`ws_app_auto_id`),
  ADD KEY `fk_work_study_app_student_id` (`ws_student_aid`);

--
-- Indexes for table `work_study_job`
--
ALTER TABLE `work_study_job`
  ADD PRIMARY KEY (`ws_job_auto_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD CONSTRAINT `college_admin_ibfk_1` FOREIGN KEY (`apk1`) REFERENCES `college` (`college_auto_id`);

--
-- Constraints for table `internship_app`
--
ALTER TABLE `internship_app`
  ADD CONSTRAINT `fk_internship_app_internship_job_id` FOREIGN KEY (`internship_app_job_id`) REFERENCES `internship_job` (`internship_job_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_internship_app_student_id` FOREIGN KEY (`internship_app_student_id`) REFERENCES `student` (`Student_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `internship_job`
--
ALTER TABLE `internship_job`
  ADD CONSTRAINT `fk_internship_job_organization_admin_auto_id_fk` FOREIGN KEY (`org_admin_auto_id_fk`) REFERENCES `organization_admin` (`org_admin_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organization_admin`
--
ALTER TABLE `organization_admin`
  ADD CONSTRAINT `fk_organization_admin_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_college_id` FOREIGN KEY (`student_inst_id`) REFERENCES `college` (`college_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workstudy_employer_type`
--
ALTER TABLE `workstudy_employer_type`
  ADD CONSTRAINT `workstudy_employer_type_ibfk_1` FOREIGN KEY (`ws_emp_type_auto_id`) REFERENCES `workstudy_employer` (`emp_auto_id`);

--
-- Constraints for table `work_study_app`
--
ALTER TABLE `work_study_app`
  ADD CONSTRAINT `fk_work_study_app_student_id` FOREIGN KEY (`ws_student_aid`) REFERENCES `student` (`Student_auto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `work_study_app_ibfk_1` FOREIGN KEY (`ws_app_auto_id`) REFERENCES `student` (`Student_auto_id`);

--
-- Constraints for table `work_study_job`
--
ALTER TABLE `work_study_job`
  ADD CONSTRAINT `work_study_job_ibfk_1` FOREIGN KEY (`ws_job_auto_id`) REFERENCES `workstudy_employer` (`emp_auto_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
