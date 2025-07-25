SELECT 
  u.country,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.orders` o
  ON oi.order_id = o.id
JOIN `bigquery-public-data.thelook_ecommerce.users` u
  ON o.user_id = u.id
WHERE o.status = 'Complete'
GROUP BY u.country
ORDER BY total_revenue DESC
