-- 1. Creating database
create database com2012_SD20305;
use com2012_SD20305;

-- 2. Creating table
create table students(
	id int primary key,
	fullName nvarchar(50)
);

-- drop table
drop table students;

-- alter table
alter table students
add email nvarchar(50) not null;

alter table students
add phone nvarchar(10) not null;

-- rename table
exec sp_rename students, sinhViens;
exec sp_rename sinhViens, students;

-- 3. Insert into
-- single row
insert into students(id, fullName, email, phone)
values(1, 'student 1', 'email 1', 'phone 1');

-- multiple rows
insert into students(id, fullName, email, phone)
values
	(2, 'student 2', 'email 2', 'phone 2'),
	(3, 'student 3', 'email 3', 'phone 3'),
	(4, 'student 4', 'email 4', 'phone 4');

---------------Data Manipulation--------------------
-- 1. SELECT
SELECT TOP 5
	first_name AS ten,
	last_name,
	email
FROM sales.customers;

-- 1.1 WHERE
SELECT
	*
FROM sales.customers
WHERE
	state = 'CA';

--
SELECT
	*
FROM sales.customers
WHERE
	state = 'CA' AND phone IS NOT NULL AND city='San Diego';

-- ORDER BY
SELECT
	*
FROM sales.customers
WHERE
	state = 'CA' AND phone IS NOT NULL AND city='San Diego'
ORDER BY first_name DESC; --ASC (default), DESC