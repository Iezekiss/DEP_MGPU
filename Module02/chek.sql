-- Описание структуры таблиц staging-слоя
DESCRIBE stg.orders;
DESCRIBE stg.returns;
DESCRIBE stg.people;

-- Описание структуры таблиц витрин данных
DESCRIBE dw.sales_fact;
DESCRIBE dw.customer_dim;
DESCRIBE dw.product_dim;
DESCRIBE dw.location_dim;

-- Описание структуры таблиц витрин данных
DESCRIBE dw.sales_fact;
DESCRIBE dw.customer_dim;
DESCRIBE dw.product_dim;
DESCRIBE dw.location_dim;

-- Описание структуры справочников
DESCRIBE dw.shipping_dim;
DESCRIBE dw.calendar_dim;

-- Проверка количества записей в источнике и приемнике
SELECT COUNT(*) FROM stg.orders;
SELECT COUNT(*) FROM dw.sales_fact;

-- Проверка распределения данных
SELECT category, COUNT(*) 
FROM dw.product_dim 
GROUP BY category;

-- Проверка отсутствия дубликатов
SELECT customer_id, COUNT(*)
FROM dw.customer_dim
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Проверка ссылочной целостности
SELECT COUNT(*) 
FROM dw.sales_fact f
LEFT JOIN dw.customer_dim c ON f.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Проверка корректности агрегатов
SELECT 
    SUM(sales) as total_sales,
    SUM(profit) as total_profit
FROM stg.orders;

SELECT 
    SUM(sales) as total_sales,
    SUM(profit) as total_profit
FROM dw.sales_fact;

-- Проверка основных метрик
-- Сверка контрольных сумм