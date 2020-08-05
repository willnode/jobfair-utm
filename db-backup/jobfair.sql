-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table jobfair.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_count` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.categories: ~27 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `job_count`) VALUES
	(1, 'Akuntan/Keuangan', 'accountingfinance', 0),
	(2, 'Bank/ Non-Bank Fin. Institution', 'bank-non-bank-fin-institution', 0),
	(3, 'Komersil/Penyuplai', 'commercialsupply-chain', 3),
	(4, 'Edukasi/Training', 'educationtraining', 0),
	(5, 'Insinyur/Arsitek', 'engineerarchitects', 0),
	(6, 'Busana/Tekstil', 'garmentstextile', 0),
	(7, 'HR/Org. Development', 'hrorg-development', 0),
	(9, 'Manajemen/Administrasi', 'gen-mgtadmin', 0),
	(10, 'Desain/Creator', 'designcreative', 0),
	(11, 'Produksi/Operasi', 'productionoperation', 0),
	(12, 'Agen Travel/Turis', 'hospitality-travel-tourism', 0),
	(13, 'Kecantikan/Kesehatan', 'beauty-care-health-fitness', 0),
	(14, 'Montir/Konstruksi', 'electrician-construction-repair', 2),
	(15, 'IT & Telekomunikasi', 'it-telecommunication', 7),
	(16, 'Marketing/Sales', 'marketingsales', 0),
	(17, 'Customer Support/Call Center', 'customer-supportcall-centre', 0),
	(18, 'Agen Media/Periklanan', 'mediaadevent-mgt', 0),
	(19, 'Pengobatan/Farmasi', 'medicalpharma', 0),
	(20, 'Agroteknik/Perikanan', 'agro-plantanimalfisheries', 0),
	(21, 'NGO/Development', 'ngodevelopment', 0),
	(22, 'Penelitian/Konsultasi', 'researchconsultancy', 0),
	(23, 'Sekretaris/Resepsionis', 'secretaryreceptionist', 0),
	(24, 'Data Entry/Operator/BPO', 'data-entryoperatorbpo', 0),
	(25, 'Pengemudi/Teknisi Motor', 'drivingmotor-technician', 0),
	(26, 'Layanan Keamanan/Dukungan', 'securitysupport-service', 0),
	(27, 'Hukum/Legal', 'lawlegal', 0),
	(28, 'Lain-Lain', 'lain-lain', 0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table jobfair.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.countries: ~1 rows (approximately)
DELETE FROM `countries`;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
	(102, 'ID', 'Indonesia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table jobfair.flag_jobs
CREATE TABLE IF NOT EXISTS `flag_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.flag_jobs: ~1 rows (approximately)
DELETE FROM `flag_jobs`;
/*!40000 ALTER TABLE `flag_jobs` DISABLE KEYS */;
INSERT INTO `flag_jobs` (`id`, `job_id`, `reason`, `email`, `message`, `created_at`, `updated_at`) VALUES
	(1, 1, 'applying_problem', 'grinder_gurred@gmail.com', 'Hello Wisteen,\r\nPlease check this job post, it\'s has a problem.', '2018-11-28 11:54:30', '2018-11-28 11:54:30');
/*!40000 ALTER TABLE `flag_jobs` ENABLE KEYS */;

-- Dumping structure for table jobfair.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_any_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int(11) DEFAULT 0,
  `salary_upto` int(11) DEFAULT 0,
  `is_negotiable` tinyint(4) DEFAULT 0,
  `salary_cycle` enum('monthly','yearly','weekly','daily','hourly') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `gender` enum('male','female','transgender','any') COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` enum('full_time','part_time','contract','temporary','commission','internship') COLLATE utf8mb4_unicode_ci DEFAULT 'full_time',
  `exp_level` enum('mid','entry','senior') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_requirements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_requirements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_required_years` tinyint(4) DEFAULT 0,
  `experience_plus` tinyint(4) DEFAULT 0,
  `views` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `job_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_premium` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.jobs: ~12 rows (approximately)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `user_id`, `job_title`, `job_slug`, `position`, `category_id`, `is_any_where`, `salary`, `salary_upto`, `is_negotiable`, `salary_cycle`, `salary_currency`, `vacancy`, `gender`, `job_type`, `exp_level`, `description`, `skills`, `responsibilities`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `benefits`, `apply_instruction`, `country_id`, `country_name`, `state_id`, `state_name`, `city_name`, `experience_required_years`, `experience_plus`, `views`, `approved_at`, `deadline`, `status`, `job_id`, `is_premium`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Fullstack PHP Developer', 'fullstack-php-developer', 'Senior PHP Developer', 15, NULL, 4000, NULL, NULL, 'monthly', 'USD', 12, 'any', 'full_time', 'mid', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 'PHP, MySQL, Laravel, Codeigniter, Zend Framework, HTML, CSS', 'Ability to solve problems as they appear in projects and help project team members as necessary.\r\nAbility to meet tight deadlines and doesn\'t take working as pressure but enjoys challenges.\r\nMust have very good knowledge Javascript Framework/Library.\r\nMinimum 2 years of working experience in Raw PHP, Codeigniter / Laravel Framework (mandatory).\r\nBasic knowledge of various Web API\'s and how to integrate with 3rd party systems', 'B.Sc/ M.Sc in Computer Science/ Engineering from any reputed university', 'Min 3 years experience required', 'Ability to work under pressure and meet the deadline\r\nAbility to work individually and independently with minimal supervision\r\nApplicant must be polite, gentle, have also good behavior, good mentality & also have a good character.', 'Yearly Vacation\r\nUnlimited Drinks and coffee\r\n15 days paid leave\r\nVisa Sponsor / Relocation', 'Apply online, we will contact with you', 231, 'United States', 3956, 'New York', 'Brooklyn', 4, NULL, NULL, NULL, '2023-03-15 00:00:00', 1, '1JRJKEMX', 1, '2018-11-24 15:27:46', '2018-11-29 11:59:46'),
	(2, 1, 'Database Administrator (DBA)', 'database-administrator-dba', NULL, 15, NULL, 45000, 70000, NULL, 'yearly', 'EUR', 3, 'any', 'full_time', 'senior', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Python 3, PHP, JavaScript, ReactJS, vueJS, Linux, Mac, VPS, Server Administration, Jango, Laravel, Codeigniter', 'Writing and managing reports as needed\r\nDesigning and implementing high availability solutions for databases with multi-node database clusters, database replication, database mirroring, and log shipping\r\nWorking closely with development teams to architect solutions for long-term scalability of database environments\r\nOverseeing Performance Management - hardware, instance, and query\r\nDocumenting standards and best practices for all aspects of DB Server', 'Bachelor of Science (BSc) in Computer Science\r\nNo requirements for Experts', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nDatabase Administrator (DBA)\r\nThe applicants should have experience in the following business area(s):\r\nSoftware Company', 'Age 25 to 32 years\r\nBoth males and females are allowed to apply\r\n3+ years as MySQL DBA including experience with design, implementation, backup and recovery, monitoring, and performance tuning\r\nExperience with 24x7 support and troubleshooting production related database issues\r\nStrong experience managing databases in virtual and cloud environments (AWS, Digital Ocean)', 'Free Launch\r\n2 Holidays per week\r\nProvident Fund', 'Apply online or send us your resume (no-reply@demo.com)', 82, 'Germany', 1383, 'Munich', NULL, 5, 1, NULL, NULL, '2021-10-21 00:00:00', 1, '20UKHIDE', 1, '2018-11-25 08:11:29', '2018-11-29 11:57:52'),
	(3, 3, 'Logistics Technician', 'logistics-technician', 'Individual Contributor', 15, NULL, 4000, NULL, 1, 'monthly', 'USD', 7, 'any', 'full_time', 'senior', 'Microsoft\'s Cloud Framework and Tasks (MCIO) is the motor that powers cloud administrations. Datacenter Stock and Resource Experts will perform key jobs conveying center framework and central innovations for Microsoft\'s online organizations. \r\n\r\nEnable Billions! \r\n\r\nOur foundation is included an extensive worldwide arrangement of in excess of 100 datacenters and 1 million servers. Our establishment is based upon and overseen by a group of topic specialists attempting to help administrations for in excess of 1 billion clients and 20 million organizations including Bing, MSN, Office 365, Xbox Live, Skype, OneDrive and the Microsoft Purplish blue stage. \r\n\r\nWith natural manageability and Datacenter advancement at the bleeding edge of our Datacenter structure and tasks, we proceed to develop and advance as we meet the consistently changing business requests that hold Microsoft as a world-class Cloud supplier. \r\n\r\nBe at the front line of the activity in MCIO as a feature of our Worldwide Datacenter Tasks Gathering.', 'Datacenter, Linux, Java, Visual Basic, Microsoft Windows 10', 'A strong desire and capability to learn, grow, and develop new skills\r\nEmpower a culture of safety, security, and compliance in all aspect of datacenter activities\r\nEstablish and enhance strong working relationships with various internal teams and external suppliers\r\nUnderstand overall ticket management process\r\nPerform material movement, including shipping/receiving and inventory management per standard process\r\nStocking deliveries in an organized manner', 'High School Diploma or equivalent\r\nSix months’ experience in warehouse/supply chain/logistics\r\nAbility to support frequent standing, walking, lifting, and working at heights', NULL, 'Certification in APICS/Inventory Control or equivalent\r\nExperience operating heavy-load movement equipment (pallet jacks, chassis lifts, etc.)\r\nWorking knowledge of physical IT infrastructure components\r\nPerform and execute organization’s safety programs and policies, and compliance knowledge assessments', 'Industry leading healthcare \r\nSavings and investments \r\nGiving programs \r\nEducational resources \r\nMaternity and paternity leave \r\nOpportunities to network and connect\r\nDiscounts on products and services \r\nGenerous time away', NULL, 164, 'Norway', 2702, 'Oslo', 'Oslo', 5, NULL, NULL, NULL, '2024-07-19 00:00:00', 1, 'SEUS5DIO', 1, '2018-12-01 15:20:37', '2018-12-01 15:21:59'),
	(4, 3, 'Supply Chain Manager', 'supply-chain-manager', 'Supply Chain & Operations Management', 3, NULL, 28000, NULL, NULL, 'yearly', 'USD', 6, 'male', 'full_time', 'senior', 'On the off chance that you adore the quest for greatness and are propelled by the difficulties that come through driving developments that affect how the world lives, functions and plays, at that point we welcome you to take in more about Microsoft Gadgets Inventory network (DSC) and the esteem we convey crosswise over Microsoft and to our clients and accomplices. We offer one of a kind chances to take a shot at high-affect extends in a domain that acknowledges decent variety, centers around ability advancement, and perceives outstanding commitment.', 'MS Office, Windows 10, E-Mail Writing, professional writing, Lazy', '8+ years of experience in Supply Chain, Finance, Procurement or Manufacturing Operations\r\nBachelor’s degree in Supply Chain, Operations Management, Engineering or related field\r\nStrong analytical and data orientation skills', 'Minimum Bachelor Degree\r\nCertification of MS Office', 'Experience with MRP systems, preferably SAP\r\nComfortable working in a fast-paced, high-growth, ambiguous environment\r\nContinued education accreditations, such as APICS, ASQ Lean Six Sigma certified', 'roven track record of delivering change and decision making with cross-functional stakeholders\r\nStrong process & tool (ERP, MS Office, Power BI, etc) background and proven capability to rapidly understand, use and drive improvements\r\nExperience with MRP systems, preferably SAP', 'Industry leading healthcare \r\nSavings and investments \r\nGiving programs \r\nEducational resources \r\nMaternity and paternity leave \r\nOpportunities to network and connect \r\nDiscounts on products and services \r\nGenerous time away', 'send your resume to touch@demo.com', 231, 'United States', 3975, 'Washington', 'Redmond', 8, 1, NULL, NULL, '2025-11-20 00:00:00', 1, '4Z1XIDUBD', 1, '2018-12-01 15:43:53', '2018-12-01 15:43:53'),
	(5, 7, 'Apple Store Leader Program', 'apple-store-leader-program', 'Apple Retail', 3, NULL, 2800, 4500, NULL, 'monthly', 'USD', 98, 'any', 'full_time', 'mid', 'Learn and develop as you investigate the craft of initiative at the Apple Store. You\'ll ace our retail business all around through preparing, hands-on understanding, and mentorship. As a major aspect of a group, you\'ll learn through a coordinated effort with everyone around you. As an individual, you\'ll further your self-improvement by having a genuine effect on the achievement of your store. In case you\'re a characteristic pioneer, the Apple Store Pioneer Program is your chance to sparkle.', 'Experience in leadership, whether at work, on a team, or in your community', 'Increase sales volume\r\nSubmit Sales Report\r\nMonitor sales branch', 'To qualify, you must have a degree from a university or college with one of the following: a record of success in your studies or equivalent professional experience.', 'To qualify, you must have a degree from a university or college with one of the following: a record of success in your studies or equivalent professional experience.', 'You have a passion for technology and Apple.\r\nYou’re fluent in English. Experience interacting with different cultures, time spent traveling abroad, or familiarity with other languages is a plus.\r\nYou’ll need to be flexible with your schedule. Your work hours will be based on business needs.\r\nSubmit your resume online along with a cover letter. Your cover letter should include the top three reasons why you would be a successful leader at one of our Apple Retail Stores.', 'Health Insurance\r\nDiscounts on Apple Product\r\nFree accomodation', NULL, 231, 'United States', 3924, 'California', 'Cupertino', 4, NULL, NULL, NULL, '2023-12-12 00:00:00', 1, '5PRT8L2ZT', 1, '2018-12-01 16:53:43', '2018-12-01 16:54:09'),
	(6, 5, 'Engineer (Electrical)', 'engineer-electrical', 'Site Engineer', 14, '1', 1800, 2500, NULL, 'monthly', 'USD', 5, 'any', 'full_time', 'mid', 'Looking for a dynamic, competent & skilled personnel for the vacant position;', NULL, 'Solving Pedrollo marketed all type of Product/Pump related problems by visiting customer\'s site according to the service call.\r\nMaintain close relationship with Pedrollo Dealer, Retailer & Corporate Clients to solve their problems according to zone.\r\nEnsuring supply of all printed material for Pedrollo Service Center, Associate service center, outdoor technicians and self use.\r\nSupervise the work of Pedrollo Associate Service Center.\r\nEnsuring spare parts for Pedrollo Service Center, Associate Service Center, out door technicians and self use.\r\nJustify customer\'s warranty claim as per warranty policy for providing spare parts free of cost with maintain proper document;\r\nMonitoring and ensure presence every service call ticket of Associate Service Center and outdoor technician daily basis\r\nEncourage customer about Pedrollo helpline 16308\r\nEnsure all indoror service from service center;\r\nAttend monthly case study meeting to discuss over important & critical issues of support service;', 'Diploma in Engineering in Electrical\r\nOnly apply Govt. poly technique engineers; Specially who have the experience about Motor Control Panel, Electrical Load Calculation;', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nOperation & Maintenance, Service/ support', 'Age at most 26 years\r\nOnly males are allowed to apply', 'T/A, Mobile bill, Tour allowance, Provident fund, Weekly 2 holidays\r\nSalary Review: Yearly\r\nFestival Bonus: 2(Yearly)\r\nAs per company policy;', NULL, 157, 'New Zealand', 2614, 'Otago', 'Oamaru', 5, 1, NULL, NULL, '2025-10-24 00:00:00', 1, '6A92BGMD0', 1, '2018-12-09 11:44:04', '2018-12-09 12:18:24'),
	(7, 5, 'Diploma Engineer', 'diploma-engineer', 'Site Engineer', 14, '1', 1800, 2500, NULL, 'monthly', 'USD', 5, 'any', 'full_time', 'mid', 'Looking for a dynamic, competent & skilled personnel for the vacant position;', NULL, 'Solving Pedrollo marketed all type of Product/Pump related problems by visiting customer\'s site according to the service call.\r\nMaintain close relationship with Pedrollo Dealer, Retailer & Corporate Clients to solve their problems according to zone.\r\nEnsuring supply of all printed material for Pedrollo Service Center, Associate service center, outdoor technicians and self use.\r\nSupervise the work of Pedrollo Associate Service Center.\r\nEnsuring spare parts for Pedrollo Service Center, Associate Service Center, out door technicians and self use.\r\nJustify customer\'s warranty claim as per warranty policy for providing spare parts free of cost with maintain proper document;\r\nMonitoring and ensure presence every service call ticket of Associate Service Center and outdoor technician daily basis\r\nEncourage customer about Pedrollo helpline 16308\r\nEnsure all indoror service from service center;\r\nAttend monthly case study meeting to discuss over important & critical issues of support service;', 'Diploma in Engineering in Electrical\r\nOnly apply Govt. poly technique engineers; Specially who have the experience about Motor Control Panel, Electrical Load Calculation;', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nOperation & Maintenance, Service/ support', 'Age at most 26 years\r\nOnly males are allowed to apply', 'T/A, Mobile bill, Tour allowance, Provident fund, Weekly 2 holidays\r\nSalary Review: Yearly\r\nFestival Bonus: 2(Yearly)\r\nAs per company policy;', NULL, 157, 'New Zealand', 2614, 'Otago', 'Oamaru', 5, 1, NULL, NULL, '2025-10-24 00:00:00', 1, '6A92BGMEF', 1, '2018-12-09 11:44:04', '2018-12-09 12:18:24'),
	(8, 2, 'Fullstack Engineer with React', 'fullstack-engineer-with-react', 'ReactJS Developer', 15, NULL, 8000, 12000, NULL, 'monthly', 'USD', 108, 'any', 'full_time', 'mid', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu commun paroles.', 'React, GoLang, Python, Ruby, PHP, AngularJS, VueJS', 'Writing and managing reports as needed\r\nDesigning and implementing high availability solutions for databases with multi-node database clusters, database replication, database mirroring, and log shipping\r\nWorking closely with development teams to architect solutions for long-term scalability of database environments\r\nOverseeing Performance Management - hardware, instance, and query\r\nDocumenting standards and best practices for all aspects of DB Server', 'Bachelor of Science (BSc) in Computer Science\r\nNo requirements for Experts', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nDatabase Administrator (DBA)\r\nThe applicants should have experience in the following business area(s):\r\nSoftware Company', 'Age 25 to 32 years\r\nBoth males and females are allowed to apply\r\n3+ years as MySQL DBA including experience with design, implementation, backup and recovery, monitoring, and performance tuning\r\nExperience with 24x7 support and troubleshooting production related database issues\r\nStrong experience managing databases in virtual and cloud environments (AWS, Digital Ocean)', 'Free Launch\r\n2 Holidays per week\r\nProvident Fund', 'Apply online or send us your resume (no-reply@demo.com)', 231, 'United States', 3924, 'California', 'Mountain View', 4, 1, NULL, NULL, '2025-11-29 00:00:00', 1, '8QO7OLQ9W', 1, '2018-12-09 13:02:24', '2018-12-09 13:03:58'),
	(9, 2, 'Fullstack JavasScript Developer', 'fullstack-javascript-developer', 'JavaScript Developer', 15, NULL, 8000, 12000, NULL, 'monthly', 'USD', 108, 'any', 'full_time', 'mid', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu commun paroles.', 'React, GoLang, Python, Ruby, PHP, AngularJS, VueJS', 'Writing and managing reports as needed\r\nDesigning and implementing high availability solutions for databases with multi-node database clusters, database replication, database mirroring, and log shipping\r\nWorking closely with development teams to architect solutions for long-term scalability of database environments\r\nOverseeing Performance Management - hardware, instance, and query\r\nDocumenting standards and best practices for all aspects of DB Server', 'Bachelor of Science (BSc) in Computer Science\r\nNo requirements for Experts', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nDatabase Administrator (DBA)\r\nThe applicants should have experience in the following business area(s):\r\nSoftware Company', 'Age 25 to 32 years\r\nBoth males and females are allowed to apply\r\n3+ years as MySQL DBA including experience with design, implementation, backup and recovery, monitoring, and performance tuning\r\nExperience with 24x7 support and troubleshooting production related database issues\r\nStrong experience managing databases in virtual and cloud environments (AWS, Digital Ocean)', 'Free Launch\r\n2 Holidays per week\r\nProvident Fund', 'Apply online or send us your resume (no-reply@demo.com)', 231, 'United States', 3924, 'California', 'Mountain View', 4, 1, NULL, NULL, '2025-11-29 00:00:00', 1, '8QO7OLOIW', 1, '2018-12-09 13:02:24', '2018-12-09 13:03:58'),
	(10, 1, 'PHP/Python Developer', 'php-python-developer', 'Senior PHP Developer', 15, NULL, 4000, NULL, NULL, 'monthly', 'USD', 12, 'any', 'full_time', 'mid', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 'PHP, MySQL, Laravel, Codeigniter, Zend Framework, HTML, CSS', 'Ability to solve problems as they appear in projects and help project team members as necessary.\r\nAbility to meet tight deadlines and doesn\'t take working as pressure but enjoys challenges.\r\nMust have very good knowledge Javascript Framework/Library.\r\nMinimum 2 years of working experience in Raw PHP, Codeigniter / Laravel Framework (mandatory).\r\nBasic knowledge of various Web API\'s and how to integrate with 3rd party systems', 'B.Sc/ M.Sc in Computer Science/ Engineering from any reputed university', 'Min 3 years experience required', 'Ability to work under pressure and meet the deadline\r\nAbility to work individually and independently with minimal supervision\r\nApplicant must be polite, gentle, have also good behavior, good mentality & also have a good character.', 'Yearly Vacation\r\nUnlimited Drinks and coffee\r\n15 days paid leave\r\nVisa Sponsor / Relocation', 'Apply online, we will contact with you', 231, 'United States', 3956, 'New York', 'Brooklyn', 4, NULL, NULL, NULL, '2023-03-15 00:00:00', 1, '1JRJKEPU', NULL, '2018-11-24 15:27:46', '2018-11-29 11:59:46'),
	(11, 1, 'Database Administrator', 'database-administrator', NULL, 15, NULL, 45000, 70000, NULL, 'yearly', 'EUR', 3, 'any', 'full_time', 'senior', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Python 3, PHP, JavaScript, ReactJS, vueJS, Linux, Mac, VPS, Server Administration, Jango, Laravel, Codeigniter', 'Writing and managing reports as needed\r\nDesigning and implementing high availability solutions for databases with multi-node database clusters, database replication, database mirroring, and log shipping\r\nWorking closely with development teams to architect solutions for long-term scalability of database environments\r\nOverseeing Performance Management - hardware, instance, and query\r\nDocumenting standards and best practices for all aspects of DB Server', 'Bachelor of Science (BSc) in Computer Science\r\nNo requirements for Experts', 'At least 5 year(s)\r\nThe applicants should have experience in the following area(s):\r\nDatabase Administrator (DBA)\r\nThe applicants should have experience in the following business area(s):\r\nSoftware Company', 'Age 25 to 32 years\r\nBoth males and females are allowed to apply\r\n3+ years as MySQL DBA including experience with design, implementation, backup and recovery, monitoring, and performance tuning\r\nExperience with 24x7 support and troubleshooting production related database issues\r\nStrong experience managing databases in virtual and cloud environments (AWS, Digital Ocean)', 'Free Launch\r\n2 Holidays per week\r\nProvident Fund', 'Apply online or send us your resume (no-reply@demo.com)', 82, 'Germany', 1383, 'Munich', NULL, 5, 1, NULL, NULL, '2021-10-21 00:00:00', 1, '20UKHIWP', NULL, '2018-11-25 08:11:29', '2018-11-29 11:57:52'),
	(12, 3, 'Display Supplier', 'display-supplier', 'Supply Chain & Operations Management', 3, NULL, 28000, NULL, NULL, 'yearly', 'USD', 6, 'male', 'full_time', 'senior', 'On the off chance that you adore the quest for greatness and are propelled by the difficulties that come through driving developments that affect how the world lives, functions and plays, at that point we welcome you to take in more about Microsoft Gadgets Inventory network (DSC) and the esteem we convey crosswise over Microsoft and to our clients and accomplices. We offer one of a kind chances to take a shot at high-affect extends in a domain that acknowledges decent variety, centers around ability advancement, and perceives outstanding commitment.', 'MS Office, Windows 10, E-Mail Writing, professional writing, Lazy', '8+ years of experience in Supply Chain, Finance, Procurement or Manufacturing Operations\r\nBachelor’s degree in Supply Chain, Operations Management, Engineering or related field\r\nStrong analytical and data orientation skills', 'Minimum Bachelor Degree\r\nCertification of MS Office', 'Experience with MRP systems, preferably SAP\r\nComfortable working in a fast-paced, high-growth, ambiguous environment\r\nContinued education accreditations, such as APICS, ASQ Lean Six Sigma certified', 'roven track record of delivering change and decision making with cross-functional stakeholders\r\nStrong process & tool (ERP, MS Office, Power BI, etc) background and proven capability to rapidly understand, use and drive improvements\r\nExperience with MRP systems, preferably SAP', 'Industry leading healthcare \r\nSavings and investments \r\nGiving programs \r\nEducational resources \r\nMaternity and paternity leave \r\nOpportunities to network and connect \r\nDiscounts on products and services \r\nGenerous time away', 'send your resume to touch@demo.com', 231, 'United States', 3975, 'Washington', 'Redmond', 8, 1, NULL, NULL, '2025-11-20 00:00:00', 1, '4Z1XIDUMO', NULL, '2018-12-01 15:43:53', '2018-12-01 15:43:53');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table jobfair.job_applications
CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shortlisted` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.job_applications: ~2 rows (approximately)
DELETE FROM `job_applications`;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` (`id`, `job_id`, `employer_id`, `user_id`, `name`, `email`, `phone_number`, `message`, `resume`, `is_shortlisted`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 'Jhony Deep', 'jhony@demo.com', '112234354', 'Please check my resume', '1543343268ixhnt-test-resume-file.docx', NULL, '2018-11-27 12:27:48', '2018-11-27 12:27:48'),
	(2, 1, 1, 0, 'John Cina', 'johncina@demo.com', '123234345', 'Hello Sir, I am ready to join any time, please check my CV', '15435179226vl8f-test-resume-file.docx', 1, '2018-11-29 12:58:42', '2018-11-29 13:10:03');
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;

-- Dumping structure for table jobfair.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.migrations: ~13 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_08_01_155642_create_options_table', 1),
	(4, '2018_11_02_203730_create_countries_table', 1),
	(5, '2018_11_02_204731_create_states_table', 1),
	(17, '2016_07_17_130657_create_categories_table', 2),
	(18, '2018_11_23_210745_create_jobs_table', 2),
	(19, '2018_11_27_181302_create_job_application_table', 3),
	(20, '2018_11_28_174724_create_flag_job_table', 4),
	(21, '2018_12_01_172656_create_user_following_employer_table', 5),
	(22, '2018_12_04_181750_create_posts_table', 6),
	(24, '2018_12_08_151357_create_pricing_table', 7),
	(28, '2018_12_08_151370_create_payments_table', 8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table jobfair.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.options: ~44 rows (approximately)
DELETE FROM `options`;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `option_key`, `option_value`) VALUES
	(2, 'enable_paypal', '1'),
	(3, 'enable_stripe', '1'),
	(4, 'stripe_test_mode', '1'),
	(5, 'stripe_test_secret_key', 'sk_test_tJeAdA1KbhiYV8I8bfPmJcOL'),
	(6, 'stripe_test_publishable_key', 'pk_test_P3TFmKrvT7l29Zpyy1f4pwk8'),
	(7, 'stripe_live_secret_key', ''),
	(8, 'stripe_live_publishable_key', ''),
	(9, 'date_format', 'Y-m-d'),
	(10, 'default_timezone', 'Asia/Jakarta'),
	(11, 'date_format_custom', 'Y-m-d'),
	(12, 'site_title', 'Pusat Karir Online Trunojoyo'),
	(13, 'email_address', 'admin@demo.com'),
	(14, 'time_format', 'H:i'),
	(15, 'time_format_custom', 'H:i'),
	(17, 'number_of_premium_ads_in_home', '8'),
	(18, 'number_of_free_ads_in_home', '8'),
	(19, 'ads_per_page', '12'),
	(20, 'regular_ads_price', '3'),
	(21, 'premium_ads_price', '8'),
	(24, 'paypal_receiver_email', 'shohelmail71-facilitator@gmail.com'),
	(25, 'enable_paypal_sandbox', '1'),
	(26, 'site_name', 'Pusat Karir Online Trunojoyo'),
	(27, 'default_storage', 'public'),
	(32, 'enable_facebook_login', '1'),
	(33, 'enable_google_login', '1'),
	(34, 'fb_app_id', '807346162754117'),
	(35, 'fb_app_secret', '6b93030d5c4f2715aa9d02be93256fbd'),
	(36, 'google_client_id', ''),
	(37, 'google_client_secret', ''),
	(38, 'enable_social_login', '1'),
	(39, 'enable_social_sharing_in_ad_box', '1'),
	(40, 'order_by_premium_ads_in_listing', 'random'),
	(41, 'number_of_premium_ads_in_listing', '3'),
	(42, 'number_of_last_days_premium_ads', '30'),
	(43, 'enable_slider', '1'),
	(44, 'premium_ads_max_impressions', '50'),
	(45, 'copyright_text', 'Copyright [copyright_sign] [year] [site_name], all rights reserved'),
	(58, 'site_email_address', 'info@customer.com '),
	(86, 'currency_sign', 'IDR'),
	(93, 'meta_description', 'meta_description'),
	(96, 'category_count_cached', '1596613123'),
	(97, 'currency_position', 'left'),
	(98, 'enable_bank_transfer', '1'),
	(99, 'fair_open', '0');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Dumping structure for table jobfair.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table jobfair.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `premium_job` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('initial','pending','success','failed','declined','dispute') COLLATE utf8mb4_unicode_ci DEFAULT 'initial',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id_or_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_created` int(11) DEFAULT NULL,
  `bank_swift_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.payments: ~7 rows (approximately)
DELETE FROM `payments`;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `user_id`, `name`, `email`, `package_name`, `package_id`, `premium_job`, `amount`, `payment_method`, `status`, `currency`, `token_id`, `card_last4`, `card_id`, `card_brand`, `card_country`, `card_exp_month`, `card_exp_year`, `client_ip`, `charge_id_or_token`, `payer_email`, `description`, `local_transaction_id`, `payment_created`, `bank_swift_code`, `account_number`, `branch_name`, `branch_address`, `account_name`, `iban`, `created_at`, `updated_at`) VALUES
	(1, 1, 'John Doe', 'admin@demo.com', 'Professional', 1, 3, 30.00, 'paypal', 'success', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRAN_1544294097QW0Q2H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-08 12:34:57', '2018-12-08 12:34:57'),
	(2, 1, 'John Doe', 'admin@demo.com', 'Enterprise', 2, 10, 80.00, 'stripe', 'success', 'USD', NULL, '4242', 'card_1DfDMXIdV7MTb07GX4kIyK5o', 'Visa', NULL, '12', '2020', NULL, NULL, NULL, NULL, 'TRAN_1544301760TA16CJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-08 14:42:40', '2018-12-08 15:30:58'),
	(3, 1, 'John Doe', 'admin@demo.com', 'Professional', 1, 3, 30.00, 'stripe', 'success', 'USD', NULL, '4242', 'card_1DfDP0IdV7MTb07GQ23qihk1', 'Visa', NULL, '12', '2019', NULL, NULL, NULL, NULL, 'TRAN_1544304780XKQIJV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-08 15:33:00', '2018-12-08 15:33:31'),
	(4, 1, 'John Doe', 'admin@demo.com', 'Professional', 1, 3, 30.00, 'stripe', 'initial', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRAN_15443063595DXVWE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-08 15:59:19', '2018-12-08 15:59:19'),
	(5, 1, 'John Doe', 'admin@demo.com', 'Professional', 1, 3, 30.00, 'bank_transfer', 'success', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRAN_1544306432FSDBXI', NULL, 'USPEBNK', '2343454565', 'NewYork Branch', '6/f, VIP block, avenue road, NY', 'Arnold James', 'USIBANNAKE', '2018-12-08 16:00:32', '2018-12-09 10:10:24'),
	(6, 5, 'Eric C. Hyde', 'eric@demo.com', 'Professional', 1, 3, 30.00, 'stripe', 'success', 'USD', NULL, '4242', 'card_1DfWcwIdV7MTb07GamZHa7CB', 'Visa', NULL, '12', '2019', NULL, NULL, NULL, NULL, 'TRAN_1544378692XEBBMF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-09 12:04:52', '2018-12-09 12:05:15'),
	(7, 2, 'Stephen King', 'stephen@demo.com', 'Professional', 1, 3, 30.00, 'stripe', 'success', 'USD', NULL, '4242', 'card_1DfXXPIdV7MTb07G3VqLFVJ4', 'Visa', NULL, '12', '2019', NULL, NULL, NULL, NULL, 'TRAN_1544382194PUI6F3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-09 13:03:14', '2018-12-09 13:03:35');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table jobfair.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('post','page') COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `show_in_header_menu` tinyint(4) DEFAULT NULL,
  `show_in_footer_menu` tinyint(4) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.posts: ~6 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `post_content`, `feature_image`, `type`, `status`, `show_in_header_menu`, `show_in_footer_menu`, `views`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Tentang Kami', 'about-us', '<p><strong>Job Fair Universitas Trunojoyo Madura</strong> diselenggarakan oleh Pusat Pengembangan Karir pada tahun 2020 untuk memberikan kesempatan kerja yang luas&nbsp;pada mahasiswa Universitas Trunojoyo Madura.</p>\r\n\r\n<p>Misi</p>\r\n\r\n<p>Membuka peluang kerja yang lebih baik pada calon lulusan kerja serta memanfaatkan SDM yang lebih optimal.</p>\r\n\r\n<p>Visi</p>\r\n\r\n<ul>\r\n	<li>Memberikan karir yang lebih baik pada calon lulusan</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'page', '1', 1, 0, 19, '2018-12-04 13:28:46', '2020-08-05 00:23:50'),
	(2, 1, 'Syarat dan Kondisi', 'terms-and-conditions', '<p><strong>Syarat dan Kondisi&nbsp;</strong>sesuai syarat undang-undang yang berlaku.</p>', NULL, 'page', '1', 0, 1, 2, '2018-12-04 13:29:35', '2020-08-04 23:43:42'),
	(3, 1, 'First blog post from JobFair', 'first-blog-post-from-jobfair', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 'post', '1', NULL, NULL, 1, '2018-12-04 14:03:23', '2018-12-08 16:34:34'),
	(4, 1, 'Adding post with feature image', 'adding-post-with-feature-image', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '1596508010xuxfy-a.jpg', 'post', '1', NULL, NULL, 3, '2018-12-04 14:19:44', '2020-08-03 19:26:50'),
	(5, 1, 'JobFair is the best job board application', 'jobfair-is-the-best-job-board-application', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '1596508286plcho-b.jpg', 'post', '1', NULL, NULL, 6, '2018-12-05 13:38:57', '2020-08-04 23:44:51'),
	(6, 1, 'Job Seeker can track their application through dashboard', 'job-seeker-can-track-their-application-through-dashboard', '<p>Lorem ipsum dolor sit amet, nibh propriae imperdiet ea vis, pro in epicuri appareat antiopam, odio vidit movet in nec. Quo diam noluisse adipisci ea, verear reprimique est an, ad perfecto accommodare duo. Mea ex aliquam facilisis, duo euismod sanctus ea. Solum causae utroque his ne. Legere euismod te usu, falli suscipit cu nam. Nam fugit graece maluisset id, duo an alia mediocrem, ea consul vidisse recusabo nam.</p>\r\n\r\n<p>Ludus saepe appetere vix ea, quaestio evertitur posidonium per no. At aliquip adipisci erroribus qui, pro novum possit repudiandae ea. Cum at natum soluta senserit, cetero posidonium nam ne. Ne fugit minimum reformidans nec. Eirmod qualisque adolescens id sed. Vim et singulis electram, an usu quod clita deserunt.</p>\r\n\r\n<p>No ius reque ullamcorper. Nonumes noluisse neglegentur id eum, nec minim congue timeam id, agam corpora ex duo. Vim ne sumo case exerci, et eos luptatum similique. Modus tation democritum qui in, posse iisque labitur per ne, numquam nostrum et mei. Has facer malorum in. Nec quis nulla recteque te, case invidunt mel no.</p>\r\n\r\n<p>Malis altera ad mel, eos cu commodo bonorum. Sea ei ferri epicurei, quod noster instructior in ius, malorum adipiscing no eam. Sea solum detraxit id. Eu est mandamus electram, vix eu definiebas argumentum, mea id summo singulis. Erant postulant mel cu. Paulo populo ea mea.</p>\r\n\r\n<p>Et luptatum democritum efficiendi sit, vim et sint maiorum, eam cu iuvaret tibique. His at augue dolores, ad mea tempor repudiare, quidam phaedrum ne has. Ius mentitum nominavi scaevola at. Unum tamquam evertitur ea vix. An veritus persequeris conclusionemque qui.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, nibh propriae imperdiet ea vis, pro in epicuri appareat antiopam, odio vidit movet in nec. Quo diam noluisse adipisci ea, verear reprimique est an, ad perfecto accommodare duo. Mea ex aliquam facilisis, duo euismod sanctus ea. Solum causae utroque his ne. Legere euismod te usu, falli suscipit cu nam. Nam fugit graece maluisset id, duo an alia mediocrem, ea consul vidisse recusabo nam.</p>\r\n\r\n<p>Ludus saepe appetere vix ea, quaestio evertitur posidonium per no. At aliquip adipisci erroribus qui, pro novum possit repudiandae ea. Cum at natum soluta senserit, cetero posidonium nam ne. Ne fugit minimum reformidans nec. Eirmod qualisque adolescens id sed. Vim et singulis electram, an usu quod clita deserunt.</p>\r\n\r\n<p>No ius reque ullamcorper. Nonumes noluisse neglegentur id eum, nec minim congue timeam id, agam corpora ex duo. Vim ne sumo case exerci, et eos luptatum similique. Modus tation democritum qui in, posse iisque labitur per ne, numquam nostrum et mei. Has facer malorum in. Nec quis nulla recteque te, case invidunt mel no.</p>\r\n\r\n<p>Malis altera ad mel, eos cu commodo bonorum. Sea ei ferri epicurei, quod noster instructior in ius, malorum adipiscing no eam. Sea solum detraxit id. Eu est mandamus electram, vix eu definiebas argumentum, mea id summo singulis. Erant postulant mel cu. Paulo populo ea mea.</p>\r\n\r\n<p>Et luptatum democritum efficiendi sit, vim et sint maiorum, eam cu iuvaret tibique. His at augue dolores, ad mea tempor repudiare, quidam phaedrum ne has. Ius mentitum nominavi scaevola at. Unum tamquam evertitur ea vix. An veritus persequeris conclusionemque qui.</p>', '15965088262apx8-c.jpg', 'post', '1', NULL, NULL, 16, '2018-12-05 14:06:29', '2020-08-03 19:40:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table jobfair.pricings
CREATE TABLE IF NOT EXISTS `pricings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `premium_job` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.pricings: ~2 rows (approximately)
DELETE FROM `pricings`;
/*!40000 ALTER TABLE `pricings` DISABLE KEYS */;
INSERT INTO `pricings` (`id`, `package_name`, `price`, `premium_job`, `status`) VALUES
	(1, 'Professional', 30.00, 3, 0),
	(2, 'Enterprise', 80.00, 10, 0);
/*!40000 ALTER TABLE `pricings` ENABLE KEYS */;

-- Dumping structure for table jobfair.states
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.states: ~4,119 rows (approximately)
DELETE FROM `states`;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `state_name`, `country_id`) VALUES
	(1666, 'Aceh', 102),
	(1667, 'Bali', 102),
	(1668, 'Bangka-Belitung', 102),
	(1669, 'Banten', 102),
	(1670, 'Bengkulu', 102),
	(1671, 'Gandaria', 102),
	(1672, 'Gorontalo', 102),
	(1673, 'Jakarta', 102),
	(1674, 'Jambi', 102),
	(1675, 'Jawa Barat', 102),
	(1676, 'Jawa Tengah', 102),
	(1677, 'Jawa Timur', 102),
	(1678, 'Kalimantan Barat', 102),
	(1679, 'Kalimantan Selatan', 102),
	(1680, 'Kalimantan Tengah', 102),
	(1681, 'Kalimantan Timur', 102),
	(1682, 'Kendal', 102),
	(1683, 'Lampung', 102),
	(1684, 'Maluku', 102),
	(1685, 'Maluku Utara', 102),
	(1686, 'Nusa Tenggara Barat', 102),
	(1687, 'Nusa Tenggara Timur', 102),
	(1688, 'Papua', 102),
	(1689, 'Riau', 102),
	(1690, 'Riau Kepulauan', 102),
	(1691, 'Solo', 102),
	(1692, 'Sulawesi Selatan', 102),
	(1693, 'Sulawesi Tengah', 102),
	(1694, 'Sulawesi Tenggara', 102),
	(1695, 'Sulawesi Utara', 102),
	(1696, 'Sumatera Barat', 102),
	(1697, 'Sumatera Selatan', 102),
	(1698, 'Sumatera Utara', 102),
	(1699, 'Yogyakarta', 102);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;

-- Dumping structure for table jobfair.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('user','employer','agent','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_size` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_company` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premium_jobs_balance` int(11) DEFAULT 0,
  `active_status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.users: ~8 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `country_id`, `country_name`, `state_id`, `state_name`, `city`, `gender`, `address`, `address_2`, `website`, `phone`, `photo`, `user_type`, `company`, `company_slug`, `company_size`, `about_company`, `logo`, `premium_jobs_balance`, `active_status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'John Doe', 'admin@demo.com', NULL, '$2y$10$uk0pVAxEhUelFpOCky4O9.I4yWGRbfTx3kPcbNJHp2NEiBHGLtTni', 231, 'United States', 3922, 'Arkansas', 'Bentonville', 'male', '702 SW 8th St, Bentonville, AR 72716, USA', NULL, 'https://www.walmart.com/', '+1 479-273-4000', NULL, 'admin', 'Walmart', 'walmart', 'H', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,', '1544382937dnupc-walmart.jpg', 16, 1, 'UT8h0rxKKHsellNt93noNJ0epcoXp6zxihLFnURgS3KnSol3YpjMKH22sHTR', '2018-12-08 15:33:31', '2018-12-09 13:15:37'),
	(2, 'Stephen King', 'stephen@demo.com', NULL, '$2y$10$KrY1rroERNyM7jN/t7XH4O1Wa2scYc6eIYDgYfskn.ABc3nJfyr.C', 231, 'United States', 3924, 'California', 'Mountain View', NULL, '1600 Amphitheatre Pkwy', NULL, NULL, '1223424345', NULL, 'employer', 'Google', 'google', 'A', NULL, '15443818091odcq-google.png', 2, 1, 'UOHcLEh7o3F4MDKt1fHq46us54PGzmndGF1Jo6Dh1cAKjdfDkyG1qUlt3qf1', '2018-11-23 14:01:11', '2018-12-09 13:03:58'),
	(3, 'Arnold Craig', 'arnold@demo.com', NULL, '$2y$10$ede.pJvkTipdh/yUE/UAL.qmMSM5.UXAKlUp7XydNDN3MsdEzOKM.', 231, 'United States', 3975, 'Washington', 'Redmond', NULL, 'One Microsoft Way', NULL, 'https://microsoft.com', '12323435', NULL, 'employer', 'Microsoft', 'microsoft', 'F', NULL, '1543703058nsvoo-microsoft.png', 0, 1, 'XzMR8xdazUmJTc3JU7WvjqLE7bcOBwKbGAPgWMbpCsmFkvzpN9Y6gyahLSYt', '2018-11-23 14:04:49', '2018-12-01 16:24:18'),
	(4, 'Brenda S. Dowd', 'brenda@demo.com', NULL, '$2y$10$MFzJkOO4evhEtAIIrra05.Fmpe3zMUSRGJ0ssv52faqhhV.C5DAMu', 105, NULL, 1761, NULL, 'Dublin', NULL, '57 Tringle Drive', NULL, NULL, '305-835-0342', NULL, 'agent', 'twelveColor', 'twelvecolor', NULL, NULL, NULL, 0, 1, '59lxmGzhltYxkgtxj6nT6RzHDK7WSTng21SkQTCeUr0aaMUqOJ8M8bCglqma', '2018-11-23 14:14:06', '2018-11-23 14:14:06'),
	(5, 'Eric C. Hyde', 'eric@demo.com', NULL, '$2y$10$PURWQtCW6rJLCb6BK3RbHeTfdkbAdXCO3VgrvoNnoTifi65PovJDi', 82, NULL, 1364, NULL, 'Barmbek-Süd', NULL, '269 Camden Street', 'Topaz Lake', NULL, '775-266-2166', NULL, 'agent', 'TriangleDream', 'triangledream', NULL, NULL, NULL, 2, 1, '83dAyemQayRGKB3WhaURzbNDZufE7tNLwWV4JtBO7UzPNsfwjFeabCYGiUPp', '2018-11-23 14:17:14', '2018-12-09 12:18:24'),
	(6, 'De Stephano', 'stephano@demo.com', NULL, '$2y$10$E7NWtyZiGVakfO6752IMVe59BT/XKAtRRswIYKo6Fz40eH9h9FDYW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, 0, 1, 'ecQVGPTCMd2jHI6kSl4mNPLOesF0xWn0S1lQbfVzRKWbf9f0iuj2T9o4yvkH', '2018-11-25 06:17:45', '2018-11-25 06:17:45'),
	(7, 'Apple', 'apple@demo.com', NULL, '$2y$10$C3UPhxwknyadz6bm8.SXk.gUAX1LWjCwdYuTcSc/kDbbyuuMrJIkS', 231, 'United States', 3924, 'California', 'Cupertino', NULL, 'One Apple Park Way', NULL, 'https://apple.com', '12334324545', NULL, 'employer', 'Apple', 'apple', 'A', NULL, '1543704173se5dg-apple.png', 0, 1, NULL, '2018-12-01 16:41:33', '2018-12-09 09:00:49'),
	(8, 'A', 'wildanmubarok22@gmail.com', NULL, '$2y$10$B1Iwr1t0LTONUOk3V0hYJePOOlRlecTKzN6PZ4KrBLRHAphQ6/GzS', 102, 'Indonesia', 1677, 'Jawa Timur', 'Jombang', NULL, 'Mojokrapak, Tembelang, Jombang', NULL, NULL, '082334656265', NULL, 'employer', 'B', 'b', NULL, NULL, NULL, 0, 1, '3sIe9ONuvAe7jo5XDWWIbTZjd8apXT5W59XlfWDRGSLMKCUdOJG3NrcbRrtp', '2020-08-03 06:13:52', '2020-08-03 06:13:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table jobfair.user_following_employers
CREATE TABLE IF NOT EXISTS `user_following_employers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jobfair.user_following_employers: ~1 rows (approximately)
DELETE FROM `user_following_employers`;
/*!40000 ALTER TABLE `user_following_employers` DISABLE KEYS */;
INSERT INTO `user_following_employers` (`id`, `user_id`, `employer_id`, `created_at`, `updated_at`) VALUES
	(3, 6, 1, '2018-12-01 12:07:05', '2018-12-01 12:07:05');
/*!40000 ALTER TABLE `user_following_employers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
