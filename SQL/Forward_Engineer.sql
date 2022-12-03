-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ITatbalsts
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ITatbalsts
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ITatbalsts` DEFAULT CHARACTER SET utf8 ;
USE `ITatbalsts` ;

-- -----------------------------------------------------
-- Table `ITatbalsts`.`adrese`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`adrese` (
  `adrese_id` INT NOT NULL AUTO_INCREMENT,
  `iela` VARCHAR(45) NOT NULL,
  `majas_nr` VARCHAR(45) NOT NULL,
  `dzivokla_nr` VARCHAR(45) NULL,
  `adresecol` VARCHAR(45) NULL,
  `pasta_indekss` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adrese_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`lietotajs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`lietotajs` (
  `lietotajs_id` INT NOT NULL AUTO_INCREMENT,
  `vards` VARCHAR(45) NOT NULL,
  `uzvards` VARCHAR(45) NOT NULL,
  `parole` VARCHAR(45) NOT NULL,
  `epasts` VARCHAR(255) NOT NULL,
  `telefons` VARCHAR(45) NOT NULL,
  `dzim_datums` DATE NOT NULL,
  `id_adrese` INT NOT NULL,
  PRIMARY KEY (`lietotajs_id`),
  CONSTRAINT `fk_lietotajs_adrese1`
    FOREIGN KEY (`id_adrese`)
    REFERENCES `ITatbalsts`.`adrese` (`adrese_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`problema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`problema` (
  `problema_id` INT NOT NULL AUTO_INCREMENT,
  `apraksts` TEXT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `id_lietotajs` INT NOT NULL,
  PRIMARY KEY (`problema_id`),
  CONSTRAINT `fk_problema_lietotajs`
    FOREIGN KEY (`id_lietotajs`)
    REFERENCES `ITatbalsts`.`lietotajs` (`lietotajs_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`grupas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`grupas` (
  `grupas_id` INT NOT NULL AUTO_INCREMENT,
  `nosaukums` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`grupas_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`darbinieki`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`darbinieki` (
  `darbinieki_id` INT NOT NULL AUTO_INCREMENT,
  `vards` VARCHAR(45) NOT NULL,
  `uzvards` VARCHAR(45) NOT NULL,
  `epasts` VARCHAR(255) NOT NULL,
  `telefons` VARCHAR(45) NOT NULL,
  `alga` FLOAT NOT NULL,
  `problema_id` INT NULL,
  `id_grupa` INT NOT NULL,
  `id_adrese` INT NOT NULL,
  PRIMARY KEY (`darbinieki_id`),
  CONSTRAINT `fk_darbinieki_problema1`
    FOREIGN KEY (`problema_id`)
    REFERENCES `ITatbalsts`.`problema` (`problema_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_darbinieki_grupas1`
    FOREIGN KEY (`id_grupa`)
    REFERENCES `ITatbalsts`.`grupas` (`grupas_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_darbinieki_adrese1`
    FOREIGN KEY (`id_adrese`)
    REFERENCES `ITatbalsts`.`adrese` (`adrese_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`administracija`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`administracija` (
  `administracija_id` INT NOT NULL AUTO_INCREMENT,
  `uzvards` VARCHAR(45) NOT NULL,
  `parole` VARCHAR(255) NOT NULL,
  `epasts` VARCHAR(255) NOT NULL,
  `darbinieki_id` INT NOT NULL,
  PRIMARY KEY (`administracija_id`),
  CONSTRAINT `fk_administracija_darbinieki1`
    FOREIGN KEY (`darbinieki_id`)
    REFERENCES `ITatbalsts`.`darbinieki` (`darbinieki_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ITatbalsts`.`premijas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ITatbalsts`.`premijas` (
  `premijas_id` INT NOT NULL,
  `status` ENUM('Izdota', 'Nav izdota') NOT NULL,
  `id_darbinieki` INT NOT NULL,
  PRIMARY KEY (`premijas_id`),
  CONSTRAINT `fk_premijas_darbinieki1`
    FOREIGN KEY (`id_darbinieki`)
    REFERENCES `ITatbalsts`.`darbinieki` (`darbinieki_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
