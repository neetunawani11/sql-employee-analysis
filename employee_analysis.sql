-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


-- Insert departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

-- Insert employees
INSERT INTO employees VALUES
(101, 'Rahul', 2, 60000, '2021-01-10'),
(102, 'Anita', 1, 30000, '2020-03-15'),
(103, 'Suresh', 3, 55000, '2019-06-20'),
(104, 'Meena', 4, 40000, '2022-08-01'),
(105, 'Rohit', 2, 70000, '2018-11-12');



-- Q3: Employee name with department name
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;
