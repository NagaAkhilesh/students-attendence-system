create schema attendence_system;
use attendence_system;
create table students(
student_id int primary key  unique,
student_name varchar(100) not null ,
student_year int check(student_year>0)  ,
Branch varchar(20) default 'AIDS',
Section varchar(10) default 'A' ,
Phone varchar(10) not null,
Email varchar(100)
);
select * from students ;
create table subjects(
subjects_id int primary key ,
subjects_name varchar(50) not null ,
faculty_name varchar(100)
);
alter table subjects rename column  subjects_id to subject_id;
alter table subjects rename column  subjects_name to subject_name;
select * from subjects ;
create table attendence (
attendence_id int primary key auto_increment,
student_id int ,
subject_id int ,
attendence_date date ,
foreign key (student_id) references students(student_id),
foreign key (subject_id) references subjects(subject_id)
);
select * from attendence;
INSERT INTO students VALUES
(101, 'Akhil',2, 'CSE', 'A', '9876543210', 'akhil@gmail.com'),
(102, 'Ravi',3, 'CSE', 'A', '9876543211', 'ravi@gmail.com'),
(103, 'Sai', 2,'CSE', 'A', '9876543212', 'sai@gmail.com'),
(104, 'Kiran',3, 'ECE', 'B', '9876543213', 'kiran@gmail.com'),
(105, 'Manoj',4, 'ECE', 'B', '9876543214', 'manoj@gmail.com');
INSERT INTO subjects VALUES
(1, 'DBMS', 'Ramesh'),
(2, 'Python', 'Suresh'),
(3, 'Java', 'Mahesh');
alter table attendence add status varchar(20);
desc attendence;
INSERT INTO attendence
(student_id, subject_id, attendence_date, status)
VALUES
(101,1,'2026-05-18','Present'),
(102,1,'2026-05-18','Absent'),
(103,1,'2026-05-18','Present'),
(104,2,'2026-05-18','Present'),
(105,3,'2026-05-18','Absent');


