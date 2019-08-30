--CREATED BY  Rajat Shrestha  17030954

CREATE TABLE Person(
    Person_ID NUMBER(10) NOT NULL,
    Name VARCHAR2(20) NOT NULL,
    Age  NUMBER(5) NOT NULL,
    sex VARCHAR2(20) NOT NULL,
    DOB DATE,
    E_mail VARCHAR2(50) UNIQUE,
    Cell_No NUMBER(10) UNIQUE,
    Fax_No NUMBER(10),
    Phone_No NUMBER(10),
	CONSTRAINT Person_PK 
		PRIMARY KEY (Person_ID)
);
COMMIT;

CREATE TABLE Location(
    Location_ID NUMBER(10) NOT NULL,
    Country VARCHAR2(20) NOT NULL,
    Zone VARCHAR2(20) NOT NULL,
    City VARCHAR2(20) NOT NULL,
    Street VARCHAR2(20) NOT NULL,
    Street_Name VARCHAR2(20) NOT NULL,
	CONSTRAINT Location_PK 
		PRIMARY KEY (Location_ID)
);
COMMIT;

CREATE TABLE Address(
	Person_ID NUMBER(10) NOT NULL,
	Location_ID NUMBER(10) NOT NULL,
	POB_Address VARCHAR2(1) DEFAULT 'T',
	CONSTRAINT Address_PK 
		PRIMARY KEY (Person_ID, Location_ID),
	CONSTRAINT Address_Location_FK 
		FOREIGN KEY (Location_ID)
		REFERENCES Location (Location_ID),
	CONSTRAINT Address_Person_FK 
		FOREIGN KEY (Person_ID)
		REFERENCES Person (Person_ID)
);
COMMIT;

CREATE TABLE Customer(
	Person_ID NUMBER(10) NOT NULL,
	Type VARCHAR2(20) DEFAULT 'New',
	CONSTRAINT Customer_PK 
		PRIMARY KEY (Person_ID),
	CONSTRAINT Customer_Person_FK 
		FOREIGN KEY (Person_ID)
		REFERENCES Person (Person_ID)
);
COMMIT;

CREATE TABLE Employee(
	Person_ID NUMBER(10) NOT NULL,
	Job VARCHAR2(20) NOT NULL,
	Salary NUMBER(10) NOT NULL,
	CONSTRAINT Employee_PK 
		PRIMARY KEY (Person_ID),
	CONSTRAINT Employee_Person_FK 
		FOREIGN KEY (Person_ID)
		REFERENCES Person (Person_ID)
);
COMMIT;

CREATE TABLE Movie(
	Movie_Name VARCHAR2(20) NOT NULL,
	Rating NUMBER(10) ,
	Duration NUMBER(10) ,
	CONSTRAINT Movie_PK 
		PRIMARY KEY (Movie_Name)
);
COMMIT;

CREATE TABLE Accommodation(
	Accommodation VARCHAR2(20) NOT NULL,
	Price NUMBER(10) NOT NULL,
	CONSTRAINT Accommodation_PK 
		PRIMARY KEY (Accommodation)
);
COMMIT;

CREATE TABLE Show(
	Show_ID NUMBER(10) NOT NULL,
	Meal VARCHAR2(20) NOT NULL,
	Usher NUMBER(10) NOT NULL,
	Show_Date DATE NOT NULL,
	Show_Time NUMBER(10) NOT NULL,
	Hall VARCHAR2(20) NOT NULL,
	Movie_Name VARCHAR2(20) NOT NULL,
	CONSTRAINT Show_PK 
		PRIMARY KEY (Show_ID),
	CONSTRAINT Show_Employee_FK 
		FOREIGN KEY (Usher)
		REFERENCES Employee (Person_ID),
	CONSTRAINT Show_Movie_FK 
		FOREIGN KEY (Movie_Name)
		REFERENCES Movie (Movie_Name)
);
COMMIT;

CREATE TABLE Booking(
	Person_ID NUMBER(10) NOT NULL,
	Show_ID NUMBER(10) NOT NULL,	
	No_Tickets NUMBER(10) NOT NULL,
	Booking_Date DATE NOT NULL,
	Accommodation VARCHAR2(20) NOT NULL,
	CONSTRAINT Booking_PK 
		PRIMARY KEY (Person_ID, Show_ID),
	CONSTRAINT Booking_Person_FK 
		FOREIGN KEY (Person_ID)
		REFERENCES Person (Person_ID),
	CONSTRAINT Booking_Show_FK 
		FOREIGN KEY (Show_ID)
		REFERENCES Show (Show_ID),
	CONSTRAINT Booking_Accommodation_FK 
		FOREIGN KEY (Accommodation)
		REFERENCES Accommodation (Accommodation)
);
COMMIT;