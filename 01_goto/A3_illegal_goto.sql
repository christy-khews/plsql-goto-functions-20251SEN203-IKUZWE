SET SERVEROUTPUT ON;
--PART1 : Illegal GOTO statement(Demonstrates compilation error)
DECLARE
   v_test NUMBER := 1;
BEGIN
 BEGIN 
  <<illegal_target>>
  DBMS_OUTPUT.PUT_LINE('Inside inner block.');
 END;
END;
/
--PART2 : Fixed GOTO Version (legal scope)
DECLARE
 v_test NUMBER := 1;
BEGIN
 GOTO legal_target;
 <<legal_target>>
 DBMS_OUTPUT.PUT_LINE('Successfully executed with legal GOTO scope.');
END;
/