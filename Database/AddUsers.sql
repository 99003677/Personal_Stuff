CREATE OR ALTER PROCEDURE dbo.usp_AddUser
(
@Name VARCHAR(50),
@Email VARCHAR(30),
@Password VARCHAR(16),
@PhoneNo VARCHAR(15),
@Address VARCHAR(100)
)
AS
BEGIN TRY
		DECLARE @retVal INT
		DECLARE @retVal1 INT
		DECLARE @retVal2 INT
		DECLARE @retVal3 INT
		SET @retVal=(SELECT dbo.ufn_NameValidation(@Name))
		SET @retVal1=(SELECT dbo.ufn_EmailValidation(@Email))
		SET @retVal2=(SELECT dbo.ufn_PhoneNoValidation(@PhoneNo))
		SET @retVal3=(SELECT dbo.ufn_AddressValidation(@Address))

		IF(@retVal = 1 AND @retVal1=1 AND @retVal2=1 AND @retVal3 =1)
		BEGIN
			INSERT INTO Users (Users_Name,User_Email,Passwords,User_Phone,Addresses)
			VALUES(@Name,@Email,CAST(@Password AS BINARY(10)),@PhoneNo,@Address)
		END
		ELSE
			PRINT('INVALID INPUT')
END TRY

BEGIN CATCH
	print(@retVal)
END catch
GO;
EXEC dbo.usp_AddUser @Name='Tejaswi',@Email='tejas.g@gmail.com',@Password= 'tejas@123',@PhoneNo='+1234567890',@Address='4545 DUIFH,IR'
SELECT * FROM Users;
