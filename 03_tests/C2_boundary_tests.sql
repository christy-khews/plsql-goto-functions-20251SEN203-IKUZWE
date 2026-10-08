SET SERVEROUTPUT ON;

DECLARE
    v_null_result NUMBER;
    v_missing_dept_count NUMBER;
    v_summary_result VARCHAR2(200);
BEGIN
    DBMS_OUTPUT.PUT_LINE('=== START OF TASK C2: BOUNDARY AND NEGATIVE TESTS ===');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    
    -- Test 1: Pass a NULL employee ID to get_employee_salary
    DBMS_OUTPUT.PUT_LINE('Test 1: Testing get_employee_salary with NULL ID');
    v_null_result := get_employee_salary(NULL);
    IF v_null_result IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('-> Result: Handled gracefully (Returned NULL/Exception caught).');
    END IF;
    
    -- Test 2: Pass a non-existent department name to count_department_employees
    DBMS_OUTPUT.PUT_LINE('Test 2: Testing count_department_employees with invalid department');
    v_missing_dept_count := count_department_employees('NonExistentDept');
    DBMS_OUTPUT.PUT_LINE('-> Result: Employee count for invalid department = ' || v_missing_dept_count);
    
    -- Test 3: Pass a non-existent ID to get_employee_summary
    DBMS_OUTPUT.PUT_LINE('Test 3: Testing get_employee_summary with non-existent ID');
    v_summary_result := get_employee_summary(100);
    DBMS_OUTPUT.PUT_LINE('-> Result: ' || v_summary_result);
    
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('=== TASK C2 BOUNDARY TESTS COMPLETED SUCCESSFULLY ===');
END;
/