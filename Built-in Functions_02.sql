#Find Names of All Employees by First Nam

SELECT `first_name`, `last_name` from `employees`
WHERE `first_name` LIKE 'Sa%'
ORDER BY `employee_id`;

#Find Names of All Employees by Last Name

SELECT `first_name`,`last_name` from `employees`
Where `last_name` LIKE '%ei%'
ORDER BY `employee_id`;

#Find First Names of All Employees
SELECT `first_name` FROM `employees`
WHERE (`department_id` IN (3,10))
AND year (`hire_date`) BETWEEN 1995 and 2005
ORDER BY `employee_id`;

#Find All Employees Except Engineers
SELECT `first_name`,`last_name` FROM `employees`
WHERE `job_title` NOT LIKE '%engineer%'
ORDER BY `employee_id`;

#Find Towns with Name Length
SELECT  `name` FROM `towns`
WHERE  char_length(`name`)=5 OR char_length(`name`) = 6
ORDER BY `name`;

#Find Towns Starting With
SELECT `town_id`,`name` FROM `towns`
WHERE `name` LIKE 'M%' OR `name` LIKE 'K%' OR `name` LIKE 'B%' OR `name` LIKE 'E%'
ORDER BY `name`;

#Find Towns Not Starting With
SELECT `town_id`,`name` FROM `towns` 
WHERE `name` NOT LIKE 'r%' AND `name` NOT LIKE 'b%' AND `name` NOT LIKE 'd%'
ORDER BY `name`;

#Create View Employees Hired After 2000 Year
CREATE VIEW v_employees_hired_after_2000 AS
SELECT `first_name`,`last_name` FROM `employees`
Where year(`hire_date`) > 2000;
SELECT * FROM `v_employees_hired_after_2000`;

#Length of Last Name
SELECT `first_name`, `last_name` FROM `employees`
WHERE char_length(`last_name`) = 5;

