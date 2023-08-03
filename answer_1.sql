Write a SQL query to find the second highest salary from the table emp. (Column name – id, salary)



SELECT MAX(salary) AS SecondHighestSalary
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);
