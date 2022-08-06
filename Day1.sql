create database sqlbatch  

create table batch
( 
empid int,
empname varchar(15),
empdesignation varchar(15)
) 
--select * from batch  

insert into batch values(1,'sathish','UI',8789437243,907856) 
insert into batch values(2,'yuvaraj','Back-end',8789437243,898325) 

--update statement
update batch set empdesignation='designer' where empid = 3 

--delete statement 
delete from batch where empid = 1

-- alter table to add a column 
alter table batch add empmobile varchar(10)   

--update empmoblie
update batch set empmobile= 8995834534 
alter table batch drop column mobile 
alter table batch add mobile varchar(10)  

insert into batch values(3,'kishore','designer',8789275827,678256) 

--truncate table
truncate table batch 
select empid,empname,empdesignation from batch 
update batch set empdesignation = 'Back-end' 
update batch set empname = 'keerthi' where empid = 4  
update batch set salary = '8458799'

alter table batch add salary varchar(10)  

delete from batch where empname = 'keerthi' 

update batch set salary =20000 where empid = 4
update batch set salary =30000 where empid = 1 
update batch set salary =40000 where empid = 2

select * from batch  where empname = 'sathish' collate  

--ALTER TABLE batch RENAME COLUMN empmobile TO emphone; 


--ALTER TABLE batch RENAME COLUMN empmobile  TO emphone; 
update batch set salary =20000 where empid = 1 


--relational operator 

select * from batch where salary > 20000
select * from batch where salary < 20000
select * from batch where salary <= 20000 

select * from batch where salary > 20000 and empdesignation = 'ui' 
select * from batch where salary > 20000 or empdesignation = 'designer' 

--between AND 

select * from batch where salary between 20000 and 40000 
select * from batch where salary between 21000 and 40000 


-- IN/ NOT IN  
select * from batch where empid in (1,3,5) 
select * from batch where empid not in (1,3,5) 

--like 

select * from batch where empname like 's%'
select * from batch where empname like '_e%' 
select * from batch where empname like '%i'
select * from batch where empname like 's%'
select * from batch where empname like 's_%' 
select * from batch where empname not like 's_%' 

select * from batch where empname like 's%' 
select * from batch where empname like '[sk]%'
select * from batch where empname not like '[sk]%'

select * from batch where empname like '[a-t]%' 
select * from batch where empname not like '[a-t]%' 

select * from batch where empname not like '[a-t]%'

-- distinct avoid duplicate records 

Select empdesignation from batch  
Select empname from batch 
select distinct  empdesignation from batch


select * from batch 