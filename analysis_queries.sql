-- Total Sales by Month
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS total_sales
FROM sales
GROUP BY month ORDER BY month;

-- Top 5 Customers
SELECT customer_id, SUM(amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC LIMIT 5;

-- Sales by Category
SELECT category, SUM(amount) AS revenue
FROM sales GROUP BY category ORDER BY revenue DESC;
