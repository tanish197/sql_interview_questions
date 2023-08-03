Write a SQL query to get emp id and department for each department who recently joined the organization and still in working. (column - emp id, first name, last name, date of join, date of exit , department.)




SELECT user_id, date, post_count,
       ROUND(AVG(post_count) OVER (PARTITION BY user_id ORDER BY date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_average
FROM user_posts;
