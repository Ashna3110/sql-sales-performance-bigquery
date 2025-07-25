SELECT
  COUNT(DISTINCT CASE WHEN orders_per_user = 1 THEN user_id END) AS one_time_customers,
  COUNT(DISTINCT CASE WHEN orders_per_user > 1 THEN user_id END) AS repeat_customers
FROM (
  SELECT 
    user_id,
    COUNT(DISTINCT order_id) AS orders_per_user
  FROM `bigquery-public-data.thelook_ecommerce.order_items`
  GROUP BY user_id
)
