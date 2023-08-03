Write a SQL query to get emp id and department for each department who recently joined the organization and still in working. (column - emp id, first name, last name, date of join, date of exit , department.)




SELECT emp_id, first_name, last_name, date_of_join, date_of_exit, department
FROM employees
WHERE date_of_join > '2023-01-01' AND (date_of_exit IS NULL OR date_of_exit > CURRENT_DATE);
