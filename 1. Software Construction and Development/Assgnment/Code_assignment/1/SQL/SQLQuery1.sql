create database Assignment;
use Assignment;


Create table Contact( 
ID varchar(10),
Company_Name nvarchar(50),
Contact_Name nvarchar(50),
Contact_Title nvarchar(50),
Address nvarchar(50),
City nvarchar(50),
Postal_Code int,
Phone nvarchar(50),
Region nvarchar(50),
Country nvarchar(50),
Fax nvarchar(50),
)


insert into Contact values(456,'WHE','Maria','','','','','','','','','');

drop table Contact;
