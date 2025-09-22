-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.8.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla crediya_applications.application
CREATE TABLE IF NOT EXISTS `application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `term` smallint(6) NOT NULL,
  `user_identification_number` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `id_status` tinyint(4) NOT NULL,
  `id_loan_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_type_FK` (`id_loan_type`),
  KEY `status_FK` (`id_status`),
  CONSTRAINT `loan_type_FK` FOREIGN KEY (`id_loan_type`) REFERENCES `loan_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status_FK` FOREIGN KEY (`id_status`) REFERENCES `application_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_applications.application: ~87 rows (aproximadamente)
DELETE FROM `application`;
INSERT INTO `application` (`id`, `amount`, `term`, `user_identification_number`, `email`, `id_status`, `id_loan_type`) VALUES
	(1, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(2, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(3, 15000.000000, 10, 79948037, 'cliente@test.com', 1, 1),
	(4, 15000.000000, 120, 79948037, 'cliente@test.com', 1, 1),
	(5, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 2),
	(6, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(7, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(8, 548665.000000, 120, 79948037, 'cliente@test.com', 1, 1),
	(9, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 2),
	(10, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(11, 330000.000000, 25, 79948037, 'cliente@test.com', 1, 1),
	(12, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(13, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(14, 10000000.000000, 12, 79948037, 'jaja@ja.com', 1, 1),
	(15, 15000.000000, 120, 79948037, 'jaja@ja.com', 1, 1),
	(16, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(17, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(18, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(19, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(20, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(21, 15000.000000, 120, 4444, 'cliente@test.com', 1, 1),
	(22, 15000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(23, 15000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(24, 16000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(25, 16000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(26, 17000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(27, 20000.000000, 10, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(28, 21000.000000, 99, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(29, 22000.000000, 78, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(30, 23000.000000, 23, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(31, 24000.000000, 24, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(32, 25000.000000, 25, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(33, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(34, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(35, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(36, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(37, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(38, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(39, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(40, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(41, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(42, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(43, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(44, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(45, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(46, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(47, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(48, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(49, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(50, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(51, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(52, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(53, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(54, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(55, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(56, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(57, 26000.000000, 26, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(58, 30000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(59, 30000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(60, 30000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(61, 30000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(62, 30000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(63, 1000.000000, 120, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(64, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(65, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(66, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(67, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(68, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(69, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(70, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(71, 50000.000000, 2, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(72, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(73, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(74, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(75, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(76, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(77, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(78, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(79, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(80, 5.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(81, 522222.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(82, 522222.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(83, 2.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(84, 2.000000, 21, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(85, 2.000000, 21, 446441, 'diegoramos2000@hotmail.com', 3, 1),
	(86, 20.000000, 10, 446441, 'diegoramos2000@hotmail.com', 1, 1),
	(87, 30.000000, 10, 446441, 'diegoramos2000@hotmail.com', 3, 1);

-- Volcando estructura para tabla crediya_applications.application_status
CREATE TABLE IF NOT EXISTS `application_status` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_applications.application_status: ~5 rows (aproximadamente)
DELETE FROM `application_status`;
INSERT INTO `application_status` (`id`, `name`, `description`) VALUES
	(1, 'Pendiente de revisión', 'Pendiente de revisión'),
	(2, 'En Proceso', 'Un Asesor está revisando la applicacion'),
	(3, 'Aprobada', 'Aprobada'),
	(4, 'Rechazada', 'Rechazada'),
	(5, 'Revision manual', 'Revision manual');

-- Volcando estructura para tabla crediya_applications.loan_type
CREATE TABLE IF NOT EXISTS `loan_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `minAmount` int(11) NOT NULL DEFAULT 0,
  `maxAmount` int(11) NOT NULL DEFAULT 0,
  `interestRate` float NOT NULL DEFAULT 0,
  `autoValidation` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_applications.loan_type: ~2 rows (aproximadamente)
DELETE FROM `loan_type`;
INSERT INTO `loan_type` (`id`, `name`, `minAmount`, `maxAmount`, `interestRate`, `autoValidation`) VALUES
	(1, 'Personal', 100, 1000000, 9.5, 1),
	(2, 'Empresarial', 10000000, 500000000, 8.9, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
