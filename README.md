# sql-challenge
# Repository for HW 9 - SQL!

# Table Schema
For the table schema code, we have to create our 6 databases based on the data in the CSV files. 
The 6 tables and their components, in the order they needed to be created and filled (due to Primary/Foreign Key references) are:
    1) departments
        - VARCHAR Primary Key "dept_no"
        - VARCHAR "dept_name"
    
    2) titles
        - VARCHAR Primary Key "title_id"
        - VARCHAR "title"
    
    3) employees
        - INT Primary Key "emp_no"
        - VARCHAR "emp_title_id", Foreign Key eferencing "title_id" from titles table
        - DATE "birth_date"
        - VARCHAR "first_name"
        - VARCHAR "last_name"
        - VARCHAR "sex"
        - DATE "hire_date"
    
    4) dept_emp
        - INT "emp_no", Foreign Key referencing "emp_no" from employees table
        - VARCHAR "dept_no", Foreign Key referencing "dept_no" from departemnts table

    5) dept_manager
        - VARCHAR "dept_no", Foreign Key referencing "dept_no" from departemnts table
        - INT "emp_no", Foreign Key referencing "emp_no" from employees table

    6) salaries
        - INT "emp_no", Foreign Key referencing "emp_no" from employees table
        - INT "salary"

# Queries
The code for querying the required information is as follows:

    1) Pulling the "emp_no", "last_name", "first_name", and "sex" from the employees table and "salary" from the salaraies table. The link is the "emp_no" column in each table 

    2) Pulling "first_name", "last_name", and "hire_date" from the employees table. Then a limitation is place on "hire_date" where it is between Jan 1 and Dec 31 of 1986.

    3) Pulling the "dept_no" from the dept_manager table, the "dept_name" from the departments table, "emp_no" from dept_manager, "last_name" and "first_name" from the employees table. The links are "dept_no" from the dept_manager and departments tables and "emp_no" from the dept_manager and employees tables.

    4) Pulling the "emp_no", "last_name", and "first_name" from the employees table and the "dept_name" from the departments table. The links are the "emp_no" in the employees and departments tables and the "dept_no" from the departments and dept_emp tables.

    5) Pulling the "first_name", "last_name", and "sex" from the employees table where the "first_name" is "Hercules" and the last_name starts with "B".

    6) Pulling the same info from #4, but adding the parameter to "dept_name" of being "Sales".

    7) Pulling the smae info from #6, but adding the parameter to "dept_name" of also being "Development". In order to do this, add the "dept_name LIKE ... OR ..." in parenthesis ()

    8) Pulling the "last_name" and number of each from the employees table. In order to do this, use "COUNT(last_name)" and then a "GROUP BY last_name". You can also add an "ORDER BY COUNT DESC" to show the results from highest to lowest.