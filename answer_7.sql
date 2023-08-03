Write a SQL query to find rolling average of posts on daily bais for each user_id.(Column_name – user_id, date, post_count). Round up the average upto two decimal places.



SELECT user_id, date, post_count,
       ROUND(AVG(post_count) OVER (PARTITION BY user_id ORDER BY date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_average
FROM user_posts;
