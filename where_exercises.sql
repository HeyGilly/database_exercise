# gather the information
use employees;

##--- Part 1

#2. Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select * from employees where first_name in ('Irena', 'Vidya','Maya') ;

# 3. Find all employees whose last name starts with 'E' — 7,330 rows.
#Use like instead of =
select * from employees where last_name like 'E%';

#4. Find all employees with a 'q' in their last name — 1,873 rows.
select * from employees where last_name like '%q%';