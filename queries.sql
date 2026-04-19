
-- Total Revenue
SELECT SUM(revenue) AS total_revenue FROM sales;

-- Revenue by Category
SELECT category, SUM(revenue) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Monthly Revenue
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(revenue) AS revenue
FROM sales
GROUP BY month;

-- Top 3 Products
SELECT product, SUM(revenue) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 3;

-- Region-wise Sales
SELECT region, SUM(revenue) AS revenue
FROM sales
GROUP BY region;
