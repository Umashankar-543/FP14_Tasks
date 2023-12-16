CREATE TABLE Movies(
Id NUMBER NOT NULL UNIQUE PRIMARY KEY,
Title VARCHAR(25) NOT NULL,
Director VARCHAR(25) DEFAULT 'John Lasseter',
Year NUMBER NOT NULL,
Length_minutes NUMBER NOT NULL
);

INSERT INTO Movies VALUES(1, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO Movies VALUES(2, "A Bug's Life", 'John Lasseter', 1998, 95);
INSERT INTO Movies values(3, 'Toy Story 2', 'John Lasseter', 1999, 93);

COMMIT;

SELECT * FROM Movies;

-------------------------------------------------------------------------------

CREATE TABLE Employee(
ID NUMBER NOT NULL UNIQUE PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
AGE NUMBER NOT NULL,
ADDRESS VARCHAR(15) NOT NULL,
SALARY FLOAT NOT NULL
);

INSERT INTO Employee VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
INSERT INTO Employee VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
INSERT INTO Employee VALUES(3, 'Kaushik', 23, 'Kota', 2000.00);
INSERT INTO Employee VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
INSERT INTO Employee VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
INSERT INTO Employee VALUES(6, 'Komal', 22, 'MP', 4500.00);
INSERT INTO Employee VALUES(7, 'Muffy', 24, 'Indore', 10000.00);

COMMIT;

SELECT * FROM Employee;

------------------------------------------------------------------------------------

CREATE TABLE Persons(
PersonID NUMBER UNIQUE NOT NULL PRIMARY KEY,
LastName VARCHAR(10) NOT NULL,
FirstName VARCHAR(20) NOT NULL,
Age NUMBER NOT NULL
);

CREATE TABLE Orders(
OrderID NUMBER UNIQUE NOT NULL PRIMARY KEY,
OrderNumber NUMBER NOT NULL UNIQUE,
PersonID NUMBER REFERENCES Persons(PersonID)
);

INSERT INTO Persons VALUES(1, 'Hansen', 'Ola', 30);
INSERT INTO Persons VALUES(2, 'Svendson', 'Tove', 23);
INSERT INTO Persons VALUES(3, 'Pettersen', 'Kari', 20);

INSERT INTO Orders VALUES(1, 77895, 3);
INSERT INTO Orders VALUES(2, 44678, 3);
INSERT INTO Orders VALUES(3, 22456, 2);
INSERT INTO Orders VALUES(4, 24562, 1);

COMMIT;

SELECT * FROM Persons;
SELECT * FROM Orders;

----------------------------------------------------------------------------------------

CREATE TABLE CourseDetails(
courseId VARCHAR(5) UNIQUE PRIMARY KEY,
courseName VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE StudentDetails(
StudentId VARCHAR(10) UNIQUE PRIMARY KEY,
firstName VARCHAR(20) NOT NULL,
lastName VARCHAR(10) NOT NULL,
courseId VARCHAR(5) NOT NULL REFERENCES CourseDetails(courseId)
);

INSERT INTO CourseDetails VALUES('A004', 'Accounts');
INSERT INTO CourseDetails VALUES('C002', 'Computing');
INSERT INTO CourseDetails VALUES('P301', 'History');
INSERT INTO CourseDetails VALUES('S042', 'Short Course');

INSERT INTO StudentDetails VALUES('L0002345', 'Jim', 'Black', 'C002');
INSERT INTO StudentDetails VALUES('L0001254', 'James', 'Harradine', 'A004');
INSERT INTO StudentDetails VALUES('L0002349', 'Amanda', 'Holland', 'C002');
INSERT INTO StudentDetails VALUES('L0001198', 'Simon', 'McCloud', 'S042');

COMMIT;

SELECT * FROM CourseDetails;
SELECT * FROM StudentDetails;

----------------------------------------------------------------------------------------------

CREATE TABLE Customers(
CustomersID NUMBER NOT NULL UNIQUE PRIMARY KEY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(10) NOT NULL
);

CREATE TABLE OrderDetails(
OrderID NUMBER NOT NULL UNIQUE,
ProductID NUMBER NOT NULL UNIQUE PRIMARY KEY,
Quantity NUMBER NOT NULL,
CustomersID NUMBER NOT NULL REFERENCES Customers(CustomersID) 
);

CREATE TABLE Products(
ProductID NUMBER NOT NULL REFERENCES OrderDetails(ProductID),
Name VARCHAR(30) NOT NULL,
Price FLOAT NOT NULL
);

INSERT INTO Customers VALUES(5, 'James', 'Bladwin');
INSERT INTO Customers VALUES(236, 'Olivia', 'Pantonelli');
INSERT INTO Customers VALUES(721, 'Xi', 'Fang');

INSERT INTO OrderDetails VALUES(34, 2354, 1, 5);
INSERT INTO OrderDetails VALUES(481, 894485, 3, 721);
INSERT INTO OrderDetails VALUES(78, 894486, 1, 236);

INSERT INTO Products VALUES(2354, 'LF Keyboard', 99.87);
INSERT INTO Products VALUES(894485, 'WunderMaus', 46.79);
INSERT INTO Products VALUES(425985, 'Magic Lamp', 77.33);
INSERT INTO Products VALUES(33786, 'SuperStapler', 12.99);
INSERT INTO Products VALUES(779642, 'USB-C Dongle', 400.99);

COMMIT;

SELECT * FROM Customers;
SELECT * FROM OrderDetails;
SELECT * FROM Products;