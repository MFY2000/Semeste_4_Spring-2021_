
use [Portfolio_maker];

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
	REFERENCES Owner_Setup (AdminID);



-- ALTER TABLE Request_Manager
-- 	ADD CONSTRAINT Request_ManagerFK
-- 	FOREIGN KEY (AdminID)
-- 	REFERENCES Owner_Setup (AdminID);
