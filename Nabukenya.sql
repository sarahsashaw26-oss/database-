CREATE DATABASE University1;
 USE University;

 CREATE TABLE students1(
    student_id int Primary key,
    student_name varchar(110),
    gender varchar(10),
    programme varchar(50),
    year_of_study int,
    age int,
    marks int,
    town varchar(50)
   );

 INSERT INTO students1 VALUES
 (101, 'Sarah Nakato', 'Female', 'BSIT', 1, 19, 78, 'Mukono'),
 (102, 'John Kato', 'Male', 'DIT', 2, 22, 65, 'Kampala'),
 (103, 'Mary Achieng', 'Female', 'BSIT', 3, 24, 88, 'Jinja'),
(104, 'David Ouma', 'Male', 'BSE', 1, 20, 54, 'Mukono'),
(105, 'Peter Ssenyonga', 'Male', 'BSIT', 2, 23, 72, 'Kampala'),
(106, 'Grace Namusoke', 'Female', 'DIT', 1, 20, 91, 'Entebbe'),
(107, 'Brian Okello', 'Male', 'BSE', 3, 25, 47, 'Jinja'),
(108, 'Ruth Nakanwagi', 'Female', 'BSIT', 2, 21, 83, 'Mukono'),
(109, 'Samuel Mugisha', 'Male', 'DIT', 3, 24, 69, 'Kampala'),
(110, 'Esther Atim', 'Female', 'BSE', 1, 19, 76, 'Gulu');

SELECT * FROM students1;

DESC students1; 
select student_name, programme, marks from students1;

select * from students1 where programme = 'BSIT';

select student_name, marks from students1 where year_of_study = 2;
select student_name from students1;

select * from students1 where programme = 'BSIT';
select * from students1 where marks = 70;
select * from students1 where town = 'Mukono';
select * from students1 where gender = 'Female';

select * from students1 where programme = 'BSIT' and marks. 75;
select* from students1 where town= 'Mukono' or town= 'Kampala';
select * from students1 where gender = 'Female' and year_of_study=1;
select * from students1 where marks between 60 and 80;
select * from students1 where programme !='BSE';
select * from students1 where gender = 'Female' and programme = 'BSIT' and marks =80;
select * from students1 order by marks DESC;
select * from students1 order by marks ASC;
select * from students1 where programme = 'BSIT' order by marks DESC;

select * from students1 where gender = 'Female' and programme = 'BSIT' and marks >= 80;

select * from students1 where year_of_study = 2 and marks > 70;

select * from students1 where (town = 'Mukono' AND marks < 60) or (town = 'Jinja' AND marks > 80);

##### Most challenging is combining two different towns and marks conditions with Or requires careful parenthisis grouping so mysql evaluates each pair together and maybe forgetting quotes around text values like '' and ; at the end.

