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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`INSTITUTE_LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INSTITUTE_LOCATION` (
  `InstituteLocation` VARCHAR(45) NOT NULL,
  `LocationCode` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`InstituteLocation`),
  UNIQUE INDEX `LocationCode_UNIQUE` (`LocationCode` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INSTITUTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INSTITUTE` (
  `InstituteID` INT NOT NULL,
  `InstituteName` VARCHAR(45) NOT NULL,
  `InstituteCode` VARCHAR(7) NOT NULL,
  `InstituteAcronym` VARCHAR(45) NOT NULL,
  `INSTITUTE_LOCATION_InstituteLocation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`InstituteID`),
  INDEX `fk_INSTITUTE_INSTITUTE_LOCATION1_idx` (`INSTITUTE_LOCATION_InstituteLocation` ASC) VISIBLE,
  UNIQUE INDEX `InstituteName_UNIQUE` (`InstituteName` ASC) VISIBLE,
  UNIQUE INDEX `InstituteCode_UNIQUE` (`InstituteCode` ASC) VISIBLE,
  CONSTRAINT `fk_INSTITUTE_INSTITUTE_LOCATION1`
    FOREIGN KEY (`INSTITUTE_LOCATION_InstituteLocation`)
    REFERENCES `mydb`.`INSTITUTE_LOCATION` (`InstituteLocation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SEED`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SEED` (
  `SeedID` INT NOT NULL,
  `SeedName` VARCHAR(45) NOT NULL,
  `Genus` VARCHAR(45) NOT NULL,
  `Species` VARCHAR(45) NOT NULL,
  `FullScientificName` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`SeedID`),
  UNIQUE INDEX `FullScientificName_UNIQUE` (`FullScientificName` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DEPOSIT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DEPOSIT` (
  `DepositID` INT NOT NULL,
  `DepositDate` DATE NOT NULL,
  `INSTITUTE_InstituteID` INT NOT NULL,
  `SEED_SeedID` INT NOT NULL,
  PRIMARY KEY (`DepositID`),
  INDEX `fk_DEPOSIT_INSTITUTE1_idx` (`INSTITUTE_InstituteID` ASC) VISIBLE,
  INDEX `fk_DEPOSIT_SEED1_idx` (`SEED_SeedID` ASC) VISIBLE,
  CONSTRAINT `fk_DEPOSIT_INSTITUTE1`
    FOREIGN KEY (`INSTITUTE_InstituteID`)
    REFERENCES `mydb`.`INSTITUTE` (`InstituteID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DEPOSIT_SEED1`
    FOREIGN KEY (`SEED_SeedID`)
    REFERENCES `mydb`.`SEED` (`SeedID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ORIGIN_CONTINENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ORIGIN_CONTINENT` (
  `ContinentID` INT NOT NULL,
  `Continent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ContinentID`),
  UNIQUE INDEX `Continent_UNIQUE` (`Continent` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RETRIEVAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RETRIEVAL` (
  `RetrievalID` INT NOT NULL,
  `RetrievalDate` DATE NOT NULL,
  `INSTITUTE_InstituteID` INT NOT NULL,
  `SEED_SeedID` INT NOT NULL,
  PRIMARY KEY (`RetrievalID`),
  INDEX `fk_RETRIEVAL_INSTITUTE1_idx` (`INSTITUTE_InstituteID` ASC) VISIBLE,
  INDEX `fk_RETRIEVAL_SEED1_idx` (`SEED_SeedID` ASC) VISIBLE,
  CONSTRAINT `fk_RETRIEVAL_INSTITUTE1`
    FOREIGN KEY (`INSTITUTE_InstituteID`)
    REFERENCES `mydb`.`INSTITUTE` (`InstituteID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RETRIEVAL_SEED1`
    FOREIGN KEY (`SEED_SeedID`)
    REFERENCES `mydb`.`SEED` (`SeedID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ORIGIN_COUNTRY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ORIGIN_COUNTRY` (
  `CountryID` INT NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `ORIGIN_CONTINENT_ContinentID` INT NOT NULL,
  PRIMARY KEY (`CountryID`, `ORIGIN_CONTINENT_ContinentID`),
  INDEX `fk_ORIGIN_COUNTRY_ORIGIN_CONTINENT1_idx` (`ORIGIN_CONTINENT_ContinentID` ASC) VISIBLE,
  UNIQUE INDEX `Country_UNIQUE` (`Country` ASC) VISIBLE,
  CONSTRAINT `fk_ORIGIN_COUNTRY_ORIGIN_CONTINENT1`
    FOREIGN KEY (`ORIGIN_CONTINENT_ContinentID`)
    REFERENCES `mydb`.`ORIGIN_CONTINENT` (`ContinentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SEED_has_ORIGIN_CONTINENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SEED_has_ORIGIN_CONTINENT` (
  `SEED_SeedID` INT NOT NULL,
  `ORIGIN_CONTINENT_ContinentID` INT NOT NULL,
  PRIMARY KEY (`SEED_SeedID`, `ORIGIN_CONTINENT_ContinentID`),
  INDEX `fk_SEED_has_ORIGIN_CONTINENT_ORIGIN_CONTINENT1_idx` (`ORIGIN_CONTINENT_ContinentID` ASC) VISIBLE,
  INDEX `fk_SEED_has_ORIGIN_CONTINENT_SEED1_idx` (`SEED_SeedID` ASC) VISIBLE,
  CONSTRAINT `fk_SEED_has_ORIGIN_CONTINENT_SEED1`
    FOREIGN KEY (`SEED_SeedID`)
    REFERENCES `mydb`.`SEED` (`SeedID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SEED_has_ORIGIN_CONTINENT_ORIGIN_CONTINENT1`
    FOREIGN KEY (`ORIGIN_CONTINENT_ContinentID`)
    REFERENCES `mydb`.`ORIGIN_CONTINENT` (`ContinentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SEED_has_ORIGIN_COUNTRY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SEED_has_ORIGIN_COUNTRY` (
  `SEED_SeedID` INT NOT NULL,
  `ORIGIN_COUNTRY_CountryID` INT NOT NULL,
  PRIMARY KEY (`SEED_SeedID`, `ORIGIN_COUNTRY_CountryID`),
  INDEX `fk_SEED_has_ORIGIN_COUNTRY_ORIGIN_COUNTRY1_idx` (`ORIGIN_COUNTRY_CountryID` ASC) VISIBLE,
  INDEX `fk_SEED_has_ORIGIN_COUNTRY_SEED1_idx` (`SEED_SeedID` ASC) VISIBLE,
  CONSTRAINT `fk_SEED_has_ORIGIN_COUNTRY_SEED1`
    FOREIGN KEY (`SEED_SeedID`)
    REFERENCES `mydb`.`SEED` (`SeedID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SEED_has_ORIGIN_COUNTRY_ORIGIN_COUNTRY1`
    FOREIGN KEY (`ORIGIN_COUNTRY_CountryID`)
    REFERENCES `mydb`.`ORIGIN_COUNTRY` (`CountryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
