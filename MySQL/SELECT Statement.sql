CREATE DATABASE company;
USE company;

CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(255),
age INT,
position VARCHAR(255),
salary FLOAT
);

INSERT INTO employees (id, name, age, position, salary)
VALUES
(1, 'John Doe', 30, 'Manager', 100000),
(2, 'Jane Smith', 25, 'Sales Representative', 50000),
(3, 'Mark Johnson', 40, 'IT Specialist', 75000),
(4, 'Susan Lee', 35, 'HR Manager', 90000),
(5, 'David Chen', 28, 'Marketing Coordinator', 60000);

SELECT * FROM employees;
SELECT name, salary FROM employees;
SELECT * FROM employees WHERE age>30;
SELECT * FROM employees WHERE salary > 20000 AND salary < 80000;
SELECT * FROM employees WHERE salary > 20000 OR salary < 80000;
SELECT * FROM employees WHERE position LIKE 'Man%';

INSERT INTO employees (id, name, age, position, salary)
VALUES(6, 'Ekraj Ghimire', 21, 'Manager', 92000);

SELECT * FROM employees ORDER BY position ASC;
SELECT * FROM employees LIMIT 3;

