Assignment 2

1.Display the details from Customer table who is from country Germany.
SELECT * FROM 
customer
WHERE country='Germany';
2. Display the full name of the employee
SELECT * FROM Employee
3. Display the customer details who has Fax number

SELECT   Id ,FirstName,LastName,Faxnumber,address
FROM customer
WHERE FaxNumber IS NOT NULL;

4. display the customer details whose name holds second letter as U
SELECT   Id ,FirstName,LastName,Faxnumber,address
FROM customer
WHERE CustomerName LIKE ‘_u%’;

5. select order Details where unit price is greater than 10 and less than 20
  
SELECT OderDetails 
FROM Oder
WHERE  unitprice >10 AND unitprice<20;

6. Display order details which contains shipping date and arrange the order by date
SELECT OderDetails 
FROM Oder
WHERE  shipping date IS NOT NULL
ODERE BY date;

7. Print the orders shipped by ship name 'La corned'abondance' between 2 dates(Choose dates of yourchoice)

SELECT * from order
 WHERE   (From_date BETWEEN '2013-01-03'AND '2013-01-09') AND
Coustomername LIKE  'La corned'abondance’ ;


8. Print the products supplied by 'Exotic Liquids'
SELECT * FROM ProductTable
WHERE Package ='EXOTIC LIQUIDS'


9. print the average quantity ordered for every product


SELECT avg(quntity)
FROM OrderItem;

10. Print all the Shipping company name and the ship names if they are operational
SELECT ShipCompany, ShipName
From ShippingTable
Where Operational = 'yes';

11. Print all Employees with Manager Name
SELECT E.NAME AS EMPLOYEE_NAME,M.NAME AS MANAGER_NAME
FROM Employee E JOIN Employee M
ON E.MANAGER=M.MANAGER

12. Print the bill for a given order id .bill should contain Productname, Categoryname,price after
Discount
SELECT OI.OrderId,P.ProductName,P.Category,P.Discount
FROM ProductTable P INNER JOIN OrderItemTable OI
ON P.ProductId=OI.ProductId

13. Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is
> 50 and also print it by Shipping company's Name
SELECT SUM(UnitPrice) As Total,CompanyName 
FROM ProductTable 
GROUP BY ProductSupplied
having ProductSupplied ='exotic liquids' and UnitPrice >50;


