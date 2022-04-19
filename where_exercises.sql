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

##--- Part 2

#1. Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select *
from employees
where first_name = 'Irena'
     or first_name = 'Vidya'
     or first_name = 'Maya';
#2. Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
select *
    from employees
        where first_name
            in ('Irena', 'Vidya','Maya')
            and gender = 'M';

#3. Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select *
from employees
where last_name
          like 'E%';

#4. Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select *
from employees
where last_name
          like 'E%e';

#5. Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select *
from employees
where last_name like 'q%'
and  NOT last_name like '%u%';