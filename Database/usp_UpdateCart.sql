CREATE or alter PROCEDURE usp_UpdateCart (
@User_Email AS VARCHAR(30),
@Product_Id AS VARCHAR(10),  
@Cart_Quantity AS VARCHAR(5)
  
)  
AS  
BEGIN TRY 
      
	  BEGIN
            UPDATE Cart  
            SET Cart_Quantity = @Cart_Quantity, Last_Upadate = CURRENT_TIMESTAMP  
            WHERE User_Email = @User_Email  AND Product_Id = @Product_Id
      END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE usp_UpdateCart  @User_Email = 'aditi.vyas@gmail.com',@Product_Id = 'P1006', @Cart_Quantity = 4
 
SELECT * FROM Cart;