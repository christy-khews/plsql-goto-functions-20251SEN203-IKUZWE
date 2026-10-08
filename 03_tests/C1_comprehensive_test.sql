SET SERVEROUTPUT ON;

DECLARE
    v_id        NUMBER := 101; 
    v_invalid_id NUMBER := 100; -- Non-existent ID for testing exceptions
    
    v_sal       NUMBER;
    v_ann       NUMBER;
    v_bonus     NUMBER;
    v_summary   VARCHAR2(200);
    v_it_count  NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('=== START OF COMPREHENSIVE FUNCTION TESTS ===');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    
    -- Test 1: Get Salary
    v_sal := get_employee_salary(v_id);
    DBMS_OUTPUT.PUT_LINE('1. Salary for ID ' || v_id || ': ' || NVL(TO_CHAR(v_sal), 'N/A'));
    
    -- Test 2: Get Annual Salary
    v_ann := get_annual_salary(v_id);
    DBMS_OUTPUT.PUT_LINE('2. Annual Salary for ID ' || v_id || ': ' || NVL(TO_CHAR(v_ann), 'N/A'));
    
    -- Test 3: Calculate Bonus
    v_bonus := calculate_bonus(v_id);
    DBMS_OUTPUT.PUT_LINE('3. Bonus for ID ' || v_id || ': ' || NVL(TO_CHAR(v_bonus), 'N/A'));
    
    -- Test 4: Get Employee Summary
    v_summary := get_employee_summary(v_id);
    DBMS_OUTPUT.PUT_LINE('4. Summary: ' || v_summary);
    
    -- Test 5: Department Count
    v_it_count := count_department_employees('IT');
    DBMS_OUTPUT.PUT_LINE('5. Total IT Department Employees: ' || v_it_count);
    
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('=== TESTING EXCEPTION HANDLING (Invalid ID) ===');
    
    -- Test 6: Exception Test with Invalid ID
    v_sal := get_employee_salary(v_invalid_id);
    
    DBMS_OUTPUT.PUT_LINE('=== ALL TESTS COMPLETED SUCCESSFULLY ===');
END;
/