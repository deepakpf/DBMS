create database college;
use college;
drop table if exists enrollment;

create table enrollment 
(
    ID int, 
    FullName varchar(100),
    ContactNo bigint,
    Residence varchar(100),
    Semester int
);

alter table enrollment add Batch int;

insert into enrollment values (101, 'Deepak', '9812', 'Bhaktapur', 19, 1);

insert into enrollment values (202, 'Sushant', '9823', 'Baneshwor', 22, 4);

alter table enrollment drop column Semester;

truncate table enrollment;

delete from enrollment where FullName = 'Sushant';

update enrollment set FullName = 'Nirajan' where FullName = 'Deepak';

select * from enrollment;