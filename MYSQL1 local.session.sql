drop database if exists college;
create database college;
use college;
drop table if exists students;
create table students( 
    id int primary key,
    name varchar(50) not null,
    age int
);

insert into students
values
(1,'sabih',27),
(2,'omar',30),
(3,'hamza',23),
(4,'saba',18),
(5,'iqra',22);

select * from students;
drop table  Department;
create table Department(
    id int primary key,
   students_id int,
    name varchar(50),
    foreign key (students_id) references students(id)
);
insert into Department 
values
(101,1,'cs'),
(102,2,'math'),
(103, 3,'biology'),
(104,4,'english'),
(105 ,5, 'urdu');
select * from Department;