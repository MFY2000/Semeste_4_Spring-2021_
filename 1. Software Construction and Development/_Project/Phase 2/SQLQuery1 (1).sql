Create database BanquetBookingSystem;

use [Banquent_Booking]

Create table Banquet_Owner(
Owner_id int identity(1,1) Not Null,
Pass varchar (16) Not Null,
BanquetName varchar(50) Not Null,
OwnerName varchar (20) Not Null,
ContactNo varchar(11) Not Null,
Adress varchar(100) Not Null,
City varchar(20) Not Null,
Co_ordination varchar(20) Not Null,
TypeBanquet Bit Not Null,
LastSince varchar(40) Not Null,
);

Create table Search_cookie(
UserID int Not Null,
Data_of_site varchar(50) Not Null,
ExtraDetail varchar(50) Not Null,
);


Create table User_Detail(
UserID int identity(1,1) Not Null,
UserName varchar(20) Not Null,
Pass varchar(16) Not Null,
ContactNumber varchar(11) Not Null,
Adress varchar(100) Not Null,
StatusofUser varchar(30) Not Null
);


Create table Transition (
TransitionID int identity(1,1) Not Null,
Price varchar(30) Not Null,
GST varchar(11) Not Null,
Charge varchar(100) Not Null,
Advance varchar(30) Not Null, 
OtherCharges varchar(30) Not Null,
);

Create table History(
B_ID int Not Null,
U_ID int Not Null,
Date varchar(11) Not Null,
Time  varchar(100) Not Null,
ReportID varchar(30) Not Null,
TransitionID int Not Null
);

Create table AdminSetup(
AdminID int identity(1,1) Not Null,
Name varchar(20) Not Null,
Pass varchar(16) Not Null,
LastSince varchar(100) Not Null,
);


Create table Banquet(
BanquetID int identity(1,1) Not Null,
BanquetName varchar(50) Not Null,
Owner_id int Not Null,
Range varchar(100) Not Null,
Time varchar(30) Not Null,
Price varchar(20) Not Null,
Employee Bit Default 0 Not Null,
Rating int Not Null,
Status int Not Null,
ImageID int Not Null,
);

Create table Has_Tag(
Tag varchar (100) Not Null,
Counter int Not Null
);

Create table Images(
ImageID int identity(1,1) Not Null,
ID int Not Null,
Alt varchar (11) Not Null,
Src varchar (100) Not Null
);

Create table Comments(
CommentID int identity(1,1) Not Null,
Name varchar(30) Not Null,
Comments varchar(11) Not Null,
Date varchar(100) Not Null,
type varchar(10) Not Null,
);

ALTER TABLE [Banquet]
   DROP column CommentID

ALTER TABLE Comments
  ADD FOREIGN KEY (BanquetID) REFERENCES Banquet(BanquetID);


ALTER TABLE [dbo].[User_Detail]
  ADD PRIMARY KEY (UserID);

ALTER TABLE [dbo].[Banquet_Owner]
  ADD PRIMARY KEY (Owner_id);
  
ALTER TABLE [dbo].[Banquet]
  ADD PRIMARY KEY (BanquetID);

ALTER TABLE [dbo].[Images]
  ADD PRIMARY KEY ([ImageID]);
  
ALTER TABLE [dbo].[Comments]
  ADD PRIMARY KEY ([CommentID]);
  
ALTER TABLE AdminSetup
  ADD PRIMARY KEY (AdminID);

ALTER TABLE Transition
  ADD PRIMARY KEY (TransitionID)
  
ALTER TABLE History
  ADD PRIMARY KEY (B_id,U_id,TransitionID)

ALTER TABLE [Banquet]
   ADD CONSTRAINT Banquet2Ownerfk
   FOREIGN KEY (Owner_id)
   REFERENCES [Banquet_Owner] (Owner_id);

ALTER TABLE [Banquet]
   ADD CONSTRAINT Banquet2Commentsfk
   FOREIGN KEY (CommentID)
   REFERENCES [Comments] (CommentID);

ALTER TABLE [Banquet]
   DROP CONSTRAINT Banquet2Commentsfk

ALTER TABLE History
   ADD CONSTRAINT History2Banquetfk
   FOREIGN KEY (B_id)
   REFERENCES [Banquet] (BanquetID);

ALTER TABLE History
   ADD CONSTRAINT History2User_Detailfk
   FOREIGN KEY (U_id)
   REFERENCES User_Detail (UserID);

ALTER TABLE History
   ADD CONSTRAINT History2Transitionfk
   FOREIGN KEY (TransitionID)
   REFERENCES Transition (TransitionID);

ALTER TABLE [Banquet]
   ADD CONSTRAINT Banquet2Imagesfk
   FOREIGN KEY (ImageID)
   REFERENCES [Images] (ImageID);

ALTER TABLE Search_cookie
   ADD CONSTRAINT Search_cookie2User_Detailfk
   FOREIGN KEY (UserID)
   REFERENCES User_Detail (UserID);
	

--drop TABLE [Banquet]
--drop TABLE [Banquet_Owner]
--drop TABLE [User_Detail]
--drop TABLE [Images]
--drop TABLE [Comments]
--drop TABLE AdminSetup
--drop TABLE [dbo].[History]
--drop TABLE [dbo].[Search_cookie]
--drop TABLE [dbo].[Transition]

--Insert data 

Select * from Banquet_Owner;
Select * from Search_cookie;
Select * from User_Detail;
Select * from Transition;
Select * from History;
Select * from AdminSetup;
Select * from Banquet;
Select * from Images;
Select * from Comments Has_Tag;

Insert into User_Detail values ('Jaffar Abbass','Jaffar123','03xxxxxxxxx','AbC road Abc colony Karachi','Active');
Insert into Transition values('680,000','20,000','500,000','250,000','160,000');
Insert into History values(5,1,'12-06-2021','8:00 PM','RP04',1);
Insert into AdminSetup values ('Fahad Yahya','Fahad123','12-03-2021');
Insert into Banquet values ('Delegent Banquet',1,'200 to 1000','8:00 PM','680,000',0,4.5,1,1,1);
Insert into Images values(4,'Red carp','Banquet.jpeg');
Insert into Comments values('Comment 1','Good','02-04-2020','Good');
Insert into Banquet_Owner values ('Banq123','Delegent Banquet','Mr.Saqib','03xxxxxxxxx','ABC road Xyz society','Karachi','Co-ordinates',1,'2002');
Insert into Search_cookie values(1,'2-06-2018','We give good service for birthday');


Insert into Comments values('Comment 1','Good','02-04-2020','Good',5);

Insert into User_Detail values ('MFY','12345','03xxxxxxxxx','AbC road Abc colony Karachi','Active');


Insert into Has_Tag values ('Benquet','255')

alter table Banquet
	add Address_ varchar(200) 

update Images set Src = './Image/2020-01-05.jpg' 