CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10, 2)
);

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date BETWEEN '2023-01-01' AND '2023-12-31'  -- Adjust year if needed
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;
