--CREATED BY  Rajat Shrestha  17030954

--4. List all customers booked for a show starting later or on a given date.

SELECT Person.Person_Id, Person.Name, Booking.Show_ID, Show.Movie_Name 
FROM Booking
JOIN Person
ON Booking.Person_Id = Person.Person_Id
JOIN Show
ON Booking.Show_ID = Show.Show_ID
WHERE Show_Date >= '12-jan-2019';
COMMIT;