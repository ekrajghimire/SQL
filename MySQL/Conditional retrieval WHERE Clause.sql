CREATE DATABASE studentdb;
USE studentdb;
CREATE TABLE students ( 
id INT PRIMARY KEY, name VARCHAR(50), age INT,
class VARCHAR(20),
score FLOAT );

INSERT INTO students 
(id, name, age, class, score) 
VALUES 
(1, 'John', 17, '10th grade', 85.2),
(2, 'Sarah', 16, '9th grade', 91.5),
(3, 'David', 18, '12th grade', 78.9),
(4, 'Emily', 15, '9th grade', 93.7), 
(5, 'Jacob', 17, '11th grade', 87.4);

SELECT * FROM students;
SELECT name, score FROM students WHERE score > 75;
SELECT name, score FROM students ORDER BY score ASC;