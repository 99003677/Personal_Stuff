CREATE OR ALTER FUNCTION dbo.ufn_NameValidation(@Name VARCHAR(50))
RETURNS INT
AS
BEGIN
	
	DECLARE @VAL INT;
	IF(@Name IS NULL OR LEN(@Name)>50 OR @Name  LIKE  '%[0-9]%' OR @Name LIKE '%[`~!@#$%^&*()_+=-\]%' ) 
			SET @VAL = -1

	ELSE
			SET @VAL = 1
	RETURN @VAL

END
GO
SELECT dbo.ufn_NameValidation('Rahul%FG')