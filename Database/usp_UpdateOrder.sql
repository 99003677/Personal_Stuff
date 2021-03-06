CREATE OR ALTER PROCEDURE dbo.usp_UpdateUser (
@OrderID AS INT,
@Quantity AS INT,  
@PaymentCard AS VARCHAR(30),
@Choice AS INT  
)  
AS  
BEGIN TRY 
      IF @Choice = 1 
	  BEGIN
            UPDATE Orders  
            SET Product_Quantity = @Quantity  
            WHERE Order_Id = @OrderID 
      END  
      ELSE IF @Choice = 2  
        BEGIN  
            UPDATE Orders  
            SET Payment_card = @PaymentCard
            WHERE Order_Id = @OrderID 
 
      END 
	 
	  ELSE
		BEGIN
			PRINT('ERROR')
		END
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE dbo.usp_UpdateUser @Choice=1,@OrderID=1, @Quantity='3',@PaymentCard ='1234567890111213'
 
SELECT * FROM Orders;