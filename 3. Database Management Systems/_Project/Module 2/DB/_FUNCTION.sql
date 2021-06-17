USE [Portfolio_maker];

DROP FUNCTION LoginCheck;

CREATE FUNCTION FN_LoginCheck_user(@UserName VARCHAR(10),@Password VARCHAR(8))
RETURNS INT
AS
BEGIN
	DECLARE @PASSWORD_ VARCHAR(8);
	DECLARE @MATCH INT;

	SELECT @PASSWORD_ = Pass FROM Admininfo 
	WHERE Name = @UserName;
	IF (@PASSWORD_ = @Password)  
	BEGIN
		SET @MATCH = 1;
	END;
	ELSE   
	BEGIN
		SET @MATCH = 0;
	END;
	RETURN @MATCH
END;
GO;

CREATE FUNCTION FN_LoginCheck_ADMIN(@UserName VARCHAR(10),@Password VARCHAR(8))
RETURNS INT
AS
BEGIN
	DECLARE @PASSWORD_ VARCHAR(8);
	DECLARE @MATCH INT;

	SELECT @PASSWORD_ = AdminPass FROM Owner_Setup 
	WHERE AdminID = @UserName;
	IF (@PASSWORD_ = @Password)  
	BEGIN
		SET @MATCH = 1;
	END;
	ELSE   
	BEGIN
		SET @MATCH = 0;
	END;
	RETURN @MATCH
END;
GO;

CREATE FUNCTION FN_SEARCH_userNAME(@NAME VARCHAR(100))
RETURNS TABLE
AS
	RETURN (SELECT * FROM Admininfo 
	WHERE Name LIKE @NAME)

GO;

CREATE FUNCTION FN_SEARCH_PROJECT(@INPUT VARCHAR(100))
RETURNS TABLE
AS
	RETURN (SELECT * FROM BasicInfo WHERE Experties LIKE '%' );

GO;

CREATE FUNCTION FN_SEARCH_Profession(@INPUT VARCHAR(100))
RETURNS TABLE
AS

	RETURN (SELECT * FROM UserInfo 
	WHERE Profession LIKE @INPUT ); 

GO;


CREATE FUNCTION FN_ADDING_EXTRA_QOUTE(@VAL VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
DECLARE @RET VARCHAR(MAX);
	SET @RET = CHAR(39)+@VAL+CHAR(39);
	RETURN (@RET);
END;
GO;

