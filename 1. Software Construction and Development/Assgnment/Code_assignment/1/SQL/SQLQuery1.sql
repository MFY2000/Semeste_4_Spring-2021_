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

insert into Contact values('CDNSAK','ESFA','MYYSNH','MANAGER','4568 Str USA','Berlian',75331,'0300-8855554','ADC','USA','0322-521545');

UPDATE Contact SET 
Company_Name = 'txtCName.Text ',
Contact_Name = 'txtName.Text',
Contact_Title = 'txtCtitle.Text',
Address = 'txtAddress.Text',
City = 'txtCity.Text ',
Postal_Code = 'txtPostal.Text',
Phone = 'txtPhone.Text',
Region = 'txtRegion.Text',
Country = 'txtCountry.Text',
Fax = ' txtFax.Text'

WHERE Id = 'txtID.Text';


insert into Contact values('txtID.Text ',
'txtCName.Text ','
txtName.Text ','
txtCtitle.Text ','
txtAddress.Text ','
txtCity.Text ',
45645,'
txtPhone.Text ','
txtRegion.Text ','
txtCountry.Text ','
txtFax.Text');


DELETE FROM Contact WHERE ID = 'CDNSAK'

select * from Contact;

drop table Contact;
