THIS IS SQL QUERY FOR BEGINNERS... --

-- --create database--
 
 create database first;
 
--  using database

 use first;
 
--  create table on that database

 create table first (
    emp_id int PRIMARY KEY,
    Ename varchar(30),
    jobdesc varchar(20),
    salary int);

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

SELECT *FROM first
WHERE Ename = 'ramya';
    

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

-- not in is used to check the not equal to condition

select *from first
where ename not in ("ramya");

-- this below condition we check between values

select * from first
where salary between 250000 and 2000000;

-- we set limit for result

select * from first
limit 5;
-- ----------------------------------------------------------------- --
-- LIKE is key word is used to find character in given data
-- wildcard %(zero or more chracter ) , _(one chracter)
-- ----------------------------------------------------------------- --
-- start from A end with any chr
select *from first
where ename like 'a%';

-- start with A end with A
select *from first
where ename like 'a%a';

-- this below is we search letter in between
select *from first
where ename like '__i%';

-- to update some thing in particular column use UPDATE keyword WHERE is mandatory to put to select a particular condition--
update first
set jobdesc="ANALYST"
WHERE jobdesc="ENGINEER";
-- to delete a particular data in database

delete from first
 where ename="john";
 
 -- you need to check a data in particular column use this below query and the "distinct" does't allow the reapeted value in column --
 select distinct jobdesc
 from first; 
 
 -- the order by is use sort the data wecan use sort like alphabet,asc,desc,and we can use WHERE use condition --
 select *from first
 where ename="ramya"
 order by jobdesc;
 
 -- when we need to give preference to particular data using below query --
 select *from first
 order by ( case jobdesc
 when 'ceo' then 1
 when 'manager' then 2
 when 'hr' then 3
 when 'sales' then 4
 else 5 end);
 
 select count(*) Total  from first;
 -- the count is use to count the number of column --2
 
 
 -- it also applicable in where condition --
 
 select count(*) total_ from first
 where ename="ramya";
 
 -- ------------------------------------------------------------------------------ --
 -- when we move on to the function --
 -- ------------------------------------------------------------------------------ --
 -- "SUM" func is used find sum data for user given base input --
 select sum(salary) from first
 where jobdesc="admin";
 
  -- "AVG" func is used find average data for user given base input --
 select avg(salary) from first
 where jobdesc="admin";
 
 -- string function--
 
 -- UCASE is means upper case of string --
 select ucase(ename) ename,jobdesc from first;
 
 -- CHAR_LENGTH is used count the character in the string --
 
 select distinct ename,char_length(ename) from first
 where ename="ramya";
 
 -- CONCAT, is used add string --
 select ename,concat('Rs.',salary) from first;
 
 -- FORMAT is used format the group of digit ex= 10,000,0 --
 
  select ename,concat('Rs.',format(salary,0)) from first;
  
  -- ----------------------------------------------------------------------------- --
 -- then we see about the date and  in sql  input format=(year-mon-date)
  -- ----------------------------------------------------------------------------- --
alter table first add column hire_date date;
update first
set hire_date="2005-06-05";
select*from first;

-- need to change particular date in using where condition  --
update first
set hire_date="2005-08-05"
where jobdesc="admin" ;
select*from first;

-- we see some function in date and time --
select now(); -- It show the current date and time --
select time(now()); -- It show the particular data for our own requirment --
-- curdate() it means shoe current date only --
select date_format(curdate(),"%d/%m/%Y") date; -- the date_format is used to format the date for user requirement --


-- ------------------------------------------------------------------------------- --
-- Then we see about GROUP BY and HAVING
-- ------------------------------------------------------------------------------- --  
 
 select jobdesc,avg(salary) total from first
  where jobdesc="admin"
 group by jobdesc;
 
 -- group by is used to group the data --
 
 select jobdesc,count(emp_id) from first
 group by jobdesc
 having count(emp_id)>1
 order by jobdesc;
  
  -- it used count the total no of data using employee id --
  -- having is one form of where but it help to apply the condition in group by --
  
  
  -- when wee create new database for constriants --
  create database second;
  use second;
  create table second(
  emp_id int primary key auto_increment,
  ename varchar(30) not null,
  jobdesc varchar(10) default 'unassigned',
  salary int,
  pan varchar(20) unique);
-- insert into second values
-- (1, 'ram', 'ADMIN', 1000000),
-- (2, 'harini', 'MANAGER', 250000),
-- (3, 'george', 'SALES', 2000000),
-- (4, 'ramya', 'SALES', 2000000),
-- (5, 'meena', 'HR', 2000000),
-- (6, 'ashok', 'MANAGER', 2000000),
-- (7, 'abdul', 'HR', 2000000),
-- (8, 'ramya', 'ENGINEER', 2000000),
-- (9, 'raghu', 'CEO', 2000000),
-- (10, 'arvind', 'MANAGER', 2000000),
-- (11, 'akshay', 'ENGINEER', 2000000),
-- (12, 'john', 'ADMIN', 2000000),
-- (13, 'abinaya', 'ENGINEER', 2000000);
insert into second(ename,salary)values("Ramya",1000000);
select*from first;
drop table first;
use first;
create table branch(
branchid int primary key ,
br_name varchar(30),
addr varchar(30));
select*from branch;
insert into branch values
(1,"BMW","6,adayar chennai"),
(2,"BENZ","6,nagar chennai"),
(3,"FERRARI","6,vela chennai");
alter table first
add column Branch varchar(10);
show index from first;

















 
