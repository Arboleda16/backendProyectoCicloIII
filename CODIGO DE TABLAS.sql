-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
-- -----------------------------------------------------
-- Schema sistema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sistema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sistema` DEFAULT CHARACTER SET utf8mb4 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ENFERMERAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ENFERMERAS` (
  `CEDULA` INT NOT NULL COMMENT '',
  `NOMBRE` VARCHAR(45) NOT NULL COMMENT '',
  `CORREO` VARCHAR(45) NOT NULL COMMENT '',
  `CONTRASEÑA` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`CEDULA`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FAMILIAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FAMILIAR` (
  `CEDULA` INT NOT NULL COMMENT '',
  `NOMBRE` VARCHAR(45) NOT NULL COMMENT '',
  `DIRECCION` VARCHAR(45) NOT NULL COMMENT '',
  `CORREO` VARCHAR(45) NOT NULL COMMENT '',
  `TELEFONO` VARCHAR(45) NOT NULL COMMENT '',
  `CONTRASEÑA` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`CEDULA`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AUXILIAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AUXILIAR` (
  `CEDULA` INT NOT NULL COMMENT '',
  `NOMBRE` VARCHAR(45) NOT NULL COMMENT '',
  `CORREO` VARCHAR(45) NOT NULL COMMENT '',
  `CONTRASEÑA` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`CEDULA`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sistema`.`MEDICOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema`.`MEDICOS` (
  `CEDULA` INT(12) NOT NULL AUTO_INCREMENT COMMENT '',
  `NOMBRE COMPLETO` VARCHAR(50) NOT NULL COMMENT '',
  `CORREO` VARCHAR(50) NOT NULL COMMENT '',
  `CONTRASEÑA` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`CEDULA`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sistema`.`PACIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema`.`PACIENTES` (
  `CEDULA` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `NOMBRE COMPLETO` VARCHAR(50) NOT NULL COMMENT '',
  `EDAD` INT(10) NOT NULL COMMENT '',
  `NOMBRE DE FAMILIAR` INT NOT NULL COMMENT '',
  `MEDICO ASIGNADO` INT(12) NOT NULL COMMENT '',
  `CONTRASEÑA` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`CEDULA`)  COMMENT '',
  INDEX `MEDICO ASIGNADO_idx` (`MEDICO ASIGNADO` ASC)  COMMENT '',
  INDEX `FAMILIAR_idx` (`NOMBRE DE FAMILIAR` ASC)  COMMENT '',
  CONSTRAINT `MEDICO ASIGNADO`
    FOREIGN KEY (`MEDICO ASIGNADO`)
    REFERENCES `sistema`.`MEDICOS` (`CEDULA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FAMILIAR`
    FOREIGN KEY (`NOMBRE DE FAMILIAR`)
    REFERENCES `mydb`.`FAMILIAR` (`CEDULA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 178565424
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`HISTORIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`HISTORIAS` (
  `PACIENTE` INT NOT NULL COMMENT '',
  `FECHA` DATETIME NOT NULL COMMENT '',
  `OXIMETRIA` VARCHAR(45) NOT NULL COMMENT '',
  `FREC.RESPIRATORIA` VARCHAR(45) NOT NULL COMMENT '',
  `FREC.CARDIACA` VARCHAR(45) NOT NULL COMMENT '',
  `TEMPERATURA` VARCHAR(45) NOT NULL COMMENT '',
  `PRES. ARTERIAL` VARCHAR(45) NOT NULL COMMENT '',
  `GLICEMIA` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`PACIENTE`)  COMMENT '',
  CONSTRAINT `PACIENTE`
    FOREIGN KEY (`PACIENTE`)
    REFERENCES `sistema`.`PACIENTES` (`CEDULA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `sistema` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
