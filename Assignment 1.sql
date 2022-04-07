Assignment 1

1.	Design the above database with following table by applying Primary key and Foreign key
--Create New Database --
USE company;

-- Create Customer table--
Create table Customer	(
Id Int Primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20),
);
create index IndexCustomerName on Customer[FirstName];


-- Create Order table--

Create table [Order] (
Id Int Primary key,
OrderDate datetime,
OrderNumber nvarchar(10),
CustomerId int foreign key references Customer(Id),
TotalAmmount decimal(12,2)
);

--Create idexes for Order table--
create index IndexOrderCustomerId on [Order](CustomerId) ;
create index IndexOrderOrderDate on [Order](OrderDate); 


--Create Product table--
Create table Product (
Id Int Primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit );
--Create idexes for Product table--
create index IndexProductSupplierId on [Product](Id) ;
create index IndexProductName on [Product](ProductName) ;


--Create OrderItem--
Create table OrderItem (
Id Int Primary key,
OrderId int foreign key references [Order](Id),
ProductId int foreign key references Product(Id),
UnitPrice decimal(12,2),
Quntity int); 
--Create idexes for OrderItem table--
create index IndexOrderItemOrderId on [OrderItem](OrderId) ;
create index IndexOrderItemProductId on [OrderItem](ProductId) ;


2.	Insert Records in all tables 
-- insert records in Customer table—
INSERT INTO Customer
VALUES
(1,'Mohit','Kumar','Gujarat','India','4523812350'),
(2,'Nishit,'Shethiya','Jamnagar','India','954545454544'),
(3,'Hans','Zala','Gandhinagar','india','54744655664'),
(4,'Meet','Desai','New york','America','4564556565'),
(5,'Meet','Barot','udaipur','Rajsthan','586545666'),
(6,'Niya','Patel','Sydney','Australia','87812215822'),
(7,'Diya','Patel','Tokyo','japan','765464456446'),
(8,'Karan','Pandya','Abu dabi','Dubai','454545656456'),
(9,'Dhruv','Darji','Delhi','India','7545545654545'),
(10,'Parth','Rajput','Bangalore','India','455545486555');

--insert records in Order table—
INSERT INTO Order
VALUES
(1,'2022-02-2 01:23:45','1234',1,5000.25),
(2,'2021-04-30 06:45:00','5678',4,3000.20),
(3,'2020-02-10 03:25:30','5784',2,4200.10),
(4,'2022-03-03 22:11:30','6231',3,3600.15),
(5,'2021-04-21 10:45:50','9865',7,2500.80),
(6,'2020-05-13 18:30:35','3216',7,7500.10),
(7,'2022-06-23 03:03:30','3216',9,9800.60),
(8,'2020-03-12 1:02:34','6445',10,1000.25),
(9,'2022-04-11 22:05:23','5445',1,2500.50),
(10,'2021-04-02 19:45:15','6681',5,1500.10)

--insert records in OrderItem table—
INSERT INTO OrderItem
VALUES
(1, 2,1,5000.25,35),
(2, 3,4,3000.20,55),
(3,7, 2,4200.10,60),
(4, 2,3,3600.15,30),
(5,1, 7,2500.80,20),
(6,8, 7,7500.10,40),
(7, 4,9,9800.60,80),
(8, 10,10,1000.25,45),
(9, 6,1,2500.50,55),
(10,7, 5,1500.10,65);

--insert records in Product table--

INSERT INTO Product
VALUES
(1,'iphone',4500.75,'box',1),
(2,'Samsung',4000.50,'boxe',0),
(3,'Nokia',3500.00,'box',1),
(4,'Oneplus',5500.75,'boxe',0),
(5,'Dell',4500.60,'bag',0),
(6,'redmi',4700.90,'box',1),
(7,'Real me',300.60,'box',1),
(8,'Boat',5000.50,'poly bag',0),
(9,'lava',3000.75,'box',1),
(10,'hp',2000.25,'bag',0);


3.In Customer table FirstName Attribute should not accept null value
drop index IndexCustomerName on Customer;
ALTER TABLE Customer alter COLUMN FirstName nvarchar(40) NOT NULL;
       4. In Order table OrderDate should not accept null value
      drop index IndexOrderOrderDate on [Order];
ALTER TABLE [Order] alter COLUMN OrderDate datetime NOT NULL;

    5. Display all customer details
     SELECT * FROM customer;
    6.write a query to display Country whose name starts with A or I
     SELECT Country 
     FROM customer 
     WHERE Country LIKE 'A%' OR country LIKE 'I%';
   7 .write a query to display whose name of customer whose third character is i
   UPDATE customer 
   SET FirstName = 'mit',
   LastName = 'Barot'
  WHERE id=4;

   SELECT FirstName 
  FROM customer 
  WHERE FirstName LIKE '__i%';









