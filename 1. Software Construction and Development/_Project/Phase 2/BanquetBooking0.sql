Create Database SCD;

use SCD;

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
BookingID int Not Null,
Price varchar(30) Not Null,
GST varchar(11) Not Null,
Charge varchar(100) Not Null,
Advance varchar(30) Not Null, 
OtherCharges varchar(30) Not Null,
);

Create table History(
O_ID int Not Null,
B_ID varchar(50) Not Null,
U_ID varchar(50) Not Null,
Date varchar(11) Not Null,
Time  varchar(100) Not Null,
ReportID varchar(30) Not Null,
TransitionID varchar(20) Not Null
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
CommentID int Not Null,
);

Create table Images(
ImageID int Not Null,
ID varchar(30) Not Null,
Alt varchar (11) Not Null,
Src varchar (100) Not Null
);

Create table Comments(
CommentID int Not Null,
Name varchar(30) Not Null,
Comments varchar(11) Not Null,
Date varchar (100) Not Null
);