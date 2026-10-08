SET SERVEROUTPUT ON;

DECLARE
  v_num NUMBER := -5; -- Example number
BEGIN
  IF v_num > 0 THEN
    GOTO positive_block;
  ELSIF v_num < 0 THEN
    GOTO negative_block;
  ELSE
    GOTO zero_block;
  END IF;

  <<positive_block>>
  DBMS_OUTPUT.PUT_LINE('Number is positive.');
  GOTO end_program;

  <<negative_block>>
  DBMS_OUTPUT.PUT_LINE('Number is negative.');
  GOTO end_program;

  <<zero_block>>
  DBMS_OUTPUT.PUT_LINE('Number is zero.');

  <<end_program>>
  NULL; -- GOTO target needs an executable statement
END;
/