SELECT 
  FORMAT_DATE('%Y-%m', o.created_at) AS month,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.orders` o
JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi
  ON o.id = oi.order_id
WHERE o.status = 'Complete'
GROUP BY month
ORDER BY month;
