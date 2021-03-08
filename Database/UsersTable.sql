CREATE TABLE Users (
    Users_Name VARCHAR(50) NOT NULL,
    User_Email VARCHAR(30)   PRIMARY KEY,
    Passwords VARCHAR(16) NOT NULL,
	User_Phone VARCHAR(15) NOT NULL,
	Addresses VARCHAR(100) NOT NULL,
	Role_ID INT NOT NULL,
	User_Status BIT DEFAULT 1,

    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);
INSERT INTO Users 
VALUES ('Riya Gupta', 'riya.nov.25@gmail.com', 'riya@123', '8319240803', '404 global mansion', 1,1);

INSERT INTO Users 
VALUES ('Nishant Hawaliya', 'nishant.hawaliya@gmail.com', 'nishant@123@123', '9876543210', '902 vasant vihar', 1,1);

INSERT INTO Users 
VALUES ('Patrick Andrews', 'patrick.andrewsw@gmail.com', 'pat@123', '8399023454', '231 trinity house', 1,1);

INSERT INTO Users 
VALUES ('Aditi Vyas', 'aditi.vyas@gmail.com', 'aditi@123', '9123340803', '21 nehru colony', 1,1);

INSERT INTO Users 
VALUES ('Poorwa Gautam', 'poorwa.gautam@gmail.com', 'poorwa@123', '8774561234', '34 chaina town', 1,1);