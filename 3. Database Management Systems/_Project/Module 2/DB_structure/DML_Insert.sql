use [Portfolio_maker];

--Insert data

INSERT INTO admin_users VALUES ('Ahmed','User07','Ahmed123',2572);

INSERT INTO aboutus_setup VALUES ('User07','dob123',
'About Us','Service we provide',
'We welcome you here to create your very own portfolio',
'We provide a lot of options so that you can create
your own protfolio which will help you to get a job
according to your skills and experience of work','www.FAportfolio.com');

Insert into basic_setup values('User07',2572,'Software Developer For Hire',
'I am a software developer with experience of 5 years in java & python','Developer','Avatar 3','Blue');

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