SET SERVEROUTPUT ON;

-- PART 1: Create the Bonus Calculation Function
CREATE OR REPLACE FUNCTION calculate_bonus (
    p_emp_id IN employees.employee_id%TYPE
) RETURN NUMBER IS
    v_monthly employees.monthly_salary%TYPE;
    v_bonus NUMBER;
BEGIN
    
    SELECT monthly_salary 
    INTO v_monthly
    FROM employees
    WHERE employee_id = p_emp_id;
    
    
    IF v_monthly >= 500000 THEN
        v_bonus := v_monthly * 0.15;
    ELSE
        v_bonus := v_monthly * 0.10;
    END IF;
    
    RETURN v_bonus;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
        RETURN NULL;
END calculate_bonus;
/

-- PART 2: Test the Bonus Function
DECLARE
    v_result_bonus NUMBER;
BEGIN
    
    v_result_bonus := calculate_bonus(101); 
    
    IF v_result_bonus IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Calculated Employee Bonus: ' || v_result_bonus);
    END IF;
END;
/