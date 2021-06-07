Create database BanquetBookingSystem;

use BanquetBookingSystem;

Create table Banquet_Owner(
Owner_id int Not Null,
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
UserID int Not Null,
UserName varchar(20) Not Null,
Pass varchar(16) Not Null,
ContactNumber varchar(11) Not Null,
Adress varchar(100) Not Null,
StatusofUser varchar(30) Not Null
);


Create table Transition (
TransitionID int Not Null,
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
AdminID int Not Null,
Name varchar(20) Not Null,
Pass varchar(16) Not Null,
LastSince varchar(100) Not Null,
);


Create table Banquet(
BanquetID int Not Null,
BanquetName varchar(50) Not Null,
Owner_id int Not Null,
Range varchar(100) Not Null,
Time varchar(30) Not Null,
Price varchar(20) Not Null,
Employee Bit Default 0 Not Null,
Rating int Not Null,
Status int Not Null,
ImageID int Not Null,
CommentID int Not Null,
);


Create table Images(
ImageID int Not Null,
ID int Not Null,
Alt varchar (11) Not Null,
Src varchar (100) Not Null
);

Create table Comments(
CommentID int Not Null,
Name varchar(30) Not Null,
Comments varchar(11) Not Null,
Date varchar(100) Not Null,
type varchar(10) Not Null,
);


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
Insert into Banquet_Owner values (01,'Banq123','Delegent Banquet','Mr.Saqib','03xxxxxxxxx',
'ABC road Xyz society','Karachi','Co-ordinates',1,'2002');

Select * from Banquet_Owner;

Insert into Search_cookie values(7,'2-06-2018','We give good service for birthday');

Select * from Search_cookie;

Insert into User_Detail values (7,'Jaffar Abbass','Jaffar123','03xxxxxxxxx','AbC road Abc colony Karachi','Active');

Select * from User_Detail;

Insert into Transition values(4,'680,000','20,000','500,000','250,000','160,000');

Select * from Transition;

Insert into History values(01,7,'12-06-2021','8:00 PM','RP04',4);

Select * from History;

Insert into AdminSetup values (08,'Fahad Yahya','Fahad123','12-03-2021');

Select * from AdminSetup;

Insert into Banquet values (4,'Delegent Banquet',01,'200 to 1000','8:00 PM','680,000',0,4.5,1,06,54);

Select * from Banquet;

Insert into Images values(06,4,'Red carp','Banquet.jpeg');

Select * from  Images;

Insert into Comments values(54,'Comment 1','Good','02-04-2020','Good');

Select * from Comments;