--Views


-- new View  Admininfo
CREATE VIEW Admininfo AS
SELECT username 'Name',
user_id 'ID',
user_pass 'Pass',
Lkey 'Liscence Key'
FROM admin_users;



-- new View  AboutInfo
CREATE VIEW AboutInfo AS
SELECT user_id 'ID',
dob,
heading 'Heading',
subheading 'Sub Heading',
shortdesc'Short Description',
longdesc'Long Description',
website'Website'
FROM aboutus_setup;



-- new View  BasicInfo
CREATE VIEW BasicInfo AS
SELECT user_id 'ID',
LKey 'Liscence Key',
title 'Job title',
description 'Job Description',
keyword'Experties',
icon 'Avatar Icon',
Theme'Theme'
FROM basic_setup;



-- new View  ThemeSelection
CREATE VIEW ThemeSelection AS
SELECT Theme,
LOCATION 'Theme Location',
Customize
FROM Theme

-- new View  UserContact
CREATE VIEW UserContact AS
SELECT user_id'ID',
Cid'Contact ID',
cname'Name',
cemail'Email',
csubject 'Subject',
cmessage'Message'
FROM contact

-- new View  UserInfo
CREATE VIEW UserInfo AS
SELECT user_id'ID',
profilepic'Profile_Pic',
name'Name',
homewallpaper'Wallpaper',
professions'Profession',
LOCATION 'Adress',
mobile'Contact No',
emailuser'Email'
FROM personal_setup

-- new View  LinkDetails
CREATE VIEW LinkDetails AS
SELECT user_id 'ID',
Name 'Social_Networks',
LINK'URL'
FROM Link_setup

-- new View  ProjectInfo
CREATE VIEW ProjectInfo AS
SELECT user_id 'ID',
projectname'Project Name',
projectpic 'Pics of project' ,
projectlink 'Link of project',
projectdesc'Description'
FROM ProjectDetail

-- new View  WorkingExperience
CREATE VIEW WorkingExperience AS
SELECT user_id'ID',
category'Categrory',
title'Job Title',
YEAR'Working Since',
ogname 'Organization Name',
workdesc 'Working Description'
FROM Experience

-- new View  JobSkills
CREATE VIEW JobSkills AS
SELECT user_id'ID',
skill 'Skills',
score 'Points'
FROM skills --


-- new View  LisceneceDetail
CREATE VIEW LisceneceDetail AS
SELECT user_id'ID',
LKey'Liscence Key',
ExpireDate 'Validity',
IssueDate 'Issue Date',
LStatus 'Liscenece Status'
FROM Licence

-- new View  OwnerInfo
CREATE VIEW OwnerInfo AS
SELECT AdminID,
AdminPass,
NewRequest'Request Recieved', Number'Contact No',UserName,
Email
FROM Owner_Setup

-- new View  Request
CREATE VIEW Request AS
SELECT AdminID,
NewRequest'Request Recieved',
Request'Send Request'
FROM Request_Manager re

-- new View  Request_Admin
CREATE VIEW Request_Admin AS
SELECT *
FROM Request_Manager RM
INNER JOIN Request R ON RM.AdminID = R.AdminID;

Create view CustomizeTheme
as
Select Theme,user_id 'ID',fcolor 'Font Color',
bcolor 'Background Color',fontStyle,fontSize
from Theme_Customize


DROP VIEW LinkDetails;



-- new View  WebView
CREATE VIEW WebView AS
SELECT UserIn.Profile_Pic,
UserIn.Wallpaper,
UserIn.Name,
UserIn.Profession,
Link.Social_Networks,
Link.URL,
AboutIn.[Short Description],
AboutIn.Heading,
AboutIn.[Sub Heading],
AboutIn.dob,
UserIn.Email,
UserIn.[Contact No],
AboutIn.[Long Description],
SkillJ.ID,
SkillJ.Skills,
SkillJ.Points,
Expe.[Job Title],
Expe.[Organization Name],
Expe.[Working Since],
Expe.[Working Description],
Expe.Categrory,
Pro.[Link of project],
Pro.[Pics of project],
Pro.Description,
Pro.[Project Name]
FROM UserInfo UserIn
INNER JOIN LinkDetails LINK ON UserIn.ID = Link.ID
INNER JOIN AboutInfo AboutIn ON UserIn.ID = AboutIn.ID
INNER JOIN JobSkills SkillJ ON UserIn.ID = SkillJ.ID
INNER JOIN WorkingExperience Expe ON UserIn.ID = Expe.ID
INNER JOIN ProjectInfo Pro ON ProjCon.ID = Pro.ID;



-- new View  CheckLisceneDetail
CREATE VIEW CheckLisceneDetail AS
SELECT AdminIn.ID,
AdminIn.Name,
AdminIn.Pass,
Lis.[Liscence Key],
Lis.[Liscenece Status],
Lis.[Issue Date],
Lis.Validity
FROM Admininfo AdminIn
INNER JOIN LisceneceDetail Lis ON AdminIn.[Liscence Key] = Lis.[Liscence Key];



-- new View  ThemeSelect
CREATE VIEW ThemeSelect AS
SELECT ThemeSel.Theme,
ThemeSel.[Theme Location],
ThemeSel.Customize,
Customize.[Background Color],
Customize.[Font Color],
Customize.fontSize,
Customize.fontStyle
FROM ThemeSelection ThemeSel
INNER JOIN CustomizeTheme Customize ON ThemeSel.Theme = Customize.Theme;



-- new View  OwnerRequestCheck
CREATE VIEW OwnerRequestCheck AS
SELECT Own.AdminID,
Own.UserName,
Req.[Request Recieved]
FROM OwnerInfo OWN
INNER JOIN Request Req ON Own.AdminID = Req.AdminID;



-- new View  ExperienceWorkHireDetail
CREATE VIEW ExperienceWorkHireDetail AS
SELECT UserCon.Name,
UserCon.Profile_Pic,
UserCon.Wallpaper,
UserCon.Profession,
Workexp.Categrory,
UserCon.[Contact No],
UserCon.Email,
UserCon.Adress,
Workexp.[Organization Name],
workexp.[Working Description],
workexp.[Working Since]
FROM WorkingExperience workexp
INNER JOIN UserInfo UserCon ON workexp.ID = UserCon.ID;

-- new View  Admin_WEB_View
CREATE VIEW Admin_WEB_Search AS
SELECT 
UserIn.Name,
UserIn.Profession,
Pro.[Project Name],
lice.[Issue Date],	
SkillJ.Skills,
Expe.[Organization Name] 
FROM UserInfo UserIn
INNER JOIN LisceneceDetail lice ON UserIn.ID = lice.ID
INNER JOIN JobSkills SkillJ ON UserIn.ID = SkillJ.ID
INNER JOIN WorkingExperience Expe ON UserIn.ID = Expe.ID
INNER JOIN ProjectInfo Pro ON UserIn.ID = Pro.ID;


select * from  Admininfo 
select * from  AboutInfo 
select * from  BasicInfo 
select * from  ThemeSelection 
select * from  UserContact 
select * from  UserInfo 
select * from  LinkDetails 
select * from  ProjectInfo 
select * from  WorkingExperience 
select * from  JobSkills 
select * from  LisceneceDetail 
select * from  OwnerInfo 
select * from  Request 
select * from  Request_Admin 
select * from  CustomizeTheme
select * from  WebView 
select * from  CheckLisceneDetail 
select * from  ThemeSelect 
select * from  OwnerRequestCheck 
select * from  ExperienceWorkHireDetail 
select * from  Admin_WEB_Search 


