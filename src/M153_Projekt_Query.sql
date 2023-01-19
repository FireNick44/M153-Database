-- Test for the fill script
-- This test shows all data inside of the database and the inserted values
SELECT * FROM Customers;
SELECT * FROM OrderItems;
SELECT * FROM Orders;
SELECT * FROM PaymentMethods;
SELECT * FROM Products;
SELECT * FROM Suppliers;


-- Tests for the function
-- This Test will return multiple rows because there is more than one 'Sam Smith' in the databse
SELECT dbo.calculate_customer_expenses(id) AS Total_expenses_all_Sam_smiths 
FROM Customers WHERE name = 'Sam smith'
-- To only select one single row this is used:
SELECT TOP 1 dbo.calculate_customer_expenses(id) AS Total_expenses_Sam_Smith 
FROM Customers WHERE name = 'Sam smith'


--Tests for the procedure
--This query gives us a nice comparison about the rows that were affected
SELECT * FROM Products WHERE quantity < 100
GO
EXEC restock_items
GO
SELECT * FROM Products
GO


--Tests for triggers
--Here we can see that the total amount on the last row was updated right after insertion
INSERT INTO Orders (customer_id, order_date, payment_method_id)
VALUES (9, '2022-01-19', 1);
GO
SELECT * FROM Orders
GO
INSERT INTO OrderItems (order_id, product_id, quantity)
VALUES (9, 11, 1);
GO
SELECT * FROM Orders