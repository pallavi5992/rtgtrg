-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 10:16 AM
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
-- Database: `ddpdashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_accessassignments`
--

CREATE TABLE `ddpdashboard_accessassignments` (
  `AccessID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ModuleID` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ModuleID`)),
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_accessassignments`
--

INSERT INTO `ddpdashboard_accessassignments` (`AccessID`, `UserID`, `ModuleID`, `ModifiedOn`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, 21, '[1,4]', '2024-01-10 14:25:37', 1, '2024-01-10 12:02:07', '2024-01-10 14:25:37'),
(2, 23, '[1,5]', '2024-01-11 16:05:30', 1, '2024-01-11 12:13:10', '2024-01-11 16:05:30'),
(3, 22, '[1,2]', '2024-01-11 16:04:51', 1, '2024-01-11 12:15:09', '2024-01-11 16:04:51'),
(4, 5, '[2,4]', '2024-01-24 11:36:50', 1, '2024-01-24 11:35:14', '2024-01-24 11:36:50'),
(5, 4, '[1,2,3]', '2024-02-01 11:11:30', 1, '2024-01-24 11:37:03', '2024-02-01 11:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_defencechallanges`
--

CREATE TABLE `ddpdashboard_defencechallanges` (
  `id` int(11) NOT NULL,
  `ChallangeName` varchar(255) NOT NULL,
  `DiscID` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_defencechallanges`
--

INSERT INTO `ddpdashboard_defencechallanges` (`id`, `ChallangeName`, `DiscID`, `createdAt`, `updatedAt`) VALUES
(1, 'Remotely Piloted Airborne Vehicles', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(2, 'Desalination/Bilge-Oily water separation', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(3, '4G/LTE Tactical LAN', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(4, 'Secure Hardware Encryption Device', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(5, 'See Through Armour', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(6, 'Active Protection System', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(7, 'AI in SCM & Logistics', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(8, 'Unmanned Surface/Underwater Vehicles', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(9, 'Carbon Fibre Winding', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(10, 'Individual Protection System', 1, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(11, 'GPS Anti Jam Device', 2, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(12, 'Countermeasures for illegal drones', 2, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(13, 'Anomaly detection in Air trajectory', 2, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(14, 'Friend or Foe Identification System', 3, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(15, 'Portable Spoof Emitter', 3, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(16, 'Four-axis stabilized antennae for C & Ku band operation', 3, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(17, 'Predictive, Preventive & Prescriptive Machine Monitoring', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(18, 'Artificial intelligence Based technique for perdiction of Atmospheric visibility', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(19, 'Remote In Flignt health nonitoring of Aircrew', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(20, 'AI based Satellite Image Analysis', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(21, 'Reduction of RCS of Naval Warships', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(22, 'Foliage Penetration Radar', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(23, 'Autonomous Underwater Swarm Drones', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(24, 'Computer Generated Targets for Virtual Training', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(25, 'Target Detection in Chaff Environment', 4, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(26, 'Long Endurance Aerial Surveillance Platform', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(27, 'HAPS (High Altitude Pseudo Satellite)', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(28, 'ALFA-S (Air Launched Flexible Asset - Swarm Drones)', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(29, 'Certified Compiler and Code Analyser based on AI Tech', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(30, 'Indigeneous Loitering Munitions', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(31, 'Next Gen Comn over existing radio network without modification to existing infrastructure', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(32, 'Integrated Mobile Camouflage System (IMCS)', 5, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(33, 'Quantum Security Keys Over200Kms', 6, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(34, 'Axial Flux BLDC Motor', 6, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(35, 'Rapid Foldable Infantry Assault Bridge', 6, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(36, 'Development Of Machine Algorithms For Maritime Aromaly Detection', 6, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(37, 'Amphibious Crawling Robot', 7, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(38, 'Defender (Data Collection,Collation and Analysis )', 7, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(39, 'Skin Spray Gun', 7, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(40, 'Helmet Mount Conformable Antenna', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(41, 'Image recognition & target tracking and non-cooperative collision avoidance system for UAVs', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(42, 'Development of Wide Band HF Modem for Networked secure voice, data & Video Communication.', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(43, 'Situational Awareness for Mechanised Columns', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(44, 'Silent Overwatch for Infantry Combat Vehicles using Fuel Cell/Alternate Fuel based Auxiliary Power', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(45, 'Development of Part Task Trainer for Mirage 2000 Upgrade aircraft', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(46, 'Non-Lethal Devices for stopping vessels at sea', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(47, 'Augmented Reality/Virtual Reality based Sortie Preparation Aid for Helicopter Pilots', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(48, 'AR Tool for Technical Type Training and Usage of Smart glasses to assist Technicians', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(49, 'Design of Active Roll Stabilisation System', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(50, 'Development of a Bore-sighting / alignment system for SU-30MkI aircraft sensors, tray and weapon adaptors', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(51, 'Find out the overlapping  percentage of two 3D', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(52, 'Artificilal Intelligence Based Radio Frequency Spectrum Management', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(53, 'Motion Pattern Classification on Online / Active data', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(54, 'Development of Inertial Energy Storage System for Naval Applications', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(55, 'Miniaturization of electronics modules by use of low power industrial devices and ruggedizing hardware & software components', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(56, 'FM CW Real time RADALT Tester', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(57, 'Development of Artificial Intelligence based Training modules for Technicians for operation and maintenance of Su-30MKI aircraft', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(58, 'EMI/EMC Shielding for bridge window glasses  on Naval Ships', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(59, 'Ar tool for technical Type Training and Usage of Smart glasses to assist Technicians', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(60, 'Enhancing UDA by the use of AI/ML or other Novel Techniques', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(61, 'Precision Guided Kit for 81 mm Mortar Ammunition', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(62, 'Adaptive Data Rate Burst Modem for Wireless Mobile Ad-Hoc Network', 8, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(63, 'Aviral- A tethered drone system for Surveillance and Monitoring Purposes', 9, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(64, 'Measuring  and Sensing  Air Disturnabce', 9, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(65, 'Monolithic Telescope based Imagary System', 9, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(66, 'Design and development of Parachute for parasailing', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(67, 'Indigenous development of Door Control Unit (DCU) and Gear Motor for automatic operation of platform screen doors at metro stations', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(68, 'Scalable Wireless Communication Network for Autonomous Mobile Platforms', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(69, 'Indigenous&cost -effective soluction for development of Axis MEMS GYRO', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(70, 'Continuous Surveillance Tied System for Mechanised', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(71, 'Improved Lighting management system for BMP-II/IIK and its Variants', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(72, 'Development to achieve uniform circular polarization in designing a cavity backed spiral antenna 1- 18GHz', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(73, 'Design and development of virtual assistant with AI/ML and AR tools, deployed onboard ships/submarines to support maintenance crew for Radar System', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(74, 'Development of AI enabled welders’ helmet', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(75, 'Development of Torque Generator Stator-800 intended for use in Gunner Sight of Tank T-90', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(76, 'Development of Torque Generator Stator-1000 intended for use in Gunner Sight of Tank T-90', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(77, 'AI Based Condition Monitoring System for Yard Assets', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(78, 'Design and development of Virtual assistant with AI/ML and AR tools ,deployed on board', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(79, 'Hand -Held Hardkill  Counter UAS System Net Done', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(80, 'Design &development of steering Console for maneuvering', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(81, 'Indigenous & cost -effective solution for development of Axis MEMS Gyro which has excellent', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(82, 'Development of Suitable Process for Composition Manufacture & Filling of Smoke Shell', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(83, 'Design of Active Hydro Pneumatic Suspensions with variable dampening characteristics to meet Different Road profiles', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(84, 'Development of equipment capable of automatic weighing and filling of powder like substance explosives within 2 mg tolerance i.e. 2(8-30 Mg)', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(85, 'design of Active  Hydro-pneumatic suspensions with variable', 10, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(86, 'Fire Fighting BOT to allow a user to control a fire fighter robot', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(87, 'Non hull penetrating connectivity solution for submarines at harbour', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(88, 'AI based collision avoidance  Systems for Unmanned vessels', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(89, 'Long Range Communication for tracking and exchanging short', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(90, 'Noise Augmentation Unit for masking submarine’s own signature when operating within the vicinity of FFCs (Friendly Foreign Countries)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(91, 'AI based FOD (Foreign Object  Debris )', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(92, 'AI Based Gun Parts Inspection System (software & hardware)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(93, 'GNSS based 3-D helo approach and landing aid for IN helicopters for assistance in approach on landing in bad weather/ reduced visibility/ night at sea states', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(94, 'Underwater Photography Noise Cancellation using Artificial Intelligence and Deep Learning', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(95, 'AI based Multi Radar Signal Conversion, Distribution & Multi Target Tracking for IN ships (particle Filter)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(96, 'Portable RCS Measuring Device that is capable of independent operation and deployable from multiple platforms (ship, boat, UAV, etc.)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(97, 'Airborne high performance lightweight COMINT System', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(98, 'Portable rugged, waterproof and lightweight torch for DC/FF activities including underwater', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(99, 'AI Based barrel crawling bot inspection Systems', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(100, 'Airborne high performance Multi-Mode Active Electronic Scanned Array(AESA Radar)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(101, 'Caged Drone with TIC for fire fighting in confined spaces', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(102, 'Depth Based Positioning System to navigationally fixing position of Submarine', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(103, 'Portable RCS Measuring Device that is capable of Independent operation', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(104, 'Underwater Communication for a Swarm of AUVs', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(105, 'Development of low cost, indigenous Morpene compound', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(106, 'Autonomous starting, running and shutting down of a Diesel Alternator suitable for charging Lithium Ion Batteries', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(107, 'Personal Locator Device with fall Detection for firefighters', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(108, 'AI Based Ship  Recognition Software using Image Processing', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(109, 'Indigenous Aluminised Fire Proximity Suit (AFPS)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(110, 'Multi Sensor real time monitoring of running machinery on-board submarine', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(111, 'Underwater Remotely Operated Vehicle (UWROV) for underwater inspection and repairs', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(112, 'Development of Submerged Submarine Launched Expendable Bathythermograph (SSLXBT)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(113, 'Development of Ship borne lightweight  Integrated ESM', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(114, 'Underwater Navigation System for AUVs', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(115, 'Development of Hydro acoustic ASW Vector Sensors which can be used with drones', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(116, '3D Forward Looking Sonar for surface platforms and Autonomous Underwater Vehicles (AUVs)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(117, 'ASIC Based  Space  Communication using software defined Antenna', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(118, 'Moisture wicking Hydrophobic Weapon Cover', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(119, 'Beamforming  ASIC based Radar  with massive MIMO', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(120, 'Disposable Light  Weight Drone (DLD)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(121, 'Digital radio frequency memory (DRFM) based simulator on a drone for AC training and radar calibration', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(122, 'Disposable Light Weight Drone (DLD) capable of providing the ground soldier with immediate situational awareness', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(123, 'Autonomous Beach Check Survey  Device', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(124, 'AI based adaptive noise cancellation for sonars of Autonomous Underwater Vehicles(AUVs) and ship borne sonar', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(125, 'Autonomous  Beach  Check  Survey Device', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(126, 'AI based Remote Monitoring System to assess wear down of Outboard Shaft Bearing', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(127, 'Development of Super Hydrophobic paint for torpedoes to reduce skin friction of water', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(128, 'AI Based FOD (Foreign Object Debris) detection and classification system for FOD management at IN Air Station', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(129, 'Fire Suppressant material that can suppress fire in the initial stage only.', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(130, 'AI enabled automatic floatation device dispersal drone', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(131, 'Smart, lightweight, retractable and easily deployable cable gangways for submarine shore supply', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(132, 'Expendable Mobile ASW Training Target (EMATT), capable of simulating the sounds and movement of a real Submarine', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(133, 'AI based ship recognition software using image processing', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(134, 'AI based collision avoidance system for unmanned vessels', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(135, 'Autonomous Weaponised Boat Swarms', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(136, 'Submarine Voyage Data Recorder (SM-VDR)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(137, 'Airborne high performance multi-mode Active Electronic Scanned Array (AESA) radar', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(138, '30 mm proximity fuze for gun mounts', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(139, 'Axial motor based portable submersible pumps in order to sustainability reduce weight', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(140, 'Remote controlled NBC monitoring BOT using suitable sensors', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(141, 'Lightweight filtration -based Breathing Apparatus', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(142, 'Axial flux motor based lightweight Electric OBM with optional fuel cells', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(143, 'AI  Based Remote Monitoring System to assess wear down of outboard shaft Bearing (A & P Bracket and outer and inner stern tube bearing)', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(144, 'Reusable off-board Missile Decoy', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(145, 'Portable Hydraulic Metal Cutter', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(146, 'Hardware enforced solution against advanced, persistent and coordinated attacks to prevent kernel mode malware', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(147, 'Aerogel based Fire Fighting proximity suit for better efficiency in fire fighting', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(148, 'Smart firefighting breathing apparatus', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(149, 'Converting Oxygen torpedoes to UW targets for ASW training and practice torpedo firings', 11, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(150, 'Intelligence Fusion Centre', 12, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(151, 'OSINT Framework', 12, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(152, 'Portable Under Water Diver Delivery System (PUDDS)', 13, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(153, 'AI Based UGV for Identifying and Marking Mines in a Minefield', 13, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(154, 'Advance Truss Bridge', 13, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(155, 'Submersible Boat', 13, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(156, 'Material Movement Shifting onboard ship over hatch door coaming', 14, '2024-01-30 14:54:21', '2024-01-30 14:54:21'),
(157, 'Nonintrusive , Multi-step & Multi-technology Fusion intrusion Detection Systems to Secure Defence Establishments', 14, '2024-01-30 14:54:21', '2024-01-30 14:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_defenceexportapis`
--

CREATE TABLE `ddpdashboard_defenceexportapis` (
  `DefenceExportID` int(11) NOT NULL,
  `fin_year` float NOT NULL,
  `dpsu` float NOT NULL,
  `cmy_cat` float NOT NULL,
  `privatecompanies` float NOT NULL,
  `rdate` datetime DEFAULT NULL,
  `sec_str` text DEFAULT NULL,
  `qtr` text DEFAULT NULL,
  `private_company_offline` float DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` float DEFAULT NULL,
  `IPAddress` float DEFAULT NULL,
  `ContractValue` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_defenceexportapis`
--

INSERT INTO `ddpdashboard_defenceexportapis` (`DefenceExportID`, `fin_year`, `dpsu`, `cmy_cat`, `privatecompanies`, `rdate`, `sec_str`, `qtr`, `private_company_offline`, `ModifiedOn`, `ModifiedBy`, `IPAddress`, `ContractValue`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1327.51, 0, 194.35, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:39:20', 1, NULL, 0, '2024-01-31 11:39:20', '2024-01-31 11:39:20'),
(2, 2, 1519.2, 0, 3163.16, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:40:53', 1, NULL, 0, '2024-01-31 11:40:53', '2024-01-31 11:40:53'),
(3, 3, 932.86, 0, 9812.91, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:41:54', 1, NULL, 0, '2024-01-31 11:41:54', '2024-01-31 11:41:54'),
(4, 4, 904.74, 203, 8007.81, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:42:39', 1, NULL, 0, '2024-01-31 11:42:39', '2024-01-31 11:42:39'),
(6, 5, 984.64, 178.94, 7271.25, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:48:40', 1, NULL, 0, '2024-01-31 11:48:40', '2024-01-31 11:48:40'),
(7, 6, 386.19, 6.7, 5965.03, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:49:44', 1, NULL, 6456.6, '2024-01-31 11:49:44', '2024-01-31 11:49:44'),
(8, 7, 385.78, 351.28, 9050.84, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:50:31', 1, NULL, 6130.26, '2024-01-31 11:50:31', '2024-01-31 11:50:31'),
(9, 8, 62.22, 0, 5279.98, '2024-01-09 05:30:00', NULL, NULL, NULL, '2024-01-31 11:51:17', 1, NULL, 2920.19, '2024-01-31 11:51:17', '2024-01-31 11:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_defenceoffsetofflines`
--

CREATE TABLE `ddpdashboard_defenceoffsetofflines` (
  `ID` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `oem_name` varchar(255) NOT NULL,
  `contract_short` varchar(255) NOT NULL,
  `contract_description` varchar(255) NOT NULL,
  `claims_submitted_cgda` float NOT NULL,
  `incomplete_claims_clarification_sought` float NOT NULL,
  `under_examination_by_domw` float NOT NULL,
  `under_examination_by_cgda` float NOT NULL,
  `claims_verified` float NOT NULL,
  `claims_rejected` float NOT NULL,
  `DataStatus` varchar(255) NOT NULL,
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `IPAddress` varchar(255) NOT NULL,
  `claim_rejected_by_domw` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_defenceoffsetofflines`
--

INSERT INTO `ddpdashboard_defenceoffsetofflines` (`ID`, `contractid`, `oem_name`, `contract_short`, `contract_description`, `claims_submitted_cgda`, `incomplete_claims_clarification_sought`, `under_examination_by_domw`, `under_examination_by_cgda`, `claims_verified`, `claims_rejected`, `DataStatus`, `ModifiedOn`, `ModifiedBy`, `IPAddress`, `claim_rejected_by_domw`, `createdAt`, `updatedAt`) VALUES
(1121, 31, 'Rafael Advanced Defence Systems Ltd', '164 LDP', '164 LDPs ', 11.41, 0, 0, 0, 10.36, 1.05, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1122, 20, 'Nexter Munitions', '20MM GUN  ALH (WSI) IA', '20 MM Ammunition and associated equipment for ALH (WSI)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1123, 57, 'Nexter Munitions', '20MM GUN  ALH (WSI) IAF\n', '20 MM Gun Ammunition (Indian Air Force)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1124, 91, 'Lockheed Martin Corporation', '24 MRH', 'Indian Navy 24 MRH', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1125, 59, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI) for Indian Army', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1126, 60, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1127, 17, 'Israel Aerospace Industries MBT Missiles Division', 'ADFCR', 'Air Defence Fire Control Radars', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1128, 90, 'The Boeing Company', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 0.33, 0, 0, 0, 0.33, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1129, 32, 'ELTA Systems Ltd', 'AMDR', '06 SETS of RADAR AMDR-2D', 17.18, 0.16, 0, 0, 17.02, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1130, 33, 'The Boeing Company', 'Apache', 'AH-64E Apache Attack Helicopters', 54.25, 0.05, 0, 0, 54.2, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1131, 54, 'ELTA Systems Ltd', 'ARSR', 'Air Route Surveillance Radar (ARSR)', 11.38, 0.09, 0, 0, 11.29, 0, 'offline', '2024-02-01 17:17:58', 1, ':ip', 0, '2024-02-01 17:17:58', '2024-02-01 17:17:58'),
(1132, 35, 'Rafael Advanced Defence Systems Ltd', 'Barak', 'BARAK 1 SAM', 35.99, 0.01, 0, 0, 22.57, 13.4, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1133, 22, 'Rafael Advanced Defence Systems Ltd', 'Barak (Optn)\n', 'Barak 1 (Option)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1134, 30, 'Israel Aerospace Industries MBT Missiles Division', 'Barak Repair', 'Augmentation of Barak System Repair Facility', 14.39, 0, 0, 0, 14.39, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1135, 2, 'Pilatus Aircraft Ltd', 'BTAP', 'Basic Trainer Aircraft Pilatus', 31.53, 7.98, 0, 0, 23.56, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1136, 46, 'Lockheed Martin Corporation', 'C-130J\n', 'C-130J-30 Aircraft (Main)', 170.49, 12.49, 0, 0, 143.96, 14.04, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1137, 41, 'The Boeing Company', 'C-17\n', 'C-17 Globemaster III Aircraft', 284.87, 37.78, 0, 0, 246.78, 0.32, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1138, 16, 'Lockheed Martin Corporation', 'C130J (OPTN)', 'C-130J Aircraft ( Option)', 159.1, 0, 0, 0, 113.18, 45.92, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1139, 34, 'The Boeing Company', 'Chinook', 'CH-47F(I) Chinook Heavy Lift Helicopters', 56.33, 0, 0, 0, 51.91, 4.42, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1140, 29, 'James Fisher Defence Ltd', 'DSRV', 'Deep Submergence and Rescue Vessel (DSRV) \n', 5.25, 0.31, 0, 0, 4.94, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1141, 53, 'Rafael Advanced Defence Systems Ltd', 'EO IR\n', 'Medium Altitude EO/IR Recee System for Jaguar', 16.59, 3.94, 0, 0, 12.58, 0.07, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1142, 38, 'Rafael Advanced Defence Systems Ltd', 'EO IR (OPTN)', 'Medium Altitude EO/IR Recce System for Jaguar Option Clause', 14.67, 0, 0, 0, 7.19, 7.49, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1143, 50, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (main)', 'FLEET TANKER (MAIN)', 48.22, 0, 0, 0, 31.72, 16.5, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1144, 45, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (option)', 'Fleet Tanker (Option)', 50.92, 0, 0, 0, 36.63, 14.3, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1145, 47, 'Israel Aerospace Industries MBT Missiles Division', 'HAROP\n', 'HAROP', 41.13, 6.04, 0, 0, 35.09, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1146, 14, 'The Boeing Company', 'HARPOON', 'HARPOON MISSILES', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1147, 43, 'Israel Aerospace Industries (IAI)', 'HERON', 'UAV HERON', 10.45, 4.58, 0, 0, 4.82, 1.05, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1148, 37, 'Israel Aerospace Industries (IAI)', 'Heron (IA)', 'Two Troops Heron UAV (Indian Army)', 63.52, 4, 0, 0, 48.77, 10.75, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1149, 18, 'RosoboronExport', 'Kamov 28(Upg)', 'KAMOV 28 MID LIFE UPGRADE', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1150, 44, 'Thales Air Systems SA', 'LLTR\n', 'Low Level Transportable Radar (LLTR)', 20.22, 0, 0, 0, 19.3, 0.92, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1151, 40, 'MBDA', 'M-2000 (MICA)', 'MICA for M2000', 78.13, 0, 0, 0, 48.37, 29.75, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1152, 3, 'Thales Systemes Aeroportes', 'M-2000 (MLU)', 'UPGRADE OF MIRAGE 2000 AIRCRAFT  ', 270.55, 28.09, 0, 0, 216.88, 25.59, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1153, 25, 'BAE Systems GCS International Limited', 'M777 ULH', '145 X 155 mm 39 calibre Ultra-Light Howitzers (M777A2)', 4.7, 0, 0, 0, 4.7, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1154, 6, 'Qinetiq  Target Systems Ltd', 'MEAT', 'MEAT', 3.22, 0.08, 0, 0, 3.14, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1155, 49, 'RosoboronExport', 'Mi-17V5\n', '80 Helicopters Mi-17V-5', 32.06, 0, 0, 0, 20.34, 11.73, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1156, 52, 'Russian Aircraft Corporation \"MIG\" Russian Federation', 'MiG-29 Upgrade\r\n', 'Extension of service Life and Upgrade of MiG-29', 200.84, 17.76, 0, 0, 183.07, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1157, 51, 'ELTA Systems Ltd', 'MPR\n', 'Medium Power Radar (MPR)', 59.45, 3.06, 0, 0, 54.44, 1.95, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1158, 10, 'MBDA UK LIMITED', 'NGCCM', 'New Generation Close Combat Missile', 12.51, 0, 0, 0, 12.51, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1159, 15, 'Rafael Advanced Defence Systems Ltd', 'NGPGM\n', 'SPICE-2000 NGPGM Weapon Systems (OPTION)', 14.49, 0.4, 0, 0, 13.67, 0.42, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1160, 77, 'Ultra Electronics Maritime Systems', 'NTDS', 'New Torpedo Defence System', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1161, 56, 'The Boeing Company', 'P-8I', 'P-8I Main', 992.11, 39.38, 0, 0, 672.89, 279.84, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1162, 27, 'The Boeing Company', 'P8I (OPTN)', 'Four(04) P-8I LRMRASW Aircraft ', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1163, 5, 'The Boeing Company', 'P8I(Training)', 'P-8I Training Solutions ', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1164, 8, 'Dassault Aviation', 'Rafale (DASSAULT)', '36 AIRCRAFT PACKAGE SUPPLY PROTOCOL OFFSET CONTRACT ( RAFALE EH/DH)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1165, 7, 'MBDA', 'Rafale (MBDA)', '36 RAFALE FIGHTER WEAPONS PACKAGE SUPPLY PROTOCOL (RAFALE EH/DH)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1166, 62, 'Elbit System Ltd', 'RS Tadiran', 'Radio Sets (RS) Tadiran', 1.01, 0, 0, 0, 1.01, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1167, 55, 'Rafael Advanced Defence Systems Ltd', 'S 2000 WS\n', 'Spice 2000 Weapon Systems', 52.5, 0.51, 0, 0, 35.07, 16.92, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1168, 21, 'Elbit System SAR and Data Links-Elisra Ltd', 'SAR', 'Search and Rescue Equipment (SAR)', 1.15, 0, 0, 0, 1.15, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1169, 11, 'Rafael Advanced Defence Systems Ltd', 'SDR', 'SDR GLOBAL LINK NETCOR', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1170, 42, 'TEXTRON SYSTEMS CORPORATION', 'SFW\n', 'SENSOR FUZED WEAPONS (SFW)', 3.18, 0.93, 0, 0, 2.25, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1171, 4, 'Elbit System Ltd', 'SRCG\n', '12.7MM STABILISED REMOTE CONTROL CONTROL GUNS (SRCG) AND AMMUNITION WITH TOT', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1172, 23, 'ELTA Systems Ltd', 'SU 30 recce POD', '12 x Recce pods(Su-30)', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1173, 36, 'Elbit System Ltd', 'TIFCS', 'Thermal Imaging Fire Control Systems (TIFCS) for T-72 Tanks', 88.87, 0.76, 0, 0, 84.72, 3.38, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1174, 1, 'Elbit Systems Electro Optics ELOP Ltd', 'TISK', 'TISK', 24.24, 0, 0, 0, 24.18, 0.06, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1175, 92, 'Airbus Defence and Space S.A.', 'TRANSPORT AIRCRAFT', 'Procurement of 56 Transport Aircraft with Associated Equipment', 0, 0, 0, 0, 0, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1176, 26, 'Elbit System Ltd', 'UMLH', 'Upgrade Medium Lift Helicopters', 3.93, 0, 0, 0, 3.93, 0, 'offline', '2024-02-01 17:17:59', 1, ':ip', 0, '2024-02-01 17:17:59', '2024-02-01 17:17:59'),
(1177, 31, 'Rafael Advanced Defence Systems Ltd', '164 LDP', '164 LDPs ', 78.39, 0, 0, 0, 77.11, 1.28, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1178, 20, 'Nexter Munitions', '20MM GUN  ALH (WSI) IA', '20 MM Ammunition and associated equipment for ALH (WSI)', 0.58, 0.03, 0, 0, 0.56, 0, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1179, 57, 'Nexter Munitions', '20MM GUN  ALH (WSI) IAF\n', '20 MM Gun Ammunition (Indian Air Force)', 0.2, 0, 0, 0, 0.2, 0, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1180, 91, 'Lockheed Martin Corporation', '24 MRH', 'Indian Navy 24 MRH', 132.97, 25.33, 0, 0.65, 106.23, 0.77, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1181, 59, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI) for Indian Army', 29.03, 0, 0, 6.21, 22.77, 0.05, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1182, 60, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI)', 12.24, 1.05, 0, 0, 11.05, 0.15, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1183, 17, 'Israel Aerospace Industries MBT Missiles Division', 'ADFCR', 'Air Defence Fire Control Radars', 190.63, 0.14, 21.54, 0, 168.28, 0.42, 'online', '2024-02-02 12:22:29', 1, '', 0.13, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1184, 90, 'The Boeing Company', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 17.26, 0, 0, 0, 17.26, 0, 'online', '2024-02-02 12:22:29', 1, '', 0, '2024-02-02 12:22:29', '2024-02-02 12:22:29'),
(1185, 32, 'ELTA Systems Ltd', 'AMDR', '06 SETS of RADAR AMDR-2D', 4.41, 0, 0, 0, 0.1, 4.31, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1186, 33, 'The Boeing Company', 'Apache', 'AH-64E Apache Attack Helicopters', 410.87, 0, 0, 0.12, 403.79, 6.96, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1187, 54, 'ELTA Systems Ltd', 'ARSR', 'Air Route Surveillance Radar (ARSR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1188, 35, 'Rafael Advanced Defence Systems Ltd', 'Barak', 'BARAK 1 SAM', 20.47, 0, 0, 0, 20.3, 0.18, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1189, 22, 'Rafael Advanced Defence Systems Ltd', 'Barak (Optn)\n', 'Barak 1 (Option)', 22.83, 0, 1.02, 0, 21.7, 0.11, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1190, 30, 'Israel Aerospace Industries MBT Missiles Division', 'Barak Repair', 'Augmentation of Barak System Repair Facility', 14.28, 0, 0, 0, 14.28, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1191, 2, 'Pilatus Aircraft Ltd', 'BTAP', 'Basic Trainer Aircraft Pilatus', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1192, 46, 'Lockheed Martin Corporation', 'C-130J\n', 'C-130J-30 Aircraft (Main)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1193, 41, 'The Boeing Company', 'C-17\n', 'C-17 Globemaster III Aircraft', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1194, 16, 'Lockheed Martin Corporation', 'C130J (OPTN)', 'C-130J Aircraft ( Option)', 76.07, 0, 0, 0, 71.53, 4.54, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1195, 34, 'The Boeing Company', 'Chinook', 'CH-47F(I) Chinook Heavy Lift Helicopters', 318.45, 0, 0, 0, 308.95, 9.5, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1196, 29, 'James Fisher Defence Ltd', 'DSRV', 'Deep Submergence and Rescue Vessel (DSRV) \n', 8.35, 0, 0, 0.03, 8.29, 0.03, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1197, 53, 'Rafael Advanced Defence Systems Ltd', 'EO IR\n', 'Medium Altitude EO/IR Recee System for Jaguar', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1198, 38, 'Rafael Advanced Defence Systems Ltd', 'EO IR (OPTN)', 'Medium Altitude EO/IR Recce System for Jaguar Option Clause', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1199, 50, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (main)', 'FLEET TANKER (MAIN)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1200, 45, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (option)', 'Fleet Tanker (Option)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1201, 47, 'Israel Aerospace Industries MBT Missiles Division', 'HAROP\n', 'HAROP', 9.56, 0.18, 0, 0, 9.37, 0.01, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1202, 14, 'The Boeing Company', 'HARPOON', 'HARPOON MISSILES', 32.45, 0.11, 0, 0, 32.24, 0.11, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1203, 43, 'Israel Aerospace Industries (IAI)', 'HERON', 'UAV HERON', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1204, 37, 'Israel Aerospace Industries (IAI)', 'Heron (IA)', 'Two Troops Heron UAV (Indian Army)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1205, 18, 'RosoboronExport', 'Kamov 28(Upg)', 'KAMOV 28 MID LIFE UPGRADE', 19.99, 0, 0, 3.21, 16.78, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1206, 44, 'Thales Air Systems SA', 'LLTR\n', 'Low Level Transportable Radar (LLTR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1207, 40, 'MBDA', 'M-2000 (MICA)', 'MICA for M2000', 33.6, 0, 0, 0, 33.58, 0.02, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1208, 3, 'Thales Systemes Aeroportes', 'M-2000 (MLU)', 'UPGRADE OF MIRAGE 2000 AIRCRAFT  ', 229.74, 69.92, 0, 0, 145.07, 14.75, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1209, 25, 'BAE Systems GCS International Limited', 'M777 ULH', '145 X 155 mm 39 calibre Ultra-Light Howitzers (M777A2)', 149.01, 0, 0, 0, 149, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1210, 6, 'Qinetiq  Target Systems Ltd', 'MEAT', 'MEAT', 2.25, 0.03, 0, 0, 2.1, 0.12, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1211, 49, 'RosoboronExport', 'Mi-17V5\n', '80 Helicopters Mi-17V-5', 223, 0, 0, 0, 223, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1212, 52, 'Russian Aircraft Corporation \"MIG\" Russian Federation', 'MiG-29 Upgrade\r\n', 'Extension of service Life and Upgrade of MiG-29', 99.49, 0, 15.49, 0, 83.99, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1213, 51, 'ELTA Systems Ltd', 'MPR\n', 'Medium Power Radar (MPR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:30', 1, '', 0, '2024-02-02 12:22:30', '2024-02-02 12:22:30'),
(1214, 10, 'MBDA UK LIMITED', 'NGCCM', 'New Generation Close Combat Missile', 19.06, 0.04, 0, 0.27, 18.75, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1215, 15, 'Rafael Advanced Defence Systems Ltd', 'NGPGM\n', 'SPICE-2000 NGPGM Weapon Systems (OPTION)', 17.39, 0, 0, 0, 16.49, 0.9, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1216, 77, 'Ultra Electronics Maritime Systems', 'NTDS', 'New Torpedo Defence System', 302.17, 0, 0, 0, 6.42, 295.75, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1217, 56, 'The Boeing Company', 'P-8I', 'P-8I Main', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1218, 27, 'The Boeing Company', 'P8I (OPTN)', 'Four(04) P-8I LRMRASW Aircraft ', 295.68, 9.74, 0, 103.11, 180.5, 2.34, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1219, 5, 'The Boeing Company', 'P8I(Training)', 'P-8I Training Solutions ', 55.14, 0, 0, 0, 55.14, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1220, 8, 'Dassault Aviation', 'Rafale (DASSAULT)', '36 AIRCRAFT PACKAGE SUPPLY PROTOCOL OFFSET CONTRACT ( RAFALE EH/DH)', 906.84, 52.37, 151.44, 0.29, 379.31, 4.38, 'online', '2024-02-02 12:22:31', 1, '', 16.3, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1221, 7, 'MBDA', 'Rafale (MBDA)', '36 RAFALE FIGHTER WEAPONS PACKAGE SUPPLY PROTOCOL (RAFALE EH/DH)', 421.81, 0, 21.28, 17.39, 382.99, 0.16, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1222, 62, 'Elbit System Ltd', 'RS Tadiran', 'Radio Sets (RS) Tadiran', 24.48, 0, 0, 0, 24.48, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1223, 55, 'Rafael Advanced Defence Systems Ltd', 'S 2000 WS\n', 'Spice 2000 Weapon Systems', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1224, 21, 'Elbit System SAR and Data Links-Elisra Ltd', 'SAR', 'Search and Rescue Equipment (SAR)', 18.52, 0, 0, 0, 18.45, 0.06, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1225, 11, 'Rafael Advanced Defence Systems Ltd', 'SDR', 'SDR GLOBAL LINK NETCOR', 22.52, 0, 0.17, 0, 22.29, 0.06, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1226, 42, 'TEXTRON SYSTEMS CORPORATION', 'SFW\n', 'SENSOR FUZED WEAPONS (SFW)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1227, 4, 'Elbit System Ltd', 'SRCG\n', '12.7MM STABILISED REMOTE CONTROL CONTROL GUNS (SRCG) AND AMMUNITION WITH TOT', 53.04, 0.33, 0, 3.32, 49.08, 0.32, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1228, 23, 'ELTA Systems Ltd', 'SU 30 recce POD', '12 x Recce pods(Su-30)', 59.48, 0, 0, 0, 59.42, 0.06, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1229, 36, 'Elbit System Ltd', 'TIFCS', 'Thermal Imaging Fire Control Systems (TIFCS) for T-72 Tanks', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1230, 1, 'Elbit Systems Electro Optics ELOP Ltd', 'TISK', 'TISK', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1231, 92, 'Airbus Defence and Space S.A.', 'TRANSPORT AIRCRAFT', 'Procurement of 56 Transport Aircraft with Associated Equipment', 25.31, 0, 0, 0, 25.31, 0, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31'),
(1232, 26, 'Elbit System Ltd', 'UMLH', 'Upgrade Medium Lift Helicopters', 13.59, 0.08, 0, 0, 13.22, 0.29, 'online', '2024-02-02 12:22:31', 1, '', 0, '2024-02-02 12:22:31', '2024-02-02 12:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_defenceoffsetonlines`
--

CREATE TABLE `ddpdashboard_defenceoffsetonlines` (
  `ID` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `oem_name` varchar(255) NOT NULL,
  `contract_short` varchar(255) NOT NULL,
  `contract_description` varchar(255) NOT NULL,
  `claims_submitted_cgda` float NOT NULL,
  `incomplete_claims_clarification_sought` float NOT NULL,
  `under_examination_by_domw` float NOT NULL,
  `under_examination_by_cgda` float NOT NULL,
  `claims_verified` float NOT NULL,
  `claims_rejected` float NOT NULL,
  `DataStatus` varchar(255) NOT NULL,
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `IPAddress` varchar(255) NOT NULL,
  `claim_rejected_by_domw` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_defenceoffsetonlines`
--

INSERT INTO `ddpdashboard_defenceoffsetonlines` (`ID`, `contractid`, `oem_name`, `contract_short`, `contract_description`, `claims_submitted_cgda`, `incomplete_claims_clarification_sought`, `under_examination_by_domw`, `under_examination_by_cgda`, `claims_verified`, `claims_rejected`, `DataStatus`, `ModifiedOn`, `ModifiedBy`, `IPAddress`, `claim_rejected_by_domw`, `createdAt`, `updatedAt`) VALUES
(1, 31, 'Rafael Advanced Defence Systems Ltd', '164 LDP', '164 LDPs ', 78.39, 0, 0, 0, 77.11, 1.28, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(2, 20, 'Nexter Munitions', '20MM GUN  ALH (WSI) IA', '20 MM Ammunition and associated equipment for ALH (WSI)', 0.58, 0.03, 0, 0, 0.56, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(3, 57, 'Nexter Munitions', '20MM GUN  ALH (WSI) IAF\n', '20 MM Gun Ammunition (Indian Air Force)', 0.2, 0, 0, 0, 0.2, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(4, 91, 'Lockheed Martin Corporation', '24 MRH', 'Indian Navy 24 MRH', 132.97, 25.33, 0, 0.65, 106.23, 0.77, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(5, 59, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI) for Indian Army', 29.03, 0, 0, 6.21, 22.77, 0.05, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(6, 60, 'Thales Belgium S.A', '70MM', 'Procurement of 70 MM Rockets and Associated Equipment for ALH(WSI)', 12.24, 1.05, 0, 0, 11.05, 0.15, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(7, 17, 'Israel Aerospace Industries MBT Missiles Division', 'ADFCR', 'Air Defence Fire Control Radars', 190.63, 0.14, 21.54, 0, 168.28, 0.42, 'online', '2024-02-02 12:27:30', 1, '', 0.13, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(8, 90, 'The Boeing Company', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 'AH-64E APACHE ATTACK HELICOPTERS (OPTION CLAUSE)', 17.26, 0, 0, 0, 17.26, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(9, 32, 'ELTA Systems Ltd', 'AMDR', '06 SETS of RADAR AMDR-2D', 4.41, 0, 0, 0, 0.1, 4.31, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(10, 33, 'The Boeing Company', 'Apache', 'AH-64E Apache Attack Helicopters', 410.87, 0, 0, 0.12, 403.79, 6.96, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(11, 54, 'ELTA Systems Ltd', 'ARSR', 'Air Route Surveillance Radar (ARSR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(12, 35, 'Rafael Advanced Defence Systems Ltd', 'Barak', 'BARAK 1 SAM', 20.47, 0, 0, 0, 20.3, 0.18, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(13, 22, 'Rafael Advanced Defence Systems Ltd', 'Barak (Optn)\n', 'Barak 1 (Option)', 22.83, 0, 1.02, 0, 21.7, 0.11, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(14, 30, 'Israel Aerospace Industries MBT Missiles Division', 'Barak Repair', 'Augmentation of Barak System Repair Facility', 14.28, 0, 0, 0, 14.28, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(15, 2, 'Pilatus Aircraft Ltd', 'BTAP', 'Basic Trainer Aircraft Pilatus', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(16, 46, 'Lockheed Martin Corporation', 'C-130J\n', 'C-130J-30 Aircraft (Main)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(17, 41, 'The Boeing Company', 'C-17\n', 'C-17 Globemaster III Aircraft', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(18, 16, 'Lockheed Martin Corporation', 'C130J (OPTN)', 'C-130J Aircraft ( Option)', 76.07, 0, 0, 0, 71.53, 4.54, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(19, 34, 'The Boeing Company', 'Chinook', 'CH-47F(I) Chinook Heavy Lift Helicopters', 318.45, 0, 0, 0, 308.95, 9.5, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(20, 29, 'James Fisher Defence Ltd', 'DSRV', 'Deep Submergence and Rescue Vessel (DSRV) \n', 8.35, 0, 0, 0.03, 8.29, 0.03, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(21, 53, 'Rafael Advanced Defence Systems Ltd', 'EO IR\n', 'Medium Altitude EO/IR Recee System for Jaguar', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(22, 38, 'Rafael Advanced Defence Systems Ltd', 'EO IR (OPTN)', 'Medium Altitude EO/IR Recce System for Jaguar Option Clause', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(23, 50, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (main)', 'FLEET TANKER (MAIN)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(24, 45, 'Fincantieri - Cantieri Navalli Italiani S P A', 'Fleet tanker (option)', 'Fleet Tanker (Option)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(25, 47, 'Israel Aerospace Industries MBT Missiles Division', 'HAROP\n', 'HAROP', 9.56, 0.18, 0, 0, 9.37, 0.01, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(26, 14, 'The Boeing Company', 'HARPOON', 'HARPOON MISSILES', 32.45, 0.11, 0, 0, 32.24, 0.11, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(27, 43, 'Israel Aerospace Industries (IAI)', 'HERON', 'UAV HERON', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(28, 37, 'Israel Aerospace Industries (IAI)', 'Heron (IA)', 'Two Troops Heron UAV (Indian Army)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(29, 18, 'RosoboronExport', 'Kamov 28(Upg)', 'KAMOV 28 MID LIFE UPGRADE', 19.99, 0, 0, 3.21, 16.78, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(30, 44, 'Thales Air Systems SA', 'LLTR\n', 'Low Level Transportable Radar (LLTR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:30', 1, '', 0, '2024-02-02 12:27:30', '2024-02-02 12:27:30'),
(31, 40, 'MBDA', 'M-2000 (MICA)', 'MICA for M2000', 33.6, 0, 0, 0, 33.58, 0.02, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(32, 3, 'Thales Systemes Aeroportes', 'M-2000 (MLU)', 'UPGRADE OF MIRAGE 2000 AIRCRAFT  ', 229.74, 69.92, 0, 0, 145.07, 14.75, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(33, 25, 'BAE Systems GCS International Limited', 'M777 ULH', '145 X 155 mm 39 calibre Ultra-Light Howitzers (M777A2)', 149.01, 0, 0, 0, 149, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(34, 6, 'Qinetiq  Target Systems Ltd', 'MEAT', 'MEAT', 2.25, 0.03, 0, 0, 2.1, 0.12, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(35, 49, 'RosoboronExport', 'Mi-17V5\n', '80 Helicopters Mi-17V-5', 223, 0, 0, 0, 223, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(36, 52, 'Russian Aircraft Corporation \"MIG\" Russian Federation', 'MiG-29 Upgrade\r\n', 'Extension of service Life and Upgrade of MiG-29', 99.49, 0, 15.49, 0, 83.99, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(37, 51, 'ELTA Systems Ltd', 'MPR\n', 'Medium Power Radar (MPR)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(38, 10, 'MBDA UK LIMITED', 'NGCCM', 'New Generation Close Combat Missile', 19.06, 0.04, 0, 0.27, 18.75, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(39, 15, 'Rafael Advanced Defence Systems Ltd', 'NGPGM\n', 'SPICE-2000 NGPGM Weapon Systems (OPTION)', 17.39, 0, 0, 0, 16.49, 0.9, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(40, 77, 'Ultra Electronics Maritime Systems', 'NTDS', 'New Torpedo Defence System', 302.17, 0, 0, 0, 6.42, 295.75, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(41, 56, 'The Boeing Company', 'P-8I', 'P-8I Main', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(42, 27, 'The Boeing Company', 'P8I (OPTN)', 'Four(04) P-8I LRMRASW Aircraft ', 295.68, 9.74, 0, 103.11, 180.5, 2.34, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(43, 5, 'The Boeing Company', 'P8I(Training)', 'P-8I Training Solutions ', 55.14, 0, 0, 0, 55.14, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(44, 8, 'Dassault Aviation', 'Rafale (DASSAULT)', '36 AIRCRAFT PACKAGE SUPPLY PROTOCOL OFFSET CONTRACT ( RAFALE EH/DH)', 906.84, 52.37, 151.44, 0.29, 379.31, 4.38, 'online', '2024-02-02 12:27:31', 1, '', 16.3, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(45, 7, 'MBDA', 'Rafale (MBDA)', '36 RAFALE FIGHTER WEAPONS PACKAGE SUPPLY PROTOCOL (RAFALE EH/DH)', 421.81, 0, 21.28, 17.39, 382.99, 0.16, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(46, 62, 'Elbit System Ltd', 'RS Tadiran', 'Radio Sets (RS) Tadiran', 24.48, 0, 0, 0, 24.48, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(47, 55, 'Rafael Advanced Defence Systems Ltd', 'S 2000 WS\n', 'Spice 2000 Weapon Systems', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(48, 21, 'Elbit System SAR and Data Links-Elisra Ltd', 'SAR', 'Search and Rescue Equipment (SAR)', 18.52, 0, 0, 0, 18.45, 0.06, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(49, 11, 'Rafael Advanced Defence Systems Ltd', 'SDR', 'SDR GLOBAL LINK NETCOR', 22.52, 0, 0.17, 0, 22.29, 0.06, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(50, 42, 'TEXTRON SYSTEMS CORPORATION', 'SFW\n', 'SENSOR FUZED WEAPONS (SFW)', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(51, 4, 'Elbit System Ltd', 'SRCG\n', '12.7MM STABILISED REMOTE CONTROL CONTROL GUNS (SRCG) AND AMMUNITION WITH TOT', 53.04, 0.33, 0, 3.32, 49.08, 0.32, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(52, 23, 'ELTA Systems Ltd', 'SU 30 recce POD', '12 x Recce pods(Su-30)', 59.48, 0, 0, 0, 59.42, 0.06, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(53, 36, 'Elbit System Ltd', 'TIFCS', 'Thermal Imaging Fire Control Systems (TIFCS) for T-72 Tanks', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(54, 1, 'Elbit Systems Electro Optics ELOP Ltd', 'TISK', 'TISK', 0, 0, 0, 0, 0, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(55, 92, 'Airbus Defence and Space S.A.', 'TRANSPORT AIRCRAFT', 'Procurement of 56 Transport Aircraft with Associated Equipment', 25.31, 0, 0, 0, 25.31, 0, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31'),
(56, 26, 'Elbit System Ltd', 'UMLH', 'Upgrade Medium Lift Helicopters', 13.59, 0.08, 0, 0, 13.22, 0.29, 'online', '2024-02-02 12:27:31', 1, '', 0, '2024-02-02 12:27:31', '2024-02-02 12:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_discmasters`
--

CREATE TABLE `ddpdashboard_discmasters` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_discmasters`
--

INSERT INTO `ddpdashboard_discmasters` (`id`, `Name`, `createdAt`, `updatedAt`) VALUES
(1, 'DISC 1', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(2, 'DISC 2', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(3, 'DISC 3', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(4, 'DISC 4', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(5, 'OC 1.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(6, 'OC 2.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(7, 'OC 3.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(8, 'DISC 5', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(9, 'OC 4.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(10, 'DISC 6', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(11, 'DISC 7', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(12, 'OC 5.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(13, 'PRIME', '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(14, 'OC 6.0', '2024-01-12 12:56:03', '2024-01-16 12:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_exportperformances`
--

CREATE TABLE `ddpdashboard_exportperformances` (
  `ExportPrID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `YearID` int(11) NOT NULL,
  `ExportValue` int(11) NOT NULL,
  `ExportOrBook` text NOT NULL,
  `SelectedMonth` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_indigenizations`
--

CREATE TABLE `ddpdashboard_indigenizations` (
  `IndigenizationID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `ProjectName` text NOT NULL,
  `ProjectValue` int(11) NOT NULL,
  `SelectedMonth` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_indigenizations`
--

INSERT INTO `ddpdashboard_indigenizations` (`IndigenizationID`, `OrganisationID`, `ProjectName`, `ProjectValue`, `SelectedMonth`, `Remarks`, `Deleted`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2', 5000, '2022-06', 'test test test', '1', 1, '2024-02-07 16:16:16', '2024-02-07 16:16:16'),
(2, 2, '2', 5000, '2022-06', 'test test test', '1', 1, '2024-02-07 16:18:57', '2024-02-07 16:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_locations`
--

CREATE TABLE `ddpdashboard_locations` (
  `LocationId` int(11) NOT NULL,
  `LocationName` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-notDeleted,1-deleted',
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_locations`
--

INSERT INTO `ddpdashboard_locations` (`LocationId`, `LocationName`, `Deleted`, `ModifiedOn`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(3, 'Tamil Nadu', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(9, 'Uttar Pradesh', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(91, 'Delhi', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(92, 'Agra', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(93, 'Ahmedabad', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(94, 'AHMEDNAGAR', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(95, 'Amritsar', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(96, 'Bengaluru', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(97, 'Bhilwara', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(98, 'Bhopal', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(99, 'Chennai', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(100, 'Coimbotare', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(101, 'Delhi', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(102, 'Dharwad', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(103, 'Dwarka', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(104, 'Ernakulam', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(105, 'Ghaziabad', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(106, 'Goa', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(107, 'Greater kailash -1', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(108, 'Greater Noida', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(109, 'Gurgaon', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(110, 'Gurugram', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(111, 'Guwahati', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(112, 'Haryana', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(113, 'Hauz Khas', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(114, 'Hyderabad', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(115, 'Indore', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(117, 'Jodhpur', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(118, 'Kochi', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(119, 'Kolkata', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(120, 'Mumbai', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(121, 'Mysore', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(122, 'Nagur', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(123, 'New Dehi', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(124, 'Noida', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(127, 'Odisha', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(128, 'Ongole', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(130, 'Palakkab', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(131, 'Palghar', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(132, 'Pune', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(133, 'Rajarhat', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(134, 'Ramnagar', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(135, 'rangareddy', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(136, 'South delhi', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(137, 'Thane', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(138, 'Thanjavur', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(139, 'Tiruchirappalli', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(140, 'Trichy', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(141, 'Vikas Marg', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(142, 'Vikhroli', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(145, 'Virudhunagar', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53'),
(146, 'Visakhapatnam', '0', '2023-04-25 16:58:31', 1, '2024-01-19 11:53:53', '2024-01-19 11:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_modernisationcapexes`
--

CREATE TABLE `ddpdashboard_modernisationcapexes` (
  `ModernCapexID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `YearID` int(11) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_moduleconfigurations`
--

CREATE TABLE `ddpdashboard_moduleconfigurations` (
  `ConfigID` int(11) NOT NULL,
  `ModuleID` int(11) NOT NULL,
  `DataYearID` int(11) NOT NULL,
  `Target` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`Target`)),
  `TargetYearID` int(11) NOT NULL,
  `DataRefershFrequency` int(11) NOT NULL,
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `As_On_Date` datetime DEFAULT NULL,
  `StartupEngaged` int(11) DEFAULT NULL,
  `ContractsSigned` int(11) DEFAULT NULL,
  `ConsolidatedMonth` varchar(255) DEFAULT NULL,
  `TargetFor` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_moduleconfigurations`
--

INSERT INTO `ddpdashboard_moduleconfigurations` (`ConfigID`, `ModuleID`, `DataYearID`, `Target`, `TargetYearID`, `DataRefershFrequency`, `ModifiedOn`, `ModifiedBy`, `As_On_Date`, `StartupEngaged`, `ContractsSigned`, `ConsolidatedMonth`, `TargetFor`, `createdAt`, `updatedAt`) VALUES
(1, 4, 1, '[{\"Target\":\"\"}]', 1, 2, '2024-01-19 17:07:41', 1, '2024-01-19 05:30:00', 0, 0, '', NULL, '2024-01-19 11:53:53', '2024-01-19 17:07:41'),
(2, 1, 1, '[{\"Target\":\"11111\"}]', 1, 1, '2024-01-19 17:08:53', 1, '2024-01-15 05:30:00', 0, 0, '', NULL, '2024-01-19 17:08:53', '2024-01-19 17:08:53'),
(3, 2, 1, '[{\"Target\":\"11111\"}]', 2, 1, '2024-01-19 17:10:26', 1, '2024-01-25 05:30:00', 11, 11, '', NULL, '2024-01-19 17:10:26', '2024-01-19 17:10:26'),
(4, 3, 3, '[{\"Target\":\"11111\"},{\"Target\":\"123\"}]', 6, 2, '2024-01-19 17:13:57', 1, '2024-01-20 05:30:00', 0, 0, '', NULL, '2024-01-19 17:13:57', '2024-01-19 17:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_modules`
--

CREATE TABLE `ddpdashboard_modules` (
  `ModuleID` int(11) NOT NULL,
  `ModuleName` varchar(255) NOT NULL,
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_modules`
--

INSERT INTO `ddpdashboard_modules` (`ModuleID`, `ModuleName`, `ModifiedOn`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, 'Defence Export', '2024-01-08 12:42:50', 1, '2024-01-08 12:42:50', '2024-01-08 12:42:50'),
(2, 'Defence Offset', '2024-01-08 12:43:17', 1, '2024-01-08 12:43:17', '2024-01-08 12:43:17'),
(3, 'Defence Production', '2024-01-08 12:43:30', 1, '2024-01-08 12:43:30', '2024-01-08 12:43:30'),
(4, 'Mission Raksha Gyan Shakti', '2024-01-08 12:43:44', 1, '2024-01-08 12:43:44', '2024-01-08 12:43:44'),
(5, 'Make Project', '2024-01-08 12:44:02', 1, '2024-01-08 12:44:02', '2024-01-08 12:44:02'),
(6, 'Startups In Defence', '2024-01-08 12:44:17', 1, '2024-01-08 12:44:17', '2024-01-08 12:44:17'),
(7, 'Uttar Pradesh Defence Corridor', '2024-01-08 12:44:29', 1, '2024-01-08 12:44:29', '2024-01-08 12:44:29'),
(8, 'Tamil Nadu Defence Corridor', '2024-01-08 12:44:47', 1, '2024-01-08 12:44:47', '2024-01-08 12:44:47'),
(9, 'AI In Defence', '2024-01-08 12:45:06', 1, '2024-01-08 12:45:06', '2024-01-08 12:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_newprojects`
--

CREATE TABLE `ddpdashboard_newprojects` (
  `ProjectID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `ProjectName` varchar(255) NOT NULL,
  `ProjectValue` int(11) NOT NULL,
  `SelectedMonth` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_orderbookpositions`
--

CREATE TABLE `ddpdashboard_orderbookpositions` (
  `OrderBookID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `NoOfOrderBookFrom` int(11) NOT NULL,
  `NoOfOrderBookTo` int(11) NOT NULL,
  `SelectedMonth` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_orderbookpositions`
--

INSERT INTO `ddpdashboard_orderbookpositions` (`OrderBookID`, `OrganisationID`, `NoOfOrderBookFrom`, `NoOfOrderBookTo`, `SelectedMonth`, `Remarks`, `Deleted`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(2, 2, 1200, 1800, '2023-09', 'pallavi test test', '1', 1, '2024-02-01 17:22:21', '2024-02-01 17:22:52'),
(3, 2, 400, 600, '2023-06', 'test test test', '1', 1, '2024-02-01 17:23:40', '2024-02-01 17:23:40'),
(4, 2, 400, 600, '2023-02', 'test test test', '1', 1, '2024-02-01 17:23:46', '2024-02-01 17:23:46'),
(5, 2, 400, 600, '2023-05', 'test test test', '1', 1, '2024-02-05 18:30:18', '2024-02-05 18:30:18'),
(7, 1, 400, 600, '2023-09', 'test test test', '1', 1, '2024-02-05 18:39:29', '2024-02-05 18:39:29'),
(8, 1, 400, 600, '2023-90', 'test test test', '1', 1, '2024-02-07 16:22:46', '2024-02-07 16:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_organisations`
--

CREATE TABLE `ddpdashboard_organisations` (
  `OrganisationID` int(11) NOT NULL,
  `PublicSector` enum('0','1') DEFAULT '1' COMMENT '0-PrivateSector 1-PublicSector',
  `Code` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedOn` datetime NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_organisations`
--

INSERT INTO `ddpdashboard_organisations` (`OrganisationID`, `PublicSector`, `Code`, `Name`, `Deleted`, `ModifiedOn`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, '0', 'airtel', 'Airtel', '1', '2024-01-12 12:55:00', 1, '2024-01-12 12:55:00', '2024-01-16 12:24:46'),
(2, '0', 'airtel', 'Airtel', '0', '2024-01-12 12:55:20', 1, '2024-01-12 12:55:20', '2024-01-15 15:23:12'),
(3, '0', 'voda', 'Vodaphone', '0', '2024-01-12 12:56:03', 1, '2024-01-12 12:56:03', '2024-01-16 12:49:37'),
(4, '0', 'volancs', 'Volancs Private Limited', '0', '2024-01-12 12:56:15', 1, '2024-01-12 12:56:15', '2024-01-16 12:49:20'),
(5, '1', 'bpl', 'Bharat Petrolium Limited', '0', '2024-01-12 12:59:33', 1, '2024-01-12 12:59:33', '2024-01-16 12:48:11'),
(6, '0', 'jio', 'Jio', '0', '2024-01-15 10:07:02', 1, '2024-01-15 10:07:02', '2024-01-16 12:49:56'),
(7, '1', 'hal', 'Hindustan Aironetical Limited', '0', '2024-01-15 16:10:10', 1, '2024-01-15 16:10:10', '2024-01-16 12:48:46'),
(8, '0', 'idea', 'Idea', '0', '2024-01-15 16:10:11', 1, '2024-01-15 16:10:11', '2024-01-16 12:47:34'),
(9, '1', 'ntpc', 'National Thermal Power Corporation', '0', '2024-01-15 16:10:12', 1, '2024-01-15 16:10:12', '2024-01-16 12:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_productionperformances`
--

CREATE TABLE `ddpdashboard_productionperformances` (
  `ProductionID` int(11) NOT NULL,
  `YearID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `VOP` int(11) NOT NULL,
  `Quarter` text NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_profitabilities`
--

CREATE TABLE `ddpdashboard_profitabilities` (
  `ProfitabilityID` int(11) NOT NULL,
  `OrganisationID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `YearID` int(11) NOT NULL,
  `PreviousFY` varchar(255) NOT NULL,
  `Quarter` text NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_roles`
--

CREATE TABLE `ddpdashboard_roles` (
  `RoleId` int(11) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `isActive` enum('0','1') DEFAULT '1' COMMENT '0-pending,1-active',
  `CreatedOn` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_roles`
--

INSERT INTO `ddpdashboard_roles` (`RoleId`, `Role`, `Remarks`, `isActive`, `CreatedOn`, `CreatedBy`, `ModifiedOn`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, 'SuperAdmin', NULL, '1', '2024-01-04 15:10:46', 1, NULL, NULL, '2024-01-04 15:10:46', '2024-01-04 15:10:46'),
(2, 'Admin', NULL, '1', '2024-01-04 15:11:22', 1, NULL, NULL, '2024-01-04 15:11:22', '2024-01-04 15:11:22'),
(3, 'Unit', NULL, '1', '2024-01-04 15:11:36', 1, NULL, NULL, '2024-01-04 15:11:36', '2024-01-04 15:11:36'),
(4, 'Organization', NULL, '1', '2024-01-04 15:14:45', 1, NULL, NULL, '2024-01-04 15:14:45', '2024-01-04 15:14:45'),
(5, 'Factory', NULL, '1', '2024-01-04 15:15:01', 1, NULL, NULL, '2024-01-04 15:15:01', '2024-01-04 15:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_tblyears`
--

CREATE TABLE `ddpdashboard_tblyears` (
  `YearID` int(11) NOT NULL,
  `Year` varchar(255) DEFAULT NULL,
  `YearDefenceOffsets` varchar(255) DEFAULT NULL,
  `YearMake2Projects` varchar(255) DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_tblyears`
--

INSERT INTO `ddpdashboard_tblyears` (`YearID`, `Year`, `YearDefenceOffsets`, `YearMake2Projects`, `ModifiedBy`, `createdAt`, `updatedAt`) VALUES
(1, '2016-2017', NULL, NULL, 0, '2024-01-23 17:34:17', '2024-01-23 17:34:17'),
(2, '2017-2018', NULL, NULL, 0, '2024-01-23 17:34:17', '2024-01-23 17:34:17'),
(3, '2018-2019', NULL, NULL, 0, '2024-01-23 17:35:38', '2024-01-23 17:35:38'),
(4, '2019-2020', NULL, NULL, 0, '2024-01-23 17:35:38', '2024-01-23 17:35:38'),
(5, '2020-2021', NULL, NULL, 0, '2024-01-23 17:36:04', '2024-01-23 17:36:04'),
(6, '2021-2022', NULL, NULL, 0, '2024-01-23 17:36:04', '2024-01-23 17:36:04'),
(7, '2022-2023', NULL, NULL, 0, '2024-01-23 17:36:36', '2024-01-23 17:36:36'),
(8, '2023-2024', NULL, NULL, 0, '2024-01-23 17:36:36', '2024-01-23 17:36:36'),
(10, '2024-2025', NULL, NULL, 1, '2024-02-05 01:44:53', '2024-02-05 01:44:53'),
(13, '2025-2026', NULL, NULL, 1, '2024-02-05 01:48:07', '2024-02-05 01:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `ddpdashboard_users`
--

CREATE TABLE `ddpdashboard_users` (
  `UserId` int(11) NOT NULL,
  `Email_Id` text NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `PasswordChangeAt` datetime DEFAULT NULL,
  `PasswordResetToken` varchar(255) DEFAULT NULL,
  `PasswordResetTokenExpire` datetime DEFAULT NULL,
  `Mobile_No` varchar(255) NOT NULL,
  `ModifiedOn` datetime NOT NULL,
  `Deleted` enum('0','1') DEFAULT NULL COMMENT '0-deleted,1-notDeleted',
  `ModifiedBy` int(11) NOT NULL,
  `UserType` int(11) NOT NULL,
  `personalNumber` varchar(255) DEFAULT NULL,
  `MobileOTP` varchar(255) DEFAULT NULL,
  `accessToken` text DEFAULT NULL,
  `VerifyOTP` varchar(255) DEFAULT NULL,
  `Organisation` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `LoginFailedCount` int(11) DEFAULT NULL,
  `LoginFailedDate` datetime DEFAULT NULL,
  `EmailLinkOTP` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddpdashboard_users`
--

INSERT INTO `ddpdashboard_users` (`UserId`, `Email_Id`, `User_Name`, `Password`, `PasswordChangeAt`, `PasswordResetToken`, `PasswordResetTokenExpire`, `Mobile_No`, `ModifiedOn`, `Deleted`, `ModifiedBy`, `UserType`, `personalNumber`, `MobileOTP`, `accessToken`, `VerifyOTP`, `Organisation`, `Designation`, `LoginFailedCount`, `LoginFailedDate`, `EmailLinkOTP`, `createdAt`, `updatedAt`) VALUES
(1, 'ajay1kSr@gmdail.com', 'Ajay kumar', '$2a$08$MqL3X7Dj08y/l8SHRqy7Re2cAgPMXkC0.3zMjaZ.zW5yxntSLHIiq', NULL, NULL, NULL, '1111111111', '2024-01-24 10:00:41', '1', 1, 1, '9051812112', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicm9sZUlkIjoxLCJyb2xlIjoiU3VwZXJBZG1pbiIsImlhdCI6MTcwNjg0Njg5MiwiZXhwIjoxNzA2ODUwNDkyfQ.D1B4SoiaCDr8Zqk3lf-jTzYTNF1aLrulIeGOjhn_yGo', NULL, '111d1', 'sss', NULL, NULL, NULL, '2024-01-24 10:00:41', '2024-02-02 09:38:12'),
(2, 'pankaj201@yopmail.com.com', 'Pankaj kumar', '$2a$08$b8GCWjna/yZu6Z4kKboYbuhlKQx2yrKzLdUQ/ketWnqRlw8of4u1G', NULL, NULL, NULL, '1111111112', '2024-01-24 10:03:19', '1', 1, 1, '9051812114', NULL, NULL, NULL, '111d1', 'sss', NULL, NULL, NULL, '2024-01-24 10:03:19', '2024-01-25 10:30:14'),
(3, 'ramu201@yopmail.com', 'Ramu kumar', '$2a$08$ztDW7NoBvxqk9In6208zdOm6MZxkqwdAZubTtWDPOXRu7WitxywFi', '2024-01-24 11:22:27', 'c906ed8139471f5a0ef49f59d71c2678e8be921233b9d548879b570ae3a79428', '2024-01-24 11:34:06', '9111111112', '2024-01-24 10:04:00', '1', 1, 2, '9051812114', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTcwNjA3NTU0NywiZXhwIjoxNzA2MDc5MTQ3fQ.7_v-SRWdMF7VnUGqLxf92Vjc1CuGk5kPp1dj1gjoBEM', NULL, '111d1', 'sss', NULL, NULL, NULL, '2024-01-24 10:04:00', '2024-01-24 11:24:06'),
(4, 'ravi21@yopmail.com', 'Ravi Kumar', '$2a$08$Mbp.VQxjLsZdFI0OjU.VgOwHlHpM4Wwngjh9snGoACWxCXBIRxsQu', '2024-01-31 15:11:41', NULL, NULL, '9876543210', '2024-01-24 11:31:02', '1', 1, 3, '9051812112', NULL, NULL, NULL, 'Dpit', 'Node js Developer', NULL, NULL, NULL, '2024-01-24 11:31:02', '2024-02-01 12:46:00'),
(5, 'pk@gmail.com', 'Shayam', '$2a$08$5pwWRHPHd2ZTI1dx0qlX9.rSyKWnsBMOjb6o7cttfqKF95E5PRHDa', NULL, NULL, NULL, '9876543217', '2024-01-24 11:33:33', '1', 1, 3, '8888881111', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwicm9sZUlkIjozLCJyb2xlIjoiVW5pdCIsImlhdCI6MTcwNjA5NzQ4MywiZXhwIjoxNzA2MTAxMDgzfQ.Sb0EUvwHITD5hV0Vv9NXwT4bs9m9uuZVa3D41Lgx624', NULL, 'Dpit', 'Full stack', NULL, NULL, NULL, '2024-01-24 11:33:33', '2024-01-24 17:28:03'),
(6, 'pk1@gmail.com', 'Pawan Kumar', '$2a$08$R7qSnoKFrr9GyZPN9dN76uhX/1ZHBPS4VtHtUuCgBOFCw458f8Qh6', NULL, NULL, NULL, '9876543214', '2024-01-24 17:02:03', '1', 1, 1, '8888881111', NULL, NULL, NULL, 'Defence', 'Node js Developer', NULL, NULL, NULL, '2024-01-24 17:02:03', '2024-01-30 10:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbldefenceexport_tablelog`
--

CREATE TABLE `tbldefenceexport_tablelog` (
  `LogID` varchar(5) DEFAULT NULL,
  `DefenceExportID` varchar(15) DEFAULT NULL,
  `fin_year` varchar(8) DEFAULT NULL,
  `quarter` varchar(7) DEFAULT NULL,
  `cmy_cat` varchar(7) DEFAULT NULL,
  `value` varchar(6) DEFAULT NULL,
  `rdate` varchar(22) DEFAULT NULL,
  `sec_str` varchar(7) DEFAULT NULL,
  `Qtr` varchar(3) DEFAULT NULL,
  `private_company_offline` varchar(23) DEFAULT NULL,
  `ModifiedOn` varchar(29) DEFAULT NULL,
  `ModifiedBy` varchar(10) DEFAULT NULL,
  `IPAddress` varchar(15) DEFAULT NULL,
  `ContractValue` varchar(13) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbldefenceexport_tablelog`
--

INSERT INTO `tbldefenceexport_tablelog` (`LogID`, `DefenceExportID`, `fin_year`, `quarter`, `cmy_cat`, `value`, `rdate`, `sec_str`, `Qtr`, `private_company_offline`, `ModifiedOn`, `ModifiedBy`, `IPAddress`, `ContractValue`, `createdAt`, `updatedAt`) VALUES
('1', '14', '4', '.00', '.00', '2413.8', '25-02-2020 14:12:14', '', 'Q1', '', '', '', '', '', NULL, NULL),
('2', '14', '4', '.00', '.00', '3568.3', '25-02-2020 14:19:23', '', 'Q1', '', '', '', '', '', NULL, NULL),
('3', '14', '4', '.00', '.00', '4722.8', '25-02-2020 14:21:21', '', 'Q2', '', '', '', '', '', NULL, NULL),
('4', '14', '4', '403.94', '203.00', '6176.5', '25-02-2020 14:21:48', '', 'Q3', '', '', '', '', '', NULL, NULL),
('5', '15', '4', '.00', '.00', '2413.8', '25-02-2020 14:29:59', '', 'Q1', '', '', '', '', '', NULL, NULL),
('6', '16', '4', '.00', '.00', '2413.8', '25-02-2020 14:31:22', '', 'Q1', '', '', '', '', '', NULL, NULL),
('7', '16', '4', '.00', '.00', '3568.3', '25-02-2020 14:31:39', '', 'Q2', '', '', '', '', '', NULL, NULL),
('8', '16', '4', '403.94', '203.00', '5022.0', '25-02-2020 14:32:08', '', 'Q3', '', '', '', '', '', NULL, NULL),
('9', '1', '1', '1327.51', '.00', '194.35', '0', '0', '', '', '', '', '', '', NULL, NULL),
('10', '2', '2', '1519.20', '.00', '3163.1', '00', '0', '', '', '', '', '', '', NULL, NULL),
('11', '3', '3', '932.86', '.00', '9812.9', '0', '0', '', '', '', '', '', '', NULL, NULL),
('12', '38', '4', '403.94', '203.00', '7412.1', '3/2/2020 11:29:50 AM', '', 'Q3', '', '', '', '', '', NULL, NULL),
('13', '38', '4', '403.94', '203.00', '7412.1', '3/2/2020 11:29:50 AM', '', 'Q3', '.00', '', '', '', '', NULL, NULL),
('14', '38', '4', '403.94', '203.00', '7412.1', '3/2/2020 3:23:12 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('15', '38', '4', '403.94', '203.00', '7387.1', '3/2/2020 3:23:29 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('16', '3', '3', '932.86', '.00', '9812.9', '0', '0', '', '.00', '', '', '', '', NULL, NULL),
('17', '38', '4', '403.94', '203.00', '7412.3', '3/3/2020 9:47:24 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('18', '38', '4', '403.94', '203.00', '7387.2', '3/3/2020 9:49:27 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('19', '38', '4', '403.94', '203.00', '7545.5', '3/4/2020 3:09:58 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('20', '38', '4', '403.94', '203.00', '7545.5', '3/5/2020 4:31:50 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('21', '38', '4', '403.94', '203.00', '7700.0', '3/9/2020 2:50:22 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('22', '38', '4', '403.94', '203.00', '7794.6', '3/12/2020 9:57:37 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('23', '38', '4', '403.94', '203.00', '9008.6', '3/13/2020 3:11:13 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('24', '38', '4', '403.94', '203.00', '7794.8', '3/17/2020 11:48:37 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('25', '38', '4', '403.94', '203.00', '7950.6', '3/23/2020 4:19:36 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('26', '40', '5', '403.94', '203.00', '.00', '4/14/2020 8:20:45 PM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('27', '38', '4', '403.94', '203.00', '7988.5', '3/25/2020 5:28:30 PM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('28', '38', '4', '929.85', '203.00', '7988.5', '7/16/2020 11:31:14 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('29', '38', '4', '929.85', '203.00', '7982.7', '7/16/2020 11:31:41 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('30', '38', '4', '904.74', '203.00', '7982.7', '7/20/2020 11:06:00 AM', '', 'Q3', '25.12', '', '', '', '', NULL, NULL),
('31', '40', '5', '403.94', '203.00', '88.45', '4/24/2020 7:49:08 PM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('32', '40', '5', '24.24', '103.33', '88.45', '7/23/2020 10:56:00 AM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('33', '40', '5', '24.24', '103.33', '1764.6', '7/23/2020 10:59:01 AM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('34', '40', '5', '24.24', '103.33', '2835.1', '8/27/2020 4:18:44 PM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('35', '40', '5', '24.24', '103.32', '2835.1', '8/27/2020 4:29:45 PM', '', 'Q1', '25.11', '', '', '', '', NULL, NULL),
('36', '40', '5', '24.23', '103.33', '2835.1', '10/9/2020 11:57:36 AM', '', 'Q1', '25.11', '2020-10-09 11:57:36.727000000', '12', '120.57.114.112', '', NULL, NULL),
('37', '40', '5', '24.23', '103.33', '3555.3', '10/9/2020 11:58:03 AM', '', 'Q1', '25.11', '2020-10-09 11:58:03.803000000', '12', '120.57.114.112', '', NULL, NULL),
('38', '40', '5', '220.58', '125.15', '3555.3', '11/11/2020 3:02:39 PM', '', 'Q1', '25.11', '2020-11-11 15:02:39.957000000', '1', '103.95.82.241', '', NULL, NULL),
('39', '40', '5', '220.58', '125.15', '3958.2', '11/11/2020 3:03:27 PM', '', 'Q1', '25.11', '2020-11-11 15:03:27.633000000', '1', '103.95.82.241', '', NULL, NULL),
('40', '40', '5', '220.58', '125.15', '3958.2', '12/14/2020 4:34:00 PM', '', 'Q1', '25.11', '2020-12-14 16:34:00.977000000', '12', '120.57.114.112', '', NULL, NULL),
('41', '40', '5', '220.58', '125.15', '5357.6', '12/14/2020 4:34:34 PM', '', 'Q1', '25.11', '2020-12-14 16:34:34.870000000', '12', '120.57.114.112', '', NULL, NULL),
('42', '40', '5', '272.03', '177.92', '5357.6', '2/15/2021 11:47:11 AM', '', 'Q1', '25.11', '2021-02-15 11:47:11.220000000', '1', '120.57.114.112', '', NULL, NULL),
('43', '40', '5', '272.03', '177.92', '2503.0', '2/15/2021 11:48:40 AM', '', 'Q1', '25.11', '2021-02-15 11:48:40.593000000', '1', '120.57.114.112', '', NULL, NULL),
('44', '40', '5', '485.88', '177.92', '2503.0', '3/4/2021 5:32:54 PM', '', 'Q1', '25.11', '2021-03-04 17:32:54.740000000', '12', '120.57.114.112', '', NULL, NULL),
('45', '40', '5', '485.88', '177.92', '5865.3', '3/4/2021 5:35:35 PM', '', 'Q1', '25.11', '2021-03-04 17:35:35.907000000', '12', '120.57.114.112', '', NULL, NULL),
('46', '40', '5', '485.88', '177.90', '5865.3', '3/17/2021 2:40:41 PM', '', 'Q1', '25.11', '2021-03-17 14:40:41.013000000', '12', '120.57.114.112', '', NULL, NULL),
('47', '40', '5', '485.88', '177.90', '6204.6', '3/17/2021 2:41:18 PM', '', 'Q1', '25.11', '2021-03-17 14:41:18.653000000', '12', '120.57.114.112', '', NULL, NULL),
('48', '40', '5', '485.88', '177.90', '6204.6', '3/31/2021 9:19:23 AM', '', 'Q1', '25.11', '2021-03-31 09:19:23.537000000', '12', '120.57.114.112', '', NULL, NULL),
('49', '40', '5', '485.88', '177.90', '7228.0', '3/31/2021 9:19:56 AM', '', 'Q1', '25.11', '2021-03-31 09:19:56.343000000', '12', '120.57.114.112', '', NULL, NULL),
('50', '40', '5', '494.50', '1.02', '7228.0', '4/20/2021 9:41:20 AM', '', 'Q1', '25.11', '2021-04-20 09:41:20.600000000', '1', '103.161.56.58', '', NULL, NULL),
('51', '40', '5', '984.64', '178.94', '7228.0', '4/20/2021 9:43:23 AM', '', 'Q1', '25.11', '2021-04-20 09:43:23.010000000', '1', '103.161.56.58', '', NULL, NULL),
('52', '42', '6', '781.92', '781.92', '.00', '5/10/2021 5:55:35 PM', '', 'Q2', '', '2021-05-10 17:55:35.017000000', '1', '103.92.41.80', '', NULL, NULL),
('53', '42', '6', '291.27', '2.57', '.00', '5/10/2021 5:56:24 PM', '', 'Q2', '', '2021-05-10 17:56:24.077000000', '1', '103.92.41.80', '', NULL, NULL),
('54', '42', '6', '291.27', '2.57', '491.76', '5/10/2021 5:56:49 PM', '', 'Q2', '', '2021-05-10 17:56:49.253000000', '1', '103.92.41.80', '', NULL, NULL),
('55', '42', '6', '281.27', '2.57', '491.76', '5/10/2021 5:57:37 PM', '', 'Q2', '', '2021-05-10 17:57:37.033000000', '1', '103.92.41.80', '', NULL, NULL),
('56', '42', '6', '.00', '.00', '491.76', '5/11/2021 10:35:17 AM', '', 'Q2', '', '2021-05-11 10:35:17.050000000', '12', '120.57.114.112', '', NULL, NULL),
('57', '42', '6', '.00', '.00', '781.91', '5/11/2021 10:36:37 AM', '', 'Q2', '', '2021-05-11 10:36:37.717000000', '12', '120.57.114.112', '', NULL, NULL),
('58', '42', '6', '.00', '.00', '1102.7', '6/9/2021 12:59:36 PM', '', 'Q2', '', '2021-06-09 12:59:36.547000000', '12', '120.57.114.112', '', NULL, NULL),
('59', '42', '6', '.00', '.00', '1111.5', '6/9/2021 1:52:09 PM', '', 'Q2', '', '2021-06-09 13:52:09.813000000', '12', '120.57.114.112', '', NULL, NULL),
('60', '42', '6', '.00', '.00', '1245.2', '6/15/2021 1:04:03 PM', '', 'Q2', '', '2021-06-15 13:04:03.390000000', '12', '120.57.114.112', '', NULL, NULL),
('61', '42', '6', '.00', '.00', '1748.4', '7/1/2021 10:34:16 AM', '', 'Q2', '', '2021-07-01 10:34:16.553000000', '12', '120.57.114.112', '', NULL, NULL),
('62', '42', '6', '.00', '.00', '1748.6', '7/1/2021 4:41:34 PM', '', 'Q2', '', '2021-07-01 16:41:34.540000000', '12', '120.57.114.112', '', NULL, NULL),
('63', '42', '6', '.00', '.00', '1748.6', '7/6/2021 10:52:37 AM', '', 'Q2', '', '2021-07-06 10:52:37.130000000', '12', '164.100.6.4', '', NULL, NULL),
('64', '42', '6', '.00', '.00', '', '7/13/2021 5:16:31 PM', '', 'Q2', '', '2021-07-13 17:16:31.690000000', '12', '120.57.114.112', '', NULL, NULL),
('65', '42', '6', '.00', '.00', '', '7/13/2021 5:18:17 PM', '', 'Q2', '', '2021-07-13 17:18:17.877000000', '12', '120.57.114.112', '', NULL, NULL),
('66', '42', '6', '.00', '.00', '1753.5', '7/13/2021 5:19:08 PM', '', 'Q2', '', '2021-07-13 17:19:08.483000000', '12', '120.57.114.112', '', NULL, NULL),
('67', '42', '6', '.00', '.00', '1763.8', '7/15/2021 12:24:24 AM', '', 'Q2', '', '2021-07-15 00:24:24.963000000', '12', '10.26.60.217', '', NULL, NULL),
('68', '42', '6', '.00', '.00', '1763.8', '7/15/2021 10:40:03 AM', '', 'Q2', '', '2021-07-15 10:40:03.350000000', '12', '120.57.114.112', '', NULL, NULL),
('69', '42', '6', '.00', '.00', '1799.4', '7/18/2021 5:10:59 PM', '', 'Q2', '', '2021-07-18 17:10:59.910000000', '12', '122.161.53.47', '', NULL, NULL),
('70', '42', '6', '.00', '.00', '2489.8', '8/2/2021 4:14:30 PM', '', 'Q2', '', '2021-08-02 16:14:30.007000000', '12', '120.57.114.112', '', NULL, NULL),
('71', '42', '6', '.00', '.00', '2580.3', '8/9/2021 11:21:47 AM', '', 'Q2', '', '2021-08-09 11:21:47.393000000', '12', '120.57.114.112', '', NULL, NULL),
('72', '42', '6', '.00', '.00', '2714.5', '8/16/2021 12:59:28 PM', '', 'Q2', '', '2021-08-16 12:59:28.067000000', '12', '10.26.60.217', '', NULL, NULL),
('73', '42', '6', '.00', '.00', '2714.5', '8/17/2021 10:16:47 AM', '', 'Q2', '', '2021-08-17 10:16:47.813000000', '12', '120.57.114.112', '', NULL, NULL),
('74', '3', '3', '932.86', '.00', '7387.2', '3/3/2020 9:49:02 AM', '', '', '.00', '', '', '', '', NULL, NULL),
('75', '42', '6', '.00', '.00', '2783.4', '8/26/2021 1:33:35 PM', '', 'Q2', '', '2021-08-26 13:33:35.707000000', '12', '120.57.114.112', '', NULL, NULL),
('76', '42', '6', '.00', '.00', '2870.8', '9/2/2021 12:14:00 PM', '', 'Q2', '', '2021-09-02 12:14:00.830000000', '12', '120.57.114.112', '', NULL, NULL),
('77', '42', '6', '.00', '.00', '3639.4', '9/30/2021 10:40:56 AM', '', 'Q2', '', '2021-09-30 10:40:56.803000000', '12', '120.57.114.112', '', NULL, NULL),
('78', '42', '6', '.00', '.00', '3887.6', '10/5/2021 3:23:17 PM', '', 'Q2', '', '2021-10-05 15:23:17.453000000', '12', '122.161.50.188', '', NULL, NULL),
('79', '42', '6', '98.83', '.00', '3887.6', '10/5/2021 5:20:57 PM', '', 'Q2', '', '2021-10-05 17:20:57.150000000', '12', '122.161.50.188', '', NULL, NULL),
('80', '42', '6', '98.83', '.00', '', '10/7/2021 3:14:10 PM', '', 'Q2', '', '2021-10-07 15:14:10.273000000', '12', '120.57.114.112', '', NULL, NULL),
('81', '42', '6', '98.83', '.00', '3888.2', '10/7/2021 3:14:19 PM', '', 'Q2', '', '2021-10-07 15:14:19.020000000', '12', '120.57.114.112', '', NULL, NULL),
('82', '42', '6', '98.83', '.00', '', '10/12/2021 11:30:24 AM', '', 'Q2', '', '2021-10-12 11:30:24.050000000', '12', '120.57.114.112', '', NULL, NULL),
('83', '42', '6', '98.83', '.00', '3911.6', '10/12/2021 11:30:33 AM', '', 'Q2', '', '2021-10-12 11:30:33.307000000', '12', '120.57.114.112', '', NULL, NULL),
('84', '42', '6', '98.83', '.00', '', '10/21/2021 12:58:39 PM', '', 'Q2', '', '2021-10-21 12:58:39.187000000', '12', '120.57.114.112', '', NULL, NULL),
('85', '42', '6', '98.83', '.00', '3925.0', '10/21/2021 12:58:48 PM', '', 'Q2', '', '2021-10-21 12:58:48.493000000', '12', '120.57.114.112', '', NULL, NULL),
('86', '42', '6', '98.83', '.00', '', '11/8/2021 11:07:00 AM', '', 'Q2', '', '2021-11-08 11:07:00.693000000', '12', '120.57.114.112', '', NULL, NULL),
('87', '42', '6', '98.83', '.00', '3958.8', '11/8/2021 11:07:10 AM', '', 'Q2', '', '2021-11-08 11:07:10.257000000', '12', '120.57.114.112', '', NULL, NULL),
('88', '42', '6', '239.60', '.00', '', '11/17/2021 9:43:49 AM', '', 'Q2', '', '2021-11-17 09:43:49.800000000', '12', '120.57.114.112', '', NULL, NULL),
('89', '42', '6', '239.60', '.00', '4212.7', '11/17/2021 9:44:00 AM', '', 'Q2', '', '2021-11-17 09:44:00.237000000', '12', '120.57.114.112', '', NULL, NULL),
('90', '42', '6', '239.60', '.00', '', '11/22/2021 12:41:18 PM', '', 'Q2', '', '2021-11-22 12:41:18.703000000', '12', '110.235.233.182', '', NULL, NULL),
('91', '42', '6', '239.60', '.00', '4212.7', '11/22/2021 12:41:29 PM', '', 'Q2', '', '2021-11-22 12:41:29.103000000', '12', '110.235.233.182', '', NULL, NULL),
('92', '42', '6', '239.60', '.00', '', '12/1/2021 4:12:09 PM', '', 'Q2', '', '2021-12-01 16:12:09.460000000', '12', '120.57.114.112', '', NULL, NULL),
('93', '42', '6', '239.60', '.00', '4347.1', '12/1/2021 4:12:21 PM', '', 'Q2', '', '2021-12-01 16:12:21.233000000', '12', '120.57.114.112', '', NULL, NULL),
('94', '42', '6', '239.60', '.00', '', '12/7/2021 12:21:00 PM', '', 'Q2', '', '2021-12-07 12:21:00.523000000', '12', '120.57.114.112', '', NULL, NULL),
('95', '42', '6', '239.60', '.00', '4347.1', '12/7/2021 12:21:12 PM', '', 'Q2', '', '2021-12-07 12:21:12.680000000', '12', '120.57.114.112', '', NULL, NULL),
('96', '42', '6', '239.60', '.00', '', '12/7/2021 12:22:23 PM', '', 'Q2', '', '2021-12-07 12:22:23.500000000', '12', '120.57.114.112', '', NULL, NULL),
('97', '42', '6', '239.60', '.00', '4347.1', '12/7/2021 12:22:35 PM', '', 'Q2', '', '2021-12-07 12:22:35.937000000', '12', '120.57.114.112', '', NULL, NULL),
('98', '42', '6', '239.60', '.00', '', '12/16/2021 4:16:21 PM', '', 'Q2', '', '2021-12-16 16:16:21.030000000', '12', '120.57.114.112', '', NULL, NULL),
('99', '42', '6', '239.60', '.00', '4370.5', '12/16/2021 4:16:32 PM', '', 'Q2', '', '2021-12-16 16:16:32.533000000', '12', '120.57.114.112', '', NULL, NULL),
('100', '42', '6', '239.60', '.00', '', '12/20/2021 9:38:31 AM', '', 'Q2', '', '2021-12-20 09:38:31.977000000', '12', '120.57.114.112', '', NULL, NULL),
('101', '42', '6', '239.60', '.00', '4370.5', '12/20/2021 9:38:44 AM', '', 'Q2', '', '2021-12-20 09:38:44.560000000', '12', '120.57.114.112', '', NULL, NULL),
('102', '42', '6', '239.60', '.00', '', '12/27/2021 10:31:35 AM', '', 'Q2', '', '2021-12-27 10:31:35.400000000', '12', '45.248.31.234', '', NULL, NULL),
('103', '42', '6', '239.60', '.00', '4370.5', '12/27/2021 10:31:48 AM', '', 'Q2', '', '2021-12-27 10:31:48.280000000', '12', '45.248.31.234', '', NULL, NULL),
('104', '42', '6', '239.60', '.00', '', '1/4/2022 10:04:35 AM', '', 'Q2', '', '2022-01-04 10:04:35.633000000', '12', '106.198.215.222', '', NULL, NULL),
('105', '42', '6', '239.60', '.00', '4370.5', '1/4/2022 10:04:49 AM', '', 'Q2', '', '2022-01-04 10:04:49.937000000', '12', '106.198.215.222', '', NULL, NULL),
('106', '42', '6', '239.51', '.00', '', '1/10/2022 4:46:16 PM', '', 'Q2', '', '2022-01-10 16:46:16.850000000', '12', '120.57.114.112', '', NULL, NULL),
('107', '42', '6', '239.51', '6.70', '', '1/10/2022 4:46:17 PM', '', 'Q2', '', '2022-01-10 16:46:17.210000000', '12', '120.57.114.112', '', NULL, NULL),
('108', '42', '6', '239.51', '6.70', '4410.9', '1/10/2022 4:46:31 PM', '', 'Q2', '', '2022-01-10 16:46:31.687000000', '12', '120.57.114.112', '', NULL, NULL),
('109', '42', '6', '239.51', '.00', '', '1/25/2022 12:10:06 PM', '', 'Q2', '', '2022-01-25 12:10:06.753000000', '12', '120.57.114.112', '', NULL, NULL),
('110', '42', '6', '239.51', '6.70', '', '1/25/2022 12:10:07 PM', '', 'Q2', '', '2022-01-25 12:10:07.087000000', '12', '120.57.114.112', '', NULL, NULL),
('111', '42', '6', '239.51', '6.70', '4410.9', '1/25/2022 12:10:23 PM', '', 'Q2', '', '2022-01-25 12:10:23.103000000', '12', '120.57.114.112', '', NULL, NULL),
('112', '42', '6', '239.51', '.00', '', '1/25/2022 12:38:31 PM', '', 'Q2', '', '2022-01-25 12:38:31.470000000', '12', '120.57.114.112', '', NULL, NULL),
('113', '42', '6', '239.51', '6.70', '', '1/25/2022 12:38:31 PM', '', 'Q2', '', '2022-01-25 12:38:31.520000000', '12', '120.57.114.112', '', NULL, NULL),
('114', '42', '6', '239.51', '6.70', '6198.0', '1/25/2022 12:38:47 PM', '', 'Q2', '', '2022-01-25 12:38:47.383000000', '12', '120.57.114.112', '', NULL, NULL),
('115', '42', '6', '239.51', '.00', '', '1/25/2022 12:47:31 PM', '', 'Q2', '', '2022-01-25 12:47:31.453000000', '12', '120.57.114.112', '', NULL, NULL),
('116', '42', '6', '239.51', '6.70', '', '1/25/2022 12:47:31 PM', '', 'Q2', '', '2022-01-25 12:47:31.500000000', '12', '120.57.114.112', '', NULL, NULL),
('117', '42', '6', '239.51', '6.70', '4410.9', '1/25/2022 12:47:47 PM', '', 'Q2', '', '2022-01-25 12:47:47.387000000', '12', '120.57.114.112', '', NULL, NULL),
('118', '42', '6', '239.51', '.00', '', '1/25/2022 4:13:28 PM', '', 'Q2', '', '2022-01-25 16:13:28.243000000', '12', '122.161.50.199', '', NULL, NULL),
('119', '42', '6', '239.51', '6.70', '', '1/25/2022 4:13:28 PM', '', 'Q2', '', '2022-01-25 16:13:28.300000000', '12', '122.161.50.199', '', NULL, NULL),
('120', '42', '6', '239.51', '6.70', '4410.9', '1/25/2022 4:14:52 PM', '', 'Q2', '', '2022-01-25 16:14:52.697000000', '12', '122.161.50.199', '', NULL, NULL),
('121', '42', '6', '239.51', '.00', '', '1/25/2022 4:32:43 PM', '', 'Q2', '', '2022-01-25 16:32:43.787000000', '12', '122.161.50.199', '', NULL, NULL),
('122', '42', '6', '239.51', '6.70', '', '1/25/2022 4:32:43 PM', '', 'Q2', '', '2022-01-25 16:32:43.830000000', '12', '122.161.50.199', '', NULL, NULL),
('123', '42', '6', '239.51', '6.70', '5188.4', '1/25/2022 4:34:08 PM', '', 'Q2', '', '2022-01-25 16:34:08.490000000', '12', '122.161.50.199', '', NULL, NULL),
('124', '42', '6', '239.51', '.00', '', '2/8/2022 10:25:06 AM', '', 'Q2', '', '2022-02-08 10:25:06.867000000', '12', '103.216.177.232', '', NULL, NULL),
('125', '42', '6', '239.51', '6.70', '', '2/8/2022 10:25:06 AM', '', 'Q2', '', '2022-02-08 10:25:06.923000000', '12', '103.216.177.232', '', NULL, NULL),
('126', '42', '6', '239.51', '6.70', '5201.8', '2/8/2022 10:26:34 AM', '', 'Q2', '', '2022-02-08 10:26:34.827000000', '12', '103.216.177.232', '', NULL, NULL),
('127', '42', '6', '336.40', '.00', '', '2/25/2022 12:26:30 PM', '', 'Q2', '', '2022-02-25 12:26:30.060000000', '12', '120.57.114.112', '', NULL, NULL),
('128', '42', '6', '336.40', '6.70', '', '2/25/2022 12:26:30 PM', '', 'Q2', '', '2022-02-25 12:26:30.200000000', '12', '120.57.114.112', '', NULL, NULL),
('129', '42', '6', '336.40', '6.70', '5296.2', '2/25/2022 12:28:01 PM', '', 'Q2', '', '2022-02-25 12:28:01.777000000', '12', '120.57.114.112', '', NULL, NULL),
('130', '42', '6', '336.40', '.00', '', '3/4/2022 1:30:42 PM', '', 'Q2', '', '2022-03-04 13:30:42.657000000', '12', '103.216.177.232', '', NULL, NULL),
('131', '42', '6', '336.40', '6.70', '', '3/4/2022 1:30:43 PM', '', 'Q2', '', '2022-03-04 13:30:43.063000000', '12', '103.216.177.232', '', NULL, NULL),
('132', '42', '6', '336.40', '6.70', '5333.5', '3/4/2022 1:32:17 PM', '', 'Q2', '', '2022-03-04 13:32:17.427000000', '12', '103.216.177.232', '', NULL, NULL),
('133', '42', '6', '336.40', '.00', '', '3/7/2022 10:25:09 AM', '', 'Q2', '', '2022-03-07 10:25:09.333000000', '12', '120.57.114.112', '', NULL, NULL),
('134', '42', '6', '336.40', '6.70', '', '3/7/2022 10:25:09 AM', '', 'Q2', '', '2022-03-07 10:25:09.693000000', '12', '120.57.114.112', '', NULL, NULL),
('135', '42', '6', '336.40', '6.70', '5333.5', '3/7/2022 10:26:44 AM', '', 'Q2', '', '2022-03-07 10:26:44.420000000', '12', '120.57.114.112', '', NULL, NULL),
('136', '42', '6', '336.40', '.00', '', '3/7/2022 1:22:19 PM', '', 'Q2', '', '2022-03-07 13:22:19.383000000', '12', '103.216.177.232', '', NULL, NULL),
('137', '42', '6', '336.40', '6.70', '', '3/7/2022 1:22:19 PM', '', 'Q2', '', '2022-03-07 13:22:19.490000000', '12', '103.216.177.232', '', NULL, NULL),
('138', '42', '6', '336.40', '6.70', '5333.5', '3/7/2022 1:23:53 PM', '', 'Q2', '', '2022-03-07 13:23:53.660000000', '12', '103.216.177.232', '', NULL, NULL),
('139', '42', '6', '336.40', '.00', '', '3/7/2022 6:40:39 PM', '', 'Q2', '', '2022-03-07 18:40:39.520000000', '12', '120.57.114.112', '', NULL, NULL),
('140', '42', '6', '336.40', '6.70', '', '3/7/2022 6:40:39 PM', '', 'Q2', '', '2022-03-07 18:40:39.863000000', '12', '120.57.114.112', '', NULL, NULL),
('141', '42', '6', '336.40', '6.70', '5333.5', '3/7/2022 6:42:13 PM', '', 'Q2', '', '2022-03-07 18:42:13.577000000', '12', '120.57.114.112', '', NULL, NULL),
('142', '42', '6', '336.40', '6.70', '5333.5', '3/7/2022 6:42:13 PM', '', 'Q2', '', '2022-03-07 18:42:13.637000000', '12', '120.57.114.112', '5553.47', NULL, NULL),
('143', '42', '6', '336.40', '.00', '', '3/8/2022 12:07:21 PM', '', 'Q2', '', '2022-03-08 12:07:21.187000000', '12', '120.57.114.112', '', NULL, NULL),
('144', '42', '6', '336.40', '6.70', '', '3/8/2022 12:07:21 PM', '', 'Q2', '', '2022-03-08 12:07:21.267000000', '12', '120.57.114.112', '', NULL, NULL),
('145', '42', '6', '336.40', '6.70', '5333.5', '3/8/2022 12:08:55 PM', '', 'Q2', '', '2022-03-08 12:08:55.040000000', '12', '120.57.114.112', '', NULL, NULL),
('146', '42', '6', '336.40', '6.70', '5333.5', '3/8/2022 12:08:55 PM', '', 'Q2', '', '2022-03-08 12:08:55.087000000', '12', '120.57.114.112', '5553.47', NULL, NULL),
('147', '42', '6', '336.40', '.00', '', '3/15/2022 9:51:05 AM', '', 'Q2', '', '2022-03-15 09:51:05.990000000', '12', '120.57.114.112', '', NULL, NULL),
('148', '42', '6', '336.40', '6.70', '', '3/15/2022 9:51:06 AM', '', 'Q2', '', '2022-03-15 09:51:06.037000000', '12', '120.57.114.112', '', NULL, NULL),
('149', '42', '6', '336.40', '6.70', '5483.2', '3/15/2022 9:52:42 AM', '', 'Q2', '', '2022-03-15 09:52:42.380000000', '12', '120.57.114.112', '', NULL, NULL),
('150', '42', '6', '336.40', '6.70', '5483.2', '3/15/2022 9:52:42 AM', '', 'Q2', '', '2022-03-15 09:52:42.427000000', '12', '120.57.114.112', '5553.47', NULL, NULL),
('151', '42', '6', '336.40', '.00', '', '3/28/2022 2:59:25 PM', '', 'Q2', '', '2022-03-28 14:59:25.647000000', '12', '120.57.114.112', '', NULL, NULL),
('152', '42', '6', '336.40', '6.70', '', '3/28/2022 2:59:25 PM', '', 'Q2', '', '2022-03-28 14:59:25.757000000', '12', '120.57.114.112', '', NULL, NULL),
('153', '42', '6', '336.40', '6.70', '', '3/28/2022 3:01:05 PM', '', 'Q2', '', '2022-03-28 15:01:05.923000000', '12', '120.57.114.112', '5678.24', NULL, NULL),
('154', '42', '6', '336.40', '.00', '', '3/28/2022 3:04:03 PM', '', 'Q2', '', '2022-03-28 15:04:03.383000000', '1', '66.244.77.97', '', NULL, NULL),
('155', '42', '6', '336.40', '6.70', '', '3/28/2022 3:04:03 PM', '', 'Q2', '', '2022-03-28 15:04:03.430000000', '1', '66.244.77.97', '', NULL, NULL),
('156', '42', '6', '336.40', '6.70', '', '3/28/2022 3:05:43 PM', '', 'Q2', '', '2022-03-28 15:05:43.487000000', '1', '66.244.77.97', '5678.24', NULL, NULL),
('157', '42', '6', '336.40', '6.70', '7271.2', '3/28/2022 3:05:43 PM', '', 'Q2', '', '2022-03-28 15:05:43.487000000', '1', '66.244.77.97', '5678.24', NULL, NULL),
('158', '42', '6', '336.40', '.00', '', '3/31/2022 10:31:54 AM', '', 'Q2', '', '2022-03-31 10:31:54.970000000', '1', '43.225.74.213', '', NULL, NULL),
('159', '42', '6', '336.40', '6.70', '', '3/31/2022 10:31:55 AM', '', 'Q2', '', '2022-03-31 10:31:55.377000000', '1', '43.225.74.213', '', NULL, NULL),
('160', '42', '6', '336.40', '6.70', '5876.1', '3/31/2022 10:31:55 AM', '', 'Q2', '', '2022-03-31 10:31:55.423000000', '1', '43.225.74.213', '', NULL, NULL),
('161', '42', '6', '336.40', '6.70', '5876.1', '3/31/2022 10:31:55 AM', '', 'Q2', '', '2022-03-31 10:31:55.470000000', '1', '43.225.74.213', '5678.24', NULL, NULL),
('162', '42', '6', '337.19', '.00', '', '4/1/2022 1:07:20 PM', '', 'Q2', '', '2022-04-01 13:07:20.187000000', '12', '120.57.114.112', '', NULL, NULL),
('163', '42', '6', '337.19', '6.70', '', '4/1/2022 1:07:20 PM', '', 'Q2', '', '2022-04-01 13:07:20.313000000', '12', '120.57.114.112', '', NULL, NULL),
('164', '42', '6', '337.19', '6.70', '5944.4', '4/1/2022 1:07:20 PM', '', 'Q2', '', '2022-04-01 13:07:20.377000000', '12', '120.57.114.112', '', NULL, NULL),
('165', '42', '6', '337.19', '6.70', '5944.4', '4/1/2022 1:07:20 PM', '', 'Q2', '', '2022-04-01 13:07:20.423000000', '12', '120.57.114.112', '5678.24', NULL, NULL),
('166', '42', '6', '386.19', '6.70', '5965.0', '4/1/2022 1:07:20 PM', '', 'Q2', '', '2022-04-01 13:07:20.423000000', '12', '120.57.114.112', '6456.62', NULL, NULL),
('167', '42', '6', '385.79', '.00', '', '5/5/2022 11:40:42 AM', '', 'Q2', '', '2022-05-05 11:40:42.040000000', '12', '120.57.114.112', '', NULL, NULL),
('168', '42', '6', '385.79', '6.70', '', '5/5/2022 11:40:42 AM', '', 'Q2', '', '2022-05-05 11:40:42.120000000', '12', '120.57.114.112', '', NULL, NULL),
('169', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 11:40:42 AM', '', 'Q2', '', '2022-05-05 11:40:42.180000000', '12', '120.57.114.112', '', NULL, NULL),
('170', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 11:40:42 AM', '', 'Q2', '', '2022-05-05 11:40:42.243000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('171', '42', '6', '385.79', '.00', '', '5/5/2022 11:41:23 AM', '', 'Q2', '', '2022-05-05 11:41:23.123000000', '12', '120.57.114.112', '', NULL, NULL),
('172', '42', '6', '385.79', '6.70', '', '5/5/2022 11:41:23 AM', '', 'Q2', '', '2022-05-05 11:41:23.170000000', '12', '120.57.114.112', '', NULL, NULL),
('173', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 11:41:23 AM', '', 'Q2', '', '2022-05-05 11:41:23.263000000', '12', '120.57.114.112', '', NULL, NULL),
('174', '43', '7', '.00', '.00', '543.40', '5/5/2022 12:03:38 PM', '', '', '', '2022-05-05 12:03:38.653000000', '12', '120.57.114.112', '', NULL, NULL),
('175', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 11:41:23 AM', '', 'Q2', '', '2022-05-05 11:41:23.310000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('176', '42', '6', '385.79', '.00', '', '5/5/2022 12:17:51 PM', '', 'Q2', '', '2022-05-05 12:17:51.893000000', '1', '43.225.74.204', '', NULL, NULL),
('177', '42', '6', '385.79', '6.70', '', '5/5/2022 12:17:51 PM', '', 'Q2', '', '2022-05-05 12:17:51.923000000', '1', '43.225.74.204', '', NULL, NULL),
('178', '42', '6', '385.79', '.00', '', '5/5/2022 12:17:56 PM', '', 'Q2', '', '2022-05-05 12:17:56.173000000', '1', '43.225.74.204', '', NULL, NULL),
('179', '42', '6', '385.79', '6.70', '', '5/5/2022 12:17:56 PM', '', 'Q2', '', '2022-05-05 12:17:56.220000000', '1', '43.225.74.204', '', NULL, NULL),
('180', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:17:56 PM', '', 'Q2', '', '2022-05-05 12:17:56.267000000', '1', '43.225.74.204', '', NULL, NULL),
('181', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:17:56 PM', '', 'Q2', '', '2022-05-05 12:17:56.313000000', '1', '43.225.74.204', '6456.60', NULL, NULL),
('182', '42', '6', '385.79', '.00', '', '5/5/2022 12:29:10 PM', '', 'Q2', '', '2022-05-05 12:29:10.217000000', '1', '43.225.74.204', '', NULL, NULL),
('183', '42', '6', '385.79', '6.70', '', '5/5/2022 12:29:10 PM', '', 'Q2', '', '2022-05-05 12:29:10.263000000', '1', '43.225.74.204', '', NULL, NULL),
('184', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:29:10 PM', '', 'Q2', '', '2022-05-05 12:29:10.310000000', '1', '43.225.74.204', '', NULL, NULL),
('185', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:29:10 PM', '', 'Q2', '', '2022-05-05 12:29:10.340000000', '1', '43.225.74.204', '6456.60', NULL, NULL),
('186', '42', '6', '385.79', '.00', '', '5/5/2022 12:42:29 PM', '', 'Q2', '', '2022-05-05 12:42:29.917000000', '12', '120.57.114.112', '', NULL, NULL),
('187', '42', '6', '385.79', '6.70', '', '5/5/2022 12:42:29 PM', '', 'Q2', '', '2022-05-05 12:42:29.963000000', '12', '120.57.114.112', '', NULL, NULL),
('188', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:42:30 PM', '', 'Q2', '', '2022-05-05 12:42:30.010000000', '12', '120.57.114.112', '', NULL, NULL),
('189', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:42:30 PM', '', 'Q2', '', '2022-05-05 12:42:30.057000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('190', '42', '6', '385.79', '.00', '', '5/5/2022 12:42:46 PM', '', 'Q2', '', '2022-05-05 12:42:46.630000000', '12', '120.57.114.112', '', NULL, NULL),
('191', '42', '6', '385.79', '6.70', '', '5/5/2022 12:42:46 PM', '', 'Q2', '', '2022-05-05 12:42:46.677000000', '12', '120.57.114.112', '', NULL, NULL),
('192', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:42:46 PM', '', 'Q2', '', '2022-05-05 12:42:46.710000000', '12', '120.57.114.112', '', NULL, NULL),
('193', '43', '7', '.00', '.00', '543.40', '5/5/2022 12:11:35 PM', '', '', '', '2022-05-05 12:11:35.977000000', '12', '120.57.114.112', '', NULL, NULL),
('194', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:42:46 PM', '', 'Q2', '', '2022-05-05 12:42:46.757000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('195', '42', '6', '385.79', '.00', '', '5/5/2022 12:43:32 PM', '', 'Q2', '', '2022-05-05 12:43:32.753000000', '12', '120.57.114.112', '', NULL, NULL),
('196', '42', '6', '385.79', '6.70', '', '5/5/2022 12:43:32 PM', '', 'Q2', '', '2022-05-05 12:43:32.817000000', '12', '120.57.114.112', '', NULL, NULL),
('197', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:43:32 PM', '', 'Q2', '', '2022-05-05 12:43:32.863000000', '12', '120.57.114.112', '', NULL, NULL),
('198', '43', '7', '.00', '.00', '.00', '5/5/2022 12:11:35 PM', '', '', '', '2022-05-05 12:11:35.977000000', '12', '120.57.114.112', '', NULL, NULL),
('199', '43', '7', '.00', '.00', '543.40', '5/5/2022 12:45:32 PM', '', '', '', '2022-05-05 12:45:32.563000000', '12', '120.57.114.112', '', NULL, NULL),
('200', '43', '7', '.00', '.00', '543.40', '5/5/2022 12:46:25 PM', '', '', '', '2022-05-05 12:46:25.273000000', '12', '120.57.114.112', '', NULL, NULL),
('201', '43', '7', '.00', '.00', '543.40', '5/5/2022 12:46:25 PM', '', '', '', '2022-05-05 12:46:25.273000000', '12', '120.57.114.112', '.00', NULL, NULL),
('202', '42', '6', '385.79', '6.70', '564.45', '5/5/2022 12:43:32 PM', '', 'Q2', '', '2022-05-05 12:43:32.893000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('203', '42', '6', '385.79', '6.70', '5965.0', '5/11/2022 12:01:33 PM', '', 'Q2', '', '2022-05-11 12:01:33.447000000', '12', '120.57.114.112', '6456.60', NULL, NULL),
('204', '43', '7', '.00', '.00', '576.05', '5/11/2022 11:14:05 AM', '', '', '', '2022-05-11 11:14:05.007000000', '12', '120.57.114.112', '.00', NULL, NULL),
('205', '43', '7', '.00', '.00', '611.42', '5/17/2022 2:46:48 PM', '', '', '', '2022-05-17 14:46:48.110000000', '12', '120.57.114.112', '.00', NULL, NULL),
('206', '43', '7', '.00', '.00', '655.57', '5/23/2022 11:37:06 AM', '', '', '', '2022-05-23 11:37:06.913000000', '12', '120.57.114.112', '.00', NULL, NULL),
('207', '43', '7', '.00', '.00', '845.54', '6/7/2022 11:55:13 AM', '', '', '', '2022-06-07 11:55:13.047000000', '12', '120.57.114.112', '.00', NULL, NULL),
('208', '43', '7', '.00', '.00', '1099.9', '7/6/2022 10:03:13 AM', '', '', '', '2022-07-06 10:03:13.477000000', '12', '120.57.114.112', '.00', NULL, NULL),
('209', '43', '7', '.00', '.00', '1381.6', '8/1/2022 2:07:58 PM', '', '', '', '2022-08-01 14:07:58.507000000', '12', '120.57.114.112', '.00', NULL, NULL),
('210', '43', '7', '.00', '.00', '', '9/5/2022 2:40:21 PM', '', '', '', '2022-09-05 14:40:21.643000000', '12', '120.57.114.112', '.00', NULL, NULL),
('211', '43', '7', '22.09', '.00', '', '9/5/2022 2:41:56 PM', '', '', '', '2022-09-05 14:41:56.147000000', '12', '120.57.114.112', '.00', NULL, NULL),
('212', '43', '7', '22.09', '.00', '', '9/5/2022 2:42:04 PM', '', '', '', '2022-09-05 14:42:04.697000000', '12', '120.57.114.112', '.00', NULL, NULL),
('213', '43', '7', '22.09', '.00', '2318.4', '9/5/2022 2:42:04 PM', '', '', '', '2022-09-05 14:42:04.697000000', '12', '120.57.114.112', '.00', NULL, NULL),
('214', '43', '7', '22.09', '.00', '3240.5', '11/2/2022 3:37:04 PM', '', '', '', '2022-11-02 15:37:04.603000000', '12', '120.57.114.112', '.00', NULL, NULL),
('215', '43', '7', '192.43', '.00', '3240.5', '11/2/2022 3:37:04 PM', '', '', '', '2022-11-02 15:37:04.603000000', '12', '120.57.114.112', '1361.12', NULL, NULL),
('216', '43', '7', '188.48', '.00', '3390.4', '11/2/2022 3:37:04 PM', '', '', '', '2022-11-02 15:37:04.603000000', '12', '120.57.114.112', '1365.71', NULL, NULL),
('217', '43', '7', '188.48', '.00', '3390.4', '11/17/2022 12:42:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('218', '43', '7', '1554.19', '.00', '4369.4', '11/17/2022 12:42:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '.00', NULL, NULL),
('219', '43', '7', '1554.19', '.00', '4369.4', '12/09/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '.00', NULL, NULL),
('220', '43', '7', '1554.19', '.00', '4369.4', '09/12/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '.00', NULL, NULL),
('221', '43', '7', '1554.19', '.00', '4369.4', '09/12/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '1.44', NULL, NULL),
('222', '43', '7', '188.48', '1.44', '4369.4', '09/12/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('223', '43', '7', '188.48', '1.44', '4369.4', '09/12/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('224', '43', '7', '188.48', '1.44', '6090.8', '09/12/2022 05:55:04 PM', '', '', '', '2022-11-17 12:42:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('225', '43', '7', '188.48', '1.44', '6090.8', '19/12/2022 14:34:04 PM', '', '', '', '2022-12-19 14:34:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('226', '43', '7', '188.48', '1.44', '6353.6', '26/12/2022 14:34:04 PM', '', '', '', '2022-12-26 14:34:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('227', '43', '7', '188.48', '1.44', '6578.2', '26/12/2022 14:34:04 PM', '', '', '', '2022-12-26 14:34:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('228', '43', '7', '188.48', '1.44', '6613.9', '26/12/2022 14:34:04 PM', '', '', '', '2022-12-26 14:34:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('229', '43', '7', '188.48', '1.44', '6647.1', '26/12/2022 14:34:04 PM', '', '', '', '2022-12-26 14:34:04', '12', '120.57.114.112', '1365.71', NULL, NULL),
('230', '43', '7', '369.57', '1.44', '7759.5', '06/02/2023 20:49:04 PM', '', '', '', '2023-06-02 20:49:04', '12', '120.57.114.112', '2836.24', NULL, NULL),
('231', '43', '7', '369.57', '1.44', '7865.2', '06/02/2023 20:49:04 PM', '', '', '', '2023-06-02 20:49:04', '12', '120.57.114.112', '2836.24', NULL, NULL),
('232', '43', '7', '454.78', '1.44', '7943.3', '15/03/2023 10:58:04 AM', '', '', '', '2023-06-02 20:49:04', '12', '120.57.114.112', '5000.01', NULL, NULL),
('233', '43', '7', '445.78', '1.44', '8053.1', '21/03/2023 11:04:04 AM', '', '', '', '2023-03-21 11:04:04', '12', '120.57.114.112', '5000.01', NULL, NULL),
('234', '43', '7', '385.78', '351.28', '8949.3', '31/03/2023 11:04:04 AM', '', '', '', '2023-03-31 11:04:04', '12', '120.57.114.112', '6130.26', NULL, NULL),
('235', '43', '7', '385.78', '351.28', '8983.1', '31/03/2023 11:04:04 AM', '', '', '', '2023-03-31 11:04:04', '12', '120.57.114.112', '6130.26', NULL, NULL),
('236', '43', '7', '385.78', '351.28', '9050.8', '31/03/2023 11:04:04 AM', '', '', '', '2023-03-31 11:04:04', '12', '120.57.114.112', '6130.26', NULL, NULL),
('237', '43', '7', '385.78', '.00', '', '5/9/2023 10:12:54 AM', '', '', '', '2023-05-09 10:12:54.230000000', '12', '120.57.114.112', '', NULL, NULL),
('238', '43', '7', '385.78', '351.28', '', '5/9/2023 10:12:54 AM', '', '', '', '2023-05-09 10:12:54.310000000', '12', '120.57.114.112', '', NULL, NULL),
('239', '43', '7', '385.78', '351.28', '2909.4', '5/9/2023 10:12:54 AM', '', '', '', '2023-05-09 10:12:54.387000000', '12', '120.57.114.112', '', NULL, NULL),
('240', '44', '8', '7.09', '.00', '276.03', '09/05/2023 10:09:00', '', '', '', '2023-05-09 10:09:00', '', '120.57.114.112', '843.46', NULL, NULL),
('241', '43', '7', '385.78', '351.28', '2909.4', '5/9/2023 10:12:54 AM', '', '', '', '2023-05-09 10:12:54.450000000', '12', '120.57.114.112', '6130.26', NULL, NULL),
('242', '43', '7', '385.78', '351.28', '2090.0', '5/9/2023 10:12:54 AM', '', '', '', '2023-05-09 10:12:54.450000000', '12', '120.57.114.112', '6130.26', NULL, NULL),
('243', '44', '8', '7.09', '.00', '276.03', '17/05/2023 10:09:00', '', '', '', '2023-05-17 10:09:00', '', '120.57.114.112', '843.46', NULL, NULL),
('244', '44', '8', '7.09', '.00', '441.47', '02/06/2023 10:09:00', '', '', '', '2023-06-02 10:09:00', '', '120.57.114.112', '843.46', NULL, NULL),
('245', '44', '8', '7.09', '.00', '585.55', '13/06/2023 10:09:00', '', '', '', '2023-06-13 10:09:00', '', '120.57.114.112', '843.46', NULL, NULL),
('246', '44', '8', '8.55', '.00', '1121.0', '26/06/2023 10:09:00', '', '', '', '2023-06-26 10:09:00', '', '120.57.114.112', '1353.81', NULL, NULL),
('247', '44', '8', '8.55', '.00', '1138.9', '30/06/2023 10:09:00', '', '', '', '2023-06-30 10:09:00', '', '120.57.114.112', '1353.81', NULL, NULL),
('248', '44', '8', '8.55', '.00', '2146.6', '07/07/2023 10:09:00', '', '', '', '2023-07-07 10:09:00', '', '120.57.114.112', '1353.81', NULL, NULL),
('249', '44', '8', '21.53', '.00', '2335.0', '20/07/2023 10:09:00', '', '', '', '2023-07-20 10:09:00', '', '120.57.114.112', '2130.28', NULL, NULL),
('250', '44', '8', '21.53', '.00', '2335.0', '20/20/2023 10:09:00', '', '', '', '2023-07-20 10:09:00', '', '120.57.114.112', '2130.28', NULL, NULL),
('251', '44', '8', '21.53', '.00', '2335.0', '07/20/2023 10:09:00', '', '', '', '2023-07-20 10:09:00', '', '120.57.114.112', '2130.28', NULL, NULL),
('252', '44', '8', '21.53', '.00', '2388.2', '08/02/2023 10:09:00', '', '', '', '2023-08-02 10:09:00', '', '120.57.114.112', '2130.28', NULL, NULL),
('253', '44', '8', '21.53', '.00', '2968.5', '08/02/2023 10:09:00', '', '', '', '2023-08-02 10:09:00', '', '120.57.114.112', '2130.28', NULL, NULL),
('254', '44', '8', '29.97', '.00', '2968.5', '08/24/2023 10:09:00', '', '', '', '2023-08-24 10:09:00', '', '120.57.114.112', '2273.73', NULL, NULL),
('255', '44', '8', '29.97', '.00', '3043.8', '09/04/2023 10:09:00', '', '', '', '2023-09-04 10:09:00', '', '120.57.114.112', '2273.73', NULL, NULL),
('256', '44', '8', '29.97', '.00', '3047.8', '09/04/2023 10:09:00', '', '', '', '2023-09-04 10:09:00', '', '120.57.114.112', '2273.73', NULL, NULL),
('257', '44', '8', '29.97', '.00', '3123.1', '09/14/2023 10:09:00', '', '', '', '2023-09-14 10:09:00', '', '120.57.114.112', '2273.73', NULL, NULL),
('258', '44', '8', '1.00', '.00', '3394.7', '09/29/2023', '', '', '', '2023-09-29 14:26:16.060000000', '23', '120.57.114.112', '2273.73', NULL, NULL),
('259', '44', '8', '29.97', '.00', '3394.7', '09/29/2023', '', '', '', '2023-09-29 14:28:18.717000000', '23', '120.57.114.112', '2273.73', NULL, NULL),
('260', '44', '8', '29.97', '.00', '3748.7', '10/13/2023', '', '', '', '2023-10-13 11:22:02.660000000', '23', '120.57.114.112', '2273.73', NULL, NULL),
('261', '44', '8', '29.97', '.00', '3932.3', '10/14/2023', '', '', '', '2023-10-20 12:05:24.363000000', '23', '120.57.114.112', '2273.73', NULL, NULL),
('262', '44', '8', '29.97', '.00', '3932.3', '10/27/2023', '', '', '', '2023-10-27 11:41:44.490000000', '23', '120.57.114.112', '2273.73', NULL, NULL),
('263', '44', '8', '61.36', '.00', '4244.5', '10/28/2023', '', '', '', '2023-11-02 11:54:42.720000000', '23', '120.59.211.174', '2759.71', NULL, NULL),
('264', '44', '8', '61.36', '.00', '4561.3', '11/07/2023', '', '', '', '2023-11-10 12:25:31.600000000', '23', '120.59.213.145', '2759.71', NULL, NULL),
('265', '44', '8', '61.36', '.00', '4881.6', '11/14/2023', '', '', '', '2023-11-17 12:28:06.643000000', '23', '120.59.211.92', '2759.71', NULL, NULL),
('266', '44', '8', '61.36', '.00', '5008.7', '11/21/2023', '', '', '', '2023-11-24 14:30:02.120000000', '23', '120.59.223.88', '2759.71', NULL, NULL),
('267', '44', '8', '61.36', '.00', '5117.6', '11/30/2023', '', '', '', '2023-12-01 12:35:38.927000000', '23', '120.57.80.117', '2759.71', NULL, NULL),
('268', '44', '8', '61.36', '.00', '5177.4', '12/07/2023', '', '', '', '2023-12-08 10:17:46.653000000', '23', '120.57.80.117', '2759.71', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ddpdashboard_accessassignments`
--
ALTER TABLE `ddpdashboard_accessassignments`
  ADD PRIMARY KEY (`AccessID`);

--
-- Indexes for table `ddpdashboard_defencechallanges`
--
ALTER TABLE `ddpdashboard_defencechallanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddpdashboard_defenceexportapis`
--
ALTER TABLE `ddpdashboard_defenceexportapis`
  ADD PRIMARY KEY (`DefenceExportID`);

--
-- Indexes for table `ddpdashboard_defenceoffsetofflines`
--
ALTER TABLE `ddpdashboard_defenceoffsetofflines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ddpdashboard_defenceoffsetonlines`
--
ALTER TABLE `ddpdashboard_defenceoffsetonlines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ddpdashboard_discmasters`
--
ALTER TABLE `ddpdashboard_discmasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddpdashboard_exportperformances`
--
ALTER TABLE `ddpdashboard_exportperformances`
  ADD PRIMARY KEY (`ExportPrID`);

--
-- Indexes for table `ddpdashboard_indigenizations`
--
ALTER TABLE `ddpdashboard_indigenizations`
  ADD PRIMARY KEY (`IndigenizationID`),
  ADD KEY `OrganisationID` (`OrganisationID`);

--
-- Indexes for table `ddpdashboard_locations`
--
ALTER TABLE `ddpdashboard_locations`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `ddpdashboard_modernisationcapexes`
--
ALTER TABLE `ddpdashboard_modernisationcapexes`
  ADD PRIMARY KEY (`ModernCapexID`);

--
-- Indexes for table `ddpdashboard_moduleconfigurations`
--
ALTER TABLE `ddpdashboard_moduleconfigurations`
  ADD PRIMARY KEY (`ConfigID`);

--
-- Indexes for table `ddpdashboard_modules`
--
ALTER TABLE `ddpdashboard_modules`
  ADD PRIMARY KEY (`ModuleID`);

--
-- Indexes for table `ddpdashboard_newprojects`
--
ALTER TABLE `ddpdashboard_newprojects`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Indexes for table `ddpdashboard_orderbookpositions`
--
ALTER TABLE `ddpdashboard_orderbookpositions`
  ADD PRIMARY KEY (`OrderBookID`),
  ADD KEY `OrganisationID` (`OrganisationID`);

--
-- Indexes for table `ddpdashboard_organisations`
--
ALTER TABLE `ddpdashboard_organisations`
  ADD PRIMARY KEY (`OrganisationID`);

--
-- Indexes for table `ddpdashboard_productionperformances`
--
ALTER TABLE `ddpdashboard_productionperformances`
  ADD PRIMARY KEY (`ProductionID`),
  ADD KEY `YearID` (`YearID`),
  ADD KEY `OrganisationID` (`OrganisationID`);

--
-- Indexes for table `ddpdashboard_profitabilities`
--
ALTER TABLE `ddpdashboard_profitabilities`
  ADD PRIMARY KEY (`ProfitabilityID`),
  ADD KEY `OrganisationID` (`OrganisationID`),
  ADD KEY `YearID` (`YearID`);

--
-- Indexes for table `ddpdashboard_roles`
--
ALTER TABLE `ddpdashboard_roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `ddpdashboard_tblyears`
--
ALTER TABLE `ddpdashboard_tblyears`
  ADD PRIMARY KEY (`YearID`);

--
-- Indexes for table `ddpdashboard_users`
--
ALTER TABLE `ddpdashboard_users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ddpdashboard_accessassignments`
--
ALTER TABLE `ddpdashboard_accessassignments`
  MODIFY `AccessID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ddpdashboard_defencechallanges`
--
ALTER TABLE `ddpdashboard_defencechallanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `ddpdashboard_defenceexportapis`
--
ALTER TABLE `ddpdashboard_defenceexportapis`
  MODIFY `DefenceExportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ddpdashboard_defenceoffsetofflines`
--
ALTER TABLE `ddpdashboard_defenceoffsetofflines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1233;

--
-- AUTO_INCREMENT for table `ddpdashboard_defenceoffsetonlines`
--
ALTER TABLE `ddpdashboard_defenceoffsetonlines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ddpdashboard_discmasters`
--
ALTER TABLE `ddpdashboard_discmasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ddpdashboard_exportperformances`
--
ALTER TABLE `ddpdashboard_exportperformances`
  MODIFY `ExportPrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ddpdashboard_indigenizations`
--
ALTER TABLE `ddpdashboard_indigenizations`
  MODIFY `IndigenizationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ddpdashboard_locations`
--
ALTER TABLE `ddpdashboard_locations`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `ddpdashboard_modernisationcapexes`
--
ALTER TABLE `ddpdashboard_modernisationcapexes`
  MODIFY `ModernCapexID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ddpdashboard_moduleconfigurations`
--
ALTER TABLE `ddpdashboard_moduleconfigurations`
  MODIFY `ConfigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ddpdashboard_modules`
--
ALTER TABLE `ddpdashboard_modules`
  MODIFY `ModuleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ddpdashboard_newprojects`
--
ALTER TABLE `ddpdashboard_newprojects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ddpdashboard_orderbookpositions`
--
ALTER TABLE `ddpdashboard_orderbookpositions`
  MODIFY `OrderBookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ddpdashboard_organisations`
--
ALTER TABLE `ddpdashboard_organisations`
  MODIFY `OrganisationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ddpdashboard_productionperformances`
--
ALTER TABLE `ddpdashboard_productionperformances`
  MODIFY `ProductionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ddpdashboard_profitabilities`
--
ALTER TABLE `ddpdashboard_profitabilities`
  MODIFY `ProfitabilityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ddpdashboard_roles`
--
ALTER TABLE `ddpdashboard_roles`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ddpdashboard_tblyears`
--
ALTER TABLE `ddpdashboard_tblyears`
  MODIFY `YearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ddpdashboard_users`
--
ALTER TABLE `ddpdashboard_users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ddpdashboard_indigenizations`
--
ALTER TABLE `ddpdashboard_indigenizations`
  ADD CONSTRAINT `ddpdashboard_indigenizations_ibfk_1` FOREIGN KEY (`OrganisationID`) REFERENCES `ddpdashboard_organisations` (`OrganisationID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ddpdashboard_orderbookpositions`
--
ALTER TABLE `ddpdashboard_orderbookpositions`
  ADD CONSTRAINT `ddpdashboard_orderbookpositions_ibfk_1` FOREIGN KEY (`OrganisationID`) REFERENCES `ddpdashboard_organisations` (`OrganisationID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ddpdashboard_productionperformances`
--
ALTER TABLE `ddpdashboard_productionperformances`
  ADD CONSTRAINT `ddpdashboard_productionperformances_ibfk_1` FOREIGN KEY (`YearID`) REFERENCES `ddpdashboard_tblyears` (`YearID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ddpdashboard_productionperformances_ibfk_2` FOREIGN KEY (`OrganisationID`) REFERENCES `ddpdashboard_organisations` (`OrganisationID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ddpdashboard_profitabilities`
--
ALTER TABLE `ddpdashboard_profitabilities`
  ADD CONSTRAINT `ddpdashboard_profitabilities_ibfk_1` FOREIGN KEY (`OrganisationID`) REFERENCES `ddpdashboard_organisations` (`OrganisationID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ddpdashboard_profitabilities_ibfk_2` FOREIGN KEY (`YearID`) REFERENCES `ddpdashboard_tblyears` (`YearID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
