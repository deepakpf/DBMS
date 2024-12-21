create database faculty;  
use faculty;

drop table if exists professor;

create table professor	  
(
    ProfessorID int, 
    FullName varchar(50),						
    Contact bigint,
    Address varchar(100), 
    Expertise varchar(40),
    Income int
);

alter table professor add FacultyID int;   

alter table professor drop column Income;	

-- Inserting Value into Table 

insert into professor values (101, 'Nisha', 984, 'Lalitpur', 'AI', 70000);

insert into professor values (102, 'Manish', 985, 'Chabahil', 'ML', 80000);

insert into professor values (103, 'Ramesh', 986, 'Kirtipur', 'DBMS', 90000);

truncate table professor;	

delete from professor where FullName = 'Manish'; 

update professor set Address = 'Patan' where Address = 'Chabahil';

select * from professor;