Write a SQL query to delete Duplicate rows in a table.



DELETE FROM your_table
WHERE (column1, column2, ...) IN (
  SELECT column1, column2, ...
  FROM your_table
  GROUP BY column1, column2, ...
  HAVING COUNT(*) > 1
);
