# Library-Book-Management
This PL/SQL project manages library books using Collections, Records, and GOTO. It stores book details, checks for invalid data, and uses GOTO for error handling. The program displays valid records using DBMS_OUTPUT.PUT_LINE, showing how PL/SQL handles data processing and control flow effectively.
# Objectives
Create and use PL/SQL Records to store different details of a book.
Use Collections to manage many books at once.
Apply the GOTO statement for validation and skipping invalid data.
Display the processed information properly with DBMS_OUTPUT.
# 3. Problem Description
The library system needs a small PL/SQL program that:
Stores multiple books using a collection of records.
Each book has: Book ID, Title, Author, and Available Copies.
If a book has an invalid number of copies (like negative numbers), it should jump to an error section using GOTO.
Valid books should be displayed normally.
# System Design
Data Structures Used:
Record: To store details of one book.
Collection (Nested Table): To store many books.
GOTO Labels: To jump to error-handling when invalid data is found.
# PL/SQL Implementation Code
