CREATE PROCEDURE dbo.usp_Add_Card
@User_Email varchar(30), @Payment_card varchar(30), @Name_On_Card AS VARCHAR(30), @Expiry_Date1 DateTime, @Billing_Address varchar(100)

AS 
SET NOCOUNT ON

BEGIN 

INSERT INTO dbo.Payment
           ([User_Email],
		   [Payment_card],
		   [Name_On_Card],
           [Expiry_Date1],
           [Billing_Address])
		   
           
     VALUES
           (
		   @User_Email,
		   @Payment_card,
		   @Name_On_Card,
           @Expiry_Date1,
           @Billing_Address)
END

EXECUTE dbo.usp_Add_Card
@User_Email ='nishant.hawaliya@gmail.com',
@Payment_card ='852577132652',
@Name_On_Card ='Nishant Hawaliya',
@Expiry_Date1 = '10-30-2025',
@Billing_Address ='Trinity House, Mysore'

SELECT * FROM Payment;