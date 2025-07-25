# Sales Performance Analysis with SQL and BigQuery

This project analyzes sales, customer behavior, and product performance using SQL on the public 'thelook_ecommerce' dataset in Google BigQuery.

## Dataset
Source: bigquery-public-data.thelook_ecommerce

Tables Used:
- orders: Purchase-level data
- order_items: Item-level detail (price, quantity)
- products: Product category and info
- users: Customer profiles


## Key SQL Queries

1. [Monthly Revenue](queries/01_monthly_revenue.sql) - Trends in total monthly sales
2. [Top-Selling Products](queries/02_top_selling_products.sql) - Best-selling products by revenue
3. [Revenue by Country](queries/03_revenue_by_country.sql) - Geographic performance
4. [Repeat vs One-time Customers](queries/04_repeat_vs_one_time_customers.sql) - Loyalty analysis 
5. [Revenue by Product Category](queries/05_revenue_by_category.sql) - Most profitable categories 


## Key Business Insights
- Revenue is increasing steadily month-on-month
- A few key products drive the majority of sales
- Customers from the US and Canada dominate sales
- ~35% of customers are repeat buyers
- Apparel and Footwear lead in revenue


## Tools Used
- Google BigQuery (SQL)
- GitHub (Project Portfolio)
- Google Looker Studio for visualization

## Author
**Ashna Britto**  
Data Analyst | SQL, R, Excel, Tablea, Python, Power BI, BigQuery
