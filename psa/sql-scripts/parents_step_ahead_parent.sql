-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: parents_step_ahead
-- ------------------------------------------------------
-- Server version	8.0.12

CREATE SCHEMA `psa`;

USE `psa`;

/* Table Creation */

CREATE TABLE `psa`.`parent` (
  `IdParent` int(11) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `IdAddress` INT(11) NOT NULL,
  `HomePhone` VARCHAR(15) NULL,
  `OfficePhone` VARCHAR(15) NULL,
  `MobilePhone` VARCHAR(15) NULL,
  PRIMARY KEY (`IdParent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `psa`.`child` (
  `IdChild` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `IdParent` int(11) NOT NULL,
  `IdSchool` int(11) NOT NULL,
  `IdAddress` INT(11) NOT NULL,
  `HomePhone` varchar(15) DEFAULT NULL,
  `MobilePhone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdChild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
CREATE TABLE `psa`.`school` (
  `IdSchool` int(11) NOT NULL,
  `SchoolName` varchar(45) NOT NULL,
  `IdAddress` INT(11) NOT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Phone1` varchar(15) DEFAULT NULL,
  `Phone2` varchar(15) DEFAULT NULL,
  `Comments` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdSchool`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `psa`.`event` (
  `IdEvent` INT(11) NOT NULL,
  `NameEvent` VARCHAR(255) NOT NULL,
  `DateEvent` DATETIME NOT NULL,
  `IdAddress` INT(11) NOT NULL,
  `Comments` VARCHAR(255) NULL,
  PRIMARY KEY (`IdEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `psa`.`address` (
  `IdAddress` INT(11) NOT NULL,
  `City` VARCHAR(255) NOT NULL,
  `State` VARCHAR(255) NOT NULL,
  `Zipcode` VARCHAR(255) NULL,
  `Address` VARCHAR(255) NOT NULL,
  `Comments` VARCHAR(255) NULL,
  PRIMARY KEY (`IdAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `psa`.`assistants` (
  `IdAssistant` INT(11) NOT NULL,
  `IdEvent` INT(11) NOT NULL,
  `IdParent` int(11) NOT NULL,
  PRIMARY KEY (`IdAssistant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* Indexes */

ALTER TABLE `psa`.`address` 
ADD INDEX `IdAddressIDX` (`IdAddress` ASC);
;

ALTER TABLE `psa`.`parent` 
ADD INDEX `IdParentIDX` (`IdParent` ASC);
;

ALTER TABLE `psa`.`event` 
ADD INDEX `IdEventIDX` (`IdEvent` ASC);
;

ALTER TABLE `psa`.`school` 
ADD INDEX `IdSchoolIDX` (`IdSchool` ASC);
;

ALTER TABLE `psa`.`child` 
ADD INDEX `IdChildIDX` (`IdChild` ASC);
;

ALTER TABLE `psa`.`assistants` 
ADD INDEX `IdAssistantIDX` (`IdAssistant` ASC);
;

/* Foreign keys */

ALTER TABLE `psa`.`parent` 
ADD INDEX `IdAddressIDX3` (`IdAddress` ASC);
ALTER TABLE `psa`.`parent` 
ADD CONSTRAINT `ParentAddress`
  FOREIGN KEY (`IdAddress`)
  REFERENCES `psa`.`address` (`IdAddress`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `psa`.`school` 
ADD INDEX `IdAddressIDX4` (`IdAddress` ASC);
ALTER TABLE `psa`.`school` 
ADD CONSTRAINT `SchoolAddress`
  FOREIGN KEY (`IdAddress`)
  REFERENCES `psa`.`address` (`IdAddress`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `psa`.`event` 
ADD INDEX `IdAddressIDX5` (`IdAddress` ASC);
ALTER TABLE `psa`.`event` 
ADD CONSTRAINT `EventAddress`
  FOREIGN KEY (`IdAddress`)
  REFERENCES `psa`.`address` (`IdAddress`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
 
ALTER TABLE `psa`.`child` 
ADD INDEX `IdParentIDX2` (`IdParent` ASC),
ADD INDEX `IdSchoolIDX2` (`IdSchool` ASC),
ADD INDEX `IdAddressIDX2` (`IdAddress` ASC);
ALTER TABLE `psa`.`child` 
ADD CONSTRAINT `ChildParent`
  FOREIGN KEY (`IdParent`)
  REFERENCES `psa`.`parent` (`IdParent`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `ChildSchool`
  FOREIGN KEY (`IdSchool`)
  REFERENCES `psa`.`school` (`IdSchool`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `ChildAddress`
  FOREIGN KEY (`IdAddress`)
  REFERENCES `psa`.`address` (`IdAddress`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `psa`.`assistants` 
ADD INDEX `IdParentIDX6` (`IdParent` ASC),
ADD INDEX `IdEventIDX6` (`IdEvent` ASC);
ALTER TABLE `psa`.`assistants` 
ADD CONSTRAINT `AssistancsParent`
  FOREIGN KEY (`IdParent`)
  REFERENCES `psa`.`parent` (`IdParent`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `AssistancsEvent`
  FOREIGN KEY (`IdEvent`)
  REFERENCES `psa`.`event` (`IdEvent`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
 
