CREATE DATABASE Portfolio;

USE Portfolio;

CREATE TABLE Basic_setup (
  UserID varchar(10) NOT NULL,-- PK
  LKey int NOT NULL,
  title varchar(250) NOT NULL,
  description text NOT NULL,
  keyword text NOT NULL,
  icon varchar(250) NOT NULL,
  Theme varchar(10) NOT NULL -- fk
  Primary key (UserID),
);

CREATE TABLE Theme (
  Theme varchar(10) NOT NULL, -- Pk
  LocationTheme varchar(10) NOT NULL, 
  Customize Bit  NOT NULL DEFAULT 0,
  Primary Key (Theme)
);

CREATE TABLE Theme_Customize (
  Theme varchar(10) NOT NULL, --FK
  UserID varchar(10) NOT NULL,--FK
  fcolor nvarchar(6) NOT NULL,
  bcolor varchar(6) NOT NULL,
  fontStyle varchar(250) NOT NULL,
  fontSize int NOT NULL,
);


CREATE TABLE personal_setup (
  UserID varchar(10) NOT NULL, -- pk
  profilepic varchar(250) NOT NULL,
  name varchar(250) NOT NULL,
  homewallpaper varchar(200) NOT NULL,
  professions varchar(200) NOT NULL,
  location text NOT NULL,
  mobile varchar(200) NOT NULL,
  emailuser varchar(200) NOT NULL,
  LinkType varchar(20) NOT NULL ,
  Primary key (UserID),
);

CREATE TABLE Link_setup(
  UserID varchar(10) NOT NULL,
  LinkType varchar(20) NOT NULL, 
  Link varchar(50) NOT NULL,
  Primary key (LinkType),
);

CREATE TABLE Owner_Setup(
AdminID varchar(10) Not NUll,
AdminPass varchar(20) Not Null,
NewRequest varchar(10) Not Null,
Number varchar(12) Not NUll,
UserName varchar (20) Not Null,
Email varchar(30) Not Null,
Primary Key (AdminID),
);

CREATE TABLE Request_Manager(
AdminID varchar(10) Not NUll,
NewRequest varchar(10) Not Null,
Request varchar(10) Not Null,
Primary Key (NewRequest),
);


--Making refrence for foreign keys

Alter table basic_setup
Add Constraint FKTheme Foreign Key (Theme) References Theme(Theme);

Alter table Theme_Customize
Add Constraint FKThemeRef Foreign Key (Theme) References Theme(Theme);

Alter table  Theme_Customize
Add Constraint FKUserID Foreign Key (UserID) References basic_setup(UserID);

Alter table personal_setup
Add  Constraint FKLinkType Foreign Key (LinkType) References Link_setup(LinkType);

Alter table Link_setup
Add  Constraint FKUserIDLink Foreign Key (UserID) References  personal_setup(UserID);

Alter table Owner_Setup
Add  Constraint FKNewRequest Foreign Key (NewRequest) References  Request_Manager(NewRequest);

Alter table Request_Manager
Add  Constraint FKAdminID Foreign Key (AdminID) References  Owner_Setup(AdminID);
