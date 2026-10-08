SET SERVEROUTPUT ON;

-- PART 1: Create the Employee Summary Function
CREATE OR REPLACE FUNCTION get_employee_summary (
    p_emp_id IN employees.employee_id%TYPE
) RETURN VARCHAR2 IS
    v_name employees.employee_name%TYPE;
    v_dept employees.department%TYPE;
    v_salary employees.monthly_salary%TYPE;
    v_summary VARCHAR2(200);
BEGIN
    
    SELECT employee_name, department, monthly_salary
    INTO v_name, v_dept, v_salary
    FROM employees
    WHERE employee_id = p_emp_id;
    
    
    v_summary := 'Employee: ' || v_name || ' | Dept: ' || v_dept || ' | Salary: ' || v_salary;
    
    RETURN v_summary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee ID not found.';
END get_employee_summary;
/

-- PART 2: Test the Employee Summary Function
DECLARE
    v_result_summary VARCHAR2(200);
BEGIN
    
    v_result_summary := get_employee_summary(101); 
    
    DBMS_OUTPUT.PUT_LINE(v_result_summary);
END;
/