USE [EcommercePortal]
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateProduct]    Script Date: 3/6/2021 9:26:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[usp_UpdateProduct](
@Product_ID VARCHAR(10),
@Product_Name VARCHAR(50) null,
@Product_Price DECIMAL(12,2)null,
@Quantity INT null,
@Product_Status BIT null,
@choice int)
AS
BEGIN TRY
	
	
	  IF @choice=1
				BEGIN
					UPDATE PRODUCTS
					SET Product_Name = @Product_Name
					WHERE Product_ID = @Product_ID
				END
			
		ELSE IF @choice=2
				BEGIN
					UPDATE PRODUCTS
					SET Product_Price = @Product_Price
					WHERE Product_ID = @Product_ID
				END
			
		else IF @choice=3
				BEGIN
					UPDATE PRODUCTS
					SET Quantity=@quantity
					WHERE Product_ID = @Product_ID
				END
		
		else IF @choice=4
				BEGIN
					UPDATE PRODUCTS
					SET Product_Status = @Product_Status
					WHERE Product_ID = @Product_ID
				END
		
     ELSE
		RETURN -15
END TRY
BEGIN CATCH
	PRINT('-98')
END CATCH