SET SERVEROUTOUT ON;
DECLARE
   v_salary NUMBER := 75000;
   v_rating NUMBER := 4;
BEGIN
   IF v_rating >= 4 AND v_salary < 80000 THEN
     GOTO high performance;
   ELSEIF v_rating = 3 THEN
     GOTO standard_raise;
   ELSE
     GOTO standard_review;
   END IF;
<<high_performance>>
DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Eligible for Promotion and 10% Raise.');
GOTO end_review;
<<standard_raise>>
DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Eligible for 5% Raise.');
GOTO end_review;
<<standard_review>>
DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Scheduled for Standard annual review');
<<end_review>>
NULL;
END;
/

