CREATE TABLE tasks (
	_id varchar(100) NOT NULL PRIMARY KEY,
	name varchar(250) NOT NULL,
	duration INT NOT NULL,
	project_id varchar(100) NOT NULL,
	description varchar(100) NOT NULL,
	user_id varchar(100) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	isDeleted BIT NOT NULL,
	isCompleted BIT NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects (_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (user_id) REFERENCES users (_id) ON DELETE NO ACTION ON UPDATE NO ACTION
)

