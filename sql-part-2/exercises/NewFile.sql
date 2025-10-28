 /*
 

-- Write a query that returns the location of spaces in both of these columns
SELECT number_of_Trips, CHARINDEX(' ', base_name) AS space_location
FROM dbo.other_FHV_services_jan_aug_2015;


-- write a query that retuns the last 3 characters of the base name 
SELECT base_name, RIGHT(base_name, 3) AS last_three_characters
FROM dbo.other_FHV_services_jan_aug_2015;


-- display the name of the month of the pick up date in decending order
SELECT DATENAME(month, pick_up_date) AS 'Pick up Month'
FROM dbo.other_FHV_services_jan_aug_2015
ORDER BY MONTH(pick_up_date) DESC;

--display the day number and name of the month of the pick up date in decending order
SELECT DAY(pick_up_date) AS 'Pick up Day', DATENAME(month, pick_up_date) AS 'Pick up Month'
FROM dbo.other_FHV_services_jan_aug_2015
ORDER BY DAY(pick_up_date) ASC;

--Write a query that returns the most northerly Lyft pickup that is not null.
SELECT TOP 1 * FROM dbo.lyft
WHERE COALESCE(start_lng, start_lat) IS NOT NULL
ORDER BY start_lng ASC;

--Write a query that returns the most southerly Lyft pickup that is not null.
SELECT TOP 1 * FROM dbo.lyft
WHERE COALESCE(start_lng, start_lat) IS NOT NULL
ORDER BY start_lat ASC;
*/

--write a query that connects the the base number and the base name in a string that uses the following format: base_number: base_name
SELECT base_number + ': ' + base_name AS 'base_number.base_name'
FROM dbo.other_FHV_services_jan_aug_2015;
