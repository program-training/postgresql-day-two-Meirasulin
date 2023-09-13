-- Exercise 1.

-- CREATE SCHEMA University
-- CREATE TABLE University.Students(
-- student_id serial PRIMARY KEY,
-- first_name TEXT NOT NULL,
-- last_name TEXT NOT NULL,
-- date_of_birth date,
-- email text Unique
-- );

-- INSERT INTO University.Students (first_name, last_name, date_of_birth, email)
-- VALUES
-- 	('John', 'Doe', '1990-01-15', 'john.doe@example.com'),
-- 	('Jane', 'Smith', '1992-05-20', 'jane.smith@example.com'),
-- 	('Michael', 'Johnson', '1991-09-10', 'Michael.Johnson@example.com'),
-- 	('Emily', 'Davis', '1993-03-25', 'Emily.Davis@example.com');

-- CREATE TABLE University.Teachers(
-- teacher_id  serial PRIMARY KEY,
-- first_name TEXT NOT NULL,
-- last_name TEXT NOT NULL,
-- date_of_birth date,
-- email text Unique,
-- department text,
-- hire_date date
-- );

-- INSERT INTO University.Teachers (first_name, last_name, date_of_birth, email, department, hire_date)
-- VALUES
-- 	('Professor', 'Anderson', '1975-04-08', 'prof.anderson@example.com', 'Computer Science', '2010-08-15'),
-- 	('Dr.', 'Sarah', '1980-12-20', 'sarah.wilson@example.com', 'Mathematics', '2015-05-02'),
-- 	('Mr.', 'James', '1978-06-14', 'james.brown@example.com', 'History', '2009-11-11');

-- CREATE TABLE University.Courses (
-- 	course_id serial PRIMARY KEY,
-- 	course_name TEXT NOT NULL,
-- 	department text,
-- 	credits NUMERIC
-- )
-- INSERT INTO University.Courses (course_name, department, credits)
-- VALUES
-- 	('Introduction to Programming', 'Computer Science', 3),
-- 	('Calculus I', 'Mathematics', 4),
-- 	('World History', 'History', 3);

-- Exercise 2.
-- Question 1.
-- CREATE TABLE University.Enrollments (
-- enrollment_id serial Primary Key,
-- student_id integer,
-- Foreign Key (student_id) references University.Students(student_id),
-- course_id integer,
-- Foreign Key (course_id)references University.Courses(course_id)
-- );
-- INSERT INTO University.Enrollments (student_id, course_id)
-- VALUES 
-- 	(1, 1),
-- 	(2, 1),
-- 	(3, 2),
-- 	(4, 3),
-- 	(1, 3);

-- ALTER TABLE University.Enrollments ADD constraint addUnique UNIQUE(student_id,course_id)
-- DROP TABLE University.Enrollments
-- Question 2.
-- CREATE TABLE University.TeacherCourse  (
-- 	teacher_course_id serial Primary Key,
-- 	teacher_id INTEGER,
-- 	Foreign Key (teacher_id) references University.Teachers(teacher_id),
-- 	course_id INTEGER,
-- 	Foreign Key (course_id) references University.Courses(course_id)
-- )
-- INSERT INTO University.TeacherCourse (teacher_id, course_id)
-- VALUES 
-- 	(1, 1),
-- 	(2, 2),
-- 	(3, 3);
-- Question 3.
-- CREATE TABLE University.Grades  (
-- 	grades_id serial Primary Key,
-- 	enrollment_id INTEGER,
-- 	Foreign Key (enrollment_id) references University.Enrollments(enrollment_id),
-- 	grades INTEGER
-- );
-- INSERT INTO University.Grades(enrollment_id, grades)
-- VALUES 
-- 	( 1, 96),
-- 	( 2, 55),
-- 	( 3, 88),
-- 	( 4, 100),
-- 	( 5, 65);
-- DROP TABLE  University.Grades
-- Exercise 3.
-- Question 1.
-- CREATE TABLE University.StudyGroup (
-- group_id serial Primary Key,
-- student_id INTEGER,
-- group_name TEXT,
-- Foreign Key (student_id) references University.Students(student_id)
-- );
-- INSERT INTO University.StudyGroup(student_id, group_name)
-- VALUES 
-- 	(1, 'Group A'),
-- 	(1, 'Group B'),
-- 	(2, 'Group A'),
-- 	(3, 'Group C'),
-- 	(4, 'Group C'),
-- 	(4, 'Group B');


-- Question 2.
-- SELECT * FROM University.Students
-- SELECT * FROM University.Teachers
-- SELECT * FROM University.Courses
-- SELECT * FROM University.Enrollments
-- SELECT * FROM University.TeacherCourse
-- SELECT * FROM University.Grades
-- SELECT * FROM University.StudyGroup





