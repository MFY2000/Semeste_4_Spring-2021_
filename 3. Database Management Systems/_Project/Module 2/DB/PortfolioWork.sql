CREATE DATABASE DBMSLAB;

use DBMSLAB;

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
  Customize int  NOT NULL DEFAULT 0,   
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

CREATE TABLE ProjectDetail (
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
  LKey int NOT NULL, -- pk
  ExpireDate varchar(12) NOT NULL,
  IssueDate varchar(12) NOT NULL,
  LStatus int NOT NULL DEFAULT 1
)

CREATE TABLE Owner_Setup(
AdminID varchar(10) Not NUll,
AdminPass varchar(20) Not Null,
NewRequest varchar(10) Not Null,
Number varchar(12) Not NUll,
UserName varchar (20) Not Null,
Email varchar(30) Not Null,
);

CREATE TABLE Request_Manager(
AdminID varchar(10) Not NUll,
NewRequest varchar(10) Not Null,
Request varchar(10) Not Null,
);

--Insert data

INSERT INTO admin_users VALUES ('Ahmed','User07','Ahmed123',2572);

INSERT INTO aboutus_setup VALUES ('User07','dob123',
'We welcome you here to create your very own portfolio',
'About Us','Service we provide',
'We provide a lot of options so that you can create
your own protfolio which will help you to get a job
according to your skills and experience of work','www.FAportfolio.com');

INSERT INTO Theme Values('Blue','location',1);

INSERT INTO Theme_Customize values ('Blue','User07','white','blue','Consolas',14);

Insert into contact values ('User07',01,'Muhammad Fahad','fahadyahya@gmail.com',
'problem','I am facing a problem with my portfolio');

Insert into personal_setup values ('User07','Profilepic.jpeg','Ahmed Amin',
'homewallpaper.jpeg','Developer','Naval Colony Hub river Road Karachi',
'0300-xxxxxxx','ahmedamin2542@gmail.com');

Insert into Link_setup values ('User07','Facebook','facebook.com\ahmedamin');

Insert into ProjectDetail values('User07','Organization Management System',
'ProjectPic.jpeg','Projectlink.29298010u08',
'This is a project for a whole organization');

Insert into Experience values('User07','Developing site','Developer',2021,
'FA Software Solution','I worked in FA Software Solution as a junior developer');

Insert into skills values ('User07','Development','200');

Insert into Licence values ('User07',2572,'12-12-2025','01-01-2021',1);

Insert into Owner_Setup values ('FA01','Fahad123','NewReq','0300-xxxxxxx',
'Fahad Yahya','fahadyahya@gmail.com');

Insert into Request_Manager values('FA01','NewReq','Req');


select * from admin_users;
select * from aboutus_setup;
select * from Theme;
select * from Theme_Customize;
select * from contact;
select * from personal_setup;
select * from Link_setup;
select * from ProjectDetail;
select * from Experience;
select * from skills;
select * from Licence;
select * from Owner_Setup;
select * from Request_Manager;

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
ALTER TABLE ProjectDetail
  ADD PRIMARY KEY (user_id,projectname);
ALTER TABLE Experience
  ADD PRIMARY KEY (user_id,year,ogname);
ALTER TABLE skills
  ADD PRIMARY KEY (user_id,skill);
ALTER TABLE Licence
  ADD PRIMARY KEY (LKey);
ALTER TABLE Owner_Setup
  ADD PRIMARY KEY (AdminID);
ALTER TABLE Request_Manager
ADD PRIMARY KEY (NewRequest);

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
ALTER TABLE ProjectDetail   
	ADD CONSTRAINT projectdetailfk
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
ALTER TABLE Owner_Setup
	ADD CONSTRAINT OwnerSetupFK
	FOREIGN KEY (NewRequest)
	REFERENCES Request_Manager (NewRequest);
ALTER TABLE Request_Manager
	ADD CONSTRAINT Request_ManagerFK
	FOREIGN KEY (AdminID)
	REFERENCES Owner_Setup (AdminID);
	