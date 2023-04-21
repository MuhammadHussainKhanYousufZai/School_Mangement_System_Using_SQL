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


TRUNCATE TABLE Student;
TRUNCATE TABLE Classes;
TRUNCATE TABLE Courses;
TRUNCATE TABLE Grades;
TRUNCATE TABLE Attendance;


delete Student where student_id in ('601','1','3','11','4');

--Insert the values in the Tables:

--Put Values in Student Table:
INSERT INTO Student (student_id, student_roll, student_name, student_email, student_password)
VALUES 
(001, 33 ,'Anders','anders994@gmail.com','030-0074321'),
(002, 23 ,'Hussain','hussain94@gmail.com','034-0074321'),
(031, 33 ,'Sabih','sabih19@gmail.com','030-05074321'),
(021, 88 ,'Mujtaba','mujtaba3334@gmail.com','03340-0074321'),
(301, 01 ,'Owais','ovi23@gmail.com','030-007455321'),
(221, 02 ,'Kashan','kashan99@gmail.com','030-00747321'),
(051, 07 ,'Zaka','zaka76@gmail.com','030-007437721'),
(041, 10 ,'Arsal','arsal69@gmail.com','030-00777774321'),
(441, 30 ,'Omaima','omaima78@gmail.com','030-0074777321'),
(101, 31 ,'Neha','neha90@gmail.com','030-002274321');

 --Put the values in Courses Table:
 INSERT INTO Courses(course_code, course_name, course_description, course_start, course_end)
VALUES 
(200301, 'Advance Python' ,'Programming','Feb','Dec'),
(200302, 'Advance SQL' ,'Programming','Jan','Dec'),
(200304, 'Advance Networking' ,'Programming','April','Dec'),
(200344, 'Advance BlockChain' ,'Programming','Feb','Sep'),
(200305, 'Advance Python' ,'Programming','Feb','Oct'),
(203076, 'Project Mangement' ,'Programming','Feb','Aug'),
(200325, ' Python' ,'Programming','Feb','Dec'),
(200441, 'Graphic Desg' ,'Programming','Feb','Dec'),
(200661, 'MS Office' ,'Programming','July','Dec'),
(200651, 'Advance Excel' ,'Programming','June','Dec');

 --Put the values in Grades Table:


INSERT INTO Grades(student_id, course_code)
SELECT Student.student_id, Courses.course_code
FROM Student
CROSS JOIN Courses; 


