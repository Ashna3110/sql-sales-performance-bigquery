SELECT 
  p.category,
  ROUND(SUM(oi.sale_price), 2) AS category_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
GROUP BY p.category
ORDER BY category_revenue DESC
