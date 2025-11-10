# Employee Data Validation in PL/SQL

## Description
This PL/SQL project validates employee data by checking for negative salaries and missing names. It processes valid employees, flags invalid entries, and prints a detailed summary. Ideal for learning PL/SQL records, collections, loops, and data validation techniques.

## Project Overview
The script demonstrates how to use **PL/SQL RECORDS**, **TABLES**, and **loop control structures** to manage employee data. It validates a predefined list of employees, counts valid and invalid entries, and outputs processing messages and a summary. The project is beginner-friendly and focuses on data handling, validation, and reporting in PL/SQL.

## Features
- Defines and uses **PL/SQL RECORDS** to store employee info.  
- Uses **nested TABLES** to hold multiple employee records.  
- Checks for negative salaries and NULL employee names.  
- Handles invalid data with **GOTO labels**.  
- Counts and prints valid and invalid employees.  
- Generates dynamic console output using `DBMS_OUTPUT.PUT_LINE`.  

## Code Explanation

### Data Structures
- **emp_rec**: A record type representing an employee:
  - `emp_id` (NUMBER): Employee ID
  - `emp_name` (VARCHAR2(50)): Employee name
  - `salary` (NUMBER): Employee salary
- **emp_table**: A nested table type to store multiple `emp_rec` records.
- **employees**: A collection of employee records with valid and invalid data.

### Logic Flow
1. Loop through each employee in the `employees` collection.  
2. Check if `salary < 0` or `emp_name IS NULL`.  
   - If invalid, jump to `invalid_data` label.  
3. If valid:
   - Increment `valid_count`.
   - Print a success message.  
4. At the `invalid_data` label:
   - Increment `invalid_count`.
   - Print an invalid data message.  
5. After the loop, print a summary of valid and invalid employees.

### Sample Input
```plsql
employees emp_table := emp_table(
    emp_rec(101, 'Alice', 5000),
    emp_rec(102, 'Bob', -300),
    emp_rec(103, NULL, 4200),
    emp_rec(104, 'Clara', 6000)
);
