## Copy of Where_Exercise.sql
# Create a new file called order_by_exercises.sql and copy and
# paste the contents of your where_exercises.sql.

# gather the information
use employees;

# Modify your first query to order by first name.
# The first result should be Irena Pelz and the last result should be Vidya Awdeh.

select * from employees where first_name in ('Irena', 'Vidya','Maya') order by first_name;

#Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.
select * from employees where first_name in ('Irena', 'Vidya','Maya') order by first_name, last_name;

#Change the ORDER BY clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.
select * from employees where first_name in ('Irena', 'Vidya','Maya') order by last_name, first_name;

#Update your queries for employees with 'e' in their last name to sort the results
# by their employee number. Make sure the employee numbers are in the correct order.
select * from employees where last_name like '%e%' order by emp_no;

# Now reverse the sort order for both queries and compare results.
select * from employees where last_name like '%e%' order by emp_no DESC;

