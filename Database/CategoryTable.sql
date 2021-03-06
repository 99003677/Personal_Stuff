CREATE TABLE Category(
	Cat_Id INT IDENTITY(1,1) Primary key not null,
	Cat_Name varchar(30) not null,
	Cat_Tax decimal (12, 2) not null,
    Cat_Status bit not null,  
);
INSERT INTO Category 
VALUES( 'Electronics', 12.25, 1)
INSERT INTO Category 
VALUES( 'Colthing', 8.25, 1)
INSERT INTO Category 
VALUES( 'Grocery', 5.00, 1)
INSERT INTO Category 
VALUES( 'Cosmetics', 18.00, 1)
select * from category