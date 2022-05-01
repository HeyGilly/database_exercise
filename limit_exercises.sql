use employees;


#MySQL provides a way to return only unique results from our queries with the keyword DISTINCT.
# For example, to find all the unique titles within the company, we could run the following query:
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees order by last_name desc limit 10;

# 3. - Create a query to get the top 5 salaries and display just the
#       employees number from the salaries table.
SELECT DISTINCT * FROM salaries order by salary desc limit 5;

#4. -   Try to think of your results as batches, sets, or pages.
#       The first five results are your first page. The five after that
#       would be your second page, etc. Update the previous query to find
#       the tenth page of results. The employee number results should be:
SELECT DISTINCT * FROM salaries order by salary desc limit 5 offset 50;

