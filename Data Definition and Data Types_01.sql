CREATE TABLE `minions`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR (50),
`age` INT
);
CREATE TABLE `towns`(
`town_id` INT PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR (50),
CONSTRAINT `fk_minions_towns`
FOREIGN KEY (`town_id`) REFERENCES `minions`(`id`)
);

ALTER TABLE `towns`
MODIFY `name` VARCHAR (50) NOT NULL;

ALTER TABLE `minions`.`towns` 
DROP FOREIGN KEY `fk_minions_towns`;

ALTER TABLE `towns`
CHANGE `town_id` `id` INT;

ALTER TABLE `minions`
ADD COLUMN `town_id` INT NOT NULL;

ALTER TABLE `minions`
ADD CONSTRAINT `fk_minions_towns`
FOREIGN KEY (`town_id`)
REFERENCES `towns`(`id`);

INSERT INTO `towns` (`id`,`name`)
VALUES (1,"Sofia"),(2,"Plovdiv"),(3,"Varna");

INSERT INTO `minions` (`id`,`name`,`age`,`town_id`)
VALUE (1,"Kevin",22,1),(2,"Bob",15,3),(3,"Steward",NULL,2);

TRUNCATE TABLE `minions`;

DROP TABLE `minions`;

DROP TABLE `towns`;














