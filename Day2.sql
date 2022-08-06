create database day2 
use day2 

create table employee
(
eid int primary key,
ename varchar(20) not null,
edesignation varchar(20) not null
)
insert into employee(eid,ename,edesignation) values (5,'yuvaraj','back-end') 

insert into employee (eid,ename,edesignation) values (6,'geetha','back-end') 

--alter table employee add constraint 


select * from employee 



create table voting(
id int primary key,
name varchar(20) not null,
dob datetime not null check (dob <= current_timestamp),
age int not null check(age>=18),
designation varchar(25) default 'self-employed'
)

insert into voting values(1,'sathish','2000-01-07 12:12',22,'UI engineer') 
insert into voting values(2,'keerthi','2000-01-07 12:12:12',21,'UI engineer') 
insert into voting values(3,'yuvaraj','2000-01-07 12:12:12',22,'UX engineer') 
insert into voting values(4,'geetha','2000-01-07 12:12:12',22,'Ux engineer')  

insert into voting (id, name, dob, age, designation) values (5,'mufeeth','2000-01-07 12:12:12',22,'Ux engineer')


select * from voting   

--creating table for department

create table department(
deptid int primary key,
deptname varchar(20) not null
) 

--inserting data in the table 

insert into department values(1,'developer')
insert into department values(2,'admin')
insert into department values(3,'tester')
insert into department values(4,'manager')

select * from department  


-- creating the table for the employee 
create table employ(
empid int primary key,
empname varchar(20) not null, 
salary money, 
empnumber int foreign key references department(deptid)
)  

-- inserting the data in  the table 
insert into employ (empid,empname,salary,empnumber) values 
(1,'sathish',25000,2),
(2,'keerthi',35000,4),
(3,'yuvaraj',30000,1),
(4,'geetha',40000,3) 
insert into employ values (5,'mufeeth',23000,4)



select * from employ 

-- creating the new parent table 

create table parent
(
pid int primary key, 
pname varchar(20) not null,
) 

insert into parent (pid,pname) values (1,'sathish'),
(2,'yuvaraj'),
(3,'tahir'),
(4,'geetha'),
(5,'keerthi')


select * from parent 


create table child
(
cid int primary key, 
cname varchar(20) not null,
cno int foreign key references parent(pid)
)  


-- inserting the data in the table
insert into child values (100,'child1',1)
insert into child values (101,'child2',2)
insert into child values (102,'child3',3) 

-- delete and update records in the parent table 

update parent set pid=4 where pid=1 

select * from parent


select * from child 