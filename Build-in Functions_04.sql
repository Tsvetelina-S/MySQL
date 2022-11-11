#Games from 2011 and 2012 Year
SELECT `name`,`start` FROM `games`
WHERE year(`start`) >= 2011 AND year(`start`)<=2012
ORDER BY `start`, `name`
LIMIT 50;

#User Email Providers
SELECT `user_name`, substring(`email`,locate('@',`email`)+1) AS 'Email Provider' FROM `users`
ORDER BY `email Provider`, `user_name`;

#Get Users with IP Address Like Pattern
SELECT `user_name`, `ip_address` FROM `users`
WHERE `ip_address` LIKE '___.1%.%.___'
ORDER BY `user_name`;

#Show All Games with Duration and Part of the Day
SELECT `name` as `game`,
CASE
WHEN hour(`start`) < 12 THEN 'Morning'
WHEN hour(`start`) < 18 THEN 'Afternoon'
ELSE 'Evening'
END
AS 'Part of the day',
CASE
WHEN `duration` <=3 THEN `Extra Short`
When `duration` <= 6 THEN `Short`
WHEN `duration` <= 10 Then `Long`
ELSE `Extra Long`
END 
AS `Duration`
FROM `games`;

#Orders Table
SELECT `product_name`, `order_date`,
adddate(`order_date`, interval 3 day) as pay_due,
adddate(`order_date`,interval 1 month) as dever_due
FROM `orders`;


