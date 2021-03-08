CREATE OR ALTER FUNCTION dbo.ufn_PhoneNoValidation(@PhoneNo VARCHAR(15))
RETURNS INT
AS
BEGIN
	
	DECLARE @VAL INT;
	IF(@PhoneNo IS NULL OR LEN(@PhoneNo)>15 OR LEN(@PhoneNo)<10 OR @PhoneNo LIKE '%[a-z]%' OR @PhoneNo LIKE '%[A-Z]%' OR @PhoneNo NOT LIKE '+%') 
			SET @VAL = -1

	ELSE
			SET @VAL = 1
	RETURN @VAL
	 
END
GO

SELECT dbo.ufn_PhoneNoValidation('+1234567897')
