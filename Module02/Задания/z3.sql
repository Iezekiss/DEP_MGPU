--zadaniye 3
SELECT 
    DATE_TRUNC('month', o.order_date) AS month, 
    SUM(f.sales) AS total_sales
FROM dw.sales_fact f
JOIN stg.orders o ON f.order_id = o.order_id
GROUP BY month
ORDER BY month;
