CREATE PROCEDURE usp_InserRole(@id int,@name varchar(10))
AS
BEGIN
	INSERT INTO Roles(Role_ID,Role_name) VALUES(@id,@name);
END