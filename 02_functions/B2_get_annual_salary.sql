SET SERVEROUTPUT ON;

-- PART 1: Create the Annual Salary Function
CREATE OR REPLACE FUNCTION get_annual_salary (
    p_emp_id IN employees.employee_id%TYPE
) RETURN NUMBER IS
    v_monthly employees.monthly_salary%TYPE;
    v_annual_salary NUMBER;
BEGIN
    
    SELECT monthly_salary 
    INTO v_monthly
    FROM employees
    WHERE employee_id = p_emp_id;
    
    
    v_annual_salary := v_monthly * 12;
    
    RETURN v_annual_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
        RETURN NULL;
END get_annual_salary;
/

-- PART 2: Test the Annual Salary Function
DECLARE
    v_total_annual NUMBER;
BEGIN
    
    v_total_annual := get_annual_salary(101); 
    
    IF v_total_annual IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Calculated Annual Salary: ' || v_total_annual);
    END IF;
END;
/