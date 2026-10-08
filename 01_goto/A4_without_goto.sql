SET SERVEROTPUT ON;
DECLARE
 v_salary NUMBER := 750000;
 v_rating NUMBER := 4;
BEGIN
  CASE 
   WHEN v_rating >= 4 AND v_salary <80000 THEN
      DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Eligible for Promotion and 10% Raise.');
   WHEN v_rating = 3 THEN
      DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Eligible for 5% Raise.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || '-Scheduled for Standard annual review');
   END CASE;
DBMS_OUTPUT.PUT_LINE('Review evaluation completed successfully. ');
END;
/
