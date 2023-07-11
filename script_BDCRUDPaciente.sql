-- MySQL Script generated by MySQL Workbench
-- Mon Aug 16 09:45:14 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET GLOBAL time_zone = '-3:00';
-- -----------------------------------------------------
-- Schema BDCRUDPaciente
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BDCRUDPaciente
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdcrudpaciente` DEFAULT CHARACTER SET utf8mb4 ;
USE `bdcrudpaciente` ;

-- -----------------------------------------------------
-- Table `BDCRUDPaciente`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdcrudpaciente`.`Paciente` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipoDocumento` ENUM("TI", "CC", "CE") NOT NULL,
  `numeroDocumento` BIGINT UNSIGNED NOT NULL,
  `nombres` VARCHAR(80) NOT NULL,
  `apellidos` VARCHAR(80) NOT NULL,
  `telefono` BIGINT UNSIGNED NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `email` VARCHAR(60) NULL,
  `estado` BIT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `numeroDocumento_UNIQUE` (`numeroDocumento` ASC) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BDCRUDPaciente`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdcrudpaciente`.`Usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` LONGBLOB NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `estado` BIT NOT NULL,
  `fechaAlta` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO usuario (`username`, `password`, `nombres`, `apellidos`, `email`, `telefono`, `estado`,`fechaAlta`) VALUES ('recepcionista1', '123', 'Inés', 'Oliveros', 'inesmao@misena.edu.co', '3005793492',1,'2021-08-17 12:34:02');
INSERT INTO usuario (`username`, `password`, `nombres`, `apellidos`, `email`, `telefono`, `estado`,`fechaAlta`) VALUES ('auxiliar1', '123', 'Liliana', 'Bayona', 'olbayona4@misena.edu.co', '3000000000', 1,'2021-07-17 10:05:23');
INSERT INTO usuario (`username`, `password`, `nombres`, `apellidos`, `email`, `telefono`, `estado`,`fechaAlta`) VALUES ('auxiliar2', '123', 'Leidi Viviana', 'Bernate', 'lvbernate2@misena.edu.co', '3113333333', 1,'2021-03-21 14:14:14');
INSERT INTO usuario (`username`, `password`, `nombres`, `apellidos`, `email`, `telefono`, `estado`,`fechaAlta`) VALUES ('auxiliar3', 'M123*', 'Valeria', 'Vargas', 'vmvargas05@misena.edu.co', '3204444444', 1,'2021-02-11 08:34:54');

INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('TI', 1015222888, 'Laura Sofía', 'Pérez Castro', 312589432, 'Cra 23 # 15-16', 'laura.perez@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 1133444555, 'Carlos Eduardo', 'Ricardo Vélez', 3108912345, 'Calle 16 # 20-30 ', 'carlosericardov@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 55555555, 'Inés María', 'Oliveros Hernández', 3005793492, 'Calle 3 # 45-6', 'inesmao@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 66666666, 'Lina María', 'Oliveros Hernández', 3125567890, 'Calle 3 # 45-6', 'linaoliveros@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 77777777, 'Rosa María', 'Oliveros Hernández', 3115467890, 'Calle 3 # 45-6', 'rosaoliveros@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 88888888, 'Graciela', 'Hernández', 300987654, 'Calle 3 # 45-6', 'gracielahernandez@gmail.com', 1);
INSERT INTO `bdcrudpaciente`.`paciente` (`tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `telefono`, `direccion`, `email`, `estado`) VALUES ('CC', 99999999, 'Pedro', 'Oliveros', 3206543232, 'Calle 3 # 45-6', 'pedrooliveros@gmail.com', 1);