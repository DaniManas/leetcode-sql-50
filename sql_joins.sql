CREATE TABLE employee_salary (
    salary_id       INT PRIMARY KEY,
    employee_id     INT,
    base_salary     INT,
    bonus           INT,
    pay_type        ENUM('Full-Time', 'Part-Time', 'Contract'),
    effective_date  DATE,
    FOREIGN KEY (employee_id) REFERENCES staff(employee_id)
);

INSERT INTO employee_salary VALUES
(1, 1, 85000, 5000, 'Full-Time', '2019-03-15'),
(2, 2, 92000, 8000, 'Full-Time', '2018-07-01'),
(3, 3, 110000, 12000, 'Full-Time', '2017-01-20'),
(4, 4, 67000, 3000, 'Full-Time', '2021-05-10'),
(5, 5, 130000, 20000, 'Full-Time', '2015-09-08');

DELETE FROM employee_salary
WHERE employee_id =2;


SELECT st.employee_id, age, salary
FROM staff as st
JOIN employee_salary as sal
	ON st.employee_id = sal.employee_id;
    
    
-- OUTER JOINS
SELECT *
FROM staff as st
LEFT JOIN employee_salary as sal
	ON st.employee_id = sal.employee_id;
    
-- SELF-JOIN
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id

