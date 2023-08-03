Write a SQL query to find the numbers which consecutively occurs 3 times. (Column name – id, numbers)




SELECT id, numbers
FROM (
  SELECT id, numbers,
         LEAD(numbers, 1) OVER (ORDER BY id) AS next_number,
         LEAD(numbers, 2) OVER (ORDER BY id) AS next_next_number
  FROM emp
) AS subquery
WHERE numbers = next_number AND numbers = next_next_number;
