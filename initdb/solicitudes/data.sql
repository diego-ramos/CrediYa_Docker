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


-- Volcando estructura de base de datos para crediya_applications
CREATE DATABASE IF NOT EXISTS `crediya_applications` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */;
USE `crediya_applications`;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_applications.application: ~18 rows (aproximadamente)
DELETE FROM `application`;

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
