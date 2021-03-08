CREATE OR ALTER PROCEDURE dbo.usp_RemoveCart(
@ProductID VARCHAR(10)
)
AS  
BEGIN TRY 
			DELETE FROM Cart
			WHERE Product_Id=@ProductID; 
            
END  TRY
BEGIN CATCH
		PRINT ('PRODUCT ID DID NOT MATCH')
END CATCH

EXECUTE dbo.usp_RemoveCart @ProductID = 'P1003';
SELECT*FROM Cart;