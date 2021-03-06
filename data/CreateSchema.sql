-- MySQL Script generated by MySQL Workbench
-- Tue Mar 26 16:35:23 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema user_addition
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema user_addition
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `user_addition` DEFAULT CHARACTER SET utf8 ;
USE `user_addition` ;

-- -----------------------------------------------------
-- Table `user_addition`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_addition`.`service` (
  `id_service` INT(11) NOT NULL AUTO_INCREMENT,
  `name_service` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_service`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `user_addition`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_addition`.`type` (
  `id_type` INT(11) NOT NULL AUTO_INCREMENT,
  `name_type` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_type`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `user_addition`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_addition`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company` INT(11) NOT NULL,
  `branch` INT(11) NULL DEFAULT NULL,
  `team` INT(11) NULL DEFAULT NULL,
  `user_id` VARCHAR(50) NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `user_addition`.`user_service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_addition`.`user_service` (
  `id_user_service` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `id_service` INT(11) NOT NULL,
  PRIMARY KEY (`id_user_service`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `user_addition`.`user_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_addition`.`user_type` (
  `id_user_type` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `id_type` INT(11) NOT NULL,
  PRIMARY KEY (`id_user_type`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
