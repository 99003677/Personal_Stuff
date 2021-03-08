
CREATE TABLE Cart (
    Cart_Id INT IDENTITY(1,1) Primary key,
	User_Email varchar(30) not null,
    Product_Id varchar(10) not null,
    Cart_Quantity varchar(5) not null,
    Last_Upadate Datetime not null,

	 FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id),
	 FOREIGN KEY (User_Email) REFERENCES Users(User_Email)
);
INSERT INTO Cart 
VALUES( 'riya.nov.25@gmail.com', 'P1003', 2, '10-10-2020')
INSERT INTO Cart 
VALUES( 'aditi.vyas@gmail.com', 'P1006', 3, '01-06-2020')
INSERT INTO Cart 
VALUES( 'poorwa.gautam@gmail.com', 'P1010', 1, '01-30-2020')

