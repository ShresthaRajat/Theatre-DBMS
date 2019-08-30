--CREATED BY  Rajat Shrestha  17030954

INSERT INTO Accommodation VALUES ('Platinium', 500);
COMMIT;
INSERT INTO Accommodation VALUES ('Gold', 400);
COMMIT;
INSERT INTO Accommodation VALUES ('Silver', 300);
COMMIT;
INSERT INTO Accommodation VALUES ('Exclusive', 0);
COMMIT;

INSERT INTO Movie VALUES ('Aquawoman', 9, 100);
COMMIT;
INSERT INTO Movie VALUES ('Bohemien', 10, 130);
COMMIT;
INSERT INTO Movie VALUES ('Sinatra', 7, 140);
COMMIT;

INSERT INTO Person VALUES (1, 'Rajat Shretha', 19, 'male', '11-mar-1999', 'rajat@mail.com', 984399999, 909090, 89891232 );
COMMIT;
INSERT INTO Person VALUES (2, 'Saubhagya Sharma', 19, 'male', '11-dec-1998', 'sau@mail.com', 984399998, 909091, 89891233 );
COMMIT;
INSERT INTO Person VALUES (3, 'Saurav Khadka', 19, 'male', '16-feb-1999', 'saurav@mail.com', 984399997, 909092, 89891234 );
COMMIT;
INSERT INTO Person VALUES (4, 'Anu Shretha', 21, 'female', '11-mar-1999', 'anu@mail.com', 984399996, 909093, 89891235 );
COMMIT;
INSERT INTO Person VALUES (5, 'Amira Shakya', 14, 'female', '11-dec-1998', 'Amira@mail.com', 984399995, 909094, 89861233 );
COMMIT;
INSERT INTO Person VALUES (6, 'Tejan malla', 19, 'male', '11-dec-1998', 'Tejan@mail.com', 984399915, 909014, 89861223 );
COMMIT;

INSERT INTO Employee VALUES (1, 'Usher', 20000);
COMMIT;
INSERT INTO Employee VALUES (2, 'Usher', 20000);
COMMIT;
INSERT INTO Employee VALUES (5, 'Accountant', 40000);
COMMIT;

INSERT INTO Customer VALUES (1, 'Old Customer');
COMMIT;
INSERT INTO Customer VALUES (2, 'New Customer');
COMMIT;
INSERT INTO Customer VALUES (3, 'New Customer');
COMMIT;
INSERT INTO Customer VALUES (4, 'New Customer');
COMMIT;
INSERT INTO Customer VALUES (5, 'New Customer');
COMMIT;

INSERT INTO Location VALUES (1, 'Nepal', 'Bagmati', 'Kathmandu', 'Samakhushi', 'Town-planning Rd');
COMMIT;
INSERT INTO Location VALUES (2, 'Nepal', 'Bagmati', 'Kathmandu', 'Baneshwor', 'Bhawan');
COMMIT;
INSERT INTO Location VALUES (3, 'Nepal', 'Bagmati', 'Kathmandu', 'Gyaneshwor', 'Kilagal');
COMMIT;
INSERT INTO Location VALUES (4, 'Nepal', 'Bagmati', 'Kathmandu', 'Soyambu', 'Bhagwan Pau');
COMMIT;

INSERT INTO Address VALUES (1, 1, 'y');
COMMIT;
INSERT INTO Address VALUES (2, 2, 'y');
COMMIT;
INSERT INTO Address VALUES (3, 3, 'y');
COMMIT;
INSERT INTO Address VALUES (1, 4, 'n');
COMMIT;
INSERT INTO Address VALUES (4, 4, 'y');
COMMIT;
INSERT INTO Address VALUES (5, 4, 'y');
COMMIT;


INSERT INTO Show VALUES (1, 'breakfast', 1, '11-jan-2019', 0900, 'A','Aquawoman');
COMMIT;
INSERT INTO Show VALUES (2, 'dinner', 1, '11-jan-2019', 2100, 'B','Bohemien');
COMMIT;
INSERT INTO Show VALUES (3, 'dinner', 1, '11-jan-2019', 2100, 'A','Sinatra');
COMMIT;
INSERT INTO Show VALUES (4, 'lunch', 1, '12-jan-2019', 1200, 'B','Sinatra');
COMMIT;



INSERT INTO Booking VALUES (1, 2, 1, '2-jan-2019', 'Exclusive');
COMMIT;
INSERT INTO Booking VALUES (2, 2, 1, '3-jan-2019', 'Exclusive');
COMMIT;
INSERT INTO Booking VALUES (3, 2, 1, '3-jan-2019', 'Silver');
COMMIT;
INSERT INTO Booking VALUES (3, 1, 2, '3-jan-2019', 'Platinium');
COMMIT;
INSERT INTO Booking VALUES (3, 3, 1, '3-jan-2019', 'Gold');
COMMIT;
INSERT INTO Booking VALUES (1, 4, 1, '12-jan-2019', 'Exclusive');
COMMIT;





-- Insering values directly
INSERT INTO Booking VALUES (1, 3, 2, '1-jan-2019', 'Exclusive');
COMMIT;


-- Announcing the fields before adding values
INSERT INTO Booking (Person_ID, Show_ID, No_Tickets, Booking_Date, Accommodation) VALUES (2, 1, 1, '3-jan-2019', 'Exclusive');
COMMIT;


-- Adding by Announcing a single field
INSERT INTO Booking VALUES (3, 4, 1, TO_DATE('3-jan-2019', 'dd-month-yyyy'), 'Exclusive');
COMMIT;


-- Adding into two seperate tables directly
INSERT ALL INTO Employee VALUES (6, 'Usher', 20000)
INTO Customer VALUES (6, 'Old Customer') SELECT * FROM DUAL;
COMMIT;


-- Adding values by asking user input
--INSERT INTO Employee VALUES (&Person_ID, &Job, &Salary);
--COMMIT;
-- 3
-- 'guard'
-- 19000
