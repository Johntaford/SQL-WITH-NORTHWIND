USE northwind;

Select * FROM customers;
SELECT DISTINCT country FROM customers;
SELECT * FROM customers WHERE customerID LIKE 'BL%';
SELECT * FROM orders LIMIT 100;
SELECT * FROM customers WHERE postalcode = 1010 OR postalcode = 3012 OR postalcode = 12209 OR postalcode = 05023;
SELECT * FROM orders WHERE ShipRegion IS NOT NULL;
SELECT * FROM customers ORDER BY country, city;
-- INSERT INTO CUSTOMERS (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, Image, ImageThumbnail)
-- VALUES ('JJJJJ', 'Grand Circus', 'James', 'App Dev', '123 Main St', 'Royal Oak', NULL, 'MI', '48071', 'USA', NULL, NULL, NULL, NULL);
UPDATE Orders SET ShipRegion = "EuroZone" WHERE ShipCountry = "France";
-- DELETE FROM order_details
-- WHERE quantity = 1;
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details GROUP BY order_id;
SELECT customerid FROM orders WHERE id = 10290;
SELECT * FROM orders INNER JOIN customers ON orders.customerid = customers.customerid; 
SELECT * FROM orders LEFT JOIN customers ON orders.customerid = customers.customerid;
SELECT * FROM orders RIGHT JOIN customers ON orders.customerid = customers.customerid;
SELECT orders.ShipCity, orders.ShipCountry
FROM orders
INNER JOIN employees
ON orders.EmployeeID = employees.EmployeeID
WHERE employees.City = 'London'
SELECT orders.ShipName
FROM orders
INNER JOIN order_details
ON orders.OrderID = order_details.OrderID
INNER JOIN products
ON order_details.ProductID = products.ProductID
WHERE products.Discontinued = 1;
SELECT FirstName
FROM employees
WHERE ReportsTo IS NULL;
SELECT FirstName
FROM employees
WHERE ReportsTo = (SELECT EmployeeID FROM employees WHERE FirstName = 'Andrew');