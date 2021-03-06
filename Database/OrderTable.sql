CREATE TABLE Orders (
    Order_Id INT IDENTITY(1,1) Primary key,
	User_Email varchar(30) not null,
    Product_Id varchar(10) not null,
    Product_Quantity varchar(5) not null,
    Payment_card varchar(30) not null,

	FOREIGN KEY (User_Email) REFERENCES Users(User_Email),
	FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);
INSERT INTO Orders 
VALUES( 'riya.nov.25@gmail.com', 'P1003', 2, '154986546546854')
INSERT INTO Orders 
VALUES( 'nishant.hawaliya@gmail.com', 'P1011', 1, '154986546546854')
INSERT INTO Orders 
VALUES( 'patrick.andrewsw@gmail.com', 'P1009', 3, '15498654834343854')
