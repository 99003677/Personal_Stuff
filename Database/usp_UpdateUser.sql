CREATE PROCEDURE usp_UpdateUser (
@User_Email AS VARCHAR(30),
@Passwords AS VARCHAR(16) null,  
@User_Phone AS VARCHAR(15) null,
@Addresses AS VARCHAR(100)null,  
@Choice AS INT, @status AS BIT
)  
AS  
BEGIN TRY 
      IF @Choice = 1 
	  BEGIN
            UPDATE Users  
            SET Passwords = @Passwords   
            WHERE User_Email = @User_Email  
      END  
      ELSE IF @Choice = 2  
        BEGIN  
            UPDATE Users  
            SET User_Phone = @User_Phone    
            WHERE User_Email = @User_Email  
        END 
	  ELSE IF @Choice = 3  
        BEGIN  
            UPDATE Users  
            SET Addresses = @Addresses    
            WHERE User_Email = @User_Email  
        END
	  ELSE IF @Choice=4
		BEGIN
			UPDATE Users
			SET User_Status=@status
			WHERE User_Email=@User_Email
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

EXECUTE usp_UpdateUser @Choice=1, @User_Email='sarada@gmail.com', @Passwords='add123@', @User_Phone ='+1 83475785787', @Addresses='Mysore'
 
SELECT * FROM Users;