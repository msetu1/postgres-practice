CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dod DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students(first_name,last_name,age,grade,course,email,dod,blood_group,country) VALUES ('John','Doe',20,'A','Math','jon.do@gmail.com','2004-01-15','0+','USA'),
('Emily','Smith',19,'B','English','emily.smith@gmail.com','2005-03-22','A+','Canada'),
('Michael','Brown',21,'A','Physics','michael.b@gmail.com','2003-08-11','B+','UK'),
('Olivia','Johnson',18,'C','Biology','olivia.johnson@yahoo.com','2006-06-09','O-','Australia'),
('Daniel','Lee',22,'A','Chemistry','daniel.lee@hotmail.com','2002-12-03','AB+','USA'),
('Sophia','Davis',20,'B','History','sophia.davis@gmail.com','2004-07-19','B-','New Zealand'),
('William','Garcia',19,'A','Math','will.garcia@gmail.com','2005-02-28','A-','USA'),
('Ava','Martinez',21,'B','English','ava.martinez@yahoo.com','2003-10-05','O+','Mexico'),
('James','Rodriguez',18,'C','Physics','james.r@gmail.com','2006-04-14','AB-','Brazil'),
('Isabella','Lopez',22,'A','Biology','isa.lopez@gmail.com','2002-09-30','B+','Spain'),
('Benjamin','Gonzalez',20,'B','Chemistry','ben.g@gmail.com','2004-05-23','O+','Argentina'),
('Mia','Wilson',19,'A','History','mia.w@gmail.com','2005-11-17','A+','Canada'),
('Lucas','Anderson',21,'C','Math','lucas.a@gmail.com','2003-03-02','AB+','USA'),
('Charlotte','Thomas',18,'B','English','charlotte.t@gmail.com','2006-08-26','B+','Australia'),
('Henry','Taylor',20,'A','Physics','henry.taylor@yahoo.com','2004-12-12','O-','UK'),
('Amelia','Moore',19,'C','Biology','amelia.m@gmail.com','2005-06-18','O+','USA'),
('Alexander','Jackson',22,'B','Chemistry','alex.j@gmail.com','2002-11-09','B-','USA'),
('Evelyn','White',20,'A','History','evelyn.w@gmail.com','2004-01-04','A-','Canada'),
('Sebastian','Harris',21,'C','Math','seb.harris@gmail.com','2003-09-15','O+','Ireland'),
('Harper','Martin',18,'B','English','harper.martin@yahoo.com','2006-02-27','AB+','USA')

SELECT *FROM students;
SELECT email as student_email FROM students;

SELECT *FROM students ORDER BY first_name DESC;

-- unique column country 
SELECT DISTINCT country FROM students;
--> select students from the USA
SELECT *FROM students
WHERE country='USA';

-->select student with 'A' grade in Physics
SELECT *FROM students
WHERE grade='A' and course='Physics';

--> select students with a specific blood group ('A+')
SELECT * FROM students
WHERE blood_group='A+';

--> select students from the USA or from Australia
SELECT * FROM students
WHERE country='USA' or country='Australia';

--> select students from the USA or from Australia and the age is 20
SELECT * FROM students
WHERE (country='USA' or country='Australia') and age=20;

--> select students with a grad of 'A' or'B' in Math or Physics

--> select students older than 20
SELECT * FROM students
WHERE age >= 20 and course='History';


SELECT * FROM students
WHERE age >= 20;

SELECT * FROM students
WHERE age <= 20;

SELECT * FROM students
WHERE age != 20;

SELECT *FROM students
WHERE country='USA'or country='UK' or country='Canada'

SELECT *FROM students
WHERE country in('Canada','UK','USA');

SELECT *FROM students
WHERE country NOT in('Canada','UK','USA');

SELECT *FROM students
WHERE age BETWEEN 19 and 23;

-- like hosse case sencitive
-- search data
SELECT *FROM students
WHERE first_name LIKE'%a';
SELECT *FROM students
WHERE first_name LIKE'A%';

-- underscore(_) eta dara single caracter bujay
SELECT *FROM students
WHERE first_name LIKE'___a%';

-- Ilike hosse case insencitive
SELECT *FROM students
WHERE first_name ILIKE'a%';

SELECT *FROM students;