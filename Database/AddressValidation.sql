CREATE OR ALTER FUNCTION dbo.ufn_AddressValidation(@Address VARCHAR(100))
RETURNS INT
AS
BEGIN
	
	DECLARE @VAL INT;
	IF(@Address IS NULL OR LEN(@Address)>100 OR @Address  LIKE  '%[`~!@#$%^&*()_=-\]%'  ) 
			SET @VAL = -1

	ELSE
			SET @VAL = 1
	RETURN @VAL

END
GO;

SELECT dbo.ufn_AddressValidation('4545 DUIFH,IR')