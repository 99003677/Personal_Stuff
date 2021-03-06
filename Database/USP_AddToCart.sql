CREATE or alter PROCEDURE dbo.usp_Add_To_Cart
@User_Email AS VARCHAR(30), @Product_Id varchar(10), @Cart_Quantity varchar(5)

AS 
SET NOCOUNT ON

BEGIN 

INSERT INTO dbo.Cart
           ([User_Email],
           [Product_Id],
           [Cart_Quantity],
		   [Last_Upadate])
		   
           
     VALUES
           (
		   @User_Email,
           @Product_Id,
           @Cart_Quantity,
		   CURRENT_TIMESTAMP)
END

EXECUTE dbo.usp_Add_To_Cart

@User_Email ='riya.nov.25@gmail.com',
@Product_Id = 'P1008',
@Cart_Quantity ='3'



SELECT * FROM Cart;
