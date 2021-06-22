---DCL grant, revoke

CREATE LOGIN Pass1 WITH PASSWORD = 'FD456AHW%L!7';
create user Guest_User for login Pass1;

grant connect to Guest_User;
Grant select on Admininfo to Guest_User 
Grant select on AboutInfo to Guest_User 
Grant select on BasicInfo to Guest_User 
Grant select on ThemeSelection to Guest_User 
Grant select on UserContact to Guest_User 
Grant select on UserInfo to Guest_User 
Grant select on LinkDetails to Guest_User 
Grant select on ProjectInfo to Guest_User 
Grant select on WorkingExperience to Guest_User 
Grant select on JobSkills to Guest_User 
Grant select on LisceneceDetail to Guest_User 
Grant select on OwnerInfo to Guest_User 
Grant select on Request to Guest_User 
Grant select on Request_Admin to Guest_User 
Grant select on CustomizeTheme to Guest_User
Grant select on WebView to Guest_User 
Grant select on CheckLisceneDetail to Guest_User 
Grant select on ThemeSelect to Guest_User 
Grant select on OwnerRequestCheck to Guest_User 
Grant select on ExperienceWorkHireDetail to Guest_User 
Grant select on Admin_WEB_Search to Guest_User 





---assign database role to user
EXEC sp_addrolemember 'Companies', '';
-- ALTER ROLE student add member sample_user;
