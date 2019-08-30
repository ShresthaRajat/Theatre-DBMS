--CREATED BY  Rajat Shrestha  17030954

--2. List the shows that will have breakfast at a given place on a given date

SELECT Show_ID, Movie_Name, Meal, Hall
FROM Show
WHERE Meal = 'breakfast' and Hall = 'A' and Show_Date = '11-jan-2019';
COMMIT;
