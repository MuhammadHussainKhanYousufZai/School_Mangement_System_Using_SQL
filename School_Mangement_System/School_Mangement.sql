--Create Database:
create database	School_Mangement_System;

--Use database 
use School_Mangement_System;

--create table in database 
create table Student
(
student_id int primary key,
student_roll nvarchar(20) not null,
student_name nvarchar(40),
student_email nvarchar(30), 
student_password nvarchar(20) 
);

create table Courses
(
course_code int primary key,
course_name nvarchar(20) not null,
course_description nvarchar(40),
course_start nvarchar(30), 
course_end nvarchar(20) 
);

create table Grades
(
student_id int foreign key REFERENCES Student(student_id),
course_code int foreign key REFERENCES Courses(course_code),
grade_score decimal(20) 
);

create table Classes
(
class_id int primary key,
course_code int foreign key REFERENCES Courses(course_code),
class_description nvarchar(40),
class_start nvarchar(30), 
class_end nvarchar(20) 
);

create table Attendance
(
class_id int foreign key REFERENCES Classes(class_id),
student_id int foreign key REFERENCES Student(student_id),
grade_score decimal(20) 
);


--Open and check what is in database
select * from Student;
select * from Classes;
select * from Courses;
select * from Grades;
select * from Attendance;


