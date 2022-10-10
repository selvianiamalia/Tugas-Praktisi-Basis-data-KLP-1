create database db_praktisiSisfo;
use db_praktisiSisfo;

-- DDL-- 
create table students (
student_id int not null auto_increment,
`full name` varchar (255) not null, 
address varchar (255) not null, 
major varchar (100) not null,
primary key (student_id)
);
#desc students;

create table courses (
course_id int not null auto_increment,
name varchar (255) not null,
duration int not null,
primary key (course_id)
); 
#desc courses;

create table schedule (
schedule_id int not null auto_increment,
student_id int not null,
course_id int not null,
date date not null,
time timestamp not null,
primary key (schedule_id),
foreign key (student_id) references students (student_id),
foreign key (course_id) references courses (course_id)
);
#desc schedule;

--DML--
#masukkan data pada tabel students
INSERT INTO students (`full name`, address, major)
VALUE 
("Rendy Luis", "Jalan Sahabat", "Sistem Informasi"),
("Muh. Shofwan Siswandi", "Jalan Perintis", "Sistem Informasi"),
("Indah Kurnia Ilahi", "Jalan Sahabat", "Sistem Informasi"),
("Selviani Amalia Kartika", "Jalan Andi Tonro", "Sistem Informasi"),
("Andi Maghfirah Inzani S.", "BTP", "Sistem Informasi"),
("Nur Hikmah", "Jalan Sejati", "Sistem Informasi"),
("Martahan Mikhael Butar B.", "Aspol Perintis", "Sistem Informasi");
#select * from students;

INSERT INTO courses (name, duration)
VALUE 
("Struktur Data", 120),
("Pemrograman Web", 90),
("Struktur Diskrit", 90),
("Riset Teknologi", 150);
#select * from Courses;

insert into schedule (Student_id, course_id, date, time)
VALUE 
(1, 2, '2022-10-10', '2022-10-10 08:00:00'),
(2, 1, '2022-10-10', '2022-10-10 07:30:00'),
(3, 2, '2022-10-11', '2022-10-11 13:00:00'),
(4, 4, '2022-10-20', '2022-10-20 10:00:00'),
(5, 3, '2022-10-13', '2022-10-13 16:00:00'),
(6, 3, '2022-10-15', '2022-10-15 08:00:00'),
(7, 1, '2022-10-19', '2022-10-19 08:00:00');
#select * from schedule;

update students
set `full name`="Andi Maghfirah Inzani"
where Student_id="5";

UPDATE courses
SET `duration` = "60"
WHERE course_id = 4;

select St.student_id, Co.name, Sc. date, Sc.time
from students as St
inner join schedule as Sc
on St.student_id = Sc.student_id
inner join courses as Co
on Sc. course_id = Co.course_id;
