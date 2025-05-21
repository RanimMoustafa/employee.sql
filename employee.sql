-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 21, 2025 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `empl_code` varchar(50) NOT NULL,
  `car_allowance` decimal(15,2) DEFAULT 0.00,
  `cola` decimal(15,2) DEFAULT 0.00,
  `housing_allowance` decimal(15,2) DEFAULT 0.00,
  `internet_allowance` decimal(15,2) DEFAULT 0.00,
  `job_nature_allowance` decimal(15,2) DEFAULT 0.00,
  `job_risk_allowance` decimal(15,2) DEFAULT 0.00,
  `meal_allowance` decimal(15,2) DEFAULT 0.00,
  `mobile_allowance` decimal(15,2) DEFAULT 0.00,
  `other_fixed_allowance` decimal(15,2) DEFAULT 0.00,
  `representation_allowance` decimal(15,2) DEFAULT 0.00,
  `transportation_allowance` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_owner`
--

CREATE TABLE `car_owner` (
  `empl_code` varchar(50) NOT NULL,
  `own_car` tinyint(1) NOT NULL DEFAULT 0,
  `type_brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `model_year` year(4) DEFAULT NULL,
  `first_kilometer_reading` int(11) DEFAULT NULL,
  `license_holder_name` varchar(150) DEFAULT NULL,
  `power_of_attorney` varchar(150) DEFAULT NULL,
  `license_issue_date` date DEFAULT NULL,
  `license_expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Empl_code` varchar(50) NOT NULL,
  `country_of_residency` varchar(100) DEFAULT NULL,
  `residency_governorate` varchar(100) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `business_data_number` varchar(50) DEFAULT NULL,
  `phone1_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `phone1_country_code` varchar(10) DEFAULT NULL,
  `phone1_number` varchar(20) DEFAULT NULL,
  `phone2_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `phone2_country_code` varchar(10) DEFAULT NULL,
  `phone2_number` varchar(20) DEFAULT NULL,
  `phone3_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `phone3_country_code` varchar(10) DEFAULT NULL,
  `phone3_number` varchar(20) DEFAULT NULL,
  `email1_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `email1_address` varchar(255) DEFAULT NULL,
  `email2_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `email2_address` varchar(255) DEFAULT NULL,
  `email3_type` enum('personal_1','personal_2','business') DEFAULT NULL,
  `email3_address` varchar(255) DEFAULT NULL,
  `address1_type` enum('residency_1','residency_2') DEFAULT NULL,
  `address1_text` text DEFAULT NULL,
  `address2_type` enum('residency_1','residency_2') DEFAULT NULL,
  `address2_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emerg_cont`
--

CREATE TABLE `emerg_cont` (
  `empl_code` varchar(50) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `phone_country_code` varchar(10) DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emplo_contr`
--

CREATE TABLE `emplo_contr` (
  `Empl_code` varchar(50) NOT NULL,
  `contr_type` varchar(50) NOT NULL,
  `contr_duration_days` int(11) NOT NULL,
  `contra_issuance_date` date NOT NULL,
  `contr_expiry_date` date DEFAULT NULL,
  `contr_renewal_date` date DEFAULT NULL,
  `contr_renewal_notification_date` date DEFAULT NULL,
  `notif_status` varchar(50) DEFAULT NULL,
  `probation_period_end_date` date DEFAULT NULL,
  `probation_period_notification_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empl_basic`
--

CREATE TABLE `empl_basic` (
  `empl_code` varchar(50) NOT NULL,
  `first_name_en` varchar(100) NOT NULL,
  `second_name_en` varchar(100) NOT NULL,
  `third_name_en` varchar(100) DEFAULT NULL,
  `fourth_name_en` varchar(100) DEFAULT NULL,
  `last_name_en` varchar(100) NOT NULL,
  `full_name_en` varchar(500) GENERATED ALWAYS AS (concat_ws(' ',`first_name_en`,`second_name_en`,`third_name_en`,`fourth_name_en`,`last_name_en`)) STORED,
  `first_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name_ar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `full_name_ar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci GENERATED ALWAYS AS (concat_ws(' ',`first_name_ar`,`second_name_ar`,`third_name_ar`,`fourth_name_ar`,`last_name_ar`)) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empl_history`
--

CREATE TABLE `empl_history` (
  `empl_code` varchar(50) NOT NULL,
  `promotion_date_1` date DEFAULT NULL,
  `new_job_title_1` varchar(255) DEFAULT NULL,
  `new_department_1` varchar(100) DEFAULT NULL,
  `promotion_date_2` date DEFAULT NULL,
  `new_job_title_2` varchar(255) DEFAULT NULL,
  `new_department_2` varchar(100) DEFAULT NULL,
  `promotion_date_3` date DEFAULT NULL,
  `new_job_title_3` varchar(255) DEFAULT NULL,
  `new_department_3` varchar(100) DEFAULT NULL,
  `promotion_date_4` date DEFAULT NULL,
  `new_job_title_4` varchar(255) DEFAULT NULL,
  `new_department_4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empl_history_records`
--

CREATE TABLE `empl_history_records` (
  `emp_code` varchar(20) NOT NULL,
  `promotion_date` date DEFAULT NULL,
  `new_job_title` varchar(255) DEFAULT NULL,
  `new_department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_bank`
--

CREATE TABLE `emp_bank` (
  `empl_code` varchar(50) NOT NULL,
  `account_type` enum('Bank Account 1','Bank Account 2') NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_code` varchar(50) DEFAULT NULL,
  `branch_address` varchar(255) DEFAULT NULL,
  `bank_account_no` varchar(50) DEFAULT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `iban` varchar(100) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hir_doc`
--

CREATE TABLE `hir_doc` (
  `Empl_code` varchar(50) NOT NULL,
  `induction_form` tinyint(1) DEFAULT 0,
  `birth_certificate` tinyint(1) DEFAULT 0,
  `education_certificate` tinyint(1) DEFAULT 0,
  `military_service_certificate` tinyint(1) DEFAULT 0,
  `national_id_copy` tinyint(1) DEFAULT 0,
  `photos` tinyint(1) DEFAULT 0,
  `criminal_record` tinyint(1) DEFAULT 0,
  `work_permit` tinyint(1) DEFAULT 0,
  `ka3b_al3amal` tinyint(1) DEFAULT 0,
  `rad_ka3b_al3amal` tinyint(1) DEFAULT 0,
  `form_6` tinyint(1) DEFAULT 0,
  `social_insurance_print` tinyint(1) DEFAULT 0,
  `form_111` tinyint(1) DEFAULT 0,
  `syndicate_card` tinyint(1) DEFAULT 0,
  `previous_work_clearance` tinyint(1) DEFAULT 0,
  `experience_letter` tinyint(1) DEFAULT 0,
  `government_unpaid_vacation` tinyint(1) DEFAULT 0,
  `government_unpaid_vacation_end_date` date DEFAULT NULL,
  `car_license` tinyint(1) DEFAULT 0,
  `driving_license` tinyint(1) DEFAULT 0,
  `igha_takleef` tinyint(1) DEFAULT 0,
  `shaha_sahiya` tinyint(1) DEFAULT 0,
  `qiyas_maharah` tinyint(1) DEFAULT 0,
  `cv` tinyint(1) DEFAULT 0,
  `application` tinyint(1) DEFAULT 0,
  `job_offer_letter` tinyint(1) DEFAULT 0,
  `job_offer_issue_date` date DEFAULT NULL,
  `acknowledgments` tinyint(1) DEFAULT 0,
  `penalty` tinyint(1) DEFAULT 0,
  `one_month` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pers_details`
--

CREATE TABLE `pers_details` (
  `empl_code` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `national_id_number` varchar(20) DEFAULT NULL,
  `national_id_issue_date` date DEFAULT NULL,
  `national_id_expiry_date` date DEFAULT NULL,
  `passport_number` varchar(30) DEFAULT NULL,
  `passport_issue_date` date DEFAULT NULL,
  `passport_expiry_date` date DEFAULT NULL,
  `country_of_birth` varchar(50) DEFAULT NULL,
  `city_of_birth` varchar(50) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `number_of_dependents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salarydetails`
--

CREATE TABLE `salarydetails` (
  `empl_code` varchar(50) NOT NULL,
  `basic_salary` decimal(15,2) NOT NULL COMMENT 'Basic Salary / الراتب الأساسي',
  `zeta_salary` decimal(15,2) NOT NULL COMMENT 'Zeta Salary / الراتب التأميني',
  `social_insurance_salary` decimal(15,2) NOT NULL COMMENT 'Social Insurance Salary / الراتب التأميني',
  `comprehensive_salary` decimal(15,2) NOT NULL COMMENT 'Comprehensive Salary / الراتب الشامل'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_rela_termin`
--

CREATE TABLE `work_rela_termin` (
  `empl_code` varchar(50) NOT NULL,
  `termination_type` varchar(100) NOT NULL,
  `termination_reason` varchar(100) NOT NULL,
  `notification_date` date NOT NULL,
  `last_work_day` date NOT NULL,
  `has_subordinate` tinyint(1) NOT NULL DEFAULT 0,
  `reassign_subordinate` varchar(255) DEFAULT NULL,
  `revoke_access_disable` varchar(100) NOT NULL,
  `recommendation_for_rehire` varchar(100) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `car_owner`
--
ALTER TABLE `car_owner`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Empl_code`);

--
-- Indexes for table `emerg_cont`
--
ALTER TABLE `emerg_cont`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `emplo_contr`
--
ALTER TABLE `emplo_contr`
  ADD PRIMARY KEY (`Empl_code`);

--
-- Indexes for table `empl_basic`
--
ALTER TABLE `empl_basic`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `empl_history`
--
ALTER TABLE `empl_history`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `empl_history_records`
--
ALTER TABLE `empl_history_records`
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `emp_bank`
--
ALTER TABLE `emp_bank`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `hir_doc`
--
ALTER TABLE `hir_doc`
  ADD PRIMARY KEY (`Empl_code`);

--
-- Indexes for table `pers_details`
--
ALTER TABLE `pers_details`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `salarydetails`
--
ALTER TABLE `salarydetails`
  ADD PRIMARY KEY (`empl_code`);

--
-- Indexes for table `work_rela_termin`
--
ALTER TABLE `work_rela_termin`
  ADD PRIMARY KEY (`empl_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowances`
--
ALTER TABLE `allowances`
  ADD CONSTRAINT `fk_allowances_empl` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `car_owner`
--
ALTER TABLE `car_owner`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_contact_empl` FOREIGN KEY (`Empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emerg_cont`
--
ALTER TABLE `emerg_cont`
  ADD CONSTRAINT `fk_emergcont_empl` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emplo_contr`
--
ALTER TABLE `emplo_contr`
  ADD CONSTRAINT `fk_contr_employee` FOREIGN KEY (`Empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `empl_history`
--
ALTER TABLE `empl_history`
  ADD CONSTRAINT `fk_emplhistory_empl` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `empl_history_records`
--
ALTER TABLE `empl_history_records`
  ADD CONSTRAINT `empl_history_records_ibfk_1` FOREIGN KEY (`emp_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp_bank`
--
ALTER TABLE `emp_bank`
  ADD CONSTRAINT `fk_empl_code` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hir_doc`
--
ALTER TABLE `hir_doc`
  ADD CONSTRAINT `hir_doc_ibfk_1` FOREIGN KEY (`Empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pers_details`
--
ALTER TABLE `pers_details`
  ADD CONSTRAINT `fk_empl_pers` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salarydetails`
--
ALTER TABLE `salarydetails`
  ADD CONSTRAINT `fk_salary_empl` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`);

--
-- Constraints for table `work_rela_termin`
--
ALTER TABLE `work_rela_termin`
  ADD CONSTRAINT `fk_workrela_empl` FOREIGN KEY (`empl_code`) REFERENCES `empl_basic` (`empl_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
