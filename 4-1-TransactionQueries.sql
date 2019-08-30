--CREATED BY  Rajat Shrestha  17030954

--1. List all ushers that attended a show that had a lunch in a given place.

SELECT Employee.Person_ID, Employee.Job, Person.Name, Show.Meal, Show.Hall, Booking.Show_ID, Booking.Person_ID
FROM Booking
JOIN Employee
ON Booking.Person_ID = Employee.Person_ID
JOIN Person
ON Booking.Person_ID = Person.Person_ID
JOIN Show
ON Booking.Show_ID = Show.Show_ID
WHERE Show.Meal = 'lunch' and Show.Hall = 'B';
COMMIT;