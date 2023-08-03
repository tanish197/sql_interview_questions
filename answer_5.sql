Write a SQL query for cumulative sum of salary of each employee from Jan to July. (Column name – Emp_id, Month, Salary).



SELECT Emp_id, Month, Salary,
       SUM(Salary) OVER (PARTITION BY Emp_id ORDER BY Month) AS Cumulative_Salary
FROM salary_table
WHERE Month BETWEEN '2023-01-01' AND '2023-07-31';
