CREATE TABLE Products (
	Product_ID VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
	Product_Price DECIMAL(12,2) NOT NULL,
	Quantity INT NOT NULL,
	Cat_Id INT  NOT NULL,
	Product_Status BIT DEFAULT 1

      FOREIGN KEY (Cat_ID) REFERENCES Category(Cat_ID)


);
INSERT INTO Products 
VALUES('P1001', 'Phone', 20000.00, 15, 1, 1)
INSERT INTO Products 
VALUES('P1002', 'Laptop', 40000.00, 10, 1, 1)
INSERT INTO Products 
VALUES('P1003', 'Charger', 1000.00, 20, 1, 1)
SELECT * FROM Products
SELECT * FROM Cart
SELECT * FROM Category
SELECT * FROM Orders
SELECT * FROM users
INSERT INTO Products 
VALUES('P1004', 'Pant', 1200.00, 12, 2, 1)
INSERT INTO Products 
VALUES('P1005', 'Shirt', 1100.00, 10, 2, 1)
INSERT INTO Products 
VALUES('P1006', 'Tshirt', 900.00, 17, 2, 1)
INSERT INTO Products 
VALUES('P1007', 'Biscuits', 90.00, 30, 3, 1)
INSERT INTO Products 
VALUES('P1008', 'Soft Drinks', 70.00, 25, 3, 1)
INSERT INTO Products 
VALUES('P1009', 'Bread', 50.00, 10, 3, 1)
INSERT INTO Products 
VALUES('P1010', 'Hair Oil', 190.00, 10, 4, 1)
INSERT INTO Products 
VALUES('P1011', 'Makeup kit', 990.00, 15, 4, 1)
INSERT INTO Products 
VALUES('P1012', 'Soap', 60.00, 14, 4, 1)
