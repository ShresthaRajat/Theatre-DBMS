--CREATED BY  Rajat Shrestha  17030954

--3. For a given usher, find all the shows he/she ushered or will usher and the amount he/she got/will get for ushering the show.

SELECT Show.Show_Id, Show.Movie_Name, Show.Usher, Employee.Salary, Person.Name
FROM Show
Join Employee
ON Show.Usher = Employee.Person_ID
Join Person
ON Show.Usher = Person.Person_ID
WHERE Show.Usher = 1;
