-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.22 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_docente
CREATE DATABASE IF NOT EXISTS `bd_docente` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_docente`;

-- Volcando estructura para tabla bd_docente.alumno
CREATE TABLE IF NOT EXISTS `alumno` (
  `Boleta` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Apellidop` varchar(50) DEFAULT NULL,
  `Apellidom` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_docente.alumno: ~3 rows (aproximadamente)
INSERT INTO `alumno` (`Boleta`, `Nombre`, `Apellidop`, `Apellidom`, `Contrasena`, `Grupo`) VALUES
	('2017024789', 'Quesito', 'Extraqueso', 'Queso', 'nosexdxd', '3IV9'),
	('2019010538', 'Daniel', 'Cuellar', 'Betancourt', 'quesitoxdxd', '5IV3'),
	('2020023412', 'David', 'Cuellar', 'Betancourt', 'Quesobadon', '2IV3');

-- Volcando estructura para tabla bd_docente.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `num_empleado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apelli` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `usuario_generado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_docente.usuario: ~10 rows (aproximadamente)
INSERT INTO `usuario` (`num_empleado`, `nombre`, `apelli`, `contrasena`, `usuario_generado`) VALUES
	('0001', 'Kiko', 'Perez', 'quesoxd', 'KikPer@correo.com'),
	('123214', 'Eric', 'Felipe', 'qwert', 'EriFel@correo.com'),
	('12345', 'pibebased', 'caca', 'asdf', 'pibcac@correo.com'),
	('123456', 'The', 'Rakee', '12345', 'TheRak@correo.com'),
	('12345678', 'David', 'Cuellar', 'uwu1234', 'dacue@hotmail.com'),
	('4567', 'Pukino', 'Axel', 'owo123', 'PukAxe@correo.com'),
	('54321', 'Capitan', 'Queso', 'manzana23', 'CapQue@correo.com'),
	('543224', 'Quesito', 'Quesoso', 'jijija', 'QueQue@correo.com'),
	('777', 'Juan', 'Perez', 'kkxd123', 'JuaPer@correo.com'),
	('pitusas', 'FeliSimp', 'Simpardo', 'quesitoxd', 'FelSim@correo.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
