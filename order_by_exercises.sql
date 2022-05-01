# copy and paste the contents of your where_exercises.sql.
use employees;

### PART 1
# 2. - Modify your first query to order by first name.
# The first result should be Irena Pelz and
# the last result should be Vidya Awdeh.
select * from employees where first_name in ('Irena', 'Vidya','Maya') order by first_name;


# 3. - Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.
select *
from employees
where first_name in ('Irena', 'Vidya','Maya')
order by first_name, last_name;

# 4. - Change the ORDER BY clause so that you order by last name before first name.
#      Your first result should still be Irena Acton but now the last result should
#      be Maya Zyda.

select *
from employees
where first_name in ('Irena', 'Vidya','Maya')
order by last_name, first_name;


# 5. - Update your queries for employees with 'e' in their last name to sort the
#      results by their employee number. Make sure the employee numbers are in
#      the correct order.
SELECT * FROM employees WHERE last_name like 'E%'
order by emp_no desc;
