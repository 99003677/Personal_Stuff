CREATE PROCEDURE dbo.GetProducts_Name
(@Product_Name AS VARCHAR(100))
AS
BEGIN TRY 
SELECT Product_Name,Product_Price FROM dbo.Products WHERE Product_Name = @Product_Name;


END TRY

BEGIN CATCH 
PRINT('ERROR')
END CATCH
GO 


EXECUTE dbo.GetProducts_Name @Product_Name = 'hair oil';