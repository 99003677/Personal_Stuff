CREATE TABLE Payment (
	User_Email varchar(30) not null,
	Payment_card varchar(30) not null,
	Name_On_Card varchar(30) not null,
    Expiry_Date1 DateTime not null,
    Billing_Address varchar(100) not null,

	CONSTRAINT PK_Payment_User_Email_Payment_card PRIMARY KEY (User_Email, Payment_card)

	--FOREIGN KEY (User_Email) REFERENCES Users(User_Email)   
);
INSERT INTO Payment 
VALUES( 'riya.nov.25@gmail.com', '154986546546854', 'Riya Gupta', '10-10-2020', 'mysore')
INSERT INTO Payment 
VALUES( 'nishant.hawaliya@gmail.com', '154986546546854', 'Nishant Hawaliya', '01-05-2020', 'mysore,TrinityHouse')