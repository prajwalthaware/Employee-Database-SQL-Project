-- Create the database
CREATE DATABASE IF NOT EXISTS employees_db;
USE employees_db;

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL
);

-- Insert sample data
INSERT INTO employees (name, position) VALUES 
('Alice Johnson', 'Software Engineer'),
('Bob Smith', 'HR Manager'),
('Carol Davis', 'Data Analyst');

-- Select all employees
SELECT * FROM employees;

-- Update an employee's position
UPDATE employees 
SET position = 'Senior Software Engineer' 
WHERE name = 'Alice Johnson';

-- Delete an employee record
DELETE FROM employees 
WHERE name = 'Bob Smith';

-- Find employees with a specific role
SELECT * FROM employees 
WHERE position LIKE '%Engineer%';
