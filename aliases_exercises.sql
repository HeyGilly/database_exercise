#2. - Use the employees database.
use employees;

#3. - Return 10 employees in a result set named 'full_name'
#     in the format of 'last name, first name' for each employee.
SELECT concat(last_name, ' ', first_name) as full_name
FROM employees
limit 10;

#4. - Add the date of birth for each employee as 'DOB' to the query.
SELECT concat(last_name, ' ', first_name) full_name, birth_date DOB
FROM employees
limit 10;

#5. - Update the query to format full name to include the employee
#     number so it is formatted as 'employee number - last name, first name'.
SELECT concat(emp_no,' - ',last_name, ', ', first_name) full_name, birth_date DOB
FROM employees
limit 10;
#
# use employees;
# describe employees;
# DESCRIBE dept_emp;
# DESCRIBE departments;
#
# use codeup_test_db;
# describe albums;
#
# ALTER TABLE albums
#     ADD UNIQUE (name);