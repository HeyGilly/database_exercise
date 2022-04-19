use employees;

# 1 MySQL provides a way to return only unique results from our queries with the keyword DISTINCT
SELECT DISTINCT title FROM titles;

#2. List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT distinct last_name
FROM employees
order by last_name desc
LIMIT 10;

#3. Create a query to get the top 5 salaries and display just the employees number
# from the salaries table.
SELECT salary FROM salaries order by salary ASC limit 5;


#The first five results are your first page.
# The five after that would be your second page, etc.
# Update the previous query to find the tenth page of results.
SELECT salary
FROM salaries
LIMIT 5 OFFSET 4;

