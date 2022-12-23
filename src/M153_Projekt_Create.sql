-- Using master
USE MASTER 
GO

-- Delete the database if it exists
DROP DATABASE IF EXISTS KioskStore;
GO

-- Create a new database
CREATE DATABASE KioskStore;
GO

USE KioskStore;
GO

-- Create a table named 'Suppliers' to store the suppliers of the kiosk
CREATE TABLE Suppliers (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

-- Create a table named 'Products' to store the products sold at the kiosk
CREATE TABLE Products (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NOT NULL,
  price DECIMAL(18,2) NOT NULL,
  quantity INT NOT NULL,
  supplier_id INT,
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(id)
);

-- Create a table named 'Customers' to store the customers of the kiosk
CREATE TABLE Customers (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  date_joined DATE NOT NULL
);

-- Create a table named 'PaymentMethods' to store the payment methods used at the kiosk
CREATE TABLE PaymentMethods (
  id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(255) NOT NULL,
  type NVARCHAR(255) NOT NULL,
  is_active BIT NOT NULL DEFAULT 1
);

-- Create a table named 'Orders' to store the orders placed at the kiosk
CREATE TABLE Orders (
  id INT PRIMARY KEY IDENTITY(1,1),
  order_date DATE NOT NULL,
  total_amount DECIMAL(18,2),
  payment_method_id INT,
  customer_id INT NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customers(id),
  FOREIGN KEY (payment_method_id) REFERENCES PaymentMethods(id)
);

-- Create a table named 'OrderItems' to store the details of the items in each order
CREATE TABLE OrderItems (
  id INT PRIMARY KEY IDENTITY(1,1),
  quantity INT NOT NULL,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(id),
  FOREIGN KEY (product_id) REFERENCES Products(id)
);

GO

---Create the Function to calculate the entire revenue of the orders--
CREATE OR ALTER FUNCTION calculate_customer_expenses(@customerid INT)
RETURNS DECIMAL AS
BEGIN
	DECLARE @totalrevenue INT
	SELECT @totalrevenue = SUM(total_amount)
		FROM Orders WHERE customer_id = @customerid
	RETURN(@totalrevenue)
END

GO

--Create a Procedure that restocks our Items in the store--
CREATE PROCEDURE restock_items
AS  
BEGIN  
	UPDATE Products
	SET	quantity = 100
	WHERE Products.quantity < 100 
END

GO

-- Create a trigger to update the total amount in each order
CREATE TRIGGER update_total_amount
ON OrderItems
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE o
    SET o.total_amount = (SELECT SUM(oi.quantity * p.price)
                         FROM OrderItems oi
                         INNER JOIN Products p ON oi.product_id = p.id
                         WHERE oi.order_id = o.id)
    FROM Orders o
    WHERE o.id IN (SELECT order_id FROM inserted)
END

GO

-- Create a trigger to update the quantity of remaining products.
CREATE TRIGGER update_product_quantity
ON Orders
AFTER INSERT, UPDATE
AS
BEGIN
  UPDATE p
  SET p.quantity = p.quantity - oi.quantity
  FROM Products p
  INNER JOIN OrderItems oi
  ON p.id = oi.product_id
  WHERE oi.order_id IN (SELECT id FROM inserted);
END;

GO