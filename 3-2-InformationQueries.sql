--CREATED BY  Rajat Shrestha  17030954

--2. List all customers with all their addresses

SELECT Customer.Person_Id as Customer,
Location.City, Location.Street , Location.Street_Name
FROM Address
JOIN Customer
ON Address.Person_Id = Customer.Person_Id
JOIN Location
ON Address.Location_Id = Location.Location_ID;