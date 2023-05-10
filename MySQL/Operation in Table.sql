USE company;

CREATE TABLE students ( 
student_id INT PRIMARY KEY, 
name VARCHAR(50), 
course_id INT,
age INT 
);

INSERT INTO students (
student_id, name, course_id, age) 
VALUES 
(1, 'John Doe', 101, 22),
(2, 'Jane Smith', 102, 21),
(3, 'Bob Johnson', 103, 23),
(4, 'Emily Brown', 101, 20), 
(5, 'Mark Davis', 104, 22);

CREATE TABLE courses ( 
course_id INT PRIMARY KEY, 
course_name VARCHAR(50), 
instructor VARCHAR(50), 
department VARCHAR(50)
);

INSERT INTO courses (
course_id, course_name, instructor, department) 
VALUES 
(101, 'Introduction to Computer Science', 'Professor X', 'Computer Science'), 
(102, 'Data Structures and Algorithms', 'Professor Y', 'Computer Science'),
(103, 'Database Systems', 'Professor Z', 'Computer Science'),
(104, 'Software Engineering', 'Professor W', 'Computer Science'), 
(105, 'Calculus', 'Professor A', 'Mathematics');

SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;

SELECT students.name, courses.course_name 
FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

SELECT 'name' AS Type, name
FROM students
UNION
SELECT 'course_name', course_name
FROM courses;


