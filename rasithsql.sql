
-- THIS IS SQL QUERY FOR BEGINNERS.. --
-- --create database--
 
 create database first;
 
--  using database

 use first;
 
--  create table on that database

 create table first (
    emp_id int PRIMARY KEY,
    Ename varchar(30),
    jobdesc varchar(20),
    salary int
);

-- Insert data into the 'first' table
insert into first values
(1, 'ram', 'ADMIN', 1000000),
(2, 'harini', 'MANAGER', 250000),
(3, 'george', 'SALES', 2000000),
(4, 'ramya', 'SALES', 2000000),
(5, 'meena', 'HR', 2000000),
(6, 'ashok', 'MANAGER', 2000000),
(7, 'abdul', 'HR', 2000000),
(8, 'ramya', 'ENGINEER', 2000000),
(9, 'raghu', 'CEO', 2000000),
(10, 'arvind', 'MANAGER', 2000000),
(11, 'akshay', 'ENGINEER', 2000000),
(12, 'john', 'ADMIN', 2000000),
(13, 'abinaya', 'ENGINEER', 2000000);

-- print whole database

select *from first;

-- using condition equal to

select * from first
where Ename="ramya";

-- using condition extract particular colum

select jobdesc,ename from first
where Ename="ramya";

-- extract using colum value

select * from first
where jobdesc="MANAGER";

-- using multiple values

select * from first
where jobdesc in ("manager","ADMIN");

-- using AND operation to perform something

select jobdesc,ename from first
where Ename="ramya" AND jobdesc="SALES";

 
