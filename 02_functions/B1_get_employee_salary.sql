SET SERVEROUTPUT ON;

-- PART 1: Create the Function
CREATE OR REPLACE FUNCTION get_employee_salary (
    p_emp_id IN employees.employee_id%TYPE
) RETURN NUMBER IS
    v_salary NUMBER;
BEGIN
    SELECT monthly_salary 
    INTO v_salary
    FROM employees
    WHERE employee_id = p_emp_id;
    
    RETURN v_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
        RETURN NULL;
END get_employee_salary;
/

-- PART 2: Test the Function
DECLARE
    v_test_salary NUMBER;
BEGIN
    
    v_test_salary := get_employee_salary(101); -- Change ID as needed
    
    IF v_test_salary IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_test_salary);
    END IF;
END;
/