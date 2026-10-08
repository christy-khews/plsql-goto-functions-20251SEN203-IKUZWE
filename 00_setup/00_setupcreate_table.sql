CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(50),
    department VARCHAR2(30),
    monthly_salary NUMBER(10,2),
    hire_date DATE
);
INSERT INTO employees
VALUES (101, 'Alice', 'IT', 850000, DATE '2022-03-15');

INSERT INTO employees
VALUES (102, 'Brian', 'HR', 650000, DATE '2021-07-10');

INSERT INTO employees
VALUES (103, 'Claire', 'Finance', 950000, DATE '2019-01-20');

INSERT INTO employees
VALUES (104, 'David', 'Sales', 550000, DATE '2024-02-05');

COMMIT;
--PART TWO:Test if the table is created
SELECT *
FROM employees;