-- Aggregate sales by region and product
SELECT 
    region,
    product_id,
    SUM(sales_amount) AS total_sales,
    COUNT(order_id) AS total_orders
FROM cleaned_sales
GROUP BY region, product_id
ORDER BY total_sales DESC;
