-- Insert data into the 'Suppliers' table
INSERT INTO Suppliers (name, email) VALUES ('Acme Inc.', 'info@acme.com');
INSERT INTO Suppliers (name, email) VALUES ('XYZ Corp.', 'contact@xyz.com');
INSERT INTO Suppliers (name, email) VALUES ('ABC LLC', 'info@abc.com');
INSERT INTO Suppliers (name, email) VALUES ('Delta Inc.', 'support@delta.com');
INSERT INTO Suppliers (name, email) VALUES ('Apple', 'info@apple.com');
INSERT INTO Suppliers (name, email) VALUES ('Zeta Corp.', 'contact@zeta.com');
INSERT INTO Suppliers (name, email) VALUES ('Theta Inc.', 'support@theta.com');
INSERT INTO Suppliers (name, email) VALUES ('Kappa Inc.', 'support@kappa.com');
INSERT INTO Suppliers (name, email) VALUES ('Lambda LLC', 'info@lambda.com');
INSERT INTO Suppliers (name, email) VALUES ('Mu Corp.', 'contact@mu.com');
INSERT INTO Suppliers (name, email) VALUES ('Nu Inc.', 'support@nu.com');
INSERT INTO Suppliers (name, email) VALUES ('Xi LLC', 'info@xi.com');
INSERT INTO Suppliers (name, email) VALUES ('Omicron Corp.', 'contact@omicron.com');
INSERT INTO Suppliers (name, email) VALUES ('Pi Inc.', 'support@pi.com');
INSERT INTO Suppliers (name, email) VALUES ('Rho LLC', 'info@rho.com');
INSERT INTO Suppliers (name, email) VALUES ('Sigma Corp.', 'contact@sigma.com');
INSERT INTO Suppliers (name, email) VALUES ('Tau Inc.', 'support@tau.com');
INSERT INTO Suppliers (name, email) VALUES ('Upsilon LLC', 'info@upsilon.com');
INSERT INTO Suppliers (name, email) VALUES ('Phi Corp.', 'contact@phi.com');
INSERT INTO Suppliers (name, email) VALUES ('Chi Inc.', 'support@chi.com');
INSERT INTO Suppliers (name, email) VALUES ('Psi LLC', 'info@psi.com');
INSERT INTO Suppliers (name, email) VALUES ('Omega Corp.', 'contact@omega.com');

GO

-- Insert data into the 'Products' table
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Candy Bar', 1.50, 50, 1);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Soda Can', 2.00, 100, 2);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Chips', 2.50, 75, 3);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Gum Pack', 1.00, 25, 4);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Chocolate Bar', 2.00, 75, 5);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Energy Drink', 3.50, 50, 6);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Granola Bar', 2.00, 100, 7);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Trail Mix', 2.50, 75, 8);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Peanut Butter Bar', 2.50, 50, 9);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Fruit Snacks', 1.50, 100, 10);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Gummi Bears', 1.00, 25, 11);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Raisins Pack', 1.00, 75, 12);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Granola Bites', 2.00, 50, 13);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Cheese Puffs', 1.50, 100, 14);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Nuts Pack', 2.00, 25, 15);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Pretzels Bag', 1.50, 75, 16);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Cookie Bag', 2.00, 100, 1);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Cracker Box', 1.50, 50, 2);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Popcorn Bag', 2.50, 75, 3);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Mints Tin', 1.00, 25, 4);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Gumballs Jar', 2.00, 75, 5);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Lollipop Pack', 3.50, 50, 6);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Jelly Beans Bag', 2.00, 100, 7);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Taffy Bag', 2.50, 75, 8);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Caramel Chews Bag', 2.50, 50, 9);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Hard Candies Bag', 1.50, 100, 10);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Chocolate Coins Bag', 1.00, 25, 11);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Licorice Bites Bag', 1.00, 75, 12);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Sour Gummies Bag', 2.00, 50, 13);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Fruit Chews Bag', 1.50, 100, 14);
INSERT INTO Products (name, price, quantity, supplier_id) VALUES ('Marshmallows Bag', 2.00, 25, 15);

GO

-- Insert data into the 'Customers' table
INSERT INTO Customers (name, email, date_joined) VALUES ('Guest', '-', '2000-01-01');
INSERT INTO Customers (name, email, date_joined) VALUES ('Rick', 'rick.role@nevergonna.com', '2000-01-01');
INSERT INTO Customers (name, email, date_joined) VALUES ('John Doe', 'john.doe@example.com', '2022-01-01');
INSERT INTO Customers (name, email, date_joined) VALUES ('Jane Doe', 'jane.doe@example.com', '2022-01-02');
INSERT INTO Customers (name, email, date_joined) VALUES ('Sam Smith', 'sam.smith@example.com', '2022-01-03');
INSERT INTO Customers (name, email, date_joined) VALUES ('Sara Smith', 'sara.smith@example.com', '2022-01-04');
INSERT INTO Customers (name, email, date_joined) VALUES ('Tom Smith', 'tom.smith@example.com', '2022-01-05');
INSERT INTO Customers (name, email, date_joined) VALUES ('Sue Johnson', 'sue.johnson@example.com', '2022-01-06');
INSERT INTO Customers (name, email, date_joined) VALUES ('Amy Williams', 'amy.williams@example.com', '2022-01-07');
INSERT INTO Customers (name, email, date_joined) VALUES ('Dan Brown', 'dan.brown@example.com', '2022-01-08');
INSERT INTO Customers (name, email, date_joined) VALUES ('Jessica Jones', 'jessica.jones@example.com', '2022-01-09');
INSERT INTO Customers (name, email, date_joined) VALUES ('Jack Smith', 'jack.smith@example.com', '2022-01-10');
INSERT INTO Customers (name, email, date_joined) VALUES ('Jill Williams', 'jill.williams@example.com', '2022-01-11');
INSERT INTO Customers (name, email, date_joined) VALUES ('Bill Johnson', 'bill.johnson@example.com', '2022-01-12');
INSERT INTO Customers (name, email, date_joined) VALUES ('Carol Davis', 'carol.davis@example.com', '2022-01-13');
INSERT INTO Customers (name, email, date_joined) VALUES ('Mike Brown', 'mike.brown@example.com', '2022-01-14');
INSERT INTO Customers (name, email, date_joined) VALUES ('Sarah Johnson', 'sarah.johnson@example.com', '2022-01-15');
INSERT INTO Customers (name, email, date_joined) VALUES ('Mark Williams', 'mark.williams@example.com', '2022-01-16');
INSERT INTO Customers (name, email, date_joined) VALUES ('Emily Jones', 'emily.jones@example.com', '2022-01-17');
INSERT INTO Customers (name, email, date_joined) VALUES ('David Smith', 'david.smith@example.com', '2022-01-18');
INSERT INTO Customers (name, email, date_joined) VALUES ('Karen Williams', 'karen.williams@example.com', '2022-01-19');

GO

-- Insert data into the 'PaymentMethods' table
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Visa', 'Credit Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Mastercard', 'Credit Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('American Express', 'Credit Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Discover', 'Credit Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Cash', 'Cash', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('PayPal', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Apple Pay', 'Mobile Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Google Pay', 'Mobile Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Samsung Pay', 'Mobile Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Venmo', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Debit Card', 'Debit Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Check', 'Check', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Gift Card', 'Gift Card', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('BitPay', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Square', 'Mobile Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Stripe', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Amazon Pay', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Zelle', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('WePay', 'Online Payment', 1);
INSERT INTO PaymentMethods (name, type, is_active) VALUES ('Xoom', 'Online Payment', 1);

GO

-- Insert data into the 'Orders' table
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (1, '2022-01-01', 1);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (2, '2022-01-01', 5);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (3, '2022-01-03', 10)
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (4, '2022-01-04', 12);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (5, '2022-01-04', 13);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (6, '2022-01-06', 18);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (7, '2022-01-06', 6);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (8, '2022-01-06', 8);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (9, '2022-01-10', 9);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (10, '2022-01-10', 4);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (11, '2022-01-11', 15);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (12, '2022-01-12', 11);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (13, '2022-01-13', 19);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (14, '2022-01-13', 2);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (15, '2022-01-14', 16);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (16, '2022-01-15', 17);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (17, '2022-01-15', 1);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (18, '2022-01-16', 6);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (19, '2022-01-16', 3);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (20, '2022-01-17', 18);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (2, '2022-01-18', 19);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (8, '2022-01-19', 5);
INSERT INTO Orders (customer_id, order_date, payment_method_id) VALUES (9, '2022-01-19', 10);

GO

-- Insert data into the 'OrderItems' table
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (1, 3, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (1, 9, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (2, 7, 4);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (2, 12, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (2, 14, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (3, 4, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (3, 8, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (3, 1, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (3, 11, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (4, 5, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (4, 6, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (5, 10, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (5, 15, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (6, 12, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (6, 16, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (7, 2, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (7, 3, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (7, 13, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (8, 1, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (8, 4, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (9, 29, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (9, 27, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (10, 20, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (10, 28, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (10, 26, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (11, 2, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (12, 19, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (13, 13, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (13, 18, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (14, 3, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (15, 14, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (16, 5, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (17, 16, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (17, 21, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (18, 23, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (19, 2, 3);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (20, 16, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (20, 26, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (20, 21, 4);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (21, 3, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (21, 9, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (22, 11, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (22, 12, 1);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (23, 1, 2);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES (23, 17, 1);

GO