	use Portfolio_maker
	--Views
	
	Create view Admininfo
	as
	Select username  'Name', user_id  'ID',
	user_pass  'Pass',Lkey  'Liscence Key' 
	from admin_users;
	Create view AboutInfo
	as
	Select user_id 'ID',dob,heading 'Heading',
	subheading 'Sub Heading',shortdesc'Short Description',longdesc'Long Description',website'Website' 
	from aboutus_setup;
	Create view BasicInfo
	as
	Select user_id 'ID',LKey 'Liscence Key',title 'Job title',
	description 'Job Description',keyword'Experties',
	icon 'Avatar Icon',Theme'Theme' from basic_setup;
	Create view ThemeSelection
	as
	Select Theme,
	Location 'Theme Location',Customize
	from Theme
	Create view UserContact
	 as
	 Select user_id'ID',Cid'Contact ID',cname'Name',
	 cemail'Email',csubject 'Subject',
	 cmessage'Message' from contact
	Create view UserInfo
	as
	Select user_id'ID',profilepic'Profile_Pic',name'Name',
	homewallpaper'Wallpaper',professions'Profession',
	location 'Adress',mobile'Contact No',emailuser'Email'
	from personal_setup
	Create view LinkDetails
	as
	Select user_id 'ID',Name 'Social_Networks',
	Link'URL' from Link_setup
	Create view ProjectInfo
	as
	Select user_id 'ID',projectname'Project Name',projectpic 'Pics of project'
	,projectlink 'Link of project',projectdesc'Description' from ProjectDetail
	Create view WorkingExperience
	as
	Select user_id'ID',category'Categrory',title'Job Title',year'Working Since',
	ogname 'Organization Name',workdesc 'Working Description' from Experience
	Create view JobSkills
	as
	Select user_id'ID',skill 'Skills',
	score 'Points' from skills

--
	Create view LisceneceDetail
	as
	Select user_id'ID',LKey'Liscence Key',ExpireDate'Validity',
	IssueDate 'Issue Date',LStatus 'Liscenece Status' from Licence
	Create view OwnerInfo
	as
	Select AdminID,AdminPass,NewRequest'Request Recieved',
	Number'Contact No',UserName,Email
	from Owner_Setup
	Create view Request
	as
	Select AdminID,NewRequest'Request Recieved',
	Request'Send Request' from Request_Manager

	drop view LinkDetails;

	Create view Request
	as
	Select d1.Profile_Pic,d1.Wallpaper,d1.Name,d1.Profession,
			d2.Social_Networks,d2.URL,
			d3.[Short Description],d3.Heading,d3.[Sub Heading],d3.dob,d1.Email,d1.[Contact No],d3.[Long Description],
			d4.ID,d4.Skills,d4.Points,
			d5.[Job Title],d5.[Organization Name] ,d5.[Working Since] ,d5.[Working Description],d5.Categrory,
			d6.[Link of project],d6.[Pics of project],d6.Description,d6.[Project Name]
	from UserInfo d1, LinkDetails d2, AboutInfo d3, JobSkills d4, WorkingExperience d5, ProjectInfo d6
		where d1.ID = d2.ID and d1.ID = d3.ID and d1.ID = d4.ID and d1.ID = d5.ID and d1.ID = d6.ID;