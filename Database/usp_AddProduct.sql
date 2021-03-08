CREATE OR ALTER PROCEDURE usp_AddProduct(
--@Product_ID VARCHAR(10),
@Product_Name VARCHAR(50) null,
@Product_Price DECIMAL(12,2)null,
@Quantity INT null,
@Product_Status BIT null,
@Cat_Id INT 
)
AS
BEGIN TRY

	
		
		DECLARE @ID VARCHAR(10)
		SET @ID =(SELECT [dbo].ufn_AutoProductId())
		print(@ID)
		--	INSERT INTO PRODUCTS(Product_ID, Product_Name, Product_Price, Quantity, Product_Status)
		--	VALUES(@Product_ID, @Product_Name, @Product_Price, @Quantity, @Product_Status)
			INSERT INTO dbo.Products
           ([Product_ID],
           [Product_Name],
           [Product_Price],
		   [Quantity],
		   [Product_Status],
		   [Cat_Id])
           
     VALUES
           (
		   @ID,
           @Product_Name,
           @Product_Price,
		   @Quantity,
		   @Product_Status,
		   @Cat_Id)
		
	
END TRY
BEGIN CATCH
	PRINT('-98')
END CATCH
GO


EXECUTE usp_AddProduct  @Product_Name = 'Hair Oil', @Product_Price = 190, @Quantity= 20, @Product_Status= 1, @Cat_Id = 4

SELECT * FROM Products