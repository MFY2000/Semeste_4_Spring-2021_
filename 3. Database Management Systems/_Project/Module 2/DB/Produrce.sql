PROCEDURE


-- Admin Info
CREATE PROCEDURE InsertRecord(
    @Name VARCHAR(250),
    @ID VARCHAR(10),
    @Pass VARCHAR(250),
    @Liscence_Key INT
) AS
BEGIN
    INSERT INTO Admininfo(NAME, ID, Pass, [Liscence KEY])
VALUES(@Name, @ID, @Pass, @Liscence_Key);
END;

 -- AboutInfo
CREATE PROCEDURE InsertAboutInfo(
    @ID VARCHAR(10),
    @dob VARCHAR(250),
    @Heading TEXT,
    @Sub_Heading TEXT,
    @Short_Description TEXT,
    @Long_Description TEXT,
    @Website VARCHAR(250)
) AS
BEGIN
    INSERT INTO AboutInfo(
        ID,
        dob,
        Heading,
        [Sub Heading],
        [Short Description],
        [LONG Description],
        Website
    )
VALUES(
    @ID,
    @dob,
    @Heading,
    @Sub_Heading,
    @Short_Description,
    @Long_Description,
    @Website
);
END;

 -- basic Info
CREATE PROCEDURE InsertbasicInfo(
    @ID VARCHAR(10),
    @Liscence_Key INT,
    @Job_title VARCHAR(250),
    @Job_Description TEXT,
    @Experties TEXT,
    @Avatar_Icon VARCHAR(250),
    @Theme VARCHAR(10)
) AS
BEGIN
    INSERT INTO BasicInfo(
        ID,
        [Liscence KEY],
        [Job title],
        [Job Description],
        Experties,
        [Avatar Icon],
        Theme
    )
VALUES(
    @ID,
    @Liscence_Key,
    @Job_title,
    @Job_Description,
    @Experties,
    @Avatar_Icon,
    @Theme
);
END;

 -- Theme Info
CREATE PROCEDURE Themedata(
    @Theme VARCHAR(10),
    @Theme_Location VARCHAR(10),
    @Customize INT
) AS
BEGIN
    INSERT INTO ThemeSelection(
        Theme,
        [Theme Location],
        Customize
    )
VALUES(@Theme, @Theme_Location, @Customize);
END;

 -- Project Detail
CREATE PROCEDURE ProjectDetailInsert(
    @ID VARCHAR(10),
    @Project_Name VARCHAR(250),
    @Pics_of_Project VARCHAR(250),
    @Link_of_Projet TEXT,
    @Description VARCHAR(250)
) AS
BEGIN
    INSERT INTO ProjectInfo(
        ID,
        [Project NAME],
        [Pics of Project],
        [Link of Project],
        Description
    )
VALUES(
    @ID,
    @Project_Name,
    @Pics_of_Project,
    @Link_of_Projet,
    @Description
);
END;

CREATE PROCEDURE InsetHistroy(
    @UserID VARCHAR(10),
    @ActionPerform VARCHAR(100),
    @Log_ VARCHAR(100),
    @Before_log VARCHAR(100),
    @After_log VARCHAR(100),
    @Date_time VARCHAR(100)
) AS
BEGIN
    INSERT INTO Histroy
VALUES(
    @UserID,
    @ActionPerform,
    @Log_,
    @Before_log,
    @After_log,
    @Date_time
);
END;

 -- USER Contact
CREATE PROCEDURE ContactDetail(
    @ID VARCHAR(10),
    @Contact_ID INT,
    @Name VARCHAR(250),
    @Email VARCHAR(250),
    @Subject TEXT,
    @Message TEXT
) AS
BEGIN
    INSERT INTO UserContact(
        ID,
        [Contact_ID],
        NAME,
        Email,
        SUBJECT,
        Message
    )
VALUES(
    @ID,
    @Contact_ID,
    @Name,
    @Email,
    @Subject,
    @Message
);
END;

 -- LinkDetails
CREATE PROCEDURE LinkDetailInsert(
    @ID VARCHAR(10),
    @Social_Networks VARCHAR(200),
    @URL VARCHAR(200)
) AS
BEGIN
    INSERT INTO LinkDetails(ID, [Social Network], URL)
VALUES(@ID, @Social_Networks, @URL);
END;

 -- Working Experience
CREATE PROCEDURE WorkingExperiencingInsert(
    @ID VARCHAR(10),
    @Category VARCHAR(250),
    @Job_Title VARCHAR(250),
    @Working_Since VARCHAR(250),
    @Organization_Name VARCHAR(250),
    @Working_Description TEXT
) AS
BEGIN
    INSERT INTO WorkingExperience(
        ID,
        Category,
        [Job Title],
        [Working Since],
        [Organization NAME],
        [Working Description]
    )
VALUES(
    @ID,
    @Category,
    @Job_Title,
    @Working_Since,
    @Organization_Name,
    @Working_Description
);
END;

 -- JobSkills
CREATE PROCEDURE JobSkillInsert(
    @ID VARCHAR(10),
    @Skills VARCHAR(250),
    @Points VARCHAR(250)
) AS
BEGIN
    INSERT INTO JobSkills(ID, Skills, Points)
VALUES(@ID, @Skills, @Points);
END;

 -- LiscenceDetail
CREATE PROCEDURE LisceneDetailInsert(
    @ID VARCHAR(10),
    @Liscence_Key INT,
    @Validity VARCHAR(12),
    @Issue_Date VARCHAR(12),
    @Liscenece_Status INT
) AS
BEGIN
    INSERT INTO LisceneceDetail(
        ID,
        [Liscence KEY],
        Validity,
        [Issue DATE],
        [Liscenece STATUS]
    )
VALUES(
    @ID,
    @Liscence_Key,
    @Validity,
    @Issue_Date,
    @Liscenece_Status
);
END;

 -- OwnerInfo
CREATE PROCEDURE OwnerInfoInsert(
    @AdminID VARCHAR(10),
    @AdminPass VARCHAR(20),
    @Request_Recieved VARCHAR(10),
    @Contact_No VARCHAR(12),
    @UserName VARCHAR(20),
    @Email VARCHAR(30)
) AS
BEGIN
    INSERT INTO OwnerInfo(
        AdminID,
        AdminPass,
        [Request Recieved],
        [Contact NO],
        UserName,
        Email
    )
VALUES(
    @AdminID,
    @AdminPass,
    @Request_Recieved,
    @Contact_No,
    @UserName,
    @Email
);
END;

 -- Request
CREATE PROCEDURE RequestInfoInsert(
    @AdminID VARCHAR(10),
    @Request_Recieved VARCHAR(10),
    @Send_Request VARCHAR(10)
) AS
BEGIN
    INSERT INTO Request(
        AdminID,
        [Request Recieved],
        [Send Request]
    )
VALUES(
    @AdminID,
    @Request_Recieved,
    @Send_Request
);
END;

 -- CustomiztionTheme
CREATE PROCEDURE CustomizeInsert(
    @Theme VARCHAR(10),
    @ID VARCHAR(10),
    @Font_Color VARCHAR(6),
    @Background_Color VARCHAR(6),
    @fontStyle VARCHAR(250),
    @fontSize INT
) AS
BEGIN
    INSERT INTO CustomizeTheme(
        Theme,
        ID,
        [Font Color],
        [Background Color],
        fontStyle,
        fontSize
    )
VALUES(
    @Theme,
    @ID,
    @Font_Color,
    @Background_Color,
    @fontStyle,
    @fontSize
);
END;

 -- USER Info
CREATE PROCEDURE UserInfoInsert(
    @ID VARCHAR(10),
    @Profile_Pic VARCHAR(250),
    @Name VARCHAR(250),
    @Wallpaper VARCHAR(200),
    @Pofession VARCHAR(200),
    @Adress TEXT,
    @Contact_No VARCHAR(200),
    @Email VARCHAR(200)
) AS
BEGIN
    INSERT INTO UserInfo(
        ID,
        Profile_Pic,
        NAME,
        Wallpaper,
        Profession,
        Adress,
        [Contact NO],
        Email
    )
VALUES(
    @ID,
    @Profile_Pic,
    @Name,
    @Wallpaper,
    @Pofession,
    @Adress,
    @Contact_No,
    @Email
);
END;

 -- USER Contact
CREATE PROCEDURE ContactDetail(
    @ID VARCHAR(10),
    @Contact_ID INT,
    @Name VARCHAR(250),
    @Email VARCHAR(250),
    @Subject TEXT,
    @Message TEXT
) AS
BEGIN
    INSERT INTO UserContact(
        ID,
        [Contact_ID],
        NAME,
        Email,
        SUBJECT,
        Message
    )
VALUES(
    @ID,
    @Contact_ID,
    @Name,
    @Email,
    @Subject,
    @Message
);
END;

 -- LinkDetails
CREATE PROCEDURE LinkDetailInsert(
    @ID VARCHAR(10),
    @Social_Networks VARCHAR(200),
    @URL VARCHAR(200)
) AS
BEGIN
    INSERT INTO LinkDetails(ID, [Social Network], URL)
VALUES(@ID, @Social_Networks, @URL);
END;

 -- Working Experience
CREATE PROCEDURE WorkingExperiencingInsert(
    @ID VARCHAR(10),
    @Category VARCHAR(250),
    @Job_Title VARCHAR(250),
    @Working_Since VARCHAR(250),
    @Organization_Name VARCHAR(250),
    @Working_Description TEXT
) AS
BEGIN
    INSERT INTO WorkingExperience(
        ID,
        Category,
        [Job Title],
        [Working Since],
        [Organization NAME],
        [Working Description]
    )
VALUES(
    @ID,
    @Category,
    @Job_Title,
    @Working_Since,
    @Organization_Name,
    @Working_Description
);
END;

 -- JobSkills
CREATE PROCEDURE JobSkillInsert(
    @ID VARCHAR(10),
    @Skills VARCHAR(250),
    @Points VARCHAR(250)
) AS
BEGIN
    INSERT INTO JobSkills(ID, Skills, Points)
VALUES(@ID, @Skills, @Points);
END;

 -- LiscenceDetail
CREATE PROCEDURE LisceneDetailInsert(
    @ID VARCHAR(10),
    @Liscence_Key INT,
    @Validity VARCHAR(12),
    @Issue_Date VARCHAR(12),
    @Liscenece_Status INT
) AS
BEGIN
    INSERT INTO LisceneceDetail(
        ID,
        [Liscence KEY],
        Validity,
        [Issue DATE],
        [Liscenece
    STATUS
       ]
    )
VALUES(
    @ID,
    @Liscence_Key,
    @Validity,
    @Issue_Date,
    @Liscenece_Status
);
END;

 -- OwnerInfo
CREATE PROCEDURE OwnerInfoInsert(
    @AdminID VARCHAR(10),
    @AdminPass VARCHAR(20),
    @Request_Recieved VARCHAR(10),
    @Contact_No VARCHAR(12),
    @UserName VARCHAR(20),
    @Email VARCHAR(30)
) AS
BEGIN
    INSERT INTO OwnerInfo(
        AdminID,
        AdminPass,
        [Request Recieved],
        [Contact NO],
        UserName,
        Email
    )
VALUES(
    @AdminID,
    @AdminPass,
    @Request_Recieved,
    @Contact_No,
    @UserName,
    @Email
);
END;

 -- Request
CREATE PROCEDURE RequestInfoInsert(
    @AdminID VARCHAR(10),
    @Request_Recieved VARCHAR(10),
    @Send_Request VARCHAR(10)
) AS
BEGIN
    INSERT INTO Request(
        AdminID,
        [Request Recieved],
        [Send Request]
    )
VALUES(
    @AdminID,
    @Request_Recieved,
    @Send_Request
);
END;

 -- CustomiztionTheme
CREATE PROCEDURE CustomizeInsert(
    @Theme VARCHAR(10),
    @ID VARCHAR(10),
    @Font_Color VARCHAR(6),
    @Background_Color VARCHAR(6),
    @fontStyle VARCHAR(250),
    @fontSize INT
) AS
BEGIN
    INSERT INTO CustomizeTheme(
        Theme,
        ID,
        [Font Color],
        [Background Color],
        fontStyle,
        fontSize
    )
VALUES(
    @Theme,
    @ID,
    @Font_Color,
    @Background_Color,
    @fontStyle,
    @fontSize
);
END;


-- USER Info
CREATE PROCEDURE UserInfoInsert(
    @ID VARCHAR(10),
    @Profile_Pic VARCHAR(250),
    @Name VARCHAR(250),
    @Wallpaper VARCHAR(200),
    @Pofession VARCHAR(200),
    @Adress TEXT,
    @Contact_No VARCHAR(200),
    @Email VARCHAR(200)
) AS
BEGIN
    INSERT INTO UserInfo(
        ID,
        Profile_Pic,
        NAME,
        Wallpaper,
        Profession,
        Adress,
        [Contact NO],
        Email
    )
VALUES(
    @ID,
    @Profile_Pic,
    @Name,
    @Wallpaper,
    @Pofession,
    @Adress,
    @Contact_No,
    @Email
);
END;
-- Insert Complete
---------------------------------Gobal----------------------------------------------------------------


-- Search 
CREATE PROCEDURE _Search_WebVeiw(@Input VARCHAR(MAX), @SortBy VARCHAR(MAX), @Table VARCHAR(MAX)) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'SELECT * FROM '+@Table+' where '+@SortBy+' like '+char(39)+'%'+@Input+char(39)+'%';
		Exec (@SQL);
END



-- Main Insert 
CREATE PROCEDURE PN_INSERT_GOBAL @Tab VARCHAR(MAX), @val VARCHAR(MAX), @COL VARCHAR(MAX) AS
BEGIN
     DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'Insert Into ' + @Tab + '(' + @COL + ') Values (' + @val + ')';
		Exec (@SQL);
END

-- SELECT 
CREATE PROCEDURE PN_SELECT_GOBAL @Tab VARCHAR(MAX) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'SELECT * FROM '+@Tab;
		Exec (@SQL);
END

-- UDDATE
CREATE PROCEDURE PN_UPDATE_GOBAL @Tab VARCHAR(MAX),@INPUT VARCHAR(MAX) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'UDDATE '+@Tab+'SET '+@INPUT;
		Exec (@SQL);
END

-- DELETE
CREATE PROCEDURE PN_DELETE_GOBAL @Tab VARCHAR(MAX),@INPUT VARCHAR(MAX) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'DELETE FROM'+@Tab+'WHERE '+@INPUT;
		Exec (@SQL);
END

-- TRUCAT
CREATE PROCEDURE PN_TRUCAT_GOBAL @Tab VARCHAR(MAX),@INPUT VARCHAR(MAX) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'TRUNCATE  FROM'+@Tab;
		Exec (@SQL);
END

-- DROP
CREATE PROCEDURE PN_DROP_GOBAL @TYPE VARCHAR(MAX),@INPUT VARCHAR(MAX) AS
BEGIN
    DECLARE
        @SQL VARCHAR(MAX)
    SELECT
        @SQL = 'DROP '+@TYPE+' '+@INPUT;
		Exec (@SQL);
END
