CREATE OR ALTER PROCEDURE dbo.usp_AddOrder (
@Email AS VARCHAR(30),
@Product_ID AS VARCHAR(10),  
@Quantity AS INT,
@PaymentCard AS VARCHAR(30) 
)  
AS 
SET NOCOUNT ON

BEGIN 

INSERT INTO dbo.Orders
           ([User_Email],
           [Product_Id],
           [Product_Quantity],
		   [Payment_Card])
		   
           
     VALUES
           (
		   @Email,
           @Product_Id,
           @Quantity,
		   @PaymentCard)
END

EXECUTE dbo.usp_AddOrder

@Email ='riya.nov.25@gmail.com',
@Product_Id = 'P1008',
@Quantity =3,
@PaymentCard='1234567890123456'

SELECT * FROM Orders;
