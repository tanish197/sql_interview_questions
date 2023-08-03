How many rows will come in outputs of Left, Right, Inner and outer join from two tables having duplicate rows.4


SELECT emp_id, first_name, last_name, date_of_join, date_of_exit, department
FROM employees
WHERE date_of_join > '2023-01-01' AND (date_of_exit IS NULL OR date_of_exit > CURRENT_DATE);

