-- create database lms;
-- use lms;

create table login(
userId varchar(100) primary key,
mailId varchar(50),
phoneNo varchar(10),
password varchar(15),
CONSTRAINT passchk CHECK (length(password)>=8 and password!=NULL)
);

create table learner(
enrolled_course varchar(100),
completetion_percentage int,
user_ID varchar(100) primary key,
FOREIGN KEY(user_ID) references login(userId)
);

CREATE table instructor(
instructor_name varchar(15) not null,
instructor_id varchar(10) primary key
);

create table courses(
course_description varchar(200),
course_id varchar(20) primary key,
course_name varchar(20),
course_instructor_name varchar(15) not null,
course_duration varchar(30),
foreign key(course_instructor_name) references instructor(instructor_name)
);

insert into login values('AP20110010687','gauthamsai_penubothu@srmap.edu.in','8919379690','Gssp4167');
insert into login values('AP20110010690','saipadala_saket@srmap.edu.in','7397243120','Saket_11');
insert into login values('AP20110010681','phaneendra_chandu@srmap.edu.in','8886889466','Phani681');
insert into login values('AP20110010653','sudeepram_vuyyala@srmap.edu.in','9618629138','Sudeep653');
insert into login values('AP20110010692','jayanthsai_vinnakota@srmap.edu.in','8074003667','Jayanth692');

insert into learner values('Database Management System',100,'AP20110010687');
insert into learner values('Artificial Intelligence',95,'AP20110010690');
insert into learner values('Java Programming',90,'AP20110010681');
insert into learner values('Data Structures And Algorithms using C++',65,'AP20110010653');
insert into learner values('Python Programming',75,'AP20110010692');


insert into instructor values('Dr.Priyanka','P001');
insert into instructor values('Dr.Shubankar','P002');
insert into instructor values('Dr.Mahesh','P003');
insert into instructor values('Dr.Ragunathan','P004');
insert into instructor values('Dr.Shubham','P005');

insert into courses values('Master DBMS from scratch','CSE304','MYSQL','Dr.Priyanka','90 days');
insert into courses values('Explore new era of Artificial Intelligence','CSE414','Prolog','Dr.Shubankar','90 days');
insert into courses values('Become a Java Developer','CSE206','Java','Dr.Mahesh','120 days');
insert into courses values('Master DSA and level up','CSE204','C++','Dr.Ragunathan','180 days');
insert into courses values('Become a Full Stack Python Developer','CSE203','Python','Dr.Shubham','120 days');
insert into courses values('Learn Advanced DBMS','CSE312','MySQL','Dr.Priyanka','90 days');


CREATE VIEW id as SELECT userId,mailId FROM login where userId='AP20110010687';
CREATE OR REPLACE VIEW id AS SELECT userId,mailId from login;

CREATE VIEW Priyanka_teaches as select course_description,course_name,course_instructor_name,course_duration FROM courses where course_instructor_name='Dr.Priyanka';
-- CREATE INDEX instructor_name_idx ON instructor (instructor_name);
SELECT * FROM login;
SELECT * FROM learner;
SELECT * FROM instructor;
SELECT * FROM courses;
SELECT * FROM id;
SELECT * FROM Priyanka_teaches;