Write a SQL query to display year on year growth for each product. (Column name – transaction_id, Product_id, transaction_date, spend). Output will have year, product_id & yoy_growth.


SELECT 
  EXTRACT(YEAR FROM transaction_date) AS year,
  Product_id,
  (spend - LAG(spend, 1, 0) OVER (PARTITION BY Product_id ORDER BY transaction_date)) / LAG(spend, 1, 1) OVER (PARTITION BY Product_id ORDER BY transaction_date) AS yoy_growth
FROM transactions;
