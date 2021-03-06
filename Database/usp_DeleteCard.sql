CREATE OR ALTER PROCEDURE dbo.usp_DeleteCard(
@UserEmail VARCHAR(30)
)
AS  
BEGIN TRY 
			UPDATE Payment
			SET Card_Status = 0
			WHERE User_Email=@UserEmail; 
            
END  TRY
BEGIN CATCH
		PRINT ('USER ID DID NOT MATCH')
END CATCH

EXECUTE dbo.usp_DeleteCard @UserEmail = 'abc@gmail.com';
SELECT*FROM Payment;