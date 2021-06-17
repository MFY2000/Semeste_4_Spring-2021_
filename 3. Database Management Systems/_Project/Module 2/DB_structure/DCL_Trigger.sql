
--Aboutus Setup
CREATE TRIGGER History_log ON
aboutus_setup INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(AB_.dob, AB_.heading, AB_.longdesc, AB_.shortdesc, AB_.subheading, AB_.website),
            CONCAT(INS.dob, INS.heading, INS.longdesc, INS.shortdesc, INS.subheading, INS.website),
            GETDATE() 
			FROM INSERTED INS, aboutus_setup AB_ WHERE INS.user_id = AB_.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(AB_.dob, AB_.heading, AB_.longdesc, AB_.shortdesc, AB_.subheading, AB_.website),
            CONCAT(INS.dob, INS.heading, INS.longdesc, INS.shortdesc, INS.subheading, INS.website),
            GETDATE() 
			FROM DELETED INS, aboutus_setup AB_ WHERE INS.user_id = AB_.user_id
    END;
END

-- BAsic Setup 
CREATE TRIGGER HistoryBasicSet ON
basic_setup INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(BS_.LKey, BS_.title, BS_.description, BS_.keyword, BS_.icon, BS_.Theme),
            CONCAT(INS.LKey, INS.title, INS.description, INS.keyword, INS.icon, INS.Theme),
            GETDATE() 
			FROM INSERTED INS, basic_setup BS_ WHERE INS.user_id = BS_.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
		 	CONCAT(GETDATE(),''),
            CONCAT(BS_.LKey, BS_.title, BS_.description, BS_.keyword, BS_.icon, BS_.Theme),
            CONCAT(INS.LKey, INS.title, INS.description, INS.keyword, INS.icon, INS.Theme),
            GETDATE() 
			FROM DELETED INS, basic_setup BS_ WHERE INS.user_id = BS_.user_id
    END;
END

--Admin USer

CREATE TRIGGER HistoryAdminUser ON
admin_users INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(AU.username, AU.user_pass, AU.Lkey),
			CONCAT(INS.username, INS.user_pass, INS.Lkey),
            GETDATE() 
			FROM INSERTED INS, admin_users AU WHERE INS.user_id = AU.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
		 	CONCAT(GETDATE(),''),
            CONCAT(AU.username, AU.user_pass, AU.Lkey),
			CONCAT(INS.username, INS.user_pass, INS.Lkey),
            GETDATE()
			FROM DELETED INS, admin_users AU WHERE INS.user_id = AU.user_id
    END;
END

--Contact

CREATE TRIGGER HistoryContact ON
contact INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(CO.Cid, CO.cname, CO.cemail,CO.csubject, CO.cmessage),
			CONCAT(INS.Cid, INS.cname, INS.cemail,INS.csubject, INS.cmessage),
            GETDATE() 
			FROM INSERTED INS, contact CO WHERE INS.user_id = CO.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
		 	CONCAT(GETDATE(),''),
            CONCAT(CO.Cid, CO.cname, CO.cemail,CO.csubject, CO.cmessage),
			CONCAT(INS.Cid, INS.cname, INS.cemail,INS.csubject, INS.cmessage),
            GETDATE() 
			FROM DELETED INS, contact CO WHERE INS.user_id = CO.user_id
    END;
END

--Personal Setup

CREATE TRIGGER HistoryPersonalSet ON
personal_setup INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(PS.profilepic, PS.name, PS.homewallpaper,PS.professions, PS.location,PS.mobile, PS.emailuser),
			CONCAT(INS.profilepic, INS.name, INS.homewallpaper,INS.professions, INS.location,INS.mobile, INS.emailuser),
            GETDATE() 
			FROM INSERTED INS, personal_setup PS WHERE INS.user_id = PS.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(PS.profilepic, PS.name, PS.homewallpaper,PS.professions, PS.location,PS.mobile, PS.emailuser),
			CONCAT(INS.profilepic, INS.name, INS.homewallpaper,INS.professions, INS.location,INS.mobile, INS.emailuser),
            GETDATE() 
			FROM DELETED INS, personal_setup PS WHERE INS.user_id = PS.user_id
    END;
END

--Link Setup

CREATE TRIGGER HistoryLinkSet ON
Link_setup INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(LS.Name, LS.Link),
			CONCAT(INS.Name, INS.Link),
            GETDATE() 
			FROM INSERTED INS, Link_setup LS WHERE INS.user_id = LS.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(LS.Name, LS.Link),
			CONCAT(INS.Name, INS.Link),
            GETDATE() 
			FROM DELETED INS, Link_setup LS WHERE INS.user_id = LS.user_id
    END;
END

--Theme Customize

CREATE TRIGGER HistoryThemeCustom ON
Theme_Customize INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(TC.Theme, TC.fcolor, TC.bcolor,TC.fontStyle, TC.fontSize),
			CONCAT(INS.Theme, INS.fcolor, INS.bcolor,INS.fontStyle, INS.fontSize),
            GETDATE()	
			FROM INSERTED INS, Theme_Customize TC WHERE INS.user_id = TC.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(TC.Theme, TC.fcolor, TC.bcolor,TC.fontStyle, TC.fontSize),
			CONCAT(INS.Theme, INS.fcolor, INS.bcolor,INS.fontStyle, INS.fontSize),
            GETDATE()	
			FROM DELETED INS, Theme_Customize TC WHERE INS.user_id = TC.user_id
    END;
END

--ProjectDetail

CREATE TRIGGER HistoryProjectDetail ON
ProjectDetail INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(PD.projectname, PD.projectpic, PD.projectlink,PD.projectdesc),
			CONCAT(INS.projectname, INS.projectpic, INS.projectlink,INS.projectdesc),
            GETDATE()	
			FROM INSERTED INS, ProjectDetail PD WHERE INS.user_id = PD.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(PD.projectname, PD.projectpic, PD.projectlink,PD.projectdesc),
			CONCAT(INS.projectname, INS.projectpic, INS.projectlink,INS.projectdesc),
            GETDATE()	
			FROM DELETED INS, ProjectDetail PD WHERE INS.user_id = PD.user_id
    END;
END

--Experience

CREATE TRIGGER HistoryExperience ON
Experience INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(EX.category, EX.title, EX.year,EX.ogname, EX.workdesc),
			CONCAT(INS.category, INS.title, INS.year,INS.ogname, EX.workdesc),
            GETDATE()	
			FROM INSERTED INS, Experience EX WHERE INS.user_id = EX.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(EX.category, EX.title, EX.year,EX.ogname, EX.workdesc),
			CONCAT(INS.category, INS.title, INS.year,INS.ogname, EX.workdesc),
            GETDATE()
			FROM DELETED INS, Experience EX WHERE INS.user_id = EX.user_id
    END;
END

--Skills

CREATE TRIGGER HistorySkills ON
skills INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(SK.skill, SK.score),
			CONCAT(INS.skill, INS.score),
            GETDATE() 
			FROM INSERTED INS, skills SK WHERE INS.user_id = SK.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(SK.skill, SK.score),
			CONCAT(INS.skill, INS.score),
            GETDATE()  
			FROM DELETED INS, skills SK WHERE INS.user_id = SK.user_id
    END;
END

--Liscence
CREATE TRIGGER HistoryLiscene ON
Licence INSTEAD OF
DELETE,
UPDATE AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(LS.LKey, LS.ExpireDate, LS.IssueDate,LS.LStatus),
			CONCAT(INS.LKey, INS.ExpireDate, INS.IssueDate,LS.LStatus),
            GETDATE()	
			FROM INSERTED INS, Licence LS WHERE INS.user_id = LS.user_id
		
    END; 
	ELSE IF EXISTS(SELECT * FROM DELETED)
	BEGIN
         INSERT INTO History (UserID,ActionPerform,Log_,Before_log,After_log, Date_time) SELECT INS.user_id,'DEL',
			CONCAT(GETDATE(),''),
            CONCAT(LS.LKey, LS.ExpireDate, LS.IssueDate,LS.LStatus),
			CONCAT(INS.LKey, INS.ExpireDate, INS.IssueDate,LS.LStatus),
            GETDATE()	
			FROM DELETED INS, Licence LS WHERE INS.user_id = LS.user_id
    END;
END
-- ADD ID TO ALL TABLE
CREATE TRIGGER TR_ID_ADDING2ALL_COLUMN ON
Licence 
AFTER INSERT
AS
BEGIN
	DECLARE @ID VARCHAR(10);  
	DECLARE @LKEY VARCHAR(10);  
	
	SELECT @ID = I.user_id, @LKEY = I.LKey FROM INSERTED I;

	EXEC InsertRecord '',@ID,'',@LKEY;
	EXEC InsertAboutInfo @ID,'','','','','','';
	EXEC ProjectDetailInsert @ID,'','','','';
	EXEC LinkDetailInsert @ID,'','';
	EXEC WorkingExperiencingInsert @ID,'','','','','';
	EXEC JobSkillInsert @ID,'','';

END

update aboutus_setup set dob = '25/5/2021' where user_id = 'User07'
select * from [dbo].[aboutus_setup]
