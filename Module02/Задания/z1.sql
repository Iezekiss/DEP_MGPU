--zadaniye 1
drop table if exists dw.sales_by_category;
CREATE VIEW dw.sales_by_category AS
SELECT 
    p.category, 
    SUM(f.sales) AS total_sales, 
    SUM(f.profit) AS total_profit
FROM dw.sales_fact f
JOIN dw.product_dim p ON p.product_id = p.product_id
GROUP BY p.category;