CREATE DATABASE Portfolio_Maker;

use Portfolio_Maker;

CREATE TABLE admin_users (
  username varchar(250) NOT NULL,
  user_id varchar(10) NOT NULL,
  user_pass varchar(250) NOT NULL,
  Lkey int NOT NULL
)
CREATE TABLE aboutus_setup (
  user_id varchar(10) NOT NULL, -- FK
  dob varchar(250) NOT NULL, -- FK+PK
  shortdesc text NOT NULL,
  heading text NOT NULL,
  subheading text NOT NULL,
  longdesc text NOT NULL,
  website varchar(250) NOT NULL
)
CREATE TABLE basic_setup (
  user_id varchar(10) NOT NULL,-- FK
  LKey int NOT NULL,--PK = FK + PK
  title varchar(250) NOT NULL,
  description text NOT NULL,
  keyword text NOT NULL,
  icon varchar(250) NOT NULL,
  Theme varchar(10) NOT NULL -- fk
)
CREATE TABLE Theme (
  Theme varchar(10) NOT NULL, -- pk
  Location varchar(10) NOT NULL, 
  Customize Bit  NOT NULL DEFAULT 0,   
)
CREATE TABLE Theme_Customize (
  Theme varchar(10) NOT NULL, -- fk.pk
  user_id varchar(10) NOT NULL,-- FK,pk
  fcolor nvarchar(6) NOT NULL,
  bcolor varchar(6) NOT NULL,
  fontStyle varchar(250) NOT NULL,
  fontSize int NOT NULL,
)
CREATE TABLE contact (
  user_id varchar(10) NOT NULL,-- FK
  Cid int NOT NULL, --PK = FK + PK
  cname varchar(250) NOT NULL,
  cemail varchar(250) NOT NULL,
  csubject text NOT NULL,
  cmessage text NOT NULL
)
CREATE TABLE personal_setup (
  user_id varchar(10) NOT NULL, -- fk
  profilepic varchar(250) NOT NULL,
  name varchar(250) NOT NULL,
  homewallpaper varchar(200) NOT NULL,
  professions varchar(200) NOT NULL,
  location text NOT NULL,
  mobile varchar(200) NOT NULL,
  emailuser varchar(200) NOT NULL -- pk
)
CREATE TABLE Link_setup(
  user_id varchar(10) NOT NULL, -- FK
  Name varchar(200) NOT NULL, -- PK = FK + PK
  Link varchar(200) NOT NULL,
)
CREATE TABLE Projects_Details(
  user_id varchar(10) NOT NULL, -- fk,pk
  projectname varchar(250) NOT NULL, -- pk
  projectpic varchar(250) NOT NULL,
  projectlink text NOT NULL,
  projectdesc varchar(250) NOT NULL,
)
CREATE TABLE Experience (
  user_id varchar(10) NOT NULL, -- fk , pk
  category varchar(250) NOT NULL, 
  title varchar(250) NOT NULL,
  year varchar(250) NOT NULL, -- pk
  ogname varchar(250) NOT NULL, -- pk
  workdesc text NOT NULL
)
CREATE TABLE skills (
  user_id varchar(10) NOT NULL, -- fk , pk
  skill varchar(250) NOT NULL, -- pk
  score varchar(250) NOT NULL
)

CREATE TABLE Licence (
  user_id varchar(10) NOT NULL, -- fk , pk
  LKey int NOT NULL PRIMARY KEY, -- pk
  ExpireDate varchar(12) NOT NULL,
  IssueDate varchar(12) NOT NULL,
  LStatus int NOT NULL DEFAULT 1
)

CREATE TABLE Onwer (
  Admin_id varchar(10) NOT NULL, -- fk , pk
  Admin_pass varchar(250) NOT NULL,
  New_request varchar(250) NOT NULL,
)

CREATE TABLE Request(
  request varchar(250) NOT NULL,
  User_Name varchar(250) NOT NULL,
  email varchar(200) NOT NULL, -- pk
  number varchar(200) NOT NULL,
)

-- ADD PRIMARY KEY  

ALTER TABLE admin_users
  ADD PRIMARY KEY (user_id);
ALTER TABLE aboutus_setup
  ADD PRIMARY KEY (user_id,dob);
ALTER TABLE basic_setup
  ADD PRIMARY KEY (user_id,Theme); 
ALTER TABLE Theme
  ADD PRIMARY KEY (Theme);
ALTER TABLE Theme_Customize
  ADD PRIMARY KEY (user_id,Theme);
ALTER TABLE contact
  ADD PRIMARY KEY (user_id,Cid);
ALTER TABLE personal_setup
  ADD PRIMARY KEY (user_id,emailuser);
ALTER TABLE Link_setup
  ADD PRIMARY KEY (user_id,Name);
ALTER TABLE Projects_Details
  ADD PRIMARY KEY (user_id,projectname);
ALTER TABLE Experience
  ADD PRIMARY KEY (user_id,year,ogname);
ALTER TABLE skills
  ADD PRIMARY KEY (user_id,skill);
ALTER TABLE Licence
  ADD PRIMARY KEY (LKey);
ALTER TABLE Onwer
  ADD PRIMARY KEY (Admin_id);
ALTER TABLE Request
  ADD PRIMARY KEY (request);
  
  --

  -- ADD Foreign Key  

ALTER TABLE Licence
   ADD CONSTRAINT aboutus_setupfk
   FOREIGN KEY (user_id)
   REFERENCES admin_users (user_id);
ALTER TABLE admin_users
   ADD CONSTRAINT Licencefk
   FOREIGN KEY (LKey)
   REFERENCES Licence (LKey);
ALTER TABLE aboutus_setup
   ADD CONSTRAINT admin_usersfk
   FOREIGN KEY (user_id)
   REFERENCES admin_users (user_id);
ALTER TABLE basic_setup   
	ADD CONSTRAINT basic_setupfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE basic_setup   
	ADD CONSTRAINT basic_setup2Themefk
	FOREIGN KEY (Theme)
	REFERENCES Theme (Theme);
ALTER TABLE Theme_Customize   
	ADD CONSTRAINT Theme_Customizefk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);	
ALTER TABLE Theme_Customize  
	ADD CONSTRAINT Theme_Customize2Themefk
	FOREIGN KEY (Theme)
	REFERENCES Theme (Theme);
ALTER TABLE contact   
	ADD CONSTRAINT contactfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE personal_setup   
	ADD CONSTRAINT personal_setupfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE Link_setup   
	ADD CONSTRAINT Link_setupfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE Projects_Details   
	ADD CONSTRAINT Projects_Detailsfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE Experience   
	ADD CONSTRAINT Experiencefk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE skills   
	ADD CONSTRAINT skillsfk
	FOREIGN KEY (user_id)
	REFERENCES admin_users (user_id);
ALTER TABLE Onwer   
	ADD CONSTRAINT Onwerfk
	FOREIGN KEY (New_request)
	REFERENCES Request (Request);



  --

  delete admin_users;