SET SERVEROUTPUT ON;

-- PART 1: Create the Department Employee Count Function
CREATE OR REPLACE FUNCTION count_department_employees (
    p_department IN employees.department%TYPE
) RETURN NUMBER IS
    v_emp_count NUMBER;
BEGIN
    
    SELECT COUNT(*)
    INTO v_emp_count
    FROM employees
    WHERE UPPER(department) = UPPER(p_department);
    
    RETURN v_emp_count;
END count_department_employees;
/

-- PART 2: Test the Department Employee Count Function
DECLARE
    v_total_count NUMBER;
BEGIN
    
    v_total_count := count_department_employees('IT');
    
    DBMS_OUTPUT.PUT_LINE('Total Employees in IT Department: ' || v_total_count);
END;
/