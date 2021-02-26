CREATE DATABASE  IF NOT EXISTS `internships` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `internships`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: internships
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_city` varchar(45) NOT NULL,
  `company_state` varchar(12) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Capital One','McLean','VA'),(2,'McKinsey & Company','San Jose','CA'),(3,'Appian','McLean','VA'),(4,'Bluetooth SIG','Kirkland','WA'),(5,'Uber','San Francisco','CA'),(6,'CrowdStrike','Sunnyvale','CA'),(7,'Microsoft','Acton','MA'),(8,'T-Mobile','Bellevue','WA'),(9,'IBSS','Silver Spring','MD'),(10,'Avantus Federal','McLean ','VA'),(11,'Amazon Web Services (AWS)','Seattle','WA'),(12,'Legal Placements, Inc. - STAFFING AGENCY','Washington D.C','DC'),(13,'GLBTQ Legal Advocates & Defenders (GLAD)','Boston','MA'),(14,'Stein IP LLC','Washington D.C.','DC'),(15,'HopeWorks of Howard County','Columbia','MD'),(16,'LogicGate','Chicago','IL'),(17,'Procter & Gamble','Boston','MA'),(18,'Macy\'s','Creek','GA'),(19,'QVC','West Chester','PA'),(20,'Yale Univeristy Careers','East Central','DC'),(21,'Discover Education','Silver Spring ','MD'),(22,'Nike','Beaverton ','OR'),(23,'Omicron, Inc.','Greenbelt','MD'),(24,'Lockheed Martin Corp.','Orlando','FL'),(25,'Intel Corp.','Santa Clara','CA'),(26,'Advanced Micro Devices, Inc.','Austin','TX'),(27,'Verizon Communications Inc.','Silver Spring','MD'),(28,'Chubb','Philadelphia','PA'),(29,'DSPolitical','Washington, DC','DMV'),(30,'American Bankers Association','Washington, DC','DMV'),(31,'Charles Schwab','Chicago','IL'),(32,'Vital Voices\r','Washington, DC','DMV'),(33,'SENS Research Foundation','Stanford','CA'),(34,'The Henry M. Jackson Foundation for the Advancement of Military Medicine','Natick','MA'),(35,'All Native Synergies','Rosslyn','VA'),(36,'U.S. Food and Drug Administration','Rockville','MD'),(37,'Northwestern Memorial Healthcare','Chicago','IL'),(38,'Gunderson Health System','La Crosse','WI'),(39,'Stryker','Mahwah','NJ');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree_field`
--

DROP TABLE IF EXISTS `degree_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_field` (
  `degree_field_id` int NOT NULL,
  `degree_type` varchar(45) NOT NULL,
  PRIMARY KEY (`degree_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree_field`
--

LOCK TABLES `degree_field` WRITE;
/*!40000 ALTER TABLE `degree_field` DISABLE KEYS */;
INSERT INTO `degree_field` VALUES (1001,'Science\r'),(1002,'Accounting\r'),(1003,'Finance\r'),(1004,'Law');
/*!40000 ALTER TABLE `degree_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree_rank`
--

DROP TABLE IF EXISTS `degree_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_rank` (
  `degree_rank_id` int NOT NULL,
  `degree_title` varchar(75) NOT NULL,
  PRIMARY KEY (`degree_rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree_rank`
--

LOCK TABLES `degree_rank` WRITE;
/*!40000 ALTER TABLE `degree_rank` DISABLE KEYS */;
INSERT INTO `degree_rank` VALUES (0,'No degree\r'),(1,'Pursuing Bachelor\'s \r'),(2,'Bachelor’s degree \r'),(3,'Pursuing Bachelor\'s or Master\'s\r'),(4,'Masters\r'),(5,'Doctorate Degree\r'),(6,'2 or 4 year degree and/or equivalent work experience');
/*!40000 ALTER TABLE `degree_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree_requirements`
--

DROP TABLE IF EXISTS `degree_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_requirements` (
  `degree_req_id` int NOT NULL,
  `degree_rank_id` int NOT NULL,
  `degree_field_id` int DEFAULT NULL,
  PRIMARY KEY (`degree_req_id`),
  KEY `degree_field` (`degree_field_id`),
  KEY `degree_rank` (`degree_rank_id`),
  CONSTRAINT `degree_field` FOREIGN KEY (`degree_field_id`) REFERENCES `degree_field` (`degree_field_id`),
  CONSTRAINT `degree_rank` FOREIGN KEY (`degree_rank_id`) REFERENCES `degree_rank` (`degree_rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree_requirements`
--

LOCK TABLES `degree_requirements` WRITE;
/*!40000 ALTER TABLE `degree_requirements` DISABLE KEYS */;
INSERT INTO `degree_requirements` VALUES (0,0,NULL),(1,1,NULL),(2,6,NULL),(3,2,NULL),(4,3,NULL),(5,2,1002),(6,5,NULL),(7,3,1004),(8,4,NULL);
/*!40000 ALTER TABLE `degree_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry` (
  `industry_id` int NOT NULL,
  `industry_type` varchar(45) NOT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (100,'Analytics\r'),(101,'Business\r'),(102,'Legal\r'),(103,'IT\r'),(104,'Engineering\r'),(105,'Human Resources\r'),(106,'Medical');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship_industries`
--

DROP TABLE IF EXISTS `internship_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_industries` (
  `job_id` int NOT NULL,
  `industry_id` int NOT NULL,
  KEY `job_id` (`job_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `industry_id` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_and_internships` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_industries`
--

LOCK TABLES `internship_industries` WRITE;
/*!40000 ALTER TABLE `internship_industries` DISABLE KEYS */;
INSERT INTO `internship_industries` VALUES (1,100),(2,100),(3,100),(4,100),(5,100),(6,100),(7,101),(8,101),(9,101),(10,101),(11,101),(12,101),(13,102),(14,102),(15,102),(16,102),(17,102),(18,102),(19,103),(20,103),(21,103),(22,103),(23,103),(24,103),(25,104),(26,104),(27,104),(28,104),(29,104),(30,104),(31,105),(32,105),(33,105),(34,105),(35,105),(36,105),(37,106),(38,106),(39,106),(40,106),(41,106),(42,106),(43,104),(43,106);
/*!40000 ALTER TABLE `internship_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_and_internships`
--

DROP TABLE IF EXISTS `jobs_and_internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs_and_internships` (
  `job_id` int NOT NULL,
  `company_id` int NOT NULL,
  `degree_req_id` int NOT NULL,
  `position_title` varchar(100) NOT NULL,
  `work_desc` varchar(200) NOT NULL,
  `skills_desc` varchar(2000) DEFAULT NULL,
  `application_due_date` date DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `company_id` (`company_id`),
  KEY `degree_req` (`degree_req_id`),
  CONSTRAINT `company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `degree_req` FOREIGN KEY (`degree_req_id`) REFERENCES `degree_requirements` (`degree_req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_and_internships`
--

LOCK TABLES `jobs_and_internships` WRITE;
/*!40000 ALTER TABLE `jobs_and_internships` DISABLE KEYS */;
INSERT INTO `jobs_and_internships` VALUES (1,1,1,'Capital One: Data Analyst Intern','Internship','Curious + analytical, desire to learn',NULL,'Capital One\r'),(2,2,1,'Data Analyst Intern - Periscope','Internship','0-1 years of experience in Data Analytics field, excellent time management skills, good attitude',NULL,'Glassdoor\r'),(3,3,1,'Strategy Analyst Intern','Internship','Exceptional creativity + problem solving skills, time management, trustworthy',NULL,'LinkedIn\r'),(4,1,1,'Capital One: Business Analyst Intern','Internship','Action oriented, hardworking, curious + analytical',NULL,'\r'),(5,4,2,'Business Intelligence Analyst ','Full Time','1+ Years SQL experience, Experience validating data, Experience in storytelling to explain your work or analyses\n',NULL,'LinkedIn\r'),(6,5,3,'Product Analyst','Full Time','6+ years of data science, data analytics, business intelligence, growth or related experience. SQL fluency: ability to work with large data sets.\n',NULL,'LinkedIn\r'),(7,6,0,'Marketing Analyst ','Full Time','Proven experience in a marketing analyst role, including campaign analytics and reporting. 4+ years of experience with KPI tracking, reporting, and data visualization\n',NULL,'LinkedIn\r'),(8,7,3,'Finance Analyst','Full Time','Finance, Accounting, or related field.1-2 years of relevant experience in corporate finance, financial planning & analysis, investment banking, or other related fields. Strong working knowledge of NetSuite, OpenAir, Excel and financial modeling.\n',NULL,'LinkedIn\r'),(9,8,4,'Corporate Strategy','Internship','Things change and move pretty fast on this team and your ability to quickly adapt, change direction and think on your feet without missing a beat is essential.',NULL,'LinkedIn\r'),(10,9,5,'Junior Accountant','Full Time','Solid problem-solving skills and familiarity with accounting and financial reporting principles and practices. Proficient with Microsoft Excel.Able to multitask and prioritize work effectively. Strong business professional acumen and analytical skills. Preferred Qualifications:One year of related experience',NULL,'LinkedIn\r'),(11,10,4,'Business Development ','Internship','Experience with the following computer applications: Outlook, MS Word, Excel, PowerPoint, Adobe Acrobat.\n',NULL,'LinkedIn\r'),(12,11,6,'Economist II','Full Time','2+ years post PhD experience in conducting economic research. Proven experience in R, Python, or a related software, Ability to communicate relevant scientific insights from data to non-technical audience\n',NULL,'LinkedIn\r'),(13,12,3,'Legal Administrative Assistant','Full Time','The ideal applicant will have prior legal administrative support experience; ideally within a transactional (contract heavy) practice.','2020-12-13','Simplicity\r'),(14,12,3,'Office Assistant','Full Time','The ideal candidate will have a keen attention to detail, strong work ethic, exceptional organizational skills, and the ability to work independently as well as in a team setting.','2021-01-04','Simplicity\r'),(15,13,3,'Spring Development Operations and Research Intern','Internship','A desire to work in non-profit development. A commitment to help tear down more of the outdated laws and stereotypes that have denied LGBTQ people and people living with HIV basic protections and opportunities in every area of daily life – family, school, employment, housing, government, health care, and beyond. The ability to take direction, work independently, show initiative, and follow through are musts. Excellent attention to detail and a willingness to ask questions are also critical.',NULL,'Simplicity\r'),(16,14,7,'Legal Intern','Internship','Good legal researcher and writer','2020-12-30','Simplicity\r'),(17,15,6,'Director of Legal Services','Full Time','Two (2) years of experience involving protective order and peace order law, intimate partner violence and sexual assault law (civil and criminal), and family law','2021-02-15','Simplicity\r'),(18,16,7,'Legal Internship','Internship','• A strong educational understanding or interest in/passion for the practice of law, commercial contracts, privacy law, tech/start-up industry, etc.\r\n• Ability to leverage (or learn quickly to leverage) workplace tools such as Gmail, Slack, Excel, Salesforce, Word (and included redlining/track changes function)\r\n• Passion for LogicGate’s mission and eagerness to contribute to a fast-growing tech company.',NULL,'\r'),(19,17,1,'Information Technology ','Internship','Proven use of technology to add business value. Leadership in extra-curricular activities\n',NULL,'LinkedIn\r'),(20,18,1,'Technology Program','Internship','Minimum 3.5 GPA, Knowledge of programming languages (Java preferred), operating systems, and data processing, Familiarity with Software Development Life Cycle (Agile preferred)\n\n\n',NULL,'LinkedIn\r'),(21,19,1,'IT Inten','Internship','Java, J2EE, .NET for Software Engineering ',NULL,'LinkedIn\r'),(22,20,3,'Junior App Developer','Full Time','Experience with SQL and relational databases and JavaScript, CSS and HTML5.',NULL,'LinkedIn\r'),(23,21,3,'Web Developer ','Full Time','Minimum 5 years production full stack web development work. Proficient in HTML, CSS, and JavaScript. Experience with SQL and MongoDB\n\n',NULL,'LinkedIn\r'),(24,22,3,'Software Engineer','Full Time','3+ years of hands-on experience with AWS, Azure, GCP or similar cloud platform. Significant experience consuming and creating web services, with a good understanding of API design. Experience working with C#, Python, and React.\n\n\n',NULL,'LinkedIn\r'),(25,23,3,'Flight Dynamics Engineer','Full time','Background or coursework in orbital mechanics; demonstrated ability to work with flight dynamics tools such as FreeFlyer, STK, ODTK, or GMAT; excellent oral and written communication skills and effective technical writing ability; demonstrated analytical problem solving skills',NULL,'Glassdoor\r'),(26,24,3,'Maintenance Trainer Sr.','Full time','Attended any US Army / USMC/ USAF Instructor Certification course; Basic knowledge of working with explosives, charge calculation, explosive placement, detonation systems for rendering unexploded ordnance safe; Experience with the vehicle, marine platform, or aircraft mounted sensors and ordnance systems; Prior military experience with infantry and/or aviation systems & tactics; Experience reading engineering drawings',NULL,'Lockheed Martin\r'),(27,25,8,'Device Engineer','Full time','4+ years\' experience in the area of Semiconductor and Device Physics, or device processing, electrical characterization, and device and circuit models; 4+ years\' experience in technical problem solving',NULL,'Intel\r'),(28,25,3,'Process Engineer','Full time','3+ months of experience on wafer fabrication process and equipment; 3+ months of testing experience using design of experiments (DOE) or analyzing test data.',NULL,'Intel\r'),(29,26,3,'ASIC Design Verification Engineer','Full time','Proven experience with constrained-random, coverage-driven automated verification using module-to-system level reuse methodology (e.g. UVM, OVM, VMM, eRM), using hardware verification languages such as SystemVerilog , Vera, or e; Experience using scripting (Ruby, Perl, Python and Makefile) to automate tool flows and report generation; Experience in both hardware verification and software verification - using RTL/FPGA/Emulation platforms would be a plus; Experience with bus protocols such as AXI or AHB; Experience verifying any of embedded CPU-Subsystems, AMBA Bus protocols, PCIe, and Network-on-Chip; Proficiency in C/C++ programming; Debug experience with function/performance bugs of graphics, APU and server chips; Familiar with Linux Environment (including shell scripting and Linux GNU tools); Minimum of BS + 5 years or MS + 3 years or PhD + 1 year plus mastery of principles and methods of design verification engineering',NULL,'AMD\r'),(30,27,3,'Network Engineer/Field Operator','Internship','Demonstrated strong analytical skills, communication, leadership, and presentation skills.; Knowledge of IT, data analytics, systems performance, programming, project management, telecommunications, scripting & coding, PC and software knowledge; Experience call processing (origination, handoffs),data networking (switching/routing, TCP/IP). Lucent, Motorola, Nortel; LTE / CDMA data; telecom experience including Ethernet backhaul, fiber optic testing/configuration, computer support experience including PC hardware and configurations, troubleshooting; and power experience including Galaxy, Lorain, DC distribution systems, and troubleshooting, and/or related skills.',NULL,'Verizon\r'),(31,28,1,'Human Resources Internship - Summer 2021(Job Number: 334995)\r\n','Internship','• Results orientation: a demonstrated ability to meet commitments;\n• Intellectual agility: capable and willing to learn and apply new knowledge;\n• Client focused: understanding of the needs of customers and clients;\n• Personal capacity: accepting and welcoming of additional responsibility over time;\n• Communication skills: an ability to communicate successfully in various settings;\n• Interpersonal/team skills: able to interact with colleagues effectively;\n• Self-leadership: an ability to show initiative;\n• Work ethic: a commitment to hard work and a high ethical conduct.',NULL,'Acetalent Taleo\r'),(32,32,1,'Human Resources Intern ','Internship','• Ability to prioritize tasks and handle numerous assignments simultaneously\n• Strong Microsoft Word, Excel, and PowerPoint skills a plus\n• Intern must be able to work independently and maintain confidentiality\n',NULL,'Vital Voices\r'),(33,29,1,'Human Resources Intern ','Internship','• Solution-Oriented Focus\n• A passion for discretion and confidentiality\n• Excellent intrapersonal skills\n• Strong organizational skills\n• Positive Personality\n• Excellent Computer skills, including Microsoft and Google Suites\n• Strong written and verbal communication skills\n• Currently pursuing a degree in Human Resources or similar field',NULL,'DS Political\r'),(34,30,1,'Intern, Human Resources','Internship','Strong verbal and written communication skills, excellent organizational skills and strong attention to detail\nAbility to work collaboratively in a fast-paced team environment.\nMicrosoft Office.\nInterest in learning about the HR function of a large nonprofit organization.\ndata analysis skills or an interest in how data drives human capital decisions (preferred).\nExperience working within an HRIS system, especially Workday (preferred).\nExperience or interest in training development (preferred).',NULL,'Ultipro\r'),(35,31,1,'2021 Charles Schwab Human Resources Internship','Internship','Strong interpersonal skills.\r\nSelf-starter with ability to communicate effectively across various channels.\r\nThe courage to ask “why”You will participate in internal team meetings, as well as meetings with the business.\r\nAbility to handle multiple projects (2-3) going on at the same time, demonstrating an ability to analyze and prioritize to meet multiple business commitments.\r\nAbility to partner as a member of a project team and cultivate a strong working relationship with external co-sourcing providers and internal lines of businesses.',NULL,'Charles Schwab\r'),(36,32,4,'Human Resources Intern\r\n','Internship','Ability to prioritize tasks and handle numerous assignments simultaneously\r\nStrong Microsoft Word, Excel, and PowerPoint skills a plus\r\nIntern must be able to work independently and maintain confidentiality',NULL,'Vital Voices\r'),(37,33,1,'2021 Regenerative Medicine Summer Internship','Internship','• Research Experience','2021-01-11','\r'),(38,34,8,'Research Associate I or II - Exposure Biomarker Devices','Full Time','• Knowledge of epidemiological, environmental health and public health research methods and design\r\n• General scientific principles laboratory procedures\r\n• Proficient in use of word processing and presentation (e.g., Microsoft Word and Powerpoint) and analytical (e.g., Excel, SPSS/SAS, Access, R) software packages\r\n• Ability to meet project timelines and deadlines\r\n• Team player\r\n• Good communication\r\n• Organization\r\n• Analytical skills.','2021-01-18','\r'),(39,35,3,'Logistics Management Specialist-Integrated Health','Full Time','• Expert proficiency in Microsoft Office (Word, Excel, Power Point, Outlook, etc.) and competent business communication skills (written/oral) (may be asked to provide writing sample).',NULL,'\r'),(40,36,6,'Staff Fellow Biologist','Post Degree Fellowship','• Candidates should demonstrate proficiency in scientific writing and communication skills.','2021-01-13','\r'),(41,37,1,'Undergraduate Intern - Pre-Med ','Internship','• Demonstrated high academic performance, maturity, professionalism, initiative, attention to detail, and the ability to collaborate with others',NULL,'City of Chicago\r'),(42,38,1,'Pharmacy Intern - Summer 2021','Internship','• Work cooperatively with a wide variety of people\n• Have professional attitude in regard to motivation, cooperation, flexibility, confidentiality, ethics and personal development\n• Perceive and respond sensitively to the needs of others\n• Computer Systems/Software/Applications\n• Use Microsoft Office Products, Adobe and other similar applications','2020-01-20','Gundersen Health\r'),(43,39,1,'Summer Internship 2021 - Biomedical Engineering','Internship','• Currently working on completion of a Bachelor’s or Master’s degree in related field or equivalent; we will only consider students who plan be enrolled in a degree-seeking program after the summer\n• Cumulative 3.0 GPA or above; must be the case at the date of hire and also will be verified during background check in the spring\n• Must be permanent resident of the U.S. or U.S. citizen\n• Excellent written and verbal communication skills\n• Strong organizational, problem-solving, and analytical skills; able to manage priorities and workflow\n• Versatility, flexibility, and a willingness to work within constantly changing priorities with enthusiasm\n• Ability to exercise independent judgment\n• Proficient on basic computer programs: Microsoft Excel, Word, PowerPoint\n• Proven leadership and business acumen skills\n• Proven ability to handle multiple projects and meet deadlines\n• Strong interpersonal skills',NULL,'Stryker');
/*!40000 ALTER TABLE `jobs_and_internships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view1` AS SELECT 
 1 AS `company_id`,
 1 AS `company_name`,
 1 AS `company_city`,
 1 AS `company_state`,
 1 AS `job_id`,
 1 AS `degree_req_id`,
 1 AS `position_title`,
 1 AS `work_desc`,
 1 AS `skills_desc`,
 1 AS `application_due_date`,
 1 AS `link`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view2`
--

DROP TABLE IF EXISTS `view2`;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view2` AS SELECT 
 1 AS `industry_type`,
 1 AS `industry_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view3`
--

DROP TABLE IF EXISTS `view3`;
/*!50001 DROP VIEW IF EXISTS `view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view3` AS SELECT 
 1 AS `position_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view4`
--

DROP TABLE IF EXISTS `view4`;
/*!50001 DROP VIEW IF EXISTS `view4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view4` AS SELECT 
 1 AS `MIN(i.job_id)`,
 1 AS `position_title`,
 1 AS `work_desc`,
 1 AS `skills_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view5`
--

DROP TABLE IF EXISTS `view5`;
/*!50001 DROP VIEW IF EXISTS `view5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view5` AS SELECT 
 1 AS `industry_type`,
 1 AS `company_name`,
 1 AS `degree_req_id`,
 1 AS `position_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view6`
--

DROP TABLE IF EXISTS `view6`;
/*!50001 DROP VIEW IF EXISTS `view6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view6` AS SELECT 
 1 AS `position_title`,
 1 AS `work_desc`,
 1 AS `company_name`,
 1 AS `company_city`,
 1 AS `company_state`,
 1 AS `skills_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view7`
--

DROP TABLE IF EXISTS `view7`;
/*!50001 DROP VIEW IF EXISTS `view7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view7` AS SELECT 
 1 AS `company_name`,
 1 AS `company_city`,
 1 AS `company_state`,
 1 AS `num_internships`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view1`
--

/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `c`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`c`.`company_city` AS `company_city`,`c`.`company_state` AS `company_state`,`j`.`job_id` AS `job_id`,`j`.`degree_req_id` AS `degree_req_id`,`j`.`position_title` AS `position_title`,`j`.`work_desc` AS `work_desc`,`j`.`skills_desc` AS `skills_desc`,`j`.`application_due_date` AS `application_due_date`,`j`.`link` AS `link` from (`companies` `c` join `jobs_and_internships` `j` on((`c`.`company_id` = `j`.`company_id`))) where (`c`.`company_name` like 'Capital One%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view2`
--

/*!50001 DROP VIEW IF EXISTS `view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view2` AS select `industry`.`industry_type` AS `industry_type`,`industry`.`industry_id` AS `industry_id` from (`industry` join `internship_industries` on((`industry`.`industry_id` = `internship_industries`.`industry_id`))) where (`industry`.`industry_id` > 100) group by `industry`.`industry_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view3`
--

/*!50001 DROP VIEW IF EXISTS `view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view3` AS select `j`.`position_title` AS `position_title` from (`jobs_and_internships` `j` join `degree_requirements` `d` on((`j`.`degree_req_id` = `d`.`degree_req_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view4`
--

/*!50001 DROP VIEW IF EXISTS `view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view4` AS select min(`i`.`job_id`) AS `MIN(i.job_id)`,`j`.`position_title` AS `position_title`,`j`.`work_desc` AS `work_desc`,`j`.`skills_desc` AS `skills_desc` from (`internship_industries` `i` join `jobs_and_internships` `j` on((`i`.`job_id` = `j`.`job_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view5`
--

/*!50001 DROP VIEW IF EXISTS `view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view5` AS select `i`.`industry_type` AS `industry_type`,`c`.`company_name` AS `company_name`,`j`.`degree_req_id` AS `degree_req_id`,`j`.`position_title` AS `position_title` from (((`internship_industries` `ii` join `jobs_and_internships` `j` on((`ii`.`job_id` = `j`.`job_id`))) join `industry` `i` on((`ii`.`industry_id` = `i`.`industry_id`))) join `companies` `c` on((`j`.`company_id` = `c`.`company_id`))) where (`i`.`industry_type` = 'Medical') order by `c`.`company_name`,`j`.`position_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view6`
--

/*!50001 DROP VIEW IF EXISTS `view6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view6` AS select `ji`.`position_title` AS `position_title`,`ji`.`work_desc` AS `work_desc`,`companies_in_dc`.`company_name` AS `company_name`,`companies_in_dc`.`company_city` AS `company_city`,`companies_in_dc`.`company_state` AS `company_state`,`ji`.`skills_desc` AS `skills_desc` from ((select `companies`.`company_id` AS `company_id`,`companies`.`company_name` AS `company_name`,`companies`.`company_city` AS `company_city`,`companies`.`company_state` AS `company_state` from `companies` where ((`companies`.`company_state` = 'DC') or (`companies`.`company_state` = 'DMV'))) `companies_in_dc` join `jobs_and_internships` `ji` on((`companies_in_dc`.`company_id` = `ji`.`company_id`))) order by `ji`.`work_desc`,`companies_in_dc`.`company_name`,`companies_in_dc`.`company_state`,`companies_in_dc`.`company_city`,`ji`.`position_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view7`
--

/*!50001 DROP VIEW IF EXISTS `view7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view7` AS select `c`.`company_name` AS `company_name`,`c`.`company_city` AS `company_city`,`c`.`company_state` AS `company_state`,count(0) AS `num_internships` from (`companies` `c` join `jobs_and_internships` `ji` on((`c`.`company_id` = `ji`.`company_id`))) group by `c`.`company_id` order by `num_internships` desc,`c`.`company_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 21:55:24
