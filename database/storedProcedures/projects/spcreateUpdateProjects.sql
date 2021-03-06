USE SystemUser
GO
CREATE OR ALTER PROCEDURE [dbo].[createUpdateProjects]
	@id varchar(100),
	@name varchar(100),
	@lead_user_id varchar(100),
	@start_date date,
	@end_date date,
	@client_name varchar(250),
	@description varchar(250)
AS

BEGIN
    set nocount on;
    DECLARE @exists BIT;

    select @exists = count(_id) from dbo.projects where _id = @id;

    IF @exists = 0
        BEGIN
            INSERT INTO dbo.projects
            (_id, name, lead_user_id, start_date, end_date, client_name, description, isDeleted, isCompleted)
            VALUES
            (@id, @name, @lead_user_id, @start_date, @end_date, @client_name, @description, 0, 0);
        END
    ELSE
        BEGIN
            UPDATE dbo.projects
            SET
            name = @name,
            lead_user_id = @lead_user_id,
            start_date=@start_date,
            end_date=@end_date,
            client_name=@client_name,
            description=@description
        END
END;
GO