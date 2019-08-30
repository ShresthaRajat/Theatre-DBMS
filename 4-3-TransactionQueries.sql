--CREATED BY  Rajat Shrestha  17030954

SELECT Employee.Person_ID, Employee.Job, Person.Name, Booking.Show_ID
FROM Employee
JOIN Person
ON Employee.Person_ID = Person.Person_ID
JOIN Booking
ON Employee.Person_ID = Booking.Person_ID;
COMMIT;