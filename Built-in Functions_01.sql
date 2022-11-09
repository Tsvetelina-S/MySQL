SELECT `title` FROM `books` WHERE
substring(`title`,1,3) = 'The';

SELECT 
replace(`title`,'The','***')
AS 'Title'
FROM `books`
WHERE substring(`title`,1,3) = 'The';


SELECT ROUND(SUM(`cost`),2) AS Total FROM `books`;

SELECT concat_ws(' ',`first_name`,`last_name`) AS 'Full Name',
timestampdiff(DAY,`born`,`died`) AS 'Days Lived'
FROM `authors`;

SELECT `title` FROM `books`
WHERE `title` LIKE 'Harry Potter%';
