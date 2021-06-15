--Procedure

-- Admin Info
CREATE PROCEDURE InsertRecord(@Name varchar(250), @ID varchar(10),@Pass varchar(250),@Liscence_Key Int)
AS
BEGIN
	Insert into Admininfo(Name, ID,Pass,[Liscence Key]) VALUES (@Name, @ID ,@Pass ,@Liscence_Key);
END;

--AboutInfo
CREATE PROCEDURE InsertAboutInfo(@ID varchar(10),@dob varchar(250),@Heading text,@Sub_Heading text,@Short_Description text,
@Long_Description text,@Website varchar(250))
AS
BEGIN
	Insert into AboutInfo(ID,dob,Heading,[Sub Heading],[Short Description],[Long Description], Website) 
	VALUES (@ID,@dob,@Heading,@Sub_Heading,@Short_Description,@Long_Description,@Website);
END;

--basic Info
CREATE PROCEDURE InsertbasicInfo(@ID varchar(10),@Liscence_Key int ,@Job_title varchar(250),
@Job_Description text,@Experties text,@Avatar_Icon varchar(250),@Theme varchar(10))
AS
BEGIN
	Insert into BasicInfo(ID,[Liscence Key],[Job title],[Job Description],Experties,[Avatar Icon],Theme) 
	VALUES (@ID,@Liscence_Key,@Job_title,@Job_Description,@Experties,@Avatar_Icon,@Theme);
END;

--Theme Info
	CREATE PROCEDURE Themedata(@Theme varchar(10),@Theme_Location varchar(10),@Customize int)
AS
BEGIN
	Insert into ThemeSelection(Theme,[Theme Location],Customize) 
	VALUES (@Theme,@Theme_Location,@Customize);
END;

--Project Detail

CREATE PROCEDURE ProjectDetailInsert(@ID varchar(10),@Project_Name varchar(250), @Pics_of_Project varchar (250),
		@Link_of_Projet text,@Description varchar(250))
AS
BEGIN
	Insert into ProjectInfo(ID,[Project Name],[Pics of Project],[Link of Project],Description) 
	VALUES (@ID,@Project_Name,@Pics_of_Project,@Link_of_Projet,@Description);
END;

CREATE PROCEDURE InsetHistroy(@UserID varchar(10),@ActionPerform varchar(100),@Log_ varchar(100),
			@Before_log varchar(100),@After_log varchar(100),@Date_time varchar(100))
AS
BEGIN
	Insert into Histroy 
	VALUES (@UserID,@ActionPerform,@Log_,@Before_log,@After_log,@Date_time);
END;
--User Contact

CREATE PROCEDURE ContactDetail(@ID varchar(10),@Contact_ID int,@Name varchar (250),@Email varchar (250)
,@Subject text,@Message text)
AS
BEGIN
	Insert into UserContact(ID,[Contact_ID],Name,Email,Subject,Message) 
	VALUES (@ID,@Contact_ID,@Name,@Email,@Subject,@Message);
END;

--LinkDetails

CREATE PROCEDURE LinkDetailInsert(@ID varchar(10),@Social_Networks varchar(200),@URL varchar(200))
AS
BEGIN
	Insert into LinkDetails(ID,[Social Network],URL) 
	VALUES (@ID,@Social_Networks,@URL);
END;

--Working Experience 

CREATE PROCEDURE WorkingExperiencingInsert(@ID varchar(10),@Category varchar(250),@Job_Title varchar(250),@Working_Since varchar(250),
@Organization_Name varchar(250),@Working_Description text)
AS
BEGIN
	Insert into WorkingExperience(ID,Category,[Job Title],[Working Since],[Organization Name],[Working Description]) 
	VALUES (@ID,@Category,@Job_Title,@Working_Since,@Organization_Name,@Working_Description);
END;

--JobSkills

CREATE PROCEDURE JobSkillInsert(@ID varchar(10),@Skills varchar (250),@Points varchar (250))
AS
BEGIN
	Insert into JobSkills(ID,Skills,Points) 
	VALUES (@ID,@Skills,@Points);
END;

--LiscenceDetail

CREATE PROCEDURE LisceneDetailInsert(@ID varchar(10),@Liscence_Key int,@Validity varchar(12),@Issue_Date varchar (12),@Liscenece_Status int)
AS
BEGIN
	Insert into LisceneceDetail(ID,[Liscence Key],Validity,[Issue Date],[Liscenece Status]) 
	VALUES (@ID,@Liscence_Key,@Validity,@Issue_Date,@Liscenece_Status);
END;

--OwnerInfo

	CREATE PROCEDURE OwnerInfoInsert(@AdminID varchar(10),@AdminPass varchar(20),@Request_Recieved varchar(10),
	@Contact_No varchar(12),@UserName varchar(20),@Email varchar(30))
AS
BEGIN
	Insert into OwnerInfo(AdminID ,AdminPass,[Request Recieved],[Contact No],UserName,Email) 
	VALUES (@AdminID,@AdminPass,@Request_Recieved,@Contact_No,@UserName,@Email);
END;

--Request

CREATE PROCEDURE RequestInfoInsert(@AdminID varchar(10),@Request_Recieved varchar(10),@Send_Request varchar(10))
AS
BEGIN
	Insert into Request(AdminID ,[Request Recieved],[Send Request]) 
	VALUES (@AdminID,@Request_Recieved,@Send_Request);
END;

--CustomiztionTheme

CREATE PROCEDURE CustomizeInsert(@Theme varchar(10),@ID varchar(10),@Font_Color varchar(6),@Background_Color varchar(6),
@fontStyle varchar(250),@fontSize int)
AS
BEGIN
	Insert into CustomizeTheme(Theme,ID,[Font Color],[Background Color],fontStyle,fontSize) 
	VALUES (@Theme,@ID,@Font_Color,@Background_Color,@fontStyle,@fontSize);
END;

--User Info

CREATE PROCEDURE UserInfoInsert(@ID varchar(10),@Profile_Pic varchar(250), @Name varchar(250),
@Wallpaper varchar(200),@Pofession varchar(200),@Adress text,@Contact_No varchar(200),@Email varchar(200))
AS
BEGIN
	Insert into UserInfo(ID,Profile_Pic,Name,Wallpaper,Profession,Adress,[Contact No],Email) 
	VALUES (@ID,@Profile_Pic, @Name,@Wallpaper,@Pofession,@Adress,@Contact_No,@Email);
END;

-- Insert Complete

-- Search 
CREATE PROCEDURE _Search_WebVeiw(@Input,@SortBy)
AS
BEGIN
    DECLARE @SQL VARCHAR(MAX)
    select @SQL = 'SELECT * FROM Admin_WEB_Search where '@SortBy:+@COL;  
END;

-- Main Insert 

CREATE PROCEDURE PRD2 @Tab VARCHAR(MAX),@val VARCHAR(MAX),@COL VARCHAR(MAX)
AS
BEGIN
DECLARE @SQL VARCHAR(MAX)
select @SQL = 'Insert Into '+@Tab+'('+@COL+') Values ('+@val+')';

EXEC(@SQL)

--print @SQL;

END
