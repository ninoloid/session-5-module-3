SHOW DATABASES;

-- Create db name as purwadhika_student,
-- purwadhika_schedule, purwadhika_branch

CREATE DATABASE purwadhika_student;
CREATE DATABASE purwadhika_schedule;
CREATE DATABASE purwadhika_branch;

-- Show list of database with name contain purwadhika.

SHOW DATABASES LIKE '%purwadhika%';

-- Delete database purwadhika_schedule

DROP DATABASE purwadhika_schedule;

-- Create table name as Students in purwadhika_student db,
-- with field id, last_name, first_name, address, city.
-- The id field should be in integer type while the rest
-- is varchar.

USE purwadhika_student;

CREATE TABLE Students(
	id int not null auto_increment primary key,
	first_name varchar(25),
	last_name varchar(25),
	address varchar(100),
	city varchar(25)
);

-- Add email column into table Students with type varchar.

ALTER TABLE Students
ADD email varchar(50);

-- Add gender, batch_code, phone_number,
-- alternative_phone_number column in single query.

ALTER TABLE Students
ADD (
	gender varchar(20),
	batch_code varchar(10),
	phone_number varchar(16)
);

-- Change alternative_phone_number column name into
-- description with varchar type.

-- ALTER TABLE Students RENAME COLUMN phone_number TO alternative_phone_number;
ALTER TABLE Students CHANGE alternative_phone_number description varchar(18);

-- Remove column gender in table Students
ALTER TABLE Students DROP gender;
