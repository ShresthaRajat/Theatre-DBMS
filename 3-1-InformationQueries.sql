--CREATED BY  Rajat Shrestha  17030954

--1. List all customers, old and current

SELECT Customer.Person_Id, Customer.Type, Person.Name 
FROM Customer 
JOIN Person
ON Customer.Person_Id = Person.Person_Id;
COMMIT;
