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


-- Volcando estructura de base de datos para crediya_authentication
CREATE DATABASE IF NOT EXISTS `crediya_authentication` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */;
USE `crediya_authentication`;

-- Volcando estructura para tabla crediya_authentication.id_type
CREATE TABLE IF NOT EXISTS `id_type` (
  `id` tinyint(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_authentication.id_type: ~0 rows (aproximadamente)
DELETE FROM `id_type`;

-- Volcando estructura para tabla crediya_authentication.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(250) NOT NULL,
  `method` varchar(10) NOT NULL,
  `role_id` tinyint(4) NOT NULL DEFAULT 0,
  `server_id` varchar(50) NOT NULL DEFAULT '8080',
  PRIMARY KEY (`id`),
  KEY `role_FK` (`role_id`),
  CONSTRAINT `role_FK` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_authentication.permission: ~4 rows (aproximadamente)
DELETE FROM `permission`;
INSERT INTO `permission` (`id`, `path`, `method`, `role_id`, `server_id`) VALUES
	(1, '/api/v*/usuarios/register', 'POST', 1, 'auth'),
	(2, '/api/v*/usuarios/register', 'POST', 2, 'auth'),
	(3, '/api/v*/solicitud', 'GET', 2, 'applications'),
	(4, '/api/v*/solicitud', 'POST', 0, 'applications');

-- Volcando estructura para tabla crediya_authentication.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_authentication.role: ~2 rows (aproximadamente)
DELETE FROM `role`;
INSERT INTO `role` (`id`, `name`) VALUES
	(1, 'ADMINISTRADOR'),
	(2, 'ASESOR'),
	(0, 'CLIENTE');

-- Volcando estructura para tabla crediya_authentication.user
CREATE TABLE IF NOT EXISTS `user` (
  `idNumber` int(11) NOT NULL DEFAULT 0,
  `idType` tinyint(4) NOT NULL DEFAULT 0,
  `firstNames` varchar(100) NOT NULL,
  `lastNames` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `baseSalary` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `birthDate` date DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL DEFAULT '123',
  PRIMARY KEY (`idNumber`) USING BTREE,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Volcando datos para la tabla crediya_authentication.user: ~13 rows (aproximadamente)
DELETE FROM `user`;
INSERT INTO `user` (`idNumber`, `idType`, `firstNames`, `lastNames`, `email`, `phone`, `baseSalary`, `birthDate`, `address`, `roleId`, `password`) VALUES
	(1223, 0, 'Diego Alberto', 'Ramos Patarroyo', 'admin@test.com', NULL, 123.000000, '1978-06-22', NULL, 1, '123'),
	(1233, 0, 'Diego A', 'Ramos P', 'asesor@test.com', NULL, 10.000000, '1978-06-22', NULL, 2, '567'),
	(4444, 0, 'Diego A', 'Ramos P', 'cliente@test.com', NULL, 10.000000, '1978-06-22', NULL, 0, '890');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
