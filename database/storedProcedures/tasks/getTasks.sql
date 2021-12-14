CREATE PROCEDURE [dbo].[getTasks]
 @project_id varchar(100)
as

set nocount on;

begin
	select	t._id,
			t.name,
			t.project_id,
			t.user_id,
			t.duration,
			t.start_date,
			t.end_date,
			t.description
	from	[tasks] t where project_id = @project_id;
end;


USE SystemUser
GO
select * from tasks
insert into tasks(_id, name,duration, project_id,description,user_id, start_date,end_date,isDeleted,isCompleted)
values('1','kahiga',10,'1', 'first project', 1, '1/12/2021', '2/12/2021','1',0),
      ('2','caleb',5,'1', 'first project plus one', 1, '1/12/2021', '2/12/2021','1',0),
	  ('3','janathan',8,'1', 'second project chally', 421, '30/11/2021', '10/12/2021','1','null'),
	  ('4','Dancan',10,'1', 'first project', 1, '1/12/2021', '2/12/2021','1','null'),
	  ('5','john',10,'1', 'first project', 1, '1/12/2021', '2/12/2021','1','null'),
	  ('6','lucky',10,'1', 'first project', 1, '1/12/2021', '2/12/2021','1','null')

