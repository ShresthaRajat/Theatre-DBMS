--CREATED BY  Rajat Shrestha  17030954

--4. List all customers that are also ushers.

SELECT Customer.Person_ID as Customer,
Person.Name, Employee.Job
FROM Employee
JOIN Person
ON Employee.Person_ID = Person.Person_ID
INNER JOIN Customer
ON Employee.Person_Id = Customer.Person_Id
WHERE Employee.job = 'Usher';
