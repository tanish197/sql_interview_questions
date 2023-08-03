
Write a SQL query to find the days when temperature was higher than its previous dates. (Column name – Days, Temp)






SELECT Days, Temp
FROM (
  SELECT Days, Temp,
         LAG(Temp, 1) OVER (ORDER BY Days) AS previous_temp
  FROM temperature_data
) AS subquery
WHERE Temp > previous_temp;
