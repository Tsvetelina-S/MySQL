#Select Employee Information
SELECT `id`,`first_name`,`last_name`,`job_title` FROM `employees`
ORDER BY `id`;

#Select Employees with Filter
SELECT `id`, concat_ws(" ",`first_name`,`last_name`) AS "full_name",`job_title`,`salary` FROM `employees`
WHERE `salary` > 1000.00
ORDER BY `id`;

#Update Employees Salary
UPDATE `employees`
SET `salary` = `salary` + 100
WHERE `employees`.`job_title` = 'Manager';
SELECT `salary` FROM `employees`;

#Top Paid Employee
SELECT * FROM `employees`
ORDER BY `salary` DESC
LIMIT 0,1;






#Select Employees by Multiple Filters
SELECT * FROM `employees`
WHERE `department_id`= 4 AND `salary` >= 1000
ORDER BY `employees`.`id`;

#Delete from Table
DELETE FROM `employees`
WHERE `department_id` = 1 OR `department_id` = 2;
SELECT * FROM `employees`
ORDER BY `id`;