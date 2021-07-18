-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema studentdatabase
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema studentdatabase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `studentdatabase` DEFAULT CHARACTER SET utf8 ;
USE `studentdatabase` ;

-- -----------------------------------------------------
-- Table `studentdatabase`.`student_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentdatabase`.`student_information` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(255) NOT NULL,
  `student_address` VARCHAR(255) NOT NULL,
  `student_email` VARCHAR(45) NULL DEFAULT 'N/A',
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `studentdatabase`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentdatabase`.`classes` (
  `class_id` INT NOT NULL AUTO_INCREMENT,
  `class_code` VARCHAR(45) NOT NULL,
  `student_id` INT NOT NULL,
  PRIMARY KEY (`class_id`, `student_id`),
  INDEX `fk_classes_student_information_idx` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_classes_student_information`
    FOREIGN KEY (`student_id`)
    REFERENCES `studentdatabase`.`student_information` (`student_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `studentdatabase`.`major`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentdatabase`.`major` (
  `major_id` INT NOT NULL AUTO_INCREMENT,
  `major` VARCHAR(45) NOT NULL,
  `student_id` INT NOT NULL,
  PRIMARY KEY (`major_id`, `student_id`),
  INDEX `fk_major_student_information1_idx` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_major_student_information1`
    FOREIGN KEY (`student_id`)
    REFERENCES `studentdatabase`.`student_information` (`student_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;

-- Insert data into the tables
INSERT INTO student_information VALUES
(1, 'Joe Smith', '124 Main St.', 'Joe@school.edu'),
(2, 'Sue Brown', '345 Second St. S', 'Sue@school.edu'),
(3, 'Nick Green', '45 York Road', 'Nick@school.edu'),
(4, 'Andy Andrews', '600 5th Ave.', 'Andy@school.edu'),
(5, 'Mark Green', '118 3d Rd', 'Mark@school.edu'),
(6, 'Tom Richard', '777 Magic Blvd', 'Tom@school.edu'),
(7, "Alex O'Neil", '123 Front St', 'Alex@school.edu');

INSERT INTO major VALUES
(1,'Programming',1),
(1,'Programming',2),
(1,'Programming',5),
(1,'Programming',7),
(2,'Networking',3),
(2,'Networking',4),
(2,'Networking',6);

INSERT INTO classes VALUES
(1,'IT1025',1),
(1,'IT1025',2),
(1,'IT1025',3),
(1,'IT1025',4),
(1,'IT1025',5),
(1,'IT1025',6),
(1,'IT1025',7),
(2,'IT1050',1),
(2,'IT1050',2),
(2,'IT1050',4),
(2,'IT1050',6),
(2,'IT1050',7),
(3,'IT2351',2),
(3,'IT2351',5),
(3,'IT2351',7),
(4,'MATH1200',1),
(4,'MATH1200',5);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
