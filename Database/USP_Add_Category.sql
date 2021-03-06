CREATE PROCEDURE dbo.usp_Add_Category
@Cat_Name AS VARCHAR(30), @Cat_Tax AS DECIMAL(12, 2), @Cat_Status AS BIT

AS 
SET NOCOUNT ON

BEGIN 
INSERT INTO dbo.Category
           ([Cat_Name],
           [Cat_Tax],
           [Cat_Status])
           
     VALUES
           (
		   @Cat_Name,
           @Cat_Tax,
           @Cat_Status)
END

EXECUTE dbo.usp_Add_Category
@Cat_Name ='Elcetronics',
@Cat_Tax = 12.25,
@Cat_Status =1

SELECT * FROM Category