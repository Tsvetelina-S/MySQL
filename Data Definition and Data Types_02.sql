
#Create Table People

CREATE TABLE `people` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR (200) NOT NULL,
`picture` BLOB,
`height` DOUBLE (10,2),
`weight` DOUBLE (10,2),
`gender` CHAR (1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT
);

#Insert statements

INSERT INTO `people` (`name`,`gender`,`birthdate`)
VALUES 
("Victor",'m', DATE(NOW())),
("Maria",'f',"2005-01-05"),
("Sofia",'f',"2007-10-06"),
("Mario",'m',"2002-12-12"),
("Peter",'m',"2001-12-01");

 #Create Table Users

CREATE TABLE `users`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR (30) NOT NULL,
`password` VARCHAR (26) NOT NULL,
`profile_picture` BLOB,
`last_login_time`  TIME,
`is_deleted` BOOLEAN 
);

#Insert statements

INSERT INTO `users` (`username`,`password`)
VALUES
("bogi2","dqopfh"),
("godji8","dqwpodl"),
("fanka","dqawoihol"),
("borko","kp3aw"),
("bogdanka","dcseoiwje8");

#Change Primary Key

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD PRIMARY KEY `pk_users`  (`id`, `username`);

#Set Default Value of a Field

ALTER TABLE `users`
MODIFY COLUMN `last_login_time` DATETIME DEFAULT NOW();


#Set Unique Field

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`),
MODIFY COLUMN `username` VARCHAR (30) UNIQUE;

# Movies Database 


CREATE TABLE `directors` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`director_name` VARCHAR (50) NOT NULL,
`notes`TEXT
);

INSERT INTO `directors` (`director_name`,`notes`)
VALUES
("Name1","NOTE1"),
("Name2","NOTE2"),
("Name3","NOTE3"),
("Name4","NOTE4"),
("Name5","NOTE5");


CREATE TABLE `genres` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`genre_name` VARCHAR (50) NOT NULL,
`notes` TEXT
);

INSERT INTO `genres` (`genre_name`,`notes`)
VALUES
("C.Name1","C.NOTE1"),
("C.Name2","C.NOTE2"),
("C.Name3","C.NOTE3"),
("C.Name4","C.NOTE4"),
("C.Name5","C.NOTE5");


CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`category_name` VARCHAR (50) NOT NULL,
`notes` TEXT
);

INSERT INTO `categories` (`category_name`,`notes`)
VALUES 
("C.Name1","C.NOTE1"),
("C.Name2","C.NOTE2"),
("C.Name3","C.NOTE3"),
("C.Name4","C.NOTE4"),
("C.Name5","C.NOTE5");



CREATE TABLE `movies` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR (50) NOT NULL,
`director_id` INT,
`copyright_year` INT,
`length` INT,
`genre_id` INT,
`category_id`INT,
`rating` DOUBLE,
`notes` TEXT
);

INSERT INTO `movies` (`title`)
VALUES
("Test1"),
("Test1"),
("Test1"),
("Test1"),
("Test1");















