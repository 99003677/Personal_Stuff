CREATE FUNCTION dbo.ufn_EmailValidation(@Email VARCHAR(30))
RETURNS INT
AS
BEGIN
	
	DECLARE @VAL INT;
	IF(@Email IS NULL AND @Email LIKE '_%@%__%__.__%_'  ) 
			SET @VAL = 1

	ELSE
			SET @VAL = -1
	RETURN @VAL

END
GO;
SELECT dbo.ufn_EmailValidation('Rahul.gupta@gmail.com')