
CREATE TRIGGER Histroy_log
ON AboutInfo
INSTEAD OF  DELETE, UPDATE
AS
BEGIN
    IF EXISTS(SELECT * FROM inserted)
	begin
		Exec InsetHistroy (SELECT i.ID,'UPD',CONCAT(i.dob,i.Heading,i.[Long Description],i.[Short Description],i.[Sub Heading],i.Website),
								CONCAT(b.dob,b.Heading,b.[Long Description],b.[Short Description],b.[Sub Heading],b.Website),GETDATE() FROM inserted i,AboutInfo b
								where i.ID = b.ID)
	end;
    else IF EXISTS(SELECT * FROM DELETED)
	begin

	
		Exec InsetHistroy (SELECT d.ID,'Delete',CONCAT(d.dob,d.Heading,d.[Long Description],d.[Short Description],d.[Sub Heading],d.Website),
								CONCAT(b.dob,b.Heading,b.[Long Description],b.[Short Description],b.[Sub Heading],b.Website),GETDATE() FROM deleted d,AboutInfo b
								where d.ID = b.ID);
	end;
END

