CREATE TABLE Roles (
	Role_ID INT PRIMARY KEY,
	Role_Name VARCHAR(10)

);

INSERT INTO Roles (Role_ID, Role_Name)
VALUES (1, 'Users');
INSERT INTO Roles (Role_ID, Role_Name)
VALUES (2, 'Admins');