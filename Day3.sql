create database day3
use day3

create table batch2
(
bid int, 
bname varchar(20),
bdesignation varchar(20),
bsalary money
)   

insert into batch2 values (1,'sathish','develpoer',30000)
insert into batch2 values (2,'yuvaraj','back-end',35000)
insert into batch2 values (3,'kiruthi','develpoer',40000)
insert into batch2 values (4,'geetha','designer',50000)
insert into batch2 values (5,'mufeeth','BA',28000)
insert into batch2 values (6,'sridhar','ux',32000)
insert into batch2 values (7,'veer','ux',32000)


-- aggregate fn - avg,min,max,sum,count 

select avg(bsalary) as 'Average Salary' from batch2
select min(bsalary) as 'minimum Salary' from batch2
select max(bsalary) as 'maximum Salary' from batch2
select count(bsalary) as 'count Salary' from batch2
select sum(bsalary) as 'sum Salary' from batch2


-- group by clause 

select avg(bsalary) as 'average salary', bdesignation from batch2 group by bdesignation
select avg(bsalary) as 'average salary', bdesignation from batch2 group by bdesignation having bdesignation = 'develpoer' 

-- order by clause 
select * from batch2 order by bsalary 

select * from batch2 order by bsalary desc 

select * from batch2 order by bdesignation  

select * from batch2 order by bdesignation  desc 

select * from batch2 order by bsalary desc, bdesignation desc 

--synonym 
create synonym bc for batch2 
select * from bc

--drop synonym 
drop synonym if exists bc  

select * from batch2

--joins 

--types inner,left,right,full,self,cross 

--create 3 tables 
create table students
(
sid int primary key,
sname varchar(20) not null, 
sdept varchar(20) not null,
sclub varchar(20) not null
) 


create table sdept
(
did int primary key, 
deptname varchar(20) not null,
)

create table sclub
(
cid int primary key, 
clubname varchar(20) not null,
) 

select * from students
select * from sdept 
select * from sclub 

--inner join for students & sdept table 

select sid,sname,sdept,deptname from students inner join sdept on sdept = did 

select s.sid,s.sname,s.sdept,d.deptname from students as s inner join sdept as d on s.sdept = d.did  
	
-- inner join for students, sdept table & sclub  

select s.sid,s.sname,s.sdept,d.deptname, c.clubname,s.sclub from students as s inner join sdept as d on s.sdept =d.did inner join sclub as c on s.sclub=c.cid

--left,right,full join 

select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s inner join sdept as d on s.sdept=d.did
select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s left join sdept as d on s.sdept=d.did
select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s right join sdept as d on s.sdept=d.did 
select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s full join sdept as d on s.sdept=d.did 

select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s left join sdept as d on s.sdept=d.did full join sclub as c on s.sclub=c.cid


--identity 

create table sample
(
id int primary key identity(1,1),
name varchar(20)
) 
insert into sample values('satz') 
insert into sample values('yuvi') 
insert into sample values('kiruthi') 

select * from sample

--sequences 

--create sequences 

create sequence empid  as int start with 1 increment by 5 
create table sample1
(
id int primary key,
name varchar(20)
)

insert into sample1 values(NEXT VALUE FOR empid,'satz')
insert into sample1 values(NEXT VALUE FOR EMPID,'yuvi')
insert into sample1 values(NEXT VALUE FOR EMPID,'kiruthi')

select * from sample1 

--alter sequence 
alter  sequence  empid restart with 1 increment by 1 
create table sample2
(
id int primary key,
name varchar(20)
)

insert into sample2 values(NEXT VALUE FOR empid,'satz')
insert into sample2 values(NEXT VALUE FOR empid,'yuvi')
insert into sample2 values(NEXT VALUE FOR empid,'kiruthi')
  
select * from sample2 

-- check the  current sequence value 
select next value for empid 

--views -virtual tables  -simple (one table) and complex(one or more table)
--simple view 

select * from students

create view sports
as
select * from students where sclub=200 

select * from sports 

--complex view 
create view students_dept
as
select s.sid,s.sname,s.sclub,s.sdept,d.deptname from students as s inner join sdept as d on s.sdept=d.did

select * from students_dept

  