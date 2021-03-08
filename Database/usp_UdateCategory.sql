CREATE OR ALTER PROCEDURE dbo.usp_UpdateCategory (
@CatID AS INT,
--@CatName AS VARCHAR(30),  
@CatTax AS DECIMAL(12,2),
--@CatStatus BIT,  
@Choice AS INT  
)  
AS  
BEGIN TRY 
     /* IF @Choice = 1 
	  BEGIN
            UPDATE Category  
            SET Cat_Name = @CatName   
            WHERE Cat_Id = @CatID  
      END  */
       IF @Choice = 2  
        BEGIN  
            UPDATE Category 
            SET Cat_Tax = @CatTax   
            WHERE Cat_Id = @CatID 
        END 
	 /* ELSE IF @Choice = 3  
        BEGIN  
            UPDATE Category 
            SET Cat_Status = @CatStatus    
            WHERE Cat_Id = @CatID 
        END*/
	  ELSE
		BEGIN
			PRINT('ERROR')
		END
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE dbo.usp_UpdateCategory @Choice=1, @CatID=1, @CatTax=12.25
 
SELECT * FROM Category;