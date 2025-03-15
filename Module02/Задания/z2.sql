--zadaniye 2
drop table if exists dw.returns_by_region;
CREATE TABLE dw.returns_by_region AS
SELECT 
    o.region,
    COUNT(r.order_id) AS total_returns
FROM public.returns r
JOIN public.orders o ON r.order_id = o.order_id
JOIN dw.geo_dim l ON o.customer_id = o.customer_id
GROUP BY o.region;