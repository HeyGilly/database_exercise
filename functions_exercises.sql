#1. - Copy the order_by_exercises.sql script and save it as functions_exercises.sql.

use employees;

# 2. - Update your queries for employees whose names start and end with 'E'
#      Use concat() to combine their first and last name together as a single
#      column in your results.

SELECT concat(first_name, ' ', last_name)
           First_Last_Name
FROM employees
WHERE last_name
          LIKE 'E%'
ORDER BY emp_no desc;

#3. - Find all employees born on Christmas — 842 rows.
# SELECT MONTH(birth_date) from employees;
# SELECT YEAR(birth_date) from employees;
#  SELECT day(birth_date) from employees;
SELECT CONCAT(first_name, ' ', last_name,' has a birthday of ', MONTH(birth_date), '/', DAY(birth_date), ' in the year of ', year(birth_date), '.')
           Employees_that_are_born_on_Xmas
FROM employees
WHERE MONTH(birth_date) = 12
  and DAY(birth_date) = 25
order by year(birth_date);


#4. - Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT CONCAT(first_name, ' ', last_name,' has a birthday of ', MONTH(birth_date), '/', DAY(birth_date), ' and was hired in the year of ', year(hire_date), '.')
           Employees_that_are_born_on_Xmas_and_hired_in_90s
FROM employees
WHERE YEAR(hire_date) >= 1990
  AND YEAR(hire_date) <= 1999
  AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25);

#5. - Change the query for employees hired in the 90s and born on Christmas
#     such that the first result is the oldest employee who was hired last.
#     It should be Khun Bernini.
SELECT CONCAT(first_name, ' ', last_name,' has a birthday of ', MONTH(birth_date), '/', DAY(birth_date), ' and was hired in the year of ', year(hire_date), '.')
           Employees_that_are_born_on_Xmas_and_hired_in_90s
FROM employees
WHERE YEAR(hire_date) >= 1990
  AND YEAR(hire_date) <= 1999
  AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25)
ORDER BY hire_date desc;


#6 - For your query of employees born on Christmas and hired in the 90s,
#    use datediff() to find how many days they have been working at the
#    company (Hint: You might also need to use now() or curdate()).
SELECT CONCAT(
               first_name,' ',last_name,' has a birthday of ', MONTH(birth_date), '/', DAY(birth_date), ' and was hired in the year of ', year(hire_date), '.',
               'Has been working for the company for ', datediff(NOW(), hire_date),' days.',
               ' That is around ', round((datediff(NOW(), hire_date)/365)),' years.'
           )
           as Employees_that_are_born_on_Xmas_and_hired_in_90s_and_how_many_days_worked_with_the_company
FROM employees
WHERE YEAR(hire_date) >= 1990
  AND YEAR(hire_date) <= 1999
  AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25)
ORDER BY hire_date;

