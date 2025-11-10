SET SERVEROUTPUT ON;

DECLARE
  TYPE emp_rec IS RECORD (
    emp_id   NUMBER,
    emp_name VARCHAR2(50),
    salary   NUMBER
  );

  TYPE emp_table IS TABLE OF emp_rec;

  employees emp_table := emp_table(
    emp_rec(101, 'Alice', 5000),
    emp_rec(102, 'Bob', -300),
    emp_rec(103, NULL, 4200),
    emp_rec(104, 'Clara', 6000)
  );

  valid_count   NUMBER := 0;
  invalid_count NUMBER := 0;

BEGIN
  FOR i IN 1 .. employees.COUNT LOOP

    -- Check for invalid data
    IF employees(i).salary < 0 OR employees(i).emp_name IS NULL THEN
      GOTO invalid_data;  -- jump to label
    END IF;

    -- Valid employee processing
    valid_count := valid_count + 1;
    DBMS_OUTPUT.PUT_LINE('Employee ' || employees(i).emp_name || ' processed successfully.');
    CONTINUE;

    <<invalid_data>>
    invalid_count := invalid_count + 1;
    DBMS_OUTPUT.PUT_LINE('Invalid data found for employee ID ' || employees(i).emp_id);

  END LOOP;

  -- Print summary
  DBMS_OUTPUT.PUT_LINE(CHR(10) || 'Summary:');
  DBMS_OUTPUT.PUT_LINE('Valid employees: ' || valid_count);
  DBMS_OUTPUT.PUT_LINE('Invalid employees: ' || invalid_count);

END;
/
