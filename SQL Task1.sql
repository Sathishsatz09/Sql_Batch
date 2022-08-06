create database sqltask1
use sqltask1

-- creating the table
CREATE TABLE Workers (
	WORKER_ID INT NOT NULL,
	FIRST_NAME varchar(25),
	LAST_NAME varchar(25),
	SALARY money,
	JOINING_DATE DATETIME,
	DEPARTMENT varchar(25)
);  

--inserting the data in the table 

INSERT INTO Workers VALUES(001, 'Monika', 'Arora', 100000, '06-08-2022 10:38:00', 'HR')
INSERT INTO Workers VALUES(002, 'Niharika', 'Verma', 80000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Workers VALUES(003, 'Vishal', 'Singhal', 300000, '06-08-2022 10:38:00', 'HR')
INSERT INTO Workers VALUES(004, 'Amitabh', 'Singh', 500000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Workers VALUES(005, 'Vivek', 'Bhati', 500000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Workers VALUES(006, 'Vipul', 'Diwan', 200000, '06-08-2022 10:38:00', 'Account')
INSERT INTO Workers VALUES(007, 'Satish', 'Kumar', 75000, '06-08-2022 10:38:00', 'Account')
INSERT INTO Workers VALUES(008, 'Geetika', 'Chauhan', 90000, '06-08-2022 10:38:00', 'Admin')

--questsion1
Select FIRST_NAME AS WORKER_NAME from Workers 

select * from Workers 

--question2
select UPPER(FIRST_NAME) from Workers 

select * from Workers 

-- question3
select distinct DEPARTMENT from Workers 

select * from Workers 

--question 4
select substring(FIRST_NAME,1,3) from Workers  

select * from Workers  

--question5
SELECT DISTINCT LEN(DEPARTMENT) FROM Workers

select * from Workers   

--question6
select CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM Workers

select * from Workers   

--question7
select * from Workers where FIRST_NAME in('vipul','satish')

select * from Workers   

--question8
select * from Workers where DEPARTMENT like'admin%'

select * from Workers   

--question 9
select * from Workers where FIRST_NAME like'%a'

select * from Workers   

--question 10
select * from Workers where FIRST_NAME like'%a%' 

select * from Workers   









