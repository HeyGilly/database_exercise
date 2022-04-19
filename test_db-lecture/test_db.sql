use employees;

select * from employees;

select * from employees.departments;
select * from employees.salaries;
select * from employees.titles;


# last name that consist of a and z
# you will get duplicates
select last_name from employees where last_name like 'a%z%';


# this will not show any duplicates
select distinct first_name, last_name from employees
where first_name like 'a%z%';

describe employees;

# betweens  multiple
select * from employees
where emp_no between  10001 and 10010
    or emp_no between 10201 and 10210;

# searching for more then one person
select * from employees where first_name in ('georgi', 'Parto');

# or
select *
from employees
where gender = "F"
    or emp_no < 10200;



select * from employees order by last_name;

select * from employees order by last_name, first_name;


# first 5 employees
select * from employees LIMIt 5;
# the next 5 employees
select * from employees LIMIt 10 OFFSET 5;


