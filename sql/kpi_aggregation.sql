-- Monthly revenue trend
SELECT 
    FORMAT(order_date, 'yyyy-MM') AS sales_month,
    SUM(sales_amount) AS monthly_sales
FROM fact_sales
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY sales_month;
